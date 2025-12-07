@interface HDRPOxygenSaturationAnalyzer
- (HDRPOxygenSaturationAnalyzer)initWithProfile:(id)profile oxygenSaturationFeatureStatusProvider:(id)provider oxygenSaturationCompanionAnalysisFeatureStatusProvider:(id)statusProvider unitTestDelegate:(id)delegate;
- (id)_bloodOxygenSampleWithBloodOxygenMeasurement:(void *)measurement unprocessedSample:;
- (id)_dataTypeDetailsRoomUrlWithSample:(uint64_t)sample;
- (id)_heartRateSampleWithBloodOxygenMeasurement:(uint64_t)measurement;
- (uint64_t)_deleteUnprocessedSample:(uint64_t)sample error:;
- (uint64_t)_shouldAnalyzeSamples;
- (void)_analyzeSample:(void *)sample@<X2> transaction:(void *)transaction@<X3> error:(void *)error@<X8>;
- (void)_analyzeUnprocessedSamples;
- (void)_bloodOxygenAnalysisWithUnprocessedSample:(void *)sample@<X8>;
- (void)_insertAnalyzedSamplesWithBloodOxygenAnalysis:(void *)analysis@<X2> unprocessedSample:(void *)sample@<X3> provenance:(void *)provenance@<X4> error:(void *)error@<X8>;
- (void)_insertUnsuccessfulAnalysisSampleWithUnprocessedSample:(void *)sample@<X2> provenance:(void *)provenance@<X3> analyticsPayload:(uint64_t)payload@<X4> error:(uint64_t)error@<X8>;
- (void)_postMultipleMixedResultsNotification;
- (void)_postMultipleSuccessfullResultsNotification:(uint64_t)notification;
- (void)_postNotificationWithTitle:(void *)title body:(void *)body categoryIdentifier:(void *)identifier subtitle:(uint64_t)subtitle domain:(void *)domain url:(void *)url completion:;
- (void)_postSingleSuccessfulResultNotification:(uint64_t)notification;
- (void)_postSingleUnsuccessfulMeasurementNotification:(uint64_t)notification;
- (void)_sendAnalyticEventsForAnalysisSummaryIfNeeded:(uint64_t)needed;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDRPOxygenSaturationAnalyzer

