@interface CloudKitUploadController
+ (void)unregisterCloudKitUploadActivities;
- (BOOL)logUploadRequiresConsent:(id)consent;
- (BOOL)shouldDeferFromCloudKitError:(id)error;
- (BOOL)validateCaseAttachmentsForDiagnosticCaseStorage:(id)storage record:(id)record;
- (CloudKitUploadController)initWithWorkspace:(id)workspace;
- (id)_fetchCasesInternal:(id)internal limit:(unint64_t)limit;
- (id)_fetchRecentPendingCaseSummariesInternal:(id)internal limit:(unint64_t)limit;
- (id)currentCloudKitContainerForEnvironment:(int64_t)environment;
- (id)fetchCaseSummariesWithIdentifiers:(id)identifiers;
- (id)fetchCasesWithIdentifiers:(id)identifiers limit:(unint64_t)limit;
- (id)locallyFilterCases:(id)cases;
- (id)processCloudkitDecisionServiceResponse:(id)response;
- (id)randomlySelectCasesFrom:(id)from maximum:(unint64_t)maximum;
- (id)uploadOperationWithRecordsToSave:(id)save recordIDsToDelete:(id)delete allowCellular:(BOOL)cellular activity:(id)activity;
- (void)_save;
- (void)ckcodeDecisionService:(id)service response:(id)response;
- (void)configureCaseSummaryDiscretionaryActivityCriteria:(id)criteria;
- (void)configureLogUploadDiscretionaryActivityCriteria:(id)criteria;
- (void)configureWorkspace:(id)workspace;
- (void)deferXPCActivity:(id)activity;
- (void)filterCasesPendingUpload:(id)upload activity:(id)activity reply:(id)reply;
- (void)filterCasesViaCloudkitDecisionService:(id)service activity:(id)activity response:(id)response;
- (void)finishXPCActivity:(id)activity;
- (void)operationCompletedWithID:(id)d savedRecords:(id)records deletedRecords:(id)deletedRecords error:(id)error activity:(id)activity;
- (void)performSubmissionOfCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)performSubmissionOfRecentCaseSummaries:(unint64_t)summaries reply:(id)reply;
- (void)performUploadDecisionForCaseIdentifiers:(id)identifiers reply:(id)reply;
- (void)performUploadForCaseIdentifiers:(id)identifiers;
- (void)performUploadForRecentCases:(unint64_t)cases;
- (void)recordOperationCompleteForOperationID:(id)d completionTime:(id)time success:(BOOL)success;
- (void)registerCaseSummaryActivities;
- (void)registerCloudKitUploadActivities;
- (void)registerLogUploadActivities;
- (void)save;
- (void)startPeriodicSummaryTask:(id)task;
- (void)startPeriodicUploadTask:(id)task;
- (void)submitCaseSummaries:(id)summaries activity:(id)activity;
- (void)submitCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)submitRecentCaseSummaries:(unint64_t)summaries reply:(id)reply;
- (void)uploadCasesWithIdentifiers:(id)identifiers;
- (void)uploadDecisionWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)uploadDiagnosticCases:(id)cases activity:(id)activity;
- (void)uploadMostRecentCases:(unint64_t)cases;
- (void)uploadToCloudKitContainer:(id)container withRecords:(id)records activity:(id)activity;
@end

@implementation CloudKitUploadController

- (CloudKitUploadController)initWithWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v14.receiver = self;
  v14.super_class = CloudKitUploadController;
  v5 = [(CloudKitUploadController *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.autobugcapture.CKUpload", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = v5->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__CloudKitUploadController_initWithWorkspace___block_invoke;
    v11[3] = &unk_278CF04F8;
    v12 = v5;
    v13 = workspaceCopy;
    dispatch_sync(v9, v11);
  }

  return v5;
}

- (void)configureWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v5 = uploadLogHandle(workspaceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Configuring CoreData workspace", v14, 2u);
  }

  v6 = [workspaceCopy copy];
  workspace = self->_workspace;
  self->_workspace = v6;

  v8 = [[DiagnosticCaseStorageAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseStorageAnalytics = self->_caseStorageAnalytics;
  self->_caseStorageAnalytics = v8;

  v10 = [[DiagnosticCaseSummaryAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseSummaryAnalytics = self->_caseSummaryAnalytics;
  self->_caseSummaryAnalytics = v10;

  v12 = [[UploadRecordAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  uploadRecordAnalytics = self->_uploadRecordAnalytics;
  self->_uploadRecordAnalytics = v12;
}

- (id)_fetchCasesInternal:(id)internal limit:(unint64_t)limit
{
  v5 = MEMORY[0x277CCAC30];
  internalCopy = internal;
  v7 = [v5 predicateWithFormat:@"uploadState == %d", 0];
  v8 = MEMORY[0x277CCAC30];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v10 = [v8 predicateWithFormat:@"timeStamp >= %@", v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDampeningType == %d", 0];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseClosureType == %d OR caseClosureType == %d OR caseClosureType == %d", 1, 5, 2];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseAttachments != nil"];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachmentsIncomplete != %@", MEMORY[0x277CBEC38]];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, v10, v11, v12, v13, v14, internalCopy, 0}];

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
  caseStorageAnalytics = self->_caseStorageAnalytics;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timeStamp" ascending:0];
  v19 = [(ObjectAnalytics *)caseStorageAnalytics fetchEntitiesFreeForm:v16 sortDesc:v18 limit:limit];

  return v19;
}

- (id)fetchCasesWithIdentifiers:(id)identifiers limit:(unint64_t)limit
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 length])
        {
          v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v13];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v15 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v7];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CloudKitUploadController *)self _fetchCasesInternal:v15 limit:limit];

  return v16;
}

- (void)_save
{
  v3 = uploadLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Saving...", v4, 2u);
  }

  [(AnalyticsWorkspace *)self->_workspace save];
}

- (void)save
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v3 = uploadLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Scheduling delayed save", buf, 2u);
  }

  v4 = v16[5];
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = v16[5];
    v16[5] = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v7 = v16[5];
  v16[5] = v6;

  v8 = v16[5];
  v9 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  v10 = v16[5];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__CloudKitUploadController_save__block_invoke;
  handler[3] = &unk_278CF08D0;
  handler[4] = self;
  handler[5] = &v15;
  dispatch_source_set_event_handler(v10, handler);
  v11 = v16[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__CloudKitUploadController_save__block_invoke_2;
  v12[3] = &unk_278CF22D8;
  v12[4] = &v15;
  dispatch_source_set_cancel_handler(v11, v12);
  dispatch_activate(v16[5]);
  _Block_object_dispose(&v15, 8);
}

uint64_t __32__CloudKitUploadController_save__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(*(a1 + 40) + 8) + 40));
  v2 = *(a1 + 32);

  return [v2 _save];
}

void __32__CloudKitUploadController_save__block_invoke_2(uint64_t a1)
{
  v2 = uploadLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cancelling delay timer", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)locallyFilterCases:(id)cases
{
  v43 = *MEMORY[0x277D85DE8];
  casesCopy = cases;
  if ([casesCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = uploadLogHandle(array);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Locally filtering cases ineligible for uploading...", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = casesCopy;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      obj = v6;
      v27 = casesCopy;
      v9 = 0;
      v10 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          uploadRecord = [v12 uploadRecord];
          if (!uploadRecord)
          {
            v14 = uploadLogHandle(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              caseID = [v12 caseID];
              *buf = 138412290;
              v35 = caseID;
              _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Creating new upload record for case %@", buf, 0xCu);
            }

            uploadRecord = [(ObjectAnalytics *)self->_uploadRecordAnalytics createEntity];
            [uploadRecord setCaseStorage:v12];
            v9 = 1;
          }

          v16 = [uploadRecord uploadState] >= 1 && objc_msgSend(uploadRecord, "uploadState") != 4;
          operationID = [uploadRecord operationID];

          if (v16 || operationID)
          {
            v19 = uploadLogHandle(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              caseID2 = [v12 caseID];
              if (v16)
              {
                v21 = "Yes";
              }

              else
              {
                v21 = "No";
              }

              uploadState = [uploadRecord uploadState];
              *buf = 138544130;
              v23 = "No";
              if (operationID)
              {
                v23 = "Yes";
              }

              v35 = caseID2;
              v36 = 2080;
              v37 = v21;
              v38 = 1024;
              v39 = uploadState;
              v40 = 2080;
              v41 = v23;
              _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "Skipping case %{public}@ as it's already uploading, or has been uploaded. (alreadyScheduled: %s(%d), hasOperation: %s)", buf, 0x26u);
            }
          }

          else if ([(CloudKitUploadController *)self validateCaseAttachmentsForDiagnosticCaseStorage:v12 record:uploadRecord])
          {
            [array addObject:v12];
          }

          else
          {
            [v12 setUploadState:3];
            v24 = uploadLogHandle([uploadRecord setUploadState:1]);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              caseID3 = [v12 caseID];
              *buf = 138543362;
              v35 = caseID3;
              _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "Case %{public}@ is missing required files. Marked as ineligible for upload.)", buf, 0xCu);
            }

            v9 = 1;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v8);

      if (v9)
      {
        [(CloudKitUploadController *)self save];
      }

      casesCopy = v27;
    }

    else
    {
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)filterCasesPendingUpload:(id)upload activity:(id)activity reply:(id)reply
{
  uploadCopy = upload;
  activityCopy = activity;
  replyCopy = reply;
  if ([uploadCopy count])
  {
    v11 = [(CloudKitUploadController *)self locallyFilterCases:uploadCopy];
    if ([v11 count])
    {
      if (activityCopy && (should_defer = xpc_activity_should_defer(activityCopy)))
      {
        v13 = uploadLogHandle(should_defer);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "Stopping before decision server check due to activity deferral", buf, 2u);
        }

        [(CloudKitUploadController *)self deferXPCActivity:activityCopy];
        replyCopy[2](replyCopy, 0);
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke;
        v16[3] = &unk_278CF2300;
        v17 = activityCopy;
        selfCopy = self;
        v20 = replyCopy;
        v19 = v11;
        [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v19 activity:v17 response:v16];
      }
    }

    else
    {
      v15 = uploadLogHandle(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Skipping decision service check since the pruned cases list is empty", buf, 2u);
      }

      (replyCopy)[2](replyCopy, v11);
    }
  }

  else
  {
    v14 = uploadLogHandle(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Skipping decision service check since we received an empty case list", buf, 2u);
    }

    (replyCopy)[2](replyCopy, uploadCopy);
  }
}

