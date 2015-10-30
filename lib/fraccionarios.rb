#!/usr/bin/ruby
# encoding: utf-8
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
    def to_s
        return "#{@num}/#{@den}"
    end
    
    #suma
    def +(fraccion)
        n=(@num*fraccion.den)+(fraccion.num*@den)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r
    end
    
    #resta
    def -(fraccion)
        n=(@num*fraccion.den)-(fraccion.num*@den)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r
    end
    
    #multiplicación
    def *(fraccion)
        n=(@num*fraccion.num)
        d=@den*fraccion.den
        r=Fraccionarios.new(n,d)
        return r
    end
    
    #división
    def /(fraccion)
        n=(@num*fraccion.den)
        d=@den*fraccion.num
        r=Fraccionarios.new(n,d)
        return r
    end
    
    #cálculo del mcd
    def mcd (num, den)
        a, b = num.abs, den.abs
        while b != 0
            a, b = b, a % b
        end
        return a
    end
    
    #cálculo del mcd sin parámetros
    def mcd
        a, b = @num.abs, @den.abs
        while b != 0
            a, b = b, a % b
        end
        return a
    end
    
    #simplificación
    def simp
        div = mcd
        @num = @num/div
        @den = @den/div
    end
    
end