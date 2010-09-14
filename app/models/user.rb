class User < ActiveRecord::Base
  DEFAULT_CONFIG = { :option => 'value' }

  include Defaults

  
  defaults  :config, DEFAULT_CONFIG
  serialize :config, Hash

  def name=(value)
    write_attribute(:name, "#{value}_#{self.config[:option]}")
  end
end
