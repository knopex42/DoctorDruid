DOCDRUID_TITLE = "Doctor Druid"; DOCDRUID_VERSION = "v1.1.9";

BINDING_HEADER_DD_HEADER =	DOCDRUID_TITLE.." "..DOCDRUID_VERSION;
BINDING_NAME_DD29  =		DOCDRUID[155]; -- Settings
BINDING_NAME_DD1   =		DOCDRUID[1]; -- Healing Touch
BINDING_NAME_DD18  =		DOCDRUID[2]; -- Healing Touch (without rank upgrade)
BINDING_NAME_DD2   =		DOCDRUID[3]; -- Regrowth
BINDING_NAME_DD19  =		DOCDRUID[4]; -- Regrowth (without rank upgrade)
BINDING_NAME_DD3   =		DOCDRUID[5]; -- Rejuvenation
BINDING_NAME_DD20  =		DOCDRUID[67]; -- Toggle: Maximum HOTs
BINDING_NAME_DD4   =		DOCDRUID[6]; -- Mark of the Wild
BINDING_NAME_DD5   =		DOCDRUID[7]; -- Thorns
BINDING_NAME_DD33  =		DOCDRUID[185]; -- Dynamic Entangling Roots
BINDING_NAME_DD6   =		DOCDRUID[8]; -- Remove Poison
BINDING_NAME_DD25  =		DOCDRUID[108]; -- Remove Poison/Remove Curse
BINDING_NAME_DD32  =		DOCDRUID[175]; -- Rebirth (Dynamic Rank)
BINDING_NAME_DD34  =		DOCDRUID[200]; -- Rebirth: Group Notice
BINDING_NAME_DD35  =		DOCDRUID[201]; -- Rebirth: Raid Notice
BINDING_NAME_DD7A  =		DOCDRUID[11]; -- Innervate: No Notice
BINDING_NAME_DD7B  =		DOCDRUID[12]; -- Innervate: Whisper Notice
BINDING_NAME_DD7C  =		DOCDRUID[13]; -- Innervate: Group Notice
BINDING_NAME_DD7D  =		DOCDRUID[14]; -- Innervate: Raid Notice
BINDING_NAME_DD37A =		DOCDRUID[205]; -- Self Innervate: No Notice
BINDING_NAME_DD37B =		DOCDRUID[206]; -- Self Innervate: Group Notice
BINDING_NAME_DD37C =		DOCDRUID[207]; -- Self Innervate: Raid Notice
BINDING_NAME_DD17  =		DOCDRUID[15]; -- Form: Druid Form
BINDING_NAME_DD24  =		DOCDRUID[93]; -- Form: Druid Form + Nature's Swiftness
BINDING_NAME_DD8   =		DOCDRUID[16]; -- Form: Bear Form
BINDING_NAME_DD9   =		DOCDRUID[17]; -- Form: Aquatic Form
BINDING_NAME_DD10  =		DOCDRUID[18]; -- Form: Cat Form
BINDING_NAME_DD11  =		DOCDRUID[19]; -- Form: Travel Form
BINDING_NAME_DD23  =		DOCDRUID[92]; -- Form: Aquatic or Travel Form
BINDING_NAME_DD12  =		DOCDRUID[20]; -- Form: Moonkin
BINDING_NAME_DD13  =		DOCDRUID[21]; -- Totem - Moonfire
BINDING_NAME_DD14  =		DOCDRUID[22]; -- Cat: Stealth (not toggleable)
BINDING_NAME_DD31  =		DOCDRUID[161]; -- Cat: Stealth (toggleable)
BINDING_NAME_DD30  =		DOCDRUID[162]; -- Cat & Night Elf: Disable Stealth
BINDING_NAME_DD15  =		DOCDRUID[23]; -- Cat: Attack from Front
BINDING_NAME_DD16  =		DOCDRUID[24]; -- Cat: Attack from Behind
BINDING_NAME_DD21  =		DOCDRUID[23]..DOCDRUID[87]; -- Cat: Attack from Front (no early finisher)
BINDING_NAME_DD22  =		DOCDRUID[24]..DOCDRUID[87]; -- Cat: Attack from Behind (no early finisher)
BINDING_NAME_DD26  =		DOCDRUID[126]; -- Bear #1: Single Target Attack
BINDING_NAME_DD27  =		DOCDRUID[127]; -- Bear #2: Multi-Target Attack
BINDING_NAME_DD28  =		DOCDRUID[128]; -- Bear #3: Special Abilities
BINDING_NAME_DD38  =		DOCDRUID[215]; -- Bear #4: Maximum Threat Generation
BINDING_NAME_DD39  =		DOCDRUID[216]; -- Bear #2 and #4 Swap
BINDING_NAME_DD36  =		DOCDRUID[202]; -- Faerie Fire for All Forms

function rDD(name,strflag) local value = DoctorDruid_Data[name]; if strflag then return value; elseif value=="Yes" then return true; elseif value=="No" then return false; else return value; end end
function wDD(name,value,strflag) if value==true and not strflag then DoctorDruid_Data[name] = "Yes"; elseif value==false and not strflag then DoctorDruid_Data[name] = "No"; else DoctorDruid_Data[name] = value; end end

local settingsversion, deletesettingsifolderthanthis = 1.19, 1.14;

DoctorDruid_Data = {};
DoctorDruid_Data_Default = {};
DoctorDruid_Data_Default["opener"] = 			"ravage";
DoctorDruid_Data_Default["catstandard"] =		"both";
DoctorDruid_Data_Default["finisher"] =			"both";
DoctorDruid_Data_Default["tf_opener"] = 		"Yes";
DoctorDruid_Data_Default["tf_opener_notinpvp"] =	"Yes";
DoctorDruid_Data_Default["tf_opener_atonce"] =		"No";
DoctorDruid_Data_Default["tf_infight_pve"] = 		"Yes";
DoctorDruid_Data_Default["tf_infight_pvp"] = 		"No";
DoctorDruid_Data_Default["tf_finisher"] = 		"No";
DoctorDruid_Data_Default["tf_finisher_notinpvp"] =	"No";
DoctorDruid_Data_Default["tf_prowl_opener"] =		"No";
DoctorDruid_Data_Default["tf_prowl_finisher"] =		"Yes";
DoctorDruid_Data_Default["always_cower"] = 		"No";
DoctorDruid_Data_Default["agro_cower"] = 		"Yes";
DoctorDruid_Data_Default["cursepoison"] =		"curse";
DoctorDruid_Data_Default["lostaggro_taunt"] =		"Yes";
DoctorDruid_Data_Default["always_taunt"] = 		"No";
DoctorDruid_Data_Default["allow_charge"] =		"Yes";
DoctorDruid_Data_Default["allow_enrage"] =		"Yes";
DoctorDruid_Data_Default["allow_bash"] = 		"Yes";
DoctorDruid_Data_Default["allow_challroar"] =		"No";
DoctorDruid_Data_Default["allow_heal"] =		"Yes";
DoctorDruid_Data_Default["activateferal"] =		"Yes";
DoctorDruid_Data_Default["outputtextto"] =		1;
DoctorDruid_Data_Default["trackhumanoids"] =		"No";
DoctorDruid_Data_Default["quickprowl"] =		"Yes";
DoctorDruid_Data_Default["prowl_opener"] =		"pounce";
DoctorDruid_Data_Default["prowl_finisher"] =		"neverdot";
DoctorDruid_Data_Default["rootrank_pve"] =		0;
DoctorDruid_Data_Default["rootrank_pvp"] =		2;
DoctorDruid_Data_Default["autobear"] =			4;
DoctorDruid_Data_Default["bear_keyexchange"] =		"No";
DoctorDruid_Data_Default["rakeafterclaw"] =		"Yes";
DoctorDruid_Data_Default["maxheal"] =			"0";
DoctorDruid_Data_Default["innervateferals"] =		"No";
DoctorDruid_Data_Default["notauntifwarrior"] =		"Yes";
DoctorDruid_Data_Default["cat_autoassist"] =		"No";
DoctorDruid_Data_Default["bear_autoassist"] =		"No";
DoctorDruid_Data_Default["settingsversion"] =		settingsversion;

DD__Timer = { ProwlTime = 0, LastTFury = 0, LastIvate = 0, LastBRezz = 0, WW_StartTime = 0, WW_Count = 0, LastUpdate = 0, LastDemoRoar = 0, LastFaerieFire = 0, SwipeRoarCount = -4, AntiSpam_Innervate = 0, AntiSpam_Rebirth = 0 }
local DD__start_health,DD__start_time = 100,0;
DD__LastWindow = 0;

function DoctorDruid_GetDD__SpellRank()
	DD__SpellRank = {
		HealingTouch = 0, Rejuvenation = 0, Regrowth = 0, Thorns = 0, MarkOfTheWild = 0, RemovePoison = 0, RemoveCurse = 0, Innervate = 0,
		MoonfireRank = 0, FaerieFireRank = 0, FaerieFireTRank = 0, Rebirth = 0, RootsRank = 0,
	}
	local i,j = 1,nil;
	local name, rank = GetSpellName(i,BOOKTYPE_SPELL);
	while name do
		rank = StrToInt(rank);
		if not IsSpellPassive(i,BOOKTYPE_SPELL) then
			if name==DOCDRUID[1] and DD__SpellRank.HealingTouch<rank then DD__SpellRank.HealingTouch = rank;
			elseif name==DOCDRUID[5] and DD__SpellRank.Rejuvenation<rank then DD__SpellRank.Rejuvenation = rank;
			elseif name==DOCDRUID[3] and DD__SpellRank.Regrowth<rank then DD__SpellRank.Regrowth = rank;
			elseif name==DOCDRUID[7] and DD__SpellRank.Thorns<rank then DD__SpellRank.Thorns = rank;
			elseif name==DOCDRUID[6] and DD__SpellRank.MarkOfTheWild<rank then DD__SpellRank.MarkOfTheWild = rank;
			elseif name==DOCDRUID[9] then DD__SpellRank.Innervate = 1;
			elseif name==DOCDRUID[10] and DD__SpellRank.MoonfireRank<rank then DD__SpellRank.MoonfireRank = rank;
			elseif name==DOCDRUID[199] and DD__SpellRank.FaerieFireRank<rank then DD__SpellRank.FaerieFireRank = rank;
			elseif name==DOCDRUID[88] and DD__SpellRank.FaerieFireTRank<rank then DD__SpellRank.FaerieFireTRank = rank;
			elseif name==DOCDRUID[102] then DD__SpellRank.RemoveCurse = 1;
			elseif name==DOCDRUID[165] and DD__SpellRank.Rebirth<rank then DD__SpellRank.Rebirth = rank;
			elseif name==DOCDRUID[182] and DD__SpellRank.RootsRank<rank then DD__SpellRank.RootsRank = rank;
			else
				j = 1;
				while ATTR__RemovePoison[j] do
					if name==ATTR__RemovePoison[j].name and DD__SpellRank.RemovePoison<j then DD__SpellRank.RemovePoison = j; end
					j = j + 1;
				end
			end
		end
		i = i + 1;
		name, rank = GetSpellName(i,BOOKTYPE_SPELL);
	end
end

function DoctorDruid_GetTalents()
	local nameTalent,currRank; -- nameTalent, icon, tier, column, currRank, maxRank
	SKILL__ImprovedMoonfire,SKILL__Moonglow,SKILL__Moonfury,SKILL__ImprovedHealingTouch,SKILL__GiftOfNature,SKILL__ImprovedRejuvenation,SKILL__TransquilSpirit = 0,0,0,0,0,0,0;
	for i = 1,GetNumTalents(1) do
		nameTalent,_,_,_,currRank = GetTalentInfo(1,i);
		if nameTalent==DOCDRUID[25] then SKILL__ImprovedMoonfire = currRank;
		elseif nameTalent==DOCDRUID[26] then SKILL__Moonglow = currRank;
		elseif nameTalent==DOCDRUID[27] then SKILL__Moonfury = currRank;
		end;
	end
	for i = 1,GetNumTalents(3) do
		nameTalent,_,_,_,currRank = GetTalentInfo(3,i);
		if nameTalent==DOCDRUID[28] then SKILL__ImprovedHealingTouch = currRank;
		elseif nameTalent==DOCDRUID[29] then SKILL__GiftOfNature = currRank;
		elseif nameTalent==DOCDRUID[30] then SKILL__ImprovedRejuvenation = currRank;
		elseif nameTalent==DOCDRUID[31] then SKILL__TransquilSpirit = currRank;
		end;
	end
end

