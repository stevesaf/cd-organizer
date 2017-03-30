require 'pry'

class CD
  @@cds = [] #here is our global array aka "factory"

  define_method(:initialize) do |title| #here is where we will put the methods in motion for use
    @title = title
    @id = @@cds.length().+(1)
  end

define_singleton_method(:all) do
  @@cds
end

define_singleton_method(:clear) do
  @@cds = []
end

define_method(:save) do
  @@cds.push(self)
end

define_method(:title) do
  @title
end

define_method(:id) do
  @id
end



end
