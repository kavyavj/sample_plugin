class SeedGenerator < Rails::Generators::Base
  def create_initializer_file
  	vendor "seeds.rb" do
	  hickwall = Hickwall.new
		hickwall.hello("Hello World")
		hickwall.save!
	end

  end
end