@interface CLServiceVendor
+ (CLServiceVendor)sharedInstance;
+ (void)initialize;
+ (void)rereadConfiguration:(id)configuration;
- (BOOL)ensureServiceIsRunning:(id)running;
- (BOOL)isServiceEnabled:(id)enabled;
- (BOOL)isServiceRunning:(id)running;
- (CLServiceVendor)init;
- (id)getServiceWithName:(id)name;
- (id)proxyForService:(id)service;
- (id)proxyForService:(id)service forClient:(id)client;
- (void)amendServiceReplacementMap:(id)map missBehavior:(int)behavior;
- (void)dealloc;
- (void)enableTimeCoercion;
- (void)intendToSyncServiceWithName:(id)name;
- (void)retireServiceWithName:(id)name;
- (void)setCurrentGlobalLatchedAbsoluteTimestamp:(double)timestamp;
- (void)setServiceReplacementMap:(id)map missBehavior:(int)behavior;
@end

@implementation CLServiceVendor

+ (CLServiceVendor)sharedInstance
{
  if (qword_1ED5FADD0 != -1)
  {
    dispatch_once(&qword_1ED5FADD0, &unk_1F5AC6B48);
  }

  v3 = qword_1ED5FADC8;

  return v3;
}

+ (void)initialize
{
  if (qword_1ED5FAD80 != -1)
  {
    dispatch_once(&qword_1ED5FAD80, &unk_1F5AC6B08);
  }
}

- (CLServiceVendor)init
{
  v13.receiver = self;
  v13.super_class = CLServiceVendor;
  v4 = [(CLServiceVendor *)&v13 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
    catalog = v4->_catalog;
    v4->_catalog = v5;

    v9 = objc_msgSend_set(MEMORY[0x1E695DFA8], v7, v8);
    unavailableServiceNames = v4->_unavailableServiceNames;
    v4->_unavailableServiceNames = v9;

    v11 = v4;
  }

  return v4;
}

+ (void)rereadConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_msgSend_settingsWithDictionary_(CLSettingsDictionary, v4, configurationCopy);
  objc_msgSend_doubleForKey_defaultValue_(v5, v6, @"CLServiceVendor.HeartbeatCheckInterval", 60.0);
  v8 = v7;
  v10 = objc_msgSend_BOOLForKey_defaultValue_(v5, v9, @"HeartAttackStackshot", 0);
  v12 = objc_msgSend_BOOLForKey_defaultValue_(v5, v11, @"IsInternalInstall", 0);
  v14 = objc_msgSend_BOOLForKey_defaultValue_(v5, v13, @"IsLocationServicesEnabled", 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1DF81E998;
  v15[3] = &unk_1E86C86A0;
  v16 = v10;
  v15[4] = v8;
  v17 = v12;
  v18 = v14;
  dispatch_barrier_async(qword_1ED5FADA0, v15);
}

- (void)enableTimeCoercion
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(self->_catalog, a2, v2))
  {
    v6 = sub_1DF81E1BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "0 == [_catalog count]";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF81E1BC();
    if (os_signpost_enabled(v7))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "0 == [_catalog count]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Enabling Time Coercion must be done before any services are started", "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF81E1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "0 == [_catalog count]";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", 415, "[CLServiceVendor enableTimeCoercion]");
LABEL_20:
    __asm { BL              ___stack_chk_fail }
  }

  if (self->_timeCoercibleSilos)
  {
    v9 = sub_1DF81E1BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "!_timeCoercibleSilos";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_1DF81E1BC();
    if (os_signpost_enabled(v10))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "!_timeCoercibleSilos";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only enable Time Coercion once, eh?", "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v11 = sub_1DF81E1BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "!_timeCoercibleSilos";
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", 416, "[CLServiceVendor enableTimeCoercion]");
    goto LABEL_20;
  }

  self->_timeCoercibleSilos = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5);

  MEMORY[0x1EEE66BB8]();
}

