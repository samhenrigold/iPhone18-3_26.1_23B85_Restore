@interface DRSRequest
+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e;
+ (BOOL)cleanRequestRecordsFromPersistentContainer:(id)container removeFiles:(BOOL)files removeRecord:(BOOL)record matchingPredicate:(id)predicate errorOut:(id *)out;
+ (BOOL)cullOldRequestRecordsFromPersistentContainer:(id)container currentDate:(id)date errorOut:(id *)out;
+ (BOOL)isExpeditedTeamID:(id)d issueCategory:(id)category;
+ (BOOL)unblockStrandedUploadingRecordsFromPersistentContainer:(id)container errorOut:(id *)out;
+ (id)_requestWithRequestMO_ON_MOC_QUEUE:(id)e;
+ (id)leastRecentDateFirstSortDescriptor;
+ (id)migrateRequestDataStoreAtPath:(id)path errorOut:(id *)out;
+ (id)mostRecentDateFirstSortDescriptor;
+ (id)requestForMessage:(id)message;
+ (id)requestsForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)unreportedTerminalRequestsFromContext:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)uploadedBytesSinceDate:(id)date context:(id)context errorOut:(id *)out;
+ (unint64_t)requestCountForFilterPredicate:(id)predicate context:(id)context fetchLimit:(unint64_t)limit errorOut:(id *)out;
- (BOOL)_addContextMetadataKey:(id)key value:(id)value expectedClass:(Class)class errorOut:(id *)out;
- (BOOL)_deleteLogs;
- (BOOL)_markLogsAsPurgeableWithUrgencyWithDeleteFallback:(unint64_t)fallback;
- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled;
- (BOOL)_populateLogsArray_ON_MOC_QUEUE:(id)e;
- (BOOL)_updateLogFileStateForTransitionFromPreviousState:(unint64_t)state;
- (BOOL)_updateLogStateToExpectedState:(unsigned __int8)state;
- (BOOL)addContextMetadataKey:(id)key numberValue:(id)value errorOut:(id *)out;
- (BOOL)addContextMetadataKey:(id)key stringValue:(id)value errorOut:(id *)out;
- (BOOL)hasUploadableContent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (BOOL)isNonPurgeableInFlightUntilUploadAttempt;
- (BOOL)performOnReceiptWork:(id)work dampeningOutcome:(unint64_t)outcome;
- (BOOL)updateToState:(unint64_t)state errorDescription:(id)description errorOut:(id *)out;
- (BOOL)uploadStarted;
- (DRSDecisionServerBatchRequest)pbBatchInstance;
- (DRSRequest)initWithXPCDict:(id)dict;
- (NSDictionary)metadataDictionary;
- (NSNumber)isLikeCarryDevice;
- (NSString)automatedDeviceGroup;
- (NSString)debugDescription;
- (NSString)decisionServerDecisionString;
- (NSString)hwModel;
- (NSString)requestOutcomeString;
- (NSString)requestStateString;
- (id)_initWithRequestMO_ON_MOC_QUEUE:(id)e;
- (id)_logsDescription;
- (id)_processSubmittedLogInfo:(id)info workingDirectory:(id)directory;
- (id)fileAssets;
- (id)fileNames;
- (id)filePaths;
- (id)fileURLs;
- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose;
- (id)logPath;
- (id)newRequestMOInContext_ON_MOC_QUEUE:(id)e;
- (id)protoFileDescriptions;
- (id)protoRequestDescription;
- (id)recordRepresentation;
- (id)uploadRequest;
- (unint64_t)logSizeLimitBytes;
- (unint64_t)totalLogSizeBytes;
- (unsigned)requestOutcome;
- (void)_addLogMOs:(id)os;
- (void)_configureRequestMO:(id)o;
- (void)addAutomatedDeviceGroupContext;
- (void)addHWModelContextMetadata;
- (void)addIsLikelyCarryContextMetadata;
- (void)makeTerminalDueToMissingLog;
- (void)updateContextWithRequest_ON_MOC_QUEUE:(id)e;
- (void)uploadAbortedDueToLogSize;
- (void)uploadCompleteWithError:(id)error ckOperationID:(id)d ckRecordID:(id)iD;
- (void)uploadDeniedByDecisionServerWithReason:(id)reason;
- (void)uploadFailedDueToReason:(id)reason ckOperationID:(id)d;
@end

@implementation DRSRequest

- (id)logPath
{
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4 == 1)
  {
    logs2 = [(DRSRequest *)self logs];
    firstObject = [logs2 firstObject];
    path = [firstObject path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (unint64_t)totalLogSizeBytes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  logs = [(DRSRequest *)self logs];
  v3 = [logs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(logs);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) size];
      }

      v4 = [logs countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)logSizeLimitBytes
{
  v2 = +[DRSSystemProfile sharedInstance];
  uploadSessionUploadCapBytes = [v2 uploadSessionUploadCapBytes];

  return uploadSessionUploadCapBytes;
}

- (NSString)decisionServerDecisionString
{
  decisionServerDecision = [(DRSRequest *)self decisionServerDecision];
  if (decisionServerDecision > 2)
  {
    return @"Unknown";
  }

  else
  {
    return &off_27899EE50[decisionServerDecision]->isa;
  }
}

- (unsigned)requestOutcome
{
  requestState = [(DRSRequest *)self requestState];

  return DRSRequestOutcomeForState(requestState);
}

- (BOOL)_markLogsAsPurgeableWithUrgencyWithDeleteFallback:(unint64_t)fallback
{
  v58 = *MEMORY[0x277D85DE8];
  hasUploadableContent = [(DRSRequest *)self hasUploadableContent];
  if (!hasUploadableContent)
  {
    return 1;
  }

  v5 = DPLogHandle_LogManagement(hasUploadableContent);
  if (os_signpost_enabled(v5))
  {
    requestID = [(DRSRequest *)self requestID];
    v7 = requestID;
    switch(fallback)
    {
      case 0x200uLL:
        v8 = @"Low";
        break;
      case 0x800uLL:
        v8 = @"High";
        break;
      case 0x400uLL:
        v8 = @"Medium";
        break;
      default:
        v8 = @"Unknown";
        break;
    }

    *buf = 138543618;
    v50 = requestID;
    v51 = 2114;
    v52 = v8;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MarkingCasePurgeability", "Request %{public}@: Marking files as purgeable with urgency %{public}@", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  logs = [(DRSRequest *)self logs];
  v11 = [logs countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v46;
    *&v12 = 138543874;
    v41 = v12;
LABEL_14:
    v15 = 0;
    while (1)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(logs);
      }

      path = [*(*(&v45 + 1) + 8 * v15) path];
      v44 = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [defaultManager fileExistsAtPath:path isDirectory:&v44];

      if (v18)
      {
        if (v44 == 1)
        {
          v20 = DPLogHandle_LogManagementError(v19);
          if (os_signpost_enabled(v20))
          {
            requestID2 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v50 = requestID2;
            v51 = 2114;
            v52 = path;
            _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PurgeabilityFailure", "%{public}@: File %{public}@ is a directory", buf, 0x16u);
          }

          v23 = DPLogHandle_LogManagementError(v22);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_41;
          }

          requestID3 = [(DRSRequest *)self requestID];
          *buf = 138543618;
          v50 = requestID3;
          v51 = 2114;
          v52 = path;
          _os_log_fault_impl(&dword_232906000, v23, OS_LOG_TYPE_FAULT, "ERROR: %{public}@: File %{public}@ is a directory", buf, 0x16u);
          goto LABEL_40;
        }

        v29 = open([(__CFString *)path UTF8String], 0);
        if ((v29 & 0x80000000) == 0)
        {
          v30 = v29;
          v43 = fallback | 0x10005;
          v31 = ffsctl(v29, 0xC0084A44uLL, &v43, 0);
          v32 = close(v30);
          if (v31)
          {
            v35 = DPLogHandle_RequestError(v32);
            if (os_signpost_enabled(v35))
            {
              requestID4 = [(DRSRequest *)self requestID];
              switch(fallback)
              {
                case 0x200uLL:
                  v37 = @"Low";
                  break;
                case 0x800uLL:
                  v37 = @"High";
                  break;
                case 0x400uLL:
                  v37 = @"Medium";
                  break;
                default:
                  v37 = @"Unknown";
                  break;
              }

              v38 = __error();
              v39 = strerror(*v38);
              *buf = 138544130;
              v50 = requestID4;
              v51 = 2114;
              v52 = path;
              v53 = 2114;
              v54 = v37;
              v55 = 2082;
              v56 = v39;
              _os_signpost_emit_with_name_impl(&dword_232906000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MarkingLogFilePurgeabilityFailure", "Request %{public}@: Failed to mark '%{public}@' as purgeable with urgency %{public}@ due to error: %{public}s. Attempting to delete to prevent accumulating files.", buf, 0x2Au);
            }

            [(DRSRequest *)self _deleteLogs];
            v9 = 0;
            goto LABEL_54;
          }

          v23 = DPLogHandle_Request(v32);
          if (!os_signpost_enabled(v23))
          {
            goto LABEL_41;
          }

          requestID5 = [(DRSRequest *)self requestID];
          requestID3 = requestID5;
          switch(fallback)
          {
            case 0x200uLL:
              v34 = @"Low";
              break;
            case 0x800uLL:
              v34 = @"High";
              break;
            case 0x400uLL:
              v34 = @"Medium";
              break;
            default:
              v34 = @"Unknown";
              break;
          }

          *buf = v41;
          v50 = requestID5;
          v51 = 2114;
          v52 = path;
          v53 = 2114;
          v54 = v34;
          v25 = v23;
          v26 = "MarkedLogFilePurgeability";
          v27 = "Request %{public}@: Marked '%{public}@' as purgeable with urgency %{public}@";
          v28 = 32;
          goto LABEL_39;
        }

        v23 = DPLogHandle_RequestError(v29);
        if (os_signpost_enabled(v23))
        {
          requestID3 = [(DRSRequest *)self requestID];
          *buf = 138543618;
          v50 = requestID3;
          v51 = 2114;
          v52 = path;
          v25 = v23;
          v26 = "OpenFileFailure";
          v27 = "Request %{public}@: Failed to open file with path %{public}@ to tag it as purgeable";
LABEL_25:
          v28 = 22;
LABEL_39:
          _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v26, v27, buf, v28);
LABEL_40:
        }
      }

      else
      {
        v23 = DPLogHandle_LogManagementError(v19);
        if (os_signpost_enabled(v23))
        {
          requestID3 = [(DRSRequest *)self requestID];
          *buf = 138543618;
          v50 = requestID3;
          v51 = 2114;
          v52 = path;
          v25 = v23;
          v26 = "PurgeabilityFailure";
          v27 = "%{public}@: File %{public}@ does not exist";
          goto LABEL_25;
        }
      }

LABEL_41:

      if (v13 == ++v15)
      {
        v13 = [logs countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v13)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  v9 = 1;
LABEL_54:

  return v9;
}

- (id)_logsDescription
{
  v20 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    logs2 = [(DRSRequest *)self logs];
    v7 = [logs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(logs2);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) debugDescription];
          v13 = v12;
          if (v10)
          {
            [(__CFString *)v5 appendString:v12];
          }

          else
          {
            [(__CFString *)v5 appendFormat:@", %@", v12];
          }

          v10 = 0;
        }

        v8 = [logs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v10 = 0;
      }

      while (v8);
    }
  }

  else
  {
    v5 = @"No logs";
  }

  return v5;
}

