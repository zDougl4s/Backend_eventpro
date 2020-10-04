array = 
[
  {
    "id": 1,
    "name": "BURNING MAN",
    "location": "BLACK ROCK DESERT, NEVADA",
    "price": 140,
    "bio": "It’s part Mad Max, part Survivor, and part Comic-Con (see: CRAZY costumes & festival clothing), with an emphasis on experimental creativity, cooperation, and civic responsibility",
    "img_url": "https://greenglobaltravel.com/wp-content/uploads/2018/01/Best-Cultural-Festivals-Burning-Man-610x920.jpg",
    "buy_entry": 300,
    "booked": 0
  },
  {   
      "id": 2,
      "name": "CARNIVAL",
      "location": "RIO DE JANEIRO",
      "price": 100,
      "bio": "Arguably the biggest festival in the world (not to mention its wildest party), Brazil’s Carnival is widely considered “the greatest show on Earth.” The event attracts nearly 5 million people each year, with a half-million or so being visitors traveling to see the spectacle.",
      "img_url": "https://i.insider.com/5e56adc5fee23d1375659434?width=1100&format=jpeg&auto=webp",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 3,
      "name": "WOMAD",
      "location": "WILTSHIRE, ENGLAND",
      "price": 75,
      "bio": "One of my favorite music festivals I’ve attended, WOMAD (World Of Music, Arts & Dance) was founded in 1980 by Peter Gabriel and a team that included Artistic Director Thomas Brooman and influential concert promoter Martin Elbourne (who also books the Glastonbury Festival.",
      "img_url": "https://greenglobaltravel.com/wp-content/uploads/2012/03/Womad-Festival-768x512.jpg",
      "buy_entry": 500,
      "booked": 0
  },
  {   
      "id": 4,
      "name": "WORLD SACRED SPIRIT FESTIVAL",
      "location": "JODHPUR, INDIA)",
      "price": 45,
      "bio": "At the base of this extraordinary monument is where you’ll find the World Sacred Spirit Festival, which takes place over three days in mid-February. Founded in 2007, the event was formerly known as the World Sufi Festival.",
      "img_url": "https://cdn.businesstraveller.com/wp-content/uploads/2019/01/World-Sacred-Spirit-festival-1.jpg",
      "buy_entry": 2000,
      "booked": 0
  },
  {   
      "id": 5,
      "name": "Field day",
      "location": "London, UK",
      "price": 70,
      "bio": "Expanded again to a two-day event (after a year as a one-dayer), Field Day continues to be cooler than a cucumber with a hipster beard and an ironic tattoo. It’s a great place to get day-drunk on craft beer after lining your stomach with the latest vegan food in the super-chill Village Green area. But Field Day has serious muso cred too; it's carefully curated to include edgy guitar music, shoegaze, alternative R&B, smart rap, revered DJs and everything else that’s in vogue. It also boasts one of the best stages on the UK festival circuit, the Barn, a state-of-the-art hangar with a seriously impressive lighting rig.",
      "img_url": "https://media.timeout.com/images/101240149/750/422/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 6,
      "name": "Glastonbury",
      "location": "Somerset, UK",
      "price": 60,
      "bio": "Every summer, when it isn't having a fallow year to give locals a break, the Big Daddy of UK festivals commandeers a chunk of Somerset for music, mischief, hippies, healing and a whole lot of cider. It’s difficult to convey quite how vast Glasto is, with whole worlds of activity taking place outside the arena as well as an awe-inspiring musical line-up ranging from pop to reggae to rock to dubstep to metal to folk to techno. Everywhere you turn there’s vitality",
      "img_url": "https://media.timeout.com/images/102414027/750/422/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 7,
      "name": "Green Man",
      "location": "Brecon Beacons, Wales",
      "price": 68,
      "bio": "Now in its fifteenth year, Green Man is as cute as a button. It’s got pretty incredible fresh food from every nook and cranny of the globe, 99 ales and ciders in its very own beer festival and eight bars selling all your fave cocktails. Music wise, it’s the wet dream of middle-aged Guardian readers (i.e. lots, and lots of Laura Marling).",
      "img_url": "https://media.timeout.com/images/103247816/380/285/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 8,
      "name": "Latitude",
      "location": "Suffolk, UK",
      "price": 65,
      "bio": "This Suffolk festival offers the ultimate cool-but-chill weekend away, with a line-up of adventurous pop and alt rock in an cute setting. It’s a very family-friendly affair and the music programming is artfully mixed up with comedy, poetry, spoken-word, dance and theatre. DJs are hidden in the woods for late night revelry, the famous colourful sheep roam the surrounding fields, and you can wash it all down with a refreshing local ale. We’ll drink to that.",
      "img_url": "https://media.timeout.com/images/103240566/380/285/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 9,
      "name": "Lovebox",
      "location": "London, UK",
      "price": 60,
      "bio": "Lovebox is one of London's most colourful summer parties. Head to the main stage for big-name DJs, MCs and the odd genre-busting band, or check out the smaller stages – curated by the likes of Noisey– for the chance to discover a cool new rising star. Lovebox keeps the beats pumping and the drink flowing for two whole days (traditionally a Friday and Saturday) but remember to pace yourself. This is a festival known for its seriously fierce afterparties",
      "img_url": "https://media.timeout.com/images/103250555/380/285/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  },
  {   
      "id": 10,
      "name": "Boomtown",
      "location": "Winchester, UK",
      "price": 65,
      "bio": "More than a festival, Boomtown is a whole alternate reality. Each year is a different chapter in a running storyline, and the whole festival is made into a vibrant, pulsing and fucking mental city. There are secret hotels with beds and live ska bands, a job centre, hidden pathways, and a whole lot of actors doing weird things. It’s the perfect example of true, childlike escapism; it’s honestly impossible at times to tell what’s real and what’s not, with everything and everyone part of the experience. There are also people of all ages, ready to get stuck into the psychedelic forests, cowboy raves in the Wild West or the pleasure-seeking crazies of Downtown.",
      "img_url": "https://media.timeout.com/images/103752483/380/285/image.jpg",
      "buy_entry": 1000,
      "booked": 0
  }  
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