void __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    should_defer = xpc_activity_should_defer(v7);
    if (should_defer)
    {
      v9 = uploadLogHandle(should_defer);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Stopping log uploads due to activity deferral", &buf, 2u);
      }

      [*(a1 + 40) deferXPCActivity:*(a1 + 32)];
      v10 = *(*(a1 + 40) + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_87;
      block[3] = &unk_278CEFF50;
      v11 = *(a1 + 56);
      v46 = 0;
      v47 = v11;
      dispatch_async(v10, block);

      v12 = v47;
      goto LABEL_30;
    }
  }

  if (v6)
  {
    v13 = [v6 domain];
    if ([v13 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v14 = [v6 code];

      if (v14 == 89)
      {
        v16 = uploadLogHandle(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "CloudKit cancelled the decision service operation. Ending upload task.", &buf, 2u);
        }

        v17 = 0;
LABEL_22:

        v30 = *(*(a1 + 40) + 8);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_89;
        v42[3] = &unk_278CEFF50;
        v31 = *(a1 + 56);
        v43 = v17;
        v44 = v31;
        v12 = v17;
        dispatch_async(v30, v42);

        goto LABEL_30;
      }
    }

    else
    {
    }

    v23 = uploadLogHandle(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_ERROR, "Decision service responded with an error: %@", &buf, 0xCu);
    }

    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v26 = +[ABCAdministrator sharedInstance];
    v27 = [v26 configurationManager];
    v17 = [v24 randomlySelectCasesFrom:v25 maximum:{objc_msgSend(v27, "cloudKitFallbackMaximumLogCount")}];

    v16 = uploadLogHandle(v28);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v17 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Proceeding to upload %ld cases with only local filtering", &buf, 0xCu);
    }

    goto LABEL_22;
  }

  v18 = [v5 objectForKeyedSubscript:@"summary"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 BOOLValue];
    if (v20)
    {
      v21 = *(a1 + 48);
      v22 = uploadLogHandle(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "Decision service permitted upload for ALL cases.", &buf, 2u);
      }
    }

    else
    {
      v35 = uploadLogHandle(v20);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_DEFAULT, "Decision service declined upload for ALL cases.", &buf, 2u);
      }

      v21 = 0;
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__6;
    v53 = __Block_byref_object_dispose__6;
    v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_2;
    v41[3] = &unk_278CF0DA8;
    v41[4] = &buf;
    [v5 enumerateKeysAndObjectsUsingBlock:v41];
    v32 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:*(*(&buf + 1) + 40)];
    v21 = [*(a1 + 48) filteredArrayUsingPredicate:v32];
    v33 = uploadLogHandle(v21);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v21 count];
      *v48 = 134217984;
      v49 = v34;
      _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEFAULT, "Decision service permitted upload for %ld cases.", v48, 0xCu);
    }

    _Block_object_dispose(&buf, 8);
  }

  v36 = *(*(a1 + 40) + 8);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_96;
  v38[3] = &unk_278CEFF50;
  v37 = *(a1 + 56);
  v39 = v21;
  v40 = v37;
  v12 = v21;
  dispatch_async(v36, v38);

LABEL_30:
}

void __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:@"summary"] & 1) == 0)
    {
      v7 = [v6 BOOLValue];
      if (v7)
      {
        v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v5];
        v9 = uploadLogHandle([*(*(*(a1 + 32) + 8) + 40) addObject:v8]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, " Adding predicate for caseID == %@", buf, 0xCu);
        }
      }

      else
      {
        v8 = uploadLogHandle(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, " Skipping caseID %@ (server denied)", buf, 0xCu);
        }
      }
    }
  }
}

- (BOOL)logUploadRequiresConsent:(id)consent
{
  consentCopy = consent;
  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];
  autoBugCaptureUploadPreapproved = [configurationManager autoBugCaptureUploadPreapproved];

  if (autoBugCaptureUploadPreapproved)
  {
    v7 = 0;
  }

  else
  {
    v7 = [consentCopy hasSuffix:@".pcapng"];
  }

  return v7;
}

- (id)randomlySelectCasesFrom:(id)from maximum:(unint64_t)maximum
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = fromCopy;
  if (maximum)
  {
    if ([fromCopy count] >= maximum)
    {
      array = [MEMORY[0x277CBEB18] array];
      v8 = [v6 count];
      v9 = v8;
      v10 = uploadLogHandle(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        maximumCopy = maximum;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Randomly choosing %ld out of %d cases for upload", buf, 0x12u);
      }

      if ([array count] < maximum)
      {
        v11 = 3 * v9 + 2;
        while (1)
        {
          v12 = [v6 objectAtIndex:arc4random_uniform(v9)];
          v13 = [array containsObject:v12];
          v14 = v13;
          v15 = uploadLogHandle(v13);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
          if (v14)
          {
            if (v16)
            {
              caseID = [v12 caseID];
              *buf = 138412290;
              maximumCopy = caseID;
              _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Already chose case %@, skipping...", buf, 0xCu);
            }
          }

          else
          {
            if (v16)
            {
              caseID2 = [v12 caseID];
              *buf = 138412290;
              maximumCopy = caseID2;
              _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Selecting case %@ for upload", buf, 0xCu);
            }

            v18 = [array addObject:v12];
          }

          if (!--v11)
          {
            break;
          }

          if ([array count] >= maximum)
          {
            goto LABEL_22;
          }
        }

        v20 = uploadLogHandle(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          maximumCopy = 3 * v9;
          _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Randomization retry count exceeded reasonable threshold (%ld). Bailing out!", buf, 0xCu);
        }
      }
    }

    else
    {
      array = v6;
    }
  }

  else
  {
    array = 0;
  }

LABEL_22:

  return array;
}

- (BOOL)validateCaseAttachmentsForDiagnosticCaseStorage:(id)storage record:(id)record
{
  v66 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  recordCopy = record;
  v8 = uploadLogHandle(recordCopy);
  v9 = v8;
  if (storageCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      caseID = [storageCopy caseID];
      *buf = 138412290;
      v65 = caseID;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Preflighting attachments for case %@", buf, 0xCu);
    }

    v51 = objc_autoreleasePoolPush();
    caseAttachments = [storageCopy caseAttachments];
    v12 = [DiagnosticCase attachmentsFromStringRepresentation:caseAttachments];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURLs = [recordCopy fileURLs];

    v52 = storageCopy;
    if (fileURLs)
    {
      fileURLs2 = [recordCopy fileURLs];
      [fileURLs2 removeAllObjects];
    }

    else
    {
      fileURLs2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [recordCopy setFileURLs:fileURLs2];
    }

    [recordCopy setTotalBytes:0];
    v53 = recordCopy;
    [recordCopy setNumberOfFiles:0];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      v54 = *MEMORY[0x277CBE838];
      v20 = 0x277CBE000uLL;
      v55 = v16;
      do
      {
        v21 = 0;
        do
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(v20 + 3008) URLWithString:*(*(&v59 + 1) + 8 * v21)];
          lastPathComponent = [v22 lastPathComponent];
          v24 = [(CloudKitUploadController *)self logUploadRequiresConsent:lastPathComponent];
          if (!v24)
          {
            selfCopy = self;
            path = [v22 path];
            v28 = [defaultManager fileExistsAtPath:path];

            v30 = uploadLogHandle(v29);
            v25 = v30;
            if (v28)
            {
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                absoluteString = [v22 absoluteString];
                *buf = 138412290;
                v65 = absoluteString;
                _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "  Attachment file exists: %@", buf, 0xCu);
              }

              v57 = 0;
              v58 = 0;
              v32 = [v22 getResourceValue:&v58 forKey:v54 error:&v57];
              v25 = v58;
              v33 = v57;
              v34 = uploadLogHandle(v33);
              v35 = v34;
              if (v32)
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  integerValue = [v25 integerValue];
                  *buf = 134217984;
                  v65 = integerValue;
                  _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_INFO, "  File size is: %ld", buf, 0xCu);
                }

                if ([v25 integerValue])
                {
                  [v53 setTotalBytes:{objc_msgSend(v53, "totalBytes") + -[NSObject unsignedIntegerValue](v25, "unsignedIntegerValue")}];
                  [v53 setNumberOfFiles:{(objc_msgSend(v53, "numberOfFiles") + 1)}];
                  v37 = v53;
                  goto LABEL_31;
                }

                fileURLs3 = uploadLogHandle(0);
                if (os_log_type_enabled(fileURLs3, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_241804000, fileURLs3, OS_LOG_TYPE_INFO, "  Ignoring attachment with zero file size.", buf, 2u);
                }
              }

              else
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v65 = v33;
                  _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_DEFAULT, "  Error getting file size: %@", buf, 0xCu);
                }

                [v53 setNumberOfFiles:{(objc_msgSend(v53, "numberOfFiles") + 1)}];
                v37 = v53;
