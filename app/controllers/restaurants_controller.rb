class RestaurantsController < ApplicationController
    def index

        categories = [
            {"name" => "Italian", "image_url" => "https://lunarossa.pt/wp-content/uploads/2020/03/diavola.jpg"},
            {"name" => "Hamburgers", "image_url" => "https://exame.com/wp-content/uploads/2020/06/Hamburguer-1.jpg"},
            {"name" => "Sushi", "image_url" => "https://media.istockphoto.com/photos/sushi-set-on-a-wooden-plate-and-dark-concrete-background-picture-id640071630?k=6&m=640071630&s=612x612&w=0&h=6ecx7W3xjRyvH_aWriZgEewfgJhaWYKrXRkIW2sdC-s="},
            {"name" => "Asian", "image_url" => "https://media.istockphoto.com/photos/asian-oranage-chicken-with-green-onions-picture-id483120255?k=6&m=483120255&s=612x612&w=0&h=H9m0_Ky_grAGA60D947n5TCVSCk_82sNPDTYJSYy6Fk="},
            {"name" => "Indian", "image_url" => "https://media.istockphoto.com/photos/authentic-food-indian-food-traditional-dish-cuisine-meal-curry-picture-id1035372840?k=6&m=1035372840&s=170667a&w=0&h=c88C5Z7MzPV_1HK8f48nIqafB0P8wYstVB3SVGpVf4o="},
            {"name" => "Seafood", "image_url" => "https://media.istockphoto.com/photos/seafood-on-ice-picture-id520490716?k=6&m=520490716&s=612x612&w=0&h=v5IoPR1JbIMC2jjr3kri4_8SzWXHCDdLn2P5A0cz8IA="},
            {"name" => "Hotdogs", "image_url" => "https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg"},
            {"name" => "Tapas and Snacks", "image_url" => "https://media.istockphoto.com/photos/spanish-food-tapas-still-life-picture-id1130657473?k=6&m=1130657473&s=612x612&w=0&h=smbKy20HleMyeKeJeUZXWyLvsyN6-vZJbWqUthdxfMs="},
            {"name" => "Steak", "image_url" => "https://stripedspatula.com/wp-content/uploads/2019/02/pan-seared-steak-4-500x375.jpg"},
            {"name" => "Mexican", "image_url" => "https://media.istockphoto.com/photos/overhead-photo-of-assortment-of-mexican-tapas-picture-id955992944?k=6&m=955992944&s=612x612&w=0&h=hB72dcSo6xdMKBi9PD_16r1O9buCJbzH1Vn6w3mxqb8="},
            {"name" => "Peruvian or Nepalese", "image_url" => "https://media.istockphoto.com/photos/lomo-saltado-traditional-peruvian-plate-beef-and-potatoes-picture-id964163636?k=6&m=964163636&s=612x612&w=0&h=115ZorruhkHJ53ZawwE-mQQq4Hs1jqyVpWiHg3sGVMk="},
            {"name" => "Brunch", "image_url" => "https://media.istockphoto.com/photos/breakfast-food-table-picture-id1097487962?k=6&m=1097487962&s=612x612&w=0&h=XPrSB6e84S1i9ZDRMsd5_NjWbqrY-wF0Z9e3_nHqRBM="},
            {"name" => "Icecream and sweets", "image_url" => "https://d332juqdd9b8hn.cloudfront.net/wp-content/uploads/2019/04/IceCream-lead.jpg"},
            {"name" => "Healthy", "image_url" => "https://www.wellandgood.com/wp-content/uploads/2020/10/GettyImages-avocado-for-heart-health-Arx0nt.jpeg"},
            {"name" => "Other", "image_url" => "https://media.istockphoto.com/photos/food-backgrounds-table-filled-with-large-variety-of-food-picture-id1155240408?k=6&m=1155240408&s=612x612&w=0&h=SEhOUzsexrBBtRrdaLWNB6Zub65Dnyjk7vVrTk1KQSU="},
            
        ]

        render locals: {categories: categories}

        #restaurants = Restaurant.all
        #render locals: {restaurants: restaurants}
    end

    def category
        restaurants_by_category = Restaurant.where("category = ?", params[:category])
        render locals: {
            restaurants_by_category: restaurants_by_category,
            current_category: params[:category]
        }
    end
end