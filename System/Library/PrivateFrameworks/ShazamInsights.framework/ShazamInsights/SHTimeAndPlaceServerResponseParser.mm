@interface SHTimeAndPlaceServerResponseParser
+ (id)regionAffinityGroupsFromServerData:(id)data error:(id *)error;
@end

@implementation SHTimeAndPlaceServerResponseParser

+ (id)regionAffinityGroupsFromServerData:(id)data error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v55];
  v6 = v55;
  v7 = v6;
  if (v5)
  {
    v34 = v6;
    v42 = [v5 objectForKeyedSubscript:@"geoHash"];
    array = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v35 = v5;
    obj = [v5 objectForKeyedSubscript:@"geoHashTrackPools"];
    v40 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v40)
    {
      v39 = *v52;
      v9 = *MEMORY[0x277CDC750];
      v36 = array;
      do
      {
        v10 = 0;
        do
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v10;
          v11 = *(*(&v51 + 1) + 8 * v10);
          v12 = [v11 objectForKeyedSubscript:@"trackPool"];
          v13 = [[SHAffinityGroup alloc] initWithType:1 cohesionLevel:1];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v48;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v48 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v47 + 1) + 8 * i);
                v20 = MEMORY[0x277CDC730];
                v57 = v9;
                v58 = v19;
                v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v22 = [v20 mediaItemWithProperties:v21];

                [(SHAffinityGroup *)v13 appendMediaItem:v22];
              }

              v16 = [v14 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v16);
          }

          v23 = [v11 objectForKeyedSubscript:@"geoHashSuffixes"];
          array2 = [MEMORY[0x277CBEB18] array];
          if ([v23 count])
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v25 = v23;
            v26 = [(SHRegion *)v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
            if (v26)
            {
              v27 = v26;
              v38 = v23;
              v28 = *v44;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v44 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v42, *(*(&v43 + 1) + 8 * j)];
                  v31 = [[SHRegion alloc] initWithGeohash:v30];
                  [array2 addObject:v31];
                }

                v27 = [(SHRegion *)v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
              }

              while (v27);
              array = v36;
              v23 = v38;
            }
          }

          else
          {
            v25 = [[SHRegion alloc] initWithGeohash:v42];
            [array2 addObject:v25];
          }

          v32 = [[SHTimeAndPlaceAffinityGroup alloc] initWithRegions:array2 affinityGroup:v13];
          [array addObject:v32];

          v10 = v41 + 1;
        }

        while (v41 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v40);
    }

    v7 = v34;
    v5 = v35;
  }

  else if (error)
  {
    [SHInsightsError errorWithCode:200 underlyingError:v6];
    *error = array = 0;
  }

  else
  {
    array = 0;
  }

  return array;
}

@end