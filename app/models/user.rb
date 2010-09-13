class User < ActiveRecord::Base
  include Defaults

  DEFAULT_CONFIG = { :option => 'value' }

  defaults :config, DEFAULT_CONFIG

  serialize :config, Hash

  def name=(value)
    write_attribute(:name, "#{value}_#{config[:option]}")
  end
end
