@interface EDBIMIManager
- (BOOL)_shouldScheduleAnotherVerificationBatch;
- (EDBIMIManager)initWithMessagePersistence:(id)persistence urlSession:(id)session;
- (id)processBIMIHeadersForMessages:(id)messages evidenceAndMessagesNeedingVerification:(id *)verification;
- (uint64_t)_analyticsValueForResultString:(char)string isBIMIStatementResult:;
- (uint64_t)_bimiPassedWithAuthenticationResults:(void *)results authenticationServiceIdentifier:(void *)identifier bimiStatement:;
- (uint64_t)_downloadAndVerifyIndicators;
- (uint64_t)_indicatorIsValid:(void *)valid forBIMIData:;
- (uint64_t)_isRecoverableError:(uint64_t)error;
- (uint64_t)_vmcWasVerifiedWithBIMIStatement:(uint64_t)statement;
- (void)_downloadAndVerifyIndicators;
- (void)_downloadUndownloadedIndicators:(unsigned int)indicators failingOpen:(void *)open indicatorHandler:;
- (void)_verifyIndicator:(uint64_t)indicator failingOpen:;
- (void)dealloc;
- (void)downloadAndVerifyIndicatorsIfNeeded;
- (void)test_tearDown;
@end

@implementation EDBIMIManager

void ___ef_log_EDBIMIManager_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDBIMIManager");
  v1 = _ef_log_EDBIMIManager_log;
  _ef_log_EDBIMIManager_log = v0;
}

- (EDBIMIManager)initWithMessagePersistence:(id)persistence urlSession:(id)session
{
  persistenceCopy = persistence;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = EDBIMIManager;
  v9 = [(EDBIMIManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, persistence);
    objc_storeStrong(&v10->_urlSession, session);
    v11 = objc_alloc_init(EDMarkCertificateVerifier);
    markCertificateVerifier = v10->_markCertificateVerifier;
    v10->_markCertificateVerifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeDataTasksByRequest = v10->_activeDataTasksByRequest;
    v10->_activeDataTasksByRequest = v13;

    v15 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    activeDataTasksLock = v10->_activeDataTasksLock;
    v10->_activeDataTasksLock = v15;

    v17 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    verificationRunningLock = v10->_verificationRunningLock;
    v10->_verificationRunningLock = v17;

    v19 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EDBIMIManager.verificationScheduler" qualityOfService:17];
    verificationScheduler = v10->_verificationScheduler;
    v10->_verificationScheduler = v19;
  }

  return v10;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_activeDataTasksByRequest enumerateKeysAndObjectsUsingBlock:&__block_literal_global_33];
  v3.receiver = self;
  v3.super_class = EDBIMIManager;
  [(EDBIMIManager *)&v3 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDBIMIManager.m" lineNumber:83 description:{@"%s can only be called from unit tests", "-[EDBIMIManager test_tearDown]"}];
  }

  verificationScheduler = [(EDBIMIManager *)self verificationScheduler];
  [verificationScheduler performSyncBlock:&__block_literal_global_44];
}