- (void)amendServiceReplacementMap:(id)map missBehavior:(int)behavior
{
  v4 = *&behavior;
  v36 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (self->_missBehavior <= v4)
  {
    v13 = objc_msgSend_mutableCopy(self->_serviceReplacementMap, v6, v7);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = mapCopy;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v24, v28, 16);
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = objc_msgSend_objectForKeyedSubscript_(v14, v16, v20, v24);
          objc_msgSend_setObject_forKeyedSubscript_(v13, v22, v21, v20);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v24, v28, 16);
      }

      while (v17);
    }

    objc_msgSend_setServiceReplacementMap_missBehavior_(self, v23, v13, v4);
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      missBehavior = self->_missBehavior;
      buf = 68289538;
      v30 = 2082;
      v31 = &unk_1DF8255EF;
      v32 = 2050;
      v33 = missBehavior;
      v34 = 2050;
      v35 = v4;
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:When amending replacement maps, you must make the new miss behavior the same or more strict. stock -> nop, stock -> crash and nop -> crash are valid changes here, or otherwise you must leave the behavior the same, current:%{public, location:CLSVReplacementMapMissBehavior}lld, desired:%{public, location:CLSVReplacementMapMissBehavior}lld}", &buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v11 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      v12 = self->_missBehavior;
      buf = 68289538;
      v30 = 2082;
      v31 = &unk_1DF8255EF;
      v32 = 2050;
      v33 = v12;
      v34 = 2050;
      v35 = v4;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "When amending replacement maps, you must make the new miss behavior the same or more strict. stock -> nop, stock -> crash and nop -> crash are valid changes here, or otherwise you must leave the behavior the same", "{msg%{public}.0s:When amending replacement maps, you must make the new miss behavior the same or more strict. stock -> nop, stock -> crash and nop -> crash are valid changes here, or otherwise you must leave the behavior the same, current:%{public, location:CLSVReplacementMapMissBehavior}lld, desired:%{public, location:CLSVReplacementMapMissBehavior}lld}", &buf, 0x26u);
    }
  }
}

- (void)setServiceReplacementMap:(id)map missBehavior:(int)behavior
{
  mapCopy = map;
  v7 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF81F47C;
  block[3] = &unk_1E86C86C8;
  v10 = mapCopy;
  selfCopy = self;
  behaviorCopy = behavior;
  v8 = mapCopy;
  dispatch_barrier_sync(v7, block);
}

