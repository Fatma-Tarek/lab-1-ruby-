class ComplexNumber
    @@first_complex = Complex(1, 1)
    @@count_of_addation = 0
    @@count_of_multiple_addation = 0
    @@count_of_multiply = 0
    @@count_of_multiple_multiply = 0

    def add_Two_Complex(second_object)
        result = @@first_complex + second_object
        puts "The Result of add complex: #{result}\n\n"
        @@count_of_addation +=1 
    end

    def multiply_Two_Complex(second_object)
        result = @@first_complex * second_object
        puts "The Result of add complex: #{result}\n\n"
        @@count_of_multiply +=1 
    end

    def add_Multiple_Complex(input_arr)
        arr = input_arr
        i = 0
        result = 0
        while i < arr.length()
            result = result +arr[i]
            i +=1
        end
        puts "The Result of add  multiple complex: #{result}\n\n"
        @@count_of_multiple_addation +=1 
    end

    def multiply_Multiple_Complex(input_arr)
        arr = input_arr
        i = 0
        result = 1
        while i < arr.length()
            result = result * arr[i]
            i +=1
        end
        puts "The Result of multiple multiple complex: #{result}\n\n"
        @@count_of_multiple_multiply +=1 
    end

    def get_stats()
        no_of_use_calcator =  @@count_of_addation + @@count_of_multiple_addation + @@count_of_multiply + @@count_of_multiple_multiply 
        puts "times the calculator used: #{no_of_use_calcator}\n"
        puts "times of add two complex: #{@@count_of_addation}\n"
        puts "times of multiply two complex: #{@@count_of_multiply}\n"
        puts "times of add multiple complex: #{@@count_of_multiple_addation}\n"
        puts "times of multiply multiple complex: #{@@count_of_multiple_multiply}\n"
    end

end

# Add two complex #
def add_view()
    puts "enter the real part  of real"
    real = gets
    puts "enter the imaginary part  complex"
    imaginary = gets
    b = Complex(real, imaginary)
    cust1 = ComplexNumber.new().add_Two_Complex(b)
end

# multiply two complex #
def multiply_view()
    puts "enter the real part  of real"
    real = gets
    puts "enter the imaginary part  complex"
    imaginary = gets
    b = Complex(real, imaginary)
    cust1 = ComplexNumber.new().multiply_Two_Complex(b)
end


# Multiple Array #
def add_multiple_view()
    arr = []
    puts "number of index you want to add :"
    data = gets 
    data2 = data.to_i 
    puts "data value #{data }"
    i = 0
    while i < data2 do
        puts "enter the real part  of real"
        real = gets
        puts "enter the imaginary part  complex"
        imaginary = gets
        b = Complex(real, imaginary)
        arr.push(b)
        i +=1
    end
    puts "values of arr #{arr}"
    cust1 = ComplexNumber.new().add_Multiple_Complex(arr)
end

def multiple_multiple_view()
    arr = []
    puts "number of index you want to add :"
    data = gets 
    data2 = data.to_i 
    puts "data value #{data }"
    i = 0
    while i < data2 do
        puts "enter the real part  of real"
        real = gets
        puts "enter the imaginary part  complex"
        imaginary = gets
        b = Complex(real, imaginary)
        arr.push(b)
        i +=1
    end
    puts "values of arr #{arr}"
    cust1 = ComplexNumber.new().multiply_Multiple_Complex(arr)
end



# drive code #
answer = 1
while answer != 6  do
    puts "1- add two complex\n"
    puts "2- multiply two complex\n"
    puts "3- add multiple complex\n"
    puts "4- multiply multiple complex\n"
    puts "5- get status\n"
    puts "6- End program\n"
    puts "Enter your option = "  
    answer = gets
    answer = answer.to_i
    puts "answer = #{answer}"
    #puts answer.class  #to know type of object 
    case answer
    when 1
        puts "your answer is one\n"
        add_view()
    when 2
        puts "your answer is two\n"
        multiply_view()
    when 3
        puts "your answer is three\n"
        add_multiple_view()
    when 4
        puts "your answer is four\n"
        multiple_multiple_view()
    when 5
        puts "your answer is five\n"
        cust1 = ComplexNumber.new().get_stats()
    when 6
        puts "Thank you for using my program\n"
    end

    
 end