- (id)processBIMIHeadersForMessages:(id)messages evidenceAndMessagesNeedingVerification:(id *)verification
{
  v83 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke;
  aBlock[3] = &unk_1E82508E8;
  aBlock[4] = self;
  v57 = _Block_copy(aBlock);
  v48 = [MEMORY[0x1E699ACE8] preferenceEnabled:18];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = messagesCopy;
  v4 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v4)
  {
    v56 = *v70;
    do
    {
      v59 = v4;
      for (i = 0; i != v59; ++i)
      {
        if (*v70 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v69 + 1) + 8 * i);
        headers = [v6 headers];
        v8 = [MEMORY[0x1E699B290] authenticationResultsForHeaders:headers];
        v67 = 0;
        v68 = 0;
        v9 = [(EDBIMIManager *)self _bimiPassedWithAuthenticationResults:v8 authenticationServiceIdentifier:&v68 bimiStatement:&v67];
        v10 = v68;
        v11 = v67;
        if ((v9 & 1) == 0)
        {
          v57[2](v57, v10, v11, 0);
          goto LABEL_35;
        }

        v60 = [MEMORY[0x1E699B210] bimiInfoForHeaders:headers];
        if (v48)
        {
          goto LABEL_10;
        }

        v12 = MEMORY[0x1E695DFF8];
        account = [v6 account];
        hostname = [account hostname];
        v15 = [v12 ef_urlWithString:hostname];
        ef_highLevelDomain = [v15 ef_highLevelDomain];

        if (EMBIMIIncomingServerHighLevelDomainIsAllowlisted())
        {

LABEL_10:
          ef_highLevelDomain = [v60 location];
          evidenceLocation = [v60 evidenceLocation];
          v54 = evidenceLocation;
          if (ef_highLevelDomain && evidenceLocation)
          {
            v55 = [MEMORY[0x1E699B848] pairWithFirst:ef_highLevelDomain second:evidenceLocation];
            indicator = [v60 indicator];
            v47 = [v46 objectForKeyedSubscript:v55];
            if (!v47 || indicator && ([v47 indicator], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
            {
              [v46 setObject:v60 forKeyedSubscript:v55];
            }

            v20 = [v44 objectForKeyedSubscript:v55];
            if (v20)
            {
              v49 = v20;
              [v20 addObject:v6];
            }

            else
            {
              v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
              [v44 setObject:v49 forKeyedSubscript:v55];
            }

            v21 = (v57[2])(v57, v10, v11, v60);
            v22 = _ef_log_EDBIMIManager(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              log = v22;
              v51 = ef_highLevelDomain;
              if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
              {
                absoluteString = [v51 absoluteString];
              }

              else
              {
                v24 = MEMORY[0x1E699B858];
                absoluteString2 = [v51 absoluteString];
                absoluteString = [v24 fullyRedactedStringForString:absoluteString2];
              }

              v52 = absoluteString;
              v26 = v54;
              if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
              {
                absoluteString3 = [v26 absoluteString];
              }

              else
              {
                v28 = MEMORY[0x1E699B858];
                absoluteString4 = [v26 absoluteString];
                absoluteString3 = [v28 fullyRedactedStringForString:absoluteString4];
              }

              *buf = 138544130;
              v30 = @", and indicator";
              if (!indicator)
              {
                v30 = &stru_1F45B4608;
              }

              v75 = v52;
              v76 = 2114;
              v77 = absoluteString3;
              v78 = 2112;
              v79 = v30;
              v80 = 2114;
              v81 = v6;
              _os_log_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEFAULT, "Adding BIMI url (%{public}@), evidence url (%{public}@)%@ for message: %{public}@", buf, 0x2Au);

              v22 = log;
            }
          }

          else
          {
            (v57)[2](v57, v10, v11, v60);
          }

          goto LABEL_34;
        }

        (v57)[2](v57, v10, v11, v60);
LABEL_34:

LABEL_35:
      }

      v4 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v4);
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_95;
  v61[3] = &unk_1E8250938;
  v61[4] = self;
  v33 = v44;
  v62 = v33;
  v34 = obj;
  v63 = v34;
  v35 = v32;
  v64 = v35;
  v66 = a2;
  v36 = v31;
  v65 = v36;
  [v46 enumerateKeysAndObjectsUsingBlock:v61];
  if (verification)
  {
    v37 = v35;
    *verification = v35;
  }

  v38 = v65;
  v39 = v36;

  return v36;
}

void __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v10 = a3;
  v11 = a4;
  v7 = v11;
  v8 = v10;
  v9 = v6;
  AnalyticsSendEventLazy();
}

id __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v30 = v2;
  v31[0] = @"authservID";
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v2;
  v32 = v2;
  v31[1] = @"hasBIMIResult";
  v33 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40) != 0];
  v31[2] = @"bimiResult";
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 48);
  v28 = v33;
  v29 = [*(a1 + 40) result];
  v26 = [v3 numberWithUnsignedInteger:{-[EDBIMIManager _analyticsValueForResultString:isBIMIStatementResult:](v4, v29, 1)}];
  v34 = v26;
  v31[3] = @"vmcResult";
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 48);
  v27 = [*(a1 + 40) valueForPropertyType:*MEMORY[0x1E699B060] property:@"authority"];
  v25 = [v5 numberWithUnsignedInteger:{-[EDBIMIManager _analyticsValueForResultString:isBIMIStatementResult:](v6, v27, 0)}];
  v35 = v25;
  v31[4] = @"hasLocation";
  v7 = MEMORY[0x1E696AD98];
  v24 = [*(a1 + 56) location];
  v8 = [v7 numberWithInt:v24 != 0];
  v36 = v8;
  v31[5] = @"hasEvidenceLocation";
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 56) evidenceLocation];
  v11 = [v9 numberWithInt:v10 != 0];
  v37 = v11;
  v31[6] = @"hasIndicator";
  v12 = MEMORY[0x1E696AD98];
  v13 = [*(a1 + 56) indicator];
  v14 = [v12 numberWithInt:v13 != 0];
  v38 = v14;
  v31[7] = @"hasIndicatorHash";
  v15 = MEMORY[0x1E696AD98];
  v16 = [*(a1 + 56) indicatorHash];
  v17 = [v15 numberWithInt:v16 != 0];
  v39 = v17;
  v31[8] = @"indicatorHashAlgorithm";
  v18 = [*(a1 + 56) hashAlgorithm];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v31[9] = @"hasDKIMSignature";
  v40 = v19;
  v41 = MEMORY[0x1E695E110];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:v31 count:{10, v22}];
  if (!v18)
  {
  }

  if (!v30)
  {
  }

  return v20;
}

