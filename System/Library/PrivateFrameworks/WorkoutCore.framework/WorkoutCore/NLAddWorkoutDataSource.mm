@interface NLAddWorkoutDataSource
+ (id)NLAddWorkoutAllSortedRowsIsWheelchairUser:(BOOL)user supportsPairedWatchFeatures:(BOOL)features supportsExternalHeartRateSensorFeatures:(BOOL)sensorFeatures;
+ (id)addWorkoutPopularRows:(int64_t)rows;
@end

@implementation NLAddWorkoutDataSource

+ (id)addWorkoutPopularRows:(int64_t)rows
{
  v21 = *MEMORY[0x277D85DE8];
  v19[3] = self;
  v19[2] = a2;
  v19[1] = rows;
  v19[0] = _NLPopularAddWorkoutTypes(rows);
  location = 0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v19[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v10);
      v3 = [WOStandardWorkoutAddWorkoutRow alloc];
      v14 = [(WOStandardWorkoutAddWorkoutRow *)v3 initWithActivityType:v16];
      if ([v16 identifier] == 3000)
      {
        auxiliaryTypeIdentifier = [v16 auxiliaryTypeIdentifier];
        if (auxiliaryTypeIdentifier == *MEMORY[0x277CCE1E0])
        {
          objc_storeStrong(&location, v14);
        }
      }

      [v17 addObject:v14];
      objc_storeStrong(&v14, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  *&v5 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  [v17 sortUsingComparator:{&__block_literal_global, v5}];
  if (location)
  {
    [v17 removeObject:location];
    [v17 insertObject:location atIndex:0];
  }

  v7 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);

  return v7;
}

uint64_t __48__NLAddWorkoutDataSource_addWorkoutPopularRows___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] localizedTitle];
  v5 = [v8 localizedTitle];
  v7 = [v6 compare:? options:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)NLAddWorkoutAllSortedRowsIsWheelchairUser:(BOOL)user supportsPairedWatchFeatures:(BOOL)features supportsExternalHeartRateSensorFeatures:(BOOL)sensorFeatures
{
  v61 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v56 = a2;
  userCopy = user;
  featuresCopy = features;
  sensorFeaturesCopy = sensorFeatures;
  otherWorkoutActivityTypes = [MEMORY[0x277D0A810] otherWorkoutActivityTypes];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](otherWorkoutActivityTypes);
  v35 = [obj countByEnumeratingWithState:__b objects:v60 count:16];
  if (v35)
  {
    v31 = *__b[2];
    v32 = 0;
    v33 = v35;
    while (1)
    {
      v30 = v32;
      if (*__b[2] != v31)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(__b[1] + 8 * v32);
      integerValue = [v50 integerValue];
      v28 = v51;
      v29 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:integerValue isIndoor:0 metadata:0];
      [v28 addObject:?];
      *&v5 = MEMORY[0x277D82BD8](v29).n128_u64[0];
      ++v32;
      if (v30 + 1 >= v33)
      {
        v32 = 0;
        v33 = [obj countByEnumeratingWithState:__b objects:v60 count:{16, v5}];
        if (!v33)
        {
          break;
        }
      }
    }
  }

  v6 = MEMORY[0x277D82BD8](obj);
  v47 = [MEMORY[0x277D0A810] optimizedActivityTypesWithIsWheelchairUser:userCopy isSwimmingSupported:MEMORY[0x20F2E82F0](v6)];
  v46 = [v51 arrayByAddingObjectsFromArray:v47];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(v43, 0, sizeof(v43));
  v26 = MEMORY[0x277D82BE0](v46);
  v27 = [v26 countByEnumeratingWithState:v43 objects:v59 count:16];
  if (v27)
  {
    v23 = *v43[2];
    v24 = 0;
    v25 = v27;
    while (1)
    {
      v22 = v24;
      if (*v43[2] != v23)
      {
        objc_enumerationMutation(v26);
      }

      v44 = *(v43[1] + 8 * v24);
      if ([MEMORY[0x277D0A810] shouldDisambiguateOnLocationType:{objc_msgSend(v44, "effectiveTypeIdentifier")}])
      {
        v21 = objc_alloc(MEMORY[0x277D0A810]);
        effectiveTypeIdentifier = [v44 effectiveTypeIdentifier];
        location = [v21 initWithActivityTypeIdentifier:effectiveTypeIdentifier isIndoor:{objc_msgSend(v44, "isIndoor") ^ 1}];
        if (([v46 containsObject:location] & 1) == 0)
        {
          [v45 addObject:location];
        }

        objc_storeStrong(&location, 0);
      }

      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [v26 countByEnumeratingWithState:v43 objects:v59 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  *&v7 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v17 = [v46 arrayByAddingObjectsFromArray:{v45, v7}];
  v41 = [v17 mutableCopy];
  *&v8 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v40 = [MEMORY[0x277D0A810] unsupportedActivityTypesWithIsWheelchairUser:userCopy isSwimmingSupported:1 supportsPairedWatchFeatures:featuresCopy supportsExternalHeartRateSensorFeatures:{sensorFeaturesCopy, v8}];
  [v41 removeObjectsInArray:v40];
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(v37, 0, sizeof(v37));
  v18 = MEMORY[0x277D82BE0](v41);
  v19 = [v18 countByEnumeratingWithState:v37 objects:v58 count:16];
  if (v19)
  {
    v14 = *v37[2];
    v15 = 0;
    v16 = v19;
    while (1)
    {
      v13 = v15;
      if (*v37[2] != v14)
      {
        objc_enumerationMutation(v18);
      }

      v38 = *(v37[1] + 8 * v15);
      v9 = [WOStandardWorkoutAddWorkoutRow alloc];
      v36 = [(WOStandardWorkoutAddWorkoutRow *)v9 initWithActivityType:v38];
      [v39 addObject:v36];
      objc_storeStrong(&v36, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v18 countByEnumeratingWithState:v37 objects:v58 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  *&v10 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  [v39 sortUsingComparator:{&__block_literal_global_302, v10}];
  v12 = MEMORY[0x277D82BE0](v39);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&otherWorkoutActivityTypes, 0);

  return v12;
}

uint64_t __136__NLAddWorkoutDataSource_NLAddWorkoutAllSortedRowsIsWheelchairUser_supportsPairedWatchFeatures_supportsExternalHeartRateSensorFeatures___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] localizedTitle];
  v5 = [v8 localizedTitle];
  v7 = [v6 localizedCaseInsensitiveCompare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

@end