LABEL_31:
                fileURLs3 = [v37 fileURLs];
                [fileURLs3 addObject:v22];
              }

              v16 = v55;
            }

            else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              absoluteString2 = [v22 absoluteString];
              *buf = 138412290;
              v65 = absoluteString2;
              _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_ERROR, "Attachment file at path %@ does not exist.", buf, 0xCu);
            }

            self = selfCopy;
            v20 = 0x277CBE000;
            goto LABEL_34;
          }

          v25 = uploadLogHandle(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEFAULT, "Privacy sensitive log content cannot be uploaded.", buf, 2u);
          }

LABEL_34:

          ++v21;
        }

        while (v18 != v21);
        v40 = [v16 countByEnumeratingWithState:&v59 objects:v63 count:16];
        v18 = v40;
      }

      while (v40);
    }

    recordCopy = v53;
    fileURLs4 = [v53 fileURLs];
    v42 = [fileURLs4 count];
    v43 = [v16 count];

    v15 = v42 == v43;
    if (v42 == v43)
    {
      v44 = uploadLogHandle([v53 setPreflightResult:1]);
      v45 = v51;
      v46 = defaultManager;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_INFO, "Preflight successful: all files for this case are available", buf, 2u);
      }

      storageCopy = v52;
      goto LABEL_50;
    }

    fileURLs5 = [v53 fileURLs];
    v48 = [fileURLs5 count];

    v45 = v51;
    v46 = defaultManager;
    if (v48)
    {
      v44 = uploadLogHandle([v53 setPreflightResult:2]);
      storageCopy = v52;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v49 = "Preflight failed: some files for this case are unavailable";
LABEL_49:
        _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_ERROR, v49, buf, 2u);
      }
    }

    else
    {
      v44 = uploadLogHandle([v53 setPreflightResult:3]);
      storageCopy = v52;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v49 = "Preflight failed: all files for this case are unavailable";
        goto LABEL_49;
      }
    }

LABEL_50:

    objc_autoreleasePoolPop(v45);
    goto LABEL_51;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Cannot validate attachments for a nil caseStorage!", buf, 2u);
  }

  v15 = 0;
LABEL_51:

  return v15;
}

- (void)recordOperationCompleteForOperationID:(id)d completionTime:(id)time success:(BOOL)success
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  timeCopy = time;
  v10 = timeCopy;
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"operationID == %@", dCopy];
    uploadRecordAnalytics = self->_uploadRecordAnalytics;
    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startTime" ascending:1];
    v14 = [(ObjectAnalytics *)uploadRecordAnalytics fetchEntitiesFreeForm:dCopy sortDesc:v13 limit:0];

    v16 = uploadLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = [v14 count];
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "Found %ld records with matching operationID %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__CloudKitUploadController_recordOperationCompleteForOperationID_completionTime_success___block_invoke;
    v17[3] = &unk_278CF2328;
    successCopy = success;
    v18 = v10;
    v20 = buf;
    v19 = dCopy;
    [v14 enumerateObjectsUsingBlock:v17];
    if (*(*&buf[8] + 24) == 1)
    {
      [(CloudKitUploadController *)self save];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    dCopy = uploadLogHandle(timeCopy);
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, dCopy, OS_LOG_TYPE_ERROR, "Not expecting a nil operation ID!", buf, 2u);
    }
  }
}

void __89__CloudKitUploadController_recordOperationCompleteForOperationID_completionTime_success___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    [v5 setOperationID:0];
    if (*(a1 + 56))
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    [v5 setUploadState:v6];
    if (*(a1 + 56) == 1)
    {
      v7 = [v5 caseStorage];
      [v7 setUploadState:4];
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v5;
    }

    else
    {
      [v5 setStartTime:?];
      v9 = v5;
      v8 = 0;
    }

    v13 = [v9 setFinishTime:v8];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v14 = uploadLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "Recording completion for upload record %@", &v15, 0xCu);
    }
  }

  else
  {
    v5 = uploadLogHandle(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 40);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Unexpected class %@ for object with operationID %@ (expecting UploadRecord)", &v15, 0x16u);
    }
  }
}

- (id)currentCloudKitContainerForEnvironment:(int64_t)environment
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];
  cloudKitContainerIdentifier = [configurationManager cloudKitContainerIdentifier];

  v7 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:cloudKitContainerIdentifier environment:environment];
  v8 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v7];
  v9 = uploadLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "Production";
    if (environment == 2)
    {
      v10 = "Sandbox";
    }

    v12 = 138412546;
    v13 = cloudKitContainerIdentifier;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Returning CKContainer with identifier %@ in the %s environment", &v12, 0x16u);
  }

  return v8;
}

- (id)uploadOperationWithRecordsToSave:(id)save recordIDsToDelete:(id)delete allowCellular:(BOOL)cellular activity:(id)activity
{
  cellularCopy = cellular;
  activityCopy = activity;
  v10 = MEMORY[0x277CBC4A0];
  deleteCopy = delete;
  saveCopy = save;
  v13 = [[v10 alloc] initWithRecordsToSave:saveCopy recordIDsToDelete:deleteCopy];

  v14 = +[ABCAdministrator sharedInstance];
  configurationManager = [v14 configurationManager];
  cloudKitPrefersAnonymous = [configurationManager cloudKitPrefersAnonymous];
  configuration = [v13 configuration];
  [configuration setPreferAnonymousRequests:cloudKitPrefersAnonymous];

  configuration2 = [v13 configuration];
  [configuration2 setAllowsCellularAccess:cellularCopy];

  configuration3 = [v13 configuration];
  [configuration3 setAutomaticallyRetryNetworkFailures:1];

  configuration4 = [v13 configuration];
  [configuration4 setDiscretionaryNetworkBehavior:0];

  v21 = +[ABCAdministrator sharedInstance];
  configurationManager2 = [v21 configurationManager];
  [configurationManager2 cloudKitTimeoutIntervalForResource];
  v24 = v23;
  configuration5 = [v13 configuration];
  [configuration5 setTimeoutIntervalForResource:v24];

  v26 = +[ABCAdministrator sharedInstance];
  configurationManager3 = [v26 configurationManager];
  [configurationManager3 cloudKitTimeoutIntervalForRequest];
  v29 = v28;
  configuration6 = [v13 configuration];
  [configuration6 setTimeoutIntervalForRequest:v29];

  if (activityCopy)
  {
    configuration7 = [v13 configuration];
    [configuration7 setXpcActivity:activityCopy];
  }

  return v13;
}

