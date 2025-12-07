@interface HFSecurityStatusItem
+ (BOOL)_currentState:(int64_t)state matchesTargetState:(int64_t)targetState;
+ (id)_shortDescriptionForSecuritySystemState:(int64_t)state;
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFSecurityStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"light.beacon.min.fill" configuration:v3];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v17[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = *MEMORY[0x277CD0ED8];
  v6 = [objc_opt_class() characteristicTypesForServiceType:v5 includingAssociatedTypes:1];
  v17[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  allObjects = [v6 allObjects];
  v9 = [(HFStatusItem *)self filteredServicesOfTypes:v7 containingCharacteristicTypes:allObjects];

  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v11 = [valueSource readValuesForCharacteristicTypes:v6 inServices:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF78B0;
  objc_copyWeak(&v15, &location);
  v12 = [v11 flatMap:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);

  return v12;
}

id __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D2C900];
    v58 = @"hidden";
    v59[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    goto LABEL_5;
  }

  v5 = [objc_opt_class() serviceTypes];
  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = MEMORY[0x277D2C900];
LABEL_5:
    v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v11 = [v9 futureWithResult:v10];

    goto LABEL_30;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [v7 objectForKeyedSubscript:?];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke_2;
  v49[3] = &unk_277DF9208;
  v45 = v3;
  v19 = v3;
  v50 = v19;
  v51 = WeakRetained;
  v20 = v13;
  v52 = v20;
  v21 = v15;
  v53 = v21;
  v48 = v17;
  v54 = v48;
  v22 = v16;
  v55 = v22;
  v47 = v14;
  v56 = v47;
  v23 = v12;
  v57 = v23;
  [v18 na_each:v49];

  v46 = v22;
  if ([v20 count])
  {
    v24 = v21;
    [v7 setObject:&unk_282523CB8 forKeyedSubscript:@"badge"];
    [v7 setObject:&unk_282523CD0 forKeyedSubscript:@"statusItemCategory"];
    v25 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleSecuritySystem", @"HFStatusTitleSecuritySystem", 1);
    [v7 setObject:v25 forKeyedSubscript:@"title"];

    [v7 setObject:v20 forKeyedSubscript:@"statusRepresentedHomeKitObjects"];
    objc_opt_class();
    v26 = [v7 objectForKeyedSubscript:@"icon"];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = [HFCAPackageIconDescriptor alloc];
      v30 = [v28 packageIdentifier];
      v31 = [(HFCAPackageIconDescriptor *)v29 initWithPackageIdentifier:v30 state:HFCAPackageStateActivated];
      [v7 setObject:v31 forKeyedSubscript:@"icon"];
    }

    [v7 setObject:&unk_282523CE8 forKeyedSubscript:@"state"];
    v32 = _HFLocalizedStringWithDefaultValue(@"HFStatusDescriptionSecuritySystem_Triggered", @"HFStatusDescriptionSecuritySystem_Triggered", 1);
    [v7 setObject:v32 forKeyedSubscript:@"description"];

    v33 = [objc_opt_class() _shortDescriptionForSecuritySystemState:4];
    [v7 setObject:v33 forKeyedSubscript:@"shortDescription"];

    goto LABEL_13;
  }

  if ([v23 count])
  {
    [v7 setObject:&unk_282523D00 forKeyedSubscript:@"statusItemCategory"];
    if ([v21 count])
    {
      v34 = @"HFStatusTitleSecuritySystem_Arming";
      v35 = v19;
    }

    else
    {
      v35 = v19;
      if (![v22 count])
      {
        v36 = 0;
        v3 = v45;
        goto LABEL_21;
      }

      v34 = @"HFStatusTitleSecuritySystem_Disarming";
    }

    v3 = v45;
    v36 = _HFLocalizedStringWithDefaultValue(v34, v34, 1);
LABEL_21:
    v24 = v21;
    [v7 setObject:&unk_282523D18 forKeyedSubscript:@"state"];
    v37 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleSecuritySystem", @"HFStatusTitleSecuritySystem", 1);
    [v7 setObject:v37 forKeyedSubscript:@"title"];

    if (v36)
    {
      [v7 setObject:v36 forKeyedSubscript:@"description"];
    }

    v38 = [v35 responseForCharacteristicType:*MEMORY[0x277CCF858] aggregationPolicy:0];
    if (v38)
    {
      v39 = [v38 valueWithExpectedClass:objc_opt_class()];
      v40 = [v39 integerValue];

      v41 = [objc_opt_class() _shortDescriptionForSecuritySystemState:v40];
      [v7 setObject:v41 forKeyedSubscript:@"shortDescription"];
      [v7 setObject:v41 forKeyedSubscript:@"description"];
      if (v40 <= 2)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      }
    }

    else
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    goto LABEL_29;
  }

  v24 = v21;
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
LABEL_13:
  v3 = v45;
LABEL_29:
  [v7 setObject:v23 forKeyedSubscript:@"representedHomeKitObjects"];
  v42 = MEMORY[0x277D2C900];
  v43 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v11 = [v42 futureWithResult:v43];

LABEL_30:

  return v11;
}

void __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke_2(id *a1, void *a2)
{
  v15 = a2;
  v3 = [a1[4] batchResponseForService:?];
  v4 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF858]];
  v5 = [v4 valueWithExpectedClass:objc_opt_class()];

  v6 = [v3 responseForCharacteristicType:*MEMORY[0x277CCFB60]];
  v7 = [v6 valueWithExpectedClass:objc_opt_class()];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v5 integerValue];
    v10 = [v7 integerValue];
    v11 = [objc_opt_class() _currentState:v9 matchesTargetState:v10];
    if (v9 == 4)
    {
      v12 = 6;
LABEL_18:
      [a1[v12] addObject:v15];
      [a1[11] addObject:v15];
      goto LABEL_19;
    }

    v13 = v11;
    if (![v15 hf_hasSetVisibleInHomeStatus] || (objc_msgSend(v15, "hf_isVisibleInHomeStatus") & 1) != 0 || (objc_msgSend(a1[5], "room"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      if (v9 == 3)
      {
        v12 = 7;
        if (v13)
        {
          v12 = 8;
        }
      }

      else
      {
        v12 = 7;
        if (v13)
        {
          v12 = 10;
        }

        if (v10 == 3)
        {
          v12 = 9;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:
}

+ (id)_shortDescriptionForSecuritySystemState:(int64_t)state
{
  if (state <= 4)
  {
    self = _HFLocalizedStringWithDefaultValue(off_277DF9228[state], off_277DF9228[state], 1);
  }

  return self;
}

+ (BOOL)_currentState:(int64_t)state matchesTargetState:(int64_t)targetState
{
  v4 = state == 2;
  v5 = state == 3;
  if (targetState != 3)
  {
    v5 = 0;
  }

  if (targetState != 2)
  {
    v4 = v5;
  }

  v6 = state == 0;
  v7 = state == 1;
  if (targetState != 1)
  {
    v7 = 0;
  }

  if (targetState)
  {
    v6 = v7;
  }

  if (targetState <= 1)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

@end