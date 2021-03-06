# -*- encoding: utf-8 -*-
# stub: buildr 1.4.15 java lib addon

Gem::Specification.new do |s|
  s.name = "buildr"
  s.version = "1.4.15"
  s.platform = "java"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Apache Buildr"]
  s.date = "2013-11-06"
  s.description = "Apache Buildr is a build system for Java-based applications, including support\nfor Scala, Groovy and a growing number of JVM languages and tools.  We wanted\nsomething that's simple and intuitive to use, so we only need to tell it what\nto do, and it takes care of the rest.  But also something we can easily extend\nfor those one-off tasks, with a language that's a joy to use.\n"
  s.email = "users@buildr.apache.org"
  s.executables = ["buildr"]
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "LICENSE", "NOTICE"]
  s.files = ["bin/buildr", "README.rdoc", "CHANGELOG", "LICENSE", "NOTICE"]
  s.homepage = "http://buildr.apache.org/"
  s.post_install_message = "To get started run buildr --help"
  s.rdoc_options = ["--title", "Buildr", "--main", "README.rdoc", "--webcvs", "http://svn.apache.org/repos/asf/buildr/trunk/"]
  s.require_paths = ["lib", "addon"]
  s.rubyforge_project = "buildr"
  s.rubygems_version = "2.1.9"
  s.summary = "Build like you code"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_runtime_dependency(%q<builder>, ["= 3.2.2"])
      s.add_runtime_dependency(%q<net-ssh>, ["= 2.7.0"])
      s.add_runtime_dependency(%q<net-sftp>, ["= 2.1.2"])
      s.add_runtime_dependency(%q<jruby-pageant>, ["= 1.1.1"])
      s.add_runtime_dependency(%q<rubyzip>, ["= 0.9.9"])
      s.add_runtime_dependency(%q<json_pure>, ["= 1.8.0"])
      s.add_runtime_dependency(%q<rubyforge>, ["= 2.0.4"])
      s.add_runtime_dependency(%q<hoe>, ["= 3.7.1"])
      s.add_runtime_dependency(%q<atoulme-Antwrap>, ["~> 0.7.4"])
      s.add_runtime_dependency(%q<diff-lcs>, ["= 1.2.4"])
      s.add_runtime_dependency(%q<rspec-expectations>, ["= 2.14.3"])
      s.add_runtime_dependency(%q<rspec-mocks>, ["= 2.14.3"])
      s.add_runtime_dependency(%q<rspec-core>, ["= 2.14.5"])
      s.add_runtime_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_runtime_dependency(%q<xml-simple>, ["= 1.1.2"])
      s.add_runtime_dependency(%q<minitar>, ["= 0.5.4"])
      s.add_runtime_dependency(%q<jruby-openssl>, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<orderedhash>, [">= 0"])
      s.add_development_dependency(%q<rspec-retry>, ["= 0.2.1"])
      s.add_development_dependency(%q<ci_reporter>, ["= 1.9.0"])
      s.add_development_dependency(%q<pygmentize>, ["= 0.0.3"])
      s.add_development_dependency(%q<saikuro_treemap>, ["= 0.2.0"])
      s.add_development_dependency(%q<atoulme-Saikuro>, ["= 1.2.1"])
    else
      s.add_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_dependency(%q<builder>, ["= 3.2.2"])
      s.add_dependency(%q<net-ssh>, ["= 2.7.0"])
      s.add_dependency(%q<net-sftp>, ["= 2.1.2"])
      s.add_dependency(%q<jruby-pageant>, ["= 1.1.1"])
      s.add_dependency(%q<rubyzip>, ["= 0.9.9"])
      s.add_dependency(%q<json_pure>, ["= 1.8.0"])
      s.add_dependency(%q<rubyforge>, ["= 2.0.4"])
      s.add_dependency(%q<hoe>, ["= 3.7.1"])
      s.add_dependency(%q<atoulme-Antwrap>, ["~> 0.7.4"])
      s.add_dependency(%q<diff-lcs>, ["= 1.2.4"])
      s.add_dependency(%q<rspec-expectations>, ["= 2.14.3"])
      s.add_dependency(%q<rspec-mocks>, ["= 2.14.3"])
      s.add_dependency(%q<rspec-core>, ["= 2.14.5"])
      s.add_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_dependency(%q<xml-simple>, ["= 1.1.2"])
      s.add_dependency(%q<minitar>, ["= 0.5.4"])
      s.add_dependency(%q<jruby-openssl>, ["~> 0.8.2"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<orderedhash>, [">= 0"])
      s.add_dependency(%q<rspec-retry>, ["= 0.2.1"])
      s.add_dependency(%q<ci_reporter>, ["= 1.9.0"])
      s.add_dependency(%q<pygmentize>, ["= 0.0.3"])
      s.add_dependency(%q<saikuro_treemap>, ["= 0.2.0"])
      s.add_dependency(%q<atoulme-Saikuro>, ["= 1.2.1"])
    end
  else
    s.add_dependency(%q<rake>, ["= 0.9.2.2"])
    s.add_dependency(%q<builder>, ["= 3.2.2"])
    s.add_dependency(%q<net-ssh>, ["= 2.7.0"])
    s.add_dependency(%q<net-sftp>, ["= 2.1.2"])
    s.add_dependency(%q<jruby-pageant>, ["= 1.1.1"])
    s.add_dependency(%q<rubyzip>, ["= 0.9.9"])
    s.add_dependency(%q<json_pure>, ["= 1.8.0"])
    s.add_dependency(%q<rubyforge>, ["= 2.0.4"])
    s.add_dependency(%q<hoe>, ["= 3.7.1"])
    s.add_dependency(%q<atoulme-Antwrap>, ["~> 0.7.4"])
    s.add_dependency(%q<diff-lcs>, ["= 1.2.4"])
    s.add_dependency(%q<rspec-expectations>, ["= 2.14.3"])
    s.add_dependency(%q<rspec-mocks>, ["= 2.14.3"])
    s.add_dependency(%q<rspec-core>, ["= 2.14.5"])
    s.add_dependency(%q<rspec>, ["= 2.14.1"])
    s.add_dependency(%q<xml-simple>, ["= 1.1.2"])
    s.add_dependency(%q<minitar>, ["= 0.5.4"])
    s.add_dependency(%q<jruby-openssl>, ["~> 0.8.2"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<orderedhash>, [">= 0"])
    s.add_dependency(%q<rspec-retry>, ["= 0.2.1"])
    s.add_dependency(%q<ci_reporter>, ["= 1.9.0"])
    s.add_dependency(%q<pygmentize>, ["= 0.0.3"])
    s.add_dependency(%q<saikuro_treemap>, ["= 0.2.0"])
    s.add_dependency(%q<atoulme-Saikuro>, ["= 1.2.1"])
  end
end