- (void)uploadToCloudKitContainer:(id)container withRecords:(id)records activity:(id)activity
{
  v141 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  recordsCopy = records;
  activityCopy = activity;
  v9 = uploadLogHandle(activityCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Resetting outstanding operation count to zero", buf, 2u);
  }

  self->_outstandingOperationCount = 0;
  self->_aggregateOperationResult = 1;
  v11 = uploadLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [recordsCopy count];
    *buf = 134217984;
    v123 = v12;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Ready to upload %ld cases", buf, 0xCu);
  }

  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  v117 = 0u;
  obj = recordsCopy;
  v97 = [obj countByEnumeratingWithState:&v117 objects:v140 count:16];
  if (v97)
  {
    v14 = 0x277CBE000uLL;
    v96 = *v118;
    *&v13 = 134217984;
    v91 = v13;
    v95 = activityCopy;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v118 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v109 = *(*(&v117 + 1) + 8 * v15);
        if (activityCopy)
        {
          should_defer = xpc_activity_should_defer(activityCopy);
          if (should_defer)
          {
            v90 = uploadLogHandle(should_defer);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241804000, v90, OS_LOG_TYPE_DEFAULT, "Stopping log uploads due to activity defer", buf, 2u);
            }

            [(CloudKitUploadController *)self deferXPCActivity:activityCopy];
            goto LABEL_57;
          }
        }

        v104 = v15;
        v106 = objc_alloc_init(*(v14 + 2840));
        v17 = +[SystemProperties sharedInstance];
        npiDevice = [v17 npiDevice];

        v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ABCCase"];
        v105 = +[SystemProperties sharedInstance];
        v19 = objc_alloc_init(*(v14 + 2840));
        caseStorage = [v109 caseStorage];
        caseID = [caseStorage caseID];
        [v18 setObject:caseID forKeyedSubscript:@"caseID"];

        caseStorage2 = [v109 caseStorage];
        caseGroupID = [caseStorage2 caseGroupID];
        [v18 setObject:caseGroupID forKeyedSubscript:@"caseGroupID"];

        caseStorage3 = [v109 caseStorage];
        timeStamp = [caseStorage3 timeStamp];
        [v18 setObject:timeStamp forKeyedSubscript:@"caseDetectionTime"];

        caseStorage4 = [v109 caseStorage];
        caseDomain = [caseStorage4 caseDomain];
        [v18 setObject:caseDomain forKeyedSubscript:@"caseDomain"];

        v28 = [v18 objectForKeyedSubscript:@"caseDomain"];

        v107 = v19;
        if (v28)
        {
          v29 = [v18 objectForKeyedSubscript:@"caseDomain"];
          [v19 addObject:v29];
        }

        else
        {
          [v19 addObject:&stru_285368168];
        }

        caseStorage5 = [v109 caseStorage];
        caseType = [caseStorage5 caseType];
        [v18 setObject:caseType forKeyedSubscript:@"caseType"];

        v32 = [v18 objectForKeyedSubscript:@"caseType"];

        if (v32)
        {
          v33 = [v18 objectForKeyedSubscript:@"caseType"];
          [v19 addObject:v33];
        }

        else
        {
          [v19 addObject:&stru_285368168];
        }

        caseStorage6 = [v109 caseStorage];
        caseSubtype = [caseStorage6 caseSubtype];
        [v18 setObject:caseSubtype forKeyedSubscript:@"caseSubtype"];

        v36 = [v18 objectForKeyedSubscript:@"caseSubtype"];

        if (v36)
        {
          v37 = [v18 objectForKeyedSubscript:@"caseSubtype"];
          v38 = v19;
          [v19 addObject:v37];
        }

        else
        {
          v38 = v19;
          [v19 addObject:&stru_285368168];
        }

        caseStorage7 = [v109 caseStorage];
        caseSubtypeContext = [caseStorage7 caseSubtypeContext];
        [v18 setObject:caseSubtypeContext forKeyedSubscript:@"caseSubtypeContext"];

        v41 = [v18 objectForKeyedSubscript:@"caseSubtypeContext"];

        if (v41)
        {
          v42 = [v18 objectForKeyedSubscript:@"caseSubtypeContext"];
          [v38 addObject:v42];
        }

        else
        {
          [v38 addObject:&stru_285368168];
        }

        caseStorage8 = [v109 caseStorage];
        caseDetectedProcess = [caseStorage8 caseDetectedProcess];
        [v18 setObject:caseDetectedProcess forKeyedSubscript:@"caseProcess"];

        v45 = [v18 objectForKeyedSubscript:@"caseProcess"];

        if (v45)
        {
          v46 = [v18 objectForKeyedSubscript:@"caseProcess"];
          [v38 addObject:v46];
        }

        else
        {
          [v38 addObject:&stru_285368168];
        }

        v47 = [v38 componentsJoinedByString:@"^"];
        [v18 setObject:v47 forKeyedSubscript:@"caseSignature"];

        caseStorage9 = [v109 caseStorage];
        buildVersion = [caseStorage9 buildVersion];
        v50 = buildVersion;
        if (buildVersion)
        {
          buildVersion2 = buildVersion;
        }

        else
        {
          buildVersion2 = [v105 buildVersion];
        }

        v52 = buildVersion2;

        [v18 setObject:v52 forKeyedSubscript:@"build"];
        if ([v52 length] >= 4)
        {
          v53 = [v52 substringToIndex:3];
          [v18 setObject:v53 forKeyedSubscript:@"buildPrefix"];
        }

        caseStorage10 = [v109 caseStorage];
        buildVariant = [caseStorage10 buildVariant];
        v108 = v18;
        v101 = v52;
        if (buildVariant)
        {
          [v18 setObject:buildVariant forKeyedSubscript:@"buildVariant"];
        }

        else
        {
          buildVariant2 = [v105 buildVariant];
          [v108 setObject:buildVariant2 forKeyedSubscript:@"buildVariant"];

          v18 = v108;
        }

        buildPlatform = [v105 buildPlatform];
        [v18 setObject:buildPlatform forKeyedSubscript:@"buildPlatform"];

        productType = [v105 productType];
        [v18 setObject:productType forKeyedSubscript:@"deviceModel"];

        deviceClassString = [v105 deviceClassString];
        [v18 setObject:deviceClassString forKeyedSubscript:@"deviceCategory"];

        v61 = uploadLogHandle(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v94 = [v108 objectForKeyedSubscript:@"caseID"];
          v100 = [v108 objectForKeyedSubscript:@"caseDomain"];
          v62 = [v108 objectForKeyedSubscript:@"caseType"];
          v63 = [v108 objectForKeyedSubscript:@"caseSubtype"];
          v64 = [v108 objectForKeyedSubscript:@"caseSubtypeContext"];
          v65 = [v108 objectForKeyedSubscript:@"caseProcess"];
          v93 = [v108 objectForKeyedSubscript:@"build"];
          v66 = [v108 objectForKeyedSubscript:@"buildVariant"];
          v67 = [v108 objectForKeyedSubscript:@"deviceModel"];
          *buf = 138414338;
          v123 = v94;
          v124 = 2112;
          v125 = v100;
          v126 = 2112;
          v127 = v62;
          v128 = 2112;
          v129 = v63;
          v130 = 2112;
          v131 = v64;
          v132 = 2112;
          v133 = v65;
          v134 = 2112;
          v135 = v93;
          v136 = 2112;
          v137 = v66;
          v138 = 2112;
          v139 = v67;
          _os_log_impl(&dword_241804000, v61, OS_LOG_TYPE_DEBUG, "Creating case record for %@ : [%@/%@/%@/%@/%@] (%@/%@/%@)", buf, 0x5Cu);
        }

        array = [MEMORY[0x277CBEB18] array];
        array2 = [MEMORY[0x277CBEB18] array];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        fileURLs = [v109 fileURLs];
        v71 = [fileURLs countByEnumeratingWithState:&v113 objects:v121 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v114;
          do
          {
            v74 = 0;
            do
            {
              if (*v114 != v73)
              {
                objc_enumerationMutation(fileURLs);
              }

              v75 = *(*(&v113 + 1) + 8 * v74);
              v76 = uploadLogHandle(v71);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v123 = v75;
                _os_log_impl(&dword_241804000, v76, OS_LOG_TYPE_INFO, "Creating asset for attachment %@", buf, 0xCu);
              }

              v77 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v75];
              [array addObject:v77];
              lastPathComponent = [v75 lastPathComponent];
              [array2 addObject:lastPathComponent];

              ++v74;
            }

            while (v72 != v74);
            v71 = [fileURLs countByEnumeratingWithState:&v113 objects:v121 count:16];
            v72 = v71;
          }

          while (v71);
        }

        v80 = uploadLogHandle(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = [array count];
          *buf = v91;
          v123 = v81;
          _os_log_impl(&dword_241804000, v80, OS_LOG_TYPE_DEBUG, "Adding %ld assets to case record", buf, 0xCu);
        }

        [v108 setObject:array forKeyedSubscript:@"attachments"];
        [v108 setObject:array2 forKeyedSubscript:@"attachmentFilenames"];
        [v106 addObject:v108];
        v82 = [(CloudKitUploadController *)self uploadOperationWithRecordsToSave:v106 recordIDsToDelete:0 allowCellular:npiDevice activity:v95];
        operationID = [v82 operationID];
        [v109 setOperationID:operationID];

        [v109 setAllowsCellular:npiDevice];
        operationID2 = [v82 operationID];
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __75__CloudKitUploadController_uploadToCloudKitContainer_withRecords_activity___block_invoke;
        v110[3] = &unk_278CF2350;
        v110[4] = self;
        v111 = operationID2;
        v112 = v95;
        v103 = operationID2;
        [v82 setModifyRecordsCompletionBlock:v110];
        date = [MEMORY[0x277CBEAA8] date];
        [v109 setStartTime:date];

        [v109 setUploadState:2];
        v86 = +[ABCAdministrator sharedInstance];
        configurationManager = [v86 configurationManager];
        if ([configurationManager cloudKitSandboxEnvironment])
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        activityCopy = v95;
        [v109 setEnvironment:v88];

        ++self->_outstandingOperationCount;
        publicCloudDatabase = [containerCopy publicCloudDatabase];
        [publicCloudDatabase addOperation:v82];

        v15 = v104 + 1;
        v14 = 0x277CBE000;
      }

      while (v104 + 1 != v97);
      v97 = [obj countByEnumeratingWithState:&v117 objects:v140 count:16];
      if (v97)
      {
        continue;
      }

      break;
    }
  }