- (HDRPOxygenSaturationAnalyzer)initWithProfile:(id)profile oxygenSaturationFeatureStatusProvider:(id)provider oxygenSaturationCompanionAnalysisFeatureStatusProvider:(id)statusProvider unitTestDelegate:(id)delegate
{
  profileCopy = profile;
  providerCopy = provider;
  statusProviderCopy = statusProvider;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = HDRPOxygenSaturationAnalyzer;
  v14 = [(HDRPOxygenSaturationAnalyzer *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_oxygenSaturationStatusProvider, provider);
    objc_storeStrong(&v15->_oxygenSaturationCompanionAnalysisStatusProvider, statusProvider);
    objc_storeStrong(&v15->_unitTestDelegate, delegate);
    v16 = objc_alloc(MEMORY[0x277D10800]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithProfile:profileCopy debugIdentifier:v18 delegate:v15];
    protectedDataOperation = v15->_protectedDataOperation;
    v15->_protectedDataOperation = v19;

    unprocessedBloodOxygenDataType = [MEMORY[0x277CCDAD8] unprocessedBloodOxygenDataType];
    unprocessedSampleType = v15->_unprocessedSampleType;
    v15->_unprocessedSampleType = unprocessedBloodOxygenDataType;

    [(HDProtectedDataOperation *)v15->_protectedDataOperation requestWorkWithPriority:2 error:0];
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    [WeakRetained registerProfileReadyObserver:v15 queue:0];
  }

  return v15;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  [dataManager addObserver:self forDataType:self->_unprocessedSampleType];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  protectedDataOperation = self->_protectedDataOperation;
  v9 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:1 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HDRPOxygenSaturationAnalyzer *)self samplesAdded:v7 anchor:v8];
    }
  }
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  profileCopy = profile;
  assertionCopy = assertion;
  completionCopy = completion;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  shouldAnalyze = [(HDRPOxygenSaturationAnalyzer *)self _shouldAnalyzeSamples];
  if (shouldAnalyze)
  {
    [(HDRPOxygenSaturationAnalyzer *)self _analyzeUnprocessedSamples];
    __move_assignment_8_8_t0w24_s24_s32_s40_s48(&v28, buf);
    _HKInitializeLogging();
    v15 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v25 = assertionCopy;
      v16 = profileCopy;
      v17 = operationCopy;
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v28];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v28 + 1)];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
      *buf = 138544130;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_262086000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blood Oxygen Analysis is complete. %@ sample(s) processed, of them %@ is/are user initiated, and of those %@ is/are unsuccessful measurements", buf, 0x2Au);

      operationCopy = v17;
      profileCopy = v16;
      assertionCopy = v25;
    }

    if (*(&v28 + 1) == 1)
    {
      if (v29 == 1 && v30)
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postSingleUnsuccessfulMeasurementNotification:v30];
      }

      else if (!v29 && *(&v29 + 1))
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postSingleSuccessfulResultNotification:?];
      }
    }

    else if (*(&v28 + 1) >= 2)
    {
      if (v29)
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postMultipleMixedResultsNotification];
      }

      else
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postMultipleSuccessfullResultsNotification:?];
      }
    }

    __copy_constructor_8_8_t0w24_s24_s32_s40_s48(v27, &v28);
    if (self)
    {
      [(HDRPOxygenSaturationAnalyzer *)self _sendAnalyticEventsForAnalysisSummaryIfNeeded:v27];
    }

    else
    {
      __destructor_8_s24_s32_s40_s48(v27);
    }
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_262086000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analysis", buf, 0xCu);
    }
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    unitTestDelegate = self->_unitTestDelegate;
    __copy_constructor_8_8_t0w24_s24_s32_s40_s48(v26, &v28);
    if (unitTestDelegate)
    {
      [(HDRPOxygenSaturationAnalyzerUnitTestDelegate *)unitTestDelegate _unitTest_didRunAnalysis:shouldAnalyze summary:v26];
    }

    else
    {
      __destructor_8_s24_s32_s40_s48(v26);
    }
  }

  completionCopy[2](completionCopy);
  __destructor_8_s24_s32_s40_s48(&v28);
}

- (void)_analyzeUnprocessedSamples
{
  v59 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    while (*(v16 + 24) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = MEMORY[0x277D105E0];
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      v14 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__HDRPOxygenSaturationAnalyzer__analyzeUnprocessedSamples__block_invoke;
      v13[3] = &unk_279B0E320;
      v13[4] = self;
      v13[5] = &v15;
      v13[6] = &v51;
      v13[7] = &v37;
      v13[8] = &v47;
      v13[9] = &v25;
      v13[10] = &v19;
      v13[11] = &v43;
      v13[12] = &v31;
      v7 = [v4 performWriteTransactionWithHealthDatabase:database error:&v14 block:v13];
      v8 = v14;

      if ((v7 & 1) == 0)
      {
        *(v16 + 24) = 0;
        if (v8)
        {
          _HKInitializeLogging();
          v9 = HKLogRespiratoryCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v8 localizedDescription];
            *buf = 138543618;
            selfCopy = self;
            v57 = 2112;
            v58 = localizedDescription;
            _os_log_error_impl(&dword_262086000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to analyze with error: %@", buf, 0x16u);
          }
        }
      }

      objc_autoreleasePoolPop(v3);
    }

    v11 = v48[3];
    *a2 = v52[3];
    a2[1] = v11;
    a2[2] = v44[3];
    a2[3] = v38[5];
    a2[4] = v32[5];
    a2[5] = v26[5];
    a2[6] = v20[5];
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
  }

  else
  {
    a2[6] = 0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }
}

