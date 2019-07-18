Haunt.destroy_all

User.create(email: "test@example.com", password: "password", password_confirmation: "password")
User.create(email: "test@test.com", password: "password", password_confirmation: "password")
User.create(email: "test@sample.com", password: "password", password_confirmation: "password")
 
Haunt.create!(name: "The Stanley Hotel",
              city: "Estes Park",
              state: "CO",
              description: "One night in this hotel inspired Stephen King’s best-selling novel turned horror film, The Shining."
)

Haunt.create!(name: "Winchester Mystery House",
              city: "San Jose",
              state: "CA",
              description: "The Winchester Mystery House is a mansion that was once the personal residence of Sarah Winchester, the widow of firearm magnate William Wirt Winchester."
)

Haunt.create!(name: "Haunted Mansion",
              city: "Anaheim",
              state: "CA",
              description: "A dark ride attraction located at Disneyland Park, Magic Kingdom, and Tokyo Disneyland. The attraction, although differing slightly in every location, places riders inside a haunted manor resided by '999 happy haunts'."
)

Comment.create!(user_id: 1, haunt_id: 1, content: "Very spooky place!")
Comment.create!(user_id: 2, haunt_id: 2, content: "My kids love coming here every halloween")
Comment.create!(user_id: 3, haunt_id: 3, content: "We visit Disneyland every year. This is my favorite attraction!")