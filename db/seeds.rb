# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# todo_api/db/seeds.rb

# Criar algumas tarefas de exemplo
Task.create(title: 'Comprar mantimentos', description: 'Ir ao supermercado e comprar itens essenciais', completed: false)
Task.create(title: 'Estudar Ruby on Rails', description: 'Aprender a desenvolver aplicativos web com Ruby on Rails', completed: false)
Task.create(title: 'Fazer exercícios físicos', description: 'Realizar atividades físicas diárias', completed: true)
