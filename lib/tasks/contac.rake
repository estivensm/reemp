namespace :recu do
  desc "Sends the most voted products created yesterday"
  task crear: :environment do 

  	Contact.create(name: "Óscar Alonso mesa manjarres", email: "manjarres1982@gmail.com", city: "", specialty_name: "Ninguna", profession_name: "Auxiliar administrativo", instagram: "")
  	Contact.create(name: "Oscar Eluid Mateus peña", email: "jomasstones@gmail.com", city: "", specialty_name: "Mobiliario", profession_name: "Arquitecto", instagram: "")
  	Contact.create(name: "José Luis Bernal Rocha", email: "josecenturion_14@hotmail.com", city: "Bogotá", specialty_name: "Web, ilustración y publicidad", profession_name: "Diseñador gráfico", instagram: "@")
   	Contact.create(name: "Roy Villasana Urbina", email: "royvillasana@gmail.com", city: "Lampa", specialty_name: "Integral / Web", profession_name: "Diseñador gráfico", instagram: "@royvillasana.cl")
  	Contact.create(name: "Ernesto Solano León", email: "elsextoelemento00@gmail.com", city: "Medellín", specialty_name: "Investigación", profession_name: "Psicólogo", instagram: "@ernestomusicgt")
  	Contact.create(name: "Germán Pérez", email: "germanprz1996@gmail.com", city: "Medellín", specialty_name: "Supernumerario administrativo	", profession_name: "Tecnologo en gestión administrativo", instagram: "@germanprz1")

  	Contact.create(name: "carlos alberto posada mejia", email: "vcorrea3@eafit.edu.co", city: "Medellín", specialty_name: "transmedia", profession_name: "comunicacion transmedia", instagram: "@")
  	Contact.create(name: "Johany Castellanos", email: "jca.johany@gmail.com", city: "Medellín", specialty_name: "Proyectos", profession_name: "Geologo", instagram: "@")
  	Contact.create(name: "Manuel Alejandro Sánchez Mayor", email: "manuelsanz19@hotmail.com", city: "Bogotá", specialty_name: "Creador de Contenidos para redes Sociales - Fotógrafo", profession_name: "Comunity mánager", instagram: "@alejandrosaz19")
  	Contact.create(name: "Jorge Guevara", email: "jorge.agb@gmail.com", city: "", specialty_name: "Gerencia, marketing y TI", profession_name: "Administrador en finanzas", instagram: "@")
  	Contact.create(name: "Gerardo Riarte", email: "gerardoriarte@gmail.com", city: "", specialty_name: "Ux/ UI", profession_name: "Diseñador", instagram: "@")
  	Contact.create(name: "Jaime Enrique Peña teran", email: "jaimepteran@gmail.com", city: "Barranquilla", specialty_name: "Diseño arquitectónico y construcción", profession_name: "Arquitecto", instagram: "@")

  	Contact.create(name: "Mayra Alejandra Caicedo", email: "mayralejandra2785@gmail.com", city: "Cali", category_id: "", specialty_name: "Consultoría Empresarial", profession_name: "Administración de Empresas", instagram: "@")
  	Contact.create(name: "Daniel Fernando Gomez", email: "daniel_gomezgu@hotmail.com", city: "Medellín", category_id: "", specialty_name: "Branding, Animación, video", profession_name: "Diseñador Gráfico", instagram: "@danielgomezgu")
  	Contact.create(name: "Diego torres", email: "diegotorres@loudroom.co", city: "Bogotá", category_id: "", specialty_name: "Video marketing", profession_name: "Medios audiovisuales", instagram: "@datorresmo")
  	Contact.create(name: "Pedro Diaz", email: "pedrodiazs.211@gmail.com", city: "", category_id: "", specialty_name: "Analisis de aguas", profession_name: "Ingeniero Químico", instagram: "@")
  	Contact.create(name: "Brayan contreras", email: "brayansk828@gmail.com", city: "Bogotá", category_id: "", specialty_name: "Clinica y organizacional", profession_name: "Psicólogo", instagram: "@brayan.contreras 2")
  	Contact.create(name: "Alex", email: "publica2013@yahoo.com", city: "Cali", category_id: "", specialty_name: "Finanzas", profession_name: "Magíster en finanzas", instagram: "@")

  	Contact.create(name: "Jasset Manzur Caro", email: "jassetmanzur@gmail.com", city: "Barranquilla", category_id: "", specialty_name: "Diseño, Patrimonio y Planeacion", profession_name: "Arquitecto", instagram: "@arqconcepts")
  	Contact.create(name: "Ana Karina Marin", email: "ana_kari123@hotmail.com", city: "Montería", category_id: "", specialty_name: "N/A", profession_name: "Contaduría pública", instagram: "@")

  	Admin.create(name: "Alejandro", last_name: "Velez Mendez", email: "alejovelez10@gmail.com", password: "alejo0906", password_confirmation: "alejo0906")
  	Admin.create(name: "Estiven", last_name: "Salazar", email: "salazar-moncada-estiven@hotmail.com", password: "estiven12", password_confirmation: "estiven12")

  	puts "se creo con exito!" 

  end
end