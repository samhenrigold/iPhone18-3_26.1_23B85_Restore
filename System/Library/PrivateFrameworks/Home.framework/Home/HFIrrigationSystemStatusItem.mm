@interface HFIrrigationSystemStatusItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFIrrigationSystemStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CD0E80];
  v5 = [objc_opt_class() characteristicTypesForServiceType:v4 includingAssociatedTypes:1];
  v15[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  allObjects = [v5 allObjects];
  v8 = [(HFStatusItem *)self filteredServicesOfTypes:v6 containingCharacteristicTypes:allObjects];

  valueSource = [(HFStatusItem *)self valueSource];
  v10 = [valueSource readValuesForCharacteristicTypes:v5 inServices:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HFIrrigationSystemStatusItem__subclass_updateWithOptions___block_invoke;
  v13[3] = &unk_277DF3A40;
  v13[4] = self;
  v14 = v4;
  v11 = [v10 flatMap:v13];

  return v11;
}

id __60__HFIrrigationSystemStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 setWithObject:v4];
  v7 = [v3 standardResultsForBatchReadResponse:v5 serviceTypes:v6];

  v8 = [v7 mutableCopy];
  v9 = [v8 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v9 BOOLValue];

  if (v6)
  {
    v10 = MEMORY[0x277D2C900];
    v11 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v12 = [v10 futureWithResult:v11];
  }

  else
  {
    v11 = [v8 objectForKeyedSubscript:@"representedHomeKitObjects"];
    v13 = [v8 objectForKeyedSubscript:@"state"];
    v14 = [v13 integerValue];

    if ([v11 count] > 1)
    {
      v15 = [v11 count];
      HFLocalizedStringWithFormat(@"HFStatusTitleIrrigationSystem_Multiple", @"%lu", v16, v17, v18, v19, v20, v21, v15);
    }

    else
    {
      _HFLocalizedStringWithDefaultValue(@"HFStatusTitleIrrigationSystem_One", @"HFStatusTitleIrrigationSystem_One", 1);
    }
    v22 = ;
    [v8 setObject:v22 forKeyedSubscript:@"title"];

    if (v14 == 2)
    {
      v23 = @"HFStatusDescriptionIrrigationSystem_Watering";
    }

    else
    {
      v23 = @"HFStatusDescriptionIrrigationSystem_Idle";
    }

    v24 = _HFLocalizedStringWithDefaultValue(v23, v23, 1);
    [v8 setObject:v24 forKeyedSubscript:@"description"];

    v25 = MEMORY[0x277D2C900];
    v26 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v12 = [v25 futureWithResult:v26];
  }

  return v12;
}

@end