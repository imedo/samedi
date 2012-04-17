Gem::Specification.new do |s| 
  s.platform  =   Gem::Platform::RUBY
  s.name      =   "samedi"
  s.version   =   "0.0.1"
  s.date      =   Date.today.strftime('%Y-%m-%d')
  s.author    =   "Thomas Kadauke"
  s.email     =   "tkadauke@imedo.de"
  s.homepage  =   "http://www.imedo.de"
  s.summary   =   "Allows access to the API from samedi.de"
  s.files     =   Dir.glob("{lib}/**/*")

  s.require_path = "lib"
end
