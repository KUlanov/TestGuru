# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin users = User.create([{ first_name: 'Koty', email: 'GKondor@mail.ru'}])
categories= Category.create!([
  { title: 'Frontend' }, 
  { title: 'Backend'}, 
  { title: 'Movie Development'}
]) 
tests = Test.create!([
  { title: 'HTML', user_id: users[0].id, level: 1, category_id: categories[2].id},
  { title: 'Java', user_id: users[0].id, level: 3, category_id: categories[1].id},
  { title: 'GO', user_id: users[0].id, level: 3, category_id: categories[0].id},
  { title: 'Ruby', user_id: users[0].id, level: 2, category_id: categories[0].id},
  { title: 'C#', user_id: users[0].id, level: 2, category_id: categories[1].id}
])
=end

questions = Question.create!([
  { body: 'Различие между селекторами идентификаторов и классов ... ', test_id: test[1].id},
  { body: 'В чем разница между " == " и " === "?', test_id: test[2].id},
  { body: 'Чего нет в языке Go?', test_id: test[3].id},
  { body: 'Назовите четыре типа переменных, доступных в классе Ruby.', test_id: test[4].id},
  { body: 'Что такое Assembly в C#?', test_id: test[5].id}
])
answers = Answer.create!([
  { body: '1', correct: true, question_id: questions[0].id },
  { body: '2', correct: true, question_id: questions[1].id },
  { body: '2', correct: true, question_id: questions[2].id },
  { body: '3', correct: true, question_id: questions[2].id },
  { body: '4', correct: true, question_id: questions[3].id },
  { body: '5', correct: true, question_id: questions[4].id }
])

tests_users = TestsUser.create!([
  { user_id: users[0].id, test_id: tests[1].id, status: true },
  { user_id: users[0].id, test_id: tests[3].id, status: false},
  { user_id: users[0].id, test_id: tests[4].id, status: false}
])