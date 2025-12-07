@interface HDMedicationDoseEventDailyAnalytics
+ (id)_countOfDoseEventsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error;
+ (id)_doseEventCountLoggedSinceDate:(id)date transaction:(id)transaction;
+ (id)_predicateForDoseEventsBetweenDate:(id)date andDate:(id)andDate;
+ (id)_predicateForDoseEventsLoggedSinceDate:(id)date;
- (HDMedicationDoseEventDailyAnalytics)initWithProfile:(id)profile calendar:(id)calendar currentDate:(id)date;
- (NSString)eventName;
- (id)_hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:(id)transaction;
- (id)_hasLoggedMedsInPastPayloadWithTransaction:(id)transaction;
- (id)_weeksSinceFirstLoggedMedPayload;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDMedicationDoseEventDailyAnalytics

- (HDMedicationDoseEventDailyAnalytics)initWithProfile:(id)profile calendar:(id)calendar currentDate:(id)date
{
  profileCopy = profile;
  calendarCopy = calendar;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = HDMedicationDoseEventDailyAnalytics;
  v11 = [(HDMedicationDoseEventDailyAnalytics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_calendar, calendar);
    objc_storeStrong(&v12->_currentDate, date);
  }

  return v12;
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
  v6 = MEMORY[0x277D10768];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  selfCopy = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HDMedicationDoseEventDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v14[3] = &unk_2796CD5C8;
  v15 = v5;
  v9 = v5;
  LODWORD(v5) = [v6 performReadTransactionWithHealthDatabase:database error:&v17 block:v14];
  v10 = v17;

  if (v5)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __88__HDMedicationDoseEventDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _weeksSinceFirstLoggedMedPayload];
  [v1 hk_addEntriesFromNonNilDictionary:v2];

  return 1;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277D10768];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  selfCopy = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDMedicationDoseEventDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke;
  v14[3] = &unk_2796CD5C8;
  v15 = v5;
  v9 = v5;
  LODWORD(v5) = [v6 performReadTransactionWithHealthDatabase:database error:&v17 block:v14];
  v10 = v17;

  if (v5)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __84__HDMedicationDoseEventDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasLoggedMedsInPastPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:v5];

  [v7 hk_addEntriesFromNonNilDictionary:v8];
  return 1;
}

- (id)_hasLoggedMedsInPastPayloadWithTransaction:(id)transaction
{
  v56[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-1 toDate:self->_currentDate];
  v7 = [objc_opt_class() _doseEventCountLoggedSinceDate:v6 transaction:transactionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPast24hrs"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
      [v5 setObject:v9 forKeyedSubscript:@"hasMedsHistory"];
      v10 = v5;
      goto LABEL_30;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPast24hrs"];
  }

  v11 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-7 toDate:self->_currentDate];
  v12 = [objc_opt_class() _doseEventCountLoggedSinceDate:v11 transaction:transactionCopy];
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v16 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-30 toDate:self->_currentDate];
    v17 = [objc_opt_class() _doseEventCountLoggedSinceDate:v16 transaction:transactionCopy];
    v18 = v17;
    if (v17)
    {
      if ([v17 integerValue] >= 1)
      {
        v19 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
        [v5 setObject:v19 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
        [v5 setObject:v19 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v19 forKeyedSubscript:@"hasMedsHistory"];
        v20 = v5;
LABEL_28:

        goto LABEL_29;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
    }

    v53 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-180 toDate:self->_currentDate];
    v21 = [objc_opt_class() _doseEventCountLoggedSinceDate:v53 transaction:transactionCopy];
    v22 = v21;
    if (v21)
    {
      if ([v21 integerValue] >= 1)
      {
        v23 = v22;
        v24 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
        [v5 setObject:v24 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v24 forKeyedSubscript:@"hasMedsHistory"];
        v25 = v5;
LABEL_27:

        goto LABEL_28;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
    }

    v50 = v18;
    v51 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-365 toDate:self->_currentDate];
    v26 = [objc_opt_class() _doseEventCountLoggedSinceDate:v51 transaction:transactionCopy];
    v52 = v22;
    v49 = v26;
    if (v26)
    {
      if ([v26 integerValue] >= 1)
      {
        v27 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v27 forKeyedSubscript:@"hasMedsHistory"];
        v28 = v5;
LABEL_26:

        v23 = v52;
        goto LABEL_27;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastYear"];
    }

    v44 = v16;
    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    v56[0] = medicationDoseEventType;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    v31 = HDSampleEntityPredicateForDataTypes();

    v32 = HDMedicationDoseEventEntityPredicateForStatuses();
    v33 = MEMORY[0x277D10B20];
    v47 = v32;
    v48 = v31;
    v55[0] = v31;
    v55[1] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v35 = [v33 predicateMatchingAllPredicates:v34];

    v36 = objc_opt_class();
    protectedDatabase = [transactionCopy protectedDatabase];
    v54 = 0;
    v46 = v35;
    v38 = [v36 anyInDatabase:protectedDatabase predicate:v35 error:&v54];
    v43 = v54;

    v45 = v38;
    if (v38)
    {
      v39 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [v5 setObject:v39 forKeyedSubscript:@"hasMedsHistory"];
      v40 = v43;
      v16 = v44;
      v18 = v50;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogMedication();
      v18 = v50;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v43;
        [HDMedicationDoseEventDailyAnalytics _hasLoggedMedsInPastPayloadWithTransaction:];
        v16 = v44;
      }

      else
      {
        v40 = v43;
        v16 = v44;
      }
    }

    v41 = v5;
    goto LABEL_26;
  }

  if ([v12 integerValue] < 1)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
  [v5 setObject:v14 forKeyedSubscript:@"hasMedsHistory"];
  v15 = v5;
