# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 # yaml_hash = YAML.load(File.read('db/seeds.yml'))

 # rails_arr_of_hashes = yaml_hash['projects'].map{|p| {title: p['title'], todos_attributes: p['todos'] }}

 # Project.create(rails_arr_of_hashes)

 params = { project: { title: "Семья",
                       todos_attributes: [{project_id: 1, text: "Купить молоко", isCompleted: false }]}}

 Project.create(params[:project])
