@interface ATXLaunchServicesHelper
+ (BOOL)bundleIsExtension:(id)extension;
+ (id)getGenreIdsForBundleId:(id)id remoteBundleIDMappings:(id)mappings;
+ (id)getGenreIdsForRecord:(id)record;
@end

@implementation ATXLaunchServicesHelper

+ (BOOL)bundleIsExtension:(id)extension
{
  v3 = MEMORY[0x277CC1E50];
  extensionCopy = extension;
  v5 = [[v3 alloc] initWithBundleIdentifier:extensionCopy error:0];

  return v5 != 0;
}

+ (id)getGenreIdsForBundleId:(id)id remoteBundleIDMappings:(id)mappings
{
  v5 = MEMORY[0x277CC1E70];
  idCopy = id;
  v7 = [[v5 alloc] initWithBundleIdentifier:idCopy allowPlaceholder:1 error:0];

  v8 = 0;
  if (([v7 isLaunchProhibited] & 1) == 0)
  {
    v8 = [self getGenreIdsForRecord:v7];
  }

  return v8;
}

+ (id)getGenreIdsForRecord:(id)record
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = MEMORY[0x277CCABB0];
  iTunesMetadata = [recordCopy iTunesMetadata];
  v17 = [v4 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "genreIdentifier")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = recordCopy;
  iTunesMetadata2 = [recordCopy iTunesMetadata];
  subgenres = [iTunesMetadata2 subgenres];

  v8 = [subgenres countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(subgenres);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:{@"genreId", v17}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          if (!v10)
          {
            v10 = objc_opt_new();
          }

          [v10 addObject:v14];
        }
      }

      v9 = [subgenres countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = [MEMORY[0x277D42648] tupleWithFirst:v17 second:v10];

  return v15;
}

@end