- (uint64_t)_analyticsValueForResultString:(char)string isBIMIStatementResult:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ([v5 isEqualToString:@"pass"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:@"fail"];
      v9 = v8 | string ^ 1;
      if (v8)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      if ((v9 & 1) == 0)
      {
        if ([v6 isEqualToString:@"temperror"])
        {
          v7 = 3;
        }

        else if ([v6 isEqualToString:@"declined"])
        {
          v7 = 4;
        }

        else if ([v6 isEqualToString:@"skipped"])
        {
          v7 = 5;
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_bimiPassedWithAuthenticationResults:(void *)results authenticationServiceIdentifier:(void *)identifier bimiStatement:
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      resultsCopy = results;
      v11 = v8;
      identifierCopy = identifier;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 firstStatementForMethod:@"bimi"];
          if (v16)
          {
            [v15 authenticationServiceIdentifier];
            identifier = identifierCopy;
            v8 = v11;
            v17 = results = resultsCopy;
            goto LABEL_13;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      v16 = 0;
      identifier = identifierCopy;
      v8 = v11;
      results = resultsCopy;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

LABEL_13:

    result = [v16 result];
    if ([result isEqualToString:@"pass"])
    {
      self = [(EDBIMIManager *)self _vmcWasVerifiedWithBIMIStatement:v16];
    }

    else
    {
      self = 0;
    }

    if (results)
    {
      v19 = v17;
      *results = v17;
    }

    if (identifier)
    {
      v20 = v16;
      *identifier = v16;
    }
  }

  return self;
}

void __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v81 = a2;
  v80 = a3;
  v5 = [*(a1 + 32) messagePersistence];
  v6 = [v5 addBrandIndicatorWithInfo:v80];

  if (v6)
  {
    v79 = [*(a1 + 40) objectForKeyedSubscript:v81];
    v8 = [v6 evidence];

    if (v8)
    {
      v10 = [v6 indicator];

      if (!v10)
      {
        v77 = [MEMORY[0x1E696AAA8] currentHandler];
        [v77 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"EDBIMIManager.m" lineNumber:178 description:@"Any indicator with evidence must also have the indicator data"];
      }

      v12 = _ef_log_EDBIMIManager(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v81 first];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v14 = [v13 absoluteString];
        }

        else
        {
          v20 = MEMORY[0x1E699B858];
          v21 = [v13 absoluteString];
          v14 = [v20 fullyRedactedStringForString:v21];
        }

        v22 = v14;
        v23 = [v81 second];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v24 = [v23 absoluteString];
        }

        else
        {
          v25 = MEMORY[0x1E699B858];
          v26 = [v23 absoluteString];
          v24 = [v25 fullyRedactedStringForString:v26];
        }

        *buf = 138543618;
        v86 = v22;
        v87 = 2114;
        v88 = v24;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "BIMI url (%{public}@), evidence URL (%{public}@) has existing evidence", buf, 0x16u);
      }

      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_99;
      v82[3] = &unk_1E8250910;
      v82[4] = *(a1 + 32);
      v27 = v6;
      v83 = v27;
      v28 = v81;
      v84 = v28;
      v29 = [v79 ef_partition:v82];
      v30 = [v29 first];
      v31 = [v30 count];

      if (v31)
      {
        v33 = _ef_log_EDBIMIManager(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v28 first];
          v78 = v34;
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v35 = [v34 absoluteString];
          }

          else
          {
            v36 = MEMORY[0x1E699B858];
            v37 = [v34 absoluteString];
            v35 = [v36 fullyRedactedStringForString:v37];
          }

          v38 = v35;
          v39 = [v28 second];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v40 = [v39 absoluteString];
          }

          else
          {
            v41 = MEMORY[0x1E699B858];
            v42 = [v39 absoluteString];
            v40 = [v41 fullyRedactedStringForString:v42];
          }

          v43 = *(a1 + 48);
          *buf = 138543874;
          v86 = v38;
          v87 = 2114;
          v88 = v40;
          v89 = 2114;
          v90 = v43;
          _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "Messages passed verification for BIMI url (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        v44 = [v29 first];
        [*(a1 + 64) setObject:v44 forKeyedSubscript:v27];
      }

      v45 = [v29 second];
      v46 = [v45 count];

      if (v46)
      {
        v48 = _ef_log_EDBIMIManager(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v28 first];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v50 = [v49 absoluteString];
          }

          else
          {
            v51 = MEMORY[0x1E699B858];
            v52 = [v49 absoluteString];
            v50 = [v51 fullyRedactedStringForString:v52];
          }

          v53 = v50;
          v54 = [v28 second];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v55 = [v54 absoluteString];
          }

          else
          {
            v56 = MEMORY[0x1E699B858];
            v57 = [v54 absoluteString];
            v55 = [v56 fullyRedactedStringForString:v57];
          }

          v58 = *(a1 + 48);
          *buf = 138543874;
          v86 = v53;
          v87 = 2114;
          v88 = v55;
          v89 = 2114;
          v90 = v58;
          _os_log_impl(&dword_1C61EF000, v48, OS_LOG_TYPE_DEFAULT, "Messages failed verification for BIMI url (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        v59 = [v29 second];
        [*(a1 + 56) setObject:v59 forKeyedSubscript:v27];
      }

      v16 = v79;
    }

    else
    {
      v17 = _ef_log_EDBIMIManager(v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v81 first];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v19 = [v18 absoluteString];
        }

        else
        {
          v60 = MEMORY[0x1E699B858];
          v61 = [v18 absoluteString];
          v19 = [v60 fullyRedactedStringForString:v61];
        }

        v62 = v19;
        v63 = [v81 second];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v64 = [v63 absoluteString];
        }

        else
        {
          v65 = MEMORY[0x1E699B858];
          v66 = [v63 absoluteString];
          v64 = [v65 fullyRedactedStringForString:v66];
        }

        v67 = *(a1 + 48);
        *buf = 138543874;
        v86 = v62;
        v87 = 2114;
        v88 = v64;
        v89 = 2114;
        v90 = v67;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "No existing evidence for BIMI url (%{public}@), evidence URL (%{public}@), messages need verification: %{public}@", buf, 0x20u);
      }

      v16 = v79;
      [*(a1 + 56) setObject:v79 forKeyedSubscript:v6];
    }
  }

  else
  {
    v15 = _ef_log_EDBIMIManager(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v68 = [v81 first];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v69 = [v68 absoluteString];
      }

      else
      {
        v70 = MEMORY[0x1E699B858];
        v71 = [v68 absoluteString];
        v69 = [v70 fullyRedactedStringForString:v71];
      }

      v72 = v69;
      v73 = [v81 second];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v74 = [v73 absoluteString];
      }

      else
      {
        v75 = MEMORY[0x1E699B858];
        v76 = [v73 absoluteString];
        v74 = [v75 fullyRedactedStringForString:v76];
      }

      *buf = 138543618;
      v86 = v72;
      v87 = 2114;
      v88 = v74;
      _os_log_fault_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_FAULT, "BIMI URL (%{public}@), evidence URL (%{public}@) was not inserted", buf, 0x16u);
    }

    v16 = v15;
  }
}

