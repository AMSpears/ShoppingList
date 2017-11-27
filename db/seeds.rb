Item.destroy_all
List.destroy_all


christmas = List.create(
  title: "Christmas meal List")

grocery = List.create(
    title: "Groceries List")

cleaning = List.create(
      title: "Cleaning supplies list")

christmas_item = Item.create([
        {
          name: "Chocolate cake mix",
          photo_url: "https://target.scene7.com/is/image/Target/13016036?wid=3000&qlt=70&fmt=pjpeg",
          category: "Dessert",
          quantity: 2,
          note: "Get from WALMART"
        },
        {
          name: "Chicken Breast",
          photo_url: "https://tysonscore2.azureedge.net/assets/media/tysonretail/products/chicken-breast-tenderloins-larger.ashx?mw=655",
          category: "Meat",
          quantity: 2,
          note: "Get from Trader Joes"
        }
      ])
grocery_item = Item.create([
       {
          name: "Chocolate cake mix",
          photo_url: "https://target.scene7.com/is/image/Target/13016036?wid=3000&qlt=70&fmt=pjpeg",
          category: "Dessert",
          quantity: 2,
          note: "Get from WALMART"
        },
        {
          name: "Chicken Breast",
          photo_url: "https://tysonscore2.azureedge.net/assets/media/tysonretail/products/chicken-breast-tenderloins-larger.ashx?mw=655",
          category: "Meat",
          quantity: 2,
          note: "Get from Trader Joes"
         }
      ])
  cleaning_item = Item.create([
        {
           name: "Clorox",
           photo_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSx6tkMEqbab82A7q_ATv2JczbHv8ePqKE99RLDwpyMe6kc_zTO&usqp=CAY",
           category: "cleaner",
           quantity: 2,
           note: "Get from Giant"
         },
        {
          name: "Fabuloso",
          photo_url: "https://images-na.ssl-images-amazon.com/images/I/518WrY6UrmL._AC_US436_FMwebp_QL65_.jpg",
          category: "cleaner",
          quantity: 2,
          note: "Get from Trader Joes"
        }
         ])
