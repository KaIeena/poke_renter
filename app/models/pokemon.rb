class Pokemon < ApplicationRecord
  belongs_to :user

  TYPES = ["Normal", "Vol", "Poison", "Feu", "Electrik", "Roche", "Sol", "Plante", "Eau", "Combat", "Insect", "Spectre", "Psy"]

  POKEMONS = ["Evoli", "Roucoups", "Nosferapti", "Dracaufeu", "Pikachu", "Onix", "Taupiqueur", "Bulbizarre", "Psykokwak", "Machoc", "Chrysacier", "Ectoplasma", "Alakazam", "Tentacool", "Piafabec", "Magmar", "Ratata", "Ronflex", "Rondoudou", "Magneti", "Raichu", "Tortank", "Abo", "Rinocorne", "Tauros", "Sacdenoeuds", "Doduo", "Minidraco", "Draco", "Dracolosse", "Ramoloss", "Flagadoss", "Insecateur", "Ronflex", "Articodin", "Sulfura", "Elector", "Mew", "Mewtwo"]

  CAPACITIES = ["Teleport", "Psyko", "Métronome", "Ultralaser", "Hypnose", "Léchouille", "Dévorêve", "Ombre Nocture", "Balayage", "Groz'Yeux", "Puissance", "Poing Karaté", "Tornade", "Vol", "Cyclone", "Vive-attaque", "Vampirisme", "Ultrason", "Morsure", "Cru-ailes", "Tunnel", "Jet de Sable", "Tranche", "Séisme", "Jet-Pierres", "Étreinte", "Armure", "Souplesse", "Tonnerre", "Hâte", "Choc-mental", "Pistolet à O", "Amnésie", "Explosion", "Secretion", " - ", "Lance-flammes", "Frappe-atlas", "Charge", "Vampigraine", "Fouet de lianes", "Poudre dodo", "Mimi-queue"]

  validates :name, inclusion: { in: POKEMONS }

  validates :typ, presence: true
  validates :typ, inclusion: { in: TYPES }

  validates :hp, :atk, :def, :spd, presence: true
  validates :hp, :atk, :def, :spd, numericality: { only_integer: true }

  validates :cap1, presence: true
  validates :cap1, :cap2, :cap3, :cap4, inclusion: { in: CAPACITIES }
end
