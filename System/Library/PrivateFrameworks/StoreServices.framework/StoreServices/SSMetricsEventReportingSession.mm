@interface SSMetricsEventReportingSession
- (BOOL)anyUnreportedEvents;
- (BOOL)markEventsAsReported;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp eventController:(id)controller;
- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp suppressUserInfo:(BOOL)info eventController:(id)controller;
- (id)_unreportedEvents;
- (id)sessionCanaryIdentifier;
- (id)writeEventsToStream:(id)stream uncompressedMaxSize:(int64_t)size;
- (int64_t)_estimateSizeOfJsonObject:(id)object;
- (void)_writeString:(id)string toData:(id)data;
@end

@implementation SSMetricsEventReportingSession

- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp eventController:(id)controller
{
  lCopy = l;
  controllerCopy = controller;
  v11 = [(SSMetricsEventReportingSession *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_insertTimestamp = timestamp;
    unreportedEvents = v11->_unreportedEvents;
    v11->_unreportedEvents = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unreportedEventPIDs = v12->_unreportedEventPIDs;
    v12->_unreportedEventPIDs = v14;

    objc_storeStrong(&v12->_eventController, controller);
    objc_storeStrong(&v12->_reportingURL, l);
  }

  return v12;
}

- (SSMetricsEventReportingSession)initWithReportingURL:(id)l insertTimestamp:(int64_t)timestamp suppressUserInfo:(BOOL)info eventController:(id)controller
{
  result = [(SSMetricsEventReportingSession *)self initWithReportingURL:l insertTimestamp:timestamp eventController:controller];
  if (result)
  {
    result->_suppressUserInfo = info;
  }

  return result;
}

- (BOOL)anyUnreportedEvents
{
  _unreportedEvents = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v3 = [_unreportedEvents count] != 0;

  return v3;
}

- (BOOL)markEventsAsReported
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    unreportedEventPIDs = self->_unreportedEventPIDs;
    v9 = v7;
    v21 = 138412546;
    v22 = v7;
    v23 = 1024;
    v24 = [(NSMutableArray *)unreportedEventPIDs count];
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Marking %d events are reported", &v21, 18);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
  }

LABEL_13:
  if (![(NSMutableArray *)self->_unreportedEventPIDs count])
  {
    return 0;
  }

  v17 = [(SSMetricsEventController *)self->_eventController markEventsAsReported:self->_unreportedEventPIDs];
  v18 = self->_unreportedEventPIDs;
  self->_unreportedEventPIDs = 0;

  unreportedEvents = self->_unreportedEvents;
  self->_unreportedEvents = 0;

  return v17;
}

- (id)sessionCanaryIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCanaryIdentifier = self->_sessionCanaryIdentifier;
  if (sessionCanaryIdentifier)
  {
    v3 = sessionCanaryIdentifier;
  }

  else
  {
    [(SSMetricsEventReportingSession *)self _unreportedEvents];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        reportingDictionary = [*(*(&v15 + 1) + 8 * v9) reportingDictionary];
        v11 = [reportingDictionary objectForKey:@"canary"];

        if (v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = 0;
    }

    v12 = [v11 copy];
    v13 = self->_sessionCanaryIdentifier;
    self->_sessionCanaryIdentifier = v12;

    v3 = self->_sessionCanaryIdentifier;
  }

  return v3;
}

- (id)writeEventsToStream:(id)stream uncompressedMaxSize:(int64_t)size
{
  v107 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  _unreportedEvents = [(SSMetricsEventReportingSession *)self _unreportedEvents];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  unreportedEventPIDs = self->_unreportedEventPIDs;
  self->_unreportedEventPIDs = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sessionCanaryIdentifier = [(SSMetricsEventReportingSession *)self sessionCanaryIdentifier];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = _unreportedEvents;
  v89 = v8;
  selfCopy = self;
  v93 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (v93)
  {
    v10 = 0;
    v92 = *v97;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v97 != v92)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v96 + 1) + 8 * v11);
      if ((size & 0x8000000000000000) == 0 && v10 > size)
      {
        goto LABEL_28;
      }

      reportingDictionary = [*(*(&v96 + 1) + 8 * v11) reportingDictionary];
      v14 = [reportingDictionary objectForKey:@"canary"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:sessionCanaryIdentifier])
      {

        goto LABEL_28;
      }

      v16 = self->_unreportedEventPIDs;
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
      [(NSMutableArray *)v16 addObject:v17];

      v18 = [(SSMetricsEventReportingSession *)self _estimateSizeOfJsonObject:reportingDictionary];
      if (v18 < 0)
      {
        break;
      }

      v10 += v18;
      [v8 addObject:reportingDictionary];
