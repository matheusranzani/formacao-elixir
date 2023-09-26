# defmodule MeuModulo.Arquivos do
#   def ler(arquivo) do
#     # "!" indica que se não for possível ler o arquivo, uma exceção será lançada
#     File.read!(arquivo)
#   end
# end

# Usando case para lidar com erros
# defmodule MeuModulo.Arquivos do
#   def ler(arquivo) do
#     case File.read(arquivo) do
#       {:ok, conteudo} -> IO.puts(conteudo)
#       {:error, erro} -> case erro do
#         :enoent -> "Arquivo inexistente"
#         :eacces -> "Arquivo sem permissão de leitura"
#         _ -> "Erro desconhecido"
#       end
#     end
#   end
# end

# Usando case e pattern matching para lidar com erros
defmodule MeuModulo.Arquivos do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo inexistente"
      {:error, :eacces} -> "Arquivo sem permissão de leitura"
      _erro -> "Erro desconhecido"
    end
  end
end
