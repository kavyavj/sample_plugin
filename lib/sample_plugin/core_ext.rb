String.class_eval do
  def say_hello
    "squawk! #{self}".strip
  end
end