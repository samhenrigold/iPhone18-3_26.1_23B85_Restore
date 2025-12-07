@interface DRSTailspinRequest
+ (BOOL)_shouldScrub;
+ (BOOL)enforceMinTraceBufferDuration;
+ (void)resetEnforceMinTraceBufferDuration;
+ (void)setEnforceMinTraceBufferDuration:(BOOL)duration;
- (BOOL)_dumpTailspinToDirectory:(id)directory;
- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled;
- (BOOL)isEqualToRequest:(id)request;
- (DRSTailspinRequest)initWithXPCDict:(id)dict;
- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)e;
- (id)_tailspinOptions;
- (id)debugDescription;
- (id)logType;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSTailspinRequest

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  minMAT = [(DRSTailspinRequest *)self minMAT];
  v5 = minMAT;
  if (minMAT)
  {
    v6 = minMAT;
  }

  else
  {
    v6 = @"-";
  }

  maxMAT = [(DRSTailspinRequest *)self maxMAT];
  v8 = maxMAT;
  if (maxMAT)
  {
    v9 = maxMAT;
  }

  else
  {
    v9 = @"-";
  }

  v10 = [v3 initWithFormat:@"MAT[%@, %@]", v6, v9];

  v11 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = DRSTailspinRequest;
  v12 = [(DRSRequest *)&v18 debugDescription];
  if ([(DRSTailspinRequest *)self includeOsLog])
  {
    v13 = @"OSLog";
  }

  else
  {
    v13 = @"No OSLog";
  }

  includeOsSignpost = [(DRSTailspinRequest *)self includeOsSignpost];
  v15 = @"No OSSignpost";
  if (includeOsSignpost)
  {
    v15 = @"OSSignpost";
  }

  v16 = [v11 stringWithFormat:@"%@ %@ %@ %@", v12, v13, v15, v10];

  return v16;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v8.receiver = self;
  v8.super_class = DRSTailspinRequest;
  [(DRSRequest *)&v8 _configureRequestMO:oCopy];
  v5 = oCopy;
  [v5 setIncludeOsLog:{-[DRSTailspinRequest includeOsLog](self, "includeOsLog")}];
  [v5 setIncludeOsSignpost:{-[DRSTailspinRequest includeOsSignpost](self, "includeOsSignpost")}];
  minMAT = [(DRSTailspinRequest *)self minMAT];
  [v5 setMinMAT:minMAT];

  maxMAT = [(DRSTailspinRequest *)self maxMAT];
  [v5 setMaxMAT:maxMAT];
}

- (DRSTailspinRequest)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v13.receiver = self;
  v13.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v13 initWithXPCDict:dictCopy];
  if (v5)
  {
    v5->_includeOsSignpost = xpc_dictionary_get_BOOL(dictCopy, "IncludeOSSignpost");
    v5->_includeOsLog = xpc_dictionary_get_BOOL(dictCopy, "IncludeOSLog");
    v6 = xpc_dictionary_get_value(dictCopy, "MinMAT");

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(dictCopy, "MinMAT")}];
      minMAT = v5->_minMAT;
      v5->_minMAT = v7;
    }

    v9 = xpc_dictionary_get_value(dictCopy, "MaxMAT");

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(dictCopy, "MaxMAT")}];
      maxMAT = v5->_maxMAT;
      v5->_maxMAT = v10;
    }

    v5->_scrubbed = [objc_opt_class() _shouldScrub];
  }

  return v5;
}

- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v11.receiver = self;
  v11.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v11 _initWithRequestMO_ON_MOC_QUEUE:eCopy];
  if (v5)
  {
    v5[145] = [eCopy includeOsLog];
    v5[144] = [eCopy includeOsSignpost];
    minMAT = [eCopy minMAT];
    v7 = *(v5 + 19);
    *(v5 + 19) = minMAT;

    maxMAT = [eCopy maxMAT];
    v9 = *(v5 + 20);
    *(v5 + 20) = maxMAT;

    v5[146] = [eCopy scrubbed];
  }

  return v5;
}

+ (BOOL)_shouldScrub
{
  if (_shouldScrub_onceToken != -1)
  {
    +[DRSTailspinRequest _shouldScrub];
  }

  return (_shouldScrub_shouldScrub & 1) == 0;
}

uint64_t __34__DRSTailspinRequest__shouldScrub__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _shouldScrub_shouldScrub = result;
  return result;
}