uint64_t __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_99(id *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] markCertificateVerifier];
  v5 = [a1[5] indicator];
  v6 = [a1[5] evidence];
  v7 = [v4 verifyIndicatorData:v5 withMarkCertificateData:v6 forServerSyncedMessage:v3];

  if ((v7 & 1) == 0)
  {
    v9 = _ef_log_EDBIMIManager(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [a1[6] first];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v12 = [v11 absoluteString];
      }

      else
      {
        v13 = MEMORY[0x1E699B858];
        v14 = [v11 absoluteString];
        v12 = [v13 fullyRedactedStringForString:v14];
      }

      v15 = v12;
      v16 = [a1[6] second];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v17 = [v16 absoluteString];
      }

      else
      {
        v18 = MEMORY[0x1E699B858];
        v19 = [v16 absoluteString];
        v17 = [v18 fullyRedactedStringForString:v19];
      }

      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v3;
      _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "Message failed verification for BIMI url (%{public}@), evidence url (%{public}@): %{public}@", &v20, 0x20u);
    }
  }

  return v7;
}

- (uint64_t)_vmcWasVerifiedWithBIMIStatement:(uint64_t)statement
{
  v3 = a2;
  v4 = v3;
  if (statement)
  {
    v5 = [v3 valueForPropertyType:*MEMORY[0x1E699B060] property:@"authority"];
    v6 = [v5 isEqualToString:@"pass"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)downloadAndVerifyIndicatorsIfNeeded
{
  [(NSConditionLock *)self->_verificationRunningLock lock];
  condition = [(NSConditionLock *)self->_verificationRunningLock condition];
  v4 = _ef_log_EDBIMIManager([(NSConditionLock *)self->_verificationRunningLock unlockWithCondition:1]);
  v5 = v4;
  if (condition)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Download and verification already running.", v6, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Downloading indicators and verifying mark certificates now.", buf, 2u);
    }

    [(EDBIMIManager *)self _downloadAndVerifyIndicators];
  }
}

