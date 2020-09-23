class MultiAuth::Providers
  @@registry = {} of String => MultiAuth::Provider.class

  def self.register(name : String, klass : MultiAuth::Provider.class)
    @@registry[name] = klass
  end

  def self.get(name : String)
    @@registry[name]
  end
end