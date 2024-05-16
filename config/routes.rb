# config/routes.rb

Rails.application.routes.draw do
  resources :tasks do
    member do
      patch 'complete' # Rota para marcar uma tarefa como concluída
    end
    collection do
      get 'completed' # Rota para listar tarefas concluídas
    end
  end
end
