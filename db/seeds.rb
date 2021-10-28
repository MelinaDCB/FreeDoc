# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Specialty.destroy_all

clermont = City.create(name: "Clermont-Ferrand")
paris = City.create(name: "Paris")

doc1 = Doctor.create(first_name: "Meredith", last_name: "Grey", specialty: "general surgery", city: paris)
doc2 = Doctor.create(first_name: "Alex", last_name: "Karev", specialty: "cardiac surgery", city: clermont)

pat1 = Patient.create(first_name: "Bob", last_name: "Placeholder", city: clermont)
pat2 = Patient.create(first_name: "John", last_name: "Placeholder", city: paris)

apt1 = Appointment.create(datetime: 2018-09-23T12:30:00+00:00, city: clermont)
apt2 = Appointment.create(datetime: 2019-05-23T12:30:00+00:00, city: paris)