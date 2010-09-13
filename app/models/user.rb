class User < ActiveRecord::Base
  include Defaults

  DEFAULT_CONFIG = { :option => 'value' }

  defaults :config, DEFAULT_CONFIG

  serialize :config, Hash

  def self.class_variable_get(symbol)
    super(symbol)
  end

  def name=(value)
    write_attribute(:name, "#{value}_#{config[:option]}")
  end
end
