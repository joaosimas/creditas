 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)
 Before do
 	include Capybara::DSL
 end

 Dado(/^que eu acesse o site \/windows$/) do
 	visit 'https://the-internet.herokuapp.com/windows'
 	expect(page).to have_content('Opening a new window')
 	puts 'abriu site'
 end

 Quando(/^eu clicar no link click here$/) do
 	click_link 'Click Here'
 	puts 'abriu nova aba'
 end

 Entao(/^abrir uma nova aba com o nome de New Window$/) do
 end