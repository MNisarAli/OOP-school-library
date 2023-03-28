require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  MAX_NAME_LENGTH = 10

  def correct_name
    name = @nameable.correct_name
    name.length > MAX_NAME_LENGTH ? name[0...MAX_NAME_LENGTH] : name
  end
end
