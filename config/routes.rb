Rails.application.routes.draw do
   get 'toys/list'
   get 'toys/new'
   post 'toys/create'
   patch 'toys/update'
   get 'toys/list'
   get 'toys/show'
   get 'toys/edit'
   get 'toys/delete'
   get 'toys/update'
   get 'toys/show_categories'
end
