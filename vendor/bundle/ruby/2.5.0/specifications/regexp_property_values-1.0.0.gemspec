# -*- encoding: utf-8 -*-
# stub: regexp_property_values 1.0.0 ruby lib
# stub: ext/regexp_property_values/extconf.rb

Gem::Specification.new do |s|
  s.name = "regexp_property_values".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Janosch Mu\u0308ller".freeze]
  s.date = "2019-07-16"
  s.description = "This small library lets you see which property values are supported by the regular expression engine of the Ruby version you are running, and what they match.".freeze
  s.email = ["janosch84@gmail.com".freeze]
  s.extensions = ["ext/regexp_property_values/extconf.rb".freeze]
  s.files = ["ext/regexp_property_values/extconf.rb".freeze]
  s.homepage = "https://github.com/jaynetics/regexp_property_values".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Inspect property values supported by Ruby's regex engine".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<character_set>.freeze, ["~> 1.4.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<character_set>.freeze, ["~> 1.4.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<character_set>.freeze, ["~> 1.4.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
