

local function info()

    dir = getDir(MOD_ID);

    loadVehicleModel("Vehicles_felda",

    dir.."/media/models/Vehicles_felda.txt",

    dir.."/media/textures/Vehicles/Vehicle_felda_Shell.png");

   

    VehicleDistributions[1].MOD_NAME =  {

        Normal = VehicleDistributions.Normal,

        Specific = { VehicleDistributions.Groceries, VehicleDistributions.Carpenter, VehicleDistributions.Farmer, VehicleDistributions.Electrician, VehicleDistributions.Survivalist, VehicleDistributions.Clothing, VehicleDistributions.ConstructionWorker, VehicleDistributions.Painter },

    }

    ISCarMechanicsOverlay.CarList["Base.felda"] = {imgPrefix = "smallcar_", x=10,y=0};

    VehicleZoneDistribution.parkingstall.vehicles["Base.felda"] = {index = -1, spawnChance = 30};

end


Events.OnInitWorld.Add(info);

