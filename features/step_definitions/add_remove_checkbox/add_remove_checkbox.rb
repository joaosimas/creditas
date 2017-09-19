 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)
 Before do
 	include Capybara::DSL
 end

 Dado(/^que eu acesse o site da Dynamic Controls$/) do
 	visit 'https://the-internet.herokuapp.com/dynamic_controls'
 end

 Quando(/^eu clicar no botão remove$/) do
 	click_button 'Remove'
 end
 
 E(/^o botão Remove for removido$/) do
 	expect(page).to have_content('Remove')
 	puts 'Foi removido'
 end

 Então(/^habilitar o botão para adicionar$/) do
 	expect(page).to have_content('Add')
 	puts 'Botão disponivel'
 end

