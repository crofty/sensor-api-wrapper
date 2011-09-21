# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sensor-api-wrapper}
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{James Croft}]
  s.date = %q{2011-09-19}
  s.email = %q{james.r.croft@gmail.com}
  s.extra_rdoc_files = [%q{README.md}]
  s.files = [%q{Gemfile}, %q{Gemfile.lock}, %q{README.md}, %q{lib/sensor}, %q{lib/sensor/client.rb}, %q{lib/sensor/connection.rb}, %q{lib/sensor.rb}]
  s.homepage = %q{http://yoursite.example.com}
  s.rdoc_options = [%q{--main}, %q{README.md}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{What this thing does}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.7.0.rc1"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
    else
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.7.0.rc1"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.7.0.rc1"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
  end
end
