Dado(/^que eu acesse o endpoint$/) do
end

Quando(/^eu passar os parametros necessários$/) do
  @createbody = {
   "title": 'Tentando aqui',
   "body": 'Estou testando a API',
   "userId": 132
}.to_json

      @create = HTTParty.post($api['post_comentario'],
      :headers => { "Content-Type" => 'application/json' }, :body => @createbody)
end

Então(/^irá me trazer o corpo da request$/) do
  puts @create.body
  puts @create.message
  case @create.code
    when 200
      puts "200"
    when 404
      puts "404"
    when 500...600
      puts "ops #{response.code}"
  end
end