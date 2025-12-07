@interface VCActionDonationFetcher
+ (BOOL)shouldKeepAction:(id)action forAppWithBundleIdentifier:(id)identifier filteringForTopLevel:(BOOL)level;
+ (BOOL)shouldKeepActionWithAppBundleIdentifierForDisplay:(id)display;
+ (id)atxClient;
+ (id)donationFromEvent:(id)event filteringForTopLevel:(BOOL)level;
+ (id)donationWithUUID:(id)d;
+ (id)fetchDonationsWithPredicate:(id)predicate limit:(unint64_t)limit filteringForTopLevel:(BOOL)level directAccess:(BOOL)access;
+ (id)fetchEventsWithPredicate:(id)predicate limit:(unint64_t)limit directAccess:(BOOL)access;
+ (id)filterDonations:(id)donations forApplicationBundleIdentifier:(id)identifier;
+ (id)isEligibleForPredictionPredicate;
+ (id)keyPathForStream:(id)stream;
+ (id)predicateForShortcutAvailabilityOptions:(unint64_t)options;
+ (id)streams;
+ (id)whitelistedDonationsWithOptions:(unint64_t)options;
+ (void)fetchDonationsForApplicationBundleIdentifier:(id)identifier limit:(unint64_t)limit filteringForTopLevel:(BOOL)level filteringForIsEligibleForPrediction:(BOOL)prediction filteringForRecent:(BOOL)recent completion:(id)completion;
+ (void)fetchDonationsForApplicationBundleIdentifier:(id)identifier limit:(unint64_t)limit shortcutAvailability:(unint64_t)availability completion:(id)completion;
+ (void)getPredicateForIntentsWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)getPredicateForUserActivitiesWithApplicationBundleIdentifier:(id)identifier filteringForIsEligibleForPrediction:(BOOL)prediction completionHandler:(id)handler;
+ (void)sourceAppIdentifierArrayForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation VCActionDonationFetcher

+ (id)filterDonations:(id)donations forApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = filterDonations_forApplicationBundleIdentifier__onceToken;
  donationsCopy = donations;
  if (v6 != -1)
  {
    dispatch_once(&filterDonations_forApplicationBundleIdentifier__onceToken, &__block_literal_global_120);
  }

  v8 = [filterDonations_forApplicationBundleIdentifier__bundleIdentifiersRequiringDisplayFilter containsObject:identifierCopy];
  v9 = MEMORY[0x1E696AE18];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke_2;
  v17 = &unk_1E7B00C00;
  v19 = v8;
  v18 = identifierCopy;
  v10 = identifierCopy;
  v11 = [v9 predicateWithBlock:&v14];
  v12 = [donationsCopy filteredArrayUsingPredicate:{v11, v14, v15, v16, v17}];

  return v12;
}

uint64_t __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1)
  {
    return 1;
  }

  v3 = [a2 sourceAppIdentifierForDisplay];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __74__VCActionDonationFetcher_filterDonations_forApplicationBundleIdentifier___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mobilephone", @"com.apple.facetime", @"com.apple.Passbook", @"com.apple.MobileSMS", 0}];
  v1 = filterDonations_forApplicationBundleIdentifier__bundleIdentifiersRequiringDisplayFilter;
  filterDonations_forApplicationBundleIdentifier__bundleIdentifiersRequiringDisplayFilter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)isEligibleForPredictionPredicate
{
  v2 = MEMORY[0x1E69979D0];
  isEligibleForPrediction = [MEMORY[0x1E6997948] isEligibleForPrediction];
  v4 = [v2 predicateForObjectsWithMetadataKey:isEligibleForPrediction andIntegerValue:1];

  return v4;
}

