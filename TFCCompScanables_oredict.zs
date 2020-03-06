#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Terrafirma Craft: Compad: Scanables :oredict");

//add oredicts
/*<ore:primalcraftingtable> : 
	[<primal:worktable_shelf:8>.withTag({type: "lacquer"}), <primal:worktable_slab:9>.withTag({type: "corypha"})],
*/
//all the ores, need to update oredict to reflect metals
val addoreditcts = {
	<ore:oreblockTFCCopper> : 
	["tfc:ore/native_copper/", "tfc:ore/malachite/", "tfc:ore/tetrahedrite/", ],

	<ore:oreblockTFCGold> : 
	["tfc:ore/native_gold/"],

	<ore:oreblockTFCPlatinum> : 
	["tfc:ore/native_platinum"],

	<ore:oreblockTFCIron> : 
	["tfc:ore/hematite/", "tfc:ore/magnetite/", "tfc:ore/limonite"],

	<ore:oreblockTFCSilver> : 
	["tfc:ore/native_silver/"],

	<ore:oreblockTFCTin> : 
	["tfc:ore/cassiterite"],

	<ore:oreblockTFCLead> : 
	["tfc:ore/galena/"],

	<ore:oreblockTFCBismuth> : 
	["tfc:ore/bismuthinite/"],

	<ore:oreblockTFCNickel> : 
	["tfc:ore/garnierite/"],

	<ore:oreblockTFCZinc> : 
	["tfc:ore/sphalerite/"],

	<ore:oreblockTFCCoal> : 
	["tfc:ore/bituminous_coal/"],

	<ore:oreblockTFCLignite> : 
	["tfc:ore/lignite/"],

	<ore:oreblockTFCKaolinite> : 
	["tfc:ore/kaolinite/"],

	<ore:oreblockTFCGypsum> : 
	["tfc:ore/gypsum/"],

	<ore:oreblockTFCSatinspar> : 
	["tfc:ore/satinspar/"],

	<ore:oreblockTFCSelenite> : 
	["tfc:ore/selenite/"],

	<ore:oreblockTFCGraphite> : 
	["tfc:ore/graphite/"],

	<ore:oreblockTFCKimberlite> : 
	["tfc:ore/kimberlite/"],

	<ore:oreblockTFCPetrifiedwood> : 
	["tfc:ore/petrified_wood/"],

	<ore:oreblockTFCSulfur> : 
	["tfc:ore/sulfur/"],

	<ore:oreblockTFCJet> : 
	["tfc:ore/jet/"],

	<ore:oreblockTFCMicrocline> : 
	["tfc:ore/microcline/"],

	<ore:oreblockTFCPitchblende> : 
	["tfc:ore/pitchblende/"],

	<ore:oreblockTFCCinnabar> : 
	["tfc:ore/cinnabar/"],

	<ore:oreblockTFCCryolite> : 
	["tfc:ore/cryolite/"],

	<ore:oreblockTFCSaltpeter> : 
	["tfc:ore/saltpeter/"],

	<ore:oreblockTFCSerpentine> : 
	["tfc:ore/serpentine/"],

	<ore:oreblockTFCSylvite> : 
	["tfc:ore/sylvite/"],

	<ore:oreblockTFCBorax> : 
	["tfc:ore/borax/"],

	<ore:oreblockTFCOlivine> : 
	["tfc:ore/olivine/"],

	<ore:oreblockTFCLapislazuli> : 
	["tfc:ore/lapis_lazuli/"],

	<ore:oreblockTFCArdite> : 
	["tfc:ore/native_ardite/"],

	<ore:oreblockTFCOsmium> : 
	["tfc:ore/native_osmium/"],

	<ore:oreblockTFCStibnite> : 
	["tfc:ore/stibnite/"],

	<ore:oreblockTFCBauxite> : 
	["tfc:ore/bauxite/"],

	<ore:oreblockTFCWolframite> : 
	["tfc:ore/wolframite/"],

	<ore:oreblockTFCCobaltite> : 
	["tfc:ore/cobaltite/"],

	<ore:oreblockTFCThorianite> : 
	["tfc:ore/thorianite/"],

	<ore:oreblockTFCChromite> : 
	["tfc:ore/chromite/"],

	<ore:oreblockTFCPyrolusite> : 
	["tfc:ore/pyrolusite/"],

	<ore:oreblockTFCMagnesite> : 
	["tfc:ore/magnesite/"],

	<ore:oreblockTFCBoron> : 
	["tfc:ore/boron/"],

	<ore:oreblockTFCSpodumene> : 
	["tfc:ore/spodumene/"],
} as string[][IOreDictEntry];

//all the rock types found in TFC, 
val rocktypes = [
	"granite",
	"diorite",
	"gabbro",
	"shale",
	"claystone",
	"rocksalt",
	"limestone",
	"conglomerate",
	"dolomite",
	"chert",
	"chalk",
	"rhyolite",
	"dolomite",
	"basalt",
	"andesite",
	"dacite",
	"quartzite",
	"slate",
	"phyllite",
	"schist",
	"gneiss",
	"marble",

] as string[];

for oredictentry, itemstackarray in addoreditcts {
	for tfcitemstring in itemstackarray {
		for rockstrings in rocktypes{
			//get the item string, combine with rock string to get item reference
			var itemstring = tfcitemstring + rockstrings;
			//getItem(location, @Optional meta);
			var itemstack = itemUtils.getItem(itemstring);
			//oreDictEnt.add(IItemStack... item_items);
			oredictentry.add(itemstack);
		}
	}
}

