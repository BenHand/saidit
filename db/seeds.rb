20.times do

board = Board.create(category: Faker::Lorem.word)


user = User.create(username: Faker::Internet.user_name,
            password_digest: Faker::Internet.password,
                      email: Faker::Internet.safe_email)


link = Link.create(user_id: user.id, board_id: board.id,
                     title: Faker::Lorem.sentence(3),
                      post: Faker::Lorem.paragraph(2))

comment = Comment.create(user_id: user.id, link_id: link.id,
                            body: Faker::Lorem.paragraph(2))

vote = Vote.create(comment_id: comment.id, link_id: link.id, user_id: user.id,
                       number: Faker::Number.number(2))
end
