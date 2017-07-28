
OT_nation = "Iraq";
OT_saveName = "Overthrow.fallujah.001";

OT_tutorial_backstoryText = "Fallujah is a city in the Iraqi province of Al Anbar, located roughly 69 kilometers (43 mi) west of Baghdad on the Euphrates. Fallujah dates from Babylonian times and was host to important Jewish academies for many centuries.";
OT_startDate = [2040,7,14,8,00];

OT_startCameraPos = [4831.31,4229.75,100];
OT_startCameraTarget = [4485.43,5702.72,0];

//Used to control updates and persistent save compatability. When these numbers go up, that section will be reinitialized on load if required. (ie leave them alone)
OT_economyVersion = 1;
OT_NATOversion = 1;
OT_CRIMversion = 1;

OT_faction_NATO = "CUP_B_US_Army";
OT_spawnFaction = "CUP_I_TK_GUE"; //This faction will have a rep in spawn town

OT_flag_NATO = "Flag_US_F";
OT_flag_CRIM = "Flag_Syndikat_F";
OT_flag_IND = "Flag_Altis_F";
OT_flagImage = "\A3\ui_f\data\map\markers\flags\Altis_ca.paa";
OT_flagMarker = "flag_Tanoa";

OT_populationMultiplier = 10; //Used to tweak populations per map

//Interactable items that spawn in your house
OT_item_Storage = "B_CargoNet_01_ammo_F"; //Your spawn ammobox
OT_item_Map = "Mapboard_altis_F";
OT_item_Tent = "Land_TentDome_F";
OT_item_Safe = "Land_MetalCase_01_small_F";

//Animals to spawn (@todo: spawn animals)
OT_allLowAnimals = ["Rabbit_F","Turtle_F"];
OT_allHighAnimals = ["Goat_random_F"];
OT_allFarmAnimals = ["Hen_random_F","Cock_random_F","Sheep_random_F"];
OT_allVillageAnimals = ["Hen_random_F","Cock_random_F"];
OT_allTownAnimals = ["Alsatian_Random_F","Fin_random_F"];

OT_fuelPumps = ["Land_FuelStation_02_pump_F","Land_FuelStation_01_pump_F","Land_fs_feed_F","Land_FuelStation_Feed_F"];

OT_churches = ["Land_Church_03_F","Land_Church_01_F","Land_Church_02_F","Land_Temple_Native_01_F"];

OT_language_local = "LanguageGRE_F";
OT_identity_local = "Head_Greek";

OT_language_western = "LanguageENG_F";
OT_identity_western = "Head_Euro";

OT_language_eastern = "LanguageCHI_F";
OT_identity_eastern = "Head_Asian";

OT_face_localBoss = "TanoanBossHead";


OT_civType_gunDealer = "C_man_p_fugitive_F";
OT_civType_local = "C_man_1";
OT_civType_carDealer = "C_man_w_worker_F";
OT_civType_shopkeeper = "C_man_w_worker_F";
OT_civType_worker = "C_man_w_worker_F";
OT_civType_priest = "C_man_w_worker_F";
OT_vehTypes_civ = []; //populated automatically, but you can add more here and they will appear in streets
OT_vehType_distro = "C_Van_01_box_F";
OT_vehType_ferry = "C_Boat_Transport_02_F";
OT_vehType_service = "C_Offroad_01_repair_F";
OT_vehTypes_civignore = ["C_Hatchback_01_F","C_Hatchback_01_sport_F",OT_vehType_service]; //Civs cannot drive these vehicles for whatever reason

OT_illegalHeadgear = ["H_MilCap_gen_F","H_Beret_gen_F","H_HelmetB_TI_tna_F"];
OT_illegalVests = ["V_TacVest_gen_F"];