- (NSString)debugDescription
{
  v32 = objc_autoreleasePoolPush();
  totalLogSizeBytes = [(DRSRequest *)self totalLogSizeBytes];
  if (totalLogSizeBytes)
  {
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%zuB", totalLogSizeBytes];
  }

  else
  {
    v36 = @"<No cached log size>";
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  build = [(DRSRequest *)self build];
  requestID = [(DRSRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  ckRecordID = [(DRSRequest *)self ckRecordID];
  if (ckRecordID)
  {
    v4 = MEMORY[0x277CCACA8];
    ckRecordID2 = [(DRSRequest *)self ckRecordID];
    v33 = [v4 stringWithFormat:@"CKRecordID: %@", ckRecordID2];
  }

  else
  {
    v33 = @"-";
  }

  requestStateString = [(DRSRequest *)self requestStateString];
  errorDescription = [(DRSRequest *)self errorDescription];
  v27 = errorDescription;
  v6 = @"<No error>";
  if (errorDescription)
  {
    v6 = errorDescription;
  }

  v25 = v6;
  requestType = [(DRSRequest *)self requestType];
  uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
  hasBeenCountedByTelemetry = [(DRSRequest *)self hasBeenCountedByTelemetry];
  v8 = &stru_2847F1D58;
  if (hasBeenCountedByTelemetry)
  {
    v8 = @"(Reported to telemetry)";
  }

  v22 = v8;
  decisionServerDecisionString = [(DRSRequest *)self decisionServerDecisionString];
  if ([(DRSRequest *)self isExpedited])
  {
    v10 = @"ExpeditedUpload";
  }

  else
  {
    v10 = @"NormalUpload";
  }

  teamID = [(DRSRequest *)self teamID];
  issueCategory = [(DRSRequest *)self issueCategory];
  issueDescription = [(DRSRequest *)self issueDescription];
  _logsDescription = [(DRSRequest *)self _logsDescription];
  logType = [(DRSRequest *)self logType];
  contextDictionary = [(DRSRequest *)self contextDictionary];
  v17 = [contextDictionary debugDescription];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"-";
  }

  v29 = [v28 initWithFormat:@"%@ %@ %@ (%@, %@) %@ %u %@ %@ %@ %@/%@ %@ %@(%@, %@) %@", build, uUIDString, v33, requestStateString, v25, requestType, uploadAttemptCount, v22, decisionServerDecisionString, v10, teamID, issueCategory, issueDescription, _logsDescription, logType, v36, v19];

  if (ckRecordID)
  {
  }

  objc_autoreleasePoolPop(v32);

  return v29;
}

- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v75 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  build = [(DRSRequest *)self build];
  [v7 setObject:build forKeyedSubscript:@"build"];

  requestDate = [(DRSRequest *)self requestDate];
  v10 = [v6 stringFromDate:requestDate];
  [v7 setObject:v10 forKeyedSubscript:@"date"];

  teamID = [(DRSRequest *)self teamID];
  [v7 setObject:teamID forKeyedSubscript:@"teamID"];

  issueCategory = [(DRSRequest *)self issueCategory];
  [v7 setObject:issueCategory forKeyedSubscript:@"issueCategory"];

  issueDescription = [(DRSRequest *)self issueDescription];
  [v7 setObject:issueDescription forKeyedSubscript:@"issueDescription"];

  logType = [(DRSRequest *)self logType];
  [v7 setObject:logType forKeyedSubscript:@"logType"];

  v15 = 0x277CCA000uLL;
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSRequest isExpedited](self, "isExpedited")}];
  [v7 setObject:v16 forKeyedSubscript:@"isExpedited"];

  contextDictionary = [(DRSRequest *)self contextDictionary];

  if (!contextDictionary)
  {
LABEL_4:
    if (!verboseCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v18 = MEMORY[0x277CCAAA0];
  contextDictionary2 = [(DRSRequest *)self contextDictionary];
  LODWORD(v18) = [v18 isValidJSONObject:contextDictionary2];

  if (v18)
  {
    contextDictionary3 = [(DRSRequest *)self contextDictionary];
    [v7 setObject:contextDictionary3 forKeyedSubscript:@"contextDictionary"];

    goto LABEL_4;
  }

  v22 = DPLogHandle_Request(v20);
  if (os_signpost_enabled(v22))
  {
    v23 = [(DRSRequest *)self debugDescription];
    *buf = 138543362;
    v74 = v23;
    _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippedContextDictionaryJSONSerialization", "Context dictionary for %{public}@ cannot be serialized in JSON", buf, 0xCu);
  }

  [v7 setObject:@"<Could not serialize>" forKeyedSubscript:@"contextDictionary"];
  if (verboseCopy)
  {
LABEL_9:
    requestID = [(DRSRequest *)self requestID];
    uUIDString = [requestID UUIDString];
    [v7 setObject:uUIDString forKeyedSubscript:@"requestID"];

    ckRecordID = [(DRSRequest *)self ckRecordID];

    if (ckRecordID)
    {
      ckRecordID2 = [(DRSRequest *)self ckRecordID];
      [v7 setObject:ckRecordID2 forKeyedSubscript:@"ckRecordID"];
    }

    requestStateString = [(DRSRequest *)self requestStateString];
    [v7 setObject:requestStateString forKeyedSubscript:@"requestState"];

    errorDescription = [(DRSRequest *)self errorDescription];

    if (errorDescription)
    {
      errorDescription2 = [(DRSRequest *)self errorDescription];
      [v7 setObject:errorDescription2 forKeyedSubscript:@"errorDescription"];
    }

    requestType = [(DRSRequest *)self requestType];
    [v7 setObject:requestType forKeyedSubscript:@"requestType"];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[DRSRequest uploadAttemptCount](self, "uploadAttemptCount")}];
    [v7 setObject:v32 forKeyedSubscript:@"uploadAttemptCount"];

    decisionServerDecisionString = [(DRSRequest *)self decisionServerDecisionString];
    [v7 setObject:decisionServerDecisionString forKeyedSubscript:@"decisionServerDecision"];

    logs = [(DRSRequest *)self logs];
    v35 = [logs count];

    logs2 = [(DRSRequest *)self logs];
    v37 = logs2;
    if (v35 == 1)
    {
      firstObject = [logs2 firstObject];
      path = [firstObject path];
      [v7 setObject:path forKeyedSubscript:@"logPath"];

      v40 = MEMORY[0x277CCABB0];
      logs3 = [(DRSRequest *)self logs];
      firstObject2 = [logs3 firstObject];
      v43 = [v40 numberWithUnsignedLong:{objc_msgSend(firstObject2, "size")}];
      [v7 setObject:v43 forKeyedSubscript:@"logSizeBytes"];

      v44 = MEMORY[0x277CCABB0];
      logs4 = [(DRSRequest *)self logs];
      firstObject3 = [logs4 firstObject];
      v47 = [v44 numberWithBool:{objc_msgSend(firstObject3, "isAvailableOnDisk")}];
      [v7 setObject:v47 forKeyedSubscript:@"logAvailableOnDiskPath"];
    }

    else
    {
      v48 = [logs2 count];

      if (v48)
      {
        v63 = v6;
        v64 = v7;
        v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        selfCopy = self;
        obj = [(DRSRequest *)self logs];
        v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v67;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v67 != v52)
              {
                objc_enumerationMutation(obj);
              }

              v54 = *(*(&v66 + 1) + 8 * i);
              v70[0] = @"logPath";
              path2 = [v54 path];
              v71[0] = path2;
              v70[1] = @"logAvailableOnDiskPath";
              v56 = [*(v15 + 2992) numberWithBool:{objc_msgSend(v54, "isAvailableOnDisk")}];
              v71[1] = v56;
              v70[2] = @"logSizeBytes";
              v57 = v15;
              v58 = [*(v15 + 2992) numberWithUnsignedLong:{objc_msgSend(v54, "size")}];
              v71[2] = v58;
              v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];

              v15 = v57;
              [v49 addObject:v59];
            }

            v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          }

          while (v51);
        }

        v7 = v64;
        [v64 setObject:v49 forKeyedSubscript:@"logsArray"];

        self = selfCopy;
        v6 = v63;
      }

      else
      {
        [v7 setObject:@"<No path>" forKeyedSubscript:@"logPath"];
        [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"logAvailableOnDiskPath"];
        [v7 setObject:&unk_2847FF750 forKeyedSubscript:@"logSizeBytes"];
      }
    }

    v60 = [*(v15 + 2992) numberWithBool:{-[DRSRequest hasBeenCountedByTelemetry](self, "hasBeenCountedByTelemetry")}];
    [v7 setObject:v60 forKeyedSubscript:@"hasBeenCountedByTelemetry"];
  }

LABEL_26:

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)_addLogMOs:(id)os
{
  v19 = *MEMORY[0x277D85DE8];
  osCopy = os;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  logs = [(DRSRequest *)self logs];
  v6 = [logs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(logs);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [DRSLogMO alloc];
        managedObjectContext = [osCopy managedObjectContext];
        v13 = [(DRSLogMO *)v11 initWithContext:managedObjectContext];

        [v10 _configureLogMO:v13];
        [osCopy addLogsObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [logs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  teamID = [(DRSRequest *)self teamID];
  [oCopy setTeamID:teamID];

  issueCategory = [(DRSRequest *)self issueCategory];
  [oCopy setIssueCategory:issueCategory];

  issueDescription = [(DRSRequest *)self issueDescription];
  [oCopy setIssueDescription:issueDescription];

  contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
  [oCopy setContextDictionaryData:contextDictionaryData];

  requestDate = [(DRSRequest *)self requestDate];
  [oCopy setRequestDate:requestDate];

  requestID = [(DRSRequest *)self requestID];
  [oCopy setRequestID:requestID];

  [oCopy setRequestMCT:{-[DRSRequest requestMCT](self, "requestMCT")}];
  [oCopy setRequestState:{-[DRSRequest requestState](self, "requestState")}];
  errorDescription = [(DRSRequest *)self errorDescription];
  [oCopy setErrorDescription:errorDescription];

  build = [(DRSRequest *)self build];
  [oCopy setBuild:build];

  [oCopy setUploadAttemptCount:{-[DRSRequest uploadAttemptCount](self, "uploadAttemptCount")}];
  [oCopy setDecisionServerDecision:{-[DRSRequest decisionServerDecision](self, "decisionServerDecision")}];
  [oCopy setHasBeenCountedByTelemetry:{-[DRSRequest hasBeenCountedByTelemetry](self, "hasBeenCountedByTelemetry")}];
  [oCopy setIsExpedited:{-[DRSRequest isExpedited](self, "isExpedited")}];
  ckRecordID = [(DRSRequest *)self ckRecordID];
  [oCopy setCkRecordID:ckRecordID];

  logs = [oCopy logs];
  v14 = [logs count];
  logs2 = [(DRSRequest *)self logs];
  v16 = [logs2 count];

  if (v14 != v16)
  {
    logs3 = [oCopy logs];
    [oCopy removeLogs:logs3];

    [(DRSRequest *)self _addLogMOs:oCopy];
  }
}

- (NSString)requestStateString
{
  requestState = [(DRSRequest *)self requestState];

  return DRRequestStateWithOutcomeStringForState(requestState);
}

- (NSString)requestOutcomeString
{
  v2 = [(DRSRequest *)self requestOutcome]- 1;
  if (v2 > 2)
  {
    return @"In-Flight";
  }

  else
  {
    return &off_27899EE68[v2]->isa;
  }
}

- (id)newRequestMOInContext_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_moClass"))];

  [(DRSRequest *)self _configureRequestMO:v5];
  return v5;
}

- (void)updateContextWithRequest_ON_MOC_QUEUE:(id)e
{
  v25 = *MEMORY[0x277D85DE8];
  eCopy = e;
  v5 = MEMORY[0x277CCAC30];
  requestID = [(DRSRequest *)self requestID];
  v7 = [v5 predicateWithFormat:@"requestID == %@", requestID];

  v8 = MEMORY[0x277CBE428];
  entityName = [objc_opt_class() entityName];
  v10 = [v8 fetchRequestWithEntityName:entityName];

  [v10 setFetchLimit:1];
  [v10 setPredicate:v7];
  v20 = 0;
  v11 = [eCopy executeFetchRequest:v10 error:&v20];
  v12 = v20;
  v13 = v12;
  if (!v11 || (v12 = [v11 count]) == 0)
  {
    if (v13)
    {
      v15 = DPLogHandle_CoreDataError(v12);
      if (os_signpost_enabled(v15))
      {
        requestID2 = [(DRSRequest *)self debugDescription];
        localizedDescription = [v13 localizedDescription];
        v18 = localizedDescription;
        v19 = @"Unknown";
        if (localizedDescription)
        {
          v19 = localizedDescription;
        }

        *buf = 138543618;
        v22 = requestID2;
        v23 = 2114;
        v24 = v19;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestMangedObjectFetchFailure", "Failed to fetch a request object for %{public}@ due to error: %{public}@", buf, 0x16u);

        goto LABEL_11;
      }
    }

    else
    {
      v15 = DPLogHandle_Request(v12);
      if (os_signpost_enabled(v15))
      {
        requestID2 = [(DRSRequest *)self requestID];
        *buf = 138543362;
        v22 = requestID2;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestMangedObjectFetchMiss", "No cached request with ID %{public}@", buf, 0xCu);
LABEL_11:
      }
    }

    v13 = [(DRSRequest *)self newRequestMOInContext_ON_MOC_QUEUE:eCopy];
    goto LABEL_13;
  }

  firstObject = [v11 firstObject];
  [(DRSRequest *)self _configureRequestMO:firstObject];

LABEL_13:
}

+ (id)requestForMessage:(id)message
{
  messageCopy = message;
  v4 = xpc_dictionary_get_uint64(messageCopy, "ClientMessageType") - 1;
  if (v4 <= 4 && ((0x1Bu >> v4) & 1) != 0)
  {
    v5 = [objc_alloc(*off_27899EE80[v4]) initWithXPCDict:messageCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addAutomatedDeviceGroupContext
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  automatedDeviceGroup = [v3 automatedDeviceGroup];

  if (automatedDeviceGroup)
  {
    v14 = 0;
    v6 = [(DRSRequest *)self addContextMetadataKey:@"ADG" stringValue:automatedDeviceGroup errorOut:&v14];
    v7 = v14;
    requestID2 = DPLogHandle_Request(v7);
    v9 = os_signpost_enabled(requestID2);
    if (v6)
    {
      if (v9)
      {
        requestID = [(DRSRequest *)self requestID];
        uUIDString = [(__CFString *)requestID UUIDString];
        v15 = 138543618;
        v16 = automatedDeviceGroup;
        v17 = 2114;
        v18 = uUIDString;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, requestID2, 0, 0xEEEEB0B5B2B2EEEELL, "AutomatedDeviceGroupMetadataContextUpdated", "Added ADG %{public}@ to context metadata for request %{public}@", &v15, 22);

LABEL_11:
      }
    }

    else if (v9)
    {
      localizedDescription = [v7 localizedDescription];
      requestID = localizedDescription;
      v13 = @"Unknown error";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      v15 = 138543362;
      v16 = v13;
      _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, requestID2, 0, 0xEEEEB0B5B2B2EEEELL, "ContextMetadataADGFailure", "Failed to add ADG to context metadata due to error: %{public}@", &v15, 12);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = DPLogHandle_Request(v5);
  if (os_signpost_enabled(v7))
  {
    requestID2 = [(DRSRequest *)self requestID];
    requestID = [requestID2 UUIDString];
    v15 = 138543362;
    v16 = requestID;
    _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v7, 0, 0xEEEEB0B5B2B2EEEELL, "AutomatedDeviceGroupContextUpdateSkipped", "ADG is nil, so no context dictionary update required for request %{public}@", &v15, 12);
    goto LABEL_11;
  }

LABEL_13:
}

- (NSDictionary)metadataDictionary
{
  contextDictionary = [(DRSRequest *)self contextDictionary];
  v3 = [contextDictionary objectForKeyedSubscript:@"__DPMD__"];

  return v3;
}

- (NSString)hwModel
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"HWModel"];

  return v3;
}

- (NSNumber)isLikeCarryDevice
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"LikelyCarry"];

  return v3;
}

