@interface WFHealthKitAccessResource
- (WFHealthKitAccessResource)initWithDefinition:(id)definition;
- (id)importErrorReasonForStatus:(unint64_t)status;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (id)objectTypesForAccessType:(id)type;
- (id)readableUnauthorizedResourceDescription;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
- (void)refreshAvailability;
@end

@implementation WFHealthKitAccessResource

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  if ([(WFHealthKitAccessResource *)self status]== 3)
  {
    mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-health://"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__WFHealthKitAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
    v11[3] = &unk_278C1CBC0;
    v12 = handlerCopy;
    [mEMORY[0x277CFC248] openURL:v10 withBundleIdentifier:@"com.apple.Health" userInterface:interfaceCopy completionHandler:v11];
  }

  else
  {
    [(WFHealthKitAccessResource *)self makeAvailableWithUserInterface:interfaceCopy completionHandler:handlerCopy];
  }
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (status == 3)
  {
    v3 = WFLocalizedString(@"Open Health");
    v8[0] = v3;
    v4 = v8;
  }

  else
  {
    v3 = WFLocalizedString(@"Allow Access");
    v7 = v3;
    v4 = &v7;
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v5;
}

- (id)importErrorReasonForStatus:(unint64_t)status
{
  readableUnauthorizedResourceDescription = [(WFHealthKitAccessResource *)self readableUnauthorizedResourceDescription];
  if ([readableUnauthorizedResourceDescription length])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"In order to answer this question, Shortcuts needs access to your %@ data.");
    v6 = [v4 localizedStringWithFormat:v5, readableUnauthorizedResourceDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  readableUnauthorizedResourceDescription = [(WFHealthKitAccessResource *)self readableUnauthorizedResourceDescription];
  if ([readableUnauthorizedResourceDescription length])
  {
    v5 = MEMORY[0x277CCACA8];
    if (status == 3)
    {
      v6 = @"Health access to %@ is off. You can turn on health data categories in the Health app.";
    }

    else
    {
      v6 = @"Shortcuts does not have access to your %@ data.";
    }

    v7 = WFLocalizedString(v6);
    v8 = [v5 localizedStringWithFormat:v7, readableUnauthorizedResourceDescription];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  if (![interface isRunningWithSiriUI])
  {
    objectTypes = [(WFHealthKitAccessResource *)self objectTypes];
    if ([objectTypes count])
    {
      healthStore = [(WFHealthKitAccessResource *)self healthStore];
      writeTypes = [(WFHealthKitAccessResource *)self writeTypes];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
      v10[3] = &unk_278C20360;
      v10[4] = self;
      v11 = handlerCopy;
      [healthStore requestAuthorizationToShareTypes:writeTypes readTypes:objectTypes completion:v10];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }

    goto LABEL_9;
  }

  if (self->_status != 4)
  {
    [(WFResource *)self refreshAvailabilityWithNotification];
    if (self->_status != 4)
    {
      objectTypes = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
      (*(handlerCopy + 2))(handlerCopy, 0, objectTypes);
LABEL_9:

      goto LABEL_10;
    }
  }

  (*(handlerCopy + 2))(handlerCopy, 1, 0);
LABEL_10:
}

void __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
  v8[3] = &unk_278C1BC70;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)refreshAvailability
{
  v41 = *MEMORY[0x277D85DE8];
  objectTypes = [(WFHealthKitAccessResource *)self objectTypes];
  if ([objectTypes count])
  {
    healthStore = [(WFHealthKitAccessResource *)self healthStore];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    [(WFHealthKitAccessResource *)self writeTypes];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v6 = v35 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v7)
    {
      v8 = *v35;
      do
      {
        v9 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [indexSet addIndex:{objc_msgSend(healthStore, "authorizationStatusForType:", *(*(&v34 + 1) + 8 * v9++))}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    [(WFHealthKitAccessResource *)self readTypes];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v11 = v31 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [indexSet2 addIndex:{objc_msgSend(healthStore, "authorizationStatusForType:", *(*(&v30 + 1) + 8 * v14++))}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v12);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    if ([indexSet containsIndex:1])
    {
      v27[3] = 3;
    }

    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    if ([indexSet isEqualToIndexSet:v15])
    {
      v16 = [v11 count] == 0;

      v17 = v27;
      if (v16)
      {
        v27[3] = 4;
      }
    }

    else
    {

      v17 = v27;
    }

    v18 = v17[3];
    if (v18 == 1)
    {
      v19 = dispatch_semaphore_create(0);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __48__WFHealthKitAccessResource_refreshAvailability__block_invoke;
      v23[3] = &unk_278C18F50;
      v25 = &v26;
      v20 = v19;
      v24 = v20;
      [healthStore getRequestStatusForAuthorizationToShareTypes:v6 readTypes:objectTypes completion:v23];
      v21 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v20, v21);

      v18 = v27[3];
    }

    self->_status = v18;
    v22.receiver = self;
    v22.super_class = WFHealthKitAccessResource;
    [(WFAccessResource *)&v22 refreshAvailability];
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    self->_status = 4;
    v38.receiver = self;
    v38.super_class = WFHealthKitAccessResource;
    [(WFAccessResource *)&v38 refreshAvailability];
  }
}

intptr_t __48__WFHealthKitAccessResource_refreshAvailability__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 4;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)readableUnauthorizedResourceDescription
{
  healthStore = [(WFHealthKitAccessResource *)self healthStore];
  v4 = objc_opt_new();
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__WFHealthKitAccessResource_readableUnauthorizedResourceDescription__block_invoke;
  v17 = &unk_278C18F28;
  v5 = healthStore;
  v18 = v5;
  v6 = v4;
  v19 = v6;
  v7 = _Block_copy(&v14);
  v8 = [(WFHealthKitAccessResource *)self readTypes:v14];
  if (v7[2](v7, v8, 2))
  {
    writeTypes = [(WFHealthKitAccessResource *)self writeTypes];
    v10 = v7[2](v7, writeTypes, 1);

    if (v10)
    {
      v11 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = WFLocalizedString(@"Health");
LABEL_6:
  v12 = v11;

  return v12;
}

uint64_t __68__WFHealthKitAccessResource_readableUnauthorizedResourceDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 allObjects];
  if ([v5 count])
  {
    v6 = 0;
    v7 = sel_hk_localizedName;
    v8 = 0x277CCD000uLL;
    v9 = 0x277CCD000uLL;
    v10 = @"Workout";
    v22 = a3;
    do
    {
      v11 = [v5 objectAtIndexedSubscript:v6];
      v12 = [*(a1 + 32) authorizationStatusForType:v11];
      if (a3 == 1 && v12 == 2)
      {
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          [v11 identifier];
          v15 = v7;
          v16 = v8;
          v17 = v9;
          v19 = v18 = v10;
          v14 = [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v19];

          v10 = v18;
          v9 = v17;
          v8 = v16;
          v7 = v15;
          a3 = v22;
          goto LABEL_12;
        }

        v13 = [v11 hk_localizedName];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v20 = 0;
          goto LABEL_15;
        }

        v13 = WFLocalizedString(v10);
      }

      v14 = v13;
LABEL_12:
      [*(a1 + 40) addObject:v14];

LABEL_13:
      ++v6;
    }

    while (v6 < [v5 count]);
  }

  v20 = 1;
