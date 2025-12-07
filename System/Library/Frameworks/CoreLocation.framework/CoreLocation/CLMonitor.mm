@interface CLMonitor
+ (BOOL)isMonitorNameInUse:(id)use;
+ (id)sharedMonitorSet;
+ (void)_requestMonitorWithConfiguration:(id)configuration locationManager:(id)manager completion:(id)completion;
+ (void)addMonitorName:(id)name;
+ (void)removeMonitorName:(id)name;
+ (void)requestMonitorWithConfiguration:(CLMonitorConfiguration *)config completion:(void *)completionHandler;
- (CLMonitor)initWithLedgerName:(id)name path:(id)path onSilo:(id)silo authIdentity:(id)identity locationManager:(id)manager handler:(id)handler;
- (CLMonitoringRecord)monitoringRecordForIdentifier:(NSString *)identifier;
- (NSArray)monitoredIdentifiers;
- (id)_getMonitoredIdentifiers;
- (id)_getMonitoringRecords;
- (id)getMonitorConfiguration;
- (unint64_t)hash;
- (void)_addConditionForMonitoring:(id)monitoring identifier:(id)identifier options:(unint64_t)options assumedState:(unint64_t)state;
- (void)_removeConditionFromMonitoringWithIdentifier:(id)identifier;
- (void)addConditionForMonitoring:(id)monitoring identifier:(id)identifier options:(unint64_t)options assumedState:(unint64_t)state;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessageMonitor:(shared_ptr<CLConnectionMessage>)monitor;
- (void)manageConnection;
- (void)removeConditionFromMonitoringWithIdentifier:(NSString *)identifier;
- (void)setMonitoringEventHandler:(id)handler;
- (void)updateEvent:(id)event forIdentifier:(id)identifier;
- (void)updateEventReceivedFromDaemon:(id)daemon;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
@end

@implementation CLMonitor

- (CLMonitor)initWithLedgerName:(id)name path:(id)path onSilo:(id)silo authIdentity:(id)identity locationManager:(id)manager handler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = CLMonitor;
  v15 = [(CLMonitor *)&v64 init];
  if (v15)
  {
    v16 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v16, &v63);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 68290307;
      v68 = 2082;
      v69 = "";
      v70 = 2082;
      v71 = "activity";
      v72 = 2114;
      v73 = v21;
      v74 = 2050;
      v75 = v15;
      v76 = 2114;
      nameCopy = name;
      v78 = 2113;
      identityCopy = identity;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}@, authIdentity:%{private, location:escape_only}@}", buf, 0x44u);
    }

    v15->_name = objc_msgSend_copy(name, v18, v19, v20);
    v15->_silo = silo;
    objc_msgSend_setManager_(v15, v22, manager, v23);
    v24 = path != 0;
    v27 = objc_msgSend_objectForKeyedSubscript_(identity, v25, @"kCLMonitorIdentityTokenKey", v26);
    v30 = objc_msgSend_objectForKeyedSubscript_(identity, v28, @"kCLMonitorLedgerAccessKey", v29);
    v34 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v31, v32, v33);
    v66[0] = name;
    v65[0] = @"kCLMonitorLedgerNameKey";
    v65[1] = @"kCLMonitorLedgerProcessNameKey";
    v38 = objc_msgSend_manager(v15, v35, v36, v37);
    v42 = objc_msgSend_processName(v38, v39, v40, v41);
    v65[2] = @"kCLMonitorDispatchSiloKey";
    silo = v15->_silo;
    v66[1] = v42;
    v66[2] = silo;
    v65[3] = @"kCLMonitorIdentityTokenKey";
    v65[4] = @"kCLMonitorLedgerAccessKey";
    v66[3] = v27;
    v66[4] = v30;
    v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v44, v66, v65, 5);
    objc_msgSend_addEntriesFromDictionary_(v34, v46, v45, v47);
    if (path)
    {
      v51 = objc_msgSend_copy(path, v48, v49, v50);
      objc_msgSend_setObject_forKeyedSubscript_(v34, v52, v51, @"kCLMonitorLedgerPathKey");
    }

    objc_msgSend_setIdentityToken_(v15, v48, v27, v50);
    objc_msgSend_setStorageToken_(v15, v53, v30, v54);
    v55 = [CLConditionLedger alloc];
    v15->_conditionLedger = objc_msgSend_initWithStoreType_domain_monitorConfiguration_(v55, v56, v24, v24, v34);
    objc_msgSend_setMonitoringEventHandler_(v15, v57, handler, v58);
    objc_msgSend_createConnection(v15, v59, v60, v61);
    os_activity_scope_leave(&v63);
  }

  return v15;
}