- (void)_downloadAndVerifyIndicators
{
  if (self)
  {
    external = [MEMORY[0x1E699B828] external];
    isAvailable = [external isAvailable];

    if (isAvailable)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v4, &location);
      EMPrivacyProxyIsDisabledForNetwork();
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }

    else
    {
      [(EDBIMIManager *)self _downloadAndVerifyIndicators];
    }
  }
}

void __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _ef_log_EDBIMIManager(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"enabled";
    if (a2)
    {
      v5 = @"disabled";
    }

    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling indicator download and verification, privacy proxy is %{public}@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) verificationScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_109;
  v7[3] = &unk_1E82509A8;
  objc_copyWeak(&v8, (a1 + 40));
  v9 = a2;
  [v6 performBlock:v7];

  objc_destroyWeak(&v8);
}

void __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_109(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v20 = [WeakRetained messagePersistence];
    v4 = [v20 unverifiedBrandIndicatorsWithLimit:10];
    v5 = [v4 ef_partition:&__block_literal_global_112];
    v6 = [v5 first];
    v7 = _ef_log_EDBIMIManager(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = [v6 count];
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Downloading %lu indicators", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_113;
    v25[3] = &unk_1E8250980;
    v25[4] = v3;
    v26 = v8;
    [(EDBIMIManager *)v3 _downloadUndownloadedIndicators:v6 failingOpen:v8 indicatorHandler:v25];
    v9 = [v5 second];
    v10 = _ef_log_EDBIMIManager(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 count];
      *buf = 134217984;
      v29 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Verifying %lu indicators", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [(EDBIMIManager *)v3 _verifyIndicator:*(a1 + 40) failingOpen:?];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = v3[2];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    [v16 lockWhenCondition:0 beforeDate:v17];

    [v3[2] unlock];
    shouldScheduleAnotherVerification = [(EDBIMIManager *)v3 _shouldScheduleAnotherVerificationBatch];
    if (shouldScheduleAnotherVerification)
    {
      v19 = _ef_log_EDBIMIManager(shouldScheduleAnotherVerification);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Scheduling another verification batch", buf, 2u);
      }

      [(EDBIMIManager *)v3 _downloadAndVerifyIndicators];
    }

    else
    {
      [v3[3] lock];
      [v3[3] unlockWithCondition:0];
    }
  }
}

BOOL __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 indicator];
  v3 = v2 == 0;

  return v3;
}

- (void)_verifyIndicator:(uint64_t)indicator failingOpen:
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (self)
  {
    messagePersistence = [self messagePersistence];
    markCertificateVerifier = [self markCertificateVerifier];
    urlSession = [self urlSession];
    bimiInfo = [v24 bimiInfo];
    location = [bimiInfo location];

    bimiInfo2 = [v24 bimiInfo];
    evidenceLocation = [bimiInfo2 evidenceLocation];

    v10 = [MEMORY[0x1E696AF68] requestWithURL:evidenceLocation];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke;
    v25[3] = &unk_1E8250A68;
    v11 = messagePersistence;
    v26 = v11;
    v27 = v24;
    v12 = location;
    v28 = v12;
    v13 = markCertificateVerifier;
    v29 = v13;
    v14 = evidenceLocation;
    v30 = v14;
    selfCopy = self;
    v15 = v10;
    v32 = v15;
    v16 = [urlSession syntheticDataTaskWithRequest:v15 failOpen:indicator background:1 completionHandler:v25];
    [self[2] lock];
    [self[1] setObject:v16 forKeyedSubscript:v15];
    [self[2] unlockWithCondition:{objc_msgSend(self[1], "count")}];
    v17 = _ef_log_EDBIMIManager([v16 resume]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v12;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        absoluteString = [v18 absoluteString];
      }

      else
      {
        v20 = MEMORY[0x1E699B858];
        absoluteString2 = [v18 absoluteString];
        absoluteString = [v20 fullyRedactedStringForString:absoluteString2];
      }

      *buf = 138543362;
      v34 = absoluteString;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Requesting mark certificate data for URL: %{public}@", buf, 0xCu);
    }
  }
}

