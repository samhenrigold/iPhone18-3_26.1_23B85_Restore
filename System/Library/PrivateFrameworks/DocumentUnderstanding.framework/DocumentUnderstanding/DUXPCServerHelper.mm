@interface DUXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name;
+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)entitlement connection:(id)connection;
+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0;
+ (void)logFalseEntitlement:(id)entitlement serviceName:(id)name processName:(id)processName;
@end

@implementation DUXPCServerHelper

+ (void)logFalseEntitlement:(id)entitlement serviceName:(id)name processName:(id)processName
{
  v28 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  nameCopy = name;
  processNameCopy = processName;
  v14 = objc_msgSend_length(processNameCopy, v10, v11, v12, v13);
  v15 = sub_232CCAA1C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v16)
    {
      v26 = 138412802;
      *v27 = processNameCopy;
      *&v27[8] = 2112;
      *&v27[10] = nameCopy;
      *&v27[18] = 2112;
      *&v27[20] = entitlementCopy;
      _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %@ to %@ is missing entitlement: %@", &v26, 0x20u);
    }
  }

  else if (v16)
  {
    v21 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v17, v18, v19, v20);
    v26 = 67109634;
    *v27 = objc_msgSend_processIdentifier(v21, v22, v23, v24, v25);
    *&v27[4] = 2112;
    *&v27[6] = nameCopy;
    *&v27[14] = 2112;
    *&v27[16] = entitlementCopy;
    _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check %@.", &v26, 0x1Cu);
  }
}

+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)entitlement connection:(id)connection
{
  v6 = xpc_connection_copy_entitlement_value();
  v11 = v6;
  if (v6 && xpc_BOOL_get_value(v6))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v7, v8, v9, v10);
    v18 = objc_msgSend_processName(v13, v14, v15, v16, v17);

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_initWithCString_encoding_(v19, v20, entitlement, 4, v21);
    objc_msgSend_logFalseEntitlement_serviceName_processName_(self, v23, v22, v22, v18);

    v12 = 0;
  }

  return v12;
}

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  nameCopy = name;
  hasTrueBooleanEntitlement_connection_logHandle = objc_msgSend_hasTrueBooleanEntitlement_connection_logHandle_(MEMORY[0x277D42660], v11, entitlementCopy, connectionCopy, MEMORY[0x277D86220]);
  if ((hasTrueBooleanEntitlement_connection_logHandle & 1) == 0)
  {
    __errnum = 0;
    v17 = objc_msgSend_processIdentifier(connectionCopy, v12, v13, v14, v15);
    v19 = sub_232CE3EF8(v17, &__errnum);
    if (__errnum)
    {
      v20 = sub_232CCAA1C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_msgSend_processIdentifier(connectionCopy, v21, v22, v23, v24);
        v27 = strerror(__errnum);
        *buf = 67109634;
        v30 = v26;
        v31 = 2112;
        v32 = nameCopy;
        v33 = 2080;
        v34 = v27;
        _os_log_error_impl(&dword_232B02000, v20, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check (proc_name error: %s).", buf, 0x1Cu);
      }
    }

    else
    {
      objc_msgSend_logFalseEntitlement_serviceName_processName_(self, v18, entitlementCopy, nameCopy, v19);
    }
  }

  return hasTrueBooleanEntitlement_connection_logHandle;
}

+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0
{
  v88 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  nameCopy = name;
  interfaceCopy = interface;
  handlerCopy = handler;
  validateConnectionCopy = validateConnection;
  proxyCopy = proxy;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  v81 = 0;
  v22 = objc_msgSend_processIdentifier(connectionCopy, v18, v19, v20, v21);
  v23 = sub_232CE3EF8(v22, &v81);
  if (objc_msgSend_length(v23, v24, v25, v26, v27))
  {
    v28 = sub_232CCAA1C();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v33 = objc_msgSend_processIdentifier(connectionCopy, v29, v30, v31, v32, proxyCopy);
    *buf = 138412802;
    v83 = nameCopy;
    v84 = 2112;
    v85 = v23;
    v86 = 2048;
    v87 = v33;
    v34 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v43 = v28;
    v44 = 32;
LABEL_8:
    _os_log_impl(&dword_232B02000, v43, OS_LOG_TYPE_DEFAULT, v34, buf, v44);
    goto LABEL_9;
  }

  v35 = v81;
  v28 = sub_232CCAA1C();
  v36 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_9;
    }

    v41 = objc_msgSend_processIdentifier(connectionCopy, v37, v38, v39, v40, proxyCopy);
    v42 = strerror(v81);
    *buf = 138412802;
    v83 = nameCopy;
    v84 = 2048;
    v85 = v41;
    v86 = 2080;
    v87 = v42;
    v34 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v36)
  {
    v65 = objc_msgSend_processIdentifier(connectionCopy, v37, v38, v39, v40, proxyCopy);
    *buf = 138412546;
    v83 = nameCopy;
    v84 = 2048;
    v85 = v65;
    v34 = "New connection to %@ from unknown process (%lu).";
    v43 = v28;
    v44 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v48 = validateConnectionCopy[2](validateConnectionCopy, connectionCopy, v23);
  if (v48)
  {
    objc_msgSend_setExportedInterface_(connectionCopy, v45, interfaceCopy, v46, v47);
    objc_msgSend_setExportedObject_(connectionCopy, v49, handlerCopy, v50, v51);
    objc_initWeak(buf, connectionCopy);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_232CE43E8;
    v76[3] = &unk_2789A7D68;
    objc_copyWeak(&v80, buf);
    v52 = nameCopy;
    v77 = v52;
    v53 = v23;
    v78 = v53;
    v79 = interruptionHandlerCopy;
    objc_msgSend_setInterruptionHandler_(connectionCopy, v54, v76, v55, v56);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_232CE44EC;
    v71[3] = &unk_2789A7D68;
    objc_copyWeak(&v75, buf);
    v72 = v52;
    v73 = v53;
    v74 = invalidationHandlerCopy;
    objc_msgSend_setInvalidationHandler_(connectionCopy, v57, v71, v58, v59);
    objc_msgSend_resume(connectionCopy, v60, v61, v62, v63);

    objc_destroyWeak(&v75);
    objc_destroyWeak(&v80);
    objc_destroyWeak(buf);
  }

  return v48;
}

@end