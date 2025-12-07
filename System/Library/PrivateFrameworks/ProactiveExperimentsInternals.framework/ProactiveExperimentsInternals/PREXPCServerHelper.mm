@interface PREXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name;
+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection;
+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0;
@end

@implementation PREXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  nameCopy = name;
  v10 = [PREXPCServerHelper hasTrueBooleanEntitlement:entitlementCopy connection:connectionCopy];
  if (!v10)
  {
    __errnum = 0;
    v11 = procNameForPid([connectionCopy processIdentifier], &__errnum);
    if ([v11 length])
    {
      v12 = pre_sv_xpc_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v24 = v11;
        *&v24[8] = 2112;
        *&v24[10] = nameCopy;
        *&v24[18] = 2112;
        *&v24[20] = entitlementCopy;
        v13 = "Connection from %@ to %@ is missing entitlement: %@";
        v14 = v12;
        v15 = 32;
LABEL_10:
        _os_log_error_impl(&dword_260D12000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else
    {
      v16 = __errnum;
      v12 = pre_sv_xpc_handle();
      v17 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v17)
        {
          processIdentifier = [connectionCopy processIdentifier];
          v19 = strerror(__errnum);
          *buf = 67109634;
          *v24 = processIdentifier;
          *&v24[4] = 2112;
          *&v24[6] = nameCopy;
          *&v24[14] = 2080;
          *&v24[16] = v19;
          v13 = "Connection from %d to %@ failed entitlement check (proc_name error: %s).";
          v14 = v12;
          v15 = 28;
          goto LABEL_10;
        }
      }

      else if (v17)
      {
        processIdentifier2 = [connectionCopy processIdentifier];
        *buf = 67109378;
        *v24 = processIdentifier2;
        *&v24[4] = 2112;
        *&v24[6] = nameCopy;
        v13 = "Connection from %d to %@ failed entitlement check.";
        v14 = v12;
        v15 = 18;
        goto LABEL_10;
      }
    }
  }

  return v10;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection
{
  v4 = [connection valueForEntitlement:entitlement];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0
{
  v55 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  nameCopy = name;
  interfaceCopy = interface;
  handlerCopy = handler;
  validateConnectionCopy = validateConnection;
  proxyCopy = proxy;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  v48 = 0;
  v18 = procNameForPid([connectionCopy processIdentifier], &v48);
  if ([v18 length])
  {
    v19 = pre_sv_xpc_handle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    processIdentifier = [connectionCopy processIdentifier];
    *buf = 138412802;
    v50 = nameCopy;
    v51 = 2112;
    v52 = v18;
    v53 = 2048;
    v54 = processIdentifier;
    v21 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v26 = v19;
    v27 = 32;
LABEL_8:
    _os_log_impl(&dword_260D12000, v26, OS_LOG_TYPE_DEFAULT, v21, buf, v27);
    goto LABEL_9;
  }

  v22 = v48;
  v19 = pre_sv_xpc_handle();
  v23 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_9;
    }

    processIdentifier2 = [connectionCopy processIdentifier];
    v25 = strerror(v48);
    *buf = 138412802;
    v50 = nameCopy;
    v51 = 2048;
    v52 = processIdentifier2;
    v53 = 2080;
    v54 = v25;
    v21 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v23)
  {
    processIdentifier3 = [connectionCopy processIdentifier];
    *buf = 138412546;
    v50 = nameCopy;
    v51 = 2048;
    v52 = processIdentifier3;
    v21 = "New connection to %@ from unknown process (%lu).";
    v26 = v19;
    v27 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v28 = validateConnectionCopy[2](validateConnectionCopy, connectionCopy, v18);
  if (v28)
  {
    [connectionCopy setExportedInterface:interfaceCopy];
    [connectionCopy setExportedObject:handlerCopy];
    objc_initWeak(buf, connectionCopy);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke;
    v43[3] = &unk_279ABC688;
    objc_copyWeak(&v47, buf);
    v29 = nameCopy;
    v44 = v29;
    v30 = v18;
    v45 = v30;
    v46 = interruptionHandlerCopy;
    [connectionCopy setInterruptionHandler:v43];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_11;
    v38[3] = &unk_279ABC688;
    objc_copyWeak(&v42, buf);
    v39 = v29;
    v40 = v30;
    v41 = invalidationHandlerCopy;
    [connectionCopy setInvalidationHandler:v38];
    [connectionCopy resume];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  return v28;
}

void __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pre_sv_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_260D12000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v7, 0x20u);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_11(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pre_sv_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_260D12000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v7, 0x20u);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

@end