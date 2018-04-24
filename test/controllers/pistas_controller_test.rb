require 'test_helper'

class PistasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pista = pistas(:one)
  end

  test "should get index" do
    get pistas_url
    assert_response :success
  end

  test "should get new" do
    get new_pista_url
    assert_response :success
  end

  test "should create pista" do
    assert_difference('Pista.count') do
      post pistas_url, params: { pista: { localizacao: @pista.localizacao, numero: @pista.numero, pontos: @pista.pontos } }
    end

    assert_redirected_to pista_url(Pista.last)
  end

  test "should show pista" do
    get pista_url(@pista)
    assert_response :success
  end

  test "should get edit" do
    get edit_pista_url(@pista)
    assert_response :success
  end

  test "should update pista" do
    patch pista_url(@pista), params: { pista: { localizacao: @pista.localizacao, numero: @pista.numero, pontos: @pista.pontos } }
    assert_redirected_to pista_url(@pista)
  end

  test "should destroy pista" do
    assert_difference('Pista.count', -1) do
      delete pista_url(@pista)
    end

    assert_redirected_to pistas_url
  end
end
