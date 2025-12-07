@interface ACCiAP2ShimServerClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (ACCiAP2ShimServerClient)initWithCapabilities:(unsigned int)capabilities auditToken:(id *)token xpcConnection:(id)connection eaProtocols:(id)protocols andBundleId:(id)id;
- (BOOL)canSendConnectionEventForAccessory:(id)accessory;
- (id)_applicationInfoForBundleIDSync:(id)sync;
- (int)processId;
- (void)dealloc;
- (void)releaseProcessAssertion;
- (void)takeProcessAssertion:(id)assertion;
@end

@implementation ACCiAP2ShimServerClient

- (ACCiAP2ShimServerClient)initWithCapabilities:(unsigned int)capabilities auditToken:(id *)token xpcConnection:(id)connection eaProtocols:(id)protocols andBundleId:(id)id
{
  v51 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  protocolsCopy = protocols;
  idCopy = id;
  v49.receiver = self;
  v49.super_class = ACCiAP2ShimServerClient;
  v16 = [(ACCiAP2ShimServerClient *)&v49 init];
  v17 = v16;
  if (v16)
  {
    v16->_capabilities = capabilities;
    v16->_iapSessionRefCount = 0;
    v18 = *&token->var0[4];
    *v16->_auditToken.val = *token->var0;
    *&v16->_auditToken.val[4] = v18;
    objc_storeStrong(&v16->_xpcConnection, connection);
    v19 = [idCopy copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v19;

    v17->_processId = -1;
    v21 = dispatch_queue_create("IAPEAClient Process Assertion Queue", 0);
    processAssertionQ = v17->_processAssertionQ;
    v17->_processAssertionQ = v21;

    v17->_clientRequiresAccReset = 0;
    v17->_entitlementForAllAccessories = 0;
    v17->_processAssertion = 0;
    v17->_processAssertionStartTime = 0;
    v23 = [protocolsCopy copy];
    clientEAProtocols = v17->_clientEAProtocols;
    v17->_clientEAProtocols = v23;

    v25 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v25;
    v17->_entitlementForAllAccessories = __hasEntitlementForAuditToken(@"com.apple.private.externalaccessory.showallaccessories", buf);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = capabilities;
      _os_log_impl(&dword_23DC47000, v26, OS_LOG_TYPE_INFO, "[#ServerClient] INIT - capability=0x%x", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v28 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = "YES";
      if ((capabilities & 0x10) == 0)
      {
        v30 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = idCopy;
      *&buf[12] = 2080;
      *&buf[14] = v30;
      _os_log_impl(&dword_23DC47000, v28, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports EA while suspended = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v31 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = "YES";
      if ((capabilities & 0x20) == 0)
      {
        v33 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = idCopy;
      *&buf[12] = 2080;
      *&buf[14] = v33;
      _os_log_impl(&dword_23DC47000, v31, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports EA while backgrounded = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v34 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v34 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v36 = "YES";
      if ((capabilities & 0x8000) == 0)
      {
        v36 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = idCopy;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&dword_23DC47000, v34, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports Application state = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v37 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      entitlementForAllAccessories = v17->_entitlementForAllAccessories;
      *buf = 67109120;
      *&buf[4] = entitlementForAllAccessories;
      _os_log_impl(&dword_23DC47000, v37, OS_LOG_TYPE_INFO, "[#ServerClient] _entitlementForAllAccessories = %d", buf, 8u);
    }

    v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v17->_processAssertionQ);
    processAssertionTimer = v17->_processAssertionTimer;
    v17->_processAssertionTimer = v40;

    v42 = v17->_processAssertionTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __97__ACCiAP2ShimServerClient_initWithCapabilities_auditToken_xpcConnection_eaProtocols_andBundleId___block_invoke;
    handler[3] = &unk_278BF8188;
    v43 = v17;
    v48 = v43;
    dispatch_source_set_event_handler(v42, handler);
    dispatch_source_set_timer(v17->_processAssertionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v17->_processAssertionTimer);
    v45 = 0;
    if ((v17->_capabilities & 2) != 0)
    {
      v44 = *&token->var0[4];
      *buf = *token->var0;
      *&buf[16] = v44;
      if (__hasEntitlementForAuditToken(@"com.apple.iapd.accessibility", buf))
      {
        v45 = 1;
      }
    }

    v43->_supportsAccessibility = v45;
  }

  return v17;
}

void __97__ACCiAP2ShimServerClient_initWithCapabilities_auditToken_xpcConnection_eaProtocols_andBundleId___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 16);
      v7 = *(*(a1 + 32) + 20);
      v8[0] = 67109376;
      v8[1] = v7;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] releasing process assertion - clientID=%d pid=%d", v8, 0xEu);
    }

    CFRelease(*(*(a1 + 32) + 72));
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  dispatch_source_set_timer(*(v2 + 88), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(*(a1 + 32) + 80) = 0;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 67109120;
    v17 = clientID;
    _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] DEALLOC - clientID=%d", buf, 8u);
  }

  processAssertionTimer = self->_processAssertionTimer;
  if (processAssertionTimer)
  {
    dispatch_source_cancel(processAssertionTimer);
    v8 = self->_processAssertionTimer;
    self->_processAssertionTimer = 0;
  }

  processAssertionQ = self->_processAssertionQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ACCiAP2ShimServerClient_dealloc__block_invoke;
  block[3] = &unk_278BF8188;
  block[4] = self;
  dispatch_sync(processAssertionQ, block);
  self->_processAssertionStartTime = 0;
  dispatch_sync(self->_processAssertionQ, &__block_literal_global_0);
  v10 = self->_processAssertionQ;
  self->_processAssertionQ = 0;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  bundleId = self->_bundleId;
  self->_bundleId = 0;

  clientEAProtocols = self->_clientEAProtocols;
  self->_clientEAProtocols = 0;

  v14.receiver = self;
  v14.super_class = ACCiAP2ShimServerClient;
  [(ACCiAP2ShimServerClient *)&v14 dealloc];
}

