@interface TRIAllocationStatusDefaultProvider
- (BOOL)enumerateActiveExperimentsForEnvironment:(int)environment error:(id *)error block:(id)block;
- (BOOL)enumerateActiveRolloutsWithError:(id *)error block:(id)block;
- (BOOL)enumerateSampledActiveExperimentsForEnvironment:(int)environment correlationID:(id)d error:(id *)error block:(id)block;
- (BOOL)enumerateSampledActiveRolloutsForCorrelationID:(id)d error:(id *)error block:(id)block;
- (BOOL)isOptedOutOfExperimentation;
- (BOOL)removeUpdateHandlerForToken:(id)token;
- (id)_defaultQueue;
- (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error;
- (id)addStatusUpdateHandlerForEnvironment:(int)environment queue:(id)queue block:(id)block;
- (id)enumerateExperimentStatusesForEnvironment:(int)environment startingFromCursor:(id)cursor error:(id *)error block:(id)block;
- (id)initForTrialdSystem:(BOOL)system;
- (void)dealloc;
@end

@implementation TRIAllocationStatusDefaultProvider

- (id)initForTrialdSystem:(BOOL)system
{
  systemCopy = system;
  v50.receiver = self;
  v50.super_class = TRIAllocationStatusDefaultProvider;
  v4 = [(TRIAllocationStatusDefaultProvider *)&v50 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843810F0];
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [v5 setClasses:v7 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:0 ofReply:1];

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    [v5 setClasses:v11 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:1 ofReply:1];

    v12 = objc_autoreleasePoolPush();
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    [v5 setClasses:v13 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:2 ofReply:1];

    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    v16 = objc_opt_class();
    v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v14);
    [v5 setClasses:v17 forSelector:sel_experimentRecordsWithDeploymentEnvironments_completion_ argumentIndex:0 ofReply:1];

    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    [v5 setClasses:v21 forSelector:sel_rolloutRecordsWithCompletion_ argumentIndex:0 ofReply:1];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = objc_opt_class();
    v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v22);
    [v5 setClasses:v25 forSelector:sel_rolloutAllocationStatusWithCompletion_ argumentIndex:0 ofReply:1];

    if (systemCopy)
    {
      v26 = 4096;
    }

    else
    {
      v26 = 0;
    }

    if (systemCopy)
    {
      v27 = @"com.apple.triald.system.internal";
    }

    else
    {
      v27 = @"com.apple.triald.internal";
    }

    if (systemCopy)
    {
      v28 = @"com.apple.trial.system.status";
    }

    else
    {
      v28 = @"com.apple.trial.status";
    }

    v29 = objc_alloc(MEMORY[0x277D42650]);
    v30 = TRILogCategory_ClientFramework();
    v31 = [v29 initWithServiceName:v28 connectionOptions:v26 allowlistedServerInterface:v5 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_15 invalidationHandler:&__block_literal_global_103 logHandle:v30];
    clientHelper = v4->_clientHelper;
    v4->_clientHelper = v31;

    v33 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284381150];
    v34 = objc_autoreleasePoolPush();
    v35 = objc_alloc(MEMORY[0x277CBEB98]);
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v35 initWithObjects:{v36, v37, v38, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v34);
    [v33 setClasses:v39 forSelector:sel_activeExperimentInformationWithEnvironments_completion_ argumentIndex:0 ofReply:1];

    v40 = objc_alloc(MEMORY[0x277D42650]);
    v41 = TRILogCategory_ClientFramework();
    v42 = [v40 initWithServiceName:v27 connectionOptions:v26 allowlistedServerInterface:v33 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_156 invalidationHandler:&__block_literal_global_158 logHandle:v41];
    internalHelper = v4->_internalHelper;
    v4->_internalHelper = v42;

    v44 = objc_opt_new();
    v45 = objc_opt_new();
    v46 = v44[1];
    v44[1] = v45;

    v47 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v44];
    lock = v4->_lock;
    v4->_lock = v47;
  }

  return v4;
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_164];
  v3.receiver = self;
  v3.super_class = TRIAllocationStatusDefaultProvider;
  [(TRIAllocationStatusDefaultProvider *)&v3 dealloc];
}

