#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Terrafirma Craft: Compad: Scanables :oredict");

//add oredicts
/*<ore:primalcraftingtable> : 
	[<primal:worktable_shelf:8>.withTag({type: "lacquer"}), <primal:worktable_slab:9>.withTag({type: "corypha"})],
*/

val addoreditcts = {
	<ore:oreblockTFCCopper> : 
	["tfc:ore/native_copper/"],
} as string[][IOreDictEntry];

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
			var itemstring = tfcitemstring + rockstrings;
			var itemstack = itemUtils.getItem(itemstring);
			//oreDictEnt.add(IItemStack... item_items);
			oredictentry.add(itemstack);
		}
	}
}

