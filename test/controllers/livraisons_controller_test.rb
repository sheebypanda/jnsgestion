require 'test_helper'

class LivraisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livraison = livraisons(:one)
  end

  test "should get index" do
    get livraisons_url
    assert_response :success
  end

  test "should get new" do
    get new_livraison_url
    assert_response :success
  end

  test "should create livraison" do
    assert_difference('Livraison.count') do
      post livraisons_url, params: { livraison: { adresse: @livraison.adresse, complementadresse: @livraison.complementadresse, contact_id: @livraison.contact_id, cp: @livraison.cp, initiales: @livraison.initiales, pays: @livraison.pays, ville: @livraison.ville } }
    end

    assert_redirected_to livraison_url(Livraison.last)
  end

  test "should show livraison" do
    get livraison_url(@livraison)
    assert_response :success
  end

  test "should get edit" do
    get edit_livraison_url(@livraison)
    assert_response :success
  end

  test "should update livraison" do
    patch livraison_url(@livraison), params: { livraison: { adresse: @livraison.adresse, complementadresse: @livraison.complementadresse, contact_id: @livraison.contact_id, cp: @livraison.cp, initiales: @livraison.initiales, pays: @livraison.pays, ville: @livraison.ville } }
    assert_redirected_to livraison_url(@livraison)
  end

  test "should destroy livraison" do
    assert_difference('Livraison.count', -1) do
      delete livraison_url(@livraison)
    end

    assert_redirected_to livraisons_url
  end
end
