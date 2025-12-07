@interface APXPCListenerManager
+ (void)addDelegate:(id)delegate;
- (APXPCListenerManager)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
@end

@implementation APXPCListenerManager

+ (void)addDelegate:(id)delegate
{
  v45 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (qword_1EDBA4FD8 != -1)
  {
    sub_1BAF8E290();
  }

  v4 = qword_1EDBA41B0;
  objc_sync_enter(v4);
  v8 = objc_msgSend_machServiceName(delegateCopy, v5, v6, v7);
  v9 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v41 = 138478083;
    v42 = objc_opt_class();
    v43 = 2114;
    v44 = v8;
    v10 = v42;
    _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{private}@] Adding a delegate for machService: %{public}@", &v41, 0x16u);
  }

  v14 = objc_msgSend_delegates(qword_1EDBA41B0, v11, v12, v13);
  v17 = objc_msgSend_objectForKey_(v14, v15, v8, v16);

  if (!v17)
  {
    v21 = objc_msgSend_delegates(qword_1EDBA41B0, v18, v19, v20);
    objc_msgSend_setObject_forKey_(v21, v22, delegateCopy, v8);

    v23 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v41 = 138477827;
      v42 = v24;
      v25 = v24;
      _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_INFO, "[%{private}@] Setting up the listener", &v41, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E696B0D8]);
    v29 = objc_msgSend_initWithMachServiceName_(v26, v27, v8, v28);
    objc_msgSend_setDelegate_(v29, v30, qword_1EDBA41B0, v31);
    objc_msgSend_resume(v29, v32, v33, v34);
    v38 = objc_msgSend_listeners(qword_1EDBA41B0, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v29, v40);
  }

  objc_sync_exit(v4);
}

