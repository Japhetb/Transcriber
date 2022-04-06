# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Transciber.Repo.insert!(%Transciber.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Transciber.Documents.File
alias Transciber.Repo

Repo.insert! %File{file_title: "Beauty and The Beast", uploader: "Japhet Brandon", file: "Sunday
Some children really dont think. Our neighbours boy ran in front of a
car to get his ball. The car almost hit him. I saved him though.
Remember, always look and listen.
Monday
Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car drivers
cant see you very well, just like these two I had to take home. Luckily I never go out without my
reflective jacket and collar. Remember, BE SEEN!
Tuesday
People can get very angry when driving, usually for silly reasons. One driver started shouting at Mum
today when she stopped to let some children cross the road. I soon made him stop." }

Repo.insert! %File{file_title: "Computer Science", uploader: "Peter Mwovi", file: "One thing makes me really mad. Grrrrrr. People walking on a dangerous road when they can walk on
the safe pavement. I saw two girls doing that today but I soon made them change their minds.
Thursday
Seat belts can save your life! I make sure everyone in our car wears their seat belt. If they forget, I
soon remind them. Even I’ve got one.
Friday
I like Fridays. The roads are quieter. But you still have to be careful. I caught Dad talking on his mobile
phone while driving. I soon stopped him though. Don’t worry, he got his phone back.
Saturday
Today Mum took me for a walk. One car was parked in a very dangerous place. It was right on the
corner of the street. Don’t worry though. I left him a message!"}  

