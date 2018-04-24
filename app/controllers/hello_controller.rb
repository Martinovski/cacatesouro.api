class HelloController < ApplicationController
    def index
       # render plain: "hello"
    end

    def usuario
        @usuario = Usuario.first
    end
    
end
