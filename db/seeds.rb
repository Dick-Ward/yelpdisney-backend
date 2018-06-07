mkDining =
[
{
"name": "Casey's Corner",
"permalink": "caseys-corner"
},
{
"name": "Columbia Harbour House",
"permalink": "columbia-harbour-house"
},
{
"name": "Cosmic Ray's Starlight Cafe",
"permalink": "cosmic-rays-starlight-cafe"
},
{
"name": "The Friar's Nook",
"permalink": "friars-nook"
},
{
"name": "Golden Oak Outpost",
"permalink": "golden-oak-outpost"
},
{
"name": "The Lunching Pad",
"permalink": "lunching-pad"
},
{
"name": "Main Street Bakery",
"permalink": "main-street-bakery"
},
{
"name": "Pecos Bill Tall Tale Inn and Cafe",
"permalink": "pecos-bill-tall-tale-inn-and-cafe"
},
{
"name": "Pinocchio Village Haus",
"permalink": "pinocchio-village-haus"
},
{
"name": "Tomorrowland Terrace Restaurant",
"permalink": "tomorrowland-terrace"
},
{
"name": "Tortuga Tavern",
"permalink": "tortuga-tavern"
},
{
"name": "Be Our Guest Restaurant",
"permalink": "be-our-guest"
},
{
"name": "Cinderella's Royal Table",
"permalink": "cinderellas-royal-table"
},
{
"name": "The Crystal Palace",
"permalink": "crystal-palace"
},
{
"name": "The Diamond Horseshoe",
"permalink": "diamond-horseshoe"
},
{
"name": "Jungle Navigation Co. Ltd. Skipper Canteen",
"permalink": "skipper-canteen"
},
{
"name": "Liberty Tree Tavern",
"permalink": "liberty-tree-tavern"
},
{
"name": "The Plaza Restaurant",
"permalink": "plaza-restaurant"
},
{
"name": "Tony's Town Square Restaurant",
"permalink": "tonys-town-square-restaurant"
}
]

mkDining.each do |restaurant|
  Restaurant.create(name: restaurant[:name], permalink: restaurant[:permalink])
end