void __45__TRIAllocationStatusDefaultProvider_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a2 + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        notify_cancel([*(*(&v7 + 1) + 8 * v6++) intValue]);
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_defaultQueue
{
  if (qword_27DA7F9B8 != -1)
  {
    dispatch_once(&qword_27DA7F9B8, &__block_literal_global_168);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

void __51__TRIAllocationStatusDefaultProvider__defaultQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.status" qosClass:17];
  v2 = _MergedGlobals_3;
  _MergedGlobals_3 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)enumerateExperimentStatusesForEnvironment:(int)environment startingFromCursor:(id)cursor error:(id *)error block:(id)block
{
  v109[1] = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    v8 = dispatch_semaphore_create(0);
    *v99 = 0;
    v100 = v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__7;
    v103 = __Block_byref_object_dispose__7;
    v104 = 0;
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke;
    v96[3] = &unk_27885EE28;
    v98 = v99;
    v54 = v8;
    v97 = v54;
    v48 = MEMORY[0x2318F2490](v96);
    v55 = [(_PASXPCClientHelper *)self->_clientHelper remoteObjectProxyWithErrorHandler:v48];
    if (cursorCopy)
    {
      [cursorCopy date];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v57 = ;
    v11 = 0;
    v50 = *MEMORY[0x277CCA450];
    while (1)
    {
      if (v11)
      {
        v45 = [TRIAllocationStatusCursor alloc];
        [v57 timeIntervalSince1970];
        v10 = [(TRIAllocationStatusCursor *)v45 initWithSecondsFromEpoch:?];
        goto LABEL_52;
      }

      v90 = 0;
      v91 = &v90;
      v92 = 0x3032000000;
      v93 = __Block_byref_object_copy__7;
      v94 = __Block_byref_object_dispose__7;
      v95 = 0;
      v84 = 0;
      v85 = &v84;
      v86 = 0x3032000000;
      v87 = __Block_byref_object_copy__7;
      v88 = __Block_byref_object_dispose__7;
      v89 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x3032000000;
      v81 = __Block_byref_object_copy__7;
      v82 = __Block_byref_object_dispose__7;
      v83 = 0;
      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy__7;
      v76 = __Block_byref_object_dispose__7;
      v77 = 0;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_2;
      v66[3] = &unk_27885EE50;
      v12 = v54;
      v67 = v12;
      v68 = &v90;
      v69 = &v84;
      v70 = &v78;
      v71 = &v72;
      [v55 experimentHistoryRecordsWithLimit:100 newerThanDate:v57 deploymentEnvironment:environment completion:v66];
      if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:10.0])
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = NSStringFromSelector(a2);
        v15 = [v13 stringWithFormat:@"Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", v14];

        if (error)
        {
          v16 = objc_alloc(MEMORY[0x277CCA9B8]);
          v108 = v50;
          v109[0] = v15;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:&v108 count:1];
          *error = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:7 userInfo:v17];
        }

        v18 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412290;
          v107 = v44;
          _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", buf, 0xCu);
        }
      }

      else
      {
        v20 = *(v100 + 5);
        if (v20)
        {
          if (error)
          {
            v21 = v20;
LABEL_25:
            v11 = 0;
            v19 = 0;
            *error = v21;
            goto LABEL_20;
          }
        }

        else
        {
          if (v91[5])
          {
            v22 = v73[5];
            if (v22)
            {
              v23 = v22;

              v57 = v23;
            }

            v61 = +[TRIAllocationStatus internalToExternalStatusMapping];
            buf[0] = 0;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            obj = v91[5];
            v24 = [obj countByEnumeratingWithState:&v62 objects:v105 count:16];
            if (!v24)
            {
LABEL_48:

              v42 = [v79[5] intValue] < 0x64;
              v43 = buf[0];

              v11 = v42 | v43;
              v19 = 1;
              goto LABEL_20;
            }

            v59 = *v63;
            while (2)
            {
              v25 = 0;
              v60 = v24;
LABEL_32:
              if (*v63 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v62 + 1) + 8 * v25);
              v27 = objc_autoreleasePoolPush();
              v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v26, "eventType")}];
              v29 = [v61 objectForKeyedSubscript:v28];
              intValue = [v29 intValue];

              if (!intValue)
              {
                goto LABEL_40;
              }

              namespaces = [v26 namespaces];
              if (!namespaces)
              {
                goto LABEL_40;
              }

              treatmentId = [v26 treatmentId];
              if (treatmentId == @"unspecified-or-default-treatment")
              {
                v41 = 7;
                goto LABEL_43;
              }

              v33 = [v26 deploymentId] == -1;

              if (!v33)
              {
                v34 = [TRIExperimentAllocationStatus alloc];
                eventDate = [v26 eventDate];
                experimentId = [v26 experimentId];
                deploymentId = [v26 deploymentId];
                treatmentId2 = [v26 treatmentId];
                namespaces2 = [v26 namespaces];
                namespaces = [(TRIExperimentAllocationStatus *)v34 initWithType:intValue date:eventDate experimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2 namespaces:namespaces2];

                blockCopy[2](blockCopy, namespaces, buf);
                if (buf[0] == 1)
                {
                  eventDate2 = [v26 eventDate];

                  v41 = 6;
                  v57 = eventDate2;
                }

                else
                {
                  v41 = 0;
                }

LABEL_43:
              }

              else
              {
LABEL_40:
                v41 = 7;
              }

              objc_autoreleasePoolPop(v27);
              if (v41 != 7 && v41)
              {
                goto LABEL_48;
              }

              if (v60 == ++v25)
              {
                v24 = [obj countByEnumeratingWithState:&v62 objects:v105 count:16];
                if (!v24)
                {
                  goto LABEL_48;
                }

                continue;
              }

              goto LABEL_32;
            }
          }

          if (error)
          {
            v21 = v85[5];
            goto LABEL_25;
          }
        }
      }

      v11 = 0;
      v19 = 0;
