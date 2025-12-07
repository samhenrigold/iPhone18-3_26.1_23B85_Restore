@interface HMAccessory(HMUAdditions)
+ (id)hmu_accessoriesFromAccessories:()HMUAdditions excludingStereoCompanionForAccessory:;
- (BOOL)hmu_isEndpoint;
- (uint64_t)hmu_isAppleTV;
- (uint64_t)hmu_isHomePod;
- (uint64_t)hmu_isPartOfHome:()HMUAdditions;
@end

@implementation HMAccessory(HMUAdditions)

- (BOOL)hmu_isEndpoint
{
  siriEndpointProfile = [self siriEndpointProfile];
  v2 = siriEndpointProfile != 0;

  return v2;
}

- (uint64_t)hmu_isHomePod
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)hmu_isAppleTV
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];
  return v3;
}

- (uint64_t)hmu_isPartOfHome:()HMUAdditions
{
  v4 = a3;
  home = [self home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  return v8;
}

+ (id)hmu_accessoriesFromAccessories:()HMUAdditions excludingStereoCompanionForAccessory:
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v41 = a4;
  home = [v41 home];
  v7 = home;
  if (home)
  {
    v36 = home;
    v37 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [home mediaSystems];
    v40 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v40)
    {
      v39 = *v51;
      while (2)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v50 + 1) + 8 * i);
          v10 = objc_opt_new();
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          components = [v9 components];
          v12 = [components countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v47;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v47 != v14)
                {
                  objc_enumerationMutation(components);
                }

                v16 = *(*(&v46 + 1) + 8 * j);
                role = [v16 role];
                if ([role type] == 1)
                {
                }

                else
                {
                  role2 = [v16 role];
                  type = [role2 type];

                  if (type != 2)
                  {
                    goto LABEL_19;
                  }
                }

                mediaProfile = [v16 mediaProfile];
                accessory = [mediaProfile accessory];

                if (accessory)
                {
                  uniqueIdentifier = [accessory uniqueIdentifier];
                  [v10 addObject:uniqueIdentifier];
                }
              }

              v13 = [components countByEnumeratingWithState:&v46 objects:v55 count:16];
            }

            while (v13);
          }

LABEL_19:

          uniqueIdentifier2 = [v41 uniqueIdentifier];
          v24 = [v10 containsObject:uniqueIdentifier2];

          if (v24)
          {
            uniqueIdentifier3 = [v41 uniqueIdentifier];
            [v10 removeObject:uniqueIdentifier3];

            v25 = objc_opt_new();
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v27 = v37;
            v28 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v43;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v43 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v42 + 1) + 8 * k);
                  uniqueIdentifier4 = [v32 uniqueIdentifier];
                  v34 = [v10 containsObject:uniqueIdentifier4];

                  if ((v34 & 1) == 0)
                  {
                    [v25 addObject:v32];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
              }

              while (v29);
            }

            v5 = v37;
            goto LABEL_33;
          }
        }

        v40 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v5 = v37;
    v25 = v37;
LABEL_33:
    v7 = v36;
  }

  else
  {
    v25 = v5;
  }

  return v25;
}

@end