OT_clothes_locals = ["U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_3_F","U_C_Poor_1"];
OT_clothes_expats = ["U_I_C_Soldier_Bandit_5_F","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Man_casual_6_F","U_C_Man_casual_4_F","U_C_Man_casual_5_F"];
OT_clothes_tourists = [];
OT_clothes_priest = "U_C_Man_casual_2_F";
OT_clothes_port = "CUP_C_R_Worker_03";
OT_clothes_shops = ["U_C_Man_casual_2_F","U_C_Man_casual_3_F","U_C_Man_casual_1_F"];
OT_clothes_carDealers = ["CUP_C_R_Worker_03"];
OT_clothes_harbor = ["U_C_man_sport_1_F","U_C_man_sport_2_F","U_C_man_sport_3_F"];
OT_clothes_guerilla = ["U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F"];
OT_clothes_police = ["U_I_G_resistanceLeader_F","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_C_Soldier_Para_4_F"];
OT_vest_police = "V_TacVest_blk_POLICE";
OT_hat_police = "H_Cap_police";
OT_clothes_mob = "U_I_C_Soldier_Camo_F";

//NATO stuff
OT_NATO_HMG = "B_HMG_01_high_F";

private _vehicles = ["CUP_B_C130J_USMC","CUP_B_MV22_USMC","CUP_B_AH6M_Escort_USA","CUP_B_AH6J_Cannons_USA","CUP_B_UH60M_FFV_US","CUP_B_UH60M_Unarmed_US","CUP_B_AH64D_USA","CUP_B_CH47F_USA","CUP_B_A10_CAS_USA"];
OT_NATO_Vehicles_AirGarrison = [];
for "_i" from 0 to 4 do {
	OT_NATO_Vehicles_AirGarrison pushback [selectRandom _vehicles,1];
};


//Check for jets dlc
OT_hasJetsDLC = false;
if("B_Plane_Fighter_01_F" isKindOf "Air") then {
	OT_hasJetsDLC = true;
	OT_NATO_Vehicles_AirGarrison pushback ["B_Plane_Fighter_01_F",1];
};

OT_NATO_StaticGarrison_LevelOne = ["B_HMG_01_high_F"];
OT_NATO_StaticGarrison_LevelTwo = ["B_HMG_01_high_F","B_HMG_01_high_F","B_GMG_01_high_F","B_T_MRAP_01_hmg_F"];
OT_NATO_StaticGarrison_LevelThree = ["B_T_Static_AT_F","B_T_Static_AA_F","B_HMG_01_high_F","B_HMG_01_high_F","B_GMG_01_high_F","B_T_MRAP_01_hmg_F","B_T_MRAP_01_gmg_F"];

OT_NATO_CommTowers = ["Land_TTowerBig_1_F","Land_TTowerBig_2_F"];

OT_NATO_Unit_PoliceCommander = "CUP_B_CDF_Militia";
OT_NATO_Unit_Police = "CUP_B_CDF_Militia";
OT_NATO_Vehicle_PoliceHeli = "";
OT_NATO_Vehicle_Quad = "CUP_B_M1030";
OT_NATO_Vehicle_Police = "CUP_B_HMMWV_M2_USA";
OT_NATO_Vehicle_Transport = ["CUP_B_MTVR_USA","CUP_I_V3S_Covered_TKG"];
OT_NATO_Vehicle_Transport_Light = "CUP_B_HMMWV_SOV_M2_USA";
OT_NATO_Vehicles_PoliceSupport = ["CUP_B_HMMWV_Crows_M2_USA","CUP_B_HMMWV_M2_USA","CUP_B_HMMWV_MK19_USA","CUP_B_AH6J_Cannons_USA","CUP_B_AH6M_Escort_USA"];
OT_NATO_Vehicles_ReconDrone = "CUP_B_Pchela1T_CDF";
OT_NATO_Vehicles_CASDrone = "CUP_B_USMC_MQ9";
OT_NATO_Vehicles_AirSupport = "CUP_B_AH64D_USA";
OT_NATO_Vehicles_AirSupport_Small = ["CUP_B_AH6J_Cannons_USA","CUP_B_AH6M_Escort_USA"];
OT_NATO_Vehicles_GroundSupport = ["CUP_B_M2Bradley_USA_D","CUP_B_M7Bradley_USA_D","CUP_B_M1130_CV_M2_Desert","CUP_B_M1130_CV_M2_Desert_Slat","CUP_B_M1128_MGS_Desert"];
OT_NATO_Vehicles_Convoy = ["CUP_B_M2Bradley_USA_D","CUP_B_M7Bradley_USA_D","CUP_B_HMMWV_Crows_M2_USA","CUP_B_HMMWV_M2_USA","CUP_B_HMMWV_MK19_USA"];
OT_NATO_Vehicles_AirWingedSupport = "CUP_B_A10_CAS_USA";
OT_NATO_Vehicle_AirTransport_Small = "CUP_B_UH60M_FFV_US";
OT_NATO_Vehicle_AirTransport = ["CUP_B_UH60M_FFV_US"];
OT_NATO_Vehicle_AirTransport_Large = "CUP_B_CH47F_USA";
OT_NATO_Vehicle_Boat_Small = "CUP_B_RHIB2Turret_USMC";

