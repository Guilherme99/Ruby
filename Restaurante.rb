class Restaurante
  
  attr_accessor :nota
  
  def initialize(nome)
    puts "Criando um novo restaurante: #{nome}"
    @nome = nome
    
    @@total ||= 0 
    @@total = @@total + 1 
  end 
  
  def qualifica(msg="Obrigado")
  puts "A nota do restaurante #{@nome} foi #{@nota}. #{msg}"

  end 
  
  def nota 
    @nota 
  end 
  
  def nota=(nota)
    @nota = nota 
  end   
  
  class << self 
    def relatorio
      puts "Foram criados #{@@total} Restaurantes"  
    end 
  end 

end 

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de chao")
restaurante_um = Restaurante.new("Galinha caipira")

restaurante_um.nota = 8
restaurante_dois.nota =  5

restaurante_um.qualifica
restaurante_dois.qualifica

Restaurante.relatorio