function DoctorDruid_Init()
	guessbaselist = {
		DRUID	= { base = 3200, progression = 1.3, canInnervate = 1 },
		HUNTER	= { base = 4600, progression = 1.0, canInnervate = 1 },
		MAGE	= { base = 2700, progression = 1.0, canInnervate = 1 },
		PALADIN	= { base = 4500, progression = 1.0, canInnervate = 1 },
		PRIEST	= { base = 2800, progression = 1.0, canInnervate = 1 },
		ROGUE	= { base = 4100, progression = 2.0, canInnervate = 0 },
		SHAMAN	= { base = 3900, progression = 1.0, canInnervate = 1 },
		WARRIOR	= { base = 5200, progression = 1.8, canInnervate = 0 },
		WARLOCK	= { base = 5000, progression = 2.6, canInnervate = 1 },
	}

	ATTR__Thorns = {
		{ casterlvl =  0; mana =  -1 },
		{ casterlvl =  6; mana =  35 },
		{ casterlvl = 14; mana =  60 },
		{ casterlvl = 24; mana = 105 },
		{ casterlvl = 34; mana = 170 },
		{ casterlvl = 44; mana = 240 },
		{ casterlvl = 54; mana = 320 },
		{ casterlvl = 999 },
	}

	ATTR__MarkOfTheWild = {
		{ casterlvl =  0; mana =  -1 },
		{ casterlvl =  1; mana =  20 },
		{ casterlvl = 10; mana =  50 },
		{ casterlvl = 20; mana = 100 },
		{ casterlvl = 30; mana = 160 },
		{ casterlvl = 40; mana = 240 },
		{ casterlvl = 50; mana = 340 },
		{ casterlvl = 60; mana = 445 },
		{ casterlvl = 999 },
	}

	ATTR__FaerieFire = {
		{ mana =  55 },
		{ mana =  75 },
		{ mana =  95 },
		{ mana = 115 },
	}
end

