@interface CKDXPCConnectionManager
+ (id)sharedConnectionManager;
+ (void)clouddStarted;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)CKStatusReportArray;
- (id)initInternal;
- (id)previousProcTearDownOperations:(id)operations;
- (void)_dumpStatusReportArrayToOsTrace:(id)trace;
- (void)_dumpStatusReportToFileHandle:(id)handle;
- (void)activate;
- (void)dealloc;
- (void)dumpStatusReportToFileHandle:(id)handle;
- (void)enumerateConnections:(id)connections;
- (void)statusReportWithCompletionHandler:(id)handler;
@end

@implementation CKDXPCConnectionManager

+ (id)sharedConnectionManager
{
  if (qword_280D58190 != -1)
  {
    dispatch_once(&qword_280D58190, &unk_28385CEC0);
  }

  v3 = qword_280D58188;

  return v3;
}

+ (void)clouddStarted
{
  qword_280D54E90 = os_transaction_create();

  MEMORY[0x2821F96F8]();
}

- (id)initInternal
{
  v51.receiver = self;
  v51.super_class = CKDXPCConnectionManager;
  v4 = [(CKDXPCConnectionManager *)&v51 init];
  if (v4)
  {
    objc_msgSend_enableTransactions(MEMORY[0x277CCAE98], v2, v3);
    v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
    v10 = objc_msgSend_processType(v7, v8, v9);

    if (v10 > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = **(&unk_278548428 + v10);
    }

    v14 = objc_msgSend_currentProcess(CKDDaemonProcess, v11, v12);
    isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v14, v15, v16);

    if ((isSystemInstalledBinary & 1) == 0)
    {
      v19 = objc_msgSend_stringByAppendingString_(v13, v18, @".debug");

      v13 = v19;
    }

    v20 = objc_alloc(MEMORY[0x277CCAE98]);
    v22 = objc_msgSend_initWithMachServiceName_(v20, v21, v13);
    v23 = *(v4 + 1);
    *(v4 + 1) = v22;

    objc_msgSend_setDelegate_(*(v4 + 1), v24, v4);
    v25 = objc_opt_new();
    v26 = *(v4 + 2);
    *(v4 + 2) = v25;

    v27 = objc_opt_new();
    v28 = *(v4 + 5);
    *(v4 + 5) = v27;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v4 + 5), v29, 10);
    v30 = objc_opt_new();
    v31 = *(v4 + 3);
    *(v4 + 3) = v30;

    v32 = objc_opt_new();
    v33 = *(v4 + 10);
    *(v4 + 10) = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_UTILITY, 0);
    v36 = dispatch_queue_create("com.apple.cloudkit.connectionManager.statusreport.callback", v35);
    v37 = *(v4 + 9);
    *(v4 + 9) = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_attr_make_with_qos_class(v38, QOS_CLASS_UTILITY, 0);
    v40 = dispatch_queue_create("com.apple.cloudkit.connectionManager.statusreport", v39);
    v41 = *(v4 + 8);
    *(v4 + 8) = v40;

    v42 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, *(v4 + 8));
    v43 = *(v4 + 7);
    *(v4 + 7) = v42;

    v44 = *(v4 + 7);
    handler = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = sub_225087848;
    v55 = &unk_2785456A0;
    v56 = &unk_28385CEE0;
    dispatch_source_set_event_handler(v44, &handler);

    dispatch_resume(*(v4 + 7));
    v45 = CKGetGlobalQueue();
    v46 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, v45);
    v47 = *(v4 + 4);
    *(v4 + 4) = v46;

    v48 = *(v4 + 4);
    handler = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = sub_225087848;
    v55 = &unk_2785456A0;
    v56 = &unk_28385CF00;
    dispatch_source_set_event_handler(v48, &handler);

    dispatch_resume(*(v4 + 4));
    v49 = dispatch_get_global_queue(0, 0);
    *(v4 + 6) = os_state_add_handler();
  }

  return v4;
}

- (void)dealloc
{
  v4 = objc_msgSend_sighandlerSource(self, a2, v2);
  dispatch_source_cancel(v4);

  v7 = objc_msgSend_statusReportRequestSource(self, v5, v6);
  dispatch_source_cancel(v7);

  if (objc_msgSend_stateHandle(self, v8, v9))
  {
    objc_msgSend_stateHandle(self, v10, v11);
    os_state_remove_handler();
  }

  while (1)
  {
    v14 = objc_msgSend_sighandlerSource(self, v10, v11);
    if (dispatch_source_testcancel(v14))
    {
      break;
    }

    v12 = objc_msgSend_statusReportRequestSource(self, v15, v16);
    v13 = dispatch_source_testcancel(v12);

    if (v13)
    {
      goto LABEL_7;
    }

    usleep(0xAu);
  }

LABEL_7:
  v17.receiver = self;
  v17.super_class = CKDXPCConnectionManager;
  [(CKDXPCConnectionManager *)&v17 dealloc];
}

