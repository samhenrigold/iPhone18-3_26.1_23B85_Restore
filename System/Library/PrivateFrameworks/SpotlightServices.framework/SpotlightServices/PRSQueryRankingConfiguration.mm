@interface PRSQueryRankingConfiguration
+ (void)updateMailVIP:(id)p phoneFavorites:(id)favorites meEmailAddresses:(id)addresses;
@end

@implementation PRSQueryRankingConfiguration

+ (void)updateMailVIP:(id)p phoneFavorites:(id)favorites meEmailAddresses:(id)addresses
{
  v22 = *MEMORY[0x1E69E9840];
  pCopy = p;
  favoritesCopy = favorites;
  addressesCopy = addresses;
  updateVIPRankingQuery(pCopy);
  updatePhoneFavoritesQuery(favoritesCopy);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = pCopy;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v17 + 1) + 8 * v15) objectForKeyedSubscript:{@"emailAddresses", v17}];
        [v10 addObjectsFromArray:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  updateVIPList(v11, v10);
  updateMeEmailAddresses(addressesCopy);
}

@end