- (APXPCListenerManager)init
{
  v14.receiver = self;
  v14.super_class = APXPCListenerManager;
  v5 = [(APXPCListenerManager *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4);
    delegates = v5->_delegates;
    v5->_delegates = v6;

    v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    listeners = v5->_listeners;
    v5->_listeners = v11;
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v128 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v10 = objc_msgSend_serviceName(connectionCopy, v7, v8, v9);
  v11 = qword_1EDBA41B0;
  objc_sync_enter(v11);
  v15 = objc_msgSend_delegates(self, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v15, v16, v10, v17);

  objc_sync_exit(v11);
  if (v18 && (objc_msgSend_conformsToProtocol_(v18, v19, &unk_1F3918D18, v20) & 1) != 0)
  {
    v21 = [APXPCConnection alloc];
    v24 = objc_msgSend_initWithConnection_(v21, v22, connectionCopy, v23);
    v27 = objc_msgSend_actionReceiverForConnection_(v18, v25, v24, v26);
    v30 = v27;
    if (v27 && (objc_msgSend_conformsToProtocol_(v27, v28, &unk_1F3918D78, v29) & 1) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v34 = objc_msgSend_requiredEntitlements(v30, v31, v32, v33);
        v38 = v34;
        if (!v34 || !objc_msgSend_count(v34, v35, v36, v37))
        {
          v39 = APLogForCategory(0x39uLL);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v120 = objc_opt_class();
            v40 = v120;
            _os_log_impl(&dword_1BADC1000, v39, OS_LOG_TYPE_ERROR, "[%{private}@] The optional requiredEntitlements method was implemented, but no entitlements were provided. Is this a developer issue? Please file a radar...", buf, 0xCu);
          }
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v41 = v38;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v115, v127, 16);
        if (v45)
        {
          v46 = *v116;
          while (2)
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v116 != v46)
              {
                objc_enumerationMutation(v41);
              }

              if ((objc_msgSend_hasEntitlement_(v24, v43, *(*(&v115 + 1) + 8 * i), v44) & 1) == 0)
              {
                v107 = APLogForCategory(0x39uLL);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  v108 = objc_opt_class();
                  *buf = 138477827;
                  v120 = v108;
                  v109 = v108;
                  _os_log_impl(&dword_1BADC1000, v107, OS_LOG_TYPE_ERROR, "[%{private}@] Caller does is missing a necessary entitlement. Bailing...", buf, 0xCu);
                }

                goto LABEL_38;
              }
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v115, v127, 16);
            if (v45)
            {
              continue;
            }

            break;
          }
        }
      }

      v48 = objc_msgSend_exportedObject(v30, v31, v32, v33);
      objc_msgSend_setExportedObject_(connectionCopy, v49, v48, v50);

      v51 = MEMORY[0x1E696B0D0];
      v55 = objc_msgSend_exportedInterface(v30, v52, v53, v54);
      v58 = objc_msgSend_interfaceWithProtocol_(v51, v56, v55, v57);
      objc_msgSend_setExportedInterface_(connectionCopy, v59, v58, v60);

      if (objc_opt_respondsToSelector())
      {
        v61 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          *buf = 138477827;
          v120 = v62;
          v63 = v62;
          _os_log_impl(&dword_1BADC1000, v61, OS_LOG_TYPE_INFO, "[%{private}@] Extending exported selectors to allow collection classes to pass data.", buf, 0xCu);
        }

        v67 = objc_msgSend_exportedInterface(connectionCopy, v64, v65, v66);
        objc_msgSend_extendCollectionClassesForExportedInterface_(v30, v68, v67, v69);
      }

      if (objc_opt_respondsToSelector())
      {
        v73 = MEMORY[0x1E696B0D0];
        v74 = objc_msgSend_remoteObjectInterface(v30, v70, v71, v72);
        v77 = objc_msgSend_interfaceWithProtocol_(v73, v75, v74, v76);
        objc_msgSend_setRemoteObjectInterface_(connectionCopy, v78, v77, v79);

        if (objc_opt_respondsToSelector())
        {
          v80 = APLogForCategory(0x39uLL);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            v81 = objc_opt_class();
            *buf = 138477827;
            v120 = v81;
            v82 = v81;
            _os_log_impl(&dword_1BADC1000, v80, OS_LOG_TYPE_INFO, "[%{private}@] Extending remote selectors to allow collection classes to pass data.", buf, 0xCu);
          }

          v86 = objc_msgSend_remoteObjectInterface(connectionCopy, v83, v84, v85);
          objc_msgSend_extendCollectionClassesForRemoteInterface_(v30, v87, v86, v88);
        }
      }

      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = sub_1BAF22D08;
      v113[3] = &unk_1E7F1CE98;
      v89 = v30;
      v114 = v89;
      objc_msgSend_setInterruptionHandler_(connectionCopy, v90, v113, v91);
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = sub_1BAF22D5C;
      v111[3] = &unk_1E7F1CE98;
      v112 = v89;
      objc_msgSend_setInvalidationHandler_(connectionCopy, v92, v111, v93);
      v94 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v98 = objc_msgSend_serviceName(connectionCopy, v95, v96, v97);
        *buf = 136643587;
        v120 = "[APXPCListenerManager listener:shouldAcceptNewConnection:]";
        v121 = 2114;
        selfCopy = self;
        v123 = 2114;
        v124 = connectionCopy;
        v125 = 2114;
        v126 = v98;
        _os_log_impl(&dword_1BADC1000, v94, OS_LOG_TYPE_INFO, "%{sensitive}s: listener %{public}@ accepted connection %{public}@ (%{public}@)", buf, 0x2Au);
      }

      objc_msgSend_resume(connectionCopy, v99, v100, v101);
      v102 = 1;
      v41 = v114;
    }

    else
    {
      v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"No connection delegate returned or connection delegate doesn't conform to protocol", v29);
      v104 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v120 = objc_opt_class();
        v121 = 2114;
        selfCopy = v41;
        v105 = v120;
        _os_log_impl(&dword_1BADC1000, v104, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: %{public}@", buf, 0x16u);
      }

LABEL_38:
      v102 = 0;
    }
  }

  else
  {
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"No Delegate was found for mach service %@ or delegate doesn't conform to protocol", v20, v10, listenerCopy);
    v30 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v120 = objc_opt_class();
      v121 = 2114;
      selfCopy = v24;
      v103 = v120;
      _os_log_impl(&dword_1BADC1000, v30, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: %{public}@", buf, 0x16u);
    }

    v102 = 0;
  }

  return v102;
}

- (void)dealloc
{
  APSimulateCrash(5, @"The Listener Manager is never allowed to be dealloced", 1);
  v3.receiver = self;
  v3.super_class = APXPCListenerManager;
  [(APXPCListenerManager *)&v3 dealloc];
}

@end