+ (id)donationWithUUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [MEMORY[0x1E69979D0] predicateForObjectWithUUID:dCopy];
  v6 = [self fetchEventsWithPredicate:v5 limit:1];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    stream = [firstObject stream];
    appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
    v10 = [stream isEqual:appIntentsStream];

    if (v10)
    {
      v11 = VCInteractionDonation;
LABEL_8:
      v20 = [[v11 alloc] initWithEvent:firstObject];
      goto LABEL_13;
    }

    stream2 = [firstObject stream];
    appActivityStream = [MEMORY[0x1E69979E8] appActivityStream];
    v19 = [stream2 isEqual:appActivityStream];

    if (v19)
    {
      v11 = VCUserActivityDonation;
      goto LABEL_8;
    }

    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [dCopy UUIDString];
      v22 = 136315650;
      v23 = "+[VCActionDonationFetcher donationWithUUID:]";
      v24 = 2112;
      v25 = uUIDString;
      v26 = 2112;
      v27 = firstObject;
      v14 = "%s Event with uuid (%@) is not of a supported type: %@";
      v15 = v12;
      v16 = 32;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [dCopy UUIDString];
      v22 = 136315394;
      v23 = "+[VCActionDonationFetcher donationWithUUID:]";
      v24 = 2112;
      v25 = uUIDString;
      v14 = "%s Event with uuid (%@) not found";
      v15 = v12;
      v16 = 22;
LABEL_11:
      _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_ERROR, v14, &v22, v16);
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

+ (void)getPredicateForIntentsWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E7B00BD8;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v8 = identifierCopy;
  v9 = handlerCopy;
  [self sourceAppIdentifierArrayForApplicationBundleIdentifier:v8 completionHandler:v10];
}

void __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__5659;
    v14 = __Block_byref_object_dispose__5660;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7B00B88;
    v9[4] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v11[5]];
    (*(v5 + 16))(v5, v6);

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69979D0] predicateForEventsWithSourceID:@"intents" bundleID:*(a1 + 32)];
    (*(v7 + 16))(v7, v8);
  }
}

uint64_t __99__VCActionDonationFetcher_getPredicateForIntentsWithApplicationBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69979D0] predicateForEventsWithSourceID:@"intents" bundleID:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (void)getPredicateForUserActivitiesWithApplicationBundleIdentifier:(id)identifier filteringForIsEligibleForPrediction:(BOOL)prediction completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke;
  v12[3] = &unk_1E7B00BB0;
  predictionCopy = prediction;
  v14 = handlerCopy;
  selfCopy = self;
  v13 = identifierCopy;
  v10 = handlerCopy;
  v11 = identifierCopy;
  [self sourceAppIdentifierArrayForApplicationBundleIdentifier:v11 completionHandler:v12];
}

