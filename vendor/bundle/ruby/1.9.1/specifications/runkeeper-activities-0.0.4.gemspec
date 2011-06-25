# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{runkeeper-activities}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arvid Andersson"]
  s.date = %q{2011-06-07}
  s.description = %q{A ruby interface for the latest activities on RunKeeper}
  s.email = ["arvid.andersson@oktavilla.se"]
  s.homepage = %q{http://github.org/arvida/runkeeper-activities}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Scraper for latest activities on RunKeeper}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<addressable>, [">= 2.2.6"])
      s.add_development_dependency(%q<webmock>, [">= 1.6.4"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0.8.2"])
    else
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<addressable>, [">= 2.2.6"])
      s.add_dependency(%q<webmock>, [">= 1.6.4"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<yajl-ruby>, [">= 0.8.2"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<addressable>, [">= 2.2.6"])
    s.add_dependency(%q<webmock>, [">= 1.6.4"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<yajl-ruby>, [">= 0.8.2"])
  end
end