- (void)_downloadUndownloadedIndicators:(unsigned int)indicators failingOpen:(void *)open indicatorHandler:
{
  v40 = *MEMORY[0x1E69E9840];
  v20 = a2;
  openCopy = open;
  if (self)
  {
    messagePersistence = [self messagePersistence];
    urlSession = [self urlSession];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v20;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v6)
    {
      v22 = *v34;
      do
      {
        v27 = v6;
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          bimiInfo = [v8 bimiInfo];
          location = [bimiInfo location];

          v11 = [MEMORY[0x1E696AF68] requestWithURL:location];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke;
          v28[3] = &unk_1E8250A18;
          v28[4] = self;
          v28[5] = v8;
          v29 = messagePersistence;
          v12 = location;
          v30 = v12;
          v32 = openCopy;
          v13 = v11;
          v31 = v13;
          v14 = [urlSession syntheticDataTaskWithRequest:v13 failOpen:indicators background:1 completionHandler:v28];
          [self[2] lock];
          [self[1] setObject:v14 forKeyedSubscript:v13];
          [self[2] unlockWithCondition:{objc_msgSend(self[1], "count")}];
          v15 = _ef_log_EDBIMIManager([v14 resume]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v12;
            if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
            {
              absoluteString = [v16 absoluteString];
            }

            else
            {
              v18 = MEMORY[0x1E699B858];
              absoluteString2 = [v16 absoluteString];
              absoluteString = [v18 fullyRedactedStringForString:absoluteString2];
            }

            *buf = 138543362;
            v38 = absoluteString;
            _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Requesting indicator data for URL: %{public}@", buf, 0xCu);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)_shouldScheduleAnotherVerificationBatch
{
  if (!self)
  {
    return 0;
  }

  messagePersistence = [self messagePersistence];
  v2 = [messagePersistence unverifiedBrandIndicatorsWithLimit:1];
  v3 = [v2 count] != 0;

  return v3;
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v7)
  {
    if ([(EDBIMIManager *)*(a1 + 32) _isRecoverableError:v9])
    {
      *&v37 = MEMORY[0x1E69E9820];
      *(&v37 + 1) = 3221225472;
      v38 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
      v39 = &__block_descriptor_35_e19___NSDictionary_8__0l;
      LOWORD(v40) = 0;
      BYTE2(v40) = 1;
      v17 = AnalyticsSendEventLazy();
      v18 = _ef_log_EDBIMIManager(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 56);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v37, *(&v37 + 1), v38, v39, v40, v41}])
        {
          v20 = [v19 absoluteString];
        }

        else
        {
          v31 = MEMORY[0x1E699B858];
          v32 = [v19 absoluteString];
          v20 = [v31 fullyRedactedStringForString:v32];
        }

        v33 = v20;
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_2();
      }
    }

    else
    {
      [*(a1 + 48) removeBrandIndicatorWithDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
      *&v37 = MEMORY[0x1E69E9820];
      *(&v37 + 1) = 3221225472;
      v38 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
      v39 = &__block_descriptor_35_e19___NSDictionary_8__0l;
      LOWORD(v40) = 0;
      BYTE2(v40) = 1;
      v24 = AnalyticsSendEventLazy();
      v18 = _ef_log_EDBIMIManager(v24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 56);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v37, *(&v37 + 1), v38, v39, v40, v41}])
        {
          v26 = [v25 absoluteString];
        }

        else
        {
          v34 = MEMORY[0x1E699B858];
          v35 = [v25 absoluteString];
          v26 = [v34 fullyRedactedStringForString:v35];
        }

        v36 = v26;
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_1();
      }
    }

    goto LABEL_25;
  }

  v11 = [*(a1 + 40) bimiInfo];
  v12 = [(EDBIMIManager *)v10 _indicatorIsValid:v7 forBIMIData:v11];

  if (!v12)
  {
    [*(a1 + 48) removeBrandIndicatorWithDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
    *&v37 = MEMORY[0x1E69E9820];
    *(&v37 + 1) = 3221225472;
    v38 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
    v39 = &__block_descriptor_35_e19___NSDictionary_8__0l;
    LOWORD(v40) = 1;
    BYTE2(v40) = 1;
    v21 = AnalyticsSendEventLazy();
    v18 = _ef_log_EDBIMIManager(v21);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v37, *(&v37 + 1), v38, v39, v40, v41}])
      {
        v23 = [v22 absoluteString];
      }

      else
      {
        v27 = MEMORY[0x1E699B858];
        v28 = [v22 absoluteString];
        v23 = [v27 fullyRedactedStringForString:v28];
      }

      LODWORD(v37) = 138543362;
      *(&v37 + 4) = v23;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Removed invalid indicator URL: %{public}@", &v37, 0xCu);
    }