void __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5659;
    v16 = __Block_byref_object_dispose__5660;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7B00B88;
    v11[4] = &v12;
    [v4 enumerateObjectsUsingBlock:v11];
    v5 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v13[5]];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v5 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValue:*(a1 + 32)];
  }

  if (*(a1 + 56) == 1 && [*(a1 + 48) shouldFilterDonationsForAppWithApplicationBundleIdentifier:*(a1 + 32)])
  {
    v6 = MEMORY[0x1E696AB28];
    v18[0] = v5;
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) isEligibleForPredictionPredicate];
    v18[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v10 = [v6 andPredicateWithSubpredicates:v9];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __142__VCActionDonationFetcher_getPredicateForUserActivitiesWithApplicationBundleIdentifier_filteringForIsEligibleForPrediction_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValue:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)whitelistedDonationsWithOptions:(unint64_t)options
{
  v60[4] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  if (options)
  {
    v59[0] = @"com.apple.mobilenotes";
    v59[1] = @"com.apple.podcasts";
    v60[0] = &unk_1F2931080;
    v60[1] = &unk_1F2931098;
    v59[2] = @"com.apple.Music";
    v59[3] = @"com.apple.weather";
    v60[2] = &unk_1F29310B0;
    v60[3] = &unk_1F29310C8;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:4];
    if ((options & 2) != 0)
    {
      v7 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.mobilenotes"];
      v8 = MEMORY[0x1E69979D0];
      intentClass = [MEMORY[0x1E6997990] intentClass];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 predicateForObjectsWithMetadataKey:intentClass andStringValue:v11];

      v13 = MEMORY[0x1E696AB28];
      v58[0] = v7;
      v58[1] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v15 = [v13 andPredicateWithSubpredicates:v14];

      v16 = MEMORY[0x1E69979D0];
      activityType = [MEMORY[0x1E6997948] activityType];
      v18 = [v16 predicateForObjectsWithMetadataKey:activityType andStringValue:@"com.apple.notes.activity.edit-note"];

      v19 = MEMORY[0x1E696AB28];
      v57[0] = v18;
      v57[1] = v7;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      v21 = [v19 andPredicateWithSubpredicates:v20];

      [v5 addObject:v15];
      [v5 addObject:v21];
    }

    if ((options & 8) != 0)
    {
      v34 = MEMORY[0x1E69979D0];
      intentClass2 = [MEMORY[0x1E6997990] intentClass];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v34 predicateForObjectsWithMetadataKey:intentClass2 andStringValue:v37];

      v39 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.podcasts"];
      v40 = MEMORY[0x1E696AB28];
      v56[0] = v38;
      v56[1] = v39;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      v42 = [v40 andPredicateWithSubpredicates:v41];

      [v5 addObject:v42];
      if ((options & 4) == 0)
      {
LABEL_6:
        if ((options & 0x20) == 0)
        {
LABEL_8:
          v29 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
          v30 = [self fetchDonationsWithPredicate:v29 limit:40 filteringForTopLevel:0 directAccess:0];
          array = [v30 array];

          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __59__VCActionDonationFetcher_whitelistedDonationsWithOptions___block_invoke;
          v52[3] = &unk_1E7B00B60;
          v53 = v6;
          v32 = v6;
          [array enumerateObjectsUsingBlock:v52];

          goto LABEL_10;
        }

LABEL_7:
        v22 = MEMORY[0x1E69979D0];
        intentClass3 = [MEMORY[0x1E6997990] intentClass];
        v24 = [v22 predicateForObjectsWithMetadataKey:intentClass3 andStringValue:@"WeatherIntent"];

        v25 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.weather"];
        v26 = MEMORY[0x1E696AB28];
        v54[0] = v24;
        v54[1] = v25;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
        v28 = [v26 andPredicateWithSubpredicates:v27];

        [v5 addObject:v28];
        goto LABEL_8;
      }
    }

    else if ((options & 4) == 0)
    {
      goto LABEL_6;
    }

    v43 = MEMORY[0x1E69979D0];
    intentClass4 = [MEMORY[0x1E6997990] intentClass];
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v47 = [v43 predicateForObjectsWithMetadataKey:intentClass4 andStringValue:v46];

    v48 = [MEMORY[0x1E69979D0] predicateForEventsWithBundleID:@"com.apple.Music"];
    v49 = MEMORY[0x1E696AB28];
    v55[0] = v47;
    v55[1] = v48;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v51 = [v49 andPredicateWithSubpredicates:v50];

    [v5 addObject:v51];
    if ((options & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  array = MEMORY[0x1E695E0F0];
LABEL_10:

  return array;
}

uint64_t __59__VCActionDonationFetcher_whitelistedDonationsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v5 = [v3 sourceAppIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 unsignedIntegerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v15 interaction];
    v11 = [v10 intent];
    [v11 setShortcutAvailability:v9];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = v15;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = [v15 userActivity];
    [v10 setShortcutAvailability:v9];
  }

  v13 = v15;
LABEL_11:

  return MEMORY[0x1EEE66BB8](isKindOfClass, v13);
}

