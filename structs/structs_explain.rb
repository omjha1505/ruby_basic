module AppStore
App =  Struct.new(:name,:developer,:version)  #Struct is like mini-version of class
APPS = [
  App.new(:Chat,:facebook,2.0),
  App.new(:twitter,:twitter,2.0),
]
def self.find_app(name)
  APPS.find{|app| app.name == name}
end

end