- (void)_sendAnalyticEventsForAnalysisSummaryIfNeeded:(uint64_t)needed
{
  v23 = *MEMORY[0x277D85DE8];
  if (needed)
  {
    v3 = *(a2 + 40);
    if (v3 && [v3 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v4 = *(a2 + 40);
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
        v6 = *v18;
        do
        {
          v7 = 0;
          do
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v4);
            }

            AnalyticsSendEvent();
            ++v7;
          }

          while (v5 != v7);
          v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v5);
      }
    }

    v8 = *(a2 + 48);
    if (v8 && [v8 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v9 = *(a2 + 48);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v10)
      {
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v9);
            }

            AnalyticsSendEvent();
            ++v12;
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }

  __destructor_8_s24_s32_s40_s48(a2);
}

uint64_t __58__HDRPOxygenSaturationAnalyzer__analyzeUnprocessedSamples__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D10848];
  v7 = a1[4];
  v8 = *(v7 + 48);
  WeakRetained = objc_loadWeakRetained((v7 + 8));
  v34 = 0;
  v10 = [v6 mostRecentSampleWithType:v8 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v34];
  v11 = v34;

  if (v10)
  {
    v31 = 0;
    obj = 0;
    v33 = 0;
    [(HDRPOxygenSaturationAnalyzer *)a1[4] _analyzeSample:v10 transaction:v5 error:a3, &v31];
    if (!v31 || ([(HDRPOxygenSaturationAnalyzer *)a1[4] _deleteUnprocessedSample:v10 error:a3]& 1) == 0)
    {
      v16 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v12 = obj;
    if (!obj)
    {
      goto LABEL_31;
    }

    ++*(*(a1[6] + 8) + 24);
    if (BYTE1(v31) == 1)
    {
      v13 = [v12 metadata];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

      if ([v14 integerValue] == 1)
      {
        if (v33)
        {
          v15 = 10;
LABEL_29:
          [*(*(a1[v15] + 8) + 40) addObject:?];
          goto LABEL_30;
        }

        goto LABEL_30;
      }

      v26 = *(a1[7] + 8);
      if (*(v26 + 40))
      {
        v27 = [v12 endDate];
        v28 = [*(*(a1[7] + 8) + 40) endDate];
        v29 = [v27 hk_isAfterDate:v28];

        if (!v29)
        {
          goto LABEL_27;
        }

        v26 = *(a1[7] + 8);
      }

      objc_storeStrong((v26 + 40), v12);
LABEL_27:
      ++*(*(a1[8] + 8) + 24);
      if (v33)
      {
        v15 = 9;
        goto LABEL_29;
      }

LABEL_30:

      goto LABEL_31;
    }

    ++*(*(a1[11] + 8) + 24);
    ++*(*(a1[8] + 8) + 24);
    v18 = *(a1[12] + 8);
    if (*(v18 + 40))
    {
      v19 = [v12 endDate];
      v20 = [*(*(a1[12] + 8) + 40) endDate];
      v21 = [v19 hk_isAfterDate:v20];

      if (!v21)
      {
        goto LABEL_19;
      }

      v18 = *(a1[12] + 8);
    }

    objc_storeStrong((v18 + 40), v12);
LABEL_19:
    v22 = v33;
    if (v33)
    {
      v23 = [v12 metadata];
      v14 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

      v24 = [v14 integerValue];
      v25 = 9;
      if (v24 == 1)
      {
        v25 = 10;
      }

      [*(*(a1[v25] + 8) + 40) addObject:v22];
      goto LABEL_30;
    }

LABEL_31:
    v16 = 1;
    goto LABEL_32;
  }

  *(*(a1[5] + 8) + 24) = 0;
  if (v11)
  {
    if (a3)
    {
      v17 = v11;
      v16 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_33:

  return v16;
}

- (void)_analyzeSample:(void *)sample@<X2> transaction:(void *)transaction@<X3> error:(void *)error@<X8>
{
  v9 = a2;
  sampleCopy = sample;
  if (self)
  {
    payload = [v9 payload];

    if (payload)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      [(HDRPOxygenSaturationAnalyzer *)self _bloodOxygenAnalysisWithUnprocessedSample:v9, &v29];
      WeakRetained = objc_loadWeakRetained((self + 8));
      deviceManager = [WeakRetained deviceManager];
      device = [v9 device];
      v28 = 0;
      v15 = [deviceManager deviceEntityForDevice:device error:&v28];
      v16 = v28;

      if (v15)
      {
        v17 = objc_loadWeakRetained((self + 8));
        dataProvenanceManager = [v17 dataProvenanceManager];
        v19 = [dataProvenanceManager defaultLocalDataProvenanceWithDeviceEntity:v15];

        if (v29)
        {
          v25 = v29;
          v26 = v30;
          v27 = v31;
          [(HDRPOxygenSaturationAnalyzer *)self _insertAnalyzedSamplesWithBloodOxygenAnalysis:v9 unprocessedSample:v19 provenance:transaction error:error];
        }

        else
        {
          metadata = [v9 metadata];
          v24 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

          if ([v24 integerValue] == 1)
          {
            *error = 1;
            error[1] = 0;
            error[2] = v31;
          }

          else
          {
            [(HDRPOxygenSaturationAnalyzer *)self _insertUnsuccessfulAnalysisSampleWithUnprocessedSample:v9 provenance:v19 analyticsPayload:v31 error:transaction, error];
          }
        }
      }

      else
      {
        v20 = v16;
        v21 = v20;
        if (v20)
        {
          if (transaction)
          {
            v22 = v20;
            *transaction = v21;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        *error = 0;
        error[1] = 0;
        error[2] = 0;
      }
    }

    else
    {
      *error = 0;
      error[1] = 0;
      error[2] = 0;
      *error = 1;
    }
  }

  else
  {
    *error = 0;
    error[1] = 0;
    error[2] = 0;
  }
}

- (void)_bloodOxygenAnalysisWithUnprocessedSample:(void *)sample@<X8>
{
  v5 = a2;
  v13 = v5;
  if (self)
  {
    metadata = [v5 metadata];
    v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC478]];

    if (v7)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
      [v7 doubleValueForUnit:v9];
      v10 = [v8 numberWithDouble:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x277D0FC68];
    payload = [v13 payload];
    [v11 analyzeBloodOxygenFromRawData:payload withPressureInKilopascals:v10];
  }

  else
  {
    *sample = 0;
    sample[1] = 0;
    sample[2] = 0;
  }
}

- (void)_insertUnsuccessfulAnalysisSampleWithUnprocessedSample:(void *)sample@<X2> provenance:(void *)provenance@<X3> analyticsPayload:(uint64_t)payload@<X4> error:(uint64_t)error@<X8>
{
  v26[1] = *MEMORY[0x277D85DE8];
  provenanceCopy = provenance;
  if (self)
  {
    v12 = MEMORY[0x277CCD0C0];
    sampleCopy = sample;
    v14 = a2;
    v15 = [v12 alloc];
    v16 = [v15 initWithIdentifier:*MEMORY[0x277CCBAE0]];
    v17 = MEMORY[0x277CCD0B0];
    startDate = [v14 startDate];
    endDate = [v14 endDate];

    v20 = [v17 categorySampleWithType:v16 value:0 startDate:startDate endDate:endDate];

    WeakRetained = objc_loadWeakRetained((self + 8));
    dataManager = [WeakRetained dataManager];
    v26[0] = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    endDate2 = [v20 endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v25 = [dataManager insertDataObjects:v23 withProvenance:sampleCopy creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:payload error:?];

    if (v25)
    {
      *error = 1;
      *(error + 8) = v20;
      *(error + 16) = provenanceCopy;
    }

    else
    {
      *error = 0;
      *(error + 8) = 0;
      *(error + 16) = 0;
    }
  }

  else
  {
    *error = 0;
    *(error + 8) = 0;
    *(error + 16) = 0;
  }
}

- (void)_insertAnalyzedSamplesWithBloodOxygenAnalysis:(void *)analysis@<X2> unprocessedSample:(void *)sample@<X3> provenance:(void *)provenance@<X4> error:(void *)error@<X8>
{
  v36[2] = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  sampleCopy = sample;
  v32 = a2;
  v27 = analysisCopy;
  if (!self)
  {
    *error = 0;
    error[1] = 0;
    error[2] = 0;
    goto LABEL_14;
  }

  errorCopy = error;
  v11 = [(HDRPOxygenSaturationAnalyzer *)self _bloodOxygenSampleWithBloodOxygenMeasurement:analysisCopy unprocessedSample:?];
  v12 = [(HDRPOxygenSaturationAnalyzer *)self _heartRateSampleWithBloodOxygenMeasurement:?];
  v13 = v12;
  if (v12)
  {
    v36[0] = v11;
    v36[1] = v12;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:{2, analysisCopy}];
    WeakRetained = objc_loadWeakRetained((self + 8));
    associationManager = [WeakRetained associationManager];
    uUID = [v13 UUID];
    v35 = uUID;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    uUID2 = [v11 UUID];
    v33 = 0;
    v19 = [associationManager associateObjectUUIDs:v17 objectUUID:uUID2 error:&v33];
    v20 = v33;

    if ((v19 & 1) == 0)
    {
      v21 = v20;
      v20 = v21;
      if (v21)
      {
        if (provenance)
        {
          v22 = v21;
          *provenance = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v34 = v11;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:{1, analysisCopy}];
    v20 = 0;
  }

  v23 = objc_loadWeakRetained((self + 8));
  dataManager = [v23 dataManager];
  endDate = [v11 endDate];
  [endDate timeIntervalSinceReferenceDate];
  v26 = [dataManager insertDataObjects:v30 withProvenance:sampleCopy creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:provenance error:?];

  if ((v26 & 1) == 0)
  {
LABEL_12:
    *errorCopy = 0;
    errorCopy[1] = 0;
    errorCopy[2] = 0;
    goto LABEL_13;
  }

  *errorCopy = 257;
  errorCopy[1] = v11;
  errorCopy[2] = v32[2];
LABEL_13:

LABEL_14:
}

- (uint64_t)_shouldAnalyzeSamples
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 32);
    v34 = 0;
    v3 = [v2 featureStatusWithError:&v34];
    v4 = v34;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
      areAllRequirementsSatisfied = [v5 areAllRequirementsSatisfied];

      if (areAllRequirementsSatisfied)
      {

        v7 = *(selfCopy + 24);
        v33 = 0;
        v8 = [v7 featureStatusWithError:&v33];
        v4 = v33;
        if (v8)
        {
          if (([v8 isOnboardingRecordPresent]& 1) == 0)
          {
            _HKInitializeLogging();
            v12 = HKLogRespiratoryCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = selfCopy;
              OUTLINED_FUNCTION_1_0();
              _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
            }

            goto LABEL_22;
          }

          v9 = *MEMORY[0x277CCBDF8];
          v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
          areAllRequirementsSatisfied2 = [v10 areAllRequirementsSatisfied];

          _HKInitializeLogging();
          v12 = HKLogRespiratoryCategory();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          if (areAllRequirementsSatisfied2)
          {
            if (v13)
            {
              *buf = 138543362;
              v36 = selfCopy;
              OUTLINED_FUNCTION_1_0();
              _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
            }

            selfCopy = 1;
            goto LABEL_23;
          }

          if (v13)
          {
            localizedDescription = [v8 objectForKeyedSubscript:v9];
            unsatisfiedRequirementIdentifiers = [localizedDescription unsatisfiedRequirementIdentifiers];
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            _os_log_impl(v27, v28, v29, v30, v31, 0x16u);

            goto LABEL_21;
          }
        }

        else
        {
          _HKInitializeLogging();
          v12 = HKLogRespiratoryCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v4 localizedDescription];
            OUTLINED_FUNCTION_0_1();
            _os_log_error_impl(&dword_262086000, v12, OS_LOG_TYPE_ERROR, "[%{public}@ Failed to get Oxygen Saturation feature status with error: %@]", buf, 0x16u);
LABEL_21:
          }
        }