- (id)_tailspinOptions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  minMAT = [(DRSTailspinRequest *)self minMAT];

  if (minMAT)
  {
    minMAT2 = [(DRSTailspinRequest *)self minMAT];
    [v3 setObject:minMAT2 forKeyedSubscript:*MEMORY[0x277D82CF0]];
  }

  maxMAT = [(DRSTailspinRequest *)self maxMAT];

  if (maxMAT)
  {
    maxMAT2 = [(DRSTailspinRequest *)self maxMAT];
    [v3 setObject:maxMAT2 forKeyedSubscript:*MEMORY[0x277D82CD8]];
  }

  if ([(DRSTailspinRequest *)self includeOsLog])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC0]];
  }

  if ([(DRSTailspinRequest *)self includeOsSignpost])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC8]];
  }

  if ([objc_opt_class() _shouldScrub])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82D18]];
  }

  if (([objc_opt_class() enforceMinTraceBufferDuration] & 1) == 0)
  {
    [v3 setObject:&unk_2847FF750 forKeyedSubscript:*MEMORY[0x277D82CF8]];
  }

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CB8]];
  v8 = MEMORY[0x277CCACA8];
  teamID = [(DRSRequest *)self teamID];
  issueCategory = [(DRSRequest *)self issueCategory];
  issueDescription = [(DRSRequest *)self issueDescription];
  v12 = [v8 stringWithFormat:@"%@/%@: %@", teamID, issueCategory, issueDescription];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D82D08]];

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_dumpTailspinToDirectory:(id)directory
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  directoryCopy = directory;
  v6 = [v4 alloc];
  requestID = [(DRSRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  v9 = [v6 initWithFormat:@"dpTailspin_%@.tailspin", uUIDString];

  v10 = [directoryCopy stringByAppendingPathComponent:v9];

  v11 = open([v10 UTF8String], 514, 438);
  if (v11 == -1)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = __error();
    v21 = [v19 initWithFormat:@"Could not open file handle for new tailspin due to error: %s", strerror(*v20)];
    v46 = 0;
    [(DRSRequest *)self updateToState:4352 errorDescription:v21 errorOut:&v46];
    _tailspinOptions = v46;

    defaultManager = DPLogHandle_TailspinError(v22);
    if (!os_signpost_enabled(defaultManager))
    {
LABEL_26:
      v39 = 0;
      goto LABEL_27;
    }

    errorDescription = [(DRSRequest *)self errorDescription];
    *buf = 138543362;
    v49 = errorDescription;
    v24 = "TailspinCreationFailure";
    v25 = "%{public}@";
    v26 = defaultManager;
    goto LABEL_16;
  }

  v12 = v11;
  _tailspinOptions = [(DRSTailspinRequest *)self _tailspinOptions];
  v14 = tailspin_dump_output_with_options_sync();
  close(v12);
  if ((v14 & 1) == 0)
  {
    v27 = DPLogHandle_TailspinError([(DRSRequest *)self updateToState:4352 errorDescription:@"Dumping tailspin failed" errorOut:0]);
    if (os_signpost_enabled(v27))
    {
      errorDescription2 = [(DRSRequest *)self errorDescription];
      *buf = 138543362;
      v49 = errorDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinCreationFailure", "%{public}@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v29 = [defaultManager fileExistsAtPath:v10];
    if (v29)
    {
      v45 = 0;
      v30 = [defaultManager removeItemAtPath:v10 error:&v45];
      errorDescription = v45;
      v31 = DPLogHandle_TailspinError(errorDescription);
      v32 = os_signpost_enabled(v31);
      if (v30)
      {
        if (v32)
        {
          *buf = 138543362;
          v49 = v10;
          _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTailspinCleanup", "Removed failed tailspin file: '%{public}@'", buf, 0xCu);
        }
      }

      else if (v32)
      {
        localizedDescription = [errorDescription localizedDescription];
        v37 = localizedDescription;
        v38 = @"Unknown";
        if (localizedDescription)
        {
          v38 = localizedDescription;
        }

        *buf = 138543618;
        v49 = v10;
        v50 = 2114;
        v51 = v38;
        _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTailspinCleanupFailed", "Failed to remove '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    errorDescription = DPLogHandle_TailspinError(v29);
    if (!os_signpost_enabled(errorDescription))
    {
LABEL_25:

      goto LABEL_26;
    }

    *buf = 138543362;
    v49 = v10;
    v24 = "FailedTailspinCleanupNotNecessary";
    v25 = "Nothing to remove at '%{public}@";
    v26 = errorDescription;
LABEL_16:
    _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v24, v25, buf, 0xCu);
    goto LABEL_25;
  }

  defaultManager = [[DRSLog alloc] _initWithLogPath:v10 transferOwnership:1];
  if (!defaultManager)
  {
    v33 = DPLogHandle_TailspinError(0);
    if (os_signpost_enabled(v33))
    {
      path = [0 path];
      requestID2 = [(DRSRequest *)self requestID];
      *buf = 138543618;
      v49 = path;
      v50 = 2114;
      v51 = requestID2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSizeError", "Could not lookup size of %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  logs = [(DRSRequest *)self logs];
  v17 = [logs count];

  if (v17)
  {
    logs2 = [(DRSRequest *)self logs];
    [logs2 addObject:defaultManager];
  }

  else
  {
    v47 = defaultManager;
    logs2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [(DRSRequest *)self setLogs:logs2];
  }

  v42 = DPLogHandle_Tailspin(v41);
  if (os_signpost_enabled(v42))
  {
    logPath = [(DRSRequest *)self logPath];
    requestID3 = [(DRSRequest *)self requestID];
    *buf = 138543618;
    v49 = logPath;
    v50 = 2114;
    v51 = requestID3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSaved", "Tailspin saved to %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
  }

  v39 = [(DRSRequest *)self updateToState:1 errorDescription:0 errorOut:0];
LABEL_27:

  return v39;
}

- (id)logType
{
  logs = [(DRSRequest *)self logs];
  v3 = [logs count];

  v4 = kDRLogType_Tailspin;
  if (v3 >= 2)
  {
    v4 = kDRLogType_MultipleLogs;
  }

  v5 = *v4;

  return v5;
}

- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled
{
  if (outcome)
  {
    v6 = DRSRequestStateForDampeningOutcome(outcome);

    return [(DRSRequest *)self updateToState:v6 errorDescription:0 errorOut:0];
  }

  else
  {

    return [(DRSTailspinRequest *)self _dumpTailspinToDirectory:work];
  }
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v26.receiver = self;
  v26.super_class = DRSTailspinRequest;
  if ([(DRSRequest *)&v26 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    includeOsSignpost = [(DRSTailspinRequest *)self includeOsSignpost];
    if (includeOsSignpost == [v5 includeOsSignpost] && (v7 = -[DRSTailspinRequest includeOsLog](self, "includeOsLog"), v7 == objc_msgSend(v5, "includeOsLog")) && (v8 = -[DRSTailspinRequest scrubbed](self, "scrubbed"), v8 == objc_msgSend(v5, "scrubbed")) && (-[DRSTailspinRequest minMAT](self, "minMAT"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "minMAT"), v10 = objc_claimAutoreleasedReturnValue(), IsNil = _oneIsNil(v9, v10), v10, v9, (IsNil & 1) == 0) && ((-[DRSTailspinRequest minMAT](self, "minMAT"), (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, -[DRSTailspinRequest minMAT](self, "minMAT"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "minMAT"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToNumber:", v15), v15, v14, v13, v16)) && (-[DRSTailspinRequest maxMAT](self, "maxMAT"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "maxMAT"), v18 = objc_claimAutoreleasedReturnValue(), v19 = _oneIsNil(v17, v18), v18, v17, (v19 & 1) == 0))
    {
      maxMAT = [(DRSTailspinRequest *)self maxMAT];
      if (maxMAT)
      {
        v23 = maxMAT;
        maxMAT2 = [(DRSTailspinRequest *)self maxMAT];
        maxMAT3 = [v5 maxMAT];
        v20 = [maxMAT2 isEqualToNumber:maxMAT3];
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

+ (BOOL)enforceMinTraceBufferDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = _minBufferDurationQueue(self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DRSTailspinRequest_enforceMinTraceBufferDuration__block_invoke;
  block[3] = &unk_27899EDD0;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)setEnforceMinTraceBufferDuration:(BOOL)duration
{
  v4 = +[DRSSystemProfile sharedInstance];
  isInternal = [v4 isInternal];

  if (isInternal)
  {
    v7 = _minBufferDurationQueue(v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DRSTailspinRequest_setEnforceMinTraceBufferDuration___block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    durationCopy = duration;
    dispatch_sync(v7, block);
  }
}

+ (void)resetEnforceMinTraceBufferDuration
{
  v2 = _minBufferDurationQueue(self);
  dispatch_sync(v2, &__block_literal_global_832);
}

@end