LABEL_57:

  [(CloudKitUploadController *)self save];
}

void __75__CloudKitUploadController_uploadToCloudKitContainer_withRecords_activity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = uploadLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Completion callback for CloudKit upload operations", v11, 2u);
  }

  [*(a1 + 32) operationCompletedWithID:*(a1 + 40) savedRecords:v9 deletedRecords:v8 error:v7 activity:*(a1 + 48)];
}

- (void)operationCompletedWithID:(id)d savedRecords:(id)records deletedRecords:(id)deletedRecords error:(id)error activity:(id)activity
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  recordsCopy = records;
  errorCopy = error;
  activityCopy = activity;
  date = [MEMORY[0x277CBEAA8] date];
  v16 = uploadLogHandle(date);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v37 = [recordsCopy count];
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Upload operation complete for %ld records", buf, 0xCu);
  }

  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    if (v18)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke;
      v34[3] = &unk_278CF0C68;
      v35 = dCopy;
      [v18 enumerateKeysAndObjectsUsingBlock:v34];
      v20 = v35;
    }

    else
    {
      v20 = uploadLogHandle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = dCopy;
        v38 = 2112;
        v39 = errorCopy;
        _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Failed upload operation %@ with error: %@", buf, 0x16u);
      }
    }

    v21 = [(CloudKitUploadController *)self shouldDeferFromCloudKitError:errorCopy];
  }

  else
  {
    v21 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_181;
  block[3] = &unk_278CF2378;
  block[4] = self;
  v31 = dCopy;
  v32 = date;
  v33 = errorCopy == 0;
  v23 = date;
  v24 = dCopy;
  dispatch_async(queue, block);
  if (activityCopy && v21)
  {
    [(CloudKitUploadController *)self deferXPCActivity:activityCopy];
  }

  v25 = self->_queue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_2;
  v27[3] = &unk_278CF1310;
  v29 = errorCopy == 0;
  v27[4] = self;
  v28 = activityCopy;
  v26 = activityCopy;
  dispatch_async(v25, v27);
}

void __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = uploadLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "%@ Failed to upload record %@ with error %@", &v9, 0x20u);
  }
}

void __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 48);
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 56) = v3 & 1;
  v4 = *(*(a1 + 32) + 48);
  v5 = uploadLogHandle(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
LABEL_8:

      return;
    }

    v7 = *(*(a1 + 32) + 48);
    v19 = 134217984;
    v20 = v7;
    v8 = "Waiting for %ld outstanding operations...";
    v9 = v5;
    v10 = 12;
LABEL_7:
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, v8, &v19, v10);
    goto LABEL_8;
  }

  if (v6)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "No more outstanding CKOperations remaining", &v19, 2u);
  }

  v11 = *(*(a1 + 32) + 56);
  v13 = uploadLogHandle(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    LOWORD(v19) = 0;
    v15 = "All upload operations completed successfully.";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    LOWORD(v19) = 0;
    v15 = "All upload operations completed, but one or more operations failed with an error.";
  }

  _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, v15, &v19, 2u);
LABEL_17:

  v16 = *(a1 + 40);
  v18 = uploadLogHandle(v17);
  v5 = v18;
  if (!v16)
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    LOWORD(v19) = 0;
    v8 = "XPC activity not set for this CKOperation";
    v9 = v5;
    v10 = 2;
    goto LABEL_7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Ready to set activity state to Done", &v19, 2u);
  }

  [*(a1 + 32) finishXPCActivity:*(a1 + 40)];
}

- (BOOL)shouldDeferFromCloudKitError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = *MEMORY[0x277CBBF50];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    code = [errorCopy code];

    if (code == 20)
    {
      userInfo = [errorCopy userInfo];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      domain2 = [v8 domain];
      v10 = [domain2 isEqualToString:v5];

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      code2 = [v8 code];
      LOBYTE(v10) = code2 != 130;
      if (code2 == 130)
      {
        v12 = uploadLogHandle(130);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v17 = 0;
        v13 = "Activity passed to CloudKit is not in the expected Continue state";
        v14 = &v17;
      }

      else
      {
        if ([v8 code] != 131)
        {
          LOBYTE(v10) = 0;
          goto LABEL_13;
        }

        v12 = uploadLogHandle(131);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v16 = 0;
        v13 = "CloudKit informed us to defer the current activity";
        v14 = &v16;
      }

      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
LABEL_9:

      goto LABEL_13;
    }
  }

  else
  {
  }

  LOBYTE(v10) = 0;
LABEL_14:

  return v10;
}

- (void)deferXPCActivity:(id)activity
{
  v14 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = activityCopy;
  if (activityCopy)
  {
    if (xpc_activity_get_state(activityCopy) == 3)
    {
      v5 = uploadLogHandle(3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v4;
        v6 = "Activity state is already set to defer (%p)";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
LABEL_10:
        _os_log_impl(&dword_241804000, v7, v8, v6, &v12, 0xCu);
      }
    }

    else
    {
      v9 = xpc_activity_set_state(v4, 3);
      v10 = v9;
      v11 = uploadLogHandle(v9);
      v5 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134217984;
          v13 = v4;
          v6 = "Set activity state to DEFER (%p)";
          v7 = v5;
          v8 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_10;
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 134217984;
        v13 = v4;
        v6 = "Unable to set activity state to DEFER! (%p)";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }
  }
}

- (void)finishXPCActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = activityCopy;
  if (activityCopy)
  {
    state = xpc_activity_get_state(activityCopy);
    if (state == 4)
    {
      v6 = xpc_activity_set_state(v4, 5);
      v7 = v6;
      v8 = uploadLogHandle(v6);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134217984;
          v15 = v4;
          v10 = "Set activity state to DONE (%p)";
          v11 = v9;
          v12 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
          v13 = 12;
          goto LABEL_11;
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = v4;
        v10 = "Unable to set activity state to DONE! (%p)";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = uploadLogHandle(state);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v10 = "XPC activity is not in Continue state. Will not change the state to DONE";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 2;
LABEL_11:
        _os_log_impl(&dword_241804000, v11, v12, v10, &v14, v13);
      }
    }
  }
}

- (void)uploadDiagnosticCases:(id)cases activity:(id)activity
{
  v21 = *MEMORY[0x277D85DE8];
  casesCopy = cases;
  activityCopy = activity;
  should_defer = [casesCopy count];
  if (should_defer)
  {
    if (activityCopy && (should_defer = xpc_activity_should_defer(activityCopy), should_defer))
    {
      v9 = uploadLogHandle(should_defer);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Will not start log uploads due to activity defer", buf, 2u);
      }

      [(CloudKitUploadController *)self deferXPCActivity:activityCopy];
    }

    else
    {
      v10 = uploadLogHandle(should_defer);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        *&buf[4] = [casesCopy count];
        *&buf[12] = 2112;
        *&buf[14] = casesCopy;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Will attempt to upload %ld cases: %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v18 = __Block_byref_object_copy__6;
      v19 = __Block_byref_object_dispose__6;
      array = [MEMORY[0x277CBEB18] array];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__CloudKitUploadController_uploadDiagnosticCases_activity___block_invoke;
      v16[3] = &unk_278CF0F08;
      v16[4] = self;
      v16[5] = buf;
      [casesCopy enumerateObjectsUsingBlock:v16];
      v11 = +[ABCAdministrator sharedInstance];
      configurationManager = [v11 configurationManager];
      if ([configurationManager cloudKitSandboxEnvironment])
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v14 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v13];

      [(CloudKitUploadController *)self uploadToCloudKitContainer:v14 withRecords:*(*&buf[8] + 40) activity:activityCopy];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v15 = uploadLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "No cases were requested to be uploaded (empty list)", buf, 2u);
    }

    if (activityCopy)
    {
      [(CloudKitUploadController *)self finishXPCActivity:activityCopy];
    }
  }
}

void __59__CloudKitUploadController_uploadDiagnosticCases_activity___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uploadRecord];
  if (!v3)
  {
    v3 = [*(*(a1 + 32) + 40) createEntity];
    [v3 setCaseStorage:v6];
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v6 uploadRecord];
  [v4 addObject:v5];
}

