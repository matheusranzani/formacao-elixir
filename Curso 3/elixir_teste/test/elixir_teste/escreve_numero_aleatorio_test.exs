defmodule ElixirTesteTeste.EscreveNumeroAleatorioTest do
  use ExUnit.Case
  import Mock

  test "2 escritas no arquivo geram números diferentes" do
    ElixirTeste.EscreveNumeroAleatorio.escreve

    primeiro_conteudo = File.read!(Path.join([
      :code.priv_dir(:elixir_teste),
      "arquivo.txt"
    ]))

    ElixirTeste.EscreveNumeroAleatorio.escreve

    segundo_conteudeo = File.read!(Path.join([
      :code.priv_dir(:elixir_teste),
      "arquivo.txt"
    ]))

    assert primeiro_conteudo != segundo_conteudeo
  end

  test "com mock" do
    :ets.new(:conteudos, [:set, :private, :named_table]) # Tabela do Erlang

    with_mock File, [write!: fn (_path, conteudo) -> :ets.insert_new(:conteudos, {conteudo}) end] do
      ElixirTeste.EscreveNumeroAleatorio.escreve
      ElixirTeste.EscreveNumeroAleatorio.escreve

      conteudos = :ets.tab2list(:conteudos)
      [primeiro_valor | conteudos] = conteudos
      [segundo_valor | _] = conteudos

      assert primeiro_valor != segundo_valor
    end
  end
end
