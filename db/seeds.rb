Item.destroy_all
List.destroy_all
User.destroy_all


####################Users##########################
user_one = User.create(
  email: "user_one@email.com",
  password: "userone"
)
user_two = User.create(
  email: "user_two@email.com",
  password: "usertwo"
)
user_three = User.create(
  email: "user_three@email.com",
  password: "userthree"
)

###################Lists#############################
christmas = user_one.lists.create(
  title: "Christmas meal List")

grocery = user_two.lists.create(
  title: "Groceries List")

cleaning = user_three.lists.create(
  title: "Cleaning supplies list")



#################Items###############################

christmas_item_1 = christmas.items.create(
        {
          name: "Chocolate cake mix",
          photo_url: "https://target.scene7.com/is/image/Target/13016036?wid=3000&qlt=70&fmt=pjpeg",
          category: "Dessert",
          quantity: 2,
          note: "Get from WALMART"
        }
      )

grocery_item_1= grocery.items.create(
       {
          name: "Chocolate cake mix",
          photo_url: "https://target.scene7.com/is/image/Target/13016036?wid=3000&qlt=70&fmt=pjpeg",
          category: "Dessert",
          quantity: 2,
          note: "Get from WALMART"
        }
      )

cleaning_item_1 = cleaning.items.create(
        {
           name: "Clorox",
           photo_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSx6tkMEqbab82A7q_ATv2JczbHv8ePqKE99RLDwpyMe6kc_zTO&usqp=CAY",
           category: "cleaner",
           quantity: 2,
           note: "Get from Giant"
         }
       )

# Good job on using variables to create nested models inside one another.  Maybe add a couple more items just to round out your data.