+ (id)predicateForShortcutAvailabilityOptions:(unint64_t)options
{
  optionsCopy = options;
  if (options)
  {
    v4 = objc_opt_new();
    for (i = 0; i != 64; ++i)
    {
      if (((1 << i) & optionsCopy) != 0)
      {
        v6 = MEMORY[0x1E69979D0];
        shortcutAvailability = [MEMORY[0x1E6997990] shortcutAvailability];
        v8 = [v6 predicateForObjectsWithMetadataKey:shortcutAvailability andIntegerValue:1 << i];

        v9 = MEMORY[0x1E69979D0];
        shortcutAvailability2 = [MEMORY[0x1E6997948] shortcutAvailability];
        v11 = [v9 predicateForObjectsWithMetadataKey:shortcutAvailability2 andIntegerValue:1 << i];

        [v4 addObject:v8];
        [v4 addObject:v11];
      }
    }

    optionsCopy = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
  }

  return optionsCopy;
}

+ (void)fetchDonationsForApplicationBundleIdentifier:(id)identifier limit:(unint64_t)limit shortcutAvailability:(unint64_t)availability completion:(id)completion
{
  identifierCopy = identifier;
  if (availability)
  {
    completionCopy = completion;
    completionCopy2 = [self predicateForShortcutAvailabilityOptions:availability];
    v12 = [self fetchDonationsWithPredicate:completionCopy2 limit:limit filteringForTopLevel:0 directAccess:0];
    array = [v12 array];

    v14 = [self whitelistedDonationsWithOptions:availability];
    v15 = [array arrayByAddingObjectsFromArray:v14];
    v16 = [self filterDonations:v15 forApplicationBundleIdentifier:identifierCopy];

    completionCopy[2](completionCopy, v16);
  }

  else
  {
    v17 = *(completion + 2);
    completionCopy2 = completion;
    v17();
  }
}

