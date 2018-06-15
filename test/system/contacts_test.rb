require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "Activite", with: @contact.activite
    fill_in "Adresse", with: @contact.adresse
    fill_in "Categorie", with: @contact.categorie
    fill_in "Commentaire", with: @contact.commentaire
    fill_in "Complementadresse", with: @contact.complementadresse
    fill_in "Cp", with: @contact.cp
    fill_in "Email", with: @contact.email
    fill_in "Mobile", with: @contact.mobile
    fill_in "Nom", with: @contact.nom
    fill_in "Pays", with: @contact.pays
    fill_in "Prenom", with: @contact.prenom
    fill_in "Raisonsociale", with: @contact.raisonsociale
    fill_in "Siret", with: @contact.siret
    fill_in "Tel", with: @contact.tel
    fill_in "Tva", with: @contact.tva
    fill_in "Url", with: @contact.url
    fill_in "Ville", with: @contact.ville
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "Activite", with: @contact.activite
    fill_in "Adresse", with: @contact.adresse
    fill_in "Categorie", with: @contact.categorie
    fill_in "Commentaire", with: @contact.commentaire
    fill_in "Complementadresse", with: @contact.complementadresse
    fill_in "Cp", with: @contact.cp
    fill_in "Email", with: @contact.email
    fill_in "Mobile", with: @contact.mobile
    fill_in "Nom", with: @contact.nom
    fill_in "Pays", with: @contact.pays
    fill_in "Prenom", with: @contact.prenom
    fill_in "Raisonsociale", with: @contact.raisonsociale
    fill_in "Siret", with: @contact.siret
    fill_in "Tel", with: @contact.tel
    fill_in "Tva", with: @contact.tva
    fill_in "Url", with: @contact.url
    fill_in "Ville", with: @contact.ville
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
