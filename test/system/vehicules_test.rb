require "application_system_test_case"

class VehiculesTest < ApplicationSystemTestCase
  setup do
    @vehicule = vehicules(:one)
  end

  test "visiting the index" do
    visit vehicules_url
    assert_selector "h1", text: "Vehicules"
  end

  test "creating a Vehicule" do
    visit vehicules_url
    click_on "New Vehicule"

    fill_in "Boite", with: @vehicule.boite
    fill_in "Carburant", with: @vehicule.carburant
    fill_in "Categorie", with: @vehicule.categorie
    fill_in "Chassis", with: @vehicule.chassis
    fill_in "Co2.String", with: @vehicule.co2.string
    fill_in "Commande", with: @vehicule.commande_id
    fill_in "Contact", with: @vehicule.contact_id
    fill_in "Couleur", with: @vehicule.couleur
    fill_in "Cv", with: @vehicule.cv
    fill_in "Cvfiscaux", with: @vehicule.cvfiscaux
    fill_in "Cylindree", with: @vehicule.cylindree
    fill_in "Finition", with: @vehicule.finition
    fill_in "Immat", with: @vehicule.immat
    fill_in "Km", with: @vehicule.km
    fill_in "Marque", with: @vehicule.marque
    fill_in "Modele", with: @vehicule.modele
    fill_in "Prixht", with: @vehicule.prixht
    fill_in "User", with: @vehicule.user_id
    click_on "Create Vehicule"

    assert_text "Vehicule was successfully created"
    click_on "Back"
  end

  test "updating a Vehicule" do
    visit vehicules_url
    click_on "Edit", match: :first

    fill_in "Boite", with: @vehicule.boite
    fill_in "Carburant", with: @vehicule.carburant
    fill_in "Categorie", with: @vehicule.categorie
    fill_in "Chassis", with: @vehicule.chassis
    fill_in "Co2.String", with: @vehicule.co2.string
    fill_in "Commande", with: @vehicule.commande_id
    fill_in "Contact", with: @vehicule.contact_id
    fill_in "Couleur", with: @vehicule.couleur
    fill_in "Cv", with: @vehicule.cv
    fill_in "Cvfiscaux", with: @vehicule.cvfiscaux
    fill_in "Cylindree", with: @vehicule.cylindree
    fill_in "Finition", with: @vehicule.finition
    fill_in "Immat", with: @vehicule.immat
    fill_in "Km", with: @vehicule.km
    fill_in "Marque", with: @vehicule.marque
    fill_in "Modele", with: @vehicule.modele
    fill_in "Prixht", with: @vehicule.prixht
    fill_in "User", with: @vehicule.user_id
    click_on "Update Vehicule"

    assert_text "Vehicule was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicule" do
    visit vehicules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicule was successfully destroyed"
  end
end