- (void)performUploadForCaseIdentifiers:(id)identifiers
{
  v4 = [(CloudKitUploadController *)self fetchCasesWithIdentifiers:identifiers limit:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CloudKitUploadController_performUploadForCaseIdentifiers___block_invoke;
  v5[3] = &unk_278CF1768;
  v5[4] = self;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v4 activity:0 reply:v5];
}

- (void)performUploadForRecentCases:(unint64_t)cases
{
  v4 = [(CloudKitUploadController *)self fetchRecentCasesPendingUpload:cases];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CloudKitUploadController_performUploadForRecentCases___block_invoke;
  v5[3] = &unk_278CF1768;
  v5[4] = self;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v4 activity:0 reply:v5];
}

- (void)performUploadDecisionForCaseIdentifiers:(id)identifiers reply:(id)reply
{
  replyCopy = reply;
  v7 = [(CloudKitUploadController *)self fetchCasesWithIdentifiers:identifiers limit:0];
  [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v7 activity:0 response:replyCopy];
}

- (void)performSubmissionOfRecentCaseSummaries:(unint64_t)summaries reply:(id)reply
{
  replyCopy = reply;
  v6 = [(CloudKitUploadController *)self fetchRecentPendingCaseSummaries:summaries];
  [(CloudKitUploadController *)self submitCaseSummaries:v6 activity:0];
  if (replyCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent submit request for %ld case summaries", objc_msgSend(v6, "count")];
    replyCopy[2](replyCopy, v7);
  }
}

- (void)performSubmissionOfCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  replyCopy = reply;
  v6 = [(CloudKitUploadController *)self fetchCaseSummariesWithIdentifiers:identifiers];
  [(CloudKitUploadController *)self submitCaseSummaries:v6 activity:0];
  if (replyCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent submit request for %ld case summaries", objc_msgSend(v6, "count")];
    replyCopy[2](replyCopy, v7);
  }
}

- (void)startPeriodicUploadTask:(id)task
{
  taskCopy = task;
  v5 = [(CloudKitUploadController *)self fetchRecentCasesPendingUpload:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CloudKitUploadController_startPeriodicUploadTask___block_invoke;
  v7[3] = &unk_278CF16F0;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v5 activity:v6 reply:v7];
}

- (void)startPeriodicSummaryTask:(id)task
{
  taskCopy = task;
  v5 = +[ABCAdministrator sharedInstance];
  configurationManager = [v5 configurationManager];
  v7 = -[CloudKitUploadController fetchRecentPendingCaseSummaries:](self, "fetchRecentPendingCaseSummaries:", [configurationManager maxCaseSummaryPerSubmission]);

  [(CloudKitUploadController *)self submitCaseSummaries:v7 activity:taskCopy];
}

- (void)ckcodeDecisionService:(id)service response:(id)response
{
  v13[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  createTemporaryEntity = [(ObjectAnalytics *)self->_caseStorageAnalytics createTemporaryEntity];
  [createTemporaryEntity setCaseDomain:@"TestDomain"];
  [createTemporaryEntity setCaseType:@"TestType"];
  [createTemporaryEntity setCaseSubtypeContext:@"TestSubType"];
  [createTemporaryEntity setCaseSubtypeContext:@"TestSubtypeContext"];
  [createTemporaryEntity setCaseDetectedProcess:@"symptomsd"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [createTemporaryEntity setCaseID:uUIDString];

  v13[0] = createTemporaryEntity;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CloudKitUploadController_ckcodeDecisionService_response___block_invoke;
  v11[3] = &unk_278CF2288;
  v12 = responseCopy;
  v10 = responseCopy;
  [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v9 activity:0 response:v11];
}

uint64_t __59__CloudKitUploadController_ckcodeDecisionService_response___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)filterCasesViaCloudkitDecisionService:(id)service activity:(id)activity response:(id)response
{
  v96 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  activityCopy = activity;
  responseCopy = response;
  v10 = uploadLogHandle(responseCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v82 = [serviceCopy count];
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "CloudkitDecisionService request for %ld cases", buf, 0xCu);
  }

  v12 = uploadLogHandle(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v82 = serviceCopy;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "  Cases: %{private}@", buf, 0xCu);
  }

  if ([serviceCopy count])
  {
    v64 = responseCopy;
    v65 = activityCopy;
    v13 = +[SystemProperties sharedInstance];
    v14 = objc_alloc_init(ABCPbSigGrantRequest);
    [(ABCPbSigGrantRequest *)v14 setVer:1];
    productType = [v13 productType];
    [(ABCPbSigGrantRequest *)v14 setDeviceModel:productType];

    buildPlatform = [v13 buildPlatform];
    v73 = v14;
    [(ABCPbSigGrantRequest *)v14 setBuildPlatform:buildPlatform];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = serviceCopy;
    obj = serviceCopy;
    v17 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v78;
      v20 = &OBJC_METACLASS___DiagCollectionServiceImpl;
      v68 = *v78;
      v69 = v13;
      do
      {
        v21 = 0;
        v70 = v18;
        do
        {
          if (*v78 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v77 + 1) + 8 * v21);
          v23 = objc_alloc_init(&v20[21]);
          caseDomain = [v22 caseDomain];
          [v23 setDomain:caseDomain];

          caseType = [v22 caseType];
          [v23 setType:caseType];

          caseSubtype = [v22 caseSubtype];
          [v23 setSubtype:caseSubtype];

          caseSubtypeContext = [v22 caseSubtypeContext];
          [v23 setSubtypeContext:caseSubtypeContext];

          caseDetectedProcess = [v22 caseDetectedProcess];
          [v23 setProcess:caseDetectedProcess];

          caseID = [v22 caseID];
          [v23 setCaseIdentifier:caseID];

          buildVariant = [v13 buildVariant];
          [v23 setBuildVariant:buildVariant];

          buildVersion = [v13 buildVersion];
          [v23 setBuild:buildVersion];

          caseGroupID = [v22 caseGroupID];
          v33 = [caseGroupID length];

          if (v33)
          {
            caseGroupID2 = [v22 caseGroupID];
            [v23 setCaseGroupIdentifier:caseGroupID2];
          }

          uploadRecord = [v22 uploadRecord];
          totalBytes = [uploadRecord totalBytes];

          if (totalBytes >= 1)
          {
            uploadRecord2 = [v22 uploadRecord];
            [v23 setLogSizeTotal:{objc_msgSend(uploadRecord2, "totalBytes") >> 10}];
          }

          v38 = uploadLogHandle([(ABCPbSigGrantRequest *)v73 addSigRequest:v23]);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            caseID2 = [v22 caseID];
            caseGroupID3 = [v22 caseGroupID];
            v41 = caseGroupID3;
            v42 = @"(no grpID)";
            if (caseGroupID3)
            {
              v42 = caseGroupID3;
            }

            v72 = v42;
            caseDomain2 = [v22 caseDomain];
            caseType2 = [v22 caseType];
            caseSubtype2 = [v22 caseSubtype];
            caseSubtypeContext2 = [v22 caseSubtypeContext];
            caseDetectedProcess2 = [v22 caseDetectedProcess];
            *buf = 138479363;
            v82 = caseID2;
            v83 = 2113;
            v84 = v72;
            v85 = 2113;
            v86 = caseDomain2;
            v87 = 2113;
            v88 = caseType2;
            v89 = 2113;
            v90 = caseSubtype2;
            v91 = 2113;
            v92 = caseSubtypeContext2;
            v93 = 2113;
            v94 = caseDetectedProcess2;
            _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_DEBUG, "Processed case: %{private}@/%{private}@ {%{private}@/%{private}@/%{private}@/%{private}@/%{private}@}", buf, 0x48u);

            v19 = v68;
            v20 = &OBJC_METACLASS___DiagCollectionServiceImpl;

            v18 = v70;
            v13 = v69;
          }

          ++v21;
        }

        while (v18 != v21);
        v18 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v18);
    }

    v48 = +[ABCAdministrator sharedInstance];
    configurationManager = [v48 configurationManager];
    if ([configurationManager cloudKitSandboxEnvironment])
    {
      v50 = 2;
    }

    else
    {
      v50 = 1;
    }

    v51 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v50];
    v52 = objc_autoreleasePoolPush();
    v53 = +[ABCAdministrator sharedInstance];
    configurationManager2 = [v53 configurationManager];
    cloudKitInvernessService = [configurationManager2 cloudKitInvernessService];

    v56 = [objc_alloc(MEMORY[0x277CBC1F8]) initWithServiceName:cloudKitInvernessService functionName:@"grantRequest" responseClass:objc_opt_class()];
    [v56 setRequest:v73];
    [v56 setDestinationServer:0];
    v57 = +[ABCAdministrator sharedInstance];
    configurationManager3 = [v57 configurationManager];
    cloudKitPrefersAnonymous = [configurationManager3 cloudKitPrefersAnonymous];
    configuration = [v56 configuration];
    [configuration setPreferAnonymousRequests:cloudKitPrefersAnonymous];

    configuration2 = [v56 configuration];
    [configuration2 setAllowsCellularAccess:1];

    activityCopy = v65;
    if (v65)
    {
      configuration3 = [v56 configuration];
      [configuration3 setXpcActivity:v65];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __84__CloudKitUploadController_filterCasesViaCloudkitDecisionService_activity_response___block_invoke;
    v74[3] = &unk_278CF23A0;
    v74[4] = self;
    v75 = v65;
    responseCopy = v64;
    v76 = v64;
    [v56 setCodeOperationCompletionBlock:v74];
    publicCloudDatabase = [v51 publicCloudDatabase];
    [publicCloudDatabase addOperation:v56];

    objc_autoreleasePoolPop(v52);
    serviceCopy = v66;
    goto LABEL_29;
  }

  if (responseCopy)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(responseCopy + 2))(responseCopy, MEMORY[0x277CBEC10], v13);
