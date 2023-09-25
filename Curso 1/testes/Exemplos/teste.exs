defmodule MeuModulo do
  import IO, only: [puts: 1] # 1 é a aridade da função
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MyMath

  require Integer # is_even é uma macro desse módulo
  # import Integer # Se importar é só chamar is_even() direto

  def ola_mundo do
    inspect(MyMath.soma(3, 2))
  end

  def exibe_se_eh_par(numero) do
    # require Integer # Escopo léxico, Integer pode ser requerido apenas nessa função
    puts("O número #{numero} é par? #{Integer.is_even(numero)}")
  end

  # Função privada
  defp inspect(parametro) do
    puts("Começando a inspeção")
    puts(parametro)
    puts("Terminando a inspeção")
  end
end
