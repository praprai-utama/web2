Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :patterns do
    resources :patterns, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :patterns, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :patterns, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
