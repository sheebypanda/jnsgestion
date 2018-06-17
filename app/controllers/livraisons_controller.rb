class LivraisonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_livraison, only: [:show, :edit, :update, :destroy]
  before_action :set_contact, only: [:new, :create, :update]

  def index
    @livraisons = Livraison.all
  end

  def show
  end

  def new
    @livraison = Livraison.new
  end

  def edit
    @contact = @livraison.contact
  end

  def create
    @livraison = Livraison.new(livraison_params)

    respond_to do |format|
      if @livraison.save
        format.html { redirect_to @contact, notice: "L'adresse a bien été ajoutée" }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @livraison.update(livraison_params)
        format.html { redirect_to @contact, notice: "L'adresse a bien été mise a jour." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @livraison.destroy
    respond_to do |format|
      format.html { redirect_to @livraison.contact, notice: "L'adresse de livraison #{@livraison.adresse} a bien été supprimée" }
    end
  end

  private
    def set_contact
      if params[:contact_id]
        @contact = Contact.find(params[:contact_id])
      elsif params[:id]
        @contact = Contact.find(params[:id])
      end
    end

    def set_livraison
      @livraison = Livraison.find(params[:id])
    end

    def livraison_params
      params.require(:livraison).permit(:adresse, :complementadresse, :cp, :ville, :pays, :initiales, :contact_id)
    end
end