LABEL_24:

      if (v93 == ++v11)
      {
        v93 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v93)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    v19 = sessionCanaryIdentifier;
    v20 = [reportingDictionary objectForKeyedSubscript:@"topic"];
    v21 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v22) = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v22) = v22 | 2;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v100 = 138412546;
      v101 = v24;
      v102 = 2112;
      v103[0] = v20;
      v25 = v24;
      LODWORD(v87) = 22;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%@] Unable to serialize event to JSON. Dropping invalid event for report: %@", &v100, v87);

      v8 = v89;
      if (!v26)
      {
LABEL_23:

        sessionCanaryIdentifier = v19;
        self = selfCopy;
        goto LABEL_24;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog(v21, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject);
    }

    goto LABEL_23;
  }

LABEL_28:

  if ([v8 count])
  {
    v105[0] = &unk_1F507A358;
    v104[0] = @"deliveryVersion";
    v104[1] = @"postTime";
    v33 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v36 = [v33 numberWithInteger:(v35 * 1000.0)];
    v104[2] = @"events";
    v105[1] = v36;
    v105[2] = v8;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];

    v95 = 0;
    v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v37 options:0 error:&v95];
    oSLogObject4 = v95;
    if (oSLogObject4)
    {
      v40 = +[SSLogConfig sharedStoreServicesConfig];
      v41 = streamCopy;
      if (!v40)
      {
        v40 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject2 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v44 = shouldLog;
      }

      else
      {
        v44 = shouldLog & 2;
      }

      if (!v44)
      {
        goto LABEL_76;
      }

      v45 = objc_opt_class();
      v100 = 138543619;
      v101 = v45;
      v102 = 2113;
      v103[0] = v37;
      v46 = v45;
      LODWORD(v87) = 22;
      v47 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "[%{public}@] Invalid JSON. Object: %{private}@", &v100, v87);

      if (!v47)
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    v58 = sessionCanaryIdentifier;
    v41 = streamCopy;
    v59 = [streamCopy write:objc_msgSend(v38 maxLength:{"bytes"), objc_msgSend(v38, "length")}];
    v60 = [v38 length];
    v61 = +[SSLogConfig sharedStoreServicesConfig];
    v40 = v61;
    if (v59 != v60)
    {
      if (!v61)
      {
        v40 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v40 shouldLog];
      if ([v40 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v76 = shouldLog2;
      }

      else
      {
        v76 = shouldLog2 & 2;
      }

      if (!v76)
      {
        sessionCanaryIdentifier = v58;
        goto LABEL_76;
      }

      v77 = objc_opt_class();
      v78 = v77;
      v79 = [v38 length];
      v100 = 138543874;
      v101 = v77;
      v102 = 1026;
      LODWORD(v103[0]) = v59;
      WORD2(v103[0]) = 2050;
      *(v103 + 6) = v79;
      LODWORD(v87) = 28;
      v47 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "[%{public}@] OutputStream did not accept all bytes: %{public}d vs %{public}lu", &v100, v87);

      v41 = streamCopy;
      sessionCanaryIdentifier = v58;
      if (!v47)
      {
LABEL_77:

        v51 = 0;
LABEL_78:

        v8 = v89;
        goto LABEL_79;
      }

LABEL_75:
      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:4];
      free(v47);
      SSFileLog(v40, @"%@", v80, v81, v82, v83, v84, v85, oSLogObject2);
LABEL_76:

      goto LABEL_77;
    }

    if (!v61)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v64 = shouldLog3;
    }

    else
    {
      v64 = shouldLog3 & 2;
    }

    if (v64)
    {
      v65 = objc_opt_class();
      v100 = 138543618;
      v101 = v65;
      v102 = 1026;
      LODWORD(v103[0]) = v59;
      v66 = v65;
      LODWORD(v87) = 18;
      v67 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "[%{public}@] Wrote a total of %{public}d bytes to output stream", &v100, v87);

      if (!v67)
      {
LABEL_62:

        v74 = malloc_type_malloc(0x14uLL, 0xD5088CB2uLL);
        v51 = v74;
        if (v74)
        {
          *v74 = 0;
          v74[1] = 0;
          *(v74 + 4) = 0;
          CC_SHA1([v38 bytes], v59, v74);
          v51 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v51 length:20];
        }

        sessionCanaryIdentifier = v58;
        goto LABEL_78;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:4];
      free(v67);
      SSFileLog(v40, @"%@", v68, v69, v70, v71, v72, v73, oSLogObject3);
    }

    goto LABEL_62;
  }

  v37 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v37)
  {
    v37 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v48) = [v37 shouldLog];
  if ([v37 shouldLogToDisk])
  {
    LODWORD(v48) = v48 | 2;
  }

  oSLogObject4 = [v37 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v48;
  }

  else
  {
    v48 &= 2u;
  }

  if (v48)
  {
    v49 = objc_opt_class();
    v100 = 138543362;
    v101 = v49;
    v50 = v49;
    LODWORD(v87) = 12;
    v51 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "[%{public}@] No applicable metric events to report.", &v100, v87);

    v41 = streamCopy;
    if (!v51)
    {
      goto LABEL_80;
    }

    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:4];
    free(v51);
    SSFileLog(v37, @"%@", v52, v53, v54, v55, v56, v57, oSLogObject4);
    v51 = 0;
  }

  else
  {
    v51 = 0;
    v41 = streamCopy;
  }