LABEL_22:
        selfCopy = 0;
LABEL_23:

        goto LABEL_24;
      }

      _HKInitializeLogging();
      v8 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v36 = selfCopy;
        _os_log_impl(&dword_262086000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Companion Analysis feature is not onboarded", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v4 localizedDescription];
        OUTLINED_FUNCTION_0_1();
        _os_log_error_impl(&dword_262086000, v8, OS_LOG_TYPE_ERROR, "[%{public}@ Failed to get companion analysis feature status with error: %@]", buf, 0x16u);
      }
    }

    selfCopy = 0;
LABEL_24:
  }

  return selfCopy;
}

- (void)_postSingleUnsuccessfulMeasurementNotification:(uint64_t)notification
{
  if (notification)
  {
    v3 = a2;
    objc_opt_class();
    v10 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    v4 = [v10 localizedStringForKey:@"UNSUCCESSFUL_MEASUREMENT_NOTIFICATION_TITLE" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNSUCCESSFUL_MEASUREMENT_NOTIFICATION_BODY" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    uUID = [v3 UUID];

    uUIDString = [uUID UUIDString];
    v9 = HKRPOxygenSaturationUnsuccessfulAnalysisEventSampleDetailsLink(uUIDString);
    [(HDRPOxygenSaturationAnalyzer *)notification _postNotificationWithTitle:v4 body:v6 categoryIdentifier:@"com.apple.private.health.respiratory.phoneonly" subtitle:0 domain:14 url:v9 completion:&__block_literal_global_349];
  }
}

- (void)_postSingleSuccessfulResultNotification:(uint64_t)notification
{
  if (notification)
  {
    v4 = OUTLINED_FUNCTION_3(notification, a2);
    objc_opt_class();
    v17 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    OUTLINED_FUNCTION_5();
    v6 = [v5 localizedStringForKey:? value:? table:?];
    v7 = [*(v3 + 2264) bundleForClass:objc_opt_class()];
    OUTLINED_FUNCTION_5();
    v9 = [v8 localizedStringForKey:? value:? table:?];
    v10 = [(HDRPOxygenSaturationAnalyzer *)v2 _dataTypeDetailsRoomUrlWithSample:v4];

    OUTLINED_FUNCTION_2_0(v11, v12, v13, @"com.apple.private.health.respiratory.phoneonly", v14, v15, v16, &__block_literal_global_335);
  }
}

- (void)_postMultipleSuccessfullResultsNotification:(uint64_t)notification
{
  if (notification)
  {
    v4 = OUTLINED_FUNCTION_3(notification, a2);
    objc_opt_class();
    v17 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    OUTLINED_FUNCTION_5();
    v6 = [v5 localizedStringForKey:? value:? table:?];
    v7 = [*(v3 + 2264) bundleForClass:objc_opt_class()];
    OUTLINED_FUNCTION_5();
    v9 = [v8 localizedStringForKey:? value:? table:?];
    v10 = [(HDRPOxygenSaturationAnalyzer *)v2 _dataTypeDetailsRoomUrlWithSample:v4];

    OUTLINED_FUNCTION_2_0(v11, v12, v13, @"com.apple.private.health.respiratory.phoneonly", v14, v15, v16, &__block_literal_global_0);
  }
}

- (void)_postMultipleMixedResultsNotification
{
  if (self)
  {
    objc_opt_class();
    v6 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    v2 = [v6 localizedStringForKey:@"MULTIPLE_RESULTS_AVAILABLE_NOTIFICATION_TITLE" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"MULTIPLE_RESULTS_AVAILABLE_NOTIFICATION_BODY" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v5 = HKRPOxygenSaturationShowAllDataRoomLink();
    [(HDRPOxygenSaturationAnalyzer *)self _postNotificationWithTitle:v2 body:v4 categoryIdentifier:@"com.apple.private.health.respiratory.phoneonly" subtitle:0 domain:14 url:v5 completion:&__block_literal_global_327];
  }
}

- (uint64_t)_deleteUnprocessedSample:(uint64_t)sample error:
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v5 = MEMORY[0x277D10688];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setGenerateDeletedObjects:0];
  [v7 setFailIfNotFound:0];
  [v7 setNotifyObservers:0];
  WeakRetained = objc_loadWeakRetained((self + 8));
  dataManager = [WeakRetained dataManager];
  uUID = [v6 UUID];

  v14[0] = uUID;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [dataManager deleteObjectsWithUUIDCollection:v11 configuration:v7 error:sample];

  return v12;
}

