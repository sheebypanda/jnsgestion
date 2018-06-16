require "application_system_test_case"

class CommandesTest < ApplicationSystemTestCase
  setup do
    @commande = commandes(:one)
  end

  test "visiting the index" do
    visit commandes_url
    assert_selector "h1", text: "Commandes"
  end

  test "creating a Commande" do
    visit commandes_url
    click_on "New Commande"

    fill_in "Anneemax", with: @commande.anneemax
    fill_in "Anneemin", with: @commande.anneemin
    fill_in "Carburant", with: @commande.carburant
    fill_in "Categorie", with: @commande.categorie
    fill_in "Co2", with: @commande.co2
    fill_in "Commentaire", with: @commande.commentaire
    fill_in "Contact", with: @commande.contact_id
    fill_in "Couleur", with: @commande.couleur
    fill_in "Etat", with: @commande.etat
    fill_in "Finition", with: @commande.finition
    fill_in "Km", with: @commande.km
    fill_in "Marque", with: @commande.marque
    fill_in "Modele", with: @commande.modele
    fill_in "Options", with: @commande.options
    fill_in "Puissance", with: @commande.puissance
    fill_in "Transmission", with: @commande.transmission
    click_on "Create Commande"

    assert_text "Commande was successfully created"
    click_on "Back"
  end

  test "updating a Commande" do
    visit commandes_url
    click_on "Edit", match: :first

    fill_in "Anneemax", with: @commande.anneemax
    fill_in "Anneemin", with: @commande.anneemin
    fill_in "Carburant", with: @commande.carburant
    fill_in "Categorie", with: @commande.categorie
    fill_in "Co2", with: @commande.co2
    fill_in "Commentaire", with: @commande.commentaire
    fill_in "Contact", with: @commande.contact_id
    fill_in "Couleur", with: @commande.couleur
    fill_in "Etat", with: @commande.etat
    fill_in "Finition", with: @commande.finition
    fill_in "Km", with: @commande.km
    fill_in "Marque", with: @commande.marque
    fill_in "Modele", with: @commande.modele
    fill_in "Options", with: @commande.options
    fill_in "Puissance", with: @commande.puissance
    fill_in "Transmission", with: @commande.transmission
    click_on "Update Commande"

    assert_text "Commande was successfully updated"
    click_on "Back"
  end

  test "destroying a Commande" do
    visit commandes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commande was successfully destroyed"
  end
end
