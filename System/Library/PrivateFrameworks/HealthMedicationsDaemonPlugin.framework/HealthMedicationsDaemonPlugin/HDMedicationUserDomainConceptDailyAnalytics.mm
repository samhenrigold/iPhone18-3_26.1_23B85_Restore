@interface HDMedicationUserDomainConceptDailyAnalytics
+ (id)_countOfUserDomainConceptsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error;
+ (id)_medicationsAddedCountSinceDate:(id)date transaction:(id)transaction;
+ (id)_predicateForMedicationsSinceDate:(id)date;
- (BOOL)isEventSubmissionIHAGated;
- (HDMedicationUserDomainConceptDailyAnalytics)initWithProfile:(id)profile medicationsKeyValueDomain:(id)domain calendar:(id)calendar currentDate:(id)date;
- (NSString)eventName;
- (id)_archivedMedsCountPayloadWithTransaction:(id)transaction;
- (id)_hasAddedMedsInPastIHAGatedPayloadWithTransaction:(id)transaction;
- (id)_hasAddedMedsInPastUnrestrictedPayloadWithTransaction:(id)transaction;
- (id)_hasAnyLifestyleFactorEnabledPayload;
- (id)_hasMedsListPayloadWithTransaction:(id)transaction;
- (id)_medsCountPayloadWithTransaction:(id)transaction;
- (id)_medsInteractionsPayloadWithTransaction:(id)transaction;
- (id)_weeksSinceFirstAddedMedPayloadWithTransaction:(id)transaction;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDMedicationUserDomainConceptDailyAnalytics

- (HDMedicationUserDomainConceptDailyAnalytics)initWithProfile:(id)profile medicationsKeyValueDomain:(id)domain calendar:(id)calendar currentDate:(id)date
{
  profileCopy = profile;
  domainCopy = domain;
  calendarCopy = calendar;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = HDMedicationUserDomainConceptDailyAnalytics;
  v14 = [(HDMedicationUserDomainConceptDailyAnalytics *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_medicationsKeyValueDomain, domain);
    objc_storeStrong(&v15->_calendar, calendar);
    objc_storeStrong(&v15->_currentDate, date);
  }

  return v15;
}

- (BOOL)isEventSubmissionIHAGated
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 1;
}

- (NSString)eventName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  selfCopy = self;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDMedicationUserDomainConceptDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v13[3] = &unk_2796CD5C8;
  v14 = v5;
  v8 = v5;
  LODWORD(v5) = [(HDHealthEntity *)HDMedicationUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:&v16 block:v13];
  v9 = v16;

  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t __96__HDMedicationUserDomainConceptDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasAddedMedsInPastUnrestrictedPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _hasMedsListPayloadWithTransaction:v5];
  [v7 hk_addEntriesFromNonNilDictionary:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _hasAnyLifestyleFactorEnabledPayload];
  [v9 hk_addEntriesFromNonNilDictionary:v10];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) _weeksSinceFirstAddedMedPayloadWithTransaction:v5];

  [v11 hk_addEntriesFromNonNilDictionary:v12];
  return 1;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  selfCopy = self;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__HDMedicationUserDomainConceptDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke;
  v13[3] = &unk_2796CD5C8;
  v14 = v5;
  v8 = v5;
  LODWORD(v5) = [(HDHealthEntity *)HDMedicationUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:&v16 block:v13];
  v9 = v16;

  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t __92__HDMedicationUserDomainConceptDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasAddedMedsInPastIHAGatedPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _medsCountPayloadWithTransaction:v5];
  [v7 hk_addEntriesFromNonNilDictionary:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _archivedMedsCountPayloadWithTransaction:v5];
  [v9 hk_addEntriesFromNonNilDictionary:v10];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) _medsInteractionsPayloadWithTransaction:v5];

  [v11 hk_addEntriesFromNonNilDictionary:v12];
  return 1;
}

- (id)_weeksSinceFirstAddedMedPayloadWithTransaction:(id)transaction
{
  v31[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v7 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10500] entityClass:objc_opt_class() ascending:1];
  v31[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userDomainConceptManager = [WeakRetained userDomainConceptManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__HDMedicationUserDomainConceptDailyAnalytics__weeksSinceFirstAddedMedPayloadWithTransaction___block_invoke;
  v21[3] = &unk_2796CE488;
  v21[4] = &v23;
  v22 = 0;
  v12 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v7 limit:1 orderingTerms:v9 error:&v22 enumerationHandler:v21];
  v13 = v22;

  if (v12)
  {
    if (v24[5])
    {
      v14 = [(NSCalendar *)self->_calendar startOfDayForDate:self->_currentDate];
      calendar = self->_calendar;
      creationDate = [v24[5] creationDate];
      v17 = [(NSCalendar *)calendar startOfDayForDate:creationDate];

      v18 = HKMedicationAnalyticsWeeksBetweenDates();
      [v5 setObject:v18 forKeyedSubscript:@"weeksSinceFirstAddedMed"];

      v19 = v5;
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] No error when fetching oldest medications added, but also no value", buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _weeksSinceFirstAddedMedPayloadWithTransaction:];
    }
  }

  v19 = 0;
