class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]
  before_action :set_client, only: [:show, :new, :edit, :update, :destroy]
  def index
    @commandes = Commande.all
  end

  def show
  end

  def new
    @commande = Commande.new
  end

  def edit
  end

  def create
    @commande = Commande.new(commande_params)

    respond_to do |format|
      if @commande.save
        format.html { redirect_to commandes_path, notice: 'La commande a bien été créée' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @commande.update(commande_params)
        format.html { redirect_to commandes_path, notice: 'La commande a bien été mise à jour' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @commande.destroy
    respond_to do |format|
      format.html { redirect_to commandes_url, notice: 'La commande a bien été supprimée' }
      format.json { head :no_content }
    end
  end

  private

    def set_client
      @clients = Contact.where(categorie: 'Client')
    end

    def set_commande
      @commande = Commande.find(params[:id])
    end

    def commande_params
      params.require(:commande).permit(:etat, :contact_id, :marque, :modele, :finition, :categorie, :anneemin, :anneemax, :km, :transmission, :carburant, :puissance, :co2, :couleur, :options, :commentaire)
    end
end