LABEL_79:

LABEL_80:

  return v51;
}

- (int64_t)_estimateSizeOfJsonObject:(id)object
{
  v50 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objectCopy;
  [v4 addObject:objectCopy];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  while (1)
  {
    if (![v4 count])
    {
      v12 = v41[3];
      goto LABEL_16;
    }

    v5 = [v4 count] - 1;
    v6 = [v4 objectAtIndex:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41[3] += 2;
      v7 = [v6 lengthOfBytesUsingEncoding:4];
      v8 = v41;
      v9 = v41[3] + v7;
LABEL_5:
      v8[3] = v9;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v6 stringValue];
      v11 = [stringValue lengthOfBytesUsingEncoding:4];
      v41[3] += v11;

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v41;
      v9 = v41[3] + 4;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41[3] += 2;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke;
      v36[3] = &unk_1E84B3A38;
      v39 = 1;
      v38 = &v40;
      v37 = v4;
      [v6 enumerateKeysAndObjectsUsingBlock:v36];

      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v41[3] += 2;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke_2;
    v32[3] = &unk_1E84B3A60;
    v35 = 1;
    v34 = &v40;
    v33 = v4;
    [v6 enumerateObjectsUsingBlock:v32];

LABEL_8:
    [v4 removeObjectAtIndex:v5];
  }

  v14 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v14 shouldLog];
  shouldLogToDisk = [v14 shouldLogToDisk];
  oSLogObject = [v14 OSLogObject];
  v18 = oSLogObject;
  if (shouldLogToDisk)
  {
    v19 = shouldLog | 2;
  }

  else
  {
    v19 = shouldLog;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 & 2;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v44 = 138543874;
    v45 = v21;
    v46 = 2112;
    v47 = v6;
    v48 = 2114;
    v49 = v22;
    v23 = v22;
    v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1D48BA000, v18, 16, "[%{public}@] Invalid JSON object: %@ with type: %{public}@", &v44, 32);

    if (v24)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(v14, @"%@", v25, v26, v27, v28, v29, v30, v18);
      goto LABEL_28;
    }
  }

  else
  {
LABEL_28:
  }

  v12 = -1;
LABEL_16:
  _Block_object_dispose(&v40, 8);

  return v12;
}

void __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 32) addObject:v6];
}

uint64_t __60__SSMetricsEventReportingSession__estimateSizeOfJsonObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return [*(a1 + 32) addObject:a2];
}

- (id)_unreportedEvents
{
  v25 = *MEMORY[0x1E69E9840];
  unreportedEvents = self->_unreportedEvents;
  if (!unreportedEvents)
  {
    v4 = [(SSMetricsEventController *)self->_eventController unreportedEventsForURL:self->_reportingURL since:self->_insertTimestamp suppressUserInfo:self->_suppressUserInfo];
    v5 = self->_unreportedEvents;
    self->_unreportedEvents = v4;

    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = self->_unreportedEvents;
      v12 = v10;
      v21 = 138412546;
      v22 = v10;
      v23 = 1024;
      v24 = [(NSArray *)v11 count];
      v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "[%@] Unreported Event Count: %d", &v21, 18);

      if (!v13)
      {
LABEL_14:

        unreportedEvents = self->_unreportedEvents;
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_14;
  }

LABEL_15:

  return unreportedEvents;
}

- (void)_writeString:(id)string toData:(id)data
{
  stringCopy = string;
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  v7 = [stringCopy dataUsingEncoding:4];
  [dataCopy appendData:v7];

  objc_autoreleasePoolPop(v6);
}

@end