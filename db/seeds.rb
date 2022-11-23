# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pokemon.destroy_all
User.destroy_all


sasha = User.create!(
  username: "Sasha",
  password: "pokemon",
  email: "sasha@pokemon.com"
)


ondine = User.create!(
  username: "Ondine",
  password: "pokemon",
  email: "ondine@pokemon.com"
)


pierre = User.create!(
  username: "Pierre",
  password: "pokemon",
  email: "pierre@pokemon.com"
)


jessie = User.create!(
  username: "Jessie",
  password: "pokemon",
  email: "jessie@pokemon.com"
)


james = User.create!(
  username: "James",
  password: "pokemon",
  email: "james@pokemon.com"
)


require "open-uri"


file = URI.open("https://www.pokepedia.fr/images/thumb/8/8b/%C3%89voli-RFVF.png/375px-%C3%89voli-RFVF.png")
pokemon = Pokemon.new(
  name: "Évoli",
  typ: "Normal",
  cap1: "Charge",
  cap2: "Mimi-Queue",
  cap3: "Vive-Attaque",
  cap4: "Jet de Sable",
  lvl: 100,
  hp: 251,
  atk: 146,
  def: 136,
  spd: 146,
  user_id: ondine.id
)
pokemon.photo.attach(io: file, filename: "évoli.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/e/ef/Bulbizarre-RFVF.png/375px-Bulbizarre-RFVF.png")
pokemon = Pokemon.new(
  typ: "Plante",
  cap1: "Charge",
  cap2: "Vampigraine",
  cap3: "Fouet Lianes",
  cap4: "Poudre Dodo",
  lvl: 100,
  hp: 231,
  atk: 134,
  def: 134,
  spd: 126,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "bulbizarre.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/6/6c/Chrysacier-RFVF.png/375px-Chrysacier-RFVF.png")
pokemon = Pokemon.new(
  name: "Chrysacier",
  typ: "Insecte",
  cap1: "Armure",
  cap2: "Sécrétion",
  cap3: " - ",
  cap4: " - ",
  lvl: 100,
  hp: 241,
  atk: 76,
  def: 146,
  spd: 96,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "chrysacier.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/1/17/Dracaufeu-RFVF.png/375px-Dracaufeu-RFVF.png")
pokemon = Pokemon.new(
  name: "Dracaufeu",
  typ: "Feu",
  cap1: "Lance-Flamme",
  cap2: "Frappe Atlas",
  cap3: "Vol",
  cap4: "Cru-Aile",
  lvl: 100,
  hp: 297,
  atk: 204,
  def: 192,
  spd: 236,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "dracaufeu.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/4/44/Psykokwak-RFVF.png/375px-Psykokwak-RFVF.png")
pokemon = Pokemon.new(
  name: "Psykokwak",
  typ: "Eau",
  cap1: "Choc Mental",
  cap2: "Pistolet à O",
  cap3: "Amnésie",
  cap4: "Explosion",
  lvl: 100,
  hp: 241,
  atk: 140,
  def: 132,
  spd: 146,
  user_id: ondine.id
)
pokemon.photo.attach(io: file, filename: "psykokwak.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/7/76/Pikachu-DEPS.png/375px-Pikachu-DEPS.png")
pokemon = Pokemon.new(
  name: "Pikachu",
  typ: "Électrik",
  cap1: "Tonnerre",
  cap2: "Vive-Attaque",
  cap3: "Hâte",
  cap4: "Souplesse",
  lvl: 100,
  hp: 211,
  atk: 146,
  def: 116,
  spd: 216,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "pikachu.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/2/24/Onix-RFVF.png/375px-Onix-RFVF.png")