- (void)activate
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEFAULT, "Activating connection manager", v10, 2u);
  }

  v6 = objc_msgSend_xpcListener(self, v4, v5);
  objc_msgSend_activate(v6, v7, v8);

  v9 = qword_280D54E90;
  qword_280D54E90 = 0;
}

- (id)previousProcTearDownOperations:(id)operations
{
  v28 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v7 = objc_opt_new();
  if (operationsCopy)
  {
    v8 = objc_msgSend_tearDownOperations(self, v5, v6);
    objc_sync_enter(v8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = objc_msgSend_tearDownOperations(self, v9, v10, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_msgSend_name(v18, v13, v14);
          isEqualToString = objc_msgSend_isEqualToString_(v19, v20, operationsCopy);

          if (isEqualToString)
          {
            objc_msgSend_addObject_(v7, v13, v18);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v23, v27, 16);
      }

      while (v15);
    }

    objc_sync_exit(v8);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v43 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_22506F000, "xpcConnection", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v12 = objc_msgSend_CKXPCDaemonToClientMuxerInterface(MEMORY[0x277CBC7D8], v10, v11);
  objc_msgSend_setRemoteObjectInterface_(connectionCopy, v13, v12);

  v16 = objc_msgSend_CKXPCClientToDaemonMuxerInterface(MEMORY[0x277CBC7D8], v14, v15);
  objc_msgSend_setExportedInterface_(connectionCopy, v17, v16);

  v18 = [CKDXPCConnection alloc];
  v20 = objc_msgSend_initWithXPCConnection_(v18, v19, connectionCopy);
  objc_msgSend_setExportedObject_(connectionCopy, v21, v20);
  objc_initWeak(&location, v20);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v20;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "New connection from client %@", buf, 0xCu);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_225195F2C;
  v37[3] = &unk_278547098;
  objc_copyWeak(&v38, &location);
  objc_msgSend_setInterruptionHandler_(connectionCopy, v23, v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22519600C;
  v35[3] = &unk_278547098;
  objc_copyWeak(&v36, &location);
  objc_msgSend_setInvalidationHandler_(connectionCopy, v24, v35);
  v27 = objc_msgSend_clientConnections(self, v25, v26);
  objc_sync_enter(v27);
  v30 = objc_msgSend_clientConnections(self, v28, v29);
  objc_msgSend_addObject_(v30, v31, v20);

  objc_sync_exit(v27);
  objc_msgSend_resume(connectionCopy, v32, v33);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v8);

  return 1;
}

