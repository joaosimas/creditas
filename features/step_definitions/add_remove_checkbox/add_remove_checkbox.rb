 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)
 Before do
 	include Capybara::DSL
 end

 Dado(/^que eu acesse o site \/dynamic_controls$/) do
 	visit 'https://the-internet.herokuapp.com/dynamic_controls'
 	puts 'abriu site'
 end

 Quando(/^eu clicar no botão "Remove" para tirar o checkbox$/) do
 	click_button 'Remove'
 	expect(page).to have_content('Add')
 	puts 'Checkbox removido'
 end

 E(/^a funcionalidade de adicionar checkbox ficar disponivel$/) do
 	puts 'Botão disponivel'
 end

 Entao(/^clicar em "add" para inserir o checkbox$/) do
 	click_button 'Add'
 	expect(page).to have_content('A checkbox ')
 	puts 'Checkbox inserido'
 end