+ (void)fetchDonationsForApplicationBundleIdentifier:(id)identifier limit:(unint64_t)limit filteringForTopLevel:(BOOL)level filteringForIsEligibleForPrediction:(BOOL)prediction filteringForRecent:(BOOL)recent completion:(id)completion
{
  predictionCopy = prediction;
  levelCopy = level;
  v65[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v26 = identifierCopy;
  if (identifierCopy)
  {
    v65[0] = identifierCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v12 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v13 = [v12 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v13)
    {
      v14 = *v60;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v12);
          }

          bundleIdentifier = [*(*(&v59 + 1) + 8 * i) bundleIdentifier];
          [v11 addObject:bundleIdentifier];
        }

        v13 = [v12 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v13);
    }
  }

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__5659;
  v57[4] = __Block_byref_object_dispose__5660;
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__5659;
  v55[4] = __Block_byref_object_dispose__5660;
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v31 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v17 = dispatch_group_create();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v11;
  v18 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v18)
  {
    v19 = *v52;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v51 + 1) + 8 * j);
        if (([v21 isEqualToString:@"com.apple.tv"] & 1) == 0)
        {
          if (!levelCopy || ([v21 hasPrefix:@"com.apple."] & 1) == 0)
          {
            dispatch_group_enter(v17);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke;
            v47[3] = &unk_1E7B00B08;
            v48 = v30;
            v50 = v57;
            v49 = v17;
            [self getPredicateForUserActivitiesWithApplicationBundleIdentifier:v21 filteringForIsEligibleForPrediction:predictionCopy completionHandler:v47];
          }

          dispatch_group_enter(v17);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_2;
          v43[3] = &unk_1E7B00B08;
          v44 = v31;
          v46 = v55;
          v45 = v17;
          [self getPredicateForIntentsWithApplicationBundleIdentifier:v21 completionHandler:v43];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v18);
  }

  v22 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_3;
  block[3] = &unk_1E7B00B30;
  v37 = v57;
  v38 = v55;
  recentCopy = recent;
  selfCopy = self;
  limitCopy = limit;
  v42 = levelCopy;
  v35 = v26;
  v36 = completionCopy;
  v23 = completionCopy;
  v24 = v26;
  dispatch_group_notify(v17, v22, block);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v4];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v4];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __165__VCActionDonationFetcher_fetchDonationsForApplicationBundleIdentifier_limit_filteringForTopLevel_filteringForIsEligibleForPrediction_filteringForRecent_completion___block_invoke_3(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:*(*(*(a1 + 48) + 8) + 40)];
  v3 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:*(*(*(a1 + 56) + 8) + 40)];
  v4 = MEMORY[0x1E696AB28];
  v19[0] = v2;
  v19[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v6 = [v4 orPredicateWithSubpredicates:v5];

  v7 = v6;
  v8 = v7;
  if (*(a1 + 80) == 1)
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [v9 dateByAddingUnit:16 value:-7 toDate:v10 options:0];

    v12 = [MEMORY[0x1E69979D0] predicateForEventsWithStartDateAfter:v11];
    v13 = MEMORY[0x1E696AB28];
    v18[0] = v7;
    v18[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v13 andPredicateWithSubpredicates:v14];
  }

  v15 = [*(a1 + 64) fetchDonationsWithPredicate:v8 limit:*(a1 + 72) filteringForTopLevel:*(a1 + 81)];
  v16 = [v15 array];

  v17 = [*(a1 + 64) filterDonations:v16 forApplicationBundleIdentifier:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (id)fetchDonationsWithPredicate:(id)predicate limit:(unint64_t)limit filteringForTopLevel:(BOOL)level directAccess:(BOOL)access
{
  accessCopy = access;
  levelCopy = level;
  v50 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v11 = getWFVoiceShortcutClientLogObject();
  v12 = os_signpost_id_generate(v11);

  v13 = getWFVoiceShortcutClientLogObject();
  v14 = v13;
  v35 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CoreDuetDonationFetch", "", buf, 2u);
  }

  spid = v12;

  v36 = predicateCopy;
  v15 = [self fetchEventsWithPredicate:predicateCopy limit:limit directAccess:accessCopy];
  v38 = objc_opt_new();
  v39 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    v19 = 0x1E7AFE000uLL;
    v37 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = [self donationFromEvent:v21 filteringForTopLevel:levelCopy];
        if (v23)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_18;
          }

          selfCopy = self;
          v25 = levelCopy;
          v26 = v19;
          interaction = [v23 interaction];
          intent = [interaction intent];
          intentId = [intent intentId];

          if (![v38 containsObject:intentId])
          {
            if (intentId)
            {
              [v38 addObject:intentId];
            }

            v19 = v26;
            levelCopy = v25;
            self = selfCopy;
            v18 = v37;
LABEL_18:
            [v39 addObject:v23];
            goto LABEL_19;
          }

          v30 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v46 = "+[VCActionDonationFetcher fetchDonationsWithPredicate:limit:filteringForTopLevel:directAccess:]";
            v47 = 2112;
            v48 = intentId;
            _os_log_impl(&dword_1B1DE3000, v30, OS_LOG_TYPE_INFO, "%s Ignoring duplicate donation for Intent Identifier %@", buf, 0x16u);
          }

          v19 = v26;
          levelCopy = v25;
          self = selfCopy;
          v18 = v37;
        }

LABEL_19:

        objc_autoreleasePoolPop(v22);
      }

      v17 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v17);
  }

  v31 = getWFVoiceShortcutClientLogObject();
  v32 = v31;
  if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v32, OS_SIGNPOST_INTERVAL_END, spid, "CoreDuetDonationFetch", "", buf, 2u);
  }

  return v39;
}

