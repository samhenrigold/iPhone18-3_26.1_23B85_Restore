@interface WFFitnessUIHelper
+ (BOOL)isWheelchairUser;
+ (id)activityTypeForLocalizedActivityName:(id)name;
+ (id)allActivityTypes;
+ (id)allActivityTypesIncludingWheelchairWorkouts:(BOOL)workouts includingSwimmingWorkouts:(BOOL)swimmingWorkouts;
+ (id)quantityTypesForActivityType:(id)type;
+ (id)timeUnits;
+ (void)preferredUnitsForActivityType:(id)type completion:(id)completion;
@end

@implementation WFFitnessUIHelper

+ (id)quantityTypesForActivityType:(id)type
{
  typeCopy = type;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{v4, 0}];
  if ([typeCopy identifier] != 13 || (objc_msgSend(typeCopy, "isIndoor") & 1) == 0)
  {
    identifier = [typeCopy identifier];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_ptr;
    v16 = get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_ptr;
    if (!get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_ptr)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_block_invoke;
      v12[3] = &unk_278C222B8;
      v12[4] = &v13;
      __get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_block_invoke(v12);
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKQuantityType *WFHKWorkoutDistanceTypeForActivityType(HKWorkoutActivityType)"];
      [currentHandler handleFailureInFunction:v11 file:@"WFFitnessUIHelper.m" lineNumber:22 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v8 = v7(identifier);
    if (v8)
    {
      [v5 addObject:v8];
    }
  }

  return v5;
}

+ (id)timeUnits
{
  v6[2] = *MEMORY[0x277D85DE8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v6[0] = minuteUnit;
  hourUnit = [MEMORY[0x277CCDAB0] hourUnit];
  v6[1] = hourUnit;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (void)preferredUnitsForActivityType:(id)type completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCD4D8];
  typeCopy = type;
  wf_shortcutsAppHealthStore = [v7 wf_shortcutsAppHealthStore];
  v10 = [self quantityTypesForActivityType:typeCopy];

  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__WFFitnessUIHelper_preferredUnitsForActivityType_completion___block_invoke;
  v14[3] = &unk_278C1BBF0;
  v16 = completionCopy;
  selfCopy = self;
  v15 = v10;
  v12 = completionCopy;
  v13 = v10;
  [wf_shortcutsAppHealthStore preferredUnitsForQuantityTypes:v11 completion:v14];
}

void __62__WFFitnessUIHelper_preferredUnitsForActivityType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "+[WFFitnessUIHelper preferredUnitsForActivityType:completion:]_block_invoke";
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch preferred units for quantity types: %{public}@", buf, 0x16u);
    }
  }

  v8 = MEMORY[0x277CBEB18];
  v9 = [*(a1 + 48) timeUnits];
  v10 = [v8 arrayWithArray:v9];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a1 + 32);
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

        v16 = [v5 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v15), v17}];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)isWheelchairUser
{
  v13 = *MEMORY[0x277D85DE8];
  wf_shortcutsAppHealthStore = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
  v8 = 0;
  v3 = [wf_shortcutsAppHealthStore wheelchairUseWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 wheelchairUse] == 2;
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "+[WFFitnessUIHelper isWheelchairUser]";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_ERROR, "%s Failed to fetch wheelchair use: %{public}@", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)activityTypeForLocalizedActivityName:(id)name
{
  nameCopy = name;
  v4 = [WFFitnessUIHelper allActivityTypesIncludingWheelchairWorkouts:1 includingSwimmingWorkouts:1];
  v5 = MEMORY[0x277CBEAC0];
  v6 = [v4 valueForKey:@"localizedName"];
  v7 = [v5 dictionaryWithObjects:v4 forKeys:v6];

  v8 = [v7 objectForKey:nameCopy];

  return v8;
}

+ (id)allActivityTypesIncludingWheelchairWorkouts:(BOOL)workouts includingSwimmingWorkouts:(BOOL)swimmingWorkouts
{
  swimmingWorkoutsCopy = swimmingWorkouts;
  workoutsCopy = workouts;
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v7 = [getFIUIWorkoutActivityTypeClass() optimizedActivityTypesWithIsWheelchairUser:workoutsCopy isSwimmingSupported:swimmingWorkoutsCopy];
  nonOptimizedActivityTypes = [getFIUIWorkoutActivityTypeClass() nonOptimizedActivityTypes];
  v9 = [objc_alloc(getFIUIWorkoutActivityTypeClass()) initWithActivityTypeIdentifier:53 isIndoor:0];
  v20[0] = v9;
  v10 = [objc_alloc(getFIUIWorkoutActivityTypeClass()) initWithActivityTypeIdentifier:54 isIndoor:0];
  v20[1] = v10;
  v11 = [objc_alloc(getFIUIWorkoutActivityTypeClass()) initWithActivityTypeIdentifier:55 isIndoor:0];
  v20[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  if (swimmingWorkoutsCopy)
  {
    v13 = [nonOptimizedActivityTypes arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    v13 = nonOptimizedActivityTypes;
  }

  v14 = v13;
  [v6 addObjectsFromArray:v7];
  [v6 addObjectsFromArray:v14];
  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"localizedName" ascending:1];
  v19 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v17 = [v6 sortedArrayUsingDescriptors:v16];

  return v17;
}

+ (id)allActivityTypes
{
  v2 = +[WFFitnessUIHelper isWheelchairUser];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getFIUIDeviceSupportsSwimmingSymbolLoc_ptr;
  v12 = getFIUIDeviceSupportsSwimmingSymbolLoc_ptr;
  if (!getFIUIDeviceSupportsSwimmingSymbolLoc_ptr)
  {
    v4 = FitnessUILibrary();
    v10[3] = dlsym(v4, "FIUIDeviceSupportsSwimming");
    getFIUIDeviceSupportsSwimmingSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [WFFitnessUIHelper allActivityTypesIncludingWheelchairWorkouts:v2 includingSwimmingWorkouts:v3()];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL WFFIUIDeviceSupportsSwimming(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"WFFitnessUIHelper.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end