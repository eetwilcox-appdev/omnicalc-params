class CalcController < ApplicationController
    
    def flex_square
        
        @a_number = params.fetch("zebra").to_i
        @squared_number = @a_number ** 2
        
        render("flex_templates/square.html.erb")
    end
        
    def flex_pmt
        render("flex_templates/pmt.html.erb")
    end
    
    def square_form
        render("form_templates/square.html.erb")
    end
    
    def process_square_form
        
        @num = params.fetch("user_number").to_f
        @square_of_num = @num ** 2
        
        render("results_templates/square.html.erb")
    end

end