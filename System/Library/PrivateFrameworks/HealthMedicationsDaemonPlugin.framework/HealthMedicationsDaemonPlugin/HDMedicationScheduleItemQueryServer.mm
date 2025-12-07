@interface HDMedicationScheduleItemQueryServer
- (HDMedicationScheduleItemQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDMedicationScheduleItemQueryServer

- (HDMedicationScheduleItemQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMedicationScheduleItemQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v13;
}

- (void)_queue_start
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = HDMedicationScheduleItemQueryServer;
  [(HDQueryServer *)&v53 _queue_start];
  queryUUID = [(HDQueryServer *)selfCopy queryUUID];
  clientProxy = [(HDQueryServer *)selfCopy clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  fromDate = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration fromDate];

  if (fromDate)
  {
    fromDate2 = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration fromDate];
    v8 = HDMedicationScheduleItemPredicateForScheduledDateTime(6, fromDate2);
  }

  else
  {
    v8 = 0;
  }

  toDate = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration toDate];

  if (toDate)
  {
    toDate2 = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration toDate];
    v11 = HDMedicationScheduleItemPredicateForScheduledDateTime(3, toDate2);

    if (v8)
    {
      v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v11];

      v8 = v12;
    }

    else
    {
      v8 = v11;
    }
  }

  identifier = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration identifier];

  if (identifier)
  {
    identifier2 = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration identifier];
    v15 = HDMedicationScheduleItemPredicateForIdentifier(identifier2, 1);

    if (v8)
    {
      v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v15];

      v8 = v16;
    }

    else
    {
      v8 = v15;
    }
  }

  sortDescriptors = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration sortDescriptors];

  v18 = 0x277CBE000uLL;
  if (sortDescriptors)
  {
    v42 = remoteObjectProxy;
    v43 = queryUUID;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v41 = selfCopy;
    sortDescriptors2 = [(HKMedicationScheduleItemQueryConfiguration *)selfCopy->_configuration sortDescriptors];
    v21 = [sortDescriptors2 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      v24 = *MEMORY[0x277D113F0];
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(sortDescriptors2);
          }

          v26 = *(*(&v49 + 1) + 8 * i);
          v27 = [v26 key];
          v28 = [v27 isEqualToString:v24];

          if (!v28)
          {
            v31 = MEMORY[0x277CCA9B8];
            v32 = MEMORY[0x277CCACA8];
            v33 = objc_opt_class();
            v34 = [v26 key];
            v35 = [v32 stringWithFormat:@"%@ Invalid sort descriptor key passed: '%@", v33, v34];
            v36 = [v31 hk_error:3 description:v35];

            remoteObjectProxy = v42;
            v37 = v43;
            [v42 client_deliverError:v36 forQuery:v43];
            goto LABEL_30;
          }

          v29 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"scheduled_date_time" entityClass:objc_opt_class() ascending:{objc_msgSend(v26, "ascending")}];
          [v19 addObject:v29];
        }

        v22 = [sortDescriptors2 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    remoteObjectProxy = v42;
    v30 = v43;
    selfCopy = v41;
    v18 = 0x277CBE000;
  }

  else
  {
    v30 = queryUUID;
    v19 = 0;
  }

  v38 = objc_alloc_init(*(v18 + 2840));
  profile = [(HDQueryServer *)selfCopy profile];
  database = [profile database];
  v48 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke;
  v44[3] = &unk_2796CE850;
  v45 = v8;
  v19 = v19;
  v46 = v19;
  sortDescriptors2 = v38;
  v47 = sortDescriptors2;
  LODWORD(v38) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:database error:&v48 block:v44];
  v36 = v48;

  if (v38)
  {
    v37 = v30;
    [remoteObjectProxy client_deliverScheduleItems:sortDescriptors2 queryUUID:v30];
  }

  else
  {
    v37 = v30;
    [remoteObjectProxy client_deliverError:v36 forQuery:v30];
  }

LABEL_30:
}

BOOL __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke_2;
  v9[3] = &unk_2796CD618;
  v10 = *(a1 + 48);
  v7 = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v5 orderingTerms:v6 transaction:a2 error:a3 enumerationHandler:v9];

  return v7;
}

@end