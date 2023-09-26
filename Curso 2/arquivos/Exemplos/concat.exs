defmodule MeuModulo.Concat do
  # Cabeçalho (protótipo) da função
  def join(string_a, string_b \\ nil, separador \\ " ")

  # Nesse caso, a função com a cláusula de guarda deve vir primeiro
  def join(string_a, string_b, _separador) when is_nil(string_b), do: string_a

  # "\\" sinaliza um valor padrão para determinado parâmetro
  def join(string_a, string_b, separador) do
    string_a <> separador <> string_b
  end
end