- (id)_dataTypeDetailsRoomUrlWithSample:(uint64_t)sample
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (sample)
  {
    v2 = MEMORY[0x277CCACE0];
    v3 = a2;
    v4 = [v2 alloc];
    v5 = HKRPOxygenSaturationDataTypeRoomLink();
    v6 = [v4 initWithURL:v5 resolvingAgainstBaseURL:0];

    queryItems = [v6 queryItems];
    v8 = [queryItems mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    endDate = [v3 endDate];

    [endDate timeIntervalSinceReferenceDate];
    v15 = [v12 numberWithInteger:v14];

    v16 = MEMORY[0x277CCAD18];
    stringValue = [v15 stringValue];
    v18 = [v16 queryItemWithName:@"date" value:stringValue];
    v22[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v11 addObjectsFromArray:v19];

    [v6 setQueryItems:v11];
    v20 = [v6 URL];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_postNotificationWithTitle:(void *)title body:(void *)body categoryIdentifier:(void *)identifier subtitle:(uint64_t)subtitle domain:(void *)domain url:(void *)url completion:
{
  titleCopy = title;
  identifierCopy = identifier;
  domainCopy = domain;
  if (self)
  {
    v17 = MEMORY[0x277CE1F60];
    urlCopy = url;
    bodyCopy = body;
    v20 = a2;
    v21 = objc_alloc_init(v17);
    [v21 setTitle:v20];

    if (identifierCopy)
    {
      [v21 setSubtitle:identifierCopy];
    }

    [v21 setBody:titleCopy];
    [v21 setCategoryIdentifier:bodyCopy];

    v22 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
    [v21 setSound:v22];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:subtitle];
    [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277CCE4D0]];

    if (domainCopy)
    {
      absoluteString = [domainCopy absoluteString];
      [dictionary setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];
    }

    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCE4D8]];
    [v21 setUserInfo:dictionary];
    WeakRetained = objc_loadWeakRetained((self + 8));
    notificationManager = [WeakRetained notificationManager];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [notificationManager postNotificationWithIdentifier:uUIDString content:v21 trigger:0 completion:urlCopy];
  }
}