- (id)getServiceWithName:(id)name
{
  v66 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = nameCopy;
  if (byte_1ED5FAD98 == 1 && ((objc_msgSend_containsString_(nameCopy, v5, @"Test") & 1) != 0 || objc_msgSend_containsString_(v6, v7, @"Mock")))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v8 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *v63 = 2082;
      *&v63[2] = &unk_1DF8255EF;
      *&v63[10] = 2114;
      *&v63[12] = v6;
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:, RequestedServiceName:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289282;
      *v63 = 2082;
      *&v63[2] = &unk_1DF8255EF;
      *&v63[10] = 2114;
      *&v63[12] = v6;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:", "{msg%{public}.0s:Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:, RequestedServiceName:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v10 = 0;
  }

  else
  {
    *buf = 0;
    *v63 = buf;
    *&v63[8] = 0x3032000000;
    *&v63[16] = sub_1DF8090EC;
    v64 = sub_1DF809114;
    v65 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_1DF8090EC;
    v53 = sub_1DF809114;
    v54 = v6;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_1DF8090EC;
    v47 = sub_1DF809114;
    v48 = 0;
    v11 = qword_1ED5FADA0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1DF82097C;
    block[3] = &unk_1E86C86F0;
    block[4] = self;
    v12 = v54;
    v39 = v12;
    v40 = buf;
    v41 = &v49;
    v42 = &v43;
    dispatch_sync(v11, block);
    v13 = *(*v63 + 40);
    if (v13)
    {
      v10 = v13;
    }

    else if (v50[5])
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v14 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v55 = 68289282;
        v56 = 2082;
        v57 = &unk_1DF8255EF;
        v58 = 2114;
        v59 = v12;
        _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Looking up service identified by name, ServiceName:%{public, location:escape_only}@}", &v55, 0x1Cu);
      }

      v36 = 0;
      v37 = 0;
      v15 = sub_1DF807DE4(&v37, &v36, v50[5]);
      v16 = v36;
      v17 = v37;
      if (v37)
      {
        v18 = qword_1ED5FADA0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1DF820B34;
        v28[3] = &unk_1E86C8740;
        v35 = v15;
        v29 = v12;
        selfCopy = self;
        v32 = &v49;
        v33 = buf;
        v34 = v17;
        v31 = v16;
        dispatch_barrier_sync(v18, v28);
        v10 = *(*v63 + 40);
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v23 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
        {
          v24 = v50[5];
          v55 = 68289538;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2114;
          v59 = v12;
          v60 = 2114;
          v61 = v24;
          _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Tried to look up a service by name that doesn't exist, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", &v55, 0x26u);
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
          }
        }

        v25 = qword_1ED5FAD48;
        if (os_signpost_enabled(qword_1ED5FAD48))
        {
          v26 = v50[5];
          v55 = 68289538;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2114;
          v59 = v12;
          v60 = 2114;
          v61 = v26;
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Tried to look up a service by name that doesn't exist", "{msg%{public}.0s:Tried to look up a service by name that doesn't exist, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", &v55, 0x26u);
        }

        v10 = 0;
      }
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v19 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
      {
        v20 = v44[5];
        v55 = 68289538;
        v56 = 2082;
        v57 = &unk_1DF8255EF;
        v58 = 2114;
        v59 = v12;
        v60 = 2114;
        v61 = v20;
        _os_log_impl(&dword_1DF7FE000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service replacement map does not include requested service, RequestedServiceName:%{public, location:escape_only}@, ReplacementMap:%{public, location:escape_only}@}", &v55, 0x26u);
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }
      }

      v21 = qword_1ED5FAD48;
      if (os_signpost_enabled(qword_1ED5FAD48))
      {
        v22 = v44[5];
        v55 = 68289538;
        v56 = 2082;
        v57 = &unk_1DF8255EF;
        v58 = 2114;
        v59 = v12;
        v60 = 2114;
        v61 = v22;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service replacement map does not include requested service", "{msg%{public}.0s:Service replacement map does not include requested service, RequestedServiceName:%{public, location:escape_only}@, ReplacementMap:%{public, location:escape_only}@}", &v55, 0x26u);
      }

      v10 = 0;
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(buf, 8);
  }

  return v10;
}

