# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_16_175431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commandes", force: :cascade do |t|
    t.string "etat"
    t.bigint "contact_id"
    t.string "marque"
    t.string "modele"
    t.string "finition"
    t.string "categorie"
    t.integer "anneemin"
    t.integer "anneemax"
    t.integer "km"
    t.string "transmission"
    t.string "carburant"
    t.string "puissance"
    t.string "co2"
    t.string "couleur"
    t.text "options"
    t.text "commentaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_commandes_on_contact_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "categorie"
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.string "complementadresse"
    t.integer "cp"
    t.string "ville"
    t.string "pays"
    t.string "raisonsociale"
    t.string "tel"
    t.string "mobile"
    t.string "email"
    t.string "activite"
    t.string "url"
    t.string "siret"
    t.string "tva"
    t.text "commentaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livraisons", force: :cascade do |t|
    t.string "adresse"
    t.string "complementadresse"
    t.integer "cp"
    t.string "ville"
    t.string "pays"
    t.string "initiales"
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_livraisons_on_contact_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicules", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "contact_id"
    t.bigint "commande_id"
    t.string "marque"
    t.string "modele"
    t.string "finition"
    t.string "categorie"
    t.string "boite"
    t.integer "cylindree"
    t.integer "cv"
    t.integer "cvfiscaux"
    t.string "couleur"
    t.string "chassis"
    t.string "carburant"
    t.string "immat"
    t.integer "km"
    t.string "co2"
    t.float "prixht"
    t.text "equipement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commande_id"], name: "index_vehicules_on_commande_id"
    t.index ["contact_id"], name: "index_vehicules_on_contact_id"
    t.index ["user_id"], name: "index_vehicules_on_user_id"
  end

  add_foreign_key "commandes", "contacts"
  add_foreign_key "livraisons", "contacts"
  add_foreign_key "vehicules", "commandes"
  add_foreign_key "vehicules", "contacts"
  add_foreign_key "vehicules", "users"
end
