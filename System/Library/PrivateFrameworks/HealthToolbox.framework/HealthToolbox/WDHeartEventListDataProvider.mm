@interface WDHeartEventListDataProvider
- (id)_heartEventType;
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDHeartEventListDataProvider

- (id)sampleTypes
{
  v5[1] = *MEMORY[0x277D85DE8];
  _heartEventType = [(WDHeartEventListDataProvider *)self _heartEventType];
  v5[0] = _heartEventType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  objectCopy = object;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v7)
  {
    v7 = [[WDDataTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"CellIdentifier"];
  }

  [(WDDataTableViewCell *)v7 setAccessoryType:1];
  metadata = [objectCopy metadata];
  v9 = [metadata valueForKey:*MEMORY[0x277CCE040]];
  if (v9)
  {
    [(WDDataTableViewCell *)v7 setDisplayValue:v9];
  }

  else
  {
    v10 = WDBundle();
    v11 = [v10 localizedStringForKey:@"HEART_RATE_NO_VALUE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(WDDataTableViewCell *)v7 setDisplayValue:v11];
  }

  endDate = [objectCopy endDate];
  v13 = HKFormattedStringForDate();
  [(WDDataTableViewCell *)v7 setDateString:v13];

  return v7;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  if ([samples count] < 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"LONG_BEATS_PER_MINUTE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  }

  return v5;
}

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  handlerCopy = handler;
  v12 = MEMORY[0x277CCD8D0];
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v15 = [v12 alloc];
  _heartEventType = [(WDHeartEventListDataProvider *)self _heartEventType];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __104__WDHeartEventListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke;
  v20[3] = &unk_2796E79A0;
  v20[4] = self;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = [v15 initWithSampleType:_heartEventType predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy resultsHandler:v20];

  return v18;
}

void __104__WDHeartEventListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v26 = v9;
    v11 = dispatch_group_create();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v30 = *v39;
      v29 = *MEMORY[0x277CCCB90];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          dispatch_group_enter(v11);
          v16 = MEMORY[0x277CCD838];
          v17 = [v15 startDate];
          v18 = [v15 endDate];
          v19 = [v16 predicateForSamplesWithStartDate:v17 endDate:v18 inclusiveEndDates:1 options:3];

          v20 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v29];
          v21 = objc_alloc(MEMORY[0x277CCD8D0]);
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __104__WDHeartEventListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke_2;
          v36[3] = &unk_2796E72D8;
          v36[4] = *(a1 + 32);
          v36[5] = v15;
          v37 = v11;
          v22 = [v21 initWithSampleType:v20 predicate:v19 limit:0 sortDescriptors:0 resultsHandler:v36];
          v23 = [*(a1 + 32) profile];
          v24 = [v23 healthStore];
          [v24 executeQuery:v22];
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v13);
    }

    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__WDHeartEventListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke_3;
    block[3] = &unk_2796E7978;
    v35 = *(a1 + 40);
    v32 = v7;
    v33 = obj;
    v10 = v26;
    v34 = v26;
    dispatch_group_notify(v11, v25, block);

    v8 = v27;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __104__WDHeartEventListDataProvider_createQueryForSampleType_predicate_limit_sortDescriptors_resultsHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D128C8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 displayTypeController];
  v8 = [*(a1 + 32) unitController];
  v14 = [v4 minMaxStringForHeartRates:v6 displayTypeController:v7 unitController:v8];

  if (v14)
  {
    v9 = [*(a1 + 40) metadata];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v13 = v12;

    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCE040]];
    [*(a1 + 40) _setMetadata:v13];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)_heartEventType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end