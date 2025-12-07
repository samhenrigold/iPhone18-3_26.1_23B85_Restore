@interface PPXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name;
+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection;
+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name allowedServerInterface:(id)interface allowedClientInterface:(id)clientInterface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)self0 invalidationHandler:(id)self1;
@end

@implementation PPXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  nameCopy = name;
  v10 = [PPXPCServerHelper hasTrueBooleanEntitlement:entitlementCopy connection:connectionCopy];
  if (!v10)
  {
    __errnum = 0;
    v11 = procNameForPid([connectionCopy processIdentifier], &__errnum);
    if ([v11 length] && (objc_msgSend(v11, "isEqualToString:", @"xctest") & 1) == 0)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *v24 = v11;
        *&v24[8] = 2112;
        *&v24[10] = nameCopy;
        *&v24[18] = 2112;
        *&v24[20] = entitlementCopy;
        _os_log_fault_impl(&dword_23224A000, v13, OS_LOG_TYPE_FAULT, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
      }

      goto LABEL_10;
    }

    v12 = __errnum;
    v13 = pp_xpc_server_log_handle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        processIdentifier = [connectionCopy processIdentifier];
        v16 = strerror(__errnum);
        *buf = 67109634;
        *v24 = processIdentifier;
        *&v24[4] = 2112;
        *&v24[6] = nameCopy;
        *&v24[14] = 2080;
        *&v24[16] = v16;
        v17 = "Connection from %d to %@ failed entitlement check (proc_name error: %s).";
        v18 = v13;
        v19 = 28;
LABEL_13:
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      }
    }

    else if (v14)
    {
      processIdentifier2 = [connectionCopy processIdentifier];
      *buf = 67109378;
      *v24 = processIdentifier2;
      *&v24[4] = 2112;
      *&v24[6] = nameCopy;
      v17 = "Connection from %d to %@ failed entitlement check.";
      v18 = v13;
      v19 = 18;
      goto LABEL_13;
    }

LABEL_10:
  }

  return v10;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection
{
  entitlementCopy = entitlement;
  v6 = MEMORY[0x277D425B0];
  if (connection)
  {
    objc_msgSend_auditToken(connection);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v7 = pp_xpc_server_log_handle();
  v8 = [v6 taskWithAuditToken:v10 hasTrueBooleanEntitlement:entitlementCopy logHandle:v7];

  return v8;
}

+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name allowedServerInterface:(id)interface allowedClientInterface:(id)clientInterface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)self0 invalidationHandler:(id)self1
{
  v60 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  nameCopy = name;
  interfaceCopy = interface;
  clientInterfaceCopy = clientInterface;
  handlerCopy = handler;
  validateConnectionCopy = validateConnection;
  proxyCopy = proxy;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  v53 = 0;
  v19 = procNameForPid([connectionCopy processIdentifier], &v53);
  if ([v19 length])
  {
    v20 = pp_xpc_server_log_handle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    processIdentifier = [connectionCopy processIdentifier];
    *buf = 138412802;
    v55 = nameCopy;
    v56 = 2112;
    v57 = v19;
    v58 = 2048;
    v59 = processIdentifier;
    v22 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v27 = v20;
    v28 = 32;
LABEL_8:
    _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, v22, buf, v28);
    goto LABEL_9;
  }

  v23 = v53 == 0;
  v20 = pp_xpc_server_log_handle();
  v24 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_9;
    }

    processIdentifier2 = [connectionCopy processIdentifier];
    v26 = strerror(v53);
    *buf = 138412802;
    v55 = nameCopy;
    v56 = 2048;
    v57 = processIdentifier2;
    v58 = 2080;
    v59 = v26;
    v22 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v24)
  {
    processIdentifier3 = [connectionCopy processIdentifier];
    *buf = 138412546;
    v55 = nameCopy;
    v56 = 2048;
    v57 = processIdentifier3;
    v22 = "New connection to %@ from unknown process (%lu).";
    v27 = v20;
    v28 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v29 = validateConnectionCopy[2](validateConnectionCopy, connectionCopy, v19);
  if (v29)
  {
    [connectionCopy setExportedInterface:interfaceCopy];
    [connectionCopy setExportedObject:handlerCopy];
    if (clientInterfaceCopy)
    {
      [connectionCopy setRemoteObjectInterface:?];
      if (!proxyCopy)
      {
LABEL_15:
        objc_initWeak(buf, connectionCopy);
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke;
        v48[3] = &unk_2789755A0;
        objc_copyWeak(&v52, buf);
        v31 = nameCopy;
        v49 = v31;
        v32 = v19;
        v50 = v32;
        v51 = interruptionHandlerCopy;
        [connectionCopy setInterruptionHandler:v48];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_17;
        v43[3] = &unk_2789755A0;
        objc_copyWeak(&v47, buf);
        v44 = v31;
        v45 = v32;
        v46 = invalidationHandlerCopy;
        [connectionCopy setInvalidationHandler:v43];
        [connectionCopy resume];

        objc_destroyWeak(&v47);
        objc_destroyWeak(&v52);
        objc_destroyWeak(buf);
        goto LABEL_16;
      }

      remoteObjectProxy = [connectionCopy remoteObjectProxy];
      proxyCopy[2](proxyCopy, remoteObjectProxy);
    }

    else
    {
      if (!proxyCopy)
      {
        goto LABEL_15;
      }

      remoteObjectProxy = [MEMORY[0x277CCA890] currentHandler];
      [remoteObjectProxy handleFailureInMethod:a2 object:self file:@"PPXPCServerSupport.m" lineNumber:74 description:@"setupClientProxy shall be nil if allowedClientInterface is nil"];
    }

    goto LABEL_15;
  }

LABEL_16:

  return v29;
}

void __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      v10 = 2048;
      v11 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v6, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_17(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      v10 = 2048;
      v11 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v6, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

@end