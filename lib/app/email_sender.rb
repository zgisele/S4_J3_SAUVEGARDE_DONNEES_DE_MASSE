d ={
    "a" => 1,
    "b" => 2
}
#File.open("db/emails.json","w") do |f|
 #   f.write (d.to_json)
#end
File.open("db/emails.json","w") do |f|
    f.write (JSON.pretty_generate(d))
end

json= File.read('db/emails.json')
objet=JSON.parse(json)

pp objet
