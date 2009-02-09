# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rbiphonetest}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dr Nic Williams"]
  s.date = %q{2009-02-09}
  s.description = %q{Want to write iPhone unit tests? Want to write them in Ruby?}
  s.email = ["drnicwilliams@gmail.com"]
  s.executables = ["iphoneruby", "rbiphonetest"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "app_generators/rbiphonetest/USAGE", "app_generators/rbiphonetest/rbiphonetest_generator.rb", "app_generators/rbiphonetest/templates/Rakefile", "app_generators/rbiphonetest/templates/dot_autotest", "bin/iphoneruby", "bin/rbiphonetest", "config/hoe.rb", "config/requirements.rb", "lib/rbiphonetest.rb", "lib/rbiphonetest/version.rb", "rbiphonetest_generators/install_rspec/USAGE", "rbiphonetest_generators/install_rspec/install_rspec_generator.rb", "rbiphonetest_generators/install_rspec/templates/spec/spec_helper.rb", "rbiphonetest_generators/install_rspec/templates/tasks/rspec.rake", "rbiphonetest_generators/install_test_unit/USAGE", "rbiphonetest_generators/install_test_unit/install_test_unit_generator.rb", "rbiphonetest_generators/install_test_unit/templates/tasks/test_unit.rake", "rbiphonetest_generators/install_test_unit/templates/test/test_helper.rb", "rbiphonetest_generators/model/USAGE", "rbiphonetest_generators/model/model_generator.rb", "rbiphonetest_generators/model/templates/model.h", "rbiphonetest_generators/model/templates/model.m", "rbiphonetest_generators/model_rspec/model_rspec_generator.rb", "rbiphonetest_generators/model_rspec/templates/spec.rb", "rbiphonetest_generators/model_test_unit/model_test_unit_generator.rb", "rbiphonetest_generators/model_test_unit/templates/test.rb", "rbiphonetest_generators/story/USAGE", "rbiphonetest_generators/story/story_generator.rb", "rbiphonetest_generators/story/templates/steps.rb", "rbiphonetest_generators/story/templates/story", "rbiphonetest_generators/story/templates/story.rb", "rbiphonetest_generators/story/templates/story_helper.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_install_rspec_generator.rb", "test/test_install_test_unit_generator.rb", "test/test_model_generator.rb", "test/test_rbiphonetest.rb", "test/test_rbiphonetest_generator.rb", "test/test_story_generator.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/drnic/rbiphonetest}
  s.post_install_message = %q{
You can add Ruby-based unit tests to any iPhone/Xcode project by changing to the 
project's folder in the terminal/console and running:

	rbiphonetest .

This adds the test framework, a Rakefile, and an `autotest` config file.

You can now create testable Objective-C models/classes using the generator:
	
	$ script/generate model WidgetMaker
		  create  Classes/WidgetMaker.h
		  create  Classes/WidgetMaker.m
		  create  test/test_widget_maker.rb

To run tests you have several options:
	
1. `rake` or `rake test`
1. `autotest` (after installing the ZenTest gem)

Enjoy iPhone development with Ruby!}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rbiphonetest}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Want to write iPhone unit tests? Want to write them in Ruby?}
  s.test_files = ["test/test_generator_helper.rb", "test/test_helper.rb", "test/test_install_rspec_generator.rb", "test/test_install_test_unit_generator.rb", "test/test_model_generator.rb", "test/test_rbiphonetest.rb", "test/test_rbiphonetest_generator.rb", "test/test_story_generator.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
