class Contador_Monstruos_Scene

  

    def main
      @ventana = Contador_Monstruos_Ventana.new
      
      #----------------------------------------------
      #Codigo copy pasteado base de otras scenas
      #----------------------------------------------
      # Execute transition
      Graphics.transition
      # Main loop
      loop do
        # Update game screen
        Graphics.update
        # Update input information
        Input.update
        # Frame update
        update
        # Abort loop if screen is changed
        if $scene != self
          break
        end
      end
    end


    def update
          @ventana.update
          #Input para cerrar la ventana
           if Input.trigger?(Input::C)
                         @ventana.dispose
                         $scene = Scene_Map.new
           end
    end
end
