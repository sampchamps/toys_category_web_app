# toy end-point
Rails.application.routes.draw do
   get 'toy/list'
   get 'toy/new'
   post 'toy/create'
   patch 'toy/update'
   get 'toy/list'
   get 'toy/show'
   get 'toy/edit'
   get 'toy/delete'
   get 'toy/update'
   get 'toy/show_types'
end
