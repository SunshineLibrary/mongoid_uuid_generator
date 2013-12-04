Gem::Specification.new do |s|
  s.name        = 'mongoid_uuid_generator'
  s.version     = '0.0.1'
  s.date        = '2013-12-04'
  s.summary     = File.read("README.markdown").split(/===+/)[1].strip.split("\n")[0]
  s.description = s.summary
  s.authors     = ["ukisami", "David Chen"]
  s.email       = 'mvjome@gmail.com'
  s.homepage    = 'https://github.com/SunshineLibrary/mongoid_uuid_generator'
  s.license     = 'MIT'

  s.add_dependency "mongoid"
  s.add_dependency "activesupport", "> 3.2"
  s.add_dependency "uuidtools"

  s.files = `git ls-files`.split("\n")
end
