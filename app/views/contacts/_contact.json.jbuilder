json.extract! contact, :id, :categorie, :nom, :prenom, :adresse, :complementadresse, :cp, :ville, :pays, :raisonsociale, :tel, :mobile, :email, :activite, :url, :siret, :tva, :commentaire, :created_at, :updated_at
json.url contact_url(contact, format: :json)