- (void)enumerateConnections:(id)connections
{
  connectionsCopy = connections;
  v7 = objc_msgSend_clientConnections(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_clientConnections(self, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);

  objc_sync_exit(v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251965D4;
  v16[3] = &unk_2785483E0;
  v17 = connectionsCopy;
  v14 = connectionsCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v15, v16);
}

- (id)CKStatusReportArray
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v107 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v4, v5);
  v6 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_availabilityDescription(v107, v7, v8);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"System Availability: %@", v9);
  objc_msgSend_addObject_(v3, v12, v11);

  v15 = objc_msgSend_clientConnections(self, v13, v14);
  objc_sync_enter(v15);
  v18 = objc_msgSend_clientConnections(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);

  objc_sync_exit(v15);
  v22 = MEMORY[0x277CCACA8];
  v25 = objc_msgSend_count(v21, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v22, v26, @"\n%lu connected clients", v25);
  objc_msgSend_addObject_(v3, v28, v27);

  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = -1;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v21;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v114, v123, 16);
  if (v30)
  {
    v31 = *v115;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v115 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v114 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v37 = objc_msgSend_CKStatusReportArray(v33, v35, v36);
        objc_msgSend_addObject_(v3, v38, v37);

        if (v119[3] == -1)
        {
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = sub_225196BAC;
          v113[3] = &unk_278548408;
          v113[4] = &v118;
          objc_msgSend_enumerateContainersWithOptions_usingBlock_(v33, v39, 4, v113);
        }

        objc_autoreleasePoolPop(v34);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v114, v123, 16);
    }

    while (v30);
  }

  objc_msgSend_addObject_(v3, v41, @"------ Shared Foreground Queue Operations -------");
  v44 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v42, v43);
  v47 = objc_msgSend_operations(v44, v45, v46);

  if (objc_msgSend_count(v47, v48, v49))
  {
    v52 = MEMORY[0x277CCACA8];
    v53 = objc_msgSend_count(v47, v50, v51);
    v56 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v54, v55);
    v59 = objc_msgSend_maxConcurrentOperationCount(v56, v57, v58);
    v61 = objc_msgSend_stringWithFormat_(v52, v60, @"%lu/%ld {", v53, v59);
    objc_msgSend_addObject_(v3, v62, v61);

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v63 = v47;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v109, v122, 16);
    if (v65)
    {
      v66 = *v110;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v110 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v109 + 1) + 8 * j);
          v69 = objc_autoreleasePoolPush();
          v72 = objc_msgSend_operationStatusReport_(CKDContainer, v70, v68);
          if (v72)
          {
            objc_msgSend_addObject_(v3, v71, v72);
          }

          objc_autoreleasePoolPop(v69);
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v73, &v109, v122, 16);
      }

      while (v65);
    }

    objc_msgSend_addObject_(v3, v74, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v3, v50, @"No operations.");
  }

  objc_msgSend_addObject_(v3, v75, @"------ Global Configuration Manager -------");
  v78 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v76, v77);
  v81 = objc_msgSend_CKStatusReportArray(v78, v79, v80);
  objc_msgSend_addObject_(v3, v82, v81);

  objc_msgSend_addObject_(v3, v83, @"-------------------------------------------");
  if (objc_msgSend_availabilityState(v107, v84, v85))
  {
    v88 = objc_msgSend_existingDefaultContext(CKDLogicalDeviceContext, v86, v87);
    v91 = objc_msgSend_throttleManager(v88, v89, v90);
    v94 = objc_msgSend_CKStatusReportArray(v91, v92, v93);

    if (objc_msgSend_count(v94, v95, v96))
    {
      objc_msgSend_addObject_(v3, v97, &stru_28385ED00);
      objc_msgSend_addObject_(v3, v98, @"------ Active Throttles -------");
      objc_msgSend_addObject_(v3, v99, v94);
      objc_msgSend_addObject_(v3, v100, @"-------------------------------------------");
    }
  }

  v101 = MEMORY[0x277CCACA8];
  v102 = CKStringFromServerEnvironment();
  v104 = objc_msgSend_stringWithFormat_(v101, v103, @"Cached environment is %@", v102);
  objc_msgSend_addObject_(v3, v105, v104);

  _Block_object_dispose(&v118, 8);

  return v3;
}

- (void)_dumpStatusReportArrayToOsTrace:(id)trace
{
  v27 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = traceCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v26, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = MEMORY[0x277CBC880];
    v14 = MEMORY[0x277CBC870];
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend__dumpStatusReportArrayToOsTrace_(self, v17, v16);
        }

        else
        {
          if (*v13 != -1)
          {
            dispatch_once(v13, *MEMORY[0x277CBC878]);
          }

          v19 = *v14;
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        ++v15;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v18, &v20, v26, 16);
    }

    while (v11);
  }
}

- (void)_dumpStatusReportToFileHandle:(id)handle
{
  v49 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v11 = objc_msgSend_CKStatusReportArray(self, v8, v9);
  if (handleCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v11, v14, @"\n");
    v17 = objc_msgSend_stringWithFormat_(v13, v16, @"%@", v15);

    v19 = objc_msgSend_dataUsingEncoding_(v17, v18, 4);
    objc_msgSend_writeData_(handleCopy, v20, v19);

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    objc_msgSend__dumpStatusReportArrayToOsTrace_(self, v10, v11);
  }

  v21 = CKNotificationKey();
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  notify_post(v24);
  if (!handleCopy)
  {
    obj = objc_msgSend_statusReportCallbacks(self, v25, v26);
    objc_sync_enter(obj);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v29 = objc_msgSend_statusReportCallbacks(self, v27, v28);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v44, v48, 16);
    if (v33)
    {
      v34 = *v45;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v44 + 1) + 8 * i);
          v37 = objc_msgSend_statusReportCallbackQueue(self, v31, v32);
          dispatch_async(v37, v36);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v44, v48, 16);
      }

      while (v33);
    }

    v40 = objc_msgSend_statusReportCallbacks(self, v38, v39);
    objc_msgSend_removeAllObjects(v40, v41, v42);

    objc_sync_exit(obj);
  }
}

- (void)dumpStatusReportToFileHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251970FC;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = handleCopy;
  v8 = handleCopy;
  dispatch_sync(v7, v9);
}

- (void)statusReportWithCompletionHandler:(id)handler
{
  aBlock = handler;
  if (aBlock)
  {
    v6 = objc_msgSend_statusReportCallbacks(self, v4, v5);
    objc_sync_enter(v6);
    v9 = objc_msgSend_statusReportCallbacks(self, v7, v8);
    v10 = _Block_copy(aBlock);
    objc_msgSend_addObject_(v9, v11, v10);

    objc_sync_exit(v6);
  }

  v12 = objc_msgSend_statusReportRequestSource(self, v4, v5);
  dispatch_source_merge_data(v12, 1uLL);
}

@end