- (NSString)automatedDeviceGroup
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"ADG"];

  return v3;
}

- (void)addHWModelContextMetadata
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    v6 = +[DRSSystemProfile sharedInstance];
    hwModel = [v6 hwModel];

    if (hwModel)
    {
      v16 = 0;
      v9 = [(DRSRequest *)self addContextMetadataKey:@"HWModel" stringValue:hwModel errorOut:&v16];
      v10 = v16;
      v11 = DPLogHandle_Request(v10);
      v12 = os_signpost_enabled(v11);
      if (v9)
      {
        if (v12)
        {
          v17 = 138543362;
          v18 = hwModel;
          _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v11, 0, 0xEEEEB0B5B2B2EEEELL, "ContextMetadataHWModelAddition", "Added HW model '%{public}@' to context metadata", &v17, 12);
        }
      }

      else if (v12)
      {
        localizedDescription = [v10 localizedDescription];
        v14 = localizedDescription;
        v15 = @"Unknown error";
        if (localizedDescription)
        {
          v15 = localizedDescription;
        }

        v17 = 138543362;
        v18 = v15;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v11, 0, 0xEEEEB0B5B2B2EEEELL, "ContextMetadataHWModelFailure", "Failed to add HW model to context metadata due to error: %{public}@", &v17, 12);
      }
    }

    else
    {
      v10 = DPLogHandle_Request(v8);
      if (os_signpost_enabled(v10))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v10, 0, 0xEEEEB0B5B2B2EEEELL, "NilHWModel", "Could not add HW model string (nil string)", &v17, 2);
      }
    }
  }

  else
  {
    hwModel = DPLogHandle_Request(v5);
    if (os_signpost_enabled(hwModel))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, hwModel, 0, 0xEEEEB0B5B2B2EEEELL, "SkippingHWModel", "Skipping due to non-Internal device", &v17, 2);
    }
  }
}

- (void)addIsLikelyCarryContextMetadata
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    v6 = +[DRSSystemProfile sharedInstance];
    isLikelyCarryGroupNum = [v6 isLikelyCarryGroupNum];

    if (isLikelyCarryGroupNum)
    {
      v16 = 0;
      v9 = [(DRSRequest *)self addContextMetadataKey:@"LikelyCarry" numberValue:isLikelyCarryGroupNum errorOut:&v16];
      v10 = v16;
      v11 = DPLogHandle_Request(v10);
      v12 = os_signpost_enabled(v11);
      if (v9)
      {
        if (v12)
        {
          v17 = 138543362;
          v18 = isLikelyCarryGroupNum;
          _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v11, 0, 0xEEEEB0B5B2B2EEEELL, "ContextMetadataIsLikelyCarryAddition", "Added 'isLikelyCarry': '%{public}@' to context metadata", &v17, 12);
        }
      }

      else if (v12)
      {
        localizedDescription = [v10 localizedDescription];
        v14 = localizedDescription;
        v15 = @"Unknown error";
        if (localizedDescription)
        {
          v15 = localizedDescription;
        }

        v17 = 138543362;
        v18 = v15;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v11, 0, 0xEEEEB0B5B2B2EEEELL, "ContextMetadataIsLikelyCarryNumFailure", "Failed to add 'isLikelyCarry' value to context metadata due to error: %{public}@", &v17, 12);
      }
    }

    else
    {
      v10 = DPLogHandle_Request(v8);
      if (os_signpost_enabled(v10))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v10, 0, 0xEEEEB0B5B2B2EEEELL, "NilLikelyCarry", "Could not add 'IsLikelyCarry' value (nil number)", &v17, 2);
      }
    }
  }

  else
  {
    isLikelyCarryGroupNum = DPLogHandle_Request(v5);
    if (os_signpost_enabled(isLikelyCarryGroupNum))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, isLikelyCarryGroupNum, 0, 0xEEEEB0B5B2B2EEEELL, "SkippingIsLikelyCarry", "Skipping due to non-Internal device", &v17, 2);
    }
  }
}

- (BOOL)_addContextMetadataKey:(id)key value:(id)value expectedClass:(Class)class errorOut:(id *)out
{
  v52 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (objc_opt_isKindOfClass())
  {
    contextDictionary = [(DRSRequest *)self contextDictionary];

    if (contextDictionary)
    {
      contextDictionary2 = [(DRSRequest *)self contextDictionary];
      v13 = [contextDictionary2 mutableCopy];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v19 = [v13 objectForKeyedSubscript:@"__DPMD__"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 mutableCopy];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v22 = v21;

    v23 = [v22 objectForKeyedSubscript:keyCopy];

    if (v23)
    {
      v25 = DPLogHandle_Request(v24);
      if (os_signpost_enabled(v25))
      {
        v50 = 138543362;
        v51 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v25, 0, 0xEEEEB0B5B2B2EEEELL, "OverwritingContextMetadataKey", "Collided on context metadata key '%{public}@'. Overwriting...", &v50, 12);
      }
    }

    [v22 setObject:valueCopy forKeyedSubscript:keyCopy];
    [v13 setObject:v22 forKeyedSubscript:@"__DPMD__"];
    v16 = v13;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v45 = 0;
      v27 = [MEMORY[0x277CCAC58] dataWithPropertyList:v16 format:200 options:0 error:&v45];
      v28 = v45;
      v29 = v28;
      if (v28)
      {
        v30 = DPLogHandle_RequestError(v28);
        if (os_signpost_enabled(v30))
        {
          [v29 localizedDescription];
          v31 = v44 = out;
          v50 = 138543362;
          v51 = v31;
          _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v30, 0, 0xEEEEB0B5B2B2EEEELL, "PlistSerializationFailure", "Could not serialize to plist due to error: %{public}@", &v50, 12);

          out = v44;
        }

        v32 = 0;
      }

      else
      {
        v32 = v27;
      }
    }

    else
    {
      v29 = DPLogHandle_RequestError(isKindOfClass);
      if (os_signpost_enabled(v29))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v50 = 138543362;
        v51 = v34;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v29, 0, 0xEEEEB0B5B2B2EEEELL, "PlistDataCreationFailure", "Object is not a dictionary. Class is: %{public}@", &v50, 12);
      }

      v32 = 0;
    }

    v18 = v32 != 0;
    if (v32)
    {
      objc_storeStrong(&self->_contextDictionary, v13);
      objc_storeStrong(&self->_contextDictionaryData, v32);
      v37 = DPLogHandle_RequestError(v36);
      if (os_signpost_enabled(v37))
      {
        v50 = 138543362;
        v51 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v37, 0, 0xEEEEB0B5B2B2EEEELL, "ContextDictionaryUpdateSuccess", "Updated context metadata with new key: '%{public}@'", &v50, 12);
      }
    }

    else
    {
      v38 = DPLogHandle_RequestError(v35);
      if (os_signpost_enabled(v38))
      {
        v50 = 138543362;
        v51 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl(&dword_232906000, v38, 0, 0xEEEEB0B5B2B2EEEELL, "ContextDictionaryUpdateFailure", "Failed to serialize to plist when adding context metadata key '%{public}@'", &v50, 12);
      }

      if (!out)
      {
        goto LABEL_33;
      }

      outCopy = out;
      v40 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47 = @"Could not serialized updated context as plist";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v37 = [v40 errorWithDomain:@"DRSRequestContextMetadataError" code:0 userInfo:v41];

      v42 = v37;
      *outCopy = v37;
    }

LABEL_33:
    goto LABEL_34;
  }

  if (out)
  {
    v14 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = @"'recordDictionary' is nil or empty";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v16 = [v14 errorWithDomain:@"DRSRequestContextMetadataError" code:0 userInfo:v15];

    v17 = v16;
    v18 = 0;
    *out = v16;
LABEL_34:

    goto LABEL_35;
  }

  v18 = 0;
LABEL_35:

  return v18;
}

- (BOOL)addContextMetadataKey:(id)key numberValue:(id)value errorOut:(id *)out
{
  valueCopy = value;
  keyCopy = key;
  LOBYTE(out) = [(DRSRequest *)self _addContextMetadataKey:keyCopy value:valueCopy expectedClass:objc_opt_class() errorOut:out];

  return out;
}

