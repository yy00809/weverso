# -*- encoding: utf-8 -*-
# stub: js_regex 3.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "js_regex".freeze
  s.version = "3.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Janosch M\u00FCller".freeze]
  s.date = "2020-11-02"
  s.description = "JsRegex converts Ruby's native regular expressions for JavaScript, taking care of various incompatibilities and returning warnings for unsolvable differences.".freeze
  s.email = ["janosch84@gmail.com".freeze]
  s.homepage = "https://github.com/jaynetics/js_regex".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Converts Ruby regexes to JavaScript regexes.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<character_set>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<regexp_parser>.freeze, [">= 1.8.2", "~> 1.8"])
      s.add_runtime_dependency(%q<regexp_property_values>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<mini_racer>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
      s.add_development_dependency(%q<codecov>.freeze, ["~> 0.2.12"])
    else
      s.add_dependency(%q<character_set>.freeze, ["~> 1.4"])
      s.add_dependency(%q<regexp_parser>.freeze, [">= 1.8.2", "~> 1.8"])
      s.add_dependency(%q<regexp_property_values>.freeze, ["~> 1.0"])
      s.add_dependency(%q<mini_racer>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
      s.add_dependency(%q<codecov>.freeze, ["~> 0.2.12"])
    end
  else
    s.add_dependency(%q<character_set>.freeze, ["~> 1.4"])
    s.add_dependency(%q<regexp_parser>.freeze, [">= 1.8.2", "~> 1.8"])
    s.add_dependency(%q<regexp_property_values>.freeze, ["~> 1.0"])
    s.add_dependency(%q<mini_racer>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_dependency(%q<codecov>.freeze, ["~> 0.2.12"])
  end
end
