require "application_system_test_case"

class PistasTest < ApplicationSystemTestCase
  setup do
    @pista = pistas(:one)
  end

  test "visiting the index" do
    visit pistas_url
    assert_selector "h1", text: "Pistas"
  end

  test "creating a Pista" do
    visit pistas_url
    click_on "New Pista"

    fill_in "Localizacao", with: @pista.localizacao
    fill_in "Numero", with: @pista.numero
    fill_in "Pontos", with: @pista.pontos
    click_on "Create Pista"

    assert_text "Pista was successfully created"
    click_on "Back"
  end

  test "updating a Pista" do
    visit pistas_url
    click_on "Edit", match: :first

    fill_in "Localizacao", with: @pista.localizacao
    fill_in "Numero", with: @pista.numero
    fill_in "Pontos", with: @pista.pontos
    click_on "Update Pista"

    assert_text "Pista was successfully updated"
    click_on "Back"
  end

  test "destroying a Pista" do
    visit pistas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pista was successfully destroyed"
  end
end