- (BOOL)addContextMetadataKey:(id)key stringValue:(id)value errorOut:(id *)out
{
  valueCopy = value;
  keyCopy = key;
  LOBYTE(out) = [(DRSRequest *)self _addContextMetadataKey:keyCopy value:valueCopy expectedClass:objc_opt_class() errorOut:out];

  return out;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSRequest *)self isEqualToRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  if (self == requestCopy)
  {
    goto LABEL_40;
  }

  requestMCT = [(DRSRequest *)self requestMCT];
  if (requestMCT == [(DRSRequest *)requestCopy requestMCT])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      teamID = [(DRSRequest *)self teamID];
      teamID2 = [(DRSRequest *)requestCopy teamID];
      v8 = [teamID isEqualToString:teamID2];

      if (v8)
      {
        build = [(DRSRequest *)self build];
        build2 = [(DRSRequest *)requestCopy build];
        v11 = [build isEqualToString:build2];

        if (v11)
        {
          issueCategory = [(DRSRequest *)self issueCategory];
          issueCategory2 = [(DRSRequest *)requestCopy issueCategory];
          v14 = [issueCategory isEqualToString:issueCategory2];

          if (v14)
          {
            issueDescription = [(DRSRequest *)self issueDescription];
            issueDescription2 = [(DRSRequest *)requestCopy issueDescription];
            v17 = [issueDescription isEqualToString:issueDescription2];

            if (v17)
            {
              teamID3 = [(DRSRequest *)self teamID];
              teamID4 = [(DRSRequest *)requestCopy teamID];
              v20 = [teamID3 isEqualToString:teamID4];

              if (v20)
              {
                logType = [(DRSRequest *)self logType];
                logType2 = [(DRSRequest *)requestCopy logType];
                v23 = [logType isEqualToString:logType2];

                if (v23)
                {
                  logPath = [(DRSRequest *)self logPath];
                  logPath2 = [(DRSRequest *)requestCopy logPath];
                  IsNil = _oneIsNil(logPath, logPath2);

                  if ((IsNil & 1) == 0)
                  {
                    logPath3 = [(DRSRequest *)self logPath];
                    if (!logPath3 || (v28 = logPath3, -[DRSRequest logPath](self, "logPath"), v29 = objc_claimAutoreleasedReturnValue(), -[DRSRequest logPath](requestCopy, "logPath"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v29 isEqualToString:v30], v30, v29, v28, v31))
                    {
                      contextDictionary = [(DRSRequest *)self contextDictionary];
                      contextDictionary2 = [(DRSRequest *)requestCopy contextDictionary];
                      v34 = _oneIsNil(contextDictionary, contextDictionary2);

                      if ((v34 & 1) == 0)
                      {
                        contextDictionary3 = [(DRSRequest *)self contextDictionary];
                        if (!contextDictionary3 || (v36 = contextDictionary3, -[DRSRequest contextDictionary](self, "contextDictionary"), v37 = objc_claimAutoreleasedReturnValue(), -[DRSRequest contextDictionary](requestCopy, "contextDictionary"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v37 isEqualToDictionary:v38], v38, v37, v36, v39))
                        {
                          contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
                          contextDictionaryData2 = [(DRSRequest *)requestCopy contextDictionaryData];
                          v42 = _oneIsNil(contextDictionaryData, contextDictionaryData2);

                          if ((v42 & 1) == 0)
                          {
                            contextDictionaryData3 = [(DRSRequest *)self contextDictionaryData];
                            if (!contextDictionaryData3 || (v44 = contextDictionaryData3, -[DRSRequest contextDictionaryData](self, "contextDictionaryData"), v45 = objc_claimAutoreleasedReturnValue(), -[DRSRequest contextDictionaryData](requestCopy, "contextDictionaryData"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v45 isEqualToData:v46], v46, v45, v44, v47))
                            {
                              requestDate = [(DRSRequest *)self requestDate];
                              requestDate2 = [(DRSRequest *)requestCopy requestDate];
                              v50 = _oneIsNil(requestDate, requestDate2);

                              if ((v50 & 1) == 0)
                              {
                                requestDate3 = [(DRSRequest *)self requestDate];
                                if (!requestDate3 || (v52 = requestDate3, -[DRSRequest requestDate](self, "requestDate"), v53 = objc_claimAutoreleasedReturnValue(), -[DRSRequest requestDate](requestCopy, "requestDate"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v53 isEqualToDate:v54], v54, v53, v52, v55))
                                {
                                  requestID = [(DRSRequest *)self requestID];
                                  requestID2 = [(DRSRequest *)requestCopy requestID];
                                  v58 = _oneIsNil(requestID, requestID2);

                                  if ((v58 & 1) == 0)
                                  {
                                    requestID3 = [(DRSRequest *)self requestID];
                                    if (!requestID3 || (v60 = requestID3, -[DRSRequest requestID](self, "requestID"), v61 = objc_claimAutoreleasedReturnValue(), -[DRSRequest requestID](requestCopy, "requestID"), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v61 isEqual:v62], v62, v61, v60, v63))
                                    {
                                      ckRecordID = [(DRSRequest *)self ckRecordID];
                                      ckRecordID2 = [(DRSRequest *)requestCopy ckRecordID];
                                      v66 = _oneIsNil(ckRecordID, ckRecordID2);

                                      if ((v66 & 1) == 0)
                                      {
                                        ckRecordID3 = [(DRSRequest *)self ckRecordID];
                                        if (!ckRecordID3 || (v68 = ckRecordID3, -[DRSRequest ckRecordID](self, "ckRecordID"), v69 = objc_claimAutoreleasedReturnValue(), -[DRSRequest ckRecordID](requestCopy, "ckRecordID"), v70 = objc_claimAutoreleasedReturnValue(), v71 = [v69 isEqualToString:v70], v70, v69, v68, v71))
                                        {
                                          requestState = [(DRSRequest *)self requestState];
                                          if (requestState == [(DRSRequest *)requestCopy requestState])
                                          {
                                            uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
                                            if (uploadAttemptCount == [(DRSRequest *)requestCopy uploadAttemptCount])
                                            {
                                              decisionServerDecision = [(DRSRequest *)self decisionServerDecision];
                                              if (decisionServerDecision == [(DRSRequest *)requestCopy decisionServerDecision])
                                              {
                                                hasBeenCountedByTelemetry = [(DRSRequest *)self hasBeenCountedByTelemetry];
                                                if (hasBeenCountedByTelemetry == [(DRSRequest *)requestCopy hasBeenCountedByTelemetry])
                                                {
                                                  isExpedited = [(DRSRequest *)self isExpedited];
                                                  if (isExpedited == [(DRSRequest *)requestCopy isExpedited])
                                                  {
                                                    errorDescription = [(DRSRequest *)self errorDescription];
                                                    errorDescription2 = [(DRSRequest *)requestCopy errorDescription];
                                                    v79 = _oneIsNil(errorDescription, errorDescription2);

                                                    if ((v79 & 1) == 0)
                                                    {
                                                      errorDescription3 = [(DRSRequest *)self errorDescription];
                                                      if (!errorDescription3 || (v81 = errorDescription3, -[DRSRequest errorDescription](self, "errorDescription"), v82 = objc_claimAutoreleasedReturnValue(), -[DRSRequest errorDescription](requestCopy, "errorDescription"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v82 isEqualToString:v83], v83, v82, v81, v84))
                                                      {
                                                        logs = [(DRSRequest *)self logs];
                                                        logs2 = [(DRSRequest *)requestCopy logs];
                                                        v87 = _oneIsNil(logs, logs2);

                                                        if ((v87 & 1) == 0)
                                                        {
                                                          logs3 = [(DRSRequest *)self logs];
                                                          if (logs3)
                                                          {
                                                            v90 = logs3;
                                                            logs4 = [(DRSRequest *)self logs];
                                                            logs5 = [(DRSRequest *)requestCopy logs];
                                                            v88 = [logs4 isEqualToArray:logs5];

                                                            goto LABEL_41;
                                                          }

LABEL_40:
                                                          v88 = 1;
                                                          goto LABEL_41;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v88 = 0;
LABEL_41:

  return v88 & 1;
}

+ (BOOL)isExpeditedTeamID:(id)d issueCategory:(id)category
{
  dCopy = d;
  categoryCopy = category;
  if ([dCopy isEqualToString:kDRSDMRapidTeamID[0]] && (objc_msgSend(categoryCopy, "isEqualToString:", kDRSDMRapidMicroDiagnosticIssueCategory[0]) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [dCopy isEqualToString:kDRSDMPPSTeamID[0]];
  }

  return v7;
}

- (BOOL)isNonPurgeableInFlightUntilUploadAttempt
{
  teamID = [(DRSRequest *)self teamID];
  v3 = [teamID isEqualToString:kDRSDMNandTeamID[0]];

  return v3;
}

- (DRSRequest)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = xpc_dictionary_get_value(dictCopy, "ClientMessageType");

  if (!v5)
  {
    goto LABEL_19;
  }

  uint64 = xpc_dictionary_get_uint64(dictCopy, "ClientMessageType");
  if (uint64 != [(DRSRequest *)self expectedType])
  {
    goto LABEL_19;
  }

  v46.receiver = self;
  v46.super_class = DRSRequest;
  self = [(DRSRequest *)&v46 init];
  if (self)
  {
    string = xpc_dictionary_get_string(dictCopy, "TeamID");
    if (!string)
    {
      goto LABEL_19;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    teamID = self->_teamID;
    self->_teamID = v8;

    v10 = xpc_dictionary_get_string(dictCopy, "Category");
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    issueCategory = self->_issueCategory;
    self->_issueCategory = v11;

    v13 = xpc_dictionary_get_string(dictCopy, "Description");
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    issueDescription = self->_issueDescription;
    self->_issueDescription = v14;

    v16 = xpc_dictionary_get_string(dictCopy, "LogType");
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
    logType = self->_logType;
    self->_logType = v17;

    v45 = 0;
    v19 = xpc_dictionary_get_array(dictCopy, "LogArray");
    v20 = xpc_dictionary_get_array(dictCopy, "SandboxExtensions");
    v21 = xpc_dictionary_get_array(dictCopy, "TransferOwnership");
    v22 = [DRSSubmittedLogInfo submittedLogInfosFromPaths:v19 sandboxExtensions:v20 transferOwnerships:v21 successOut:&v45];
    submittedLogInfos = self->_submittedLogInfos;
    self->_submittedLogInfos = v22;

    if (v45)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      requestID = self->_requestID;
      self->_requestID = uUID;

      date = [MEMORY[0x277CBEAA8] date];
      requestDate = self->_requestDate;
      self->_requestDate = date;

      self->_requestState = 0;
      v29 = +[DRSSystemProfile sharedInstance];
      build = [v29 build];
      build = self->_build;
      self->_build = build;

      self->_uploadAttemptCount = 0;
      self->_decisionServerDecision = 0;
      v44 = 0;
      data = xpc_dictionary_get_data(dictCopy, "ContextDict", &v44);
      if (!data || !v44)
      {
LABEL_13:
        v39 = xpc_dictionary_get_value(dictCopy, "RequestMCT");

        if (v39)
        {
          self->_requestMCT = xpc_dictionary_get_uint64(dictCopy, "RequestMCT");
          teamID = [(DRSRequest *)self teamID];
          issueCategory = [(DRSRequest *)self issueCategory];
          self->_isExpedited = [DRSRequest isExpeditedTeamID:teamID issueCategory:issueCategory];

          goto LABEL_15;
        }

LABEL_19:
        selfCopy = 0;
        goto LABEL_20;
      }

      v33 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      v34 = DRSDictionaryForData(v33);
      if (v34)
      {
        v35 = v34;
        contextDictionaryData = self->_contextDictionaryData;
        self->_contextDictionaryData = v33;
        v37 = v33;

        contextDictionary = self->_contextDictionary;
        self->_contextDictionary = v35;

        goto LABEL_13;
      }
    }

    else
    {
      v33 = DPLogHandle_ServiceXPCError(v24);
      if (os_signpost_enabled(&v33->super))
      {
        LOWORD(v44) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, &v33->super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedDictionary", "Failed to extract log infos from XPC dictionary", &v44, 2u);
      }
    }

    goto LABEL_19;
  }

LABEL_15:
  self = self;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (id)_processSubmittedLogInfo:(id)info workingDirectory:(id)directory
{
  v135 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  directoryCopy = directory;
  path = [infoCopy path];
  sandboxExtension = [infoCopy sandboxExtension];
  v118 = 0;
  v10 = [[DRSSandboxExtensionHelper alloc] initWithSandboxExtensionToken:sandboxExtension logPath:path errorOut:&v118];
  v11 = v118;
  if (!v10)
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription = [v11 localizedDescription];
    defaultManager = localizedDescription;
    v26 = @"Unknown";
    if (localizedDescription)
    {
      v26 = localizedDescription;
    }

    v23 = [v24 initWithFormat:@"Failed to consume sandbox extension for file at '%@' due to error: %@", path, v26];
    goto LABEL_13;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v117 = 0;
  v13 = [defaultManager fileExistsAtPath:path isDirectory:&v117];
  if ((v13 & 1) == 0)
  {
    v27 = DPLogHandle_SubmitLogError(v13);
    if (os_signpost_enabled(v27))
    {
      [(DRSRequest *)self requestID];
      v28 = v112 = defaultManager;
      teamID = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v109 = infoCopy;
      v30 = v11;
      v31 = v10;
      v32 = sandboxExtension;
      v34 = v33 = directoryCopy;
      issueDescription = [(DRSRequest *)self issueDescription];
      *buf = 138544386;
      v122 = v28;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID;
      v127 = 2114;
      v128 = v34;
      v129 = 2114;
      v130 = issueDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogMissing", "%{public, name=requestID}@: Log with path %{public}@ submitted by %{public}@/%{public}@/%{public}@ missing", buf, 0x34u);

      directoryCopy = v33;
      sandboxExtension = v32;
      v10 = v31;
      v11 = v30;
      infoCopy = v109;

      defaultManager = v112;
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Specified file path '%@' missing", path, v94];
    goto LABEL_13;
  }

  if (v117 == 1)
  {
    v14 = DPLogHandle_SubmitLogError(v13);
    if (os_signpost_enabled(v14))
    {
      [(DRSRequest *)self requestID];
      v15 = v111 = defaultManager;
      teamID2 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v108 = infoCopy;
      v17 = v11;
      v18 = v10;
      v19 = sandboxExtension;
      v21 = v20 = directoryCopy;
      issueDescription2 = [(DRSRequest *)self issueDescription];
      *buf = 138544386;
      v122 = v15;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID2;
      v127 = 2114;
      v128 = v21;
      v129 = 2114;
      v130 = issueDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogIsDirectory", "%{public, name=requestID}@: Log with path %{public}@ submitted by %{public}@/%{public}@/%{public}@ is a directory rather than a file", buf, 0x34u);

      directoryCopy = v20;
      sandboxExtension = v19;
      v10 = v18;
      v11 = v17;
      infoCopy = v108;

      defaultManager = v111;
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Specified file path '%@' is a directory not a file", path, v94];
LABEL_13:
    v36 = v23;
    goto LABEL_14;
  }

  v113 = defaultManager;
  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  [(DRSRequest *)self requestID];
  v39 = v110 = directoryCopy;
  uUIDString = [v39 UUIDString];
  lastPathComponent = [path lastPathComponent];
  v42 = [v38 initWithFormat:@"submitLog%@_%@", uUIDString, lastPathComponent];

  directoryCopy = v110;
  v106 = v42;
  v43 = [v110 stringByAppendingPathComponent:v42];
  v107 = v43;
  if ([infoCopy transferOwnership])
  {
    v116 = 0;
    v44 = [v113 moveItemAtPath:path toPath:v43 error:&v116];
    v45 = v116;
    v46 = v45;
    if (v44)
    {
      v103 = v45;
      v47 = DPLogHandle_SubmitLog(v45);
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_25;
      }

      requestID = [(DRSRequest *)self requestID];
      teamID3 = [(DRSRequest *)self teamID];
      issueCategory = [(DRSRequest *)self issueCategory];
      issueDescription3 = [(DRSRequest *)self issueDescription];
      *buf = 138544642;
      v122 = requestID;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID3;
      v127 = 2114;
      v128 = issueCategory;
      v51 = issueCategory;
      v129 = 2114;
      v130 = issueDescription3;
      v52 = issueDescription3;
      v131 = 2114;
      v132 = v107;
      v53 = "LogMove";
      v54 = "%{public, name=requestID}@: Moved %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@";
      goto LABEL_24;
    }

    v67 = DPLogHandle_SubmitLogError(v45);
    if (os_signpost_enabled(v67))
    {
      requestID2 = [(DRSRequest *)self requestID];
      teamID4 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v68 = v104 = v46;
      issueDescription4 = [(DRSRequest *)self issueDescription];
      localizedDescription2 = [v104 localizedDescription];
      *buf = 138544898;
      v122 = requestID2;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID4;
      v127 = 2114;
      v128 = v68;
      v129 = 2114;
      v130 = issueDescription4;
      v131 = 2114;
      v132 = v107;
      v133 = 2114;
      v134 = localizedDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v67, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogMoveFailed", "%{public, name=requestID}@: Attempt to move %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %{public}@", buf, 0x48u);

      directoryCopy = v110;
      v46 = v104;
    }

    v71 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription3 = [v46 localizedDescription];
    v73 = v46;
    v63 = localizedDescription3;
    v74 = @"Unknown";
    if (localizedDescription3)
    {
      v74 = localizedDescription3;
    }

    v43 = v107;
    v75 = [v71 initWithFormat:@"Moving '%@' to '%@' failed due to error: %@", path, v107, v74];
  }

  else
  {
    v115 = 0;
    v55 = [v113 copyItemAtPath:path toPath:v43 error:&v115];
    v56 = v115;
    v57 = v56;
    if (v55)
    {
      v103 = v56;
      v47 = DPLogHandle_SubmitLog(v56);
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_25;
      }

      requestID = [(DRSRequest *)self requestID];
      teamID3 = [(DRSRequest *)self teamID];
      issueCategory2 = [(DRSRequest *)self issueCategory];
      issueDescription5 = [(DRSRequest *)self issueDescription];
      *buf = 138544642;
      v122 = requestID;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID3;
      v127 = 2114;
      v128 = issueCategory2;
      v51 = issueCategory2;
      v129 = 2114;
      v130 = issueDescription5;
      v52 = issueDescription5;
      v131 = 2114;
      v132 = v107;
      v53 = "LogCopy";
      v54 = "%{public, name=requestID}@: Copied %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@";
LABEL_24:
      _os_signpost_emit_with_name_impl(&dword_232906000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v53, v54, buf, 0x3Eu);

      directoryCopy = v110;
      v43 = v107;

LABEL_25:
      v119 = *MEMORY[0x277CCA180];
      v120 = &unk_2847FF768;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v114 = 0;
      v61 = [v113 setAttributes:v60 ofItemAtPath:v43 error:&v114];
      v62 = v114;
      if (v61)
      {

        v63 = -[DRSLog _initWithLogPath:transferOwnership:]([DRSLog alloc], "_initWithLogPath:transferOwnership:", v43, [infoCopy transferOwnership]);
        if (v63)
        {
          logs = [(DRSRequest *)self logs];

          if (!logs)
          {
            v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(DRSRequest *)self setLogs:v65];
          }

          logs2 = [(DRSRequest *)self logs];
          [logs2 addObject:v63];

          v36 = 0;
        }

        else
        {
          v92 = DPLogHandle_SubmitLogError(0);
          if (os_signpost_enabled(v92))
          {
            requestID3 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v122 = requestID3;
            v123 = 2114;
            v124 = v43;
            _os_signpost_emit_with_name_impl(&dword_232906000, v92, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogSizeLookupFailed", "%{public, name=requestID}@: Attempt to lookup log size for %{public}@ failed", buf, 0x16u);

            directoryCopy = v110;
          }

          v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Size lookup on '%@' failed", v43];
        }

        v73 = v103;
      }

      else
      {
        v98 = v60;
        v102 = v62;
        v83 = DPLogHandle_SubmitLogError(v62);
        if (os_signpost_enabled(v83))
        {
          requestID4 = [(DRSRequest *)self requestID];
          teamID5 = [(DRSRequest *)self teamID];
          issueCategory3 = [(DRSRequest *)self issueCategory];
          issueDescription6 = [(DRSRequest *)self issueDescription];
          localizedDescription4 = [v102 localizedDescription];
          *buf = 138544898;
          v122 = requestID4;
          v123 = 2114;
          v124 = path;
          v125 = 2114;
          v126 = teamID5;
          v127 = 2114;
          v128 = issueCategory3;
          v129 = 2114;
          v130 = issueDescription6;
          v131 = 2114;
          v132 = v107;
          v133 = 2112;
          v134 = localizedDescription4;
          _os_signpost_emit_with_name_impl(&dword_232906000, v83, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogPermissionsUpdateFailed", "%{public, name=requestID}@: Attempt to set permissions to '600' on %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %@{public}", buf, 0x48u);
        }

        v88 = objc_alloc(MEMORY[0x277CCACA8]);
        v73 = v103;
        localizedDescription5 = [v103 localizedDescription];
        v90 = localizedDescription5;
        v91 = @"Unknown";
        if (localizedDescription5)
        {
          v91 = localizedDescription5;
        }

        v43 = v107;
        v36 = [v88 initWithFormat:@"Updating permissions on '%@' failed due to error: %@", v107, v91];

        directoryCopy = v110;
        v63 = v98;
      }

      goto LABEL_50;
    }

    v76 = DPLogHandle_SubmitLogError(v56);
    if (os_signpost_enabled(v76))
    {
      requestID5 = [(DRSRequest *)self requestID];
      teamID6 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v77 = v105 = v57;
      issueDescription7 = [(DRSRequest *)self issueDescription];
      localizedDescription6 = [v105 localizedDescription];
      *buf = 138544898;
      v122 = requestID5;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID6;
      v127 = 2114;
      v128 = v77;
      v129 = 2114;
      v130 = issueDescription7;
      v131 = 2114;
      v132 = v107;
      v133 = 2112;
      v134 = localizedDescription6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogCopyFailed", "%{public, name=requestID}@: Attempt to copy %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %@{public}", buf, 0x48u);

      directoryCopy = v110;
      v57 = v105;
    }

    v80 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription7 = [v57 localizedDescription];
    v73 = v57;
    v63 = localizedDescription7;
    v82 = @"Unknown";
    if (localizedDescription7)
    {
      v82 = localizedDescription7;
    }

    v43 = v107;
    v75 = [v80 initWithFormat:@"Copying '%@' to '%@' failed due to error: %@", path, v107, v82];
  }

  v36 = v75;
LABEL_50:

  defaultManager = v113;
LABEL_14:

  return v36;
}

- (BOOL)performOnReceiptWork:(id)work dampeningOutcome:(unint64_t)outcome
{
  v53 = *MEMORY[0x277D85DE8];
  workCopy = work;
  v7 = +[DRSSystemProfile sharedInstance];
  isLogUploadEnabled = [v7 isLogUploadEnabled];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  submittedLogInfos = [(DRSRequest *)self submittedLogInfos];
  v10 = [submittedLogInfos countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(submittedLogInfos);
        }

        if ([*(*(&v46 + 1) + 8 * i) transferOwnership])
        {

          goto LABEL_13;
        }
      }

      v11 = [submittedLogInfos countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (((outcome == 0) & isLogUploadEnabled) != 0)
  {
LABEL_13:
    submittedLogInfos2 = [(DRSRequest *)self submittedLogInfos];
    submittedLogInfos = self->_submittedLogInfos;
    self->_submittedLogInfos = 0;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = submittedLogInfos2;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(DRSRequest *)self _processSubmittedLogInfo:*(*(&v42 + 1) + 8 * j) workingDirectory:workCopy];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v20);
    }

    if ([v17 count])
    {
      v37 = v18;
      v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        v29 = 1;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v38 + 1) + 8 * k);
            if ((v29 & 1) == 0)
            {
              [v24 appendString:{@", "}];
            }

            [v24 appendString:v31];
            v29 = 0;
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
          v29 = 0;
        }

        while (v27);
      }

      [(DRSRequest *)self updateToState:4352 errorDescription:v24 errorOut:0];
      v32 = 0;
      v18 = v37;
    }

    else
    {
      totalLogSizeBytes = [(DRSRequest *)self totalLogSizeBytes];
      totalLogSizeBytes2 = [(DRSRequest *)self totalLogSizeBytes];
      if (totalLogSizeBytes2 <= [(DRSRequest *)self logSizeLimitBytes])
      {
        v32 = [(DRSRequest *)self _performPostClientLogWork:workCopy dampeningOutcome:outcome isLogUploadEnabled:isLogUploadEnabled];
      }

      else
      {
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Log(s) exceed size cap. Submitted size %zuB vs. cap %lluB", totalLogSizeBytes, -[DRSRequest logSizeLimitBytes](self, "logSizeLimitBytes")];
        [(DRSRequest *)self updateToState:4357 errorDescription:v35 errorOut:0];

        v32 = 0;
      }
    }
  }

  else
  {
    if (outcome)
    {
      v14 = DRSRequestStateForDampeningOutcome(outcome);
    }

    else
    {
      v14 = 4103;
    }

    v32 = [(DRSRequest *)self updateToState:v14 errorDescription:0 errorOut:0];
  }

  return v32;
}

- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  workCopy = work;
  if (outcome)
  {
    v9 = DRSRequestStateForDampeningOutcome(outcome);
    v10 = @"Request denied due to dampening";
    selfCopy3 = self;
  }

  else if (enabledCopy)
  {
    selfCopy3 = self;
    v9 = 1;
    v10 = 0;
  }

  else
  {
    v10 = @"Log upload is disabled";
    selfCopy3 = self;
    v9 = 4103;
  }

  v12 = [(DRSRequest *)selfCopy3 updateToState:v9 errorDescription:v10 errorOut:0];

  return v12;
}

- (BOOL)hasUploadableContent
{
  v17 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (!v4)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  logs2 = [(DRSRequest *)self logs];
  v6 = [logs2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(logs2);
        }

        if (![*(*(&v12 + 1) + 8 * i) isAvailableOnDisk])
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      v7 = [logs2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)_updateLogStateToExpectedState:(unsigned __int8)state
{
  v10 = *MEMORY[0x277D85DE8];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        v4 = 1024;
LABEL_15:

        return [(DRSRequest *)self _markLogsAsPurgeableWithUrgencyWithDeleteFallback:v4];
      }
    }

    else
    {
      v6 = DPLogHandle_RequestError(self);
      if (os_signpost_enabled(v6))
      {
        v7 = [(DRSRequest *)self debugDescription];
        v8 = 138543362;
        v9 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidLogStateUpdate", "Tried to update to non-purgeable state: %{public}@", &v8, 0xCu);
      }
    }

    return 0;
  }

  if (state == 2)
  {
    v4 = 512;
    goto LABEL_15;
  }

  if (state != 3)
  {
    return 0;
  }

  return [(DRSRequest *)self _deleteLogs];
}

- (BOOL)_deleteLogs
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_LogManagement(self);
  if (os_signpost_enabled(v3))
  {
    requestID = [(DRSRequest *)self requestID];
    logs = [(DRSRequest *)self logs];
    *buf = 138543618;
    v20 = requestID;
    v21 = 2048;
    v22 = [logs count];
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogDelete", "Request ID %{public}@: Deleting %lu logs", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  logs2 = [(DRSRequest *)self logs];
  v7 = [logs2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(logs2);
        }

        v9 |= [*(*(&v14 + 1) + 8 * v11++) _deleteOnDiskLog] ^ 1;
      }

      while (v8 != v11);
      v8 = [logs2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
    v12 = v9 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (BOOL)_updateLogFileStateForTransitionFromPreviousState:(unint64_t)state
{
  v4 = DRSRequestExpectedLogStateForState(state, [(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt], [(DRSRequest *)self uploadAttemptCount]);
  v5 = DRSRequestExpectedLogStateForState([(DRSRequest *)self requestState], [(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt], [(DRSRequest *)self uploadAttemptCount]);
  isNonPurgeableInFlightUntilUploadAttempt = [(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt];
  if (isNonPurgeableInFlightUntilUploadAttempt && v4 == 1 && !v5)
  {
    v7 = DPLogHandle_Request(isNonPurgeableInFlightUntilUploadAttempt);
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogStateTransitionEdgeCase", "Avoiding purgeable to non-purgeable transition", buf, 2u);
    }

    return 1;
  }

  if (v4 == v5 || [(DRSRequest *)self _updateLogStateToExpectedState:v5])
  {
    return 1;
  }

  self->_requestState = 4359;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  logPath = [(DRSRequest *)self logPath];
  v11 = logPath;
  v12 = @"<Missing path>";
  if (logPath)
  {
    v12 = logPath;
  }

  v13 = [v9 initWithFormat:@"Failed to update log purgeability state or failed to delete file: %@", v12];
  errorDescription = self->_errorDescription;
  self->_errorDescription = v13;

  return 0;
}

- (BOOL)updateToState:(unint64_t)state errorDescription:(id)description errorOut:(id *)out
{
  v46 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  requestState = [(DRSRequest *)self requestState];
  v11 = DPLogHandle_Request(requestState);
  if (os_signpost_enabled(v11))
  {
    v12 = DRRequestStateWithoutOutcomeStringForState(requestState);
    v13 = DRRequestStateWithoutOutcomeStringForState(state);
    v14 = [(DRSRequest *)self debugDescription];
    *buf = 138543874;
    v41 = v12;
    v42 = 2114;
    v43 = v13;
    v44 = 2114;
    v45 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransition", "Transitioning from %{public}@ to %{public}@\n%{public}@", buf, 0x20u);
  }

  v15 = DRSRequestOutcomeForState([(DRSRequest *)self requestState]);
  if (!v15)
  {
    if (state != 2 || requestState == 1)
    {
      self->_requestState = state;
      objc_storeStrong(&self->_errorDescription, description);
      if ([(DRSRequest *)self requestState]!= 4352)
      {
LABEL_20:
        v24 = [(DRSRequest *)self _updateLogFileStateForTransitionFromPreviousState:requestState];
        goto LABEL_21;
      }

      requestStateString = DPLogHandle_RequestError(4352);
      if (os_log_type_enabled(requestStateString, OS_LOG_TYPE_FAULT))
      {
        [DRSRequest updateToState:descriptionCopy errorDescription:requestStateString errorOut:?];
      }
    }

    else
    {
      if (out)
      {
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Cannot start upload if not awaiting upload"];
        v26 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = v25;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *out = [v26 errorWithDomain:@"DRSRequestStateTransitionError" code:0 userInfo:v27];
      }

      v28 = DPLogHandle_RequestError(v15);
      if (os_signpost_enabled(v28))
      {
        v29 = [(DRSRequest *)self debugDescription];
        *buf = 138543362;
        v41 = v29;
        _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransitionError", "Cannot start upload if not awaiting upload for request:%{public}@", buf, 0xCu);
      }

      self->_requestState = 4358;
      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      requestStateString = [(DRSRequest *)self requestStateString];
      v32 = DRRequestStateWithOutcomeStringForState(2);
      v33 = [v30 initWithFormat:@"Invalid state transition: %@ (%#llx) -> %@ (%#llx)", requestStateString, requestState, v32, 2];
      errorDescription = self->_errorDescription;
      self->_errorDescription = v33;
    }

    goto LABEL_20;
  }

  if (out)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    requestStateString2 = [(DRSRequest *)self requestStateString];
    v18 = [v16 initWithFormat:@"Cannot transition out of terminal state %@ (%#llx)", requestStateString2, -[DRSRequest requestState](self, "requestState")];

    v19 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39 = v18;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *out = [v19 errorWithDomain:@"DRSRequestStateTransitionError" code:0 userInfo:v20];
  }

  v21 = DPLogHandle_RequestError(v15);
  if (os_signpost_enabled(v21))
  {
    requestStateString3 = [(DRSRequest *)self requestStateString];
    v23 = [(DRSRequest *)self debugDescription];
    *buf = 138543874;
    v41 = requestStateString3;
    v42 = 2048;
    v43 = requestState;
    v44 = 2114;
    v45 = v23;
    _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransitionError", "Cannot transition out of terminal state %{public}@ (%#llx) for request: %{public}@", buf, 0x20u);
  }

  v24 = 0;
LABEL_21:

  return v24;
}

- (BOOL)uploadStarted
{
  v25 = *MEMORY[0x277D85DE8];
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID)
  {
    v4 = DPLogHandle_RequestError(uploadID);
    if (os_signpost_enabled(v4))
    {
      requestID = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v18 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidUploadID", "Request ID %{public}@: Trying to start an upload when we already have an upload ID", buf, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    self->_uploadID = atomic_fetch_add(&_uniqueSignpostID_nextSerialNumber, 1uLL);
    v16 = 0;
    v6 = [(DRSRequest *)self updateToState:2 errorDescription:0 errorOut:&v16];
    v7 = v16;
    v4 = v7;
    if (v6)
    {
      v8 = DPLogHandle_CKRecordUpload(v7);
      uploadID2 = [(DRSRequest *)self uploadID];
      if (uploadID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = uploadID2;
        if (os_signpost_enabled(v8))
        {
          requestID2 = [(DRSRequest *)self requestID];
          teamID = [(DRSRequest *)self teamID];
          issueCategory = [(DRSRequest *)self issueCategory];
          issueDescription = [(DRSRequest *)self issueDescription];
          *buf = 138413058;
          v18 = requestID2;
          v19 = 2114;
          v20 = teamID;
          v21 = 2114;
          v22 = issueCategory;
          v23 = 2114;
          v24 = issueDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LogUpload", "Began upload of log with request ID %@, %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=issueDescription}@", buf, 0x2Au);
        }
      }

      ++self->_uploadAttemptCount;
    }
  }

  return v6;
}

- (void)uploadFailedDueToReason:(id)reason ckOperationID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dCopy = d;
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = @"-";
  }

  uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
  maxUploadAttemptCount = [objc_opt_class() maxUploadAttemptCount];
  v11 = maxUploadAttemptCount;
  v12 = DPLogHandle_CKRecordUpload(maxUploadAttemptCount);
  uploadID = [(DRSRequest *)self uploadID];
  v14 = uploadID - 1;
  if (uploadAttemptCount >= v11)
  {
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = reasonCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_END, uploadID, "LogUpload", "Upload failure. CKOperationID: %{public}@, Error: %{public}@", buf, 0x16u);
    }

    reasonCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Stopped trying to upload after %u attempts. Upload error: %@", -[DRSRequest uploadAttemptCount](self, "uploadAttemptCount"), reasonCopy];
    [(DRSRequest *)self updateToState:4355 errorDescription:reasonCopy errorOut:0];
  }

  else
  {
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = reasonCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_END, uploadID, "LogUpload", "Upload failed. Will retry. CKOperationID: %{public}@, Error: %{public}@", buf, 0x16u);
    }

    [(DRSRequest *)self updateToState:1 errorDescription:0 errorOut:0];
  }
}

- (void)uploadCompleteWithError:(id)error ckOperationID:(id)d ckRecordID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (error)
  {
    localizedDescription = [error localizedDescription];
    v11 = localizedDescription;
    if (localizedDescription)
    {
      v12 = localizedDescription;
    }

    else
    {
      v12 = @"Unknown";
    }

    [(DRSRequest *)self uploadFailedDueToReason:v12 ckOperationID:dCopy];
  }

  else
  {
    objc_storeStrong(&self->_ckRecordID, iD);
    v14 = DPLogHandle_CKRecordUpload(v13);
    uploadID = [(DRSRequest *)self uploadID];
    if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = uploadID;
      if (os_signpost_enabled(v14))
      {
        v17[0] = 67240450;
        v17[1] = 1;
        v18 = 2114;
        v19 = iDCopy;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_END, v16, "LogUpload", "Upload success. %{public, name=uploadSuccess}u CK Record ID: %{public}@", v17, 0x12u);
      }
    }

    [(DRSRequest *)self updateToState:0x2000 errorDescription:0 errorOut:0];
  }
}

- (void)makeTerminalDueToMissingLog
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_CKRecordUpload(self);
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = uploadID;
    if (os_signpost_enabled(v3))
    {
      requestID = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v13 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, v5, "MakingTerminalDueToLogsMissing", "Moving %{public}@ to terminal state due to missing uploadable content", buf, 0xCu);
    }
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  logPath = [(DRSRequest *)self logPath];
  v9 = logPath;
  v10 = @"Unknown";
  if (logPath)
  {
    v10 = logPath;
  }

  v11 = [v7 initWithFormat:@"Log file is missing (path: %@)", v10];

  [(DRSRequest *)self updateToState:4354 errorDescription:v11 errorOut:0];
}

- (void)uploadAbortedDueToLogSize
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_CKRecordUpload(self);
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = uploadID;
    if (os_signpost_enabled(v3))
    {
      requestID = [(DRSRequest *)self requestID];
      v7 = 138543362;
      v8 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, v5, "LogUpload", "Log size for %{public}@ exceeds cap", &v7, 0xCu);
    }
  }

  [(DRSRequest *)self updateToState:4357 errorDescription:@"Log size is too large or could not be determined" errorOut:0];
}

- (void)uploadDeniedByDecisionServerWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = DPLogHandle_CKRecordUpload(reasonCopy);
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = uploadID;
    if (os_signpost_enabled(v5))
    {
      if (reasonCopy)
      {
        v8 = reasonCopy;
      }

      else
      {
        v8 = @"Unknown";
      }

      v10 = 138543362;
      v11 = v8;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_INTERVAL_END, v7, "LogUpload", "Upload denied by decision server due to reason %{public}@", &v10, 0xCu);
    }
  }

  if (reasonCopy)
  {
    v9 = reasonCopy;
  }

  else
  {
    v9 = @"Unknown";
  }

  [(DRSRequest *)self updateToState:4353 errorDescription:v9 errorOut:0];
}

+ (id)_requestWithRequestMO_ON_MOC_QUEUE:(id)e
{
  v13 = *MEMORY[0x277D85DE8];
  eCopy = e;
  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSTailspinRequest alloc] _initWithTailspinRequestMO_ON_MOC_QUEUE:eCopy];