- (void)dealloc
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v13 = objc_msgSend_name(self, v10, v11, v12);
    v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
    *buf = 68290050;
    *&buf[4] = 0;
    *v38 = 2082;
    *&v38[2] = "";
    *&v38[10] = 2082;
    *&v38[12] = "activity";
    *&v38[20] = 2114;
    *&v38[22] = v9;
    v39 = 2050;
    selfCopy = self;
    v41 = 2082;
    v42 = v17;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v18 = objc_msgSend_manager(self, v6, v7, v8);
  objc_msgSend_removeIdentifiableClient_(v18, v19, self, v20);
  _Block_release(self->_eventHandler);
  self->_eventHandler = 0;
  objc_msgSend_setIdentityToken_(self, v21, 0, v22);
  objc_msgSend_setStorageToken_(self, v23, 0, v24);

  self->_conditionLedger = 0;
  objc_msgSend_setManager_(self, v25, 0, v26);
  objc_msgSend_removeMonitorName_(CLMonitor, v27, self->_name, v28);

  self->_name = 0;
  *buf = 0;
  *v38 = buf;
  *&v38[8] = 0x2020000000;
  silo = self->_silo;
  *&v38[16] = self->_locationdConnection;
  v33 = objc_msgSend_queue(silo, v30, v31, v32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9D0B34;
  block[3] = &unk_1E753E880;
  block[4] = silo;
  block[5] = buf;
  dispatch_async(v33, block);

  self->_silo = 0;
  v34.receiver = self;
  v34.super_class = CLMonitor;
  [(CLMonitor *)&v34 dealloc];
  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_name(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
}

- (NSArray)monitoredIdentifiers
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    v22 = 2114;
    v23 = v9;
    v24 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_assertInside(self->_silo, v6, v7, v8);
  v13 = objc_msgSend_allMonitoringIdentifiers(self->_conditionLedger, v10, v11, v12);
  os_activity_scope_leave(&v15);
  return v13;
}

- (id)_getMonitoredIdentifiers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9D0FA8;
  v16 = sub_19B9D0FB8;
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v8 = objc_msgSend_queue(self->_silo, v5, v6, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9D0FC4;
  v11[3] = &unk_1E753E880;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v8, v11);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)_getMonitoringRecords
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9D0FA8;
  v16 = sub_19B9D0FB8;
  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v8 = objc_msgSend_queue(self->_silo, v5, v6, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9D10F4;
  v11[3] = &unk_1E753E880;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v8, v11);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)setMonitoringEventHandler:(id)handler
{
  v4 = _Block_copy(handler);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  self->_eventHandler = v4;
}

