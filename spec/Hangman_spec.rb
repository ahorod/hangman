require('rspec')
require('hangman')

describe('Hangman') do

  describe("#initialize") do
      it("sets word and input") do
        test_hangman = Hangman.new("hippo","p")
        expect(test_hangman.input()).to(eq("p"))
        expect(test_hangman.answer()).to(eq(["h", "i", "p", "p", "o"]))
      end
  end


  describe('#blank') do
    it("returns dashes for word") do
      test_hangman = Hangman.new("hippo","p")
      expect(test_hangman.blank()).to(eq(["_", "_", "_", "_", "_"]))
    end
  end
end