LABEL_9:

  _Block_object_dispose(&v23, 8);

  return v19;
}

- (id)_hasAnyLifestyleFactorEnabledPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11418]])
  {
    [v4 addObject:&unk_2863C2A98];
  }

  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11450]])
  {
    [v4 addObject:&unk_2863C2AB0];
  }

  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D114C0]])
  {
    [v4 addObject:&unk_2863C2AC8];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "count") != 0}];
  [v3 setObject:v5 forKeyedSubscript:@"hasAnyLifestyleFactorEnabled"];

  return v3;
}

- (id)_medsInteractionsPayloadWithTransaction:(id)transaction
{
  v73[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v47 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  appleOntologySystem = [MEMORY[0x277CCD5D0] appleOntologySystem];
  v46 = HDUserDomainConceptEntityPredicateForMedicalCodingSystem();

  v45 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v5 = MEMORY[0x277D10B20];
  v73[0] = v47;
  v73[1] = v45;
  v73[2] = v46;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
  v44 = [v5 predicateMatchingAllPredicates:v6];

  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__10;
  v69 = __Block_byref_object_dispose__10;
  v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userDomainConceptManager = [WeakRetained userDomainConceptManager];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __87__HDMedicationUserDomainConceptDailyAnalytics__medsInteractionsPayloadWithTransaction___block_invoke;
  v63[3] = &unk_2796CE4B0;
  v63[4] = &v65;
  v64 = 0;
  v9 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v44 error:&v64 enumerationHandler:v63];
  v50 = v64;

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11418]])
    {
      [v10 addObject:&unk_2863C2A98];
    }

    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11450]])
    {
      [v10 addObject:&unk_2863C2AB0];
    }

    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D114C0]])
    {
      [v10 addObject:&unk_2863C2AC8];
    }

    v42 = v10;

    v11 = v66[5];
    v12 = objc_loadWeakRetained(&self->_profile);
    v62 = 0;
    v41 = [HDDrugInteractionEngine interactionResultsForMedications:v11 lifestyleFactors:v42 profile:v12 error:&v62];
    v50 = v62;

    if (v41)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v41;
      v13 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v13)
      {
        v52 = *v59;
        do
        {
          v53 = v13;
          for (i = 0; i != v53; ++i)
          {
            if (*v59 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v58 + 1) + 8 * i);
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            interactions = [v18 interactions];
            v20 = [interactions countByEnumeratingWithState:&v54 objects:v71 count:16];
            if (v20)
            {
              v21 = *v55;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v55 != v21)
                  {
                    objc_enumerationMutation(interactions);
                  }

                  severity = [*(*(&v54 + 1) + 8 * j) severity];
                  severityLevel = [severity severityLevel];

                  switch(severityLevel)
                  {
                    case 1:
                      ++v14;
                      break;
                    case 2:
                      ++v15;
                      break;
                    case 3:
                      ++v16;
                      break;
                  }
                }

                v20 = [interactions countByEnumeratingWithState:&v54 objects:v71 count:16];
              }

              while (v20);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
        }

        while (v13);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:v15 + v14 + v16];
      v26 = HDMedicationDailyAnalyticsBucketForCount(v25);
      [v49 setObject:v26 forKeyedSubscript:@"numberOfMedsInteractions"];

      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v28 = HDMedicationDailyAnalyticsBucketForCount(v27);
      [v49 setObject:v28 forKeyedSubscript:@"numberOfSevereMedsInteractions"];

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v30 = HDMedicationDailyAnalyticsBucketForCount(v29);
      [v49 setObject:v30 forKeyedSubscript:@"numberOfCriticalMedsInteractions"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      v32 = HDMedicationDailyAnalyticsBucketForCount(v31);
      [v49 setObject:v32 forKeyedSubscript:@"numberOfMajorMedsInteractions"];

      v33 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      v34 = HDMedicationDailyAnalyticsBucketForCount(v33);
      [v49 setObject:v34 forKeyedSubscript:@"numberOfSeriousMedsInteractions"];

      v35 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v36 = HDMedicationDailyAnalyticsBucketForCount(v35);
      [v49 setObject:v36 forKeyedSubscript:@"numberOfModerateMedsInteractions"];

      v37 = v49;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogMedication();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationUserDomainConceptDailyAnalytics _medsInteractionsPayloadWithTransaction:];
      }

      v37 = 0;
    }

    v38 = v42;
  }

  else
  {
    _HKInitializeLogging();
    v38 = HKLogMedication();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsInteractionsPayloadWithTransaction:];
    }

    v37 = 0;
  }

  _Block_object_dispose(&v65, 8);

  return v37;
}