- (id)_bloodOxygenSampleWithBloodOxygenMeasurement:(void *)measurement unprocessedSample:
{
  if (self)
  {
    v4 = MEMORY[0x277CCDAB0];
    measurementCopy = measurement;
    v6 = a2;
    percentUnit = [v4 percentUnit];
    v8 = MEMORY[0x277CCD7E8];
    [v6 oxygenSaturationPercentage];
    v10 = [v8 quantityWithUnit:percentUnit doubleValue:v9 / 100.0];
    v11 = MEMORY[0x277CCD800];
    v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
    date = [v6 date];
    date2 = [v6 date];

    device = [measurementCopy device];
    metadata = [measurementCopy metadata];

    v17 = [v11 quantitySampleWithType:v12 quantity:v10 startDate:date endDate:date2 device:device metadata:metadata];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_heartRateSampleWithBloodOxygenMeasurement:(uint64_t)measurement
{
  v3 = a2;
  v4 = v3;
  if (measurement && ([v3 averageHeartRate], v5 > 0.0))
  {
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
    v8 = [countUnit unitDividedByUnit:minuteUnit];

    v9 = MEMORY[0x277CCD7E8];
    [v4 averageHeartRate];
    v11 = [v9 quantityWithUnit:v8 doubleValue:v10];
    v12 = MEMORY[0x277CCD800];
    v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    date = [v4 date];
    date2 = [v4 date];
    v16 = [v12 quantitySampleWithType:v13 quantity:v11 startDate:date endDate:date2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)samplesAdded:(NSObject *)a3 anchor:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_262086000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to request protected data operation work error: %@", &v6, 0x16u);
}

@end