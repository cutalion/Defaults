module Defaults

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
    base.send :alias_method_chain, :attributes_from_column_definition, :defaults
  end

  module ClassMethods
    def defaults(name, values)
      defs = class_variable_defined?(:@@defaults) ? class_variable_get(:@@defaults) : {}
      class_variable_set(:@@defaults, defs.merge(name => values) )
    end
  end


  module InstanceMethods
    def attributes_from_column_definition_with_defaults
      attrs = attributes_from_column_definition_without_defaults
      attrs.merge!(self.class.class_variable_get(:@@defaults).stringify_keys)
      attrs
    end
  end

end