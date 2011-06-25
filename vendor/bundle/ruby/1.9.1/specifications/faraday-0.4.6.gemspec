# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faraday}
  s.version = "0.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["rick"]
  s.date = %q{2010-05-28}
  s.description = %q{HTTP/REST API client library with pluggable components}
  s.email = %q{technoweenie@gmail.com}
  s.files = ["test/adapters/live_test.rb", "test/adapters/test_middleware_test.rb", "test/adapters/typhoeus_test.rb", "test/connection_app_test.rb", "test/connection_test.rb", "test/env_test.rb", "test/helper.rb", "test/live_server.rb", "test/request_middleware_test.rb", "test/response_middleware_test.rb"]
  s.homepage = %q{http://github.com/technoweenie/faraday}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{HTTP/REST API client library}
  s.test_files = ["test/adapters/live_test.rb", "test/adapters/test_middleware_test.rb", "test/adapters/typhoeus_test.rb", "test/connection_app_test.rb", "test/connection_test.rb", "test/env_test.rb", "test/helper.rb", "test/live_server.rb", "test/request_middleware_test.rb", "test/response_middleware_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<addressable>, [">= 2.1.1"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.1"])
      s.add_dependency(%q<addressable>, [">= 2.1.1"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.1"])
    s.add_dependency(%q<addressable>, [">= 2.1.1"])
  end
end
