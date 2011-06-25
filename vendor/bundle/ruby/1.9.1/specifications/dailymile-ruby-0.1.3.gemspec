# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dailymile-ruby}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["lostinpatterns"]
  s.date = %q{2010-10-11}
  s.description = %q{This gem wraps the dailymile API that's available at http://www.dailymile.com/api}
  s.email = %q{blweiner@gmail.com}
  s.files = ["test/helper.rb", "test/test_dailymile-ruby.rb"]
  s.homepage = %q{http://github.com/dailymile/dailymile-ruby}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{dailymile ruby client}
  s.test_files = ["test/helper.rb", "test/test_dailymile-ruby.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.4.1"])
      s.add_runtime_dependency(%q<json_pure>, [">= 0"])
      s.add_runtime_dependency(%q<oauth2>, ["= 0.0.13"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.4.1"])
      s.add_dependency(%q<json_pure>, [">= 0"])
      s.add_dependency(%q<oauth2>, ["= 0.0.13"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.4.1"])
    s.add_dependency(%q<json_pure>, [">= 0"])
    s.add_dependency(%q<oauth2>, ["= 0.0.13"])
  end
end
