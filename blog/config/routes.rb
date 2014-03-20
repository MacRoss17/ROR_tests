Blog::Application.routes.draw do
	get "welcome/index"
	#root 'welcome#index'

	resources :posts
	root to: "welcome#index"

	resources :posts do
		resources :comments
	end
end