- (void)addConditionForMonitoring:(id)monitoring identifier:(id)identifier options:(unint64_t)options assumedState:(unint64_t)state
{
  v91 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 68290306;
    *&buf[4] = 0;
    v79 = 2082;
    v80 = "";
    v81 = 2082;
    v82 = "activity";
    v83 = 2114;
    monitoringCopy = v17;
    v85 = 2050;
    selfCopy = self;
    v87 = 2114;
    identifierCopy = identifier;
    v89 = 2050;
    stateCopy = state;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, assumedState:%{public, location:CLMonitoringState}lld}", buf, 0x44u);
  }

  objc_msgSend_assertInside(self->_silo, v14, v15, v16);
  v20 = objc_msgSend_monitoringRecordForIdentifier_(self->_conditionLedger, v18, identifier, v19);
  v24 = v20;
  if (!v20)
  {
LABEL_16:
    v45 = [CLMonitoringRecord alloc];
    inited = objc_msgSend_initRecordWithCondition_identifier_options_initialState_(v45, v46, monitoring, identifier, options, state);
    objc_msgSend_addRecordForMonitoring_identifier_persist_(self->_conditionLedger, v48, inited, identifier, 1);
    if (objc_msgSend_identityToken(self, v49, v50, v51))
    {
      if (self->_locationdConnection)
      {
        v55 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v52, v53, v54);
        v59 = objc_msgSend_identityToken(self, v56, v57, v58);
        objc_msgSend_setObject_forKeyedSubscript_(v55, v60, v59, @"kCLConnectionMessageClientKeyForIdentityValidation");
        objc_msgSend_setObject_forKeyedSubscript_(v55, v61, inited, @"kCLConnectionMessageMonitorMonitoringRecordKey");
        MonitorConfiguration = objc_msgSend_getMonitorConfiguration(self, v62, v63, v64);
        objc_msgSend_addEntriesFromDictionary_(v55, v66, MonitorConfiguration, v67);
        operator new();
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v68 = qword_1ED519090;
      if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v76 = objc_msgSend_UTF8String(identifier, v73, v74, v75);
      *buf = 68289282;
      v79 = 2082;
      v80 = "";
      v81 = 2082;
      v82 = v76;
      v33 = "{msg%{public}.0s:#monitor No valid connection to locationd to add for monitoring, identifier:%{public, location:escape_only}s}";
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v68 = qword_1ED519090;
      if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v72 = objc_msgSend_UTF8String(identifier, v69, v70, v71);
      *buf = 68289282;
      v79 = 2082;
      v80 = "";
      v81 = 2082;
      v82 = v72;
      v33 = "{msg%{public}.0s:#monitor Client is not authorized to monitor just yet., identifier:%{public, location:escape_only}s}";
    }

    v34 = v68;
    v35 = 28;
    goto LABEL_28;
  }

  v25 = objc_msgSend_condition(v20, v21, v22, v23);
  if (!objc_msgSend_isEqual_(v25, v26, monitoring, v27))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v36 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_UTF8String(identifier, v37, v38, v39);
      v44 = objc_msgSend_condition(v24, v41, v42, v43);
      *buf = 68289539;
      *&buf[4] = 0;
      v79 = 2082;
      v80 = "";
      v81 = 2082;
      v82 = v40;
      v83 = 2113;
      monitoringCopy = v44;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor removing currently monitored condition, identifier:%{public, location:escape_only}s, toBeRemoved:%{private, location:escape_only}@}", buf, 0x26u);
    }

    objc_msgSend_removeConditionFromMonitoringWithIdentifier_(self, v37, identifier, v39);
    goto LABEL_16;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v28 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_msgSend_UTF8String(identifier, v29, v30, v31);
    *buf = 68289539;
    *&buf[4] = 0;
    v79 = 2082;
    v80 = "";
    v81 = 2082;
    v82 = v32;
    v83 = 2113;
    monitoringCopy = monitoring;
    v33 = "{msg%{public}.0s:#monitor given identifier and condition is currently monitored, identifier:%{public, location:escape_only}s, condition:%{private, location:escape_only}@}";
    v34 = v28;
    v35 = 38;
LABEL_28:
    _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
  }

LABEL_29:
  os_activity_scope_leave(&state);
}

