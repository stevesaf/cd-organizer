require ('rspec')
require ('cd')

describe(CD) do
  before() do
    CD.clear
  end

  describe('.all') do #this is the method that will hold cds
    it("is where we will store our cds") do
      expect(CD.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears out the cds array before putting something new in") do
      CD.new("Shoebops and dandycams").save()
      CD.clear()
      expect(CD.all()).to(eq([]))
    end
  end

  describe('#title') do
    it("returns the title of the CD") do
      test_cd = CD.new("Shoebops and dandycams")
      expect(test_cd.title()).to(eq("Shoebops and dandycams"))
    end
  end

  describe('#save') do #this is the method that will save cds in the array
    it("saves our cds to the array") do
      test_cd = CD.new("Shoebops and dandycams")
      test_cd.save()
      expect(CD.all()).to(eq([test_cd]))
    end
  end
end
