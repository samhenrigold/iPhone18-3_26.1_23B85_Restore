@interface HFAirQualitySensorStatusItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFAirQualitySensorStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"aqi.medium" configuration:v3];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v20[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  serviceTypes = [objc_opt_class() serviceTypes];
  anyObject = [serviceTypes anyObject];

  v7 = [objc_opt_class() characteristicTypesForServiceType:anyObject includingAssociatedTypes:1];
  v20[0] = anyObject;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  allObjects = [v7 allObjects];
  v10 = [(HFStatusItem *)self filteredServicesOfTypes:v8 containingCharacteristicTypes:allObjects];

  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v12 = [valueSource readValuesForCharacteristicTypes:v7 inServices:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke;
  v16[3] = &unk_277DF61A0;
  objc_copyWeak(&v18, &location);
  v13 = anyObject;
  v17 = v13;
  v14 = [v12 flatMap:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v14;
}

id __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"hidden"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = MEMORY[0x277D2C900];
      v11 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v10 futureWithResult:v11];
    }

    else
    {
      v15 = *MEMORY[0x277CCF770];
      v30 = [v3 servicesWithValuesPassingTest:&__block_literal_global_227 forCharacteristicType:*MEMORY[0x277CCF770]];
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke_3;
      v31[3] = &unk_277DF6178;
      v16 = v3;
      v32 = v16;
      v33 = &v34;
      [v30 na_each:v31];
      if (v35[3])
      {
        v17 = [v16 responseForCharacteristicType:v15];
        v29 = [v17 characteristic];

        v18 = [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristic:v29 options:0];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v35[3]];
        v20 = [v18 stringForObjectValue:v19];

        [v7 setObject:v20 forKeyedSubscript:@"description"];
        [v7 setObject:&unk_2825251A0 forKeyedSubscript:@"statusItemCategory"];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:6 - v35[3]];
        v22 = [HFNumberRange valueWithValue:v21];
        [v7 setObject:v22 forKeyedSubscript:@"statusCurrentValue"];

        v23 = [HFNumberRange rangeWithMaxValue:&unk_2825251B8 minValue:&unk_2825251D0];
        [v7 setObject:v23 forKeyedSubscript:@"statusPossibleValues"];
      }

      v24 = [v7 objectForKeyedSubscript:@"title"];
      v25 = v24 == 0;

      if (v25)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      }

      v26 = MEMORY[0x277D2C900];
      v27 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v26 futureWithResult:v27];

      _Block_object_dispose(&v34, 8);
    }
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v38 = @"hidden";
    v39[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v14 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v12 = [v13 futureWithResult:v14];
  }

  return v12;
}

void __60__HFAirQualitySensorStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) responseForCharacteristicType:*MEMORY[0x277CCF770] inService:a2];
  v7 = [v3 valueWithExpectedClass:objc_opt_class()];

  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = [v7 integerValue];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

@end