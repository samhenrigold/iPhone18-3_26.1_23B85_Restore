@interface TSCERemoteDataSourceFetcher
+ (id)fetcherWithCoordinator:(id)coordinator;
- (BOOL)canFetchKey:(id)key;
- (NSString)identifier;
- (TSCERemoteDataCoordinator)coordinator;
- (TSCERemoteDataSourceFetcher)init;
- (TSCERemoteDataSourceFetcher)initWithCoordinator:(id)coordinator;
- (id)addRemoteDataInterest:(id)interest;
- (id)fetchableKeysFromSet:(id)set;
- (id)removeRemoteDataInterest:(id)interest;
- (int64_t)dataKind;
- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion;
- (void)dealloc;
- (void)enqueueRequestForKeys:(id)keys;
- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion;
- (void)p_configureReachabilityWithHost:(id)host;
- (void)p_refreshSpecifiers;
- (void)requestCompleted;
- (void)requestLaunched;
- (void)resumeUpdating;
- (void)sendRequestForKeys:(id)keys;
- (void)stopUpdating;
@end

@implementation TSCERemoteDataSourceFetcher

+ (id)fetcherWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithCoordinator_(v4, v5, coordinatorCopy, v6);

  return v7;
}

- (TSCERemoteDataSourceFetcher)init
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher init]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 93, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", v14, "Do not call method", "[TSCERemoteDataSourceFetcher init]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, *MEMORY[0x277CBE658], v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (TSCERemoteDataSourceFetcher)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v36.receiver = self;
  v36.super_class = TSCERemoteDataSourceFetcher;
  v5 = [(TSCERemoteDataSourceFetcher *)&v36 init];
  if (v5)
  {
    v6 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    allRequestedKeys = v5->_allRequestedKeys;
    v5->_allRequestedKeys = v6;

    v8 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    newlyRequestedKeys = v5->_newlyRequestedKeys;
    v5->_newlyRequestedKeys = v8;

    objc_storeWeak(&v5->_coordinator, coordinatorCopy);
    v13 = objc_msgSend_reachabilityCheckHost(v5, v10, v11, v12);
    v5->_offline = 0;
    v5->_state = 0;
    v5->_requestsInFlight = 0;
    objc_msgSend_p_configureReachabilityWithHost_(v5, v14, v13, v15);
    v19 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v16, v17, v18);
    objc_storeStrong(&v5->_lastRequestDate, v19);
    objc_storeStrong(&v5->_lastFullRefreshDate, v19);
    v20 = MEMORY[0x277CCACA8];
    v24 = objc_msgSend_identifier(v5, v21, v22, v23);
    v27 = objc_msgSend_stringWithFormat_(v20, v25, @"Remote Data Fetcher: %@", v26, v24);
    v28 = v27;
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    v33 = dispatch_queue_create(v32, 0);
    queue = v5->_queue;
    v5->_queue = v33;
  }

  return v5;
}

- (void)p_configureReachabilityWithHost:(id)host
{
  hostCopy = host;
  objc_initWeak(&location, self);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_2213DDD60;
  v42 = &unk_278464818;
  objc_copyWeak(&v43, &location);
  v5 = MEMORY[0x223DA1C10](&v39);
  v8 = objc_msgSend_networkReachabilityWithHostName_(MEMORY[0x277D81270], v6, hostCopy, v7, v39, v40, v41, v42);
  objc_msgSend_setServerReachability_(self, v9, v8, v10);

  v14 = objc_msgSend_serverReachability(self, v11, v12, v13);
  objc_msgSend_setReachabilityUpdatedBlock_(v14, v15, v5, v16);

  v20 = objc_msgSend_networkReachabilityForInternetConnection(MEMORY[0x277D81270], v17, v18, v19);
  objc_msgSend_setInternetReachability_(self, v21, v20, v22);

  v26 = objc_msgSend_internetReachability(self, v23, v24, v25);
  objc_msgSend_setReachabilityUpdatedBlock_(v26, v27, v5, v28);

  v32 = objc_msgSend_internetReachability(self, v29, v30, v31);
  objc_msgSend_enableNotifier(v32, v33, v34, v35);

  v36 = MEMORY[0x277D81270];
  v37 = dispatch_get_global_queue(0, 0);
  objc_msgSend_internetReachabilityStatusWithQueue_completion_(v36, v38, v37, v5);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = TSCERemoteDataSourceFetcher;
  [(TSCERemoteDataSourceFetcher *)&v4 dealloc];
}

