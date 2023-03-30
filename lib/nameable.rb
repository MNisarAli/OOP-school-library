class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class}##{__method__} has not been implemented."
  end
end
