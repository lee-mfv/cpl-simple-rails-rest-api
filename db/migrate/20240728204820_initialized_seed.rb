class InitializedSeed < ActiveRecord::Migration[7.0]
  def up
    User.create!(username: "user1", password: "pwduser1")
    User.create!(username: "user2", password: "pwduser2")

    # . . .
    2.times do |i|
      Book.create!(book_name: "Testing Book #{i + 1}", likes: i + 1, user_id: i + 1)
    end

    # . . .
    Book.create!(book_name: "Testing Book #{3}", likes: 3, user_id: 2)

    # . . .
    User.create!(username: "admin1", password: "pwdadmin1", admin: true)    
  end
end