void __34__ACCiAP2ShimServerClient_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 72) = 0;
  }
}

- (void)takeProcessAssertion:(id)assertion
{
  v21 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (!self->_processAssertion)
  {
LABEL_7:
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      bundleId = self->_bundleId;
      processId = self->_processId;
      v17 = 138412546;
      v18 = bundleId;
      v19 = 1024;
      v20 = processId;
      _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_INFO, "[#ServerClient] creating process assertion - appId=%@ pid=%d", &v17, 0x12u);
    }

    self->_processAssertion = SBSProcessAssertionCreateForPID();
    self->_processAssertionStartTime = time(0);
    goto LABEL_35;
  }

  if (time(0) - self->_processAssertionStartTime >= 3)
  {
    if (self->_processAssertion)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v5 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v5 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v15 = self->_bundleId;
        v16 = self->_processId;
        v17 = 138412546;
        v18 = v15;
        v19 = 1024;
        v20 = v16;
        _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] renewing process assertion - appId=%@ pid=%d", &v17, 0x12u);
      }

      self->_processAssertionStartTime = 0;
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v13 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_23DC47000, v13, OS_LOG_TYPE_INFO, "[#ServerClient] using ea process hysteresis", &v17, 2u);
  }

LABEL_35:
}

- (void)releaseProcessAssertion
{
  p_processAssertion = &self->_processAssertion;
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    CFRelease(processAssertion);
    *p_processAssertion = 0;
    p_processAssertion[1] = 0;
  }
}