LABEL_25:

    goto LABEL_26;
  }

  [*(a1 + 40) setIndicator:v7];
  [*(a1 + 48) setBrandIndicator:v7 forDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 3221225472;
  v38 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
  v39 = &__block_descriptor_35_e19___NSDictionary_8__0l;
  LOWORD(v40) = 257;
  BYTE2(v40) = 1;
  v13 = AnalyticsSendEventLazy();
  v14 = _ef_log_EDBIMIManager(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 56);
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v37, *(&v37 + 1), v38, v39, v40, v41}])
    {
      v16 = [v15 absoluteString];
    }

    else
    {
      v29 = MEMORY[0x1E699B858];
      v30 = [v15 absoluteString];
      v16 = [v29 fullyRedactedStringForString:v30];
    }

    LODWORD(v37) = 138543362;
    *(&v37 + 4) = v16;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Persisted indicator data for URL: %{public}@", &v37, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
LABEL_26:
  [*(*(a1 + 32) + 16) lock];
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 64)];
  [*(*(a1 + 32) + 16) unlockWithCondition:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
}

id __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3(unsigned __int8 *a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"downloadSucceeded";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1[32]];
  v8[0] = v2;
  v7[1] = @"indicatorIsValid";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[33]];
  v8[1] = v3;
  v7[2] = @"usedPrivacyProxy";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1[34]];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (uint64_t)_indicatorIsValid:(void *)valid forBIMIData:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  validCopy = valid;
  v7 = validCopy;
  if (!self)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  hashAlgorithm = [validCopy hashAlgorithm];
  v9 = [hashAlgorithm isEqualToString:@"sha256"];

  if (!v9)
  {
    v18 = _ef_log_EDBIMIManager(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [EDBIMIManager _indicatorIsValid:v18 forBIMIData:?];
    }

    goto LABEL_11;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v11;
  v20[1] = v11;
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v20);
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:32];
  v13 = [v12 base64EncodedStringWithOptions:0];
  indicatorHash = [v7 indicatorHash];
  v15 = [v13 isEqualToString:indicatorHash];

  if ((v15 & 1) == 0)
  {
    v17 = _ef_log_EDBIMIManager(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EDBIMIManager _indicatorIsValid:v17 forBIMIData:?];
    }
  }

LABEL_12:
  return v15;
}

- (uint64_t)_isRecoverableError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    domain = [v3 domain];
    v6 = [domain isEqualToString:*MEMORY[0x1E696A978]];

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = __ROR8__([v4 code] + 1009, 1);
    if (v7 <= 3)
    {
      if (v7 && v7 != 2)
      {
        goto LABEL_10;
      }

LABEL_11:
      external = [MEMORY[0x1E699B828] external];
      error = [external isAvailable] ^ 1;

      goto LABEL_12;
    }

    if (v7 == 4)
    {
      goto LABEL_11;
    }

    if (v7 != 5)
    {
LABEL_10:
      error = 0;
      goto LABEL_12;
    }

    error = 1;
  }

