##########################GO-LICENSE-START################################
# Copyright 2014 ThoughtWorks, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##########################GO-LICENSE-END##################################

require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::JobsController, "view" do
  include GoUtil
  describe "actions" do
    integrate_views


    before do
      controller.stub(:populate_config_validity)
      controller.stub(:checkConfigFileValid)

      @cruise_config = CruiseConfig.new()
      cruise_config_mother = GoConfigMother.new
      @pipeline = cruise_config_mother.addPipeline(@cruise_config, "pipeline-name", "stage-name", ["job-1", "job-2"].to_java(java.lang.String))
      @artifact1 = ArtifactPlan.new(ArtifactType.file, 'src', 'dest')
      @artifact2 = ArtifactPlan.new(ArtifactType.file, 'src2', 'dest2')
      @pipeline.get(0).getJobs().get(0).artifactPlans().add(@artifact1)
      @pipeline.get(0).getJobs().get(0).artifactPlans().add(@artifact2)

      controller.should_receive(:load_pipeline) do
          controller.instance_variable_set('@processed_cruise_config', @cruise_config)
          controller.instance_variable_set('@cruise_config', @cruise_config)
          controller.instance_variable_set('@pipeline', @pipeline)
      end

    end

    describe "edit settings" do
      it "should display 'Job Name' " do
        get :edit, :stage_parent=> "pipelines", :current_tab => "settings", :pipeline_name => @pipeline.name().to_s, :stage_name => @pipeline.get(0).name().to_s, :job_name => @pipeline.get(0).getJobs().get(0).name().to_s
        response.status.should == "200 OK"
        response.body.should have_tag("input[name='job[name]']")
      end
    end

    describe "edit artifacts" do
      include FormUI

      it "should display artifacts title, instruction and list of artifacts" do
        get :edit,:stage_parent=> "pipelines", :current_tab => "artifacts", :pipeline_name => @pipeline.name().to_s, :stage_name => @pipeline.get(0).name().to_s, :job_name => @pipeline.get(0).getJobs().get(0).name().to_s
        response.status.should == "200 OK"
        response.body.should have_tag("h3", "Artifacts")
        response.body.should have_tag("table[class='artifact']") do
            with_tag("input[class='form_input artifact_source'][value=?]", "src")
            with_tag("input[class='form_input artifact_destination'][value=?]", "dest")
            with_tag("input[class='form_input artifact_source'][value=?]", "src2")
            with_tag("input[class='form_input artifact_destination'][value=?]", "dest2")
            with_tag("select[class='small']") do
              with_tag("option", "Test Artifact")
              with_tag("option", "Build Artifact")
            end
        end
      end

      it "should display errors on artifact" do
        error = config_error(ArtifactPlan::SRC, "Source is wrong")
        error.add(ArtifactPlan::DEST, "Dest is wrong")
        set(@artifact1, "errors", error)

        get :edit, :stage_parent=> "pipelines", :current_tab => :artifacts, :pipeline_name => @pipeline.name().to_s, :stage_name => @pipeline.get(0).name().to_s, :job_name => @pipeline.get(0).getJobs().get(0).name().to_s

        response.status.should == "200 OK"
        response.body.should have_tag("h3", "Artifacts")
        response.body.should have_tag("table[class='artifact']") do
            with_tag("div.fieldWithErrors input[class='form_input artifact_source'][value=?]", "src")
            with_tag("div.form_error", "Source is wrong")
            with_tag("div.fieldWithErrors input[class='form_input artifact_destination'][value=?]", "dest")
            with_tag("div.form_error", "Dest is wrong")
        end
      end
    end
  end
end