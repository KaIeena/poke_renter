# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# User.create!(
#   username: "Sasha",
#   password: "password2",
#   email: "sasha@pokemon.com"
# )

# User.create!(
#   username: "James",
#   password: "password3",
#   email: "james@pokemon.com"
# )

Pokemon.destroy_all

Pokemon.create!(
  name: "Evoli",
  typ: "Normal",
  cap1: "Charge",
  cap2: "Mimi-queue",
  cap3: "Vive-attaque",
  cap4: "Jet de sable",
  hp: 251,
  atk: 146,
  def: 136,
  spd: 146,
  user_id: 1
)

Pokemon.create!(
  name: "Bulbizarre",
  typ: "Plante",
  cap1: "Charge",
  cap2: "Vampigraine",
  cap3: "Fouet lianes",
  cap4: "Poudre dodo",
  hp: 231,
  atk: 134,
  def: 134,
  spd: 126,
  user_id: 1
)

Pokemon.create!(
  name: "Chrysacier",
  typ: "Insect",
  cap1: "Armure",
  cap2: "Secretion",
  cap3: " - ",
  cap4: " - ",
  hp: 241,
  atk: 76,
  def: 146,
  spd: 96,
  user_id: 1
)

Pokemon.create!(
  name: "Dracaufeu",
  typ: "Feu",
  cap1: "Lance-flammes",
  cap2: "Frappe-atlas",
  cap3: "Vol",
  cap4: "Cru-ailes",
  hp: 297,
  atk: 204,
  def: 192,
  spd: 236,
  user_id: 1
)

Pokemon.create!(
  name: "Psykokwak",
  typ: "Eau",
  cap1: "Choc-mental",
  cap2: "Pistolet à O",
  cap3: "Amnésie",
  cap4: "Explosion",
  hp: 241,
  atk: 140,
  def: 132,
  spd: 146,
  user_id: 2
)

Pokemon.create!(
  name: "Pikachu",
  typ: "Electrik",
  cap1: "Tonnerre",
  cap2: "Vive-attaque",
  cap3: "Hâte",
  cap4: "Souplesse",
  hp: 211,
  atk: 146,
  def: 116,
  spd: 216,
  user_id: 1
)

Pokemon.create!(
  name: "Onix",
  typ: "Roche",
  cap1: "Jet-Pierres",
  cap2: "Étreinte",
  cap3: "Armure",
  cap4: "Souplesse",
  hp: 211,
  atk: 146,
  def: 116,
  spd: 216,
  user_id: 2
)

Pokemon.create!(
  name: "Taupiqueur",
  typ: "Sol",
  cap1: "Tunnel",
  cap2: "Jet de sable",
  cap3: "Tranche",
  cap4: "Séisme",
  hp: 161,
  atk: 146,
  def: 86,
  spd: 226,
  user_id: 2
)

Pokemon.create!(
  name: "Nosferapti",
  typ: "Poison",
  cap1: "Vampirisme",
  cap2: "Ultrason",
  cap3: "Morsure",
  cap4: "Cru-ailes",
  hp: 221,
  atk: 126,
  def: 106,
  spd: 209,
  user_id: 3
)

Pokemon.create!(
  name: "Roucoups",
  typ: "Vol",
  cap1: "Tornade",
  cap2: "Vol",
  cap3: "Cyclone",
  cap4: "Vive-attaque",
  hp: 267,
  atk: 156,
  def: 146,
  spd: 178,
  user_id: 3
)

Pokemon.create!(
  name: "Machoc",
  typ: "Combat",
  cap1: "Balayage",
  cap2: "Groz'Yeux",
  cap3: "Puissance",
  cap4: "Poing Karaté",
  hp: 281,
  atk: 196,
  def: 136,
  spd: 95,
  user_id: 3
)

Pokemon.create!(
  name: "Ectoplasma",
  typ: "Spectre",
  cap1: "Hypnose",
  cap2: "Léchouille",
  cap3: "Dévorêve",
  cap4: "Ombre Nocture",
  hp: 261,
  atk: 296,
  def: 167,
  spd: 230,
  user_id: 3
)

Pokemon.create!(
  name: "Alakazam",
  typ: "Psy",
  cap1: "Teleport",
  cap2: "Psyko",
  cap3: "Métronome",
  cap4: "Ultralaser",
  hp: 251,
  atk: 306,
  def: 126,
  spd: 276,
  user_id: 3
)