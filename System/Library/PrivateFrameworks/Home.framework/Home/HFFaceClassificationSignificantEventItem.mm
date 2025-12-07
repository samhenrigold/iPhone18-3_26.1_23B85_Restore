@interface HFFaceClassificationSignificantEventItem
+ (id)dateFormatter;
- (HFFaceClassificationSignificantEventItem)initWithSignificantEvent:(id)event home:(id)home;
- (HMFaceClassification)faceClassification;
- (HMPerson)person;
- (HMPersonManager)personManager;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFFaceClassificationSignificantEventItem

+ (id)dateFormatter
{
  if (qword_280E03118 != -1)
  {
    dispatch_once(&qword_280E03118, &__block_literal_global_129);
  }

  v3 = _MergedGlobals_271;

  return v3;
}

uint64_t __57__HFFaceClassificationSignificantEventItem_dateFormatter__block_invoke()
{
  v0 = +[HFFormatterManager sharedInstance];
  v1 = [v0 relativeDateFormatter];
  v2 = _MergedGlobals_271;
  _MergedGlobals_271 = v1;

  v3 = _MergedGlobals_271;

  return [v3 setTimeStyle:0];
}

- (HFFaceClassificationSignificantEventItem)initWithSignificantEvent:(id)event home:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  homeCopy = home;
  faceClassification = [eventCopy faceClassification];

  if (!faceClassification)
  {
    NSLog(&cfstr_EventIsMissing.isa, eventCopy);
  }

  faceClassification2 = [eventCopy faceClassification];

  if (!faceClassification2)
  {
    v10 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = eventCopy;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Event %@ is missing a face classification", buf, 0xCu);
    }
  }

  v13.receiver = self;
  v13.super_class = HFFaceClassificationSignificantEventItem;
  v11 = [(HFCameraClipSignificantEventItem *)&v13 initWithSignificantEvent:eventCopy home:homeCopy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFFaceClassificationSignificantEventItem alloc];
  event = [(HFCameraClipSignificantEventItem *)self event];
  v6 = objc_msgSend_home(self);
  v7 = [(HFFaceClassificationSignificantEventItem *)v4 initWithSignificantEvent:event home:v6];

  faceCropImage = [(HFFaceClassificationSignificantEventItem *)self faceCropImage];
  [(HFFaceClassificationSignificantEventItem *)v7 setFaceCropImage:faceCropImage];

  return v7;
}

- (HMFaceClassification)faceClassification
{
  event = [(HFCameraClipSignificantEventItem *)self event];
  faceClassification = [event faceClassification];

  return faceClassification;
}

- (HMPerson)person
{
  event = [(HFCameraClipSignificantEventItem *)self event];
  faceClassification = [event faceClassification];
  person = [faceClassification person];

  return person;
}