- (id)addRemoteDataInterest:(id)interest
{
  interestCopy = interest;
  v7 = objc_msgSend_fetchableKeysFromSet_(self, v5, interestCopy, v6);
  v11 = objc_msgSend_queue(self, v8, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213DE1D4;
  v15[3] = &unk_27845FEF0;
  v12 = v7;
  v16 = v12;
  selfCopy = self;
  dispatch_async(v11, v15);

  v13 = v12;
  return v12;
}

- (id)removeRemoteDataInterest:(id)interest
{
  interestCopy = interest;
  v7 = objc_msgSend_fetchableKeysFromSet_(self, v5, interestCopy, v6);
  v11 = objc_msgSend_queue(self, v8, v9, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2213DE3D8;
  v16[3] = &unk_27845FEF0;
  v16[4] = self;
  v12 = v7;
  v17 = v12;
  dispatch_async(v11, v16);

  v13 = v17;
  v14 = v12;

  return v12;
}

- (void)enqueueRequestForKeys:(id)keys
{
  keysCopy = keys;
  v8 = objc_msgSend_queue(self, v5, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213DE538;
  v10[3] = &unk_27845FEF0;
  v10[4] = self;
  v11 = keysCopy;
  v9 = keysCopy;
  dispatch_async(v8, v10);
}

- (void)requestLaunched
{
  v5 = objc_msgSend_requestsInFlight(self, a2, v2, v3);
  objc_msgSend_setRequestsInFlight_(self, v6, v5 + 1, v7);
  if (__C != -1)
  {
    sub_2216F7960();
  }
}

- (void)requestCompleted
{
  v5 = objc_msgSend_requestsInFlight(self, a2, v2, v3);
  objc_msgSend_setRequestsInFlight_(self, v6, v5 - 1, v7);
  if (objc_msgSend_requestsInFlight(self, v8, v9, v10))
  {
    if (__C != -1)
    {
      sub_2216F7974();
    }
  }

  else
  {
    if (__C != -1)
    {
      sub_2216F7988();
    }

    if (objc_msgSend_state(self, v11, v12, v13) == 3)
    {
      objc_msgSend_setState_(self, v14, 1, v15);
      v19 = objc_msgSend_newlyRequestedKeys(self, v16, v17, v18);
      v23 = objc_msgSend_count(v19, v20, v21, v22);

      if (v23)
      {

        objc_msgSend_p_refreshSpecifiers(self, v24, v25, v26);
      }
    }
  }
}

- (void)p_refreshSpecifiers
{
  if (objc_msgSend_offline(self, a2, v2, v3))
  {
    if (__C != -1)
    {
      sub_2216F7A3C();
    }

    return;
  }

  if (objc_msgSend_state(self, v5, v6, v7) == 3)
  {
    if (__C != -1)
    {
      sub_2216F7A28();
    }

    return;
  }

  if (objc_msgSend_state(self, v8, v9, v10))
  {
    if (__C != -1)
    {
      sub_2216F799C();
    }

    v14 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12, v13);
    objc_msgSend_minimumTimeBetweenRequests(self, v15, v16, v17);
    v19 = v18;
    v23 = objc_msgSend_lastRequestDate(self, v20, v21, v22);
    objc_msgSend_timeIntervalSinceDate_(v14, v24, v23, v25);
    v27 = v19 - v26;

    if (v27 <= 0.0)
    {
      objc_msgSend_setState_(self, v28, 3, v30);
      v49 = objc_msgSend_lastFullRefreshDate(self, v46, v47, v48);
      objc_msgSend_timeIntervalSinceDate_(v14, v50, v49, v51);
      v53 = v52;
      objc_msgSend_recommendedTimeBetweenRequests(self, v54, v55, v56);
      v58 = v57;

      if (v53 >= v58)
      {
        if (__C != -1)
        {
          sub_2216F79B0();
        }

        objc_msgSend_setDoFullRefresh_(self, v59, 1, v61);
      }

      v31 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v59, v60, v61);
      v65 = objc_msgSend_newlyRequestedKeys(self, v62, v63, v64);
      v69 = objc_msgSend_count(v65, v66, v67, v68);

      if (v69)
      {
        if (__C != -1)
        {
          sub_2216F79C4();
        }

        v73 = objc_msgSend_newlyRequestedKeys(self, v70, v71, v72);
        objc_msgSend_insertSpecifiersFromSet_(v31, v74, v73, v75);

        v79 = objc_msgSend_newlyRequestedKeys(self, v76, v77, v78);
        objc_msgSend_removeAllSpecifiers(v79, v80, v81, v82);
      }

      if (objc_msgSend_doFullRefresh(self, v70, v71, v72))
      {
        if (objc_msgSend_containsColdSpecifiers(v31, v83, v84, v85))
        {
          v89 = objc_msgSend_allRequestedKeys(self, v86, v87, v88);
          v93 = objc_msgSend_hotSpecifierSet(v89, v90, v91, v92);
          objc_msgSend_insertSpecifiersFromSet_(v31, v94, v93, v95);
        }

        else
        {
          v89 = objc_msgSend_allRequestedKeys(self, v86, v87, v88);
          objc_msgSend_insertSpecifiersFromSet_(v31, v96, v89, v97);
        }

        objc_msgSend_setDoFullRefresh_(self, v98, 0, v99);
        objc_msgSend_setLastFullRefreshDate_(self, v100, v14, v101);
        if (__C != -1)
        {
          sub_2216F79D8();
        }
      }

      if (objc_msgSend_count(v31, v83, v84, v85))
      {
        objc_msgSend_setLastRequestDate_(self, v102, v14, v103);
        if (__C != -1)
        {
          sub_2216F79EC();
        }

        objc_msgSend_sendRequestForKeys_(self, v104, v31, v105);
      }

      else
      {
        objc_msgSend_setState_(self, v102, 1, v103);
      }
    }

    else
    {
      v31 = objc_msgSend_newlyRequestedKeys(self, v28, v29, v30);
      if (objc_msgSend_count(v31, v32, v33, v34))
      {
        v38 = objc_msgSend_state(self, v35, v36, v37);

        if (v38 != 2)
        {
          if (__C != -1)
          {
            sub_2216F7A00();
          }

          objc_msgSend_setState_(self, v39, 2, v40);
          v41 = dispatch_time(0, ((v27 + 0.1) * 1000000000.0));
          v45 = objc_msgSend_queue(self, v42, v43, v44);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2213DEC9C;
          block[3] = &unk_27845E3F8;
          block[4] = self;
          dispatch_after(v41, v45, block);
        }

        goto LABEL_39;
      }
    }

LABEL_39:
    return;
  }

  if (__C != -1)
  {
    sub_2216F7A14();
  }
}

- (void)resumeUpdating
{
  if (objc_msgSend_state(self, a2, v2, v3))
  {
    if (objc_msgSend_state(self, v5, v6, v7) == 1 && (objc_msgSend_earlyRefreshRequested(self, v8, v9, v10) & 1) == 0)
    {
      v14 = objc_msgSend_newlyRequestedKeys(self, v11, v12, v13);
      v18 = objc_msgSend_count(v14, v15, v16, v17);

      if (v18)
      {
        if (__C != -1)
        {
          sub_2216F7A64();
        }

        objc_msgSend_setEarlyRefreshRequested_(self, v19, 1, v20);
        v21 = dispatch_time(0, 250000000);
        v25 = objc_msgSend_queue(self, v22, v23, v24);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = sub_2213DF14C;
        v54[3] = &unk_27845E3F8;
        v54[4] = self;
        dispatch_after(v21, v25, v54);
      }
    }
  }

  else
  {
    if (__C != -1)
    {
      sub_2216F7A78();
    }

    objc_msgSend_setState_(self, v5, 1, v7);
    v29 = objc_msgSend_internetReachability(self, v26, v27, v28);
    objc_msgSend_disableNotifier(v29, v30, v31, v32);

    v36 = objc_msgSend_serverReachability(self, v33, v34, v35);
    objc_msgSend_enableNotifier(v36, v37, v38, v39);

    v43 = objc_msgSend_queue(self, v40, v41, v42);
    v44 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v43);
    timer = self->_timer;
    self->_timer = v44;

    objc_msgSend_recommendedTimeBetweenRequests(self, v46, v47, v48);
    v50 = (v49 * 1000000000.0);
    v51 = self->_timer;
    v52 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v51, v52, v50, 3 * v50);
    v53 = self->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2213DF100;
    handler[3] = &unk_27845E3F8;
    handler[4] = self;
    dispatch_source_set_event_handler(v53, handler);
    dispatch_resume(self->_timer);
  }
}

