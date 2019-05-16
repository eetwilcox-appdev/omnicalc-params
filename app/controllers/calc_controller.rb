class CalcController < ApplicationController
    
    def flex_square
        
        @a_number = params.fetch("zebra").to_i
        @squared_number = @a_number ** 2
        
        render("flex_templates/square.html.erb")
    end
    
    def flex_square_root
        
        @a_number = params.fetch("zebra").to_i
        @square_root = @a_number ** (0.5)
        
        render("flex_templates/sqrroot.html.erb")
    end
        
    def flex_pmt
        
        @basis_points = params.fetch("basis_points").to_f
        @monthly_rate = @basis_points/12
        @monthly_rate_decimal = @monthly_rate/10000
        @rate = @basis_points/100
        
        @number_of_years = params.fetch("number_of_years").to_i
        @number_of_periods = @number_of_years*12
        
        @present_value = params.fetch("present_value").to_i
        
        @monthly_payment = (@monthly_rate_decimal*@present_value)/(1-((1+@monthly_rate_decimal)**-@number_of_periods))
        
        render("flex_templates/pmt.html.erb")
    end
    
    def flex_random
        
        @max = params.fetch("max").to_i
        @min = params.fetch("min").to_i
        
        render("flex_templates/random.html.erb")
    end
    
    def square_form
        render("form_templates/square.html.erb")
    end
    
    def process_square_form
        
        @num = params.fetch("user_number").to_f
        @square_of_num = @num ** 2
        
        render("results_templates/square.html.erb")
    end
    
    def square_root_form
        render("form_templates/square_root.html.erb")
    end
    
    def process_square_root_form
        
        @num_to_sqr = params.fetch("user_number_to_sqr").to_f
        @sqrt_of_num = @num_to_sqr ** 0.5
        
        render("results_templates/square_root.html.erb")
    end

end