LABEL_29:
  }
}

void __84__CloudKitUploadController_filterCasesViaCloudkitDecisionService_activity_response___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = uploadLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "CKCode Error: %@", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldDeferFromCloudKitError:v7] && *(a1 + 40))
    {
      [*(a1 + 32) deferXPCActivity:?];
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA5B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"CloudKit cancelled the operation";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v9 errorWithDomain:v10 code:89 userInfo:v11];
    }

    else
    {
      v12 = v7;
    }

    v13 = 0;
  }

  else
  {
    v14 = uploadLogHandle(0);
    v15 = v14;
    if (v5)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Received response from Decision Server", buf, 2u);
      }

      v13 = [*(a1 + 32) processCloudkitDecisionServiceResponse:v5];
      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Received a nil response from CKCode", buf, 2u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA5B8];
      v20 = *MEMORY[0x277CCA450];
      v21 = @"CKCode responded with a nil payload";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [v16 errorWithDomain:v17 code:91 userInfo:v18];

      v13 = &unk_285379FE0;
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, v13, v12);
  }
}

- (id)processCloudkitDecisionServiceResponse:(id)response
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = uploadLogHandle(responseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v34 = responseCopy;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "grantResponse: %{private}@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  globalDecision = [responseCopy globalDecision];
  if (!globalDecision)
  {
    v7 = MEMORY[0x277CBEC28];
    goto LABEL_7;
  }

  if (globalDecision == 1)
  {
    v7 = MEMORY[0x277CBEC38];
LABEL_7:
    [dictionary setObject:v7 forKeyedSubscript:@"summary"];
    goto LABEL_25;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = responseCopy;
  sigResponses = [responseCopy sigResponses];
  v9 = [sigResponses countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(sigResponses);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = uploadLogHandle(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v34 = v13;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "  sigResponse: %{private}@", buf, 0xCu);
        }

        caseIdentifier = [v13 caseIdentifier];
        if (caseIdentifier && (v16 = caseIdentifier, v17 = [v13 hasDecision], v16, v17))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "decision")}];
          caseIdentifier2 = [v13 caseIdentifier];
          [dictionary setObject:v18 forKeyedSubscript:caseIdentifier2];
        }

        else
        {
          v18 = uploadLogHandle(caseIdentifier);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            caseIdentifier3 = [v13 caseIdentifier];
            hasDecision = [v13 hasDecision];
            *buf = 138478083;
            v22 = "missing";
            if (hasDecision)
            {
              v22 = "present";
            }

            v34 = caseIdentifier3;
            v35 = 2080;
            v36 = v22;
            _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, " sigResponse is missing an identifier (%{private}@) and/or decision (%s)", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v9 = [sigResponses countByEnumeratingWithState:&v29 objects:v37 count:16];
      v10 = v9;
    }

    while (v9);
  }

  responseCopy = v28;
LABEL_25:
  status = [responseCopy status];
  v24 = [status length];

  if (v24)
  {
    status2 = [responseCopy status];
    v26 = [status2 copy];
    [dictionary setObject:v26 forKeyedSubscript:@"status"];
  }

  return dictionary;
}

- (id)fetchCaseSummariesWithIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5];
    v14 = [(CloudKitUploadController *)self _fetchRecentPendingCaseSummariesInternal:v13 limit:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_fetchRecentPendingCaseSummariesInternal:(id)internal limit:(unint64_t)limit
{
  v16[2] = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSummaryState == %d", 0];
  v8 = v7;
  if (internalCopy)
  {
    v9 = MEMORY[0x277CCA920];
    v16[0] = internalCopy;
    v16[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  caseSummaryAnalytics = self->_caseSummaryAnalytics;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"caseCreatedTime" ascending:0];
  v14 = [(ObjectAnalytics *)caseSummaryAnalytics fetchEntitiesFreeForm:v11 sortDesc:v13 limit:limit];

  return v14;
}

- (void)submitCaseSummaries:(id)summaries activity:(id)activity
{
  v43 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  activityCopy = activity;
  v8 = summaryLogHandle(activityCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [summariesCopy count];
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Submission request for %ld cases", buf, 0xCu);
  }

  v10 = summaryLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v42 = summariesCopy;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Cases: %{private}@", buf, 0xCu);
  }

  if ([summariesCopy count])
  {
    if (activityCopy && (v11 = xpc_activity_should_defer(activityCopy)))
    {
      v12 = summaryLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: xpc deferral, cannot prepare request", buf, 2u);
      }

      [(CloudKitUploadController *)self deferXPCActivity:activityCopy];
    }

    else
    {
      v13 = [DiagnosticCaseSummaryAnalytics pbRequestForCases:summariesCopy];
      v14 = +[ABCAdministrator sharedInstance];
      configurationManager = [v14 configurationManager];
      if ([configurationManager cloudKitSandboxEnvironment])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v37 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v16];
      context = objc_autoreleasePoolPush();
      v17 = +[ABCAdministrator sharedInstance];
      configurationManager2 = [v17 configurationManager];
      cloudKitInvernessService = [configurationManager2 cloudKitInvernessService];

      v21 = summaryLogHandle(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = cloudKitInvernessService;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Inverness Service: %@", buf, 0xCu);
      }

      v22 = [objc_alloc(MEMORY[0x277CBC1F8]) initWithServiceName:cloudKitInvernessService functionName:@"submitCaseSummary" responseClass:objc_opt_class()];
      v23 = v13;
      [v22 setRequest:v13];
      [v22 setDestinationServer:0];
      v24 = +[ABCAdministrator sharedInstance];
      configurationManager3 = [v24 configurationManager];
      cloudKitPrefersAnonymous = [configurationManager3 cloudKitPrefersAnonymous];
      configuration = [v22 configuration];
      [configuration setPreferAnonymousRequests:cloudKitPrefersAnonymous];

      configuration2 = [v22 configuration];
      [configuration2 setAllowsCellularAccess:1];

      if (activityCopy)
      {
        configuration3 = [v22 configuration];
        [configuration3 setXpcActivity:activityCopy];
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke;
      v38[3] = &unk_278CF23C8;
      v38[4] = self;
      v30 = activityCopy;
      v39 = v30;
      v40 = summariesCopy;
      [v22 setCodeOperationCompletionBlock:v38];
      v31 = v23;
      if (activityCopy && (should_defer = xpc_activity_should_defer(v30)))
      {
        v33 = summaryLogHandle(should_defer);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: xpc deferral, cannot schedule CK operation", buf, 2u);
        }

        [(CloudKitUploadController *)self deferXPCActivity:v30];
        v31 = v23;
        v34 = v37;
      }

      else
      {
        v34 = v37;
        publicCloudDatabase = [v37 publicCloudDatabase];
        [publicCloudDatabase addOperation:v22];
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else if (activityCopy)
  {
    [(CloudKitUploadController *)self finishXPCActivity:activityCopy];
  }
}

void __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = summaryLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: CKCode Error: %@", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldDeferFromCloudKitError:v7] && *(a1 + 40))
    {
      v9 = summaryLogHandle([*(a1 + 32) deferXPCActivity:?]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "DiagnosticCaseSummaryLog: CloudKit cancelled the operation";
LABEL_15:
        v17 = v9;
        v18 = 2;
LABEL_18:
        _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, v10, buf, v18);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!v5)
    {
      v9 = summaryLogHandle(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "DiagnosticCaseSummaryLog: Received a nil response from CKCode";
        goto LABEL_15;
      }

LABEL_19:

      goto LABEL_20;
    }

    v11 = [v5 status];
    v12 = [v11 isEqualToString:@"SUCCESS"];

    v14 = summaryLogHandle(v13);
    v9 = v14;
    if (!v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v22 = v5;
        v10 = "DiagnosticCaseSummaryLog: Unsuccessful response: %{private}@";
        v17 = v9;
        v18 = 12;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v22 = v5;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Successful response: %{private}@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke_245;
    v19[3] = &unk_278CF04F8;
    v19[4] = v15;
    v20 = *(a1 + 48);
    dispatch_async(v16, v19);
  }

LABEL_20:
  if (*(a1 + 40))
  {
    [*(a1 + 32) finishXPCActivity:?];
  }
}

uint64_t __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke_245(uint64_t a1)
{
  v2 = summaryLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Ready to update submitted case summary records", v4, 2u);
  }

  [*(*(a1 + 32) + 32) updateSubmittedCases:*(a1 + 40)];
  return [*(a1 + 32) save];
}

