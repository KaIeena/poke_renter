class Pokemon < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  NATURES = ["Assuré", "Bizarre", "Brave", "Calme", "Discret", "Docile", "Doux", "Foufou", "Gentil", "Hardi", "Jovial", "Lâche", "Malin", "Malpoli", "Mauvais", "Modeste", "Naïf", "Pressé", "Prudent", "Pudique", "Relax", "Rigide", "Sérieux", "Solo", "Timide"]

  TYPES = ["Normal", "Plante", "Feu", "Eau", "Électrik", "Vol", "Insecte", "Roche", "Sol", "Psy", "Poison", "Spectre", "Combat", "Glace", "Dragon"]

  POKEMONS = ["Bulbizarre", "Herbizarre", "Florizarre", "Salamèche", "Reptincel", "Dracaufeu", "Carapuce", "Carabaffe", "Tortank", "Chenipan", "Chrysacier", "Papilusion", "Aspicot", "Coconfort", "Dardargnan", "Roucool", "Roucoups", "Roucarnage", "Rattata", "Rattatac", "Piafabec", "Rapasdepic", "Abo", "Arbok", "Pikachu", "Raichu", "Sabelette", "Sablaireau", "Nidoran F", "Nidorina", "Nidoqueen", "Nidoran M", "Nidorino", "Nidoking", "Mélofée", "Mélodelfe", "Goupix", "Feunard", "Rondoudou", "Grodoudou", "Nosferapti", "Nosferalto", "Mystherbe", "Ortide", "Rafflesia", "Paras", "Parasect", "Mimitoss", "Aéromite", "Taupiqueur", "Triopikeur", "Miaouss", "Persian", "Psykokwak", "Akwakwak", "Férosinge", "Colossinge", "Caninos", "Arcanin", "Ptitard", "Têtarte", "Tartard", "Abra", "Kadabra", "Alakazam", "Machoc", "Machopeur", "Mackogneur", "Chétiflor", "Boustiflor", "Empiflor", "Tentacool", "Tentacruel", "Racaillou", "Gravalanch", "Grolem", "Ponyta", "Galopa", "Ramoloss", "Flagadoss", "Magnéti", "Magnéton", "Canarticho", "Doduo", "Dodrio", "Otaria", "Lamantine", "Tadmorv", "Grotadmorv", "Kokiyas", "Crustabri", "Fantominus", "Spectrum", "Ectoplasma", "Onix", "Soporifik", "Hypnomade", "Krabby", "Krabboss", "Voltorbe", "Électrode", "Noeunoeuf", "Noadkoko", "Osselait", "Ossatueur", "Kicklee", "Tygnon", "Excelangue", "Smogo", "Smogogo", "Rhinocorne", "Rhinoféros", "Leveinard", "Saquedeneu", "Kangourex", "Hypotrempe", "Hypocéan", "Poissirène", "Poissoroy", "Stari", "Staross", "M. Mime", "Insécateur", "Lippoutou", "Élektek", "Magmar", "Scarabrute", "Tauros", "Magicarpe", "Léviator", "Lokhlass", "Métamorph", "Évoli", "Aquali", "volatli", "Pyroli", "Prygon", "Amonita", "Amonistar", "Kabuto", "Kabutops", "Ptéra", "Ronflex", "Artikodin", "Électhor", "Sulfura", "Minidraco", "Draco", "Dracolosse", "Mewtwo", "Mew" ]

  CAPACITIES = [ " - ", "Acide", "Amnésie", "Armure", "Balayage", "Bélier", "Berceuse", "Blizzard", "Bulles d'O", "Brouillard", "Cascade", "Charge", "Choc Mental", "Combo-Griffe", "Copie", "Coud'Krâne", "Coupe", "Cru-Aile", "Cyclone", "Damoclès", "Dard Nuée", "Dard-Venin", "Déflagration", "Dévorêve", "Détritus", "Double-Dard", "Double-Pied", "Draco-Rage", "Éboulement", "Écume", "Empal'Korne", "Entrave", "Étreinte", "Explosion", "Fatal-Foudre", "Flammèche", "Fouet Lianes", "Frappe Atlas", "Groz'Yeux", "Hâte", "Hydrocanon", "Hypnose", "Jet-Pierres", "Jet de Sable", "Koud'Korne", "Lance-Flamme", "Lance-Soleil", "Laser Glace", "Léchouille", "Ligotage", "Massd'Os", "Météores", "Métronome", "Mimi-Queue", "Morphing", "Morsure", "Ombre Nocturne", "Onde Boréale", "Onde Folie", "Osmerang", "Para-Spore", "Picpic", "Pince-Masse", "Pistolet à O", "Plaquage", "Poing-Éclair", "Poing-Glace", "Poing de Feu", "Poing Karaté", "Poudre Dodo", "Poudre Toxic", "Psyko", "Puissance", "Purédpois", "Rafale Psy", "Repos", "Riposte", "Rugissement", "Sacrifice", "Sécrétion", "Séisme", "Soin", "Souplesse", "Surf", "Téléport", "Ténèbres", "Tonnerre", "Torgnoles", "Tornade", "Tranche", "Tranch'Herbe", "Trempette", "Tunnel", "Ultimapoing", "Ultimawashi", "Ultralaser", "Ultrason", "Vampigraine", "Vampirisme", "Vive-Attaque", "Vol"]

  validates :name, inclusion: { in: POKEMONS }
  validates :nature, inclusion: { in: NATURES }

  validates :typ, presence: true
  validates :typ, inclusion: { in: TYPES }

  validates :lvl, :hp, :atk, :def, :spd, presence: true
  validates :lvl, :hp, :atk, :def, :spd, numericality: { only_integer: true }

  validates :cap1, presence: true
  validates :cap1, :cap2, :cap3, :cap4, inclusion: { in: CAPACITIES }
end