LABEL_20:

      _Block_object_dispose(&v72, 8);
      _Block_object_dispose(&v78, 8);

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(&v90, 8);

      if ((v19 & 1) == 0)
      {
        v10 = 0;
LABEL_52:

        _Block_object_dispose(v99, 8);
        goto LABEL_53;
      }
    }
  }

  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v99 = 0;
    _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "unable to enumerate experiment statuses while device is class C locked", v99, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_53:

  return v10;
}

void __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_3;
  v18[3] = &unk_27885E190;
  v19 = *(a1 + 32);
  v14 = MEMORY[0x2318F2490](v18);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v12;
  v17 = v12;

  if (v14)
  {
    v14[2](v14);
  }
}

- (BOOL)enumerateActiveExperimentsForEnvironment:(int)environment error:(id *)error block:(id)block
{
  v6 = *&environment;
  v71 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    v10 = dispatch_semaphore_create(0);
    *v65 = 0;
    v66 = v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__7;
    v69 = __Block_byref_object_dispose__7;
    v70 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke;
    v57[3] = &unk_27885EE28;
    v59 = v65;
    v11 = v10;
    v58 = v11;
    v12 = MEMORY[0x2318F2490](v57);
    v13 = [(_PASXPCClientHelper *)self->_clientHelper remoteObjectProxyWithErrorHandler:v12];
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__7;
    v55 = __Block_byref_object_dispose__7;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__7;
    v49 = __Block_byref_object_dispose__7;
    v50 = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v17 = [v15 initWithObjects:{v16, 0}];

    objc_autoreleasePoolPop(v14);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke_2;
    v41[3] = &unk_27885EE78;
    v18 = v11;
    v42 = v18;
    v43 = &v45;
    v44 = &v51;
    [v13 experimentRecordsWithDeploymentEnvironments:v17 completion:v41];

    if ([MEMORY[0x277D425A0] waitForSemaphore:v18 timeoutSeconds:10.0])
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = NSStringFromSelector(a2);
      v21 = [v19 stringWithFormat:@"Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", v20];

      if (error)
      {
        v22 = objc_alloc(MEMORY[0x277CCA9B8]);
        v63 = *MEMORY[0x277CCA450];
        v64 = v21;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        *error = [v22 initWithDomain:@"TRIGeneralErrorDomain" code:7 userInfo:v23];
      }

      v24 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412290;
        v62 = v35;
        _os_log_error_impl(&dword_22EA6B000, v24, OS_LOG_TYPE_ERROR, "Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v27 = *(v66 + 5);
    if (v27)
    {
      if (!error)
      {
LABEL_10:
        v25 = 0;
LABEL_11:

        _Block_object_dispose(&v45, 8);
        _Block_object_dispose(&v51, 8);

        _Block_object_dispose(v65, 8);
        goto LABEL_21;
      }

      v28 = v27;
    }

    else
    {
      v30 = v52[5];
      if (v30)
      {
        buf[0] = 0;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v31 = v30;
        v32 = [v31 countByEnumeratingWithState:&v37 objects:v60 count:16];
        if (v32)
        {
          v33 = *v38;
LABEL_25:
          v34 = 0;
          while (1)
          {
            if (*v38 != v33)
            {
              objc_enumerationMutation(v31);
            }

            blockCopy[2](blockCopy, *(*(&v37 + 1) + 8 * v34), buf);
            if (buf[0])
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = [v31 countByEnumeratingWithState:&v37 objects:v60 count:16];
              if (v32)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        v25 = 1;
        goto LABEL_11;
      }

      if (!error)
      {
        goto LABEL_10;
      }

      v28 = v46[5];
    }

    v25 = 0;
    *error = v28;
    goto LABEL_11;
  }

  v26 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v65 = 67240192;
    *&v65[4] = qos_class_self();
    _os_log_error_impl(&dword_22EA6B000, v26, OS_LOG_TYPE_ERROR, "unable to enumerate active experiments while device is class C locked qos:%{public}u", v65, 8u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

void __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v30 = a3;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke_3;
  v48[3] = &unk_27885E190;
  v33 = a1;
  v49 = *(a1 + 32);
  v31 = MEMORY[0x2318F2490](v48);
  if (v32)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v32;
    v38 = [obj countByEnumeratingWithState:&v44 objects:v51 count:{16, v30}];
    if (v38)
    {
      v37 = *v45;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v44 + 1) + 8 * i);
          if ([v8 status] == 1)
          {
            v9 = [v8 treatmentId];
            v10 = v9 == 0;

            if (!v10)
            {
              v11 = objc_opt_new();
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v12 = [v8 namespaces];
              v13 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
              if (v13)
              {
                v14 = *v41;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v41 != v14)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v16 = *(*(&v40 + 1) + 8 * j);
                    v17 = [TRIVersionedNamespace alloc];
                    v18 = [v16 name];
                    v19 = -[TRIVersionedNamespace initWithName:compatibilityVersion:](v17, "initWithName:compatibilityVersion:", v18, [v16 compatibilityVersion]);
                    [v11 addObject:v19];
                  }

                  v13 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
                }

                while (v13);
              }

              v36 = *(*(*(v33 + 48) + 8) + 40);
              v20 = [TRIExperimentAllocationStatus alloc];
              v21 = [v8 startDate];
              v22 = v21;
              if (!v21)
              {
                v34 = objc_opt_new();
                v22 = v34;
              }

              v23 = [v8 experimentDeployment];
              v24 = [v23 experimentId];
              v25 = [v8 experimentDeployment];
              v26 = [v25 deploymentId];
              v27 = [v8 treatmentId];
              v28 = [(TRIExperimentAllocationStatus *)v20 initWithType:2 date:v22 experimentId:v24 deploymentId:v26 treatmentId:v27 namespaces:v11];
              [v36 addObject:v28];

              if (!v21)
              {
              }
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v38);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v29 = v31;
  if (v31)
  {
    (*(v31 + 2))();
    v29 = v31;
  }
}

