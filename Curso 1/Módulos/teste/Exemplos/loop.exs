defmodule MeuModulo.Loop do
  def tabuada(multiplicador) do
    tabuada(multiplicador, 10, [])
  end

  defp tabuada(_, 0, lista), do: lista # Função de parada da recursão

  defp tabuada(produto1, produto2, lista) do
    lista = [produto1 * produto2 | lista]
    tabuada(produto1, produto2 - 1, lista)
  end
end