function DD__GetHealingTouch(plusheal)
	return {
		{ casterlvl = 0, cast = 0, instmin = 0, instmax = 0, mana = -1 },
		{ casterlvl =  1, cast = 1.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(  40 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/33),    instmax = floor(  55 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/33),    mana = floor( 25 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl =  8, cast = 2.0 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(  94 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*28/89),   instmax = floor( 119 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*28/89),   mana = floor( 55 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 14, cast = 2.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor( 204 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*139/250), instmax = floor( 253 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*139/250), mana = floor(110 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 20, cast = 3.0 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor( 376 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*6/7),     instmax = floor( 459 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*6/7),     mana = floor(185 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 26, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor( 589 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor( 712 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(270 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 32, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor( 762 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor( 914 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(335 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 38, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor( 958 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor(1143 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(405 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 44, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(1225 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor(1453 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(495 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 50, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(1545 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor(1826 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(600 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 56, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(1916 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor(2257 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(720 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 60, cast = 3.5 - 0.1*SKILL__ImprovedHealingTouch - 0.15*logic2value(DD__Idol==DOCDRUID[145]), instmin = floor(2267 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         instmax = floor(2677 * (1 + 0.02*SKILL__GiftOfNature) + plusheal),         mana = floor(800 * (1 - 0.02*SKILL__TransquilSpirit) / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 999 },
	}
end

function DD__GetRejuvenation(plusheal)
	return {
		{ casterlvl = 0, subjectlvl = 0, hot = 0, mana = -1 },
		{ casterlvl =  4, subjectlvl =  1, hot = floor(  32 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/12), mana = floor( 25 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 10, subjectlvl =  1, hot = floor(  56 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/8),  mana = floor( 40 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 16, subjectlvl =  6, hot = floor( 116 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/6),  mana = floor( 75 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 22, subjectlvl = 12, hot = floor( 180 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(105 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 28, subjectlvl = 18, hot = floor( 244 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(135 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 34, subjectlvl = 24, hot = floor( 304 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(160 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 40, subjectlvl = 30, hot = floor( 388 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(195 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 46, subjectlvl = 36, hot = floor( 488 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(235 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 52, subjectlvl = 42, hot = floor( 608 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(280 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 58, subjectlvl = 48, hot = floor( 756 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(335 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 60, subjectlvl = 54, hot = floor(1110 * (1 + 0.05*SKILL__ImprovedRejuvenation) * (1 + 0.02*SKILL__GiftOfNature) + plusheal*4/5),  mana = floor(360 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 999 },
	}
end

function DD__GetRegrowth(plusheal)
	return {
		{ casterlvl = 0, subjectlvl = 0, cast = 0, inst = 0, hot = 0, mana = -1 },
		{ casterlvl = 12, subjectlvl =  2, cast = 2.0, instmin = floor(  93 * (1 + 0.02*SKILL__GiftOfNature) + plusheal/5),      instmax = floor( 107 * (1 + 0.02*SKILL__GiftOfNature) + plusheal/5),      hot = floor(  98 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/21), mana = floor(120 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 18, subjectlvl =  8, cast = 2.0, instmin = floor( 176 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*27/102), instmax = floor( 201 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*27/102), hot = floor( 175 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/15), mana = floor(205 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 24, subjectlvl = 14, cast = 2.0, instmin = floor( 255 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 290 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 259 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(280 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 30, subjectlvl = 20, cast = 2.0, instmin = floor( 336 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 378 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 343 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(350 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 36, subjectlvl = 26, cast = 2.0, instmin = floor( 425 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 478 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 427 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(420 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 42, subjectlvl = 32, cast = 2.0, instmin = floor( 534 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 599 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 546 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(510 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 48, subjectlvl = 38, cast = 2.0, instmin = floor( 672 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 751 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 686 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(615 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 54, subjectlvl = 44, cast = 2.0, instmin = floor( 839 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor( 935 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor( 861 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(740 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 60, subjectlvl = 50, cast = 2.0, instmin = floor(1003 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  instmax = floor(1119 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*21/74),  hot = floor(1064 * (1 + 0.02*SKILL__GiftOfNature) + plusheal*7/14), mana = floor(880 / (1 + 0.03*SKILL__Moonglow)) },
		{ casterlvl = 999 },
	}
end

function ddheal(h_heal,h_mana,h_mr5s) -- Heilbonus, Mana, ManaReg/5s
	DoctorDruid_Update();

	local _return = {
		DOCDRUID[152].."\n\n",
		"\n\n",
	}

	local ATTR2__HealingTouch,ATTR2__Rejuvenation,ATTR2__Regrowth = DD__GetHealingTouch(h_heal),DD__GetRejuvenation(h_heal),DD__GetRegrowth(h_heal);
	local e_HealingTouch,e_Regrowth,e_Rejuvenation = {},{},{};

	for i = 1,11 do
		if i<=DD__SpellRank.HealingTouch then e_HealingTouch[i] = floor(h_mana * (ATTR2__HealingTouch[i+1].instmin + ATTR2__HealingTouch[i+1].instmax)/2 / ATTR2__HealingTouch[i+1].mana); end
		if i<=DD__SpellRank.Regrowth then e_Regrowth[i] = floor(h_mana * ((ATTR2__Regrowth[i+1].instmin + ATTR2__Regrowth[i+1].instmax)/2 + ATTR2__Regrowth[i+1].hot) / ATTR2__Regrowth[i+1].mana); end
		if i<=DD__SpellRank.Rejuvenation then e_Rejuvenation[i] = floor(h_mana * ATTR2__Rejuvenation[i+1].hot / ATTR2__Rejuvenation[i+1].mana); end
	end

	local j,lastmost,most,mostid,mostrank,healtime = 0,0,0,"",0,0;
	for i = 1,9 do
		lastmost = most; most,mostid,mostrank,healtime = 0,"",0,0;
		for j = 1,11 do
			if e_HealingTouch[j] then if e_HealingTouch[j]>most then most = e_HealingTouch[j]; mostid = DOCDRUID[1]; mostrank = j; healtime = e_HealingTouch[j] / (ATTR2__HealingTouch[j+1].instmin + ATTR2__HealingTouch[j+1].instmax)/2 * ATTR__HealingTouch[j+1].cast; end end
			if e_Regrowth[j] then if e_Regrowth[j]>most then most = e_Regrowth[j]; mostid = DOCDRUID[3]; mostrank = j; healtime = e_Regrowth[j] / ((ATTR2__Regrowth[j+1].instmin + ATTR2__Regrowth[j+1].instmax)/2 + ATTR2__Regrowth[j+1].hot) * (ATTR__Regrowth[j+1].cast + 21); end end
			if e_Rejuvenation[j] then if e_Rejuvenation[j]>most then most = e_Rejuvenation[j]; mostid = DOCDRUID[5]; mostrank = j; healtime = e_Rejuvenation[j] / ATTR2__Rejuvenation[j+1].hot * 12; end end
		end
		if most>0 then
			_return[1] = _return[1]..i..". "..mostid.." "..DOCDRUID[42].." "..mostrank..DOCDRUID[135]..DD__Timestring(floor(healtime / h_mana * (h_mana + healtime*h_mr5s/5))).."\n\n";
			_return[2] = _return[2]..floor(most / h_mana * (h_mana + healtime*h_mr5s/5)).."\n\n\n";
		end
		if mostid==DOCDRUID[1] then e_HealingTouch[mostrank] = -1;
		elseif mostid==DOCDRUID[3] then e_Regrowth[mostrank] = -1;
		elseif mostid==DOCDRUID[5] then e_Rejuvenation[mostrank] = -1;
		end
	end

	return _return;
end

function DoctorDruid_Update()
	if (GetTime() - DD__Timer.LastUpdate)<0.25 then return; else DD__Timer.LastUpdate = GetTime(); end
	if OldPlayerlevel then
		DD_countupdate = DD_countupdate + 1;
		if OldPlayerLevel==UnitLevel("player") and DD_countupdate<24 then return; end
	end

	OldPlayerLevel = UnitLevel("player");
	DD_countupdate = 1;

	if not DD_initialized then
		DoctorDruid_Init();
		DD_initialized = 1;
	end

	DD__Idol = GetInventoryItemLink("player",GetInventorySlotInfo("RangedSlot"));
	if DD__Idol then _,_,DD__Idol = strfind(DD__Idol,"(%d+):"); else DD__Idol = ""; end
	if DD__Idol then DD__Idol = GetItemInfo(DD__Idol); else DD__Idol = ""; end

	DoctorDruid_GetTalents();

	DD_bonusHeal = 0;
	if BonusScanner then if BonusScanner.bonuses["HEAL"] then DD_bonusHeal = BonusScanner.bonuses["HEAL"]; end end

	--local basemana,_,_,_ = UnitStat("player",4);
	basemana = 0;

	ATTR__RemovePoison = {
		{ subjectlvl =  1, casterlvl = 14, mana = basemana*0.16, name = DOCDRUID[32], ddname = DOCDRUID[34] },
		{ subjectlvl = 16, casterlvl = 26, mana = basemana*0.16, name = DOCDRUID[33], ddname = DOCDRUID[35] },
	}

	ATTR__RemoveCurse = {
		{ subjectlvl =  1, mana = basemana*0.1, name = DOCDRUID[102], ddname = DOCDRUID[102] },
	}

	ATTR__Rebirth = {
		{ mana = 0, givehealth =  400, givemana =  700, reagent = DOCDRUID[166] },
		{ mana = 0, givehealth =  750, givemana = 1200, reagent = DOCDRUID[167] },
		{ mana = 0, givehealth = 1100, givemana = 1700, reagent = DOCDRUID[168] },
		{ mana = 0, givehealth = 1600, givemana = 2200, reagent = DOCDRUID[169] },
		{ mana = 0, givehealth = 2200, givemana = 2800, reagent = DOCDRUID[170] },
	}

	ATTR__HealingTouch = DD__GetHealingTouch(DD_bonusHeal);
	ATTR__Rejuvenation = DD__GetRejuvenation(DD_bonusHeal);
	ATTR__Regrowth = DD__GetRegrowth(DD_bonusHeal);

	DoctorDruid_GetDD__SpellRank();
end

function DD__MaxHeal_Switch()
	local x = rDD("maxheal",1);
	if x=="0" then
		wDD("maxheal","1",1);
		DD__Print(DOCDRUID[36]);
	elseif x=="1" then
		wDD("maxheal","2",1);
		DD__Print(DOCDRUID[82]);
	elseif x=="2" then
		wDD("maxheal","3",1);
		DD__Print(DOCDRUID[83]);
	else
		wDD("maxheal","0",1);
		DD__Print(DOCDRUID[37]);
	end
end

function DD__MaxHeal_Use()
	local x = rDD("maxheal",1);
	if x=="2" then
		wDD("maxheal","1",1);
		return DOCDRUID[84];
	elseif x=="1" then
		wDD("maxheal","0",1);
		return DOCDRUID[85];
	else
		return "";
	end
end

function DD__TotemCheck(moonfireRank)
	if not DD__SpellReady(DOCDRUID[10]) then return; end
	if not moonfireRank then moonfireRank = 1; end

	local oldTarget = DD__UnitName("target");
	TargetNearestEnemy();
	local firstTarget = DD__UnitName("target");
	local sameTarget = "";
	local foundTotem = 0;
	local i = 1;
	local a,b,c,same;

	while DD__UnitName("target") and i<24 do
		if DD__UnitName("target")==sameTarget then same = same + 1; else same = 0; sameTarget = DD__UnitName("target"); end
		if same>5 then break; end
		if DD__TargetIs("target","totem") then foundTotem = 1; break; end
		TargetNearestEnemy();
		i = i + 1;
	end

	if foundTotem==0 then
		if oldTarget then TargetByName(oldTarget); else ClearTarget(); end
		return;
	end

	if DD__PlayerIs("caster") then
		if not moonfireRank then moonfireRank = 1; end
		DD__CastSpell(DOCDRUID[10],moonfireRank);
		if oldTarget then TargetByName(oldTarget); else ClearTarget(); end
	else
		AttackTarget();
	end
end

function DD__CasterForm(sdn)
	if not DD__SHAPESHIFT() then
		if sdn and DD__SpellReady(DOCDRUID[94]) then
			DD__CastSpell(DOCDRUID[94]);
		end
	end
end
function DD__Bear()
	local shift2bear = DD__SHAPESHIFT(1); if shift2bear then return; end
	local secondfunc = rDD("autobear");
	if secondfunc and DD__PlayerIs("bear") then
		if secondfunc==1 then DD__Enrage();
		elseif secondfunc==2 then DD__FerralCharge();
		elseif secondfunc==3 then DD__Bash();
		elseif secondfunc==4 then DD__BearAttack(4);
		end
	end
end
function DD__AquaticForm() DD__SHAPESHIFT(2); end
function DD__CatForm()
	local shift2cat = DD__SHAPESHIFT(3);
	if shift2cat then
		return;
	elseif DD__PlayerIs("cat") and not UnitAffectingCombat("player") and not DD__Prowl() and rDD("quickprowl") then
		DD__CastSpell(DOCDRUID[38]);
		DD__Timer.ProwlTime = GetTime();
	elseif DD__PlayerIs("cat") and not UnitAffectingCombat("player") and not shift2cat and rDD("trackhumanoids") then
		DD__CastSpell(DOCDRUID[159]);
		return;
	end
end
function DD__TravelForm() DD__SHAPESHIFT(4); end
function DD__Moonkin() DD__SHAPESHIFT(5); end
function DD__TravelAquaticForm()
	if not DD__SHAPESHIFT() then
		DD__SHAPESHIFT(2);
		DD__SHAPESHIFT(4);
	end
end
function DD__SHAPESHIFT(ddform)
	if not ddform then ddform = 0; end
	local shapeshifts = GetNumShapeshiftForms();
	if ddform>shapeshifts then return; end
	local formallowed, icon, name, active, castable;
	for i = 1,shapeshifts do
		icon, name, active, castable = GetShapeshiftFormInfo(i);

		if active==1 then
			-- Wenn die aktuelle Form der gew�hlten Form entspricht, wird nichts gemacht.
			-- Und wenn eine Form aktiv ist, w�hrend man eine andere m�chte, verwandelt man sich in die Casterform zur�ck.
			if ddform~=i then CastShapeshiftForm(i); return true; end
			return false;
		end

		-- In jedem anderen Fall ist man in der Casterform. Hier wird festgestellt, ob die gew�nschte Form erlaubt ist.
		if ddform==i and castable then formallowed = true; end

	end
	if ddform>0 and formallowed then CastShapeshiftForm(ddform); return true; end
	return false;
end

function DD__Roots()
	if not rDD("activateferal") then return; end
	DoctorDruid_Update();

	if DD__SpellRank.RootsRank<1 then
		DD__Print(DOCDRUID[182]..DOCDRUID[43]);
		return;
	end

	if not UnitExists("target") then
		DD__Print(DOCDRUID[182]..DOCDRUID[186]);
		return;
	end

	if UnitIsPlayer("target") and rDD("rootrank_pvp")>0 then
		local wwrank = rDD("rootrank_pvp");
		if wwrank>DD__SpellRank.RootsRank then wwrank = DD__SpellRank.RootsRank; end
		if DD__CastSpell(DOCDRUID[182],wwrank) then
			DD__Print(DD__UnitName("target")..DOCDRUID[55]..DOCDRUID[182].." "..DOCDRUID[42].." "..wwrank);
		end
	else
		if not UnitAffectingCombat("player") or DD__Timer.WW_Count==0 then
			DD__Timer.WW_StartTime = GetTime();
			DD__Timer.WW_Count = 0;
		end

		local wwtable,wwrank = {7,5,4,3,2,0},0;
		local usedtime = (6 + GetTime() - DD__Timer.WW_StartTime) / 60;
		local rpm = floor(100 * DD__Timer.WW_Count / usedtime) / 100 -- Roots per Minute

		for i=1,DD__SpellRank.RootsRank do
			if rpm>=wwtable[i] then wwrank = i; break; end
		end

		if DD__CastSpell(DOCDRUID[182],wwrank) then
			DD__Timer.WW_Count = DD__Timer.WW_Count + 1;
			local prename = ""; if UnitIsPlayer("target") then prename = DD__UnitName("target")..DOCDRUID[55]; end
			DD__Print(prename..DOCDRUID[182].." "..DOCDRUID[42].." "..wwrank..DOCDRUID[183]..rpm..DOCDRUID[184]);
		end
	end
end

function DD__Rebirth(notice)
	local isicrn,wrank,wcooldown;
	DoctorDruid_Update();

	if DD__SpellRank.Rebirth<1 then
		DD__Print(DOCDRUID[165]..DOCDRUID[43]);
		return;
	end

	if not notice then notice = 0; end
	local noticetype = { "PARTY", "RAID" }
	if notice==2 and GetNumRaidMembers()==0 then notice = 1; end
	if notice==1 and not UnitExists("party1") then notice = 0; end

	if not DD__SpellReady(DOCDRUID[165]) then
		wcooldown = DD__CoolDown(DOCDRUID[165]);
		DD__Print(DOCDRUID[165]..DOCDRUID[86].." ("..DD__Timestring(wcooldown)..")");
		if notice>0 and (GetTime() - DD__Timer.LastBRezz)>5 and (GetTime() - DD__Timer.AntiSpam_Rebirth)>3 then
			SendChatMessage(DOCDRUID[164]..DD__Timestring(wcooldown), noticetype[notice], nil, DD__UnitName(t));
			DD__Timer.AntiSpam_Rebirth = GetTime();
		end
		return;
	end

	isicrn = UnitAffectingCombat("player");
	if UnitExists("target") then
		isicrn = isicrn or UnitAffectingCombat("target"); -- isicrn = is someone in combat right now?
	end

	if isicrn then
		wrank = DD__SpellRank.Rebirth;
		while not DD__FindItem(ATTR__Rebirth[wrank].reagent) and wrank>0 do wrank = wrank - 1; end
	else
		wrank = 1;
		while not DD__FindItem(ATTR__Rebirth[wrank].reagent) and wrank<DD__SpellRank.Rebirth do wrank = wrank + 1; end
	end

	if wrank<1 or wrank>DD__SpellRank.Rebirth then
		DD__Print(DOCDRUID[172]);
		return;
	end

	if UnitExists("target") and UnitIsDead("target") and UnitIsFriend("player","target") then
		DD__Print(DOCDRUID[163]..DOCDRUID[42].." "..wrank..DOCDRUID[173]..DD__UnitName("target"));
	else
		ClearTarget();
		DD__Print(DOCDRUID[163]..DOCDRUID[42].." "..wrank..DOCDRUID[174]);
	end

	SpellStopTargeting();
	DD__CastSpell(DOCDRUID[165],wrank);
	DD__Timer.LastBRezz = GetTime();
end

function DD__InnervateSelf(notice)
	TargetUnit("player");
	DD__Innervate(notice);
	TargetLastTarget();
end

function DD__Innervate(notice)
	local t,anrcooldown,uClass,enClass,playersMana,self,timestring;
	DoctorDruid_Update();

	if not notice then notice = 0; end
	local noticetype = { "WHISPER", "PARTY", "RAID" }
	if notice==3 and GetNumRaidMembers()==0 then notice = 2; end
	if notice==2 and not UnitExists("party1") then notice = 1; end

	if DD__SpellRank.Innervate<1 then
		DD__Print(DOCDRUID[9]..DOCDRUID[43]);
		return;
	end

	if UnitIsFriend("player","target") then
		t = "target";
	else
		t = "player";
	end

	if not DD__SpellReady(DOCDRUID[9]) then
		anrcooldown = DD__CoolDown(DOCDRUID[9]); timestring = DD__Timestring(anrcooldown);
		DD__Print(DOCDRUID[9]..DOCDRUID[86].." ("..timestring..")");

		if notice>1 and timestring~="" and anrcooldown<355 and (GetTime() - DD__Timer.LastIvate)>5 and (GetTime() - DD__Timer.AntiSpam_Innervate)>3 then
			SendChatMessage(DOCDRUID[89]..timestring, noticetype[notice], nil, DD__UnitName(t));
			DD__Timer.AntiSpam_Innervate = GetTime();
		end
		return;
	end

	uClass,enClass = UnitClass(t);
	if guessbaselist[enClass].canInnervate==0 then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[45]..uClass..DOCDRUID[46]);
		return;
	end
	if enClass=="DRUID" and rDD("innervateferals")==false then
		if DD__TargetIs("target","cat") or DD__TargetIs("target","bear") then
			DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[222]);
			return;
		end
	end

	if not TargetInRange(t) then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[47]);
		return;
	end

	if (UnitMana(t) / UnitManaMax(t))>(3/4) or (enClass=="DRUID" and UnitPowerType(t)~=0) then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[48]);
		return;
	end

	playersMana = UnitMana("player");
	if not playersMana then playersMana = 0; end

	if playersMana>=62 or DD__InstantCast() then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[9]);
		DD__CastSpell(DOCDRUID[9]);
		DD__Timer.LastIvate = GetTime();
		SpellTargetUnit(t);
		if notice>0 then
			local noticetext = {
				DOCDRUID[50],
				DOCDRUID[51]..DD__UnitName(t),
				DOCDRUID[51]..DD__UnitName(t),
			}
			if notice==1 and (t=="player" or not UnitExists("target")) then notice = 0; end
			if notice>0 then SendChatMessage(noticetext[notice], noticetype[notice], nil, DD__UnitName(t)); end
		end
	else
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[9]..DOCDRUID[53]);
	end
end

function DD__RemovePoisonCurse() -- Entgiften&Entfluchen
	DoctorDruid_Update();

	if DD__SpellRank.RemovePoison<1 and DD__SpellRank.RemoveCurse<1 then
		DD__Print(DOCDRUID[103]..DOCDRUID[104]);
		return;
	end

	local t;
	if UnitIsFriend("player","target") then
		t = "target";
	else
		t = "player";
	end
	local whattocure,gift,fluch = "",DD__Poison(t),DD__Curse(t);

	if gift and fluch then
		prio = rDD("cursepoison");
		if (prio=="curse" and DD__SpellRank.RemoveCurse>0)
		or (prio=="poison" and DD__SpellRank.RemovePoison>0) then
			whattocure = prio;
		elseif prio=="curse" then
			whattocure = "poison";
		elseif prio=="poison" then
			whattocure = "curse";
		end
	elseif gift and not fluch then
		if DD__SpellRank.RemovePoison>0 then
			whattocure = "poison";
		else
			DD__Print(DOCDRUID[103]..DOCDRUID[105]);
			return;
		end
	elseif fluch and not gift then
		if DD__SpellRank.RemoveCurse>0 then
			whattocure = "curse";
		else
			DD__Print(DOCDRUID[103]..DOCDRUID[106]);
			return;
		end
	else
		DD__Print(DOCDRUID[103]..DOCDRUID[107]);
		return;
	end

	if whattocure=="poison" then
		DD__RemovePoison();
	elseif whattocure=="curse" then
		--local playersMana = UnitMana("player");
		--if not playersMana then playersMana = 0; end
		--if playersMana>=ATTR__RemoveCurse[1].mana or DD__InstantCast() then
			DD__Print(DD__UnitName(t)..DOCDRUID[55]..ATTR__RemoveCurse[1].ddname);
			DD__CastSpell(ATTR__RemoveCurse[1].name);
			SpellTargetUnit(t);
		--else
		--	DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[102]..DOCDRUID[53]);
		--end
	end
end

function DD__RemovePoison()
	local t,d,reduced;
	DoctorDruid_Update();
	if DD__SpellRank.RemovePoison<1 then
		DD__Print(DOCDRUID[72]..DOCDRUID[105]);
		return;
	end

	if UnitIsFriend("player","target") then
		t = "target";
	else
		t = "player";
	end

	if not DD__Poison(t) then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[54]);
		return;
	end

	d = DD__SpellRank.RemovePoison;
	while d>0 do
		if UnitLevel(t)<ATTR__RemovePoison[d].subjectlvl then d = d - 1; else break; end
	end

	--local playersMana = UnitMana("player");
	--if not playersMana then playersMana = 0; end

	--if playersMana>=ATTR__RemovePoison[d].mana or DD__InstantCast() then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..ATTR__RemovePoison[d].ddname);
		DD__CastSpell(ATTR__RemovePoison[d].name);
		SpellTargetUnit(t);
	--else
	--	DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[8]..DOCDRUID[53]);
	--end
end

function DD__Thorns()
	local d,t,reduced,maximalmoeglich,reducedtext;
	DoctorDruid_Update();
	if DD__SpellRank.Thorns<1 then
		DD__Print(DOCDRUID[7]..DOCDRUID[43]);
		return;
	end

	if not DD__SpellReady(DOCDRUID[7]) then
		DD__Print(DOCDRUID[7]..DOCDRUID[86]);
		return;
	end

	if UnitIsFriend("player","target") then
		d = min(floor((UnitLevel("target")+6)/10)+1,DD__SpellRank.Thorns);
		t = "target";
	else
		d = DD__SpellRank.Thorns;
		t = "player";
	end

	if d==0 then return; end

	reduced = 0;
	if not DD__InstantCast() then
		if not UnitMana("player") then
			d = 0;
		elseif d>0 and UnitMana("player")>0 then
			while ATTR__Thorns[d+1].mana>UnitMana("player") and d>0 do d = d - 1; reduced = reduced + 1; end
		end
	end

	if d==0 then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[49]..DOCDRUID[53]);
	elseif d>0 then
		if (d+reduced)~=DD__SpellRank.Thorns then
			maximalmoeglich = DOCDRUID[57]..(d+reduced)..DOCDRUID[58];
		else
			maximalmoeglich = "";
		end
		if reduced>0 then reducedtext = DOCDRUID[56]..reduced..maximalmoeglich..DOCDRUID[59]; else reducedtext = ""; end
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[7]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.Thorns..reducedtext);
		DD__CastSpell(DOCDRUID[7],d);
		SpellTargetUnit(t);
	end
end

function DD__MarkOfTheWild()
	local d,t,reduced,maximalmoeglich,reducedtext;
	DoctorDruid_Update();
	if DD__SpellRank.MarkOfTheWild<1 then
		DD__Print(DOCDRUID[6]..DOCDRUID[43]);
		return;
	end

	if not DD__SpellReady(DOCDRUID[6]) then
		DD__Print(DOCDRUID[6]..DOCDRUID[86]);
		return;
	end

	if UnitIsFriend("player", "target") then
		d = min(floor(UnitLevel("target")/10)+2,DD__SpellRank.MarkOfTheWild);
		t = "target";
	else
		d = DD__SpellRank.MarkOfTheWild;
		t = "player";
	end

	if d==0 then return; end

	reduced = 0;
	if not DD__InstantCast() then
		if not UnitMana("player") then
			d = 0;
		elseif d>0 and UnitMana("player")>0 then
			while ATTR__MarkOfTheWild[d+1].mana>UnitMana("player") and d>0 do d = d - 1; reduced = reduced + 1; end
		end
	end

	if d==0 then
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[49]..DOCDRUID[53]);
	elseif d>0 then
		if (d+reduced)~=DD__SpellRank.MarkOfTheWild then
			maximalmoeglich = DOCDRUID[57]..d+reduced..DOCDRUID[58];
		else
			maximalmoeglich = "";
		end
		if reduced>0 then reducedtext = DOCDRUID[56]..reduced..maximalmoeglich..DOCDRUID[59]; else reducedtext = ""; end
		DD__Print(DD__UnitName(t)..DOCDRUID[55]..DOCDRUID[6]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.MarkOfTheWild..reducedtext);
		DD__CastSpell(DOCDRUID[6],d);
		SpellTargetUnit(t);
	end
end

function DD__Regrowth(noIncrease)
	local dmaxonthistarget,t,missinghp,hptext,d,i,d_orig,maximalmoeglich,reducedtext;
	DoctorDruid_Update();
	if DD__SpellRank.Regrowth<1 then
		DD__Print(DOCDRUID[3]..DOCDRUID[43]);
		return;
	end

	if not DD__SpellReady(DOCDRUID[3]) then
		DD__Print(DOCDRUID[3]..DOCDRUID[86]);
		return;
	end

	if UnitIsFriend("player", "target") then
		dmaxonthistarget = min(floor((UnitLevel("target")-2)/6)+1,DD__SpellRank.Regrowth);
		t = "target";
	else
		dmaxonthistarget = DD__SpellRank.Regrowth;
		t = "player";
	end

	if rDD("maxheal",1)~="0" then
		missinghp = 999999;
		hptext = DOCDRUID[62];
	else
		if UnitHealthMax(t)==100 then
			missinghp = DD__GuessUnitHealth(t, 20);
			hptext = DOCDRUID[63]..missinghp..DOCDRUID[65];
		else
			missinghp = UnitHealthMax(t) - UnitHealth(t);
			hptext = DOCDRUID[63]..missinghp..DOCDRUID[64];
		end
	end

	d = 0;
	if dmaxonthistarget<DD__SpellRank.Regrowth then
		i = dmaxonthistarget;
	else
		i = DD__SpellRank.Regrowth;
	end
	while i>0 do
		if UnitAffectingCombat(t) then
			if missinghp>=(ATTR__Regrowth[i+1].instmin/2 + ATTR__Regrowth[i+1].instmax/2) then d = i; break; end
		else
			if missinghp>=((ATTR__Regrowth[i+1].instmin/2 + ATTR__Regrowth[i+1].instmax/2)+(0.3 * ATTR__Regrowth[i+1].hot)) then d = i; break; end
		end
		i = i - 1;
	end

	if DD__NaturesSwiftness() then noIncrease = 1; end

	d_orig = d;
	if not noIncrease then
		if d>0 then
			if UnitAffectingCombat(t) then
				if (d+1)<=dmaxonthistarget then d = d + 1; end
				if DD__instanceInfo() then
					if (d+1)<=dmaxonthistarget and DD__instanceInfo().lvlmin>34 then d = d + 1; end
					if (d+1)<=dmaxonthistarget and DD__instanceInfo().lvlmin>54 then d = d + 1; end
				end
			end
		end
	end

	if DD__InstantCast() then d = dmaxonthistarget; end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[3]..DOCDRUID[66]);
		return;
	end

	reduced = 0;
	if not UnitMana("player") then
		d = 0;
	elseif d>0 and UnitMana("player")>0 and not DD__InstantCast() then
		while ATTR__Regrowth[d+1].mana>UnitMana("player") and d>0 do d = d - 1; reduced = reduced + 1; end
	end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[3]..DOCDRUID[53]);
	elseif d>0 then
		if (d+reduced)~=DD__SpellRank.Regrowth then
			maximalmoeglich = DOCDRUID[57]..d+reduced..DOCDRUID[58];
		else
			maximalmoeglich = "";
		end
		if reduced>0 then reducedtext = DOCDRUID[56]..reduced..maximalmoeglich..DOCDRUID[59];
		elseif (d-d_orig)>0 then reducedtext = DOCDRUID[68]..(d-d_orig)..DOCDRUID[69];
		else reducedtext = "";
		end
		if DD__InstantCast() then
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[3]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.Regrowth..DOCDRUID[70]..DD__MaxHeal_Use().." ["..ATTR__Regrowth[d+1].instmin.."-"..ATTR__Regrowth[d+1].instmax..DOCDRUID[227]..", "..ATTR__Regrowth[d+1].hot..DOCDRUID[228].."]");
		else
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[3]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.Regrowth..reducedtext..DD__MaxHeal_Use().." ["..ATTR__Regrowth[d+1].instmin.."-"..ATTR__Regrowth[d+1].instmax..DOCDRUID[227]..", "..ATTR__Regrowth[d+1].hot..DOCDRUID[228].."]");
		end
		DD__CastSpell(DOCDRUID[3],d);
		SpellTargetUnit(t);
	end
end

function DD__Rejuvenation()
	local dmaxonthistarget,t,d,hptext,missinghp,i,reduced,maximalmoeglich,reducedtext;
	DoctorDruid_Update();
	if DD__SpellRank.Rejuvenation<1 then
		DD__Print(DOCDRUID[5]..DOCDRUID[43]);
		return;
	end

	if not DD__SpellReady(DOCDRUID[5]) then
		DD__Print(DOCDRUID[5]..DOCDRUID[86]);
		return;
	end

	if UnitIsFriend("player", "target") then
		dmaxonthistarget = max(min(floor(UnitLevel("target")/6)+2,DD__SpellRank.Rejuvenation),1);
		t = "target";
	else
		dmaxonthistarget = DD__SpellRank.Rejuvenation;
		t = "player";
	end

	if UnitAffectingCombat(t) then
		d = dmaxonthistarget;
		hptext = DOCDRUID[71];
	else
		if rDD("maxheal",1)~="0" then
			missinghp = 999999;
			hptext = DOCDRUID[62];
		else
			if UnitHealthMax(t)==100 then
				missinghp = DD__GuessUnitHealth(t, 20);
				hptext = DOCDRUID[63]..missinghp..DOCDRUID[65];
			else
				missinghp = UnitHealthMax(t) - UnitHealth(t);
				hptext = DOCDRUID[63]..missinghp..DOCDRUID[64];
			end
		end
		d = 0;
		if dmaxonthistarget<DD__SpellRank.Rejuvenation then
			i = dmaxonthistarget;
		else
			i = DD__SpellRank.Rejuvenation;
		end
		while i>0 do
			if missinghp>=ATTR__Rejuvenation[i+1].hot then d = i; break; end
			i = i - 1;
		end
	end

	if DD__InstantCast() then d = dmaxonthistarget; end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[5]..DOCDRUID[66]);
		return;
	end

	reduced = 0;
	if not UnitMana("player") then
		d = 0;
	elseif d>0 and UnitMana("player")>0 and not DD__InstantCast() then
		while ATTR__Rejuvenation[d+1].mana>UnitMana("player") and d>0 do d = d - 1; reduced = reduced + 1; end
	end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[5]..DOCDRUID[53]);
	elseif d>0 then
		if (d+reduced)~=DD__SpellRank.Rejuvenation then
			maximalmoeglich = DOCDRUID[57]..d+reduced..DOCDRUID[58];
		else
			maximalmoeglich = "";
		end
		if reduced>0 then reducedtext = DOCDRUID[56]..reduced..maximalmoeglich..DOCDRUID[59]; else reducedtext = ""; end
		if DD__InstantCast() then
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[5]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.Rejuvenation..DOCDRUID[70]..DD__MaxHeal_Use().." [+"..ATTR__Rejuvenation[d+1].hot.."]");
		else
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[5]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.Rejuvenation..reducedtext..DD__MaxHeal_Use().." [+"..ATTR__Rejuvenation[d+1].hot.."]");
		end
		DD__CastSpell(DOCDRUID[5],d);
		SpellTargetUnit(t);
	end
end

function DD__HealingTouch(noIncrease,maxrank)
	local t,missinghp,hptext,d,i,d_orig,reduced,reducedtext,internalmaxrank;
	DoctorDruid_Update();

	if DD__SpellRank.HealingTouch<1 then
		DD__Print(DOCDRUID[1]..DOCDRUID[43]);
		return;
	end

	if not DD__SpellReady(DOCDRUID[1]) then
		DD__Print(DOCDRUID[1]..DOCDRUID[86]);
		return;
	end

	if UnitIsFriend("player", "target") then
		t = "target";
	else
		t = "player";
	end

	if UnitHealthMax(t)==100 then
		missinghp = DD__GuessUnitHealth(t, 20);
		hptext = DOCDRUID[63]..missinghp..DOCDRUID[65];
	else
		missinghp = UnitHealthMax(t) - UnitHealth(t);
		hptext = DOCDRUID[63]..missinghp..DOCDRUID[64];
	end

	d,i = 0,DD__SpellRank.HealingTouch; if maxrank then if maxrank>1 and i>maxrank then i = maxrank; end end
	while i>0 do
		if UnitAffectingCombat(t) then
			if missinghp>=ATTR__HealingTouch[i+1].instmin then d = i; break; end
		else
			if missinghp>=(ATTR__HealingTouch[i+1].instmin/2 + ATTR__HealingTouch[i+1].instmax/2) then d = i; break; end
		end
		i = i - 1;
	end

	if DD__NaturesSwiftness() then noIncrease = "sdn"; end

	d_orig = d; if not maxrank then internalmaxrank = DD__SpellRank.HealingTouch; else internalmaxrank = maxrank; end
	if not noIncrease then
		if d>0 then
			if UnitAffectingCombat(t) then
				if (d+1)<=internalmaxrank then d = d + 1; end
				if DD__instanceInfo() then
					if (d+1)<=internalmaxrank and DD__instanceInfo().lvlmin>34 then d = d + 1; end
				end
			end
		end
	else
		if UnitAffectingCombat(t) and noIncrease=="sdn" and (d+1)<=internalmaxrank then d = d + 1; end
	end

	if DD__InstantCast() then d = internalmaxrank; end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[1]..DOCDRUID[66]);
		return;
	end

	reduced = 0;
	if not UnitMana("player") then
		d = 0;
	elseif d>0 and UnitMana("player")>0 and not DD__InstantCast() then
		while ATTR__HealingTouch[d+1].mana>UnitMana("player") and d>0 do d = d - 1; reduced = reduced + 1; end
	end

	if d==0 then
		DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[52]..DOCDRUID[1]..DOCDRUID[53]);
	elseif d>0 then
		if reduced>0 then reducedtext = DOCDRUID[56]..reduced..DOCDRUID[59];
		elseif (d-d_orig)>0 then reducedtext = DOCDRUID[68]..(d-d_orig)..DOCDRUID[69];
		else reducedtext = "";
		end
		if DD__InstantCast() then
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[1]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.HealingTouch..DOCDRUID[70].." ["..ATTR__HealingTouch[d+1].instmin.."-"..ATTR__HealingTouch[d+1].instmax.."]");
		else
			DD__Print(DD__UnitName(t)..hptext..DOCDRUID[55]..DOCDRUID[1]..DOCDRUID[60]..d..DOCDRUID[61]..DD__SpellRank.HealingTouch..reducedtext.." ["..ATTR__HealingTouch[d+1].instmin.."-"..ATTR__HealingTouch[d+1].instmax.."]");
		end
		DD__CastSpell(DOCDRUID[1],d);
		SpellTargetUnit(t);
	end
end

function DD__GuessUnitHealth(t, max_estimationerror_percentage)
	local missingHPperc = UnitHealthMax(t) - UnitHealth(t);
	local uClass, enClass = UnitClass(t);
	local level = StrToInt(UnitLevel(t));
	local base = guessbaselist[enClass].base;
	local verlauf = ((guessbaselist[enClass].progression - 1) / 60^(1/guessbaselist[enClass].progression) * level^(1/guessbaselist[enClass].progression)) + 1;
	local estimationerror,guess = 1;

	if not base or not verlauf then return missingHPperc; end

	if max_estimationerror_percentage>0 then
		estimationerror = 1 + randomNumber(0,max_estimationerror_percentage*100)/10000;
	elseif max_estimationerror_percentage<0 then
		estimationerror = 1 - randomNumber(0,max_estimationerror_percentage*100)/10000;
	end
	guess = floor(missingHPperc/100 * level^verlauf * base/(60^verlauf) * estimationerror);

	-- Das wird IN einer Instanz nie vorkommen... nur in der Zone unmittelbar VOR einer Instanz.
	if DD__instanceInfo() then
		if DD__instanceInfo().lvlmin>34 then guess = guess * 1.05; end
		if DD__instanceInfo().lvlmin>54 then guess = guess * 1.1; end
	end

	return guess;
end

function GuessHealth(class, level)
	local enClass = classlist[string.lower(class)];
	if not enClass then return; end
	local base = guessbaselist[enClass].base;
	local verlauf = ((guessbaselist[enClass].progression - 1) / 60^(1/guessbaselist[enClass].progression) * level^(1/guessbaselist[enClass].progression)) + 1;
	if not base or not verlauf then return; end
	DD__Print(floor(level^verlauf * base/(60^verlauf)));
end

function DD__instanceInfo()
	if DD_currentZone then DD_oldZone = DD_currentZone; end
	DD_currentZone = string.lower(GetRealZoneText());
	if DD_oldZone then if DD_currentZone==DD_oldZone then return DD_currentReturn; end end
	DD_currentReturn = nil;
	local i = 1;
	while instanceZone[i] do
		if string.find(DD_currentZone,instanceZone[i].name) then DD_currentReturn = instanceZone[i]; break; end
		i = i + 1;
	end
	return DD_currentReturn;
end

function DD__Disease(target,dispellable) return DD__hasDebuff(target,"Disease",dispellable); end
function DD__Poison(target,dispellable) return DD__hasDebuff(target,"Poison",dispellable); end
function DD__Curse(target,dispellable) return DD__hasDebuff(target,"Curse",dispellable); end
function DD__Magic(target,dispellable) return DD__hasDebuff(target,"Magic",dispellable); end
function DD__hasDebuff(target,debuffname,dispellable)
	local i,type,current = 1;
	while true do
		current,_,type = UnitDebuff(target,i,dispellable);
		if not current then break; end
		if type==debuffname then return true; end
		i = i + 1;
	end
end

function DD__PlayerHasMana(minMana)
	if UnitMana("player")>=minMana then return true; end
	if DD__InstantCast() then return true; end
end

function DD__InstantCast() return DD__PlayerBuff("Spell_Shadow_ManaBurn"); end
function DD__Prowl() return DD__PlayerBuff("Ability_Ambush"); end
function DD__NaturesSwiftness() return DD__PlayerBuff("Spell_Nature_RavenForm"); end
function DD__EndProwl() return DD__CancelBuffByName("Ability_Ambush"); end

function DD__PlayerIs(what)
	if what=="caster" then return not (DD__PlayerIs("cat") or DD__PlayerIs("bear") or DD__PlayerIs("travel") or DD__PlayerIs("water"));
	elseif what=="cat" then return DD__PlayerBuff("Ability_Druid_CatForm");
	elseif what=="bear" then return DD__PlayerBuff("Ability_Racial_BearForm");
	elseif what=="travel" then return DD__PlayerBuff("Ability_Druid_TravelForm");
	elseif what=="water" then return DD__PlayerBuff("Ability_Druid_AquaticForm");
	-- elseif what=="moonkin" then I have absolutely no idea what�s the name of the moonkin-buff, since I�m a Feral!;
	end
end

function DD__TargetIs(target,what)
	local _,x = UnitClass(target);
	if x=="DRUID" and what=="caster" then return not (DD__TargetIs("cat") or DD__TargetIs("bear") or DD__TargetIs("travel") or DD__TargetIs("water"));
	elseif x=="DRUID" and what=="cat" then return DD__TargetBuff(target,"Ability_Druid_CatForm");
	elseif x=="DRUID" and what=="bear" then return DD__TargetBuff(target,"Ability_Racial_BearForm");
	elseif x=="DRUID" and what=="travel" then return DD__TargetBuff(target,"Ability_Druid_TravelForm");
	elseif x=="DRUID" and what=="water" then return DD__TargetBuff(target,"Ability_Druid_AquaticForm");
	elseif what=="totem" then if (UnitCreatureType(target)==DOCDRUID[40] or UnitCreatureType(target)==DOCDRUID[225]) and x==DOCDRUID[41] and not UnitIsDead(target) and UnitIsVisible(target) then return true; end
	end
end

function DD__Timestring(sec)
	local rs,min,std,tag = "",0,0,0;
	if sec>86399 then tag = floor(sec/86400); sec = sec - tag*86400; end
	if sec>3599 then std = floor(sec/3600); sec = sec - std*3600; end
	if sec>59 then min = floor(sec/60); sec = sec - min*60; end
	sec = floor(sec);

	if tag>0 then rs = rs..tag.." "..DD__Timeword(tag,DOCDRUID[221],DOCDRUID[134]); end
	if std>0 then if string.len(rs)>0 then rs = rs..", "; end rs = rs..std.." "..DD__Timeword(std,DOCDRUID[220],DOCDRUID[133]); end
	if min>0 then if string.len(rs)>0 then rs = rs..", "; end rs = rs..min.." "..DD__Timeword(min,DOCDRUID[219],DOCDRUID[91]); end
	if sec>0 then if string.len(rs)>0 then rs = rs..", "; end rs = rs..sec.." "..DD__Timeword(sec,DOCDRUID[218],DOCDRUID[90]); end
	return rs;
end

function DD__Timeword(value,one,more) if value==1 then return one; else return more; end end

function DD__CancelBuffByName(buff)
	local buffIndex,buffTexture;
	for i = 0,15 do
		buffIndex,_ = GetPlayerBuff(i,"HELPFUL");
		if buffIndex<0 then break; end
		buffTexture = GetPlayerBuffTexture(buffIndex);
		if buffTexture==buff or string.find(buffTexture,buff) then
			CancelPlayerBuff(buffIndex);
			return true;
		end
	end
	return false;
end

function DD__TargetBuff(target,buff)
	local i,a = 1;
	while UnitBuff(target,i) do
		a = UnitBuff(target,i);
		if string.find(a,buff) then return true; end
		i = i + 1;
	end
end

function DD__PlayerBuff(buff) return DD__TargetBuff("player",buff); end

function ddbuffs(target)
	if not target then target = "player"; end
	local i,a = 1;
	while UnitBuff(target,i) do
		a = UnitBuff(target,i);
		DD__Print(a);
		i = i + 1;
	end
end

function dddebuffs(target)
	if not target then target = "target"; end
	local i,a = 1;
	while UnitDebuff(target,i) do
		a = UnitDebuff(target,i);
		DD__Print(a);
		i = i + 1;
	end
end

-- Pr�ft nur bis maximal 30m, die drei Heilzauber haben jedoch 40m Reichweite!
-- Wird daher vorl�ufig nur f�r ein paar wenige Zauber verwendet, die tats�chlich immer 30m Reichweite haben.
function TargetInRange(target)
	if CheckInteractDistance(target,4) or CheckInteractDistance(target,3) or CheckInteractDistance(target,2) or CheckInteractDistance(target,1) then
		return true;
	end
	return false;
end

function randomNumber(minValue,maxValue) return math.random(minValue,maxValue); end
function DD__Print(msg,color)
	local window = 1;
	if rDD("outputtextto") then window = rDD("outputtextto"); end
	if window<1 or window>15 then window = 0; wDD("outputtextto",0); end
	if color then msg = color..msg.."|cffffffff"; end

	if window==1 and ChatFrame1 then ChatFrame1:AddMessage(msg);
	elseif window==2 and ChatFrame2 then ChatFrame2:AddMessage(msg);
	elseif window==3 and ChatFrame3 then ChatFrame3:AddMessage(msg);
	elseif window==4 and ChatFrame4 then ChatFrame4:AddMessage(msg);
	elseif window==5 and ChatFrame5 then ChatFrame5:AddMessage(msg);
	elseif window==6 and ChatFrame6 then ChatFrame6:AddMessage(msg);
	elseif window==7 and ChatFrame7 then ChatFrame7:AddMessage(msg);
	elseif window==8 and ChatFrame8 then ChatFrame8:AddMessage(msg);
	elseif window==9 and ChatFrame9 then ChatFrame9:AddMessage(msg);
	elseif window==10 and ChatFrame10 then ChatFrame10:AddMessage(msg);
	elseif window==11 and ChatFrame11 then ChatFrame11:AddMessage(msg);
	elseif window==12 and ChatFrame12 then ChatFrame12:AddMessage(msg);
	elseif window==13 and ChatFrame13 then ChatFrame13:AddMessage(msg);
	elseif window==14 and ChatFrame14 then ChatFrame14:AddMessage(msg);
	elseif window==15 and ChatFrame15 then ChatFrame15:AddMessage(msg);
	end
end
function StrToInt(str) -- Nope, that�s not Strength to Intelligence, but String to Integer.
	local numbers = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
	local converted,charisnumber,char,j = 0,0,nil,nil;
	for i = 1,string.len(str) do
		char = string.sub(str,i,i);
		charisnumber = 0;
		j = 1;
		while numbers[j] and charisnumber==0 do
			if char==numbers[j] then charisnumber = j; end
			j = j + 1;
		end
		if charisnumber>0 then
			converted = converted * 10;
			if charisnumber<10 then converted = converted + charisnumber; end
		end
	end
	return converted;
end

function DD__FeralEvents()
	this:RegisterEvent("PLAYER_TARGET_CHANGED");
	this:RegisterEvent("PLAYER_REGEN_DISABLED");
end

function DD__OnLoad()
	DD__FeralEvents();
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterEvent("PLAYER_LEAVING_WORLD");

	SLASH_DOCTORDRUID1 = "/doctordruid";
	SLASH_DOCTORDRUID2 = "/docdruid";
	SLASH_DOCTORDRUID3 = "/dd";

	SlashCmdList["DOCTORDRUID"] = function(msg)
		DD__SlashCommandHandler(msg);
	end
end

function DD__OnEvent(event)
	if event=="PLAYER_TARGET_CHANGED" or event=="PLAYER_REGEN_DISABLED" then
		if rDD("activateferal") then
			DD__ResetTimer();
			if event=="PLAYER_TARGET_CHANGED" then DD__ResetTimer2(); end
		else
			this:UnregisterEvent(event);
		end
	elseif event=="VARIABLES_LOADED" then
		local x = rDD("settingsversion");
		if x then
			if x>settingsversion then x = nil; else x = (x>=deletesettingsifolderthanthis); end
		end
		if not x then
			DD__DefaultSettings();
		else
			DD__CheckNewSettings();
		end
		DD__ResetTimer();
	elseif event=="PLAYER_ENTERING_WORLD" then
		this:RegisterEvent("UNIT_INVENTORY_CHANGED");
	elseif event=="PLAYER_LEAVING_WORLD" then
		this:UnregisterEvent("UNIT_INVENTORY_CHANGED");
	elseif event=="UNIT_INVENTORY_CHANGED" then
		OldPlayerlevel = nil; -- in order to enforce yet another update on how much healing each healing spell will produce. (healing bonus...)
		DoctorDruid_Update();
	end
end

function DD__DefaultSettings()
	DoctorDruid_Data = {};
	local i = next(DoctorDruid_Data_Default,nil);
	while i do
		DoctorDruid_Data[i] = DoctorDruid_Data_Default[i];
		i = next(DoctorDruid_Data_Default,i);
	end
end

function DD__CheckNewSettings()
	local i = next(DoctorDruid_Data_Default,nil);
	while i do
		if (not DoctorDruid_Data[i] or DoctorDruid_Data[i]==nil) and DoctorDruid_Data[i]~=false then
			DoctorDruid_Data[i] = DoctorDruid_Data_Default[i];
		end
		i = next(DoctorDruid_Data_Default,i);
	end
end

function DD__SlashCommandHandler(msg)
	msg = string.lower(msg);

	if rDD("activateferal") then						-- Ist auch f�r die dynamischen Wucherwurzeln n�tig.
		if msg=="catattack" then DD__CatAttack(false); return;
		elseif msg=="attackbehind" then DD__CatAttack(true); return;
		elseif msg=="catattack2" then DD__CatAttack(false,1); return;
		elseif msg=="attackbehind2" then DD__CatAttack(true,1); return;
		elseif msg==DDcmd[23] then DD__CatForm_Prowl(); return;
		elseif msg==DDcmd[24] then DD__CatAttack(false); return;
		elseif msg==DDcmd[25] then DD__CatAttack(true); return;
		elseif msg==DDcmd[26] then DD__CatAttack(false,1); return;
		elseif msg==DDcmd[27] then DD__CatAttack(true,1); return;
		elseif msg==DDcmd[29] then DD__BearAttack(1); return;
		elseif msg==DDcmd[30] then DD__BearAttack(2); return;
		elseif msg==DDcmd[31] then DD__BearAttack(3); return;
		elseif msg==DDcmd[32] then DD__CatForm_Prowl(1); return;
		elseif msg==DDcmd[35] then DD__Roots(); return;
		elseif msg==DDcmd[42] then DD__BearAttack(4); return;
		elseif msg==DDcmd[43] then DD__BearExchange(); return;
		end
	end

	if msg==DDcmd[1] then DD__MarkOfTheWild(); return;
	elseif msg==DDcmd[2] then DD__Thorns(); return;
	elseif msg==DDcmd[3] then DD__HealingTouch(1); return;
	elseif msg==DDcmd[4] then DD__HealingTouch(); return;
	elseif msg==DDcmd[5] then DD__Regrowth(1); return;
	elseif msg==DDcmd[6] then DD__Regrowth(); return;
	elseif msg==DDcmd[7] then DD__Rejuvenation(); return;
	elseif msg==DDcmd[8] then DD__MaxHeal_Switch(); return;
	elseif msg==DDcmd[9] then DD__RemovePoison(); return;
	elseif msg==DDcmd[10] then DD__Innervate(); return;
	elseif msg==DDcmd[11] then DD__Innervate(1); return;
	elseif msg==DDcmd[12] then DD__Innervate(2); return;
	elseif msg==DDcmd[13] then DD__Innervate(3); return;
	elseif msg==DDcmd[14] then DD__CasterForm(); return;
	elseif msg==DDcmd[15] then DD__CasterForm(1); return;
	elseif msg==DDcmd[16] then DD__Bear(); return;
	elseif msg==DDcmd[17] then DD__CatForm(); return;
	elseif msg==DDcmd[18] then DD__Moonkin(); return;
	elseif msg==DDcmd[19] then DD__TravelAquaticForm(); return;
	elseif msg==DDcmd[20] then DD__TravelForm(); return;
	elseif msg==DDcmd[21] then DD__AquaticForm(); return;
	elseif msg==DDcmd[22] then DD__TotemCheck(); return;
	elseif msg==DDcmd[28] then DD__RemovePoisonCurse(); return;
	elseif msg==DDcmd[33] then DD__EndProwl(); return;
	elseif msg==DDcmd[34] then DD__Rebirth(); return;
	elseif msg==DDcmd[36] then DD__Rebirth(1); return;
	elseif msg==DDcmd[37] then DD__Rebirth(2); return;
	elseif msg==DDcmd[38] then DD__FaerieFire_AllShapes(); return;
	elseif msg==DDcmd[39] then DD__InnervateSelf(); return;
	elseif msg==DDcmd[40] then DD__InnervateSelf(2); return;
	elseif msg==DDcmd[41] then DD__InnervateSelf(3); return;
	elseif msg=="help" then
		DD__Print("-- "..DOCDRUID_TITLE.." "..DOCDRUID_VERSION.." --");
		DD__Print(DDhelp[1]);
		DD__Print(DDhelp[2]);
		local allcommands,i = "",1;
		while DDcmd[i] do
			allcommands = allcommands..DDcmd[i];
			if DDcmd[i+1] then allcommands = allcommands..", "; end
			i = i + 1;
		end
		DD__Print(DDhelp[3]..allcommands);
		DD__Print(DDhelp[4]);
		return;
	elseif msg=="settings" then DD__ListSettingsDebug(); return;
	elseif msg=="default" then DD__Print("Resetting defaults"); DD__DefaultSettings(); return;
	else DD__SetupWindow(1); return;
	end
end

function DD__ListSettingsDebug()
	local dex = next(DoctorDruid_Data, nil)
	while dex do
		DD__Print(format("%s: %s", dex, tostring(DoctorDruid_Data[dex])));
		dex = next(DoctorDruid_Data, dex);
	end
end	

function DD__CastSpell(spell,rank)
	if DD__SpellReady(spell) then
		if not rank then
			CastSpellByName(spell);
		else
			CastSpellByName(spell.."("..DOCDRUID[42].." "..rank..")");
		end
		return true;
	else	return false;
	end
end

function DD__SpellReady(seeking)
	for i = 1,999 do
		local name = GetSpellName(i,BOOKTYPE_SPELL);
		if not name then break end
		if string.find(name,seeking) or name==seeking then
			return (GetSpellCooldown(i,1)==0);
		end
	end
	return false
end

function DD__CoolDown(seeking)
	for i = 1,999 do
		local name = GetSpellName(i, BOOKTYPE_SPELL);
		if not name then break end
		if string.find(name,seeking) or name==seeking then
			a,b = GetSpellCooldown(i,1);
			cdtime = b + a - GetTime();
			if cdtime>0 then return cdtime; else return false; end
		end
	end
	return false;
end

function DD__GlobalCooldown() return (DD__SpellReady(DOCDRUID[1])==false); end

function DD__HaveMana(min)
	if UnitMana("player")>=min then return true; end
	if DD__UnitHasBuff("player","Spell_Shadow_ManaBurn") then return true; end
	return false;
end

function DD__Pounce()
	if DD__HaveMana(50) then return DD__CastSpell(DOCDRUID[73]);
	else return false; end
end
function DD__Ravage()
	if DD__HaveMana(60) then return DD__CastSpell(DOCDRUID[74]);
	else return false; end
end
function DD__Rip()
	if DD__HaveMana(30) then return DD__CastSpell(DOCDRUID[75]);
	else return false; end
end
function DD__FerociousBite()
	if DD__HaveMana(35) then return DD__CastSpell(DOCDRUID[76]);
	else return false; end
end
function DD__Rake()
	if DD__HaveMana(40 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[144])) then return DD__CastSpell(DOCDRUID[77]);
	else return false; end
end
function DD__Claw()
	if DD__HaveMana(45 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[144])) then return DD__CastSpell(DOCDRUID[78]);
	else return false; end
end
function DD__Shred()
	if DD__HaveMana(60 - 6*DD__TalentRank(2,9)) then return DD__CastSpell(DOCDRUID[79]);
	else return false; end
end
function DD__Cower()
	if DD__HaveMana(20) and DD__SpellReady(DOCDRUID[80]) then return DD__CastSpell(DOCDRUID[80]);
	else return false; end
end
function DD__TigersFury()
	if DD__HaveMana(30) then return DD__CastSpell(DOCDRUID[81]);
	else return false; end
end

function DD__FaerieFire_AllShapes()
	if DD__PlayerIs("cat") or DD__PlayerIs("bear") then return DD__FeralFaerieFire();
	elseif DD__PlayerIs("travel") or DD__PlayerIs("water") then return false;
	else return DD__NormalFaerieFire(); end
end
function DD__NormalFaerieFire()
	DoctorDruid_Update();
	if DD__SpellRank.FaerieFireRank>0 then
		local spellrank = DD__SpellRank.FaerieFireRank;
		while spellrank>0 and UnitMana("player")<ATTR__FaerieFire[spellrank].mana do spellrank = spellrank - 1; end
		if spellrank>0 then DD__Timer.LastFaerieFire = GetTime(); return DD__CastSpell(DOCDRUID[199],DD__SpellRank.FaerieFireRank);
		else return false; end
	else return false; end
end
function DD__FeralFaerieFire()
	if DD__SpellRank.FaerieFireTRank>0 then DD__Timer.LastFaerieFire = GetTime(); return DD__CastSpell(DOCDRUID[88],DD__SpellRank.FaerieFireTRank);
	else return false; end
end

function DD__Taunt()
	return DD__CastSpell(DOCDRUID[114]);
end
function DD__Maul()
	if DD__HaveMana(15 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[147])) then return DD__CastSpell(DOCDRUID[115]);
	else return false; end
end
function DD__Swipe()
	if DD__HaveMana(20 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[147])) then return DD__CastSpell(DOCDRUID[116]);
	else return false; end
end
function DD__DemoRoar()
	if DD__HaveMana(10) then return DD__CastSpell(DOCDRUID[117]);
	else return false; end
end
function DD__Enrage()
	return DD__CastSpell(DOCDRUID[120]);
end
function DD__FerralCharge()
	if DD__HaveMana(5) then return DD__CastSpell(DOCDRUID[119]);
	else return false; end
end
function DD__Bash()
	if DD__HaveMana(10) then return DD__CastSpell(DOCDRUID[118]);
	else return false; end
end
function DD__ChallRoar()
	if DD__HaveMana(15) then return DD__CastSpell(DOCDRUID[121]);
	else return false; end
end
function DD__FrenziedRegeneration() -- Den Namen dieser Funktion widme ich den drei Gewittern vom 20.07.2006, die die 37�C etwas runtergek�hlt haben! :-)
	return DD__CastSpell(DOCDRUID[129]);
end

function DD__BearExchange()
	DoctorDruid_Update();
	if rDD("bear_keyexchange")==true then
		wDD("bear_keyexchange",false);
		DD__Print(DOCDRUID[213]);
	else
		wDD("bear_keyexchange",true);
		DD__Print(DOCDRUID[212]);
	end
end

function DD__BearAttack(key)
	if not rDD("activateferal") then DD__SetupWindow(1); return; end
	DoctorDruid_Update();
	if not DD__PlayerIs("bear") and UnitExists("target") then return DD__NormalFaerieFire(); end

	local fired = DD__TargetHasDebuff("Spell_Nature_FaerieFire");
	local roared = DD__TargetHasDebuff("Ability_Druid_DemoralizingRoar");
	local pvp = UnitIsPlayer("target");
	local rage = UnitMana("player");
	local enemyhastarget = UnitExists("targettarget") and not UnitIsUnit("target","targettarget");
	local enemyhealth = UnitHealth("target") / UnitHealthMax("target");
	local enemyhealthlimit = 0.15; if UnitLevel("target")==-1 then enemyhealthlimit = 0.05; end
	local enemyhasothertarget = enemyhastarget and not UnitIsUnit("player","targettarget");
	local _,targetstarget = UnitClass("targettarget"); local tauntmob = true;

	if rDD("notauntifwarrior")==true and targetstarget=="WARRIOR" then tauntmob = false; end

	if DD__instanceInfo() then
		enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / (DD__instanceInfo().lvlmax + DD__instanceInfo().diff);
	else
		if UnitLevel("target")==-1 then
			enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / (UnitLevel("player")+10);
		else
			enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / UnitLevel("target");
		end
	end
	enemyhealthlimit = floor(100 * enemyhealthlimit) / 100;

	if rDD("bear_keyexchange")==true then if key==2 then key = 4; elseif key==4 then key = 2; end end
	if rDD("bear_autoassist")==true and UnitExists("target") and UnitIsFriend("player","target") and UnitIsEnemy("player","targettarget") then DD__AssistTarget(); end
	if rDD("lostaggro_taunt") and not pvp and tauntmob and enemyhasothertarget then DD__Taunt(); SpellStopCasting(); end

	if key==1 then 
		enemyhealthlimit = enemyhealthlimit * 2; if enemyhealthlimit>0.75 then enemyhealthlimit = 0.75; end
		if (not DD__InstantCast() or (DD__InstantCast() and not CheckInteractDistance("target",3))) and not DD__TargetIs("target","totem") then
			if enemyhealth>enemyhealthlimit and DD__SpellRank.FaerieFireTRank>0 and DD__TryFire2<3 and not fired then
				DD__TryFire = DD__TryFire + 1; if DD__TryFire>9 then DD__TryFire = 0; DD__TryFire2 = DD__TryFire2 + 1; end
				if DD__TryFire<2 then if DD__FeralFaerieFire() then DD__Timer.LastFaerieFire = GetTime(); SpellStopCasting(); end end
			elseif fired then
				DD__TryFire = 0; DD__TryFire2 = 0;
			end
		end
		if not DD__InstantCast() and not DD__TargetIs("target","totem") then
			if enemyhealth>enemyhealthlimit and DD__TryRoar2<3 and not roared then
				if DD__TryRoar>9 then DD__TryRoar = 0; DD__TryRoar2 = DD__TryRoar2 + 1; end
				if DD__TryRoar<2 then
					if DD__DemoRoar() then
						DD__Timer.LastDemoRoar = GetTime();
						DD__TryRoar = DD__TryRoar + 1;
						SpellStopCasting();
					end
				else
					DD__TryRoar = DD__TryRoar + 1;
				end
			elseif roared then
				DD__TryRoar = 0; DD__TryRoar2 = 0;
			end
		end
		if DD__Maul() then return; end

	elseif key==2 then
		if (not DD__InstantCast() or (DD__InstantCast() and not CheckInteractDistance("target",3))) and not DD__TargetIs("target","totem") then
			if enemyhealth>enemyhealthlimit and DD__SpellRank.FaerieFireTRank>0 and DD__TryFire2<3 and not fired then
				DD__TryFire = DD__TryFire + 1; if DD__TryFire>9 then DD__TryFire = 0; DD__TryFire2 = DD__TryFire2 + 1; end
				if DD__TryFire<2 then if DD__FeralFaerieFire() then DD__Timer.LastFaerieFire = GetTime(); SpellStopCasting(); end end
			elseif fired then
				DD__TryFire = 0; DD__TryFire2 = 0;
			end
		end
		if not DD__InstantCast() and not DD__TargetIs("target","totem") then
			if enemyhealth>enemyhealthlimit and DD__TryRoar2<3 and not roared then
				if DD__TryRoar>9 then DD__TryRoar = 0; DD__TryRoar2 = DD__TryRoar2 + 1; end
				if DD__TryRoar<2 then
					if DD__DemoRoar() then
						DD__Timer.LastDemoRoar = GetTime();
						DD__TryRoar = DD__TryRoar + 1;
						SpellStopCasting();
					end
				else
					DD__TryRoar = DD__TryRoar + 1;
				end
			elseif roared then
				DD__TryRoar = 0; DD__TryRoar2 = 0;
			end
			if enemyhealth>enemyhealthlimit and DD__SpellRank.FaerieFireTRank>0 and not fired then DD__FeralFaerieFire(); SpellStopCasting(); end
		end
		if DD__Swipe() then return; end

	elseif key==3 then
		if rDD("allow_enrage") and not UnitAffectingCombat("player") then if DD__Enrage() then return; end end 
		if rDD("allow_enrage") and UnitAffectingCombat("player") then
			if (rDD("allow_challroar") and rage<15)
			or (rDD("allow_bash") and rage<10)
			or (rDD("allow_charge") and rage<5)
			then DD__Enrage(); SpellStopCasting(); end
		end
		if rDD("allow_heal") and not DD__GlobalCooldown() and UnitMana("player")>=70 and (UnitHealth("player")/UnitHealthMax("player"))<=70 then if DD__FrenziedRegeneration() then return; end end
		if rDD("allow_challroar") and not DD__TargetIs("target","totem") and not DD__GlobalCooldown() and not pvp then if DD__ChallRoar() then SpellStopCasting(); end end
		if rDD("allow_charge") and not DD__GlobalCooldown() then if DD__FerralCharge() then SpellStopCasting(); end end
		if rDD("allow_bash") and not DD__TargetIs("target","totem") and not DD__GlobalCooldown() then if DD__Bash() then SpellStopCasting(); end end
		if rDD("allow_enrage") and UnitAffectingCombat("player") and not DD__GlobalCooldown() then DD__Enrage(); end
		return;

	elseif key==4 then
		if ((not pvp and DD__SpellRank.FaerieFireTRank>0 and ((GetTime()-DD__Timer.LastFaerieFire)>=6 or enemyhasothertarget))  or  (pvp and not fired)) and not DD__TargetIs("target","totem") then
			if DD__FeralFaerieFire() then DD__Timer.LastFaerieFire = GetTime(); SpellStopCasting(); end
		end
		if rage>=70 then
			DD__Maul();
			if (GetTime()-DD__Timer.LastDemoRoar)>5 then if DD__DemoRoar() then DD__Timer.LastDemoRoar = GetTime(); SpellStopCasting(); end end
			if DD__Swipe() then return; end
		else
			if DD__Timer.SwipeRoarCount>-5 or DD__InstantCast() then
				if rage>=25 then DD__Maul(); end
				if DD__Swipe() and not DD__InstantCast() then DD__Timer.SwipeRoarCount = DD__Timer.SwipeRoarCount - 2; return; end
				SpellStopCasting();
			end
			if DD__Timer.SwipeRoarCount<5 then
				if (not pvp and ((GetTime()-DD__Timer.LastDemoRoar)>5 or enemyhasothertarget or DD__Timer.SwipeRoarCount<-4))  or  (pvp and not roared) then
					if DD__DemoRoar() then DD__Timer.LastDemoRoar = GetTime(); DD__Timer.SwipeRoarCount = DD__Timer.SwipeRoarCount + 5; return; end
				end
			end
		end
	end

	if rDD("always_taunt") and not pvp then if DD__Taunt() then return; end end
end

function DD__CatAttack(behind,noearlyfinishers)
	if not rDD("activateferal") then DD__SetupWindow(1); return; end
	DoctorDruid_Update();
	if not DD__PlayerIs("cat") and UnitExists("target") then return DD__NormalFaerieFire(); end
	--if (UnitIsFriend("player", "target")) then return end

	-- Wenn Klaue noch nicht bereit ist, sind auch alle anderen Katzenangriffe noch nicht bereit: Global Cooldown.
	-- Und wenn der Global Cooldown insofern noch aktiv ist, wird hier gar nichts gemacht.
	--if not DD__SpellReady(DOCDRUID[78]) then return; end

	if UnitIsDead("target") or not UnitExists("target") then
		DD__ResetTimer();
	else
		combatactive = 1;
	end

	local energy = UnitMana("player");
	local prowling = DD__UnitHasBuff("player", "Ability_Ambush");
	local unraked = not DD__TargetHasDebuff("Ability_Druid_Disembowel");
	local unfired = not DD__TargetHasDebuff("Spell_Nature_FaerieFire");
	local combo_points = GetComboPoints();
	local in_group = UnitExists("party1") or (GetNumRaidMembers() > 0);
	local pvp = UnitIsPlayer("target");
	local enemyhealthlimit = 0.15; if UnitLevel("target")==-1 then enemyhealthlimit = 0.05; end
	local allowtf = true;
	local ripORbite,rakeORclaw;

	if DD__instanceInfo() then
		enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / (DD__instanceInfo().lvlmax + DD__instanceInfo().diff);
	else
		if UnitLevel("target")==-1 then
			enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / (UnitLevel("player")+10);
		else
			enemyhealthlimit = enemyhealthlimit * UnitLevel("player") / UnitLevel("target");
		end
	end
	enemyhealthlimit = floor(100 * enemyhealthlimit) / 100;

	timeto_kill = DD__TimeToKill();
	local energyperclaw = 40 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[144]);
	local timeto_finisher = max(((5 - combo_points) * energyperclaw - energy) / 10 / (1 + DD__TalentRank(2,11) / 10), (5 - combo_points) * 2) + 1;
	local will_not_finish = timeto_finisher > timeto_kill;

	if rDD("cat_autoassist")==true and UnitExists("target") and UnitIsFriend("player","target") and UnitIsEnemy("player","targettarget") then DD__AssistTarget(); end

	if not DD__InstantCast() and not behind and not UnitAffectingCombat("target") and UnitExists("target") and not CheckInteractDistance("target",1) and unfired and DD__SpellRank.FaerieFireTRank>0 and DD__SpellReady(DOCDRUID[88]) then
		if DD__FeralFaerieFire() then return; end
		allowtf = false;
	end

	if rDD("agro_cower") and not prowling and not pvp and in_group and behind and UnitIsUnit("player", "targettarget") then
		ClearTarget();
		TargetLastTarget();
		if DD__Cower() then return; end
	end

	if rDD("always_cower") and energy<50 and not pvp then
		DD__Cower();
		SpellStopCasting();
	end

	if allowtf and not DD__UnitHasBuff("player","Ability_Mount_JungleTiger") then
		if behind and prowling and rDD("tf_opener") and energy>=90 then
			if pvp and rDD("tf_opener_notinpvp") then
				allowtf = false;
			end
			if allowtf then
				DD__TigersFury();
				if not rDD("tf_opener_atonce") then return; end
				SpellStopCasting();
			end
		elseif ((combo_points==5 or will_not_finish) and rDD("tf_finisher") and energy>=65)
		or ((rDD("tf_infight_pve") or (pvp and rDD("tf_infight_pvp"))) and not behind and UnitAffectingCombat("player") and timeto_kill>20 and (GetTime()-DD__Timer.LastTFury)>20 and combo_points<5) then
			if pvp and energy>=65 and (combo_points==5 or will_not_finish) and not rDD("tf_finisher_notinpvp") then
				allowtf = false;
			end
			if allowtf then
				DD__TigersFury();
				DD__Timer.LastTFury = GetTime();
				if (prowling and behind)
				or ((combo_points==5 or will_not_finish) and rDD("tf_finisher") and energy>=65) then
					return;
				end
				SpellStopCasting();
			end
		end
	end

	if will_not_finish and timeto_kill<3 and combo_points>1 and not noearlyfinishers then
		if rDD("finisher")=="both" or rDD("finisher")=="neverdot" then
			if DD__FerociousBite() then DD__AttackCount = DD__AttackCount + 1; return; end
		elseif rDD("finisher")=="dotonly" then
			if DD__Rip() then DD__AttackCount = DD__AttackCount + 1; return; end
		end
	end

	if prowling and behind then
		if rDD("opener")=="auto" then
			if in_group then
				if DD__Pounce() then DD__AttackCount = DD__AttackCount + 1; return; end
			else
				if DD__Ravage() then DD__AttackCount = DD__AttackCount + 1; return; end
			end

		elseif rDD("opener")=="pounce" then
			if DD__Pounce() then DD__AttackCount = DD__AttackCount + 1; return; end

		elseif rDD("opener")=="ravage" then
			if DD__Ravage() then DD__AttackCount = DD__AttackCount + 1; return; end
		end
	end

	if combo_points==5 then
		if rDD("finisher")=="dotonly" then
			if DD__Rip() then DD__AttackCount = DD__AttackCount + 1; return; end
		elseif rDD("finisher")=="neverdot" then
			if DD__FerociousBite() then DD__AttackCount = DD__AttackCount + 1; return; end
		else
			local creaturetype = UnitCreatureType("target"); if not creaturetype then creaturetype = ""; end
			if DD__TryDOT>2 or timeto_kill<11 or creaturetype==DOCDRUID[181] then
				ripORbite = DD__FerociousBite();
			else
				ripORbite = DD__Rip();
			end
			if ripORbite then
				DD__AttackCount = DD__AttackCount + 1; DD__TryDOT = DD__TryDOT + 1;
				if DD__TryDOT>64 then DD__TryDOT = 0; end
				return;
			end
		end
	end

	if not behind and unfired and (UnitHealth("target")/UnitHealthMax("target"))>enemyhealthlimit and DD__SpellRank.FaerieFireTRank>0 and DD__SpellReady(DOCDRUID[88]) and UnitAffectingCombat("player") and DD__TryFire2<3 then
		if (energy<energyperclaw)
		or (energy<60 and (not unraked or DD__TryDOT>2))
		or (UnitHealth("target")>60 and energy<80) then
			if DD__TryFire>9 then DD__TryFire = 0; DD__TryFire2 = DD__TryFire2 + 1; end
			if DD__TryFire<2 then
				if DD__FeralFaerieFire() then DD__TryFire = DD__TryFire + 1; return; end
			else
				DD__TryFire = DD__TryFire + 1;
			end
		end
	else
		DD__TryFire = 0; DD__TryFire2 = 0;
	end

	if behind then
		if DD__Shred() then DD__AttackCount = DD__AttackCount + 1; return; end
	else
		if rDD("catstandard")=="both" then
			local creaturetype = UnitCreatureType("target"); if not creaturetype then creaturetype = ""; end
			if unraked and timeto_kill>8 and creaturetype~=DOCDRUID[181] then
				if DD__TryDOT<3 then
					rakeORclaw = DD__Rake();
				else
					rakeORclaw = DD__Claw(); if not rakeORclaw and rDD("rakeafterclaw") then rakeORclaw = DD__Rake(); end
				end
				if rakeORclaw then
					DD__AttackCount = DD__AttackCount + 1; DD__TryDOT = DD__TryDOT + 1;
					if DD__TryDOT>64 then DD__TryDOT = 0; end
					return;
				end
			else
				rakeORclaw = DD__Claw(); if not rakeORclaw and rDD("rakeafterclaw") then rakeORclaw = DD__Rake(); end
				if rakeORclaw then DD__AttackCount = DD__AttackCount + 1; DD__TryDOT = 0; return; end
			end
		elseif rDD("catstandard")=="dotonly" then
			if DD__Rake() then DD__AttackCount = DD__AttackCount + 1; return; end
		elseif rDD("catstandard")=="neverdot" then
			if DD__Claw() then DD__AttackCount = DD__AttackCount + 1; DD__TryDOT = 0; return; end
		end
	end
end

function DD__CatForm_Prowl(prowlstoppable)
	if not rDD("activateferal") then DD__SetupWindow(1); return; end
	if not DD__PlayerIs("cat") and UnitExists("target") then return DD__NormalFaerieFire(); end
	DoctorDruid_Update();

	if UnitIsDead("target") or not UnitExists("target") then
		DD__ResetTimer();
	else
		combatactive = 1;
	end
	local energy = UnitMana("player");
	local combo_points = GetComboPoints();
	local timeto_kill = DD__TimeToKill();
	local energyperclaw = 40 - DD__TalentRank(2,1) - 3*logic2value(DD__Idol==DOCDRUID[144]);
	local timeto_finisher = max(((5 - combo_points) * energyperclaw - energy) / 10 / (1 + DD__TalentRank(2,11) / 10), (5 - combo_points) * 2) + 1;
	local will_not_finish = timeto_finisher > timeto_kill;
	local fight_text,fight_unit = "N/A","";

	if rDD("cat_autoassist")==true and UnitExists("target") and UnitIsFriend("player","target") and UnitIsEnemy("player","targettarget") then DD__AssistTarget(); end

	if UnitAffectingCombat("player") then
		if rDD("tf_prowl_finisher") and energy>=65 and not DD__UnitHasBuff("player","Ability_Mount_JungleTiger") then
			DD__TigersFury();
			SpellStopCasting();
		end
		if rDD("prowl_finisher")=="dotonly" then
			if DD__Rip() then DD__AttackCount = DD__AttackCount + 1; return; end
		elseif rDD("prowl_finisher")=="neverdot" then
			if DD__FerociousBite() then DD__AttackCount = DD__AttackCount + 1; return; end
		end
		return;
	end

	if DD__Prowl() then
		if UnitExists("target") then
			if rDD("tf_prowl_opener") and energy>=90 and not DD__UnitHasBuff("player","Ability_Mount_JungleTiger") then
				DD__TigersFury();
				DD__Timer.LastTFury = GetTime();
				SpellStopCasting();
			end
			if rDD("prowl_opener")=="ravage" then
				if DD__Ravage() then DD__AttackCount = DD__AttackCount + 1; return; end
			elseif rDD("prowl_opener")=="pounce" then
				if DD__Pounce() then DD__AttackCount = DD__AttackCount + 1; return; end
			end
		elseif prowlstoppable and (GetTime()-DD__Timer.ProwlTime)>=3 then
			DD__EndProwl();
		end
	else
		DD__CastSpell(DOCDRUID[38]);
		DD__Timer.ProwlTime = GetTime();
	end
end

function DD__AssistTarget()
	if UnitIsEnemy("player","target") then AssistUnit("target"); end
	ClearTarget();
	TargetLastTarget();
	AttackTarget();
end

function DD__ResetTimer()
	DD__start_health = UnitHealth("target");
	DD__start_time = GetTime();
	DD__TryDOT,DD__TryFire2,DD__AttackCount = 0,0,0;

	-- Ab hier nur f�rs B�rchen - wird alles nur zur�ckgesetzt, wenn der Spieler
	-- sich nicht im Kampf befindet, um die Tank-Situation auszuschlie�en.
	if not UnitAffectingCombat("player") or not DD__TryFire then
		DD__TryFire,DD__TryRoar,DD__TryRoar2,DD__Timer.SwipeRoarCount = 0,0,0,-4;
	end

	-- F�r Wucherwurzeln
	if not UnitAffectingCombat("player") then
		DD__Timer.WW_StartTime,DD__Timer.WW_Count = GetTime(),0;
	end
end

function DD__ResetTimer2()
	-- F�r Wucherwurzeln
	DD__Timer.WW_StartTime,DD__Timer.WW_Count = GetTime(),0;
end

function DD__TimeToKill()
	local remaining_health = UnitHealth("target");
	local elapsed_health = DD__start_health - remaining_health;
	local elapsed_time = GetTime() - DD__start_time;
	local dps, time_to_kill;
	if elapsed_time<3 then
		return 600;
	else
		dps = elapsed_health / elapsed_time;
	end
	if dps==0 then
		return 600;
	else
		time_to_kill = remaining_health/dps - 0.5;
		if time_to_kill<0 then time_to_kill = 0; end
	end

	return time_to_kill;
end

function DD__BuffTimeLeft(buff)
	local i = 0;
	while GetPlayerBuffTexture(i) do
		current = GetPlayerBuffTexture(i);
		if (string.find(current, buff)) then
			return GetPlayerBuffTimeLeft(i);
		end
		i = i + 1;
	end
	return 0;
end

function DD__UnitHasBuff(unit, buff)
	for i = 1,16 do
		current = UnitBuff(unit, i);
		if current==nil then return false; end
		if string.find(current,buff) then
			return true;
		end
	end
	return false;
end

function DD__TargetHasDebuff(debuff)
	for i = 1,16 do
		current = UnitDebuff("target",i);
		if current==nil then return false; end
		if string.find(current,debuff) then return true; end
	end
	return false;
end

function DD__TalentRank(tab, talent)
	local _,_,_,_,rank = GetTalentInfo(tab,talent);
	return rank;
end		

function logic2value(value)
	if value==true then return 1; else return 0; end
end

function logic2str(condition,yes,no)
	if condition then return yes; else if no then return no; else return ""; end end
end

function DD__UseItem(search_string)
	for bag = 0,4 do
		for slot = 1,GetContainerNumSlots(bag) do
			local itemlink = GetContainerItemLink(bag,slot);
			if itemlink and string.find(itemlink,search_string) then
				UseContainerItem(bag,slot);
				return true;
			end
		end
	end
	return false;
end

function DD__FindItem(search_string)
	for bag = 0,4 do
		for slot = 1,GetContainerNumSlots(bag) do
			local itemlink = GetContainerItemLink(bag,slot);
			if itemlink and string.find(itemlink,search_string) then
				local _,itemcount = GetContainerItemInfo(bag,slot);
				if itemcount then return itemcount; end
				return false;
			end
		end
	end
	return false;
end

function DD__UnitName(unit)
	if unit then
		local a = UnitName(unit);
		return a;
	end
end

function DD__SetupWindow(wnd)
	DD__SaveOptionsValues();
	if not wnd then wnd = 0; end
	if DoctorDruid_Main then if wnd==1 then DoctorDruid_Main:Show(); DD__LastWindow = 1; else DoctorDruid_Main:Hide(); end end
	if DoctorDruid_General then if wnd==2 then DoctorDruid_General:Show(); DD__LastWindow = 2; else DoctorDruid_General:Hide(); end end
	if DoctorDruid_Healing then if wnd==3 then DoctorDruid_Healing:Show(); DD__LastWindow = 3; else DoctorDruid_Healing:Hide(); end end
	if DoctorDruid_Cat then if wnd==4 then DoctorDruid_Cat:Show(); DD__LastWindow = 4; else DoctorDruid_Cat:Hide(); end end
	if DoctorDruid_Bear then if wnd==5 then DoctorDruid_Bear:Show(); DD__LastWindow = 5; else DoctorDruid_Bear:Hide(); end end
	if DoctorDruid_Balance then if wnd==6 then DoctorDruid_Balance:Show(); DD__LastWindow = 6; else DoctorDruid_Balance:Hide(); end end
	if DoctorDruid_Defaults then if wnd==7 then DoctorDruid_Defaults:Show(); DD__LastWindow = 7; else DoctorDruid_Defaults:Hide(); end end
	if DoctorDruid_HealStats then if wnd==8 then DoctorDruid_HealStats:Show(); DD__LastWindow = 8; else DoctorDruid_HealStats:Hide(); end end
end

function DD__SaveOptionsValues()
	if DD__LastWindow==2 then
		if not DD_OutputTextTo:GetNumber() then
			DD_OutputTextTo:SetNumber(0);
		else
			if DD_OutputTextTo:GetNumber()<1 then DD_OutputTextTo:SetNumber(0);
			elseif DD_OutputTextTo:GetNumber()>15 then DD_OutputTextTo:SetNumber(15);
			end
		end
		wDD("outputtextto",DD_OutputTextTo:GetNumber());

	elseif DD__LastWindow==6 then
		if not DD_RootsInPVE:GetNumber() then
			DD_RootsInPVE:SetNumber(0);
		else
			if DD_RootsInPVE:GetNumber()<0 then DD_RootsInPVE:SetNumber(0);
			elseif DD_RootsInPVE:GetNumber()>6 then DD_RootsInPVE:SetNumber(6);
			end
		end
		wDD("rootrank_pve",DD_RootsInPVE:GetNumber());
		if not DD_RootsInPVP:GetNumber() then
			DD_RootsInPVP:SetNumber(0);
		else
			if DD_RootsInPVP:GetNumber()<0 then DD_RootsInPVP:SetNumber(0);
			elseif DD_RootsInPVP:GetNumber()>6 then DD_RootsInPVP:SetNumber(6);
			end
		end
		wDD("rootrank_pvp",DD_RootsInPVP:GetNumber());
	end
end

function DD__SetText(textid,suffix) DD__SetText2(DOCDRUID[textid],suffix); end
function DD__SetText2(text,suffix) if suffix==nil then suffix = "Text"; end getglobal(this:GetName()..suffix):SetText(text); end

DD__Print(DOCDRUID_TITLE.." "..DOCDRUID_VERSION);