- (BOOL)enumerateSampledActiveExperimentsForEnvironment:(int)environment correlationID:(id)d error:(id *)error block:(id)block
{
  v8 = *&environment;
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __112__TRIAllocationStatusDefaultProvider_enumerateSampledActiveExperimentsForEnvironment_correlationID_error_block___block_invoke;
  v27[3] = &unk_27885EEA0;
  v27[4] = &v28;
  [(TRIAllocationStatusDefaultProvider *)self enumerateActiveExperimentsForEnvironment:v8 error:error block:v27];
  if (v8 || [MEMORY[0x277D42590] isInternalBuild])
  {
    v13 = v29[5];
  }

  else
  {
    v13 = [TRIAllocationStatus sampleAllocationStatuses:v29[5] correlationId:dCopy nrSamples:2];
  }

  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v15)
  {
    v16 = *v23;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v22 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v18, &v26);
      LOBYTE(v18) = v26;
      objc_autoreleasePoolPop(v19);
      if (v18)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v15)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v28, 8);
  return 1;
}

- (BOOL)enumerateActiveRolloutsWithError:(id *)error block:(id)block
{
  v64[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    v8 = dispatch_semaphore_create(0);
    *v54 = 0;
    v55 = v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__7;
    v58 = __Block_byref_object_dispose__7;
    v59 = 0;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke;
    v51[3] = &unk_27885EE28;
    v53 = v54;
    v9 = v8;
    v52 = v9;
    v10 = MEMORY[0x2318F2490](v51);
    v11 = [(_PASXPCClientHelper *)self->_clientHelper remoteObjectProxyWithErrorHandler:v10];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__7;
    v49 = __Block_byref_object_dispose__7;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__7;
    v43 = __Block_byref_object_dispose__7;
    v44 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_2;
    v35[3] = &unk_27885EE78;
    v12 = v9;
    v36 = v12;
    v37 = &v39;
    v38 = &v45;
    [v11 rolloutAllocationStatusWithCompletion:v35];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:10.0])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromSelector(a2);
      v15 = [v13 stringWithFormat:@"Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", v14];

      if (error)
      {
        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v63 = *MEMORY[0x277CCA450];
        v64[0] = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        *error = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:7 userInfo:v17];
      }

      v18 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(a2);
        *buf = 138412290;
        v62 = v29;
        _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v21 = *(v55 + 5);
    if (v21)
    {
      if (!error)
      {
LABEL_10:
        v19 = 0;
LABEL_11:

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v45, 8);

        _Block_object_dispose(v54, 8);
        goto LABEL_21;
      }

      v22 = v21;
    }

    else
    {
      v24 = v46[5];
      if (v24)
      {
        buf[0] = 0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v31 objects:v60 count:16];
        if (v26)
        {
          v27 = *v32;
LABEL_25:
          v28 = 0;
          while (1)
          {
            if (*v32 != v27)
            {
              objc_enumerationMutation(v25);
            }

            blockCopy[2](blockCopy, *(*(&v31 + 1) + 8 * v28), buf);
            if (buf[0])
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [v25 countByEnumeratingWithState:&v31 objects:v60 count:16];
              if (v26)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        v19 = 1;
        goto LABEL_11;
      }

      if (!error)
      {
        goto LABEL_10;
      }

      v22 = v40[5];
    }

    v19 = 0;
    *error = v22;
    goto LABEL_11;
  }

  v20 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v54 = 0;
    _os_log_error_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_ERROR, "unable to enumerate active rollouts while device is class C locked", v54, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_21:

  return v19;
}