LABEL_29:

LABEL_30:

  return v5;
}

- (id)_weeksSinceFirstLoggedMedPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSCalendar *)self->_calendar startOfDayForDate:self->_currentDate];
  v5 = HDMedicationDoseEventEntityPredicateForStatuses();
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = 0;
  v9 = [v7 oldestSampleWithType:medicationDoseEventType profile:WeakRetained encodingOptions:0 predicate:v5 error:&v16];
  v10 = v16;

  if (v9)
  {
    calendar = self->_calendar;
    _creationDate = [v9 _creationDate];
    v13 = [(NSCalendar *)calendar startOfDayForDate:_creationDate];

    v14 = HKMedicationAnalyticsWeeksBetweenDates();
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"weeksSinceFirstLoggedMed"];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDoseEventDailyAnalytics _weeksSinceFirstLoggedMedPayload];
    }
  }

  return v3;
}

- (id)_hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:(id)transaction
{
  v43[2] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:-1 toDate:self->_currentDate options:0];
  v7 = [(NSCalendar *)self->_calendar startOfDayForDate:v6];

  v8 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:1 toDate:v7 options:0];
  v9 = [(NSCalendar *)self->_calendar startOfDayForDate:v8];

  v34 = v9;
  v35 = v7;
  v10 = [objc_opt_class() _predicateForDoseEventsBetweenDate:v7 andDate:v9];
  v11 = HDMedicationDoseEventEntityPredicateForLogOrigin();
  v12 = MEMORY[0x277D10B20];
  v36 = v11;
  v37 = v10;
  v43[0] = v10;
  v43[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v14 = [v12 predicateMatchingAllPredicates:v13];

  v15 = objc_opt_class();
  v16 = *MEMORY[0x277D10420];
  v17 = [transactionCopy databaseForEntityClass:v15];
  v39 = 0;
  v33 = v14;
  v18 = [v15 countValueForProperty:v16 predicate:v14 database:v17 error:&v39];
  v19 = v39;

  if (v18)
  {
    if ([v18 integerValue] <= 0)
    {
      _HKInitializeLogging();
      v20 = HKLogMedication();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] No scheduled dose events found for yesterday", buf, 0xCu);
      }
    }

    else
    {
      v32 = v5;
      v20 = HDMedicationDoseEventEntityPredicateForStatuses();
      v21 = transactionCopy;
      v22 = MEMORY[0x277D10B20];
      v40[0] = v37;
      v40[1] = v36;
      v40[2] = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
      v24 = v22;
      transactionCopy = v21;
      v25 = [v24 predicateMatchingAllPredicates:v23];

      v26 = [v21 databaseForEntityClass:v15];
      v38 = 0;
      v27 = [v15 countValueForProperty:v16 predicate:v25 database:v26 error:&v38];
      v19 = v38;

      if (v27)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v18, "integerValue") == objc_msgSend(v27, "integerValue")}];
        v5 = v32;
        [v32 setObject:v28 forKeyedSubscript:@"hasLoggedAllScheduledMedsInPreviousDay"];

        v29 = v32;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v30 = HKLogMedication();
      v5 = v32;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationDoseEventDailyAnalytics _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogMedication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDoseEventDailyAnalytics _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:];
    }
  }

  v29 = 0;
LABEL_13:

  return v29;
}

+ (id)_doseEventCountLoggedSinceDate:(id)date transaction:(id)transaction
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  transactionCopy = transaction;
  v8 = [objc_opt_class() _predicateForDoseEventsLoggedSinceDate:dateCopy];
  v14 = 0;
  v9 = [objc_opt_class() _countOfDoseEventsWithPredicate:v8 transaction:transactionCopy error:&v14];

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
      _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error when determining if logged medications since date: %{public}@, continuing daily analytics submission: %{public}@", buf, 0x20u);
    }
  }

  return v9;
}

+ (id)_countOfDoseEventsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  predicateCopy = predicate;
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D10420];
  protectedDatabase = [transactionCopy protectedDatabase];

  v12 = [v9 countDistinctForProperty:v10 predicate:predicateCopy database:protectedDatabase error:error];

  return v12;
}

+ (id)_predicateForDoseEventsLoggedSinceDate:(id)date
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD658];
  dateCopy = date;
  medicationDoseEventType = [v3 medicationDoseEventType];
  v15[0] = medicationDoseEventType;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = HDSampleEntityPredicateForDataTypes();

  v8 = HDDataEntityPredicateForCreationDate();

  v9 = HDMedicationDoseEventEntityPredicateForStatuses();
  v10 = MEMORY[0x277D10B20];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  return v12;
}

+ (id)_predicateForDoseEventsBetweenDate:(id)date andDate:(id)andDate
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCD658];
  andDateCopy = andDate;
  dateCopy = date;
  medicationDoseEventType = [v5 medicationDoseEventType];
  v18[0] = medicationDoseEventType;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v10 = HDSampleEntityPredicateForDataTypes();

  v11 = HDSampleEntityPredicateForStartDate();

  v12 = HDSampleEntityPredicateForStartDate();

  v13 = MEMORY[0x277D10B20];
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v15 = [v13 predicateMatchingAllPredicates:v14];

  return v15;
}

@end