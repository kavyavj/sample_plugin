SamplePlugin::Engine.routes.draw do
	#root :to => 'team#index'
	get "team/index"
end