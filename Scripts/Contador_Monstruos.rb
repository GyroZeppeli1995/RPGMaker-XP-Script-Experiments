class Contador_Monstruos

  attr_reader :monstruos

    #Constructor
    def initialize()
        @monstruos = {}
    end

    

    #Metodos
    def aumentar_cantidad(tipo_monstruo, cantidad)
      #Este metodo aumenta la cantidad de monstruos, debe consultar si la clave existe primero
      #
      if @monstruos.key?(tipo_monstruo)
                @monstruos[tipo_monstruo] += cantidad
      else
        @monstruos.store(tipo_monstruo,cantidad)
      end
        
    end
      
          
      def obtener_cantidad()
        cadenaTexto = ""
        @monstruos.each do |clave, valor|
          cadenaTexto += "Monstruo: #{clave} ha sido derrotado: #{valor} veces \n"
        end
        #$game_temp.message_text = cadenaTexto // Si lo ponemos asi nos saltamos el sistema de textos de RPG maker y se bugea
        return cadenaTexto
        
      end



    
      
      



end

$contador = Contador_Monstruos.new






