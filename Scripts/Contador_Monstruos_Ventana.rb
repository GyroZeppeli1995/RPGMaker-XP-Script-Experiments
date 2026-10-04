class Contador_Monstruos_Ventana < Window_Base
    def initialize()
            super(0, 128, 368, 352) #Posicion y dimensiones de la ventana
            self.contents = Bitmap.new(width - 32, height - 32)
            refresh
    end

    def refresh
            self.contents.clear
            self.contents.font.color = normal_color
            self.contents.draw_text(10, 0,320, 128, $contador.obtener_cantidad)
    end
end
