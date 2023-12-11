Config = {}

Config = {
    Locations = {
        ["jobcenter"] = {
            coords = vector4(-269.19, -956.09, 31.22, 206.34),
            model = "s_m_m_armoured_01",
            blip = {
                sprite = 407,
                color = 4,
                scale = 0.7,
                label = "Job Center",
            },
        },
    }
}

Config.Jobs = {
    {
        name = "Garbage Job",
        image = "https://cdn.discordapp.com/attachments/886558594408022028/1183703996444180531/garbage.jpg?ex=65894d40&is=6576d840&hm=81d646190ce14f0eb9ae3a4fe1cdbc5581ff1e335ff738a509bfcfa377b4c047&",
        rank = "garbage",
        description = "Learn more about the lowest earning job here.",
        instructions = "A garbageman, also known as a sanitation worker, is responsible for collecting and disposing of municipal waste. Their duties include driving garbage trucks along designated routes, picking up trash bins or bags, and ensuring proper waste disposal. Garbagemen play a crucial role in maintaining public health and sanitation standards within communities.",
        paidActions = {
            "Waste Collection",
            "Route Efficiency",
            "Specialized Waste Handling",
            "Overtime Pay",
            "Public Interaction"
        },
        tags = { "Driving", "Low Salary", "Lonely", }
    },
    {
        name = "Taxi Job",
        image = "https://cdn.discordapp.com/attachments/886558594408022028/1183703996733595738/taxi.jpg?ex=65894d40&is=6576d840&hm=36ba83e9276f09b530a9c750abe2c735833126ec9833025da90dafacb957f958&",
        rank = "taxi",
        description = "Learn more about the lowest earning job here.",
        instructions = "A taxi driver provides on-demand transportation services to passengers within a specific geographic area. Responsibilities include picking up passengers, navigating efficiently to destinations, and processing fares. Taxi drivers often work independently or for taxi companies, earning income through a combination of fares and tips.",
        paidActions = {
            "Passenger Transport",
            "Waiting Time",
            "Additional Services",
            "Peak Hour Rates",
            "Tips"
        },
        tags = { "Driving", "Low Salary", "Lonely", }
    },
    {
        name = "Truck Job",
        image = "https://cdn.discordapp.com/attachments/886558594408022028/1183703997270470727/trucking.png?ex=65894d41&is=6576d841&hm=9294c7b00ebf51ab9de2effe1020eec00a6f93a7268e855942bab69eba1aea8e&",
        rank = "trucker",
        description = "Learn more about the lowest earning job here.",
        instructions = "A trucker, also known as a truck driver, operates commercial vehicles to transport goods over long distances, ensuring timely and safe delivery. Responsibilities include navigating routes, adhering to traffic regulations, and maintaining the vehicle. Truckers play a crucial role in the logistics and transportation industry.",
        paidActions = {
            "Freight Transportation",
            "Loading and Unloading",
            "Adherence to Schedule",
            "Specialized Skills Pay",
            "Overtime Pay"
        },
        tags = { "Driving", "Low Salary", "Lonely", }
    },
}

Config.tagColors = {
    "bg-green-300",
    "bg-rose-400",
    "bg-orange-200"
}