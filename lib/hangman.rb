class Hangman
# @@top_answer = @answer_show
define_method(:initialize) do |answer, input|
  @answer = answer.split("")
  @answer_show = []
  @wrong_answers = [];
  @wrong_counter = wrong_answers.length
  @input = input
  @input_array = [input]
  @shared = [answer] & input_array
end

def answer
    @answer
end
def answer_show
    @answer_show
end
def wrong_answers
    @wrong_answers
end
def wrong_counter
    @wrong_counter
end
def input
    @input
end
def input_array
    @input_array
end
def shared
    @shared
end


def blank
  @answer.length.times do
    @answer_show.push("_")
  end
  @answer_show
end

def compare_input
  i=0
  if (@input_array & @wrong_answers & @answer_show == [])
    @answer.each do |letter|
      if @input == letter
        @answer_show[i]=letter
        # @@top_answer.push(@answer_show)
        i+=1
      else
        i+=1
      end
    end
  elsif @shared==[] && @wrong_answers.index(input)==nil
      @wrong_answers.push(input)
  end
  answer_show
end

end