- (void)_addConditionForMonitoring:(id)monitoring identifier:(id)identifier options:(unint64_t)options assumedState:(unint64_t)state
{
  objc_initWeak(&location, self);
  v14 = objc_msgSend_queue(self->_silo, v11, v12, v13);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9D18D8;
  v15[3] = &unk_1E753E8A8;
  objc_copyWeak(v16, &location);
  v15[4] = monitoring;
  v15[5] = identifier;
  v16[1] = options;
  v16[2] = state;
  dispatch_async(v14, v15);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)removeConditionFromMonitoringWithIdentifier:(NSString *)identifier
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68290050;
    *&buf[4] = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2082;
    v48 = "activity";
    v49 = 2114;
    v50 = v11;
    v51 = 2050;
    selfCopy = self;
    v53 = 2114;
    v54 = identifier;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@}", buf, 0x3Au);
  }

  objc_msgSend_assertInside(self->_silo, v8, v9, v10);
  objc_msgSend_removeRecordFromMonitoringWithIdentifier_(self->_conditionLedger, v12, identifier, v13);
  if (objc_msgSend_identityToken(self, v14, v15, v16))
  {
    if (self->_locationdConnection)
    {
      v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v17, v18, v19);
      v24 = objc_msgSend_identityToken(self, v21, v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v20, v25, v24, @"kCLConnectionMessageClientKeyForIdentityValidation");
      objc_msgSend_setObject_forKeyedSubscript_(v20, v26, identifier, @"kCLConnectionMessageMonitorIdentifierKey");
      MonitorConfiguration = objc_msgSend_getMonitorConfiguration(self, v27, v28, v29);
      objc_msgSend_addEntriesFromDictionary_(v20, v31, MonitorConfiguration, v32);
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v33 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_msgSend_UTF8String(identifier, v39, v40, v41);
      *buf = 68289282;
      *&buf[4] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2082;
      v48 = v42;
      v38 = "{msg%{public}.0s:#monitor No valid connection to locationd to remove from monitoring, identifier:%{public, location:escape_only}s}";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v33 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_msgSend_UTF8String(identifier, v34, v35, v36);
      *buf = 68289282;
      *&buf[4] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2082;
      v48 = v37;
      v38 = "{msg%{public}.0s:#monitor Client is not authorized to remove from monitor just yet., identifier:%{public, location:escape_only}s}";
LABEL_16:
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, v38, buf, 0x1Cu);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)_removeConditionFromMonitoringWithIdentifier:(id)identifier
{
  objc_initWeak(&location, self);
  v8 = objc_msgSend_queue(self->_silo, v5, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9D1E8C;
  block[3] = &unk_1E753E8D0;
  objc_copyWeak(&v10, &location);
  block[4] = identifier;
  dispatch_async(v8, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)updateEvent:(id)event forIdentifier:(id)identifier
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68290306;
    *&buf[4] = 0;
    v35 = 2082;
    v36 = "";
    v37 = 2082;
    identifierCopy3 = "activity";
    v39 = 2114;
    eventCopy3 = v11;
    v41 = 2050;
    selfCopy = self;
    v43 = 2114;
    identifierCopy = identifier;
    v45 = 2114;
    eventCopy = event;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, event:%{public, location:escape_only}@}", buf, 0x44u);
  }

  objc_msgSend_updateEvent_forIdentifier_(self->_conditionLedger, v10, event, identifier);
  if (objc_msgSend_identityToken(self, v12, v13, v14))
  {
    if (self->_locationdConnection)
    {
      v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17);
      v22 = objc_msgSend_identityToken(self, v19, v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v23, v22, @"kCLConnectionMessageClientKeyForIdentityValidation");
      objc_msgSend_setObject_forKeyedSubscript_(v18, v24, event, @"kCLConnectionMessageMonitorEventKey");
      MonitorConfiguration = objc_msgSend_getMonitorConfiguration(self, v25, v26, v27);
      objc_msgSend_addEntriesFromDictionary_(v18, v29, MonitorConfiguration, v30);
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v31 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      identifierCopy3 = identifier;
      v39 = 2113;
      eventCopy3 = event;
      v32 = "{msg%{public}.0s:#monitor No valid connection to locationd to update event, identifier:%{public, location:escape_only}@, event:%{private, location:escape_only}@}";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v31 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      identifierCopy3 = identifier;
      v39 = 2113;
      eventCopy3 = event;
      v32 = "{msg%{public}.0s:#monitor Client is not authorized just yet., identifier:%{public, location:escape_only}@, event:%{private, location:escape_only}@}";
LABEL_16:
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x26u);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)updateEventReceivedFromDaemon:(id)daemon
{
  v118 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, daemon, v3);
  Event = objc_msgSend_lastEvent(daemon, v6, v7, v8);
  v13 = objc_msgSend_identifier(Event, v10, v11, v12);
  v16 = objc_msgSend_monitoringRecordForIdentifier_(self, v14, v13, v15);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v111[0] = 68289539;
    v111[1] = 0;
    v112 = 2082;
    v113 = "";
    v114 = 2113;
    daemonCopy = daemon;
    v116 = 2113;
    v117 = v16;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor updatingEventReceivedFromDaemon, newRecordReceivedFromDaemon:%{private, location:escape_only}@, existingRecord:%{private, location:escape_only}@}", v111, 0x26u);
  }

  v21 = objc_msgSend_monitoredIdentifiers(self, v18, v19, v20);
  if (objc_msgSend_containsObject_(v21, v22, v13, v23) && (v27 = objc_msgSend_condition(daemon, v24, v25, v26), v31 = objc_msgSend_condition(v16, v28, v29, v30), objc_msgSend_isEqual_(v27, v32, v31, v33)))
  {
    v35 = objc_msgSend_lastEvent(daemon, v24, v34, v26);
    if (objc_msgSend_state(v35, v36, v37, v38))
    {
      v42 = objc_msgSend_lastEvent(daemon, v39, v40, v41);
      v46 = objc_msgSend_state(v42, v43, v44, v45);
      v50 = objc_msgSend_lastEvent(v16, v47, v48, v49);
      v54 = v46 != objc_msgSend_state(v50, v51, v52, v53);
    }

    else
    {
      v54 = 0;
    }

    v55 = objc_msgSend_lastEvent(daemon, v39, v40, v41);
    v59 = objc_msgSend_refinement(v55, v56, v57, v58);
    v63 = objc_msgSend_lastEvent(v16, v60, v61, v62);
    v67 = objc_msgSend_refinement(v63, v64, v65, v66);
    isEqual = objc_msgSend_isEqual_(v59, v68, v67, v69);
    if (v54 || !isEqual)
    {
      v108 = objc_msgSend_lastEvent(daemon, v71, v72, v73);
    }

    else
    {
      v74 = [CLMonitoringEvent alloc];
      v78 = objc_msgSend_lastEvent(v16, v75, v76, v77);
      v82 = objc_msgSend_refinement(v78, v79, v80, v81);
      v86 = objc_msgSend_lastEvent(v16, v83, v84, v85);
      v90 = objc_msgSend_state(v86, v87, v88, v89);
      v94 = objc_msgSend_lastEvent(v16, v91, v92, v93);
      v98 = objc_msgSend_date(v94, v95, v96, v97);
      v102 = objc_msgSend_lastEvent(daemon, v99, v100, v101);
      v106 = objc_msgSend_diagnosticMask(v102, v103, v104, v105);
      v108 = objc_msgSend_initWithIdentifier_refinement_state_date_diagnostics_(v74, v107, v13, v82, v90, v98, v106);
    }

    v109 = v108;
    (*(self->_eventHandler + 2))();
    objc_msgSend_updateEvent_forIdentifier_(self, v110, v109, v13);
  }

  else
  {
    objc_msgSend_removeConditionFromMonitoringWithIdentifier_(self, v24, v13, v26);
  }
}

