class Fraccionarios
    def initialize (num, den)
        @num=num
        @den=den
    end
    def den
        return @den
    end
    def num
        return @num
    end
    def string()
        return "#{@num}/#{@den}"
    end
    
    def sum(fraccion)
        n=(@num*fraccion.den)+(fraccion.num*@den)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r.string
    end
end