class Pokemon < ApplicationRecord
  belongs_to :user

  TYPES = ["Normal", "Vol", "Poison", "Feu", "Electrik", "Roche", "Sol", "Plante", "Eau", "Combat", "Insect", "Spectre", "Psy"]

  POKEMONS = ["Evoli", "Roucoups", "Nosferapti", "Dracaufeu", "Pikachu", "Onix", "Taupiqueur", "Bulbizarre", "Psykokwak", "Machoc", "Chrysacier", "Ectoplasma", "Alakazam", "Tentacool", "Piafabec", "Magmar", "Ratata", "Ronflex", "Rondoudou", "Magneti", "Raichu", "Tortank", "Abo", "Rinocorne", "Tauros", "Sacdenoeuds", "Doduo", "Minidraco", "Draco", "Dracolosse", "Ramoloss", "Flagadoss", "Insecateur", "Ronflex", "Articodin", "Sulfura", "Elector", "Mew", "Mewtwo"]

  CAPACITIES = [ " - ", "Acide", "Amnésie", "Armure", "Balayage", "Bélier", "Berceuse", "Blizzard", "Bulles d'O", "Brouillard", "Cascade", "Charge", "Choc Mental", "Combo-Griffe", "Copie", "Coud'Krâne", "Coupe", "Cru-Aile", "Cyclone", "Damoclès", "Dard Nuée", "Dard-Venin", "Déflagration", "Dévorêve", "Détritus", "Double-Dard", "Double-Pied", "Draco-Rage", "Éboulement", "Écume", "Empal'Korne", "Entrave", "Étreinte", "Explosion", "Fatal-Foudre", "Flammèche", "Fouet Lianes", "Frappe Atlas", "Groz'Yeux", "Hâte", "Hydrocanon", "Hypnose", "Jet-Pierres", "Jet de Sable", "Koud'Korne", "Lance-Flamme", "Lance-Soleil", "Laser Glace", "Léchouille", "Ligotage", "Massd'Os", "Météores", "Métronome", "Mimi-Queue", "Morphing", "Morsure", "Ombre Nocturne", "Onde Boréale", "Onde Folie", "Osmerang", "Para-Spore", "Picpic", "Pince-Masse", "Pistolet à O", "Plaquage", "Poing-Eclair", "Poing-Glace", "Poing de Feu", "Poing Karaté", "Poudre Dodo", "Poudre Toxic", "Psyko", "Puissance", "Purédpois", "Rafale Psy", "Repos", "Riposte", "Rugissement", "Sacrifice", "Sécrétion", "Séisme", "Soin", "Souplesse", "Surf", "Téléport", "Ténèbres", "Tonnerre", "Torgnoles", "Tornade", "Tranche", "Tranch'Herbe", "Trempette", "Tunnel", "Ultimapoing", "Ultimawashi", "Ultralaser", "Ultrason", "Vampigraine", "Vampirisme", "Vive-Attaque", "Vol"]

  validates :name, inclusion: { in: POKEMONS }

  validates :typ, presence: true
  validates :typ, inclusion: { in: TYPES }

  validates :hp, :atk, :def, :spd, presence: true
  validates :hp, :atk, :def, :spd, numericality: { only_integer: true }

  validates :cap1, presence: true
  validates :cap1, :cap2, :cap3, :cap4, inclusion: { in: CAPACITIES }
end