- (CLMonitoringRecord)monitoringRecordForIdentifier:(NSString *)identifier
{
  objc_msgSend_assertInside(self->_silo, a2, identifier, v3);
  conditionLedger = self->_conditionLedger;

  return objc_msgSend_monitoringRecordForIdentifier_(conditionLedger, v6, identifier, v7);
}

- (void)manageConnection
{
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (objc_msgSend_identityToken(self, v5, v6, v7))
  {

    objc_msgSend_createConnection(self, v8, v9, v10);
  }

  else
  {

    objc_msgSend_destroyConnection(self, v8, v9, v10);
  }
}

- (void)createConnection
{
  v12 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (!self->_locationdConnection)
  {
    if (objc_msgSend_identityToken(self, v5, v6, v7))
    {
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Client is not authorized just yet to create connection}", buf, 0x12u);
    }
  }
}

- (void)destroyConnection
{
  v12 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  locationdConnection = self->_locationdConnection;
  if (locationdConnection)
  {
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2050;
      v11 = locationdConnection;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor destroying connection, connection:%{public}p}", v7, 0x1Cu);
    }
  }
}

- (void)handleMessageMonitor:(shared_ptr<CLConnectionMessage>)monitor
{
  var0 = monitor.var0;
  v29 = *MEMORY[0x1E69E9840];
  v5 = CLConnectionMessage::name(*monitor.var0);
  if (*(v5 + 23) < 0 && *(v5 + 8) == 46 && !memcmp(*v5, "Monitor/kCLConnectionMessageMonitorUpdateEvent", 0x2EuLL))
  {
    v12 = *var0;
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v17 = objc_msgSend_setWithObjects_(v13, v15, v14, v16, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v12, v17);
    v21 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v19, @"kCLConnectionMessageMonitorMonitoringRecordKey", v20);

    MEMORY[0x1EEE66B58](self, sel_updateEventReceivedFromDaemon_, v21, v22);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v7 = CLConnectionMessage::name(*var0);
      v8 = *(v7 + 23) >= 0 ? v7 : *v7;
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = v8;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unsupported message received, message:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v9 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v10 = CLConnectionMessage::name(*var0);
      if (*(v10 + 23) >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = *v10;
      }

      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = v11;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor unsupported message received", "{msg%{public}.0s:#monitor unsupported message received, message:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

- (id)getMonitorConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_allMonitoringRecordsByIdentifier(self->_conditionLedger, v4, v5, v6);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v8, v7, @"kCLConnectionMessageMonitorLedger");
  v12 = objc_msgSend_identityToken(self, v9, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v13, v12, @"kCLConnectionMessageMonitorIdentityTokenKey");
  v17 = objc_msgSend_name(self, v14, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, @"kCLConnectionMessageMonitorNameKey");
  v22 = objc_msgSend_manager(self, v19, v20, v21);
  v26 = objc_msgSend_processName(v22, v23, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v27, v26, @"kCLConnectionMessageMonitorProcessNameKey");

  return v3;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9D30F4;
  v5[3] = &unk_1E753D098;
  v5[4] = self;
  v5[5] = token;
  v5[6] = storageToken;
  objc_msgSend_async_(silo, a2, v5, storageToken);
}