- (BOOL)canSendConnectionEventForAccessory:(id)accessory
{
  v53 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  capabilities = [(ACCiAP2ShimServerClient *)self capabilities];
  capabilities2 = [(ACCiAP2ShimServerClient *)self capabilities];
  capabilities3 = [(ACCiAP2ShimServerClient *)self capabilities];
  applicationState = [(ACCiAP2ShimServerClient *)self applicationState];
  applicationState2 = [(ACCiAP2ShimServerClient *)self applicationState];
  v9 = [accessoryCopy objectForKey:*MEMORY[0x277D18450]];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if ([(NSArray *)self->_clientEAProtocols count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke;
    v28[3] = &unk_278BF81D8;
    v28[4] = self;
    v28[5] = &v29;
    [v9 enumerateKeysAndObjectsUsingBlock:v28];
    if ((v30[3] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        bundleId = self->_bundleId;
        *buf = 138412290;
        v34 = bundleId;
        _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_DEFAULT, "[#ServerClient] No protocols found for client %@", buf, 0xCu);
      }
    }
  }

  if ((v30[3] & 1) != 0 || self->_entitlementForAllAccessories)
  {
    v13 = capabilities2 & 0x20;
    v14 = capabilities3 & 0x8000;
    v15 = 1;
    v16 = capabilities & 0x10;
    if ((capabilities & 0x10) == 0 && capabilities3 < 0)
    {
      v17 = applicationState == 4;
      if (applicationState2 > 4)
      {
        v17 = 1;
      }

      if (!v13)
      {
        v17 = 0;
      }

      v15 = applicationState2 > 4 || v17;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = v9;
      v26 = accessoryCopy;
      v20 = self->_bundleId;
      entitlementForAllAccessories = self->_entitlementForAllAccessories;
      v22 = *(v30 + 24);
      applicationState3 = [(ACCiAP2ShimServerClient *)self applicationState];
      *buf = 138414594;
      v34 = v20;
      v35 = 1024;
      v36 = v16 >> 4;
      v37 = 1024;
      v38 = v13 >> 5;
      v39 = 1024;
      v40 = applicationState == 4;
      v41 = 1024;
      v42 = applicationState2 > 4;
      v43 = 1024;
      v44 = v14 >> 15;
      v45 = 1024;
      v46 = entitlementForAllAccessories;
      v47 = 1024;
      v48 = v22;
      v49 = 1024;
      v50 = applicationState3;
      v51 = 1024;
      v52 = v15;
      _os_log_impl(&dword_23DC47000, v18, OS_LOG_TYPE_INFO, "[#ServerClient] bundleID %@ supportsEAWhenSuspended = %d, supportsEAInBackground = %d, clientAppStateInBackground = %d, clientAppStateInForeground = %d, clientLinksUIApplication = %d, _entitlementForAllAccessories = %d, anyProtocolFound = %d, self.applicationState = 0x%X, canSendConnectionEvent = %d", buf, 0x42u);
      v9 = v25;
      accessoryCopy = v26;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  _Block_object_dispose(&v29, 8);

  return v15;
}

void __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(*(a1 + 32) + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke_2;
  v10[3] = &unk_278BF81B0;
  v11 = v6;
  if ([v7 indexOfObjectPassingTest:v10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#ServerClient] protocol %@ found from accessory", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_applicationInfoForBundleIDSync:(id)sync
{
  syncCopy = sync;
  v4 = _getApplicationStateMonitor(syncCopy);
  v5 = [v4 applicationInfoForApplication:syncCopy];

  return v5;
}

- (int)processId
{
  result = self->_processId;
  if (result == -1)
  {
    self->_processId = 0;
    if (self->_bundleId)
    {
      v4 = [(ACCiAP2ShimServerClient *)self _applicationInfoForBundleIDSync:?];
      v5 = [v4 valueForKey:*MEMORY[0x277CEEE80]];
      unsignedIntegerValue = [v5 unsignedIntegerValue];

      self->_processId = unsignedIntegerValue;
      return self->_processId;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[3].var0[4];
  *retstr->var0 = *self[3].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end