pokemon = Pokemon.new(
  name: "Onix",
  typ: "Roche",
  cap1: "Jet-Pierres",
  cap2: "Étreinte",
  cap3: "Armure",
  cap4: "Souplesse",
  lvl: 100,
  hp: 211,
  atk: 146,
  def: 116,
  spd: 216,
  user_id: pierre.id
)
pokemon.photo.attach(io: file, filename: "onix.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/a/aa/Taupiqueur-RFVF.png/375px-Taupiqueur-RFVF.png")
pokemon = Pokemon.new(
  name: "Taupiqueur",
  typ: "Sol",
  cap1: "Tunnel",
  cap2: "Jet de Sable",
  cap3: "Tranche",
  cap4: "Séisme",
  lvl: 100,
  hp: 161,
  atk: 146,
  def: 86,
  spd: 226,
  user_id: james.id
)
pokemon.photo.attach(io: file, filename: "taupiqueur.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/2/2b/Nosferapti-RFVF.png/375px-Nosferapti-RFVF.png")
pokemon = Pokemon.new(
  name: "Nosferapti",
  typ: "Poison",
  cap1: "Vampirisme",
  cap2: "Ultrason",
  cap3: "Morsure",
  cap4: "Cru-Aile",
  lvl: 100,
  hp: 221,
  atk: 126,
  def: 106,
  spd: 209,
  user_id: pierre.id
)
pokemon.photo.attach(io: file, filename: "nosferapti.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/d/dc/Roucoups-RFVF.png/375px-Roucoups-RFVF.png")
pokemon = Pokemon.new(
  name: "Roucoups",
  typ: "Vol",
  cap1: "Tornade",
  cap2: "Vol",
  cap3: "Cyclone",
  cap4: "Vive-Attaque",
  lvl: 100,
  hp: 267,
  atk: 156,
  def: 146,
  spd: 178,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "roucoups.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/7/75/Machoc-RFVF.png/375px-Machoc-RFVF.png")
pokemon = Pokemon.new(
  name: "Machoc",
  typ: "Combat",
  cap1: "Balayage",
  cap2: "Groz'Yeux",
  cap3: "Puissance",
  cap4: "Poing Karaté",
  lvl: 100,
  hp: 281,
  atk: 196,
  def: 136,
  spd: 95,
  user_id: pierre.id
)
pokemon.photo.attach(io: file, filename: "machoc.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/8/8d/Ectoplasma-RFVF.png/375px-Ectoplasma-RFVF.png")
pokemon = Pokemon.new(
  name: "Ectoplasma",
  typ: "Spectre",
  cap1: "Hypnose",
  cap2: "Léchouille",
  cap3: "Dévorêve",
  cap4: "Ombre Nocturne",
  lvl: 100,
  hp: 261,
  atk: 296,
  def: 167,
  spd: 230,
  user_id: jessie.id
)
pokemon.photo.attach(io: file, filename: "ectoplasma.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/6/68/Alakazam-RFVF.png/375px-Alakazam-RFVF.png")
pokemon = Pokemon.new(
  name: "Alakazam",
  typ: "Psy",
  cap1: "Téléport",
  cap2: "Psyko",
  cap3: "Métronome",
  cap4: "Ultralaser",
  lvl: 100,
  hp: 251,
  atk: 306,
  def: 126,
  spd: 276,
  user_id: james.id
)
pokemon.photo.attach(io: file, filename: "alakazam.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/4/4d/Lokhlass-RFVF.png/375px-Lokhlass-RFVF.png")
pokemon = Pokemon.new(
  name: "Lokhlass",
  typ: "Glace",
  cap1: "Onde Boréale",
  cap2: "Surf",
  cap3: "Laser Glace",
  cap4: "Ultralaser",
  lvl: 100,
  hp: 251,
  atk: 306,
  def: 126,
  spd: 276,
  user_id: sasha.id
)
pokemon.photo.attach(io: file, filename: "lokhlass.png", content_type: "image/png")
pokemon.save


file = URI.open("https://www.pokepedia.fr/images/thumb/8/87/Dracolosse-RFVF.png/375px-Dracolosse-RFVF.png")
pokemon = Pokemon.new(
  name: "Dracolosse",
  typ: "Dragon",
  cap1: "Draco-Rage",
  cap2: "Souplesse",
  cap3: "Poing-Éclair",
  cap4: "Ultralaser",
  lvl: 100,
  hp: 251,
  atk: 306,
  def: 126,
  spd: 276,
  user_id: ondine.id
)
pokemon.photo.attach(io: file, filename: "dracolosse.png", content_type: "image/png")
pokemon.save