+ (id)fetchEventsWithPredicate:(id)predicate limit:(unint64_t)limit directAccess:(BOOL)access
{
  accessCopy = access;
  v38[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    v9 = MEMORY[0x1E69979D0];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    predicateCopy = [v9 predicateForEventsWithEndInDateRangeFrom:distantPast to:distantFuture];
  }

  v12 = getWFVoiceShortcutClientLogObject();
  v13 = os_signpost_id_generate(v12);

  v14 = getWFVoiceShortcutClientLogObject();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CoreDuetEventFetch", "", buf, 2u);
  }

  v16 = MEMORY[0x1E6997968];
  streams = [self streams];
  v18 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
  v38[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v20 = [v16 eventQueryWithPredicate:predicateCopy eventStreams:streams offset:0 limit:limit sortDescriptors:v19];

  if (accessCopy)
  {
    knowledgeStoreWithDirectReadOnlyAccess = [MEMORY[0x1E69979A0] knowledgeStoreWithDirectReadOnlyAccess];
    v22 = knowledgeStoreWithDirectReadOnlyAccess;
    v33 = 0;
    v23 = &v33;
    v24 = &v33;
  }

  else
  {
    knowledgeStoreWithDirectReadOnlyAccess = [MEMORY[0x1E69979A0] knowledgeStore];
    v22 = knowledgeStoreWithDirectReadOnlyAccess;
    v32 = 0;
    v23 = &v32;
    v24 = &v32;
  }

  v25 = [knowledgeStoreWithDirectReadOnlyAccess executeQuery:v20 error:{v24, v32, v33}];
  v26 = *v23;

  v27 = getWFVoiceShortcutClientLogObject();
  v28 = v27;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v28, OS_SIGNPOST_INTERVAL_END, v13, "CoreDuetEventFetch", "", buf, 2u);
  }

  if (v25)
  {
    v29 = v25;
  }

  else
  {
    v30 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "+[VCActionDonationFetcher fetchEventsWithPredicate:limit:directAccess:]";
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_1B1DE3000, v30, OS_LOG_TYPE_ERROR, "%s Failed to execute CoreDuet query: %@", buf, 0x16u);
    }
  }

  return v25;
}