- (void)stopUpdating
{
  if (objc_msgSend_state(self, a2, v2, v3))
  {
    objc_msgSend_setState_(self, v5, 0, v6);
    if (__C != -1)
    {
      sub_2216F7AA0();
    }

    v10 = objc_msgSend_serverReachability(self, v7, v8, v9);
    objc_msgSend_disableNotifier(v10, v11, v12, v13);

    v17 = objc_msgSend_internetReachability(self, v14, v15, v16);
    objc_msgSend_enableNotifier(v17, v18, v19, v20);

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (int64_t)dataKind
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher dataKind]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 418, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCERemoteDataSourceFetcher dataKind]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (NSString)identifier
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERemoteDataSourceFetcher identifier]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 423, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCERemoteDataSourceFetcher identifier]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)canFetchKey:(id)key
{
  keyCopy = key;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataSourceFetcher canFetchKey:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v7, v10, 446, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v23 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v20, "[TSCERemoteDataSourceFetcher canFetchKey:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (id)fetchableKeysFromSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v5, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213DF844;
  v15[3] = &unk_278464840;
  v15[4] = self;
  v9 = v8;
  v16 = v9;
  objc_msgSend_enumerateSpecifiersWithBlock_(setCopy, v10, v15, v11);
  v12 = v16;
  v13 = v9;

  return v9;
}

- (void)sendRequestForKeys:(id)keys
{
  keysCopy = keys;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataSourceFetcher sendRequestForKeys:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v7, v10, 465, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v23 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v20, "[TSCERemoteDataSourceFetcher sendRequestForKeys:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (void)fetchQuotesWithTickers:(id)tickers completion:(id)completion
{
  tickersCopy = tickers;
  completionCopy = completion;
  v7 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataSourceFetcher fetchQuotesWithTickers:completion:]", v9);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v12);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v10, v13, 469, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v26 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v25, v23, "[TSCERemoteDataSourceFetcher fetchQuotesWithTickers:completion:]");
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (void)autoCompleteQuotesWithInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  v7 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERemoteDataSourceFetcher autoCompleteQuotesWithInput:completion:]", v9);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSourceFetcher.mm", v12);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v10, v13, 473, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v26 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v25, v23, "[TSCERemoteDataSourceFetcher autoCompleteQuotesWithInput:completion:]");
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (TSCERemoteDataCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end