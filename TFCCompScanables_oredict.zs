#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Terrafirma Craft: Compad: Scanables :oredict");

//add oredicts
/*<ore:primalcraftingtable> : 
	[<primal:worktable_shelf:8>.withTag({type: "lacquer"}), <primal:worktable_slab:9>.withTag({type: "corypha"})],
*/
val addoreditcts = {

} as IItemStack[][IOreDictEntry];

for oredictentry, itemstackarray in addoreditcts {
	for item in itemstackarray {
		//oreDictEnt.add(IItemStack... item_items);
		oredictentry.add(item);
	}
}
