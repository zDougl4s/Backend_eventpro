array = 
[
  {
    "id": 1,
    "name": "BURNING MAN",
    "location": "BLACK ROCK DESERT, NEVADA",
    "price": 150,
    "bio": "It’s part Mad Max, part Survivor, and part Comic-Con (see: CRAZY costumes & festival clothing), with an emphasis on experimental creativity, cooperation, and civic responsibility",
    "img_url": "https://greenglobaltravel.com/wp-content/uploads/2018/01/Best-Cultural-Festivals-Burning-Man-610x920.jpg",
    "buy_entry": 300,
    "booked": 0
  }
  # {   
  #     "id": 2,
  #     "name": "CARNIVAL"
  #     "location": "RIO DE JANEIRO",
  #     "price": 100,
  #     "bio": "Arguably the biggest festival in the world (not to mention its wildest party), Brazil’s Carnival is widely considered “the greatest show on Earth.” The event attracts nearly 5 million people each year, with a half-million or so being visitors traveling to see the spectacle.",
  #     "img_url": "https://greenglobaltravel.com/wp-content/uploads/2018/01/Best-Festivals-Carnival-582x1024.jpg",
  #     "buy_entry": 1000,
  #     "booked": 0
  
  ]


array.each do |obj|
Event.find_or_create_by(
name: obj[:name],
location: obj[:location],
price: obj[:price], 
bio: obj[:bio],
img_url: obj[:img_url],
buy_entry: obj[:buy_entry],
booked: obj[:booked]
)
end 