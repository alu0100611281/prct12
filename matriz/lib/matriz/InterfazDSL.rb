
# DSL para trabajar con matrices

class MatrixDSL
     
        attr_accessor :option
    
        attr_accessor :operador
        
        attr_accessor :tipo
       
        attr_accessor :mostrar

        
       
        r
          def initialize(operacion, &block)
                @operacion = operacion
                @operador = []
                @tipo = 'densa'
                @mostrar = 'console'  

                
          end
 
       
        #  Devuelve un string con el resultado de operar la operacion especificada
          def to_s
                 salida = "\n #{@operacion} \n"
                
                case @operacion
                              when "suma" then salida << "\n#{(@operador[0]+@operador[1]).to_s}\n"
                              when "producto" then salida << "\n#{(@operador[0]*@operador[1]).to_s}\n"        
                    end 
        
                salida  
          end

        
        #  Metodo para establecer las distintas opciones en @tipo y @mostrar
          def option(opcion)
                case opcion
                              when 'densa','dispersa' then @tipo = opcion
                              when 'console','file' then @mostrar = opcion
                    end
          end

       
          def operand(array) 
                vector = []
                    
                    for i in 0...array.size
                   vector.push(array[i])
                end
                
                 
                
                
                    case @tipo
                        when "densa" then @operador << Matrix.new(array.size,array[0].size,vector)
                        when "dispersa" then @operador << Matrix_dispersa.new(array.size,arry[0].size,vector,"COO")
                    end                           
                                
                
          end
end