- (id)_hasAddedMedsInPastIHAGatedPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-1 toDate:self->_currentDate];
  v7 = [objc_opt_class() _medicationsAddedCountSinceDate:v6 transaction:transactionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPast24hrs"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastWeek"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastYear"];
      goto LABEL_11;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPast24hrs"];
  }

  v10 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-7 toDate:self->_currentDate];
  v11 = [objc_opt_class() _medicationsAddedCountSinceDate:v10 transaction:transactionCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 integerValue] < 1)
    {
      v16 = MEMORY[0x277CBEC28];
      v14 = @"hasAddedMedsInPastWeek";
      v15 = v5;
    }

    else
    {
      v13 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPastWeek"];
      [v5 setObject:v13 forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v13 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      v14 = @"hasAddedMedsInPastYear";
      v15 = v5;
      v16 = v13;
    }

    [v15 setObject:v16 forKeyedSubscript:v14];
  }

LABEL_11:

  return v5;
}

- (id)_hasAddedMedsInPastUnrestrictedPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-30 toDate:self->_currentDate];
  v7 = [objc_opt_class() _medicationsAddedCountSinceDate:v6 transaction:transactionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastYear"];
      v10 = v5;
      goto LABEL_13;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPastMonth"];
  }

  v11 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-180 toDate:self->_currentDate];
  v12 = [objc_opt_class() _medicationsAddedCountSinceDate:v11 transaction:transactionCopy];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  if ([v12 integerValue] < 1)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPast6Months"];
LABEL_9:
    v16 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-365 toDate:self->_currentDate];
    v17 = [objc_opt_class() _medicationsAddedCountSinceDate:v16 transaction:transactionCopy];
    v18 = v17;
    if (v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "integerValue") > 0}];
      [v5 setObject:v19 forKeyedSubscript:@"hasAddedMedsInPastYear"];
    }

    v20 = v5;

    goto LABEL_12;
  }

  v14 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPast6Months"];
  [v5 setObject:v14 forKeyedSubscript:@"hasAddedMedsInPastYear"];
  v15 = v5;
LABEL_12:

LABEL_13:

  return v5;
}

- (id)_medsCountPayloadWithTransaction:(id)transaction
{
  v3 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = 0;
  v7 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v6 options:0 transaction:transactionCopy error:&v11];

  v8 = v11;
  if (v7)
  {
    v9 = HDMedicationDailyAnalyticsBucketForCount(v7);
    [v5 setObject:v9 forKeyedSubscript:@"numberOfMedsInList"];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsCountPayloadWithTransaction:];
    }
  }

  return v5;
}

- (id)_archivedMedsCountPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0;
  v5 = [objc_opt_class() _countOfUserDomainConceptsWithPredicate:0 transaction:transactionCopy error:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = objc_opt_class();
    v8 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
    v16 = v6;
    v9 = [v7 _countOfUserDomainConceptsWithPredicate:v8 transaction:transactionCopy error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") - -[NSObject intValue](v9, "intValue")}];
      v12 = HDMedicationDailyAnalyticsBucketForCount(v11);
      [v4 setObject:v12 forKeyedSubscript:@"numberOfArchivedMeds"];

      v13 = v4;
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationUserDomainConceptDailyAnalytics _archivedMedsCountPayloadWithTransaction:];
      }

      v13 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _archivedMedsCountPayloadWithTransaction:];
    }

    v13 = 0;
    v10 = v6;
  }

  return v13;
}

- (id)_hasMedsListPayloadWithTransaction:(id)transaction
{
  v3 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = 0;
  v7 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v6 options:0 transaction:transactionCopy error:&v11];

  v8 = v11;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "integerValue") > 0}];
    [v5 setObject:v9 forKeyedSubscript:@"hasMedsList"];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsCountPayloadWithTransaction:];
    }
  }

  return v5;
}

+ (id)_medicationsAddedCountSinceDate:(id)date transaction:(id)transaction
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  transactionCopy = transaction;
  v8 = [objc_opt_class() _predicateForMedicationsSinceDate:dateCopy];
  v14 = 0;
  v9 = [objc_opt_class() _countOfUserDomainConceptsWithPredicate:v8 transaction:transactionCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v17 = 2114;
      v18 = dateCopy;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error when determining if user added medications since date: %{public}@, continuing daily analytics submission: %{public}@", buf, 0x20u);
    }
  }

  return v9;
}

+ (id)_countOfUserDomainConceptsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  predicateCopy = predicate;
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D10560];
  protectedDatabase = [transactionCopy protectedDatabase];

  v12 = [v9 countDistinctForProperty:v10 predicate:predicateCopy database:protectedDatabase error:error];

  return v12;
}

+ (id)_predicateForMedicationsSinceDate:(id)date
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCDB50];
  dateCopy = date;
  medicationUserDomainConceptTypeIdentifier = [v3 medicationUserDomainConceptTypeIdentifier];
  v6 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10500] greaterThanValue:dateCopy];

  v8 = MEMORY[0x277D10B20];
  v12[0] = v6;
  v12[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v8 predicateMatchingAllPredicates:v9];

  return v10;
}

@end