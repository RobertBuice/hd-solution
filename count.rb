class String
  def numeric?
    Float(self) != nil rescue false
  end
end

class HDTest
  def count_num_occurences(string)
    occurences = Hash.new 0
    string.split("").each do |letter|
      if letter.numeric?
        occurences[letter] += 1
      end
    end
    return occurences
  end
end

describe HDTest do 
   context "When testing the count_num_occurences function" do 
      
      it "should ignore non-number characters in the string" do 
         hdt = HDTest.new
         occurences_hash = hdt.count_num_occurences('aaa223bcfheiuwfhewi')
         correct_hash = {'2' => 2, '3' => 1}
         expect(occurences_hash).to match(correct_hash)
      end

      it "should properly count numbers in the string" do 
         hdt = HDTest.new
         occurences_hash = hdt.count_num_occurences('1112211')
         correct_hash = {'1' => 5, '2' => 2}
         expect(occurences_hash).to match(correct_hash)
      end

      it "should not throw any errors if an empty string is used" do 
         hdt = HDTest.new
         occurences_hash = hdt.count_num_occurences('')
         correct_hash = {}
         expect(occurences_hash).to match(correct_hash)
      end

      it "should not throw any errors if only letters are used" do 
         hdt = HDTest.new
         occurences_hash = hdt.count_num_occurences('aioefwjowqieiw')
         correct_hash = {}
         expect(occurences_hash).to match(correct_hash)
      end
      
   end
end