- (void)configureLogUploadDiscretionaryActivityCriteria:(id)criteria
{
  criteriaCopy = criteria;
  xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86250], 300);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  v4 = +[SystemProperties sharedInstance];
  npiDevice = [v4 npiDevice];

  if (npiDevice)
  {
    v7 = uploadLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Applying NPI scheduling criteria for log upload activity", v12, 2u);
    }

    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86288], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86270], *MEMORY[0x277D862B0]);
    v8 = *MEMORY[0x277D86230];
    v9 = criteriaCopy;
    v10 = 1;
  }

  else
  {
    v11 = *MEMORY[0x277D86298];
    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86270], v11);
    v8 = *MEMORY[0x277D86230];
    v9 = criteriaCopy;
    v10 = 0;
  }

  xpc_dictionary_set_BOOL(v9, v8, v10);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86318], 20971520);
}

- (void)configureCaseSummaryDiscretionaryActivityCriteria:(id)criteria
{
  criteriaCopy = criteria;
  xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86250], 90);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86390], 0);
  xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86318], 10240);
  xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  v4 = +[SystemProperties sharedInstance];
  npiDevice = [v4 npiDevice];

  if (npiDevice)
  {
    v7 = uploadLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Applying NPI scheduling criteria for case summary activity", v10, 2u);
    }

    v8 = *MEMORY[0x277D86288];
    v9 = *MEMORY[0x277D862A0];
  }

  else
  {
    v8 = *MEMORY[0x277D86288];
    v9 = 6 * *MEMORY[0x277D862A0];
  }

  xpc_dictionary_set_int64(criteriaCopy, v8, v9);
}

- (void)registerCloudKitUploadActivities
{
  [(CloudKitUploadController *)self registerLogUploadActivities];
  v3 = +[ABCAdministrator sharedInstance];
  configurationManager = [v3 configurationManager];
  caseSummaryEnabled = [configurationManager caseSummaryEnabled];

  if (caseSummaryEnabled)
  {

    [(CloudKitUploadController *)self registerCaseSummaryActivities];
  }
}

- (void)registerLogUploadActivities
{
  v3 = uploadLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Registering periodic CloudKit upload activity", buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__CloudKitUploadController_registerLogUploadActivities__block_invoke;
  handler[3] = &unk_278CF14B0;
  handler[4] = self;
  xpc_activity_register("com.apple.autobugcapture.logupload.discretionary", v4, handler);
}

void __55__CloudKitUploadController_registerLogUploadActivities__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (!state)
  {
    v9 = uploadLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Checking in to discretionary CloudKit upload activity", buf, 2u);
    }

    v10 = xpc_activity_copy_criteria(v3);
    v11 = uploadLogHandle(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Activty already has criteria set %@", buf, 0xCu);
      }

      v13 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureLogUploadDiscretionaryActivityCriteria:v13];
      v14 = xpc_equal(v10, v13);
      if (v14)
      {
        goto LABEL_23;
      }

      v15 = uploadLogHandle(v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        xpc_activity_set_criteria(v3, v13);
LABEL_23:

        goto LABEL_24;
      }

      *buf = 0;
      v16 = "Existing activity criteria was different from the default criteria. Replacing with defaults";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 2;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Setting activity criteria to defaults", buf, 2u);
      }

      v13 = xpc_dictionary_create(0, 0, 0);
      v15 = uploadLogHandle([*(a1 + 32) configureLogUploadDiscretionaryActivityCriteria:v13]);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v23 = v13;
      v16 = "Activity criteria set to %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 12;
    }

    _os_log_impl(&dword_241804000, v17, v18, v16, buf, v19);
    goto LABEL_22;
  }

  if (state == 2)
  {
    v5 = uploadLogHandle(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Ready to run discretionary CloudKit upload activity (%p)", buf, 0xCu);
    }

    v6 = xpc_activity_set_state(v3, 4);
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__CloudKitUploadController_registerLogUploadActivities__block_invoke_248;
      v20[3] = &unk_278CF04F8;
      v20[4] = v7;
      v21 = v3;
      dispatch_async(v8, v20);

      goto LABEL_25;
    }

    v10 = uploadLogHandle(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Unable to set activity state to CONTINUE!", buf, 2u);
    }

LABEL_24:
  }

LABEL_25:
}

- (void)registerCaseSummaryActivities
{
  v3 = summaryLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Registering periodic submission activity", buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke;
  handler[3] = &unk_278CF14B0;
  handler[4] = self;
  xpc_activity_register("com.apple.autobugcapture.caseSummary.discretionary", v4, handler);
}

void __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (!state)
  {
    v9 = summaryLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Checking in to discretionary submission activity", buf, 2u);
    }

    v10 = xpc_activity_copy_criteria(v3);
    v11 = summaryLogHandle(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: submission activity already has criteria set %@", buf, 0xCu);
      }

      v13 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureCaseSummaryDiscretionaryActivityCriteria:v13];
      v14 = xpc_equal(v10, v13);
      if (v14)
      {
        goto LABEL_23;
      }

      v15 = summaryLogHandle(v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        xpc_activity_set_criteria(v3, v13);
LABEL_23:

        goto LABEL_24;
      }

      *buf = 0;
      v16 = "DiagnosticCaseSummaryLog: Existing submission activity criteria was different from the default criteria. Replacing with defaults";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 2;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Setting submission activity criteria to defaults", buf, 2u);
      }

      v13 = xpc_dictionary_create(0, 0, 0);
      v15 = summaryLogHandle([*(a1 + 32) configureCaseSummaryDiscretionaryActivityCriteria:v13]);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v23 = v13;
      v16 = "DiagnosticCaseSummaryLog: Submission activity criteria set to %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 12;
    }

    _os_log_impl(&dword_241804000, v17, v18, v16, buf, v19);
    goto LABEL_22;
  }

  if (state == 2)
  {
    v5 = summaryLogHandle(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Ready to run discretionary submission activity (%p)", buf, 0xCu);
    }

    v6 = xpc_activity_set_state(v3, 4);
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke_251;
      v20[3] = &unk_278CF04F8;
      v20[4] = v7;
      v21 = v3;
      dispatch_async(v8, v20);

      goto LABEL_25;
    }

    v10 = summaryLogHandle(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: Unable to set activity state to CONTINUE!", buf, 2u);
    }

LABEL_24:
  }

LABEL_25:
}

+ (void)unregisterCloudKitUploadActivities
{
  v2 = uploadLogHandle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering periodic CloudKit upload activity", buf, 2u);
  }

  xpc_activity_unregister("com.apple.autobugcapture.logupload.discretionary");
  v4 = summaryLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Unregistering CloudKit submission activity", v5, 2u);
  }

  xpc_activity_unregister("com.apple.autobugcapture.caseSummary.discretionary");
}

- (void)uploadMostRecentCases:(unint64_t)cases
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = uploadLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    casesCopy = cases;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "received request to upload recent %ld cases", buf, 0xCu);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CloudKitUploadController_uploadMostRecentCases___block_invoke;
  v7[3] = &unk_278CF0220;
  v7[4] = self;
  v7[5] = cases;
  dispatch_async(queue, v7);
}

- (void)uploadCasesWithIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = uploadLogHandle(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = identifiersCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "received request to upload cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CloudKitUploadController_uploadCasesWithIdentifiers___block_invoke;
  v8[3] = &unk_278CF04F8;
  v8[4] = self;
  v9 = identifiersCopy;
  v7 = identifiersCopy;
  dispatch_async(queue, v8);
}

- (void)uploadDecisionWithIdentifiers:(id)identifiers reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = uploadLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = identifiersCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "received request to request upload decision for cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CloudKitUploadController_uploadDecisionWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v13 = identifiersCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = identifiersCopy;
  dispatch_async(queue, block);
}

- (void)submitCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = uploadLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = identifiersCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: received request to submit cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CloudKitUploadController_submitCaseSummariesWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v13 = identifiersCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = identifiersCopy;
  dispatch_async(queue, block);
}

- (void)submitRecentCaseSummaries:(unint64_t)summaries reply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = uploadLogHandle(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    summariesCopy = summaries;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: received request to submit recent %ld cases", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CloudKitUploadController_submitRecentCaseSummaries_reply___block_invoke;
  block[3] = &unk_278CF23F0;
  v11 = replyCopy;
  summariesCopy2 = summaries;
  block[4] = self;
  v9 = replyCopy;
  dispatch_async(queue, block);
}

@end