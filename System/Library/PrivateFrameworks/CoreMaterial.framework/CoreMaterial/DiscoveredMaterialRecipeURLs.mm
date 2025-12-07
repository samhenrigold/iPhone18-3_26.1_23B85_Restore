@interface DiscoveredMaterialRecipeURLs
@end

@implementation DiscoveredMaterialRecipeURLs

void ___DiscoveredMaterialRecipeURLs_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
  v2 = [v1 URLsForMaterialRecipes];
  v3 = [v1 URLsForMaterialRecipeDescendants];
  v4 = [v2 arrayByAddingObjectsFromArray:?];

  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (([v0 containsObject:?] & 1) == 0)
        {
          [v0 addObject:?];
        }
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v10 = _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs;
  _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs = v0;
}

@end