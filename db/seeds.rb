20.times do

board = Board.create(category: Faker::Lorem.word)

password = Faker::Internet.password
user = User.create(username: Faker::Internet.user_name,
                   password: password,
      password_confirmation: password,
                      email: Faker::Internet.safe_email)


link = Link.create(user_id: user.id, board_id: board.id,
                     title: Faker::Lorem.sentence(3),
                      post: Faker::Lorem.paragraph(2))

comment = Comment.create(user_id: user.id, link_id: link.id,
                            body: Faker::Lorem.paragraph(2))

vote = Vote.create(comment_id: comment.id, link_id: link.id, user_id: user.id,
                       number: Faker::Number.number(2))
end