LABEL_9:
    v6 = v4;
    goto LABEL_10;
  }

  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSSubmitLogRequest alloc] _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSSubmitLogToCKContainerRequest alloc] _initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  v5 = [eCopy isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v4 = [[DRSSubmitRapidLogRequest alloc] _initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  v8 = DPLogHandle_CoreDataError(v5);
  if (os_signpost_enabled(v8))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543362;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedManagedObjectClass", "Tried to create a DRSRequest instance with an unknown ManagedObject class: %{public}@", &v11, 0xCu);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)_populateLogsArray_ON_MOC_QUEUE:(id)e
{
  v43 = *MEMORY[0x277D85DE8];
  eCopy = e;
  logs = [eCopy logs];
  v6 = [logs count];

  if (v6)
  {
    managedObjectModel = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    logs = [eCopy logs];
    v9 = [logs countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(logs);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [[DRSLog alloc] _initWithLogMO_ON_MOC_QUEUE:v13];
          if (!v14)
          {
            v17 = DPLogHandle_CoreDataError(0);
            if (os_signpost_enabled(v17))
            {
              path = [v13 path];
              v19 = [v13 size];
              *buf = 138412546;
              v39 = path;
              v40 = 2048;
              v41 = v19;
              _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSLogCreationFailure", "Failed to create a DRSLog from a DRSLogMO: Path: %@ Size: %llu", buf, 0x16u);
            }

            v16 = 0;
            goto LABEL_34;
          }

          v15 = v14;
          [(NSArray *)managedObjectModel addObject:v14];
        }

        v10 = [logs countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    managedObjectModel = managedObjectModel;
    logs = self->_logs;
    self->_logs = managedObjectModel;
    v16 = 1;
    goto LABEL_34;
  }

  managedObjectContext = [eCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  versionIdentifiers = [(NSArray *)managedObjectModel versionIdentifiers];
  LOBYTE(persistentStoreCoordinator) = [versionIdentifiers containsObject:@"3"];

  if ((persistentStoreCoordinator & 1) == 0)
  {
    logs = [eCopy valueForKey:@"logPath"];
    v23 = [eCopy valueForKey:@"cachedLogSize"];
    v24 = [eCopy valueForKey:@"transferOwnership"];
    if (!logs)
    {
      v16 = 1;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    if (!v23)
    {
      v23 = &unk_2847FF750;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();
      if (v26)
      {
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        if (v27)
        {
          v28 = -[DRSLog _initWithLogPath:transferOwnership:size:]([DRSLog alloc], "_initWithLogPath:transferOwnership:size:", logs, [v24 BOOLValue], objc_msgSend(v23, "unsignedLongLongValue"));
          v37 = v28;
          v16 = 1;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          v30 = self->_logs;
          self->_logs = v29;

LABEL_32:
          goto LABEL_33;
        }

        v28 = DPLogHandle_CoreDataError(v27);
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          v31 = "Unexpected class for 'transferOwnership'";
          goto LABEL_30;
        }

LABEL_31:
        v16 = 0;
        goto LABEL_32;
      }

      v28 = DPLogHandle_CoreDataError(v26);
      if (!os_signpost_enabled(v28))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v31 = "Unexpected class for 'cachedLogSize'";
    }

    else
    {
      v28 = DPLogHandle_CoreDataError(isKindOfClass);
      if (!os_signpost_enabled(v28))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v31 = "Unexpected class for 'logPath'";
    }

LABEL_30:
    _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSLogCreationFailure", v31, buf, 2u);
    goto LABEL_31;
  }

  v16 = 1;
LABEL_35:

  return v16;
}

+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v4 = eCopy;
  if (eCopy)
  {
    issueCategory = [eCopy issueCategory];

    if (issueCategory)
    {
      issueCategory = [v4 issueDescription];

      if (issueCategory)
      {
        issueCategory = [v4 requestDate];

        if (issueCategory)
        {
          issueCategory = [v4 requestID];

          if (issueCategory)
          {
            teamID = [v4 teamID];
            LOBYTE(issueCategory) = teamID != 0;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(issueCategory) = 0;
  }

  return issueCategory;
}

- (id)_initWithRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  if (![objc_opt_class() _requestMOHasRequiredFields_ON_MOC_QUEUE:eCopy])
  {
    goto LABEL_13;
  }

  v31.receiver = self;
  v31.super_class = DRSRequest;
  v5 = [(DRSRequest *)&v31 init];
  self = v5;
  if (!v5)
  {
LABEL_12:
    self = self;
    selfCopy = self;
    goto LABEL_14;
  }

  if (![(DRSRequest *)v5 _populateLogsArray_ON_MOC_QUEUE:eCopy])
  {
LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  teamID = [eCopy teamID];
  teamID = self->_teamID;
  self->_teamID = teamID;

  issueCategory = [eCopy issueCategory];
  issueCategory = self->_issueCategory;
  self->_issueCategory = issueCategory;

  issueDescription = [eCopy issueDescription];
  issueDescription = self->_issueDescription;
  self->_issueDescription = issueDescription;

  self->_requestMCT = [eCopy requestMCT];
  contextDictionaryData = [eCopy contextDictionaryData];
  contextDictionaryData = self->_contextDictionaryData;
  self->_contextDictionaryData = contextDictionaryData;

  requestDate = [eCopy requestDate];
  requestDate = self->_requestDate;
  self->_requestDate = requestDate;

  build = [eCopy build];
  v17 = build;
  if (build)
  {
    v18 = build;
  }

  else
  {
    v18 = @"Unknown";
  }

  objc_storeStrong(&self->_build, v18);

  self->_uploadAttemptCount = [eCopy uploadAttemptCount];
  self->_hasBeenCountedByTelemetry = [eCopy hasBeenCountedByTelemetry];
  self->_decisionServerDecision = [eCopy decisionServerDecision];
  contextDictionaryData2 = [(DRSRequest *)self contextDictionaryData];

  if (!contextDictionaryData2 || ([(DRSRequest *)self contextDictionaryData], v20 = objc_claimAutoreleasedReturnValue(), DRSDictionaryForData(v20), v21 = objc_claimAutoreleasedReturnValue(), contextDictionary = self->_contextDictionary, self->_contextDictionary = v21, contextDictionary, v20, [(DRSRequest *)self contextDictionary], selfCopy = objc_claimAutoreleasedReturnValue(), selfCopy, selfCopy))
  {
    requestID = [eCopy requestID];
    requestID = self->_requestID;
    self->_requestID = requestID;

    self->_requestState = [eCopy requestState];
    if ([(DRSRequest *)self requestState]== 4353)
    {
      self->_decisionServerDecision = 1;
    }

    errorDescription = [eCopy errorDescription];
    errorDescription = self->_errorDescription;
    self->_errorDescription = errorDescription;

    self->_isExpedited = [eCopy isExpedited];
    ckRecordID = [eCopy ckRecordID];
    ckRecordID = self->_ckRecordID;
    self->_ckRecordID = ckRecordID;

    goto LABEL_12;
  }

LABEL_14:

  return selfCopy;
}

+ (id)requestsForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v42 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  descriptorsCopy = descriptors;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__DRSRequest_requestsForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v26[3] = &unk_27899ECE8;
  selfCopy = self;
  v16 = predicateCopy;
  v27 = v16;
  v17 = descriptorsCopy;
  v28 = v17;
  limitCopy = limit;
  v18 = contextCopy;
  v29 = v18;
  v31 = &v34;
  v19 = v15;
  v30 = v19;
  [v18 performBlockAndWait:v26];
  if (v35[5])
  {

    v21 = DPLogHandle_CoreDataError(v20);
    if (os_signpost_enabled(v21))
    {
      localizedDescription = [v35[5] localizedDescription];
      *buf = 138543362;
      v41 = localizedDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestFetchFailure", "Failed to fetch requests due to error: %{public}@", buf, 0xCu);
    }

    v19 = 0;
  }

  if (out)
  {
    *out = v35[5];
  }

  v23 = v30;
  v24 = v19;

  _Block_object_dispose(&v34, 8);

  return v24;
}

void __85__DRSRequest_requestsForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = [*(a1 + 72) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:*(a1 + 32)];
  [v4 setSortDescriptors:*(a1 + 40)];
  if (*(a1 + 80))
  {
    [v4 setFetchLimit:?];
  }

  v5 = *(a1 + 48);
  v27 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v27];
  v7 = v27;
  v8 = v7;
  if (v6)
  {
    if ([v6 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [DRSRequest _requestWithRequestMO_ON_MOC_QUEUE:*(*(&v23 + 1) + 8 * i), v23];
            if (!v14)
            {
              v18 = MEMORY[0x277CCA9B8];
              v28 = *MEMORY[0x277CCA450];
              v29 = @"Failed to create request for requestMO";
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
              v20 = [v18 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v19];
              v21 = *(*(a1 + 64) + 8);
              v22 = *(v21 + 40);
              *(v21 + 40) = v20;

              goto LABEL_18;
            }

            v15 = v14;
            [*(a1 + 56) addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    if (!v7)
    {
      v16 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = @"Unknown fetch error";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v8 = [v16 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v17];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  }
}

+ (id)unreportedTerminalRequestsFromContext:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v9 = MEMORY[0x277CCAC30];
  descriptorsCopy = descriptors;
  contextCopy = context;
  4096 = [v9 predicateWithFormat:@"(requestState >= %llu) AND (hasBeenCountedByTelemetry == NO)", 4096];
  v13 = [DRSRequest requestsForFilterPredicate:4096 context:contextCopy sortDescriptors:descriptorsCopy fetchLimit:limit errorOut:out];

  return v13;
}

+ (id)uploadedBytesSinceDate:(id)date context:(id)context errorOut:(id *)out
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  0x2000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(requestDate >= %@) AND (requestState == %llu)", date, 0x2000];
  v9 = [DRSRequest requestsForFilterPredicate:0x2000 context:contextCopy sortDescriptors:0 fetchLimit:0 errorOut:out];
  v10 = v9;
  v11 = 0;
  if (!*out)
  {
    if ([v9 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v15 += [*(*(&v19 + 1) + 8 * i) totalLogSizeBytes];
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    }

    else
    {
      v11 = &unk_2847FF750;
    }
  }

  return v11;
}

+ (unint64_t)requestCountForFilterPredicate:(id)predicate context:(id)context fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v44 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  v12 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v14 = [v12 fetchRequestWithEntityName:entityName];

  [v14 setPredicate:predicateCopy];
  [v14 setResultType:4];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __73__DRSRequest_requestCountForFilterPredicate_context_fetchLimit_errorOut___block_invoke;
  v27 = &unk_27899ED10;
  v30 = &v38;
  v15 = contextCopy;
  v28 = v15;
  v16 = v14;
  v29 = v16;
  v31 = &v32;
  v17 = [v15 performBlockAndWait:&v24];
  if (out)
  {
    v17 = v33[5];
    *out = v17;
  }

  if (v33[5])
  {
    v18 = DPLogHandle_CoreDataError(v17);
    if (os_signpost_enabled(v18))
    {
      localizedDescription = [v33[5] localizedDescription];
      v20 = localizedDescription;
      v21 = @"Unknown";
      if (localizedDescription)
      {
        v21 = localizedDescription;
      }

      *buf = 138543362;
      v43 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCountFailure", "Encountered failure when fetching count: %{public}@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v22 = v39[3];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __73__DRSRequest_requestCountForFilterPredicate_context_fetchLimit_errorOut___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 countForFetchRequest:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

+ (id)leastRecentDateFirstSortDescriptor
{
  if (leastRecentDateFirstSortDescriptor_onceToken != -1)
  {
    +[DRSRequest leastRecentDateFirstSortDescriptor];
  }

  v3 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor;

  return v3;
}

void __48__DRSRequest_leastRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"requestDate" ascending:1];
  v1 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor;
  leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor = v0;
}

+ (id)mostRecentDateFirstSortDescriptor
{
  if (mostRecentDateFirstSortDescriptor_onceToken != -1)
  {
    +[DRSRequest mostRecentDateFirstSortDescriptor];
  }

  v3 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor;

  return v3;
}

void __47__DRSRequest_mostRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"requestDate" ascending:0];
  v1 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor;
  mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor = v0;
}

+ (BOOL)cleanRequestRecordsFromPersistentContainer:(id)container removeFiles:(BOOL)files removeRecord:(BOOL)record matchingPredicate:(id)predicate errorOut:(id *)out
{
  recordCopy = record;
  containerCopy = container;
  predicateCopy = predicate;
  if (files || recordCopy)
  {
    newBackgroundContext = [containerCopy newBackgroundContext];
    v16 = MEMORY[0x277CBE428];
    entityName = [self entityName];
    v18 = [v16 fetchRequestWithEntityName:entityName];

    [v18 setPredicate:predicateCopy];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __109__DRSRequest_cleanRequestRecordsFromPersistentContainer_removeFiles_removeRecord_matchingPredicate_errorOut___block_invoke;
    v22[3] = &unk_27899ED58;
    v19 = newBackgroundContext;
    v23 = v19;
    v20 = v18;
    v24 = v20;
    v25 = &v28;
    filesCopy = files;
    v27 = recordCopy;
    [v19 performBlockAndWait:v22];
    if (out)
    {
      *out = v29[5];
    }

    v14 = v29[5] == 0;

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void __109__DRSRequest_cleanRequestRecordsFromPersistentContainer_removeFiles_removeRecord_matchingPredicate_errorOut___block_invoke(uint64_t a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v54 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v54];
  v5 = v54;
  v6 = v5;
  if (v4)
  {
    v42 = v5;
    v43 = v4;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      do
      {
        v10 = 0;
        do
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v50 + 1) + 8 * v10);
          if (*(a1 + 56) == 1)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v12 = [v11 logs];
            v13 = [v12 countByEnumeratingWithState:&v46 objects:v63 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v47;
              do
              {
                v16 = 0;
                do
                {
                  if (*v47 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v46 + 1) + 8 * v16) path];
                  _deleteFileWithPath(v17);

                  ++v16;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v46 objects:v63 count:16];
              }

              while (v14);
            }
          }

          if (*(a1 + 57) == 1)
          {
            [*(a1 + 32) deleteObject:v11];
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
      }

      while (v8);
    }

    v18 = [*(a1 + 32) hasChanges];
    if (v18)
    {
      v19 = *(a1 + 32);
      v45 = 0;
      v20 = [v19 save:&v45];
      v21 = v45;
      v22 = v21;
      if ((v20 & 1) == 0)
      {
        v23 = DPLogHandle_CoreDataError(v21);
        if (os_signpost_enabled(v23))
        {
          v24 = [v22 localizedDescription];
          v25 = v24;
          v26 = @"Unknown";
          if (v24)
          {
            v26 = v24;
          }

          *buf = 138543362;
          v56 = v26;
          _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsFailure", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }

        if (!v22)
        {
          v27 = MEMORY[0x277CCA9B8];
          v61 = *MEMORY[0x277CCA450];
          v62 = @"Unknown save error";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v22 = [v27 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v28];
        }
      }
    }

    v29 = DPLogHandle_CoreData(v18);
    v30 = v42;
    if (os_signpost_enabled(v29))
    {
      v31 = [obj count];
      v32 = @"NO";
      v33 = *(a1 + 57);
      if (*(a1 + 56))
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      *buf = 134218498;
      v56 = v31;
      if (v33)
      {
        v32 = @"YES";
      }

      v57 = 2114;
      v58 = v34;
      v59 = 2114;
      v60 = v32;
      _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsSuccess", "Cleaned %lu requests (Remove files: %{public}@, remove records: %{public}@", buf, 0x20u);
    }

    v4 = v43;
  }

  else
  {
    v35 = DPLogHandle_CoreDataError(v5);
    if (os_signpost_enabled(v35))
    {
      v36 = [v6 localizedDescription];
      v37 = v36;
      v38 = @"Unknown";
      if (v36)
      {
        v38 = v36;
      }

      *buf = 138543362;
      v56 = v38;
      _os_signpost_emit_with_name_impl(&dword_232906000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsFailure", "Fetch records due to error: %{public}@", buf, 0xCu);
    }

    if (!v6)
    {
      v39 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA450];
      v66[0] = @"Unknown fetch error";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      v6 = [v39 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v40];
    }

    v41 = *(*(a1 + 48) + 8);
    v30 = v6;
    v29 = *(v41 + 40);
    *(v41 + 40) = v30;
  }
}

+ (BOOL)unblockStrandedUploadingRecordsFromPersistentContainer:(id)container errorOut:(id *)out
{
  containerCopy = container;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu", 2];
  newBackgroundContext = [containerCopy newBackgroundContext];
  v9 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  [v11 setPredicate:v7];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__DRSRequest_unblockStrandedUploadingRecordsFromPersistentContainer_errorOut___block_invoke;
  v16[3] = &unk_27899ED80;
  v12 = newBackgroundContext;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v19 = &v22;
  v20 = v21;
  [v12 performBlockAndWait:v16];
  if (out)
  {
    *out = v23[5];
  }

  v14 = v23[5] == 0;

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __78__DRSRequest_unblockStrandedUploadingRecordsFromPersistentContainer_errorOut___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v46 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v46];
  v5 = v46;
  v6 = v5;
  if (v4)
  {
    v39 = v5;
    v40 = v4;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      do
      {
        v11 = 0;
        do
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v42 + 1) + 8 * v11);
          v13 = DPLogHandle_CoreDataError(v8);
          if (os_signpost_enabled(v13))
          {
            v14 = [v12 requestID];
            v15 = [v14 UUIDString];
            v16 = v15;
            v17 = @"Unknown";
            if (v15)
            {
              v17 = v15;
            }

            *buf = 138543362;
            v53 = v17;
            _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockingRecord", "Moved record back to awaiting upload: %{public}@", buf, 0xCu);
          }

          ++*(*(*(a1 + 56) + 8) + 24);
          v8 = [v12 setRequestState:1];
          ++v11;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v42 objects:v49 count:16];
        v9 = v8;
      }

      while (v8);
    }

    v18 = [*(a1 + 32) hasChanges];
    v19 = v39;
    if (v18)
    {
      v20 = *(a1 + 32);
      v41 = 0;
      v21 = [v20 save:&v41];
      v22 = v41;
      v23 = v22;
      if ((v21 & 1) == 0)
      {
        v24 = DPLogHandle_CoreDataError(v22);
        if (os_signpost_enabled(v24))
        {
          v25 = [v23 localizedDescription];
          v26 = v25;
          v27 = @"Unknown";
          if (v25)
          {
            v27 = v25;
          }

          *buf = 138543362;
          v53 = v27;
          _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsFailure", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }

        if (!v23)
        {
          v28 = MEMORY[0x277CCA9B8];
          v47 = *MEMORY[0x277CCA450];
          v48 = @"Unknown save error";
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v23 = [v28 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v29];
        }
      }
    }

    v30 = DPLogHandle_CoreData(v18);
    if (os_signpost_enabled(v30))
    {
      v31 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 134217984;
      v53 = v31;
      _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsSuccess", "Unblocked %llu stuck requests", buf, 0xCu);
    }

    v4 = v40;
  }

  else
  {
    v32 = DPLogHandle_CoreDataError(v5);
    if (os_signpost_enabled(v32))
    {
      v33 = [v6 localizedDescription];
      v34 = v33;
      v35 = @"Unknown";
      if (v33)
      {
        v35 = v33;
      }

      *buf = 138543362;
      v53 = v35;
      _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsFailure", "Fetch records due to error: %{public}@", buf, 0xCu);
    }

    if (!v6)
    {
      v36 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Unknown fetch error";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v6 = [v36 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v37];
    }

    v38 = *(*(a1 + 48) + 8);
    v19 = v6;
    v30 = *(v38 + 40);
    *(v38 + 40) = v19;
  }
}

