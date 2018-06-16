require "application_system_test_case"

class LivraisonsTest < ApplicationSystemTestCase
  setup do
    @livraison = livraisons(:one)
  end

  test "visiting the index" do
    visit livraisons_url
    assert_selector "h1", text: "Livraisons"
  end

  test "creating a Livraison" do
    visit livraisons_url
    click_on "New Livraison"

    fill_in "Adresse", with: @livraison.adresse
    fill_in "Complementadresse", with: @livraison.complementadresse
    fill_in "Contact", with: @livraison.contact_id
    fill_in "Cp", with: @livraison.cp
    fill_in "Initiales", with: @livraison.initiales
    fill_in "Pays", with: @livraison.pays
    fill_in "Ville", with: @livraison.ville
    click_on "Create Livraison"

    assert_text "Livraison was successfully created"
    click_on "Back"
  end

  test "updating a Livraison" do
    visit livraisons_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @livraison.adresse
    fill_in "Complementadresse", with: @livraison.complementadresse
    fill_in "Contact", with: @livraison.contact_id
    fill_in "Cp", with: @livraison.cp
    fill_in "Initiales", with: @livraison.initiales
    fill_in "Pays", with: @livraison.pays
    fill_in "Ville", with: @livraison.ville
    click_on "Update Livraison"

    assert_text "Livraison was successfully updated"
    click_on "Back"
  end

  test "destroying a Livraison" do
    visit livraisons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Livraison was successfully destroyed"
  end
end