+ (void)_requestMonitorWithConfiguration:(id)configuration locationManager:(id)manager completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v13 = objc_msgSend_name(configuration, v10, v11, v12);
  if ((sub_19B8B7F14(v13, v14, v15, v16) & 1) == 0)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CLMonitor.mm", 507, @"Monitor name is not valid");
  }

  if (!completion)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CLMonitor.mm", 510, @"Monitor completion handler is nil");
  }

  if (!objc_msgSend_eventHandler(configuration, v17, v18, v19))
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v20, v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CLMonitor.mm", 513, @"Monitoring event handler is nil");
  }

  v23 = objc_msgSend_name(configuration, v20, v21, v22);
  if (objc_msgSend_isMonitorNameInUse_(CLMonitor, v24, v23, v25))
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v27, v28);
    v52 = objc_msgSend_name(configuration, v49, v50, v51);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v53, a2, self, @"CLMonitor.mm", 516, @"Monitor named %@ is already in use", v52);
  }

  if (!manager)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v54 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "locationManager";
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v55 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "locationManager";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLLocationManager must not be nil", "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v56 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "locationManager";
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLMonitor.mm", 518, "+[CLMonitor _requestMonitorWithConfiguration:locationManager:completion:]");
    __break(1u);
  }

  if ((objc_msgSend_isMasquerading(manager, v26, v27, v28) & 1) == 0 && (sub_19B8B8818() & 1) == 0)
  {
    NSLog(&cfstr_ErrorClmonitor.isa);
  }

  objc_msgSend_setManager_(configuration, v29, manager, v30);
  objc_msgSend_setVendingHandler_(configuration, v31, completion, v32);
  v36 = objc_msgSend_name(configuration, v33, v34, v35);
  objc_msgSend_addMonitorName_(CLMonitor, v37, v36, v38);
  configurationCopy = configuration;
  objc_msgSend_addIdentifiableClient_(manager, v40, configurationCopy, v41);

  objc_sync_exit(self);
}

+ (void)requestMonitorWithConfiguration:(CLMonitorConfiguration *)config completion:(void *)completionHandler
{
  v5 = objc_msgSend_weakSharedInstance(CLLocationManager, a2, config, completionHandler);

  MEMORY[0x1EEE66B58](CLMonitor, sel__requestMonitorWithConfiguration_locationManager_completion_, config, v5);
}

+ (id)sharedMonitorSet
{
  if (qword_1ED519308 != -1)
  {
    dispatch_once(&qword_1ED519308, &unk_1F0E6E5F8);
  }

  return qword_1ED519300;
}

+ (BOOL)isMonitorNameInUse:(id)use
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  v7 = objc_msgSend_sharedMonitorSet(CLMonitor, v4, v5, v6);
  LOBYTE(use) = objc_msgSend_containsObject_(v7, v8, use, v9);
  os_unfair_lock_unlock(&unk_1EAFE50E8);
  return use;
}

+ (void)addMonitorName:(id)name
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  v7 = objc_msgSend_sharedMonitorSet(CLMonitor, v4, v5, v6);
  objc_msgSend_addObject_(v7, v8, name, v9);

  os_unfair_lock_unlock(&unk_1EAFE50E8);
}

+ (void)removeMonitorName:(id)name
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  v7 = objc_msgSend_sharedMonitorSet(CLMonitor, v4, v5, v6);
  objc_msgSend_removeObject_(v7, v8, name, v9);

  os_unfair_lock_unlock(&unk_1EAFE50E8);
}

@end