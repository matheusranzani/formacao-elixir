defmodule MeuModulo.Tabuada do
  def tabuada(numero), do: tabuada(numero, 1, [])

  defp tabuada(_, 11, lista), do: lista

  defp tabuada(numero, multiplicador, lista) do
    lista = lista ++ [numero * multiplicador]
    tabuada(numero, multiplicador + 1, lista)
  end
end
