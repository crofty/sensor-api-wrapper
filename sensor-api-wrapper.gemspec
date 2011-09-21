# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sensor-api-wrapper"
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Croft"]
  s.date = "2011-09-21"
  s.email = "james.r.croft@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["Gemfile", "Gemfile.lock", "README.md", "lib/sensor/client.rb", "lib/sensor/connection.rb", "lib/sensor.rb"]
  s.homepage = "http://yoursite.example.com"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "What this thing does"

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
