class Call

  def method_missing(method, *args, &block)
    @number = method[/\d+/].to_s
    @number_size = "#{@number}"
    if (@number_size.size == 10 ) && ((@number.start_with?'8') || (@number.start_with?'9') || (@number.start_with?'0'))
      # puts "valid phone number"
      return method
    end
    puts "missing method #{method}"   
  end

  # def valid(number)
  #   @number_size = Math.log10(number).to_i + 1
  #   if (@number_size == 10 )
  #     puts "valid number"
  #     return @number
  #   end
  # end

  # def call_04844011845
  #   puts 04844011845
  # end

  # def call_8547810845
  #   puts 8547810845
  # end

  # def call_12321
  #   puts 12321
  # end

end