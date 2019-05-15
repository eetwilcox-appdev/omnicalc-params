class CalcController < ApplicationController
    
    def flex_square
        
        @a_number = params.fetch("zebra").to_i
        @squared_number = @a_number ** 2
        
        render("flex_templates/square.html.erb")
    end

end