class User < ActiveRecord::Base
  DEFAULT_CONFIG  = { :option => 'value' }
  DEFAULT_GENDER  = 'male'
  include Defaults

  attr_accessor :gender

  defaults  :config, DEFAULT_CONFIG
  defaults  :gender, DEFAULT_GENDER
  serialize :config, Hash

  def name=(value)
    write_attribute(:name, "#{value}_#{self.config[:option]}")
  end
end