LABEL_15:

  return v20;
}

- (id)objectTypesForAccessType:(id)type
{
  v51[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v41 = objc_opt_new();
  definition = [(WFResource *)self definition];
  v6 = [definition objectForKeyedSubscript:@"Resources"];
  v7 = objc_opt_class();
  definition2 = WFEnforceClass(v6, v7);

  if (!definition2)
  {
    definition2 = [(WFResource *)self definition];

    if (definition2)
    {
      definition3 = [(WFResource *)self definition];
      v51[0] = definition3;
      definition2 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = definition2;
  v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    v45 = *MEMORY[0x277CCC980];
    v42 = *MEMORY[0x277CCC978];
    v43 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * v13);
        v15 = objc_opt_class();
        v16 = WFEnforceClass(v14, v15);
        v17 = v16;
        if (v16)
        {
          if (!typeCopy || ([v16 objectForKeyedSubscript:@"AccessType"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", typeCopy), v18, v19))
          {
            v20 = v17;
            workoutType = [v20 objectForKeyedSubscript:@"ObjectType"];
            if (!workoutType || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v22 = [v20 objectForKeyedSubscript:@"ReadableType"];
              v23 = [v20 objectForKeyedSubscript:@"ReadableObjectTypeIdentifier"];

              if (v23)
              {
                v23 = [v20 objectForKeyedSubscript:@"ReadableObjectTypeIdentifier"];
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = v23 != 0;
                if ([v22 isEqualToString:@"Quantity"] && v23)
                {
                  v25 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:v23];
                  v26 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v25];
                  goto LABEL_27;
                }
              }

              else
              {

                [v22 isEqualToString:@"Quantity"];
                v24 = 0;
                v23 = 0;
              }

              if ([v22 isEqualToString:@"Workout"])
              {
                workoutType = [MEMORY[0x277CCD720] workoutType];
                goto LABEL_28;
              }

              if (([v22 isEqualToString:@"Characteristic"] & v24) == 1)
              {
                v25 = [WFHealthKitHelper characteristicTypeIdentifierFromReadableTypeIdentifier:v23];
                v26 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v25];
                goto LABEL_27;
              }

              if ([v22 isEqualToString:@"Category"])
              {
                v25 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:v23];
                v26 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:v25];
LABEL_27:
                workoutType = v26;
              }

              else
              {
                if ([v22 isEqualToString:@"Correlation"])
                {
                  v37 = MEMORY[0x277CCACA8];
                  v38 = WFLocalizedString(@"%@ types are not implemented");
                  v39 = [v37 localizedStringWithFormat:v38, v22];

                  v40 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v39 userInfo:0];
                  objc_exception_throw(v40);
                }

                workoutType = 0;
              }

LABEL_28:
            }

            if (![typeCopy isEqualToString:@"Write"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v27 = workoutType;
              v28 = [MEMORY[0x277CBEB58] setWithObjects:{v27, 0}];
              identifier = [v27 identifier];
              if ([identifier isEqualToString:v45])
              {

                goto LABEL_34;
              }

              identifier2 = [v27 identifier];
              v31 = [identifier2 isEqualToString:v42];

              if (v31)
              {
LABEL_34:
                v32 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v42];
                [v28 addObject:v32];

                v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v45];
                [v28 addObject:v33];
              }

              v34 = [v28 copy];

              [v41 unionSet:v34];
            }

            v12 = v43;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v35 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      v11 = v35;
    }

    while (v35);
  }

  return v41;
}

- (WFHealthKitAccessResource)initWithDefinition:(id)definition
{
  v8.receiver = self;
  v8.super_class = WFHealthKitAccessResource;
  v3 = [(WFAccessResource *)&v8 initWithDefinition:definition];
  if (v3)
  {
    wf_shortcutsAppHealthStore = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
    healthStore = v3->_healthStore;
    v3->_healthStore = wf_shortcutsAppHealthStore;

    v6 = v3;
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"your Health data", @"your Health data");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end