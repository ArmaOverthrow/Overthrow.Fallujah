
class CfgPatches
{
	class OT_Overthrow_Fallujah
	{
		author="ARMAzac & Legacy";
		name="Overthrow: Fallujah";
		url="https://armaoverthrow.com/";
		requiredAddons[]=
		{

		};
		requiredVersion=1.72;
		units[] = {};
		weapons[] = {};
	};
};

class CfgVehicles
{
	class House_Small_F;
	class Land_Dum_istan2: House_Small_F {
		ot_isPlayerHouse = 1;
		ot_template = '[["Land_MetalCase_01_small_F",[-0.923076,-2.00129,3.12279],64.3286,1,0,[0,0],"","",true,false],["Land_Workbench_01_F",[3.76927,-0.378004,3.12279],0,1,0,[0,0],"","",true,false],["B_CargoNet_01_ammo_F",[-3.67165,-4.22369,3.12279],0,1,0,[0,0],"","",true,false],["MapBoard_altis_F",[6.25349,-0.861431,3.12279],19.3547,1,0,[0,0],"","",true,false]]';
	};
}
