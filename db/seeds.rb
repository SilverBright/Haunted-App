Haunt.destroy_all

User.create(email: "test@example.com", password: "password", password_confirmation: "password")
User.create(email: "test@test.com", password: "password", password_confirmation: "password")
User.create(email: "test@sample.com", password: "password", password_confirmation: "password")
 
Haunt.create!(name: "The Stanley Hotel",
              city: "Estes Park",
              state: "CO",
              description: "One night in this hotel nestled in Colorado’s mountain wilderness inspired Stephen King’s best-selling novel turned horror film, The Shining. Massachusetts couple F.O. and Flora Stanley opened the isolated resort in 1909—and reportedly never left."
)

Haunt.create!(name: "Winchester Mystery House",
              city: "San Jose",
              state: "CA",
              description: "The Winchester Mystery House is a mansion in San Jose, California, that was once the personal residence of Sarah Winchester, the widow of firearm magnate William Wirt Winchester."
)

Haunt.create!(name: "Pittock Mansion",
              city: "Portland",
              state: "OR",
              description: "A 22-room French chateau in the hills overlooking downtown Portland built in 1922, and was the site of only two deaths and one political scandal, but since being opened to the public in 1965, it's been host to a number of ghost sightings."
)

Haunt.create!(name: "Haunted Mansion",
              city: "Anaheim",
              state: "CA",
              description: "Is a dark ride attraction located at Disneyland Park (Disneyland Resort), Magic Kingdom, and Tokyo Disneyland. The attraction, although differing slightly in every location, places riders inside a haunted manor resided in by '999 happy haunts'."
)

Comment.create!(user_id: 1, haunt_id: 1, content: "Very spooky place!")
Comment.create!(user_id: 2, haunt_id: 2, content: "My kids love coming here every halloween")
Comment.create!(user_id: 3, haunt_id: 3, content: "Beautiful location, but not very scary!")
Comment.create!(user_id: 1, haunt_id: 4, content: "We visit Disneyland every year. This is my favorite attraction!")
Comment.create!(user_id: 2, haunt_id: 1, content: "I'm a big fan of the Shining movie. It's really neat to see the hotel in person.")
Comment.create!(user_id: 1, haunt_id: 4, content: "Love the grim grinning ghosts.")
Comment.create!(user_id: 1, haunt_id: 2, content: "LOVED the midnight flashlight tour!")
Comment.create!(user_id: 2, haunt_id: 3, content: "Wow, what a neat place!!")