OT_NATO_Sandbag_Curved = "Land_BagFence_01_round_green_F";
OT_NATO_Barrier_Small = "Land_HBarrier_01_line_5_green_F";
OT_NATO_Barrier_Large = "Land_HBarrier_01_wall_6_green_F";

OT_NATO_Mortar = "B_T_Mortar_01_F";

OT_NATO_Mortar = ["CUP_B_M252_US","CUP_B_M119_USMC"];

OT_NATO_Vehicle_HVT = "CUP_B_HMMWV_Transport_USA";

OT_NATO_Vehicle_CTRGTransport = "CUP_B_MH60L_DAP_4x_Multi_US";

OT_NATO_weapons_Police = ["CUP_arifle_AK74","CUP_arifle_AKS74U","CUP_arifle_AKS74U","CUP_arifle_AK74","CUP_arifle_M16A2","CUP_arifle_M16A2"];
OT_NATO_weapons_Pistols = ["CUP_hgun_M9"];

//Criminal stuff
OT_CRIM_Unit = ["CUP_I_TK_GUE_Soldier_AK_47S","CUP_I_TK_GUE_Soldier_M16A2"];
OT_CRIM_Clothes = ["CUP_V_OI_TKI_Jacket1_06","CUP_V_OI_TKI_Jacket4_06"];
OT_CRIM_Goggles = ["H_ShemagOpen_khk","CUP_H_TKI_Lungee_04","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
OT_CRIM_Weapons = ["CUP_arifle_AK74","CUP_arifle_AKS74U","CUP_arifle_RPK74_45","CUP_arifle_AKM","CUP_srifle_LeeEnfield","CUP_arifle_AKS"];
OT_CRIM_Pistols = "";
OT_CRIM_Launchers = ["CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_FIM92Stinger"];

OT_piers = ["land_nav_pier_m_end"]; //spawns dudes that sell boats n stuff
OT_offices = ["Land_MultistoryBuilding_01_F","Land_MultistoryBuilding_04_F"];
OT_portBuildings = ["Land_Warehouse_01_F","Land_Warehouse_02_F","Land_ContainerLine_01_F","Land_ContainerLine_02_F","Land_ContainerLine_03_F"];
OT_airportTerminals = ["Land_a_stationhouse"];
OT_portBuilding = "Land_WarehouseShelter_01_F";
OT_policeStation = "Land_Cargo_House_V3_F";
OT_warehouse = "Land_Warehouse_03_F";
OT_warehouses = [OT_warehouse,"Land_dp_smallFactory_F","Land_i_Shed_Ind_F"];
OT_barracks = "Land_Barracks_01_grey_F";
OT_workshopBuilding = "Land_Cargo_House_V4_F";
OT_refugeeCamp = "Land_Medevac_house_V1_F";
OT_trainingCamp = "Land_IRMaskingCover_02_F";
OT_hardwareStore = "Land_dp_smallFactory_F";