LABEL_12:

  return error;
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v58 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) unverifiedMessageDatabaseIDs];
    v63 = 0;
    v11 = [v9 persistedMessagesForDatabaseIDs:v10 requireProtectedData:1 temporarilyUnavailableDatabaseIDs:&v63];
    v12 = v63;

    v13 = [v12 count];
    if (v13)
    {
      v14 = _ef_log_EDBIMIManager(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v16 = [v15 absoluteString];
        }

        else
        {
          v26 = MEMORY[0x1E699B858];
          v27 = [v15 absoluteString];
          v16 = [v26 fullyRedactedStringForString:v27];
        }

        v28 = v16;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1();
      }
    }

    else
    {
      [*(a1 + 40) setEvidence:v7];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_134;
      v59[3] = &unk_1E8250A40;
      v60 = *(a1 + 56);
      v61 = *(a1 + 40);
      v62 = v7;
      v55 = [v11 ef_partition:v59];
      v57 = [v55 first];
      v56 = [v55 second];
      v20 = [v57 count];
      if (v20)
      {
        v21 = _ef_log_EDBIMIManager(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 48);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v23 = [v22 absoluteString];
          }

          else
          {
            v35 = MEMORY[0x1E699B858];
            v36 = [v22 absoluteString];
            v23 = [v35 fullyRedactedStringForString:v36];
          }

          v37 = v23;
          v38 = *(a1 + 64);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v39 = [v38 absoluteString];
          }

          else
          {
            v40 = MEMORY[0x1E699B858];
            v41 = [v38 absoluteString];
            v39 = [v40 fullyRedactedStringForString:v41];
          }

          *buf = 138543874;
          v65 = v37;
          v66 = 2114;
          v67 = v39;
          v68 = 2114;
          v69 = v57;
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Verified messages for URL (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        [*(a1 + 32) setBrandIndicatorForMessages:v57 fromPersistedBIMIInfo:*(a1 + 40)];
      }

      v42 = [v56 count];
      if (v42)
      {
        v43 = _ef_log_EDBIMIManager(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a1 + 48);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v47 = [v46 absoluteString];
          }

          else
          {
            v48 = MEMORY[0x1E699B858];
            v49 = [v46 absoluteString];
            v47 = [v48 fullyRedactedStringForString:v49];
          }

          v50 = v47;
          v51 = *(a1 + 64);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v52 = [v51 absoluteString];
          }

          else
          {
            v53 = MEMORY[0x1E699B858];
            v54 = [v51 absoluteString];
            v52 = [v53 fullyRedactedStringForString:v54];
          }

          *buf = 138543874;
          v65 = v50;
          v66 = 2114;
          v67 = v52;
          v68 = 2114;
          v69 = v56;
          _os_log_error_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_ERROR, "Failed to verify messages for URL (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }
      }

      v44 = *(a1 + 32);
      v45 = [*(a1 + 40) evidence];
      [v44 setBrandIndicatorEvidence:v45 forDatabaseID:{objc_msgSend(*(a1 + 40), "evidenceDatabaseID")}];

      v14 = v60;
    }
  }

  else
  {
    v17 = [(EDBIMIManager *)*(a1 + 72) _isRecoverableError:v8];
    if (v17)
    {
      v11 = _ef_log_EDBIMIManager(v17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v19 = [v18 absoluteString];
        }

        else
        {
          v29 = MEMORY[0x1E699B858];
          v30 = [v18 absoluteString];
          v19 = [v29 fullyRedactedStringForString:v30];
        }

        v31 = v19;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1();
      }
    }

    else
    {
      v11 = _ef_log_EDBIMIManager([*(a1 + 32) removeBrandIndicatorEvidenceWithDatabaseID:objc_msgSend(*(a1 + 40) forBrandIndicatorDatabaseID:{"evidenceDatabaseID"), objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v25 = [v24 absoluteString];
        }

        else
        {
          v32 = MEMORY[0x1E699B858];
          v33 = [v24 absoluteString];
          v25 = [v32 fullyRedactedStringForString:v33];
        }

        v34 = v25;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_2();
      }
    }

    v12 = v11;
  }

  [*(*(a1 + 72) + 16) lock];
  [*(*(a1 + 72) + 8) setObject:0 forKeyedSubscript:*(a1 + 80)];
  [*(*(a1 + 72) + 16) unlockWithCondition:{objc_msgSend(*(*(a1 + 72) + 8), "count")}];
}

uint64_t __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) indicator];
  v6 = [v4 verifyIndicatorData:v5 withMarkCertificateData:*(a1 + 48) forPersistedMessage:v3];

  return v6;
}

- (uint64_t)_downloadAndVerifyIndicators
{
  v2 = _ef_log_EDBIMIManager(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Network not available, stopping download and verification.", v4, 2u);
  }

  [*(self + 24) lock];
  return [*(self + 24) unlockWithCondition:0];
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Permanently unable to request indicator data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Temporarily unable to request indicator data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Temporarily unable to request mark certificate data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Permanently unable to request mark certificate data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

@end