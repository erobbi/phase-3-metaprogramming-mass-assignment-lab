class Person

  def initialize(attributes = nil) # creates an anbitrarily long list of attributes
    if attributes
      attributes.each do |k, v| # key value
        self.class.attr_accessor(k) # adds setter and getter
        self.send("#{k}=", v) # remember to use "" not ''
      end
    end
  end
end
