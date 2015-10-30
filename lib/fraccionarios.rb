class Fraccionarios
    
    #inicializador de la clase
    def initialize (num, den)
        @num=num
        @den=den
    end
    
    #retorna el valor del denominador
    def den
        return @den
    end
    
    #retorna el valor del numerador
    def num 
        return @num
    end
    
    #retorna la fraccion en forma de string
    def string
        return "#{@num}/#{@den}"
    end
    
    #suma
    def sum(fraccion)
        n=(@num*fraccion.den)+(fraccion.num*@den)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r.string
    end
    
    #resta
    def res(fraccion)
        n=(@num*fraccion.den)-(fraccion.num*@den)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r.string
    end
    
    #multiplicación
    def mul(fraccion)
        n=(@num*fraccion.num)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r.string
    end
    
    #división
    def div(fraccion)
        n=(@num*fraccion.den)
        d=@den*fraccion.num
        r=Fraccionarios.new(n,d)
        return r.string
    end
end