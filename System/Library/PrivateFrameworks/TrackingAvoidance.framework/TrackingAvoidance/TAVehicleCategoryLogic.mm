@interface TAVehicleCategoryLogic
+ (id)accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:(id)store since:(id)since to:(id)to;
+ (id)accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:(id)store since:(id)since to:(id)to;
+ (id)extractPrivateVehicleHintsFromTAStore:(id)store since:(id)since to:(id)to;
@end

@implementation TAVehicleCategoryLogic

+ (id)accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:(id)store since:(id)since to:(id)to
{
  v53 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  sinceCopy = since;
  toCopy = to;
  v10 = toCopy;
  if (sinceCopy && toCopy && ([sinceCopy earlierDate:toCopy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", sinceCopy), v11, (v12 & 1) != 0))
  {
    v40 = v10;
    v13 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:sinceCopy endDate:v10];
    v14 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      startDate = [v13 startDate];
      endDate = [v13 endDate];
      *buf = 138478083;
      v50 = startDate;
      v51 = 2113;
      v52 = endDate;
      _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, "#TAVehicleCategoryLogic Time Duration of Interest: Start Date - %{private}@ End Date - %{private}@", buf, 0x16u);
    }

    v41 = sinceCopy;
    v42 = storeCopy;
    eventBuffer = [storeCopy eventBuffer];
    v19 = [eventBuffer getAllTAEventsOf:objc_opt_class()];

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [TAVehicleCategory alloc];
    startDate2 = [v13 startDate];
    v22 = [(TAVehicleCategory *)v20 initWithVehicleCategoryType:0 andDate:startDate2];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v44 + 1) + 8 * i);
          getDate = [v28 getDate];
          startDate3 = [v13 startDate];
          v31 = [getDate compare:startDate3];

          if (v31 == -1)
          {
            v36 = [TAVehicleCategory alloc];
            v37 = [TAVehicleCategory speculateTAVehicleCategoryTypeFromVehicleStateNotification:v28];
            startDate4 = [v13 startDate];
            v38 = [(TAVehicleCategory *)v36 initWithVehicleCategoryType:v37 andDate:startDate4];

            v22 = v38;
          }

          else
          {
            getDate2 = [v28 getDate];
            endDate2 = [v13 endDate];
            v34 = [getDate2 compare:endDate2];

            if (v34 == 1)
            {
              continue;
            }

            startDate4 = [[TAVehicleCategory alloc] initWithTAVehicularStateNotification:v28];
            [v43 addObject:startDate4];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v25);
    }

    [v43 insertObject:v22 atIndex:0];
    sinceCopy = v41;
    storeCopy = v42;
    v10 = v40;
  }

  else
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v43;
}

+ (id)accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:(id)store since:(id)since to:(id)to
{
  v52 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  sinceCopy = since;
  toCopy = to;
  v10 = [sinceCopy earlierDate:toCopy];
  v11 = [v10 isEqual:sinceCopy];

  if (v11)
  {
    v39 = toCopy;
    v12 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:sinceCopy endDate:toCopy];
    v13 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      startDate = [v12 startDate];
      endDate = [v12 endDate];
      *buf = 138478083;
      v49 = startDate;
      v50 = 2113;
      v51 = endDate;
      _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEFAULT, "#TAVehicleCategoryLogic Time Duration of Interest: Start Date - %{private}@ End Date - %{private}@", buf, 0x16u);
    }

    v40 = sinceCopy;
    v41 = storeCopy;
    eventBuffer = [storeCopy eventBuffer];
    v18 = [eventBuffer getAllTAEventsOf:objc_opt_class()];

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = [TAVehicleCategory alloc];
    startDate2 = [v12 startDate];
    v21 = [(TAVehicleCategory *)v19 initWithVehicleCategoryType:0 andDate:startDate2];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = v18;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          getDate = [v27 getDate];
          startDate3 = [v12 startDate];
          v30 = [getDate compare:startDate3];

          if (v30 == -1)
          {
            v35 = [TAVehicleCategory alloc];
            v36 = [TAVehicleCategory speculateTAVehicleCategoryTypeFromGeoNavigationNotification:v27];
            startDate4 = [v12 startDate];
            v37 = [(TAVehicleCategory *)v35 initWithVehicleCategoryType:v36 andDate:startDate4];

            v21 = v37;
          }

          else
          {
            getDate2 = [v27 getDate];
            endDate2 = [v12 endDate];
            v33 = [getDate2 compare:endDate2];

            if (v33 == 1)
            {
              continue;
            }

            startDate4 = [[TAVehicleCategory alloc] initWithTAGeoNavigationNotification:v27];
            [v42 addObject:startDate4];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v24);
    }

    [v42 insertObject:v21 atIndex:0];
    sinceCopy = v40;
    storeCopy = v41;
    toCopy = v39;
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v42;
}

+ (id)extractPrivateVehicleHintsFromTAStore:(id)store since:(id)since to:(id)to
{
  storeCopy = store;
  sinceCopy = since;
  toCopy = to;
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [TAVehicleCategoryLogic accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:storeCopy since:sinceCopy to:toCopy];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v13 = [v11 filteredArrayUsingPredicate:v12];
  if ([v13 count])
  {
    v14 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:2];
    [v10 addObject:v14];
  }

  v15 = [TAVehicleCategoryLogic accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:storeCopy since:sinceCopy to:toCopy];

  v16 = [v15 filteredArrayUsingPredicate:v12];

  if ([v16 count])
  {
    v17 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:1];
    [v10 addObject:v17];
  }

  return v10;
}

@end