void __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_3;
  v13[3] = &unk_27885E190;
  v14 = *(a1 + 32);
  v7 = MEMORY[0x2318F2490](v13);
  v8 = 40;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v8 = 48;
    v9 = v5;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = v9;
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  if (v7)
  {
    v7[2](v7);
  }
}

- (BOOL)enumerateSampledActiveRolloutsForCorrelationID:(id)d error:(id *)error block:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:497 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__TRIAllocationStatusDefaultProvider_enumerateSampledActiveRolloutsForCorrelationID_error_block___block_invoke;
  v25[3] = &unk_27885EEC8;
  v25[4] = &v26;
  [(TRIAllocationStatusDefaultProvider *)self enumerateActiveRolloutsWithError:error block:v25];
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v11 = v27[5];
  }

  else
  {
    v11 = [TRIAllocationStatus sampleAllocationStatuses:v27[5] correlationId:dCopy nrSamples:2];
  }

  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v13)
  {
    v14 = *v21;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v20 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v16, &v24);
      LOBYTE(v16) = v24;
      objc_autoreleasePoolPop(v17);
      if (v16)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v26, 8);
  return 1;
}

- (id)addStatusUpdateHandlerForEnvironment:(int)environment queue:(id)queue block:(id)block
{
  v6 = *&environment;
  queueCopy = queue;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v11 = [TRIAllocationStatus notificationNameForDeploymentEnvironment:v6];
  if (v11)
  {
    if (!queueCopy)
    {
      queueCopy = [(TRIAllocationStatusDefaultProvider *)self _defaultQueue];
    }

    out_token = 0;
    uTF8String = [v11 UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __87__TRIAllocationStatusDefaultProvider_addStatusUpdateHandlerForEnvironment_queue_block___block_invoke;
    handler[3] = &unk_27885ECF8;
    v21 = blockCopy;
    if (notify_register_dispatch(uTF8String, &out_token, queueCopy, handler))
    {
      v13 = 0;
    }

    else
    {
      lock = self->_lock;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __87__TRIAllocationStatusDefaultProvider_addStatusUpdateHandlerForEnvironment_queue_block___block_invoke_2;
      v18[3] = &__block_descriptor_36_e48_v16__0__TRIAllocationStatusProviderGuardedData_8l;
      v19 = out_token;
      [(_PASLock *)lock runWithLockAcquired:v18];
      v15 = [TRINotificationState alloc];
      v13 = [(TRINotificationState *)v15 initWithToken:out_token];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __87__TRIAllocationStatusDefaultProvider_addStatusUpdateHandlerForEnvironment_queue_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 addObject:v3];
}

- (BOOL)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    token = [tokenCopy token];
    if (!notify_cancel(token))
    {
      lock = self->_lock;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __66__TRIAllocationStatusDefaultProvider_removeUpdateHandlerForToken___block_invoke;
      v9[3] = &__block_descriptor_36_e48_v16__0__TRIAllocationStatusProviderGuardedData_8l;
      v10 = token;
      [(_PASLock *)lock runWithLockAcquired:v9];
LABEL_6:
      v6 = 1;
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

void __66__TRIAllocationStatusDefaultProvider_removeUpdateHandlerForToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 removeObject:v3];
}

- (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  environmentsCopy = environments;
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__7;
    v25 = __Block_byref_object_dispose__7;
    v26 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__TRIAllocationStatusDefaultProvider_activeExperimentInformationWithEnvironments_error___block_invoke;
    v20[3] = &unk_27885EF10;
    v20[4] = buf;
    v7 = MEMORY[0x2318F2490](v20);
    v8 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v7];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__TRIAllocationStatusDefaultProvider_activeExperimentInformationWithEnvironments_error___block_invoke_2;
    v13[3] = &unk_27885EF38;
    v13[4] = &v14;
    [v8 activeExperimentInformationWithEnvironments:environmentsCopy completion:v13];
    v9 = *(v22 + 5);
    if (v9)
    {
      v10 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    else
    {
      v10 = v15[5];
    }

    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = qos_class_self();
      _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "unable to fetch active experiments while device is class C locked qos:%{public}u", buf, 8u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isOptedOutOfExperimentation
{
  v20 = *MEMORY[0x277D85DE8];
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__TRIAllocationStatusDefaultProvider_isOptedOutOfExperimentation__block_invoke;
    v13[3] = &unk_27885EF10;
    v13[4] = buf;
    v3 = MEMORY[0x2318F2490](v13);
    v4 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v3];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__TRIAllocationStatusDefaultProvider_isOptedOutOfExperimentation__block_invoke_2;
    v8[3] = &unk_27885EF60;
    v8[4] = &v9;
    [v4 isOptedOutOfExperimentationWithCompletion:v8];
    if (*(v15 + 5))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v10 + 24);
    }

    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = qos_class_self();
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "unable to check opt-out status while device is class C locked qos:%{public}u", buf, 8u);
    }

    v5 = 0;
  }

  return v5 & 1;
}

@end