+ (BOOL)cullOldRequestRecordsFromPersistentContainer:(id)container currentDate:(id)date errorOut:(id *)out
{
  v42[2] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v8 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v10 = [[v8 alloc] initWithTimeInterval:dateCopy sinceDate:-259200.0];
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-864000.0];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-2592000.0];
  v13 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-5184000.0];

  0x2000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestDate < %@ AND requestState >= %llu", v11, 0x2000];
  v15 = [DRSRequest cleanRequestRecordsFromPersistentContainer:containerCopy removeFiles:1 removeRecord:0 matchingPredicate:0x2000 errorOut:out];

  if (v15)
  {
    v37 = v13;
    0x20002 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestState < %llu", 4096, 0x2000];
    v39 = v10;
    [MEMORY[0x277CCAC30] predicateWithFormat:@"hasBeenCountedByTelemetry == YES AND requestDate < %@", v10];
    v17 = v36 = out;
    v38 = v11;
    [MEMORY[0x277CCAC30] predicateWithFormat:@"hasBeenCountedByTelemetry == YES AND requestDate < %@", v11];
    v18 = containerCopy;
    v20 = v19 = v12;
    v21 = MEMORY[0x277CCA920];
    v42[0] = v17;
    v42[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v23 = [v21 orPredicateWithSubpredicates:v22];

    v24 = MEMORY[0x277CCA920];
    v41[0] = 0x20002;
    v41[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];

    v12 = v19;
    containerCopy = v18;

    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestDate < %@", 0x2000, v12];
    v28 = MEMORY[0x277CCA920];
    v40[0] = v26;
    v40[1] = v27;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v30 = [v28 orPredicateWithSubpredicates:v29];

    LODWORD(v29) = [DRSRequest cleanRequestRecordsFromPersistentContainer:v18 removeFiles:1 removeRecord:1 matchingPredicate:v30 errorOut:v36];
    if (v29 && ([MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestState < %llu", 4096, 0x2000], v31 = objc_claimAutoreleasedReturnValue(), v32 = +[DRSRequest cleanRequestRecordsFromPersistentContainer:removeFiles:removeRecord:matchingPredicate:errorOut:](DRSRequest, "cleanRequestRecordsFromPersistentContainer:removeFiles:removeRecord:matchingPredicate:errorOut:", v18, 1, 0, v31, v36), v31, v32))
    {
      v13 = v37;
      v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestDate < %@", v37];
      v34 = [DRSRequest cleanRequestRecordsFromPersistentContainer:v18 removeFiles:1 removeRecord:1 matchingPredicate:v33 errorOut:v36];

      v11 = v38;
      v10 = v39;
    }

    else
    {
      v34 = 0;
      v11 = v38;
      v10 = v39;
      v13 = v37;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (id)migrateRequestDataStoreAtPath:(id)path errorOut:(id *)out
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = DRSRequestPersistentContainerForVersion(2, pathCopy, 0, 1, out);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  newBackgroundContext = [v7 newBackgroundContext];
  v10 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v12 = [v10 fetchRequestWithEntityName:entityName];

  *v32 = 0;
  *&v32[8] = v32;
  *&v32[16] = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__DRSRequest_migrateRequestDataStoreAtPath_errorOut___block_invoke;
  v24[3] = &unk_27899EDA8;
  v13 = newBackgroundContext;
  v25 = v13;
  v14 = v12;
  v26 = v14;
  v27 = v32;
  v15 = [v13 performBlockAndWait:v24];
  v16 = *(*&v32[8] + 40);
  if (v16)
  {
    if (out)
    {
      v15 = v16;
      *out = v16;
    }

    v17 = DPLogHandle_CoreDataError(v15);
    if (os_signpost_enabled(v17))
    {
      localizedDescription = [*(*&v32[8] + 40) localizedDescription];
      v19 = localizedDescription;
      v20 = @"Unknown error";
      if (localizedDescription)
      {
        v20 = localizedDescription;
      }

      *buf = 138543618;
      v29 = pathCopy;
      v30 = 2112;
      v31 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MigrationFailed", "Migration of '%{public}@' failed. Encountered error: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(v32, 8);
  if (!v16)
  {
    v21 = DRSRequestPersistentContainerForVersion(3, pathCopy, 0, 1, out);
    v22 = DPLogHandle_CoreData(v21);
    if (os_signpost_enabled(v22))
    {
      *v32 = 138543618;
      *&v32[4] = pathCopy;
      *&v32[12] = 1024;
      *&v32[14] = 3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MigrationSucceeded", "Migration of '%{public}@' to version %hu succeeded", v32, 0x12u);
    }
  }

  else
  {
LABEL_11:
    v21 = 0;
  }

  return v21;
}

void __53__DRSRequest_migrateRequestDataStoreAtPath_errorOut___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v28 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v28];
  v5 = v28;
  v6 = v28;
  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (!*(*(a1[6] + 8) + 40))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [DRSRequest _requestWithRequestMO_ON_MOC_QUEUE:v12];
          if (!v13)
          {
            v18 = MEMORY[0x277CCA9B8];
            v29 = *MEMORY[0x277CCA450];
            v30 = @"Failed to create request for requestMO";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            v20 = [v18 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v19];
            v21 = *(a1[6] + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = v20;

            goto LABEL_12;
          }

          v14 = v13;
          [v13 _configureRequestMO:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = a1[4];
    v23 = v6;
    [v15 save:&v23];
    v16 = v23;

    v17 = *(a1[6] + 8);
    v6 = v16;
    v7 = *(v17 + 40);
    *(v17 + 40) = v6;
LABEL_12:
  }
}

- (id)fileURLs
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  filePaths = [(DRSRequest *)self filePaths];
  v5 = [filePaths countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(filePaths);
        }

        v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [filePaths countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)fileNames
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  filePaths = [(DRSRequest *)self filePaths];
  v5 = [filePaths countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(filePaths);
        }

        lastPathComponent = [*(*(&v11 + 1) + 8 * i) lastPathComponent];
        [v3 addObject:lastPathComponent];
      }

      v6 = [filePaths countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)filePaths
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  logs = [(DRSRequest *)self logs];
  v5 = [logs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(logs);
        }

        path = [*(*(&v11 + 1) + 8 * i) path];
        [v3 addObject:path];
      }

      v6 = [logs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)fileAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fileURLs = [(DRSRequest *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)recordRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"DPLog"];
    v7 = +[DRSSystemProfile sharedInstance];
    buildVariant = [v7 buildVariant];
    [v6 setObject:buildVariant forKeyedSubscript:@"buildVariant"];

    deviceCategory = [v7 deviceCategory];
    [v6 setObject:deviceCategory forKeyedSubscript:@"deviceCategory"];

    deviceModel = [v7 deviceModel];
    [v6 setObject:deviceModel forKeyedSubscript:@"deviceModel"];

    platformString = [v7 platformString];
    [v6 setObject:platformString forKeyedSubscript:@"platform"];

    build = [(DRSRequest *)self build];
    [v6 setObject:build forKeyedSubscript:@"build"];

    teamID = [(DRSRequest *)self teamID];
    [v6 setObject:teamID forKeyedSubscript:@"teamID"];

    issueCategory = [(DRSRequest *)self issueCategory];
    [v6 setObject:issueCategory forKeyedSubscript:@"issueCategory"];

    issueDescription = [(DRSRequest *)self issueDescription];
    [v6 setObject:issueDescription forKeyedSubscript:@"issueDescription"];

    logType = [(DRSRequest *)self logType];
    [v6 setObject:logType forKeyedSubscript:@"logType"];

    requestDate = [(DRSRequest *)self requestDate];
    [v6 setObject:requestDate forKeyedSubscript:@"requestDate"];

    contextDictionaryData = [(DRSRequest *)self contextDictionaryData];

    if (contextDictionaryData)
    {
      contextDictionaryData2 = [(DRSRequest *)self contextDictionaryData];
      [v6 setObject:contextDictionaryData2 forKeyedSubscript:@"contextDictionaryData"];
    }

    fileAssets = [(DRSRequest *)self fileAssets];
    [v6 setObject:fileAssets forKeyedSubscript:@"fileAssets"];

    fileNames = [(DRSRequest *)self fileNames];
    [v6 setObject:fileNames forKeyedSubscript:@"fileNames"];

    requestID = [(DRSRequest *)self requestID];
    uUIDString = [requestID UUIDString];
    [v6 setObject:uUIDString forKeyedSubscript:@"requestID"];

    v25 = DPLogHandle_CKRecord(v24);
    if (os_signpost_enabled(v25))
    {
      requestID2 = [(DRSRequest *)self requestID];
      requestType = [(DRSRequest *)self requestType];
      v29 = 138543618;
      v30 = requestID2;
      v31 = 2114;
      v32 = requestType;
      _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKRecordCreation", "%{public, name=requestID}@ %{public, name=requestType}@", &v29, 0x16u);
    }
  }

  else
  {
    v7 = DPLogHandle_CKRecordError(v5);
    if (os_signpost_enabled(v7))
    {
      LOWORD(v29) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFilePaths", "No file paths found", &v29, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)protoRequestDescription
{
  v3 = objc_alloc_init(DRSProtoRequestDescription);
  teamID = [(DRSRequest *)self teamID];
  [(DRSProtoRequestDescription *)v3 setTeamId:teamID];

  issueCategory = [(DRSRequest *)self issueCategory];
  [(DRSProtoRequestDescription *)v3 setIssueCategory:issueCategory];

  contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
  [(DRSProtoRequestDescription *)v3 setContextDictionaryData:contextDictionaryData];

  requestDate = [(DRSRequest *)self requestDate];
  [requestDate timeIntervalSince1970];
  [(DRSProtoRequestDescription *)v3 setRequestTime:v8];

  build = [(DRSRequest *)self build];
  [(DRSProtoRequestDescription *)v3 setBuild:build];

  return v3;
}

- (id)protoFileDescriptions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  logs = [(DRSRequest *)self logs];
  v5 = [logs countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138543618;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(logs);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        fileDescription = [v10 fileDescription];
        if (fileDescription)
        {
          [v3 addObject:fileDescription];
        }

        else
        {
          v12 = DPLogHandle_CKRecord(0);
          if (os_signpost_enabled(v12))
          {
            requestID = [(DRSRequest *)self requestID];
            path = [v10 path];
            *buf = v16;
            v22 = requestID;
            v23 = 2114;
            v24 = path;
            _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoFileDescriptionFailure", "%{public, name=requestID}@ Failed to create description for path '%{public}@'", buf, 0x16u);
          }
        }
      }

      v7 = [logs countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)uploadRequest
{
  v17 = *MEMORY[0x277D85DE8];
  requestState = [(DRSRequest *)self requestState];
  if (requestState != 2)
  {
    v11 = DPLogHandle_CKCodeServerError(requestState);
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_12;
    }

    v12 = [(DRSRequest *)self debugDescription];
    v15 = 138543362;
    v16 = v12;
    v13 = "Tried to create an upload request for a request that was not in the middle of the upload flow (%{public}@)";
LABEL_11:
    _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadRequestCreationError", v13, &v15, 0xCu);

    goto LABEL_12;
  }

  logs = [(DRSRequest *)self logs];
  v5 = [logs count];

  if (!v5)
  {
    v11 = DPLogHandle_CKCodeServerError(v6);
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_12;
    }

    v12 = [(DRSRequest *)self debugDescription];
    v15 = 138543362;
    v16 = v12;
    v13 = "Tried to create an upload request for a request with no file: %{public}@";
    goto LABEL_11;
  }

  if ([(DRSRequest *)self totalLogSizeBytes])
  {
    protoRequestDescription = [(DRSRequest *)self protoRequestDescription];
    v8 = objc_alloc_init(DRSProtoDiagnosticUploadRequest);
    [(DRSProtoDiagnosticUploadRequest *)v8 setRequestDescription:protoRequestDescription];
    issueDescription = [(DRSRequest *)self issueDescription];
    [(DRSProtoDiagnosticUploadRequest *)v8 setIssueDescription:issueDescription];

    protoFileDescriptions = [(DRSRequest *)self protoFileDescriptions];
    [(DRSProtoDiagnosticUploadRequest *)v8 setLogs:protoFileDescriptions];

    goto LABEL_13;
  }

  v11 = DPLogHandle_CKCodeServerError(0);
  if (os_signpost_enabled(v11))
  {
    v12 = [(DRSRequest *)self debugDescription];
    v15 = 138543362;
    v16 = v12;
    v13 = "Tried to create an upload request for a request with no net file size: %{public}@";
    goto LABEL_11;
  }

LABEL_12:

  v8 = 0;
LABEL_13:

  return v8;
}

- (DRSDecisionServerBatchRequest)pbBatchInstance
{
  v2 = objc_alloc_init(DRSProtoDiagnosticUploadRequestBatch);

  return v2;
}

- (void)updateToState:(__CFString *)a1 errorDescription:(NSObject *)a2 errorOut:.cold.1(__CFString *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "On-receipt error encountered: %{public}@", &v3, 0xCu);
}

@end