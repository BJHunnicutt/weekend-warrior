

# def hello_world(name = nil)
#   if name == nil
#     hello_world = "Hello, World!"
#   elsif name == ''
#     hello_world = "Hello, World!"
#   else
#     hello_world = "Hello, #{name}!"
#   end
# end

def hello_world(name = nil)
  if name.to_s == ''
    hello_world = "Hello, World!"
  else
    hello_world = "Hello, #{name}!"
  end
end
