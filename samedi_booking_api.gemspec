Gem::Specification.new do |s|
  s.platform  =   Gem::Platform::RUBY
  s.name      =   "samedi_booking_api"
  s.version   =   "0.0.1"
  s.date      =   Date.today.strftime('%Y-%m-%d')
  s.authors   =   ["Thomas Kadauke", "Michael Siebert"]
  s.email     =   ["tkadauke@imedo.de", "michael.siebert@samedi.de"]
  s.homepage  =   ["http://www.imedo.de", "https://www.samedi.de"]
  s.summary   =   "Allows access to the Booking API from samedi.de"
  s.files     =   Dir.glob("{lib}/**/*")

  s.require_path = "lib"
end
