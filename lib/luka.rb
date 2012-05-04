require "luka/version"

module Luka
  def luka(object)
    return Luka::Fluent.new object
  end

  class Fluent
    def initialize object
      @object = object
    end

    private

    def method_missing name, *arguments, &block
      @object.send(name, *arguments, &block)
      self
    end
  end
end
