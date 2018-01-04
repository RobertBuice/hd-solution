# Solution

This is an implementation of:

    def function(x)
      x.chars.inject({}){|a,b| a[b] = x.chars.count(b); a}.\
      reject{|a,b| !(a[/[0-9]/])}
    end
    x = 'p823j98fh89ahf9sd8h0afsd'
    function(x) #expected output {"8"=>4, "2"=>1, "3"=>1, "9"=>3, "0"=>1}

To run tests: 

  $rspec spec count.rb