- (HMPersonManager)personManager
{
  v3 = objc_msgSend_home(self, a2);
  faceClassification = [(HFFaceClassificationSignificantEventItem *)self faceClassification];
  personManagerUUID = [faceClassification personManagerUUID];
  v6 = [v3 hf_personManagerWithIdentifier:personManagerUUID];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v22[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_msgSend_home(self);
  personManagerSettings = [v5 personManagerSettings];
  isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

  if (isFaceClassificationEnabled)
  {
    v8 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionLogger];
    objc_initWeak(&location, self);
    v19.receiver = self;
    v19.super_class = HFFaceClassificationSignificantEventItem;
    v9 = [(HFCameraClipSignificantEventItem *)&v19 _subclass_updateWithOptions:optionsCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke;
    v15[3] = &unk_277DFCAB0;
    objc_copyWeak(&v18, &location);
    v16 = optionsCopy;
    v10 = v8;
    v17 = v10;
    v11 = [v9 flatMap:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v21 = @"hidden";
    v22[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [HFItemUpdateOutcome outcomeWithResults:v10];
    v11 = [v12 futureWithResult:v13];
  }

  return v11;
}

id __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2;
  v8[3] = &unk_277DFCA88;
  objc_copyWeak(&v12, a1 + 6);
  v5 = v3;
  v9 = v5;
  v10 = a1[4];
  v11 = a1[5];
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v12);

  return v6;
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2(id *a1, void *a2)
{
  v73[2] = *MEMORY[0x277D85DE8];
  v48 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v49 = [a1[4] mutableCopy];
  v4 = [WeakRetained faceClassification];

  if (!v4)
  {
    v13 = v49;
    [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    [v48 finishWithResult:v49];
    goto LABEL_20;
  }

  v5 = [v49 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v6 = [v5 mutableCopy];

  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = [a1[5] objectForKeyedSubscript:HFItemUpdateOptionFullUpdateIndicated];
  if (![v8 BOOLValue])
  {
    v14 = [WeakRetained faceCropImage];
    if (v14)
    {
    }

    else
    {
      v16 = [a1[5] objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
      v17 = [v16 BOOLValue];

      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v18 = [WeakRetained faceCropImage];
    [v7 finishWithResult:v18];

    v15 = 0;
    v12 = 0;
    v47 = v7;
    goto LABEL_13;
  }

LABEL_4:
  v9 = [WeakRetained cameraProfile];
  v10 = [WeakRetained event];
  v47 = [v9 hf_faceCropImageForSignificantEvent:v10];

  if (a1[6])
  {
    v11 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_3;
    v70[3] = &unk_277DF3370;
    v71 = a1[6];
    v72 = WeakRetained;
    v12 = [v11 afterDelay:v70 performBlock:10.0];
  }

  else
  {
    v12 = 0;
  }

  v15 = 1;
LABEL_13:
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_9;
  v65[3] = &unk_277DFCA10;
  objc_copyWeak(&v68, a1 + 7);
  v69 = v15;
  v19 = v49;
  v66 = v19;
  v45 = v6;
  v67 = v45;
  v20 = [v47 addCompletionBlock:v65];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_12;
  v63[3] = &unk_277DF70B0;
  v44 = v12;
  v64 = v44;
  v21 = [v47 addCompletionBlock:v63];
  v22 = objc_msgSend_home(WeakRetained);
  v23 = [WeakRetained faceClassification];
  v24 = [v23 personManagerUUID];
  v46 = [v22 hf_personManagerWithIdentifier:v24];

  v25 = MEMORY[0x277CCABB0];
  objc_opt_class();
  v26 = [v25 numberWithBool:objc_opt_isKindOfClass() & 1];
  [v19 setObject:v26 forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];

  v27 = [WeakRetained faceClassification];
  v28 = [v27 person];

  v29 = [MEMORY[0x277D2C900] futureWithNoResult];
  if (v28)
  {
    v30 = [HFPersonItemUpdateRequest alloc];
    v31 = objc_msgSend_home(WeakRetained);
    v32 = [(HFPersonItemUpdateRequest *)v30 initWithPerson:v28 personManager:v46 home:v31];

    v33 = [a1[5] mutableCopy];
    [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:HFPersonItemUpdateOptionSkipFaceCrop];
    if (a1[6])
    {
      v34 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_17;
      v60[3] = &unk_277DF3370;
      v61 = a1[6];
      v62 = WeakRetained;
      v35 = [v34 afterDelay:v60 performBlock:10.0];
    }

    else
    {
      v35 = 0;
    }

    v37 = [(HFPersonItemUpdateRequest *)v32 updateWithOptions:v33];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_18;
    v56[3] = &unk_277DFCA38;
    v36 = v35;
    v57 = v36;
    v58 = v19;
    v59 = v45;
    v38 = [v37 addCompletionBlock:v56];

    v29 = v38;
  }

  else
  {
    v36 = 0;
  }

  v39 = MEMORY[0x277D2C900];
  v73[0] = v47;
  v73[1] = v29;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v41 = [v39 chainFutures:v40];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_21;
  v50[3] = &unk_277DFCA60;
  v51 = v19;
  v42 = v45;
  v52 = v42;
  v53 = v48;
  v54 = a1[6];
  v55 = WeakRetained;
  v43 = [v41 addCompletionBlock:v50];

  objc_destroyWeak(&v68);
  v13 = v49;
LABEL_20:
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v3 = [v2 loggerActivity];
    os_activity_scope_enter(v3, &state);

    v4 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Face crop update is taking more than 10 seconds: %@", &v8, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v6 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Face crop update is taking more than 10 seconds: %@", &state, 0xCu);
    }
  }
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    [WeakRetained setFaceCropImage:v5];
  }

  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"HFPersonResultFaceCropImageKey"];
    v9 = [v8 event];
    v10 = [v9 dateOfOccurrence];

    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"HFPersonResultFaceCropDateKey"];
    v11 = MEMORY[0x277CBEB98];
    v12 = [v8 event];
    v13 = [v12 faceClassification];
    v14 = [v13 faceCrop];
    v15 = [v14 UUID];
    v16 = [v11 na_setWithSafeObject:v15];
    [*(a1 + 32) setObject:v16 forKeyedSubscript:@"HFPersonResultFaceCropIdentifiersKey"];

    v17 = [objc_opt_class() dateFormatter];
    v18 = [v17 stringFromDate:v10];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"description"];

    v19 = *(a1 + 40);
    v20 = [v8 event];
    v21 = [v20 faceClassification];
    v22 = [v21 faceCrop];
    [v19 na_safeAddObject:v22];
  }

  else if (*(a1 + 56) == 1)
  {
    v23 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "%@: Unable to process face crop from significant event (error: %@)", &v24, 0x16u);
    }
  }
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_17(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v3 = [v2 loggerActivity];
    os_activity_scope_enter(v3, &state);

    v4 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Person update is taking more than 10 seconds: %@", &v8, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v6 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Person update is taking more than 10 seconds: %@", &state, 0xCu);
    }
  }
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) cancel];
  if (v5)
  {
    [*(a1 + 40) addResultsFromOutcome:v5];
    v3 = *(a1 + 48);
    v4 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
    [v3 unionSet:v4];
  }
}

uint64_t __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_21(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"dependentHomeKitObjects"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"HFPersonResultFaceCropImageKey"];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"title"];
  v4 = [v3 length];

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v10 = [v9 loggerActivity];
      os_activity_scope_enter(v10, &state);

      v11 = HFLogForCategory(0x13uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 64);
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Unable to display face crop or person: %@", &v15, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v13 = HFLogForCategory(0x13uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 64);
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v14;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Unable to display face crop or person: %@", &state, 0xCu);
      }
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    return [*(a1 + 48) finishWithResult:*(a1 + 32)];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);

    return [v6 finishWithResult:v7];
  }
}

@end