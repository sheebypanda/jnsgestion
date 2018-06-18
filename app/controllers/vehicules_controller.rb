class VehiculesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vehicule, only: [:show, :edit, :update, :destroy]
  before_action :set_fournisseurs, only: [:show, :edit, :create, :new, :update, :destroy]
  before_action :set_commandes, only: [:show, :edit, :create, :new, :update, :destroy]

  def index
    @vehicules = Vehicule.all
  end
  def stock
    @vehicules = Vehicule.where(commande_id: [nil, ''])
  end
  def show
  end

  def new
    @vehicule = Vehicule.new
  end

  def edit
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)

    respond_to do |format|
      if @vehicule.save
        format.html { redirect_to @vehicule, notice: 'Le véhicule a bien été créé.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicule.update(vehicule_params)
        format.html { redirect_to vehicules_path, notice: 'Le véhicule a bien été modifié.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @vehicule.destroy
    respond_to do |format|
      format.html { redirect_to vehicules_url, notice: 'Le véhicule a bien été supprimé.' }
    end
  end

  private
    def set_fournisseurs
      @fournisseurs = Contact.where(categorie: 'Fournisseur')
    end
    def set_commandes
      @commandes = Commande.all
    end
    def set_vehicule
      @vehicule = Vehicule.find(params[:id])
    end

    def vehicule_params
      params.require(:vehicule).permit(:user_id, :contact_id, :commande_id, :marque, :modele, :finition, :categorie, :boite, :cylindree, :cv, :cvfiscaux, :couleur, :chassis, :carburant, :immat, :km, :co2, :prixht, :equipement)
    end
end