+ (id)keyPathForStream:(id)stream
{
  streamCopy = stream;
  appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
  v5 = [streamCopy isEqual:appIntentsStream];

  if (v5)
  {
    keyPathForIntentsDataDictionary = [MEMORY[0x1E6997A68] keyPathForIntentsDataDictionary];
LABEL_5:
    v9 = keyPathForIntentsDataDictionary;
    goto LABEL_7;
  }

  appActivityStream = [MEMORY[0x1E69979E8] appActivityStream];
  v8 = [streamCopy isEqual:appActivityStream];

  if (v8)
  {
    keyPathForIntentsDataDictionary = [MEMORY[0x1E6997A68] keyPathForUserActivityDataDictionary];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (BOOL)shouldKeepActionWithAppBundleIdentifierForDisplay:(id)display
{
  displayCopy = display;
  atxClient = [self atxClient];
  v6 = [atxClient shouldPredictBundleIdForShortcuts:displayCopy action:@"_"];

  return v6;
}

+ (BOOL)shouldKeepAction:(id)action forAppWithBundleIdentifier:(id)identifier filteringForTopLevel:(BOOL)level
{
  levelCopy = level;
  identifierCopy = identifier;
  actionCopy = action;
  atxClient = [self atxClient];
  v11 = [atxClient shouldPredictAppBundleId:identifierCopy];

  atxClient2 = [self atxClient];
  LOBYTE(levelCopy) = [atxClient2 shouldPredictBundleIdForShortcuts:identifierCopy action:actionCopy forPrimaryShortcuts:levelCopy];

  return v11 & levelCopy;
}

+ (id)atxClient
{
  if (atxClient_onceToken != -1)
  {
    dispatch_once(&atxClient_onceToken, &__block_literal_global_5714);
  }

  v3 = atxClient_client;

  return v3;
}

uint64_t __36__VCActionDonationFetcher_atxClient__block_invoke()
{
  v0 = [(objc_class *)getATXClientClass() clientForConsumerType:13];
  v1 = atxClient_client;
  atxClient_client = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)donationFromEvent:(id)event filteringForTopLevel:(BOOL)level
{
  levelCopy = level;
  eventCopy = event;
  stream = [eventCopy stream];
  appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
  v9 = [stream isEqual:appIntentsStream];

  if (v9)
  {
    v10 = [[VCInteractionDonation alloc] initWithEvent:eventCopy];
    sourceAppIdentifierForDisplay = [(VCInteractionDonation *)v10 sourceAppIdentifierForDisplay];
    v12 = [self shouldKeepActionWithAppBundleIdentifierForDisplay:sourceAppIdentifierForDisplay];

    if (v12)
    {
      interaction = [(VCInteractionDonation *)v10 interaction];
      intent = [interaction intent];

      metadata = [eventCopy metadata];
      intentClass = [MEMORY[0x1E6997990] intentClass];
      stringValue = [metadata objectForKeyedSubscript:intentClass];

      source = [eventCopy source];
      bundleID = [source bundleID];

      v20 = MEMORY[0x1E695DFD8];
      atxClient = [self atxClient];
      approvedSiriKitIntents = [atxClient approvedSiriKitIntents];
      v23 = [v20 setWithArray:approvedSiriKitIntents];

      if (([intent _type] == 2 || objc_msgSend(v23, "containsObject:", stringValue)) && objc_msgSend(self, "shouldKeepAction:forAppWithBundleIdentifier:filteringForTopLevel:", stringValue, bundleID, levelCopy) && (-[VCInteractionDonation interaction](v10, "interaction"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "direction"), v24, v25 != 2))
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v26 = 0;
        if (([intent isGenericIntent] & 1) == 0 && (isKindOfClass & 1) == 0)
        {
          v26 = v10;
        }
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_9;
    }

    goto LABEL_14;
  }

  stream2 = [eventCopy stream];
  appActivityStream = [MEMORY[0x1E69979E8] appActivityStream];
  v29 = [stream2 isEqual:appActivityStream];

  if (v29)
  {
    v10 = [[VCUserActivityDonation alloc] initWithEvent:eventCopy];
    sourceAppIdentifierForDisplay2 = [(VCInteractionDonation *)v10 sourceAppIdentifierForDisplay];
    v31 = [self shouldKeepActionWithAppBundleIdentifierForDisplay:sourceAppIdentifierForDisplay2];

    if (v31)
    {
      intent = [(VCInteractionDonation *)v10 userActivity];
      value = [eventCopy value];
      stringValue = [value stringValue];

      bundleID = [intent activityType];
      if ([self shouldKeepAction:bundleID forAppWithBundleIdentifier:stringValue filteringForTopLevel:levelCopy])
      {
        v10 = v10;
        v26 = v10;
      }

      else
      {
        v26 = 0;
      }

LABEL_9:

LABEL_15:
      goto LABEL_17;
    }

LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v26 = 0;
LABEL_17:

  return v26;
}

+ (id)streams
{
  v6[2] = *MEMORY[0x1E69E9840];
  appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
  v6[0] = appIntentsStream;
  appActivityStream = [MEMORY[0x1E69979E8] appActivityStream];
  v6[1] = appActivityStream;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (void)sourceAppIdentifierArrayForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (([identifierCopy isEqualToString:@"com.apple.mobilephone"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.facetime"))
  {
    handlerCopy[2](handlerCopy, &unk_1F2931548);
  }

  else if ([identifierCopy isEqualToString:@"com.apple.Passbook"])
  {
    v17[0] = @"com.apple.Passbook";
    v17[1] = @"com.apple.MobileSMS";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    handlerCopy[2](handlerCopy, v7);
  }

  else if ([identifierCopy isEqualToString:@"com.apple.DocumentsApp"])
  {
    v8 = MEMORY[0x1E696ABD0];
    v9 = *MEMORY[0x1E696A2F8];
    v14 = @"com.apple.fileprovider-nonui";
    v15 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v16 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__VCActionDonationFetcher_sourceAppIdentifierArrayForApplicationBundleIdentifier_completionHandler___block_invoke;
    v12[3] = &unk_1E7B026A8;
    v13 = handlerCopy;
    [v8 extensionsWithMatchingAttributes:v11 completion:v12];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

void __100__VCActionDonationFetcher_sourceAppIdentifierArrayForApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [v4 valueForKey:@"identifier"];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end