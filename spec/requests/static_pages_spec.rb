require 'spec_helper'

describe "StaticPages" do

  describe "Home Page - StaticPages#home" do
    it "deve ter o conteúdo 'Início'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    	visit '/static_pages/home'
    	expect(page).to have_content('Início')
    end

    it "deve ter o Título ControleDeEstoque (somente sem o \"|\")" do
    	visit static_pages_home_path
    	# Capybara.exact = true
    	# expect(page).to have_selector("title", :text => 'ControleDeEstoque')
    	page.should have_selector("title", :exact => 'ControleDeEstoque', :visible => false)
    end
  end
end
