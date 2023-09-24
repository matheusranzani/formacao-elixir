# defmodule MeuModulo.Enum do
#   def primeiro(lista) do
#     # Por padrão, uma função que não executa nenhuma instrução retorna nil
#     unless length(lista) == 0 do
#       hd(lista)
#     end

#     # if (length(lista) == 0) do # Dá pra usar sem os parênteses
#     #   nil # false, true e nil não precisam dos ":"
#     # else
#     #   hd(lista)
#     # end
#   end
# end

defmodule MeuModulo.Enum do
  # Fazendo o pattern matching do argumento recebido com uma lista vazia
  def primeiro([]), do: nil
  def primeiro(lista), do: hd(lista)
end
