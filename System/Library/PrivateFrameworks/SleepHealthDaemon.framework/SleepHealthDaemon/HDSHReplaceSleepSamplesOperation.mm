@interface HDSHReplaceSleepSamplesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDSHReplaceSleepSamplesOperation)initWithCoder:(id)coder;
- (HDSHReplaceSleepSamplesOperation)initWithSleepSamplesToInsert:(id)insert source:(id)source replacementInterval:(id)interval accessibilityAssertion:(id)assertion;
- (id)transactionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSHReplaceSleepSamplesOperation

- (HDSHReplaceSleepSamplesOperation)initWithSleepSamplesToInsert:(id)insert source:(id)source replacementInterval:(id)interval accessibilityAssertion:(id)assertion
{
  insertCopy = insert;
  sourceCopy = source;
  intervalCopy = interval;
  assertionCopy = assertion;
  v20.receiver = self;
  v20.super_class = HDSHReplaceSleepSamplesOperation;
  v14 = [(HDSHReplaceSleepSamplesOperation *)&v20 init];
  if (v14)
  {
    v15 = [insertCopy copy];
    sleepSamples = v14->_sleepSamples;
    v14->_sleepSamples = v15;

    objc_storeStrong(&v14->_source, source);
    v17 = [intervalCopy copy];
    replacementInterval = v14->_replacementInterval;
    v14->_replacementInterval = v17;

    objc_storeStrong(&v14->_accessibilityAssertion, assertion);
  }

  return v14;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v10 = profileCopy;
  v11 = transactionCopy;
  if (!self)
  {
    goto LABEL_18;
  }

  v12 = MEMORY[0x277CCC320];
  if (self->_replacementInterval)
  {
    v13 = v10;
    sourceManager = [v13 sourceManager];
    source = self->_source;
    v77 = 0;
    [sourceManager sourceEntityForClientSource:source createOrUpdateIfNecessary:0 error:&v77];
    v17 = v16 = v12;
    v18 = v77;

    _HKInitializeLogging();
    v19 = *v16;
    if (v17)
    {
      v68 = v18;
      v69 = v13;
      errorCopy = error;
      v72 = v11;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        replacementInterval = self->_replacementInterval;
        *buf = 138543874;
        v80 = v21;
        v81 = 2112;
        v82 = v17;
        v83 = 2112;
        v84 = replacementInterval;
        v23 = v21;
        _os_log_impl(&dword_269C02000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting sleep samples source: %@, dateInterval: %@", buf, 0x20u);
      }

      v24 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
      v25 = MEMORY[0x277D10B20];
      v26 = HDSampleEntityPredicateForDateInterval();
      v78[0] = v26;
      v27 = HDSampleEntityPredicateForDataType();
      v78[1] = v27;
      v28 = HDDataEntityPredicateForSourceEntity();
      v78[2] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
      v30 = [v25 predicateMatchingAllPredicates:v29];

      v76 = 0;
      v31 = v69;
      dataManager = [v69 dataManager];
      v33 = [dataManager deleteDataObjectsOfClass:objc_opt_class() predicate:v30 limit:*MEMORY[0x277D10C08] deletedSampleCount:&v76 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:errorCopy];

      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = objc_opt_class();
        v37 = v76;
        v38 = MEMORY[0x277CCABB0];
        v67 = v36;
        v39 = [v38 numberWithBool:v33];
        *buf = 138543874;
        v80 = v36;
        v81 = 2048;
        v82 = v37;
        v31 = v69;
        v83 = 2112;
        v84 = v39;
        _os_log_impl(&dword_269C02000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success deleting %ld samples: %@", buf, 0x20u);
      }

      error = errorCopy;
      v11 = v72;
      v12 = MEMORY[0x277CCC320];
      if (v33)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v61 = v19;
        v62 = objc_opt_class();
        *buf = 138543618;
        v80 = v62;
        v81 = 2112;
        v82 = v18;
        v63 = v62;
        _os_log_error_impl(&dword_269C02000, v61, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve source entity for deletion: %@", buf, 0x16u);
      }
    }

LABEL_18:
    LOBYTE(v52) = 0;
    goto LABEL_23;
  }

LABEL_9:
  v40 = v10;
  sourceManager2 = [v40 sourceManager];
  v42 = self->_source;
  v78[0] = 0;
  v43 = [sourceManager2 sourceEntityForClientSource:v42 createOrUpdateIfNecessary:1 error:v78];
  v44 = v78[0];

  _HKInitializeLogging();
  v45 = *v12;
  if (v43)
  {
    v73 = v11;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
      v47 = objc_opt_class();
      *buf = 138543618;
      v80 = v47;
      v81 = 2112;
      v82 = v43;
      v48 = v47;
      _os_log_impl(&dword_269C02000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting sleep samples for source: %@", buf, 0x16u);
    }

    dataProvenanceManager = [v40 dataProvenanceManager];
    v50 = [dataProvenanceManager localDataProvenanceForSourceEntity:v43 version:0 deviceEntity:0];

    dataManager2 = [v40 dataManager];
    v52 = [dataManager2 insertDataObjects:self->_sleepSamples withProvenance:v50 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

    _HKInitializeLogging();
    v53 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v53;
      v55 = objc_opt_class();
      v71 = v44;
      v56 = MEMORY[0x277CCABB0];
      v57 = v55;
      v58 = [v56 numberWithBool:v52];
      *buf = 138543618;
      v80 = v55;
      v81 = 2112;
      v82 = v58;
      _os_log_impl(&dword_269C02000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success inserting: %@", buf, 0x16u);

      v44 = v71;
    }

    v11 = v73;
  }

  else
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v64 = v45;
      v65 = objc_opt_class();
      *buf = 138543618;
      v80 = v65;
      v81 = 2112;
      v82 = v44;
      v66 = v65;
      _os_log_error_impl(&dword_269C02000, v64, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve source entity for insertion: %@", buf, 0x16u);
    }

    LOBYTE(v52) = 0;
  }

LABEL_23:
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __73__HDSHReplaceSleepSamplesOperation_performWithProfile_transaction_error___block_invoke;
  v74[3] = &unk_279C830B8;
  v74[4] = self;
  v75 = v10;
  v59 = v10;
  [v11 onCommit:v74 orRollback:0];

  return v52;
}

void __73__HDSHReplaceSleepSamplesOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  v5 = MEMORY[0x277CCC320];
  if (v2)
  {
    v6 = [v3 nanoSyncManager];

    if (v6)
    {
      _HKInitializeLogging();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        *buf = 138543362;
        *&buf[4] = objc_opt_class();
        v9 = *&buf[4];
        _os_log_impl(&dword_269C02000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] nano syncing health data", buf, 0xCu);
      }

      v10 = [v4 nanoSyncManager];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Sleep samples saved", v2];
      v12 = *(v2 + 40);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __64__HDSHReplaceSleepSamplesOperation__performNanoSyncWithProfile___block_invoke;
      v32 = &unk_279C83090;
      v33 = v2;
      [v10 syncHealthDataWithOptions:0 reason:v11 accessibilityAssertion:v12 completion:buf];
    }
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v14;
  if (v13)
  {
    v16 = [v14 cloudSyncManager];
    v30 = 0;
    v17 = [v16 canPerformCloudSyncWithError:&v30];
    v18 = v30;

    _HKInitializeLogging();
    v19 = *v5;
    v20 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v20)
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v22;
        v23 = v22;
        _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] cloud syncing health data", buf, 0xCu);
      }

      v24 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
      v25 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v24];
      v26 = [v15 cloudSyncManager];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Sleep samples saved", v13];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__HDSHReplaceSleepSamplesOperation__performCloudSyncWithProfile___block_invoke;
      v32 = &unk_279C83090;
      v33 = v13;
      [v26 syncWithRequest:v25 reason:v27 completion:buf];
    }

    else
    {
      if (!v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v24 = v19;
      v28 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      v29 = v28;
      _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping cloud sync for sleep sample update: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __64__HDSHReplaceSleepSamplesOperation__performNanoSyncWithProfile___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v4;
      v7 = v9;
      _os_log_error_impl(&dword_269C02000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to nano sync health data with error: %{public}@", &v8, 0x16u);
    }
  }
}

void __65__HDSHReplaceSleepSamplesOperation__performCloudSyncWithProfile___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v4;
      v7 = v9;
      _os_log_error_impl(&dword_269C02000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to cloud sync health data with error: %{public}@", &v8, 0x16u);
    }
  }
}

- (id)transactionContext
{
  contextForWritingProtectedData = [MEMORY[0x277D10788] contextForWritingProtectedData];
  v4 = [contextForWritingProtectedData contextWithAccessibilityAssertion:self->_accessibilityAssertion];

  return v4;
}

- (HDSHReplaceSleepSamplesOperation)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sleep_samples"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacement_interval"];

  v11 = [(HDSHReplaceSleepSamplesOperation *)self initWithSleepSamplesToInsert:v8 source:v9 replacementInterval:v10 accessibilityAssertion:0];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDSHReplaceSleepSamplesOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sleepSamples forKey:{@"sleep_samples", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_replacementInterval forKey:@"replacement_interval"];
}

@end