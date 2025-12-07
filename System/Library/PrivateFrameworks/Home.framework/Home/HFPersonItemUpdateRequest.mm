@interface HFPersonItemUpdateRequest
- (HFPersonItemUpdateRequest)initWithPerson:(id)person personManager:(id)manager home:(id)home;
- (id)updateWithOptions:(id)options;
@end

@implementation HFPersonItemUpdateRequest

- (HFPersonItemUpdateRequest)initWithPerson:(id)person personManager:(id)manager home:(id)home
{
  personCopy = person;
  managerCopy = manager;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HFPersonItemUpdateRequest;
  v12 = [(HFPersonItemUpdateRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_person, person);
    objc_storeStrong(&v13->_personManager, manager);
    objc_storeStrong(&v13->_home, home);
  }

  return v13;
}

- (id)updateWithOptions:(id)options
{
  v39[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_msgSend_home(self);
  personManagerSettings = [v5 personManagerSettings];
  isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

  if (isFaceClassificationEnabled)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    person = [(HFPersonItemUpdateRequest *)self person];
    name = [person name];
    [dictionary na_safeSetObject:name forKey:@"title"];

    person2 = [(HFPersonItemUpdateRequest *)self person];
    uUID = [person2 UUID];
    [dictionary na_safeSetObject:uUID forKey:@"personIdentifier"];

    v13 = MEMORY[0x277CCABB0];
    personManager = [(HFPersonItemUpdateRequest *)self personManager];
    objc_opt_class();
    v15 = [v13 numberWithBool:objc_opt_isKindOfClass() & 1];
    [dictionary setObject:v15 forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];

    v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [dictionary setObject:v16 forKeyedSubscript:@"dependentHomeKitClasses"];

    v17 = MEMORY[0x277CBEB58];
    person3 = [(HFPersonItemUpdateRequest *)self person];
    v19 = [v17 na_setWithSafeObject:person3];

    [dictionary setObject:v19 forKeyedSubscript:@"dependentHomeKitObjects"];
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    v20 = [optionsCopy objectForKeyedSubscript:HFPersonItemUpdateOptionSkipFaceCrop];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      v22 = MEMORY[0x277D2C900];
      personManager2 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
      v24 = [v22 futureWithResult:personManager2];
    }

    else
    {
      personManager2 = [(HFPersonItemUpdateRequest *)self personManager];
      person4 = [(HFPersonItemUpdateRequest *)self person];
      uUID2 = [person4 UUID];
      v28 = [personManager2 hf_faceCropsForPersonWithIdentifier:uUID2];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke;
      v34[3] = &unk_277DF43F0;
      v29 = dictionary;
      v35 = v29;
      v19 = v19;
      v36 = v19;
      selfCopy = self;
      v30 = [v28 flatMap:v34];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke_105;
      v32[3] = &unk_277DF2D30;
      v32[4] = self;
      dictionary = v29;
      v33 = dictionary;
      v24 = [v30 recover:v32];
    }
  }

  else
  {
    v25 = MEMORY[0x277D2C900];
    v38 = @"hidden";
    v39[0] = MEMORY[0x277CBEC38];
    dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v19 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
    v24 = [v25 futureWithResult:v19];
  }

  return v24;
}

id __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = [v3 setWithArray:v4];
  v6 = [v5 na_map:&__block_literal_global_20];

  v7 = [v4 lastObject];

  v8 = a1[4];
  v9 = [v7 hf_imageRepresentation];
  [v8 na_safeSetObject:v9 forKey:@"HFPersonResultFaceCropImageKey"];

  v10 = a1[4];
  v11 = [v7 dateCreated];
  [v10 na_safeSetObject:v11 forKey:@"HFPersonResultFaceCropDateKey"];

  [a1[4] na_safeSetObject:v6 forKey:@"HFPersonResultFaceCropIdentifiersKey"];
  [a1[5] na_safeAddObject:v7];
  [a1[4] setObject:a1[5] forKeyedSubscript:@"dependentHomeKitObjects"];
  v12 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = [a1[6] person];
    v18 = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "Person %@ using face crop %@", &v18, 0x16u);
  }

  v13 = MEMORY[0x277D2C900];
  v14 = [HFItemUpdateOutcome outcomeWithResults:a1[4]];
  v15 = [v13 futureWithResult:v14];

  return v15;
}

id __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke_105(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: Face crop update failed with error %@. Recovering and hiding face crop result.", &v10, 0x16u);
  }

  v5 = MEMORY[0x277D2C900];
  v6 = [HFItemUpdateOutcome outcomeWithResults:*(a1 + 40)];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

@end