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
	[<tfc:ore/native_copper/granite>, <tfc:ore/native_copper/diorite>, <tfc:ore/native_copper/gabbro>, <tfc:ore/native_copper/shale>, 
	<tfc:ore/native_copper/claystone>, <tfc:ore/native_copper/rocksalt>, <tfc:ore/native_copper/limestone>, <tfc:ore/native_copper/conglomerate>, 
	<tfc:ore/native_copper/dolomite>, <tfc:ore/native_copper/chert>, <tfc:ore/native_copper/chalk>, <tfc:ore/native_copper/rhyolite>, <tfc:ore/native_copper/basalt>, 
	<tfc:ore/native_copper/andesite>, <tfc:ore/native_copper/dacite>, <tfc:ore/native_copper/quartzite>, <tfc:ore/native_copper/slate>, <tfc:ore/native_copper/phyllite>,
	<tfc:ore/native_copper/schist>, <tfc:ore/native_copper/gneiss>, <tfc:ore/native_copper/marble>],
} as IItemStack[][IOreDictEntry];

for oredictentry, itemstackarray in addoreditcts {
	for item in itemstackarray {
		//oreDictEnt.add(IItemStack... item_items);
		oredictentry.add(item);
	}
}