- (void)retireServiceWithName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1DF8090EC;
  v21 = sub_1DF809114;
  v22 = 0;
  v5 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821698;
  block[3] = &unk_1E86C8768;
  v16 = &v17;
  block[4] = self;
  v6 = nameCopy;
  v15 = v6;
  dispatch_barrier_sync(v5, block);
  v9 = v18[5];
  if (v9)
  {
    v10 = objc_msgSend_silo(v9, v7, v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1DF82179C;
    v13[3] = &unk_1E86C8790;
    v13[4] = &v17;
    objc_msgSend_sync_(v10, v11, v13);
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v12 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289282;
      v24 = 2082;
      v25 = &unk_1DF8255EF;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Warning Service retired redundantly or without ever having been started, RequestedServiceName:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (BOOL)isServiceEnabled:(id)enabled
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1DF8090EC;
  v16 = sub_1DF809114;
  enabledCopy = enabled;
  v4 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821944;
  block[3] = &unk_1E86C8768;
  v11 = &v12;
  block[4] = self;
  v5 = enabledCopy;
  v10 = v5;
  dispatch_sync(v4, block);
  v7 = 0;
  v8 = 0;
  sub_1DF807DE4(&v8, &v7, v13[5]);
  LOBYTE(v4) = v7 != 0;

  _Block_object_dispose(&v12, 8);
  return v4;
}

- (BOOL)isServiceRunning:(id)running
{
  runningCopy = running;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821A68;
  block[3] = &unk_1E86C8768;
  v9 = runningCopy;
  v10 = &v11;
  block[4] = self;
  v6 = runningCopy;
  dispatch_sync(v5, block);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)ensureServiceIsRunning:(id)running
{
  v3 = objc_msgSend_getServiceWithName_(self, a2, running);
  v4 = v3 != 0;

  return v4;
}

- (id)proxyForService:(id)service
{
  serviceCopy = service;
  v6 = objc_msgSend_getServiceWithName_(self, v5, serviceCopy);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_silo(v6, v7, v8);
    v12 = objc_msgSend_proxyForRecipientObject_inSilo_recipientName_(CLIntersiloProxy, v11, v9, v10, serviceCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)proxyForService:(id)service forClient:(id)client
{
  serviceCopy = service;
  clientCopy = client;
  v10 = objc_msgSend_getServiceWithName_(self, v8, clientCopy);
  if (v10)
  {
    v11 = objc_msgSend_proxyForService_(self, v9, serviceCopy);
    v14 = objc_msgSend_silo(v10, v12, v13);
    objc_msgSend_registerDelegate_inSilo_(v11, v15, v10, v14);

    v16 = clientCopy;
    v19 = objc_msgSend_UTF8String(v16, v17, v18);
    objc_msgSend_setDelegateEntityName_(v11, v20, v19);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setCurrentGlobalLatchedAbsoluteTimestamp:(double)timestamp
{
  v43 = *MEMORY[0x1E69E9840];
  timeCoercibleSilos = self->_timeCoercibleSilos;
  if (timeCoercibleSilos)
  {
    self->_currentGlobalLatchedAbsoluteTimestamp = timestamp;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = timeCoercibleSilos;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v42, 16);
    if (v10)
    {
      v11 = *v37;
      do
      {
        v12 = 0;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_suspend(*(*(&v36 + 1) + 8 * v12++), v8, v9);
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v36, v42, 16);
      }

      while (v10);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = self->_timeCoercibleSilos;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, v41, 16);
    if (v16)
    {
      v17 = *v33;
      do
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_1DF821F84;
          v31[3] = &unk_1E86C85E8;
          v31[4] = v19;
          *&v31[5] = timestamp;
          objc_msgSend_async_(v19, v15, v31);
          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v32, v41, 16);
      }

      while (v16);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = self->_timeCoercibleSilos;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v27, v40, 16);
    if (v24)
    {
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v20);
          }

          objc_msgSend_resume(*(*(&v27 + 1) + 8 * v26++), v22, v23, v27);
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v27, v40, 16);
      }

      while (v24);
    }
  }
}

- (void)intendToSyncServiceWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (objc_msgSend_autoCohortingEnabled(CLAutoCohortUtilities, v5, v6))
  {
    if (objc_msgSend_isServiceEnabled_(self, v7, nameCopy) && (objc_msgSend_getServiceWithName_(self, v8, nameCopy), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_silo(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, v12))
    {
      objc_msgSend_intendToSync(v12, v13, v14);
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v15 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v16[0] = 68289282;
        v16[1] = 0;
        v17 = 2082;
        v18 = &unk_1DF8255EF;
        v19 = 2114;
        v20 = nameCopy;
        _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Cohorting Cannot deduce toSilo, serviceName:%{public, location:escape_only}@}", v16, 0x1Cu);
      }

      v12 = 0;
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLServiceVendor;
  [(CLServiceVendor *)&v2 dealloc];
}

@end