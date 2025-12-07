@interface RPDaemonXPCConnection
- (BOOL)_entitledForLabel:(id)label error:(id *)error;
- (RPDaemonXPCConnection)initWithDaemon:(id)daemon xpcConnection:(id)connection;
- (void)_invalidateAssertions;
- (void)activateAssertionWithIdentifier:(id)identifier;
- (void)addOrUpdateIdentity:(id)identity source:(int)source completion:(id)completion;
- (void)connectionInvalidated;
- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion;
- (void)diagnosticLogControl:(id)control completion:(id)completion;
- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion;
- (void)getIdentitiesWithFlags:(unsigned int)flags completion:(id)completion;
- (void)primaryAccountSignedInWithCompletion:(id)completion;
- (void)primaryAccountSignedOutWithCompletion:(id)completion;
- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion;
- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion;
- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion;
- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion;
- (void)serverCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)serverExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion;
- (void)serverSetAutoMappingInternal:(BOOL)internal completion:(id)completion;
@end

@implementation RPDaemonXPCConnection

- (RPDaemonXPCConnection)initWithDaemon:(id)daemon xpcConnection:(id)connection
{
  daemonCopy = daemon;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = RPDaemonXPCConnection;
  v9 = [(RPDaemonXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, connection);
    v11 = v10;
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3730 <= 20 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001174A0(self);
  }

  [(RPDaemonXPCConnection *)self _invalidateAssertions];
}

- (BOOL)_entitledForLabel:(id)label error:(id *)error
{
  labelCopy = label;
  if (!self->_entitledClient)
  {
    p_xpcCnx = &self->_xpcCnx;
    v9 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
    v10 = [v9 isEqual:&__kCFBooleanTrue];

    if (v10)
    {
      v7 = 1;
      self->_entitledClient = 1;
      goto LABEL_11;
    }

    v17 = RPErrorF(4294896128, "Missing entitlement '%@' for %@", v11, v12, v13, v14, v15, v16, @"com.apple.rapport.Client");
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001174E8(p_xpcCnx);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
LABEL_10:

      v7 = 0;
      goto LABEL_11;
    }

    v18 = v17;
    *error = v17;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)activateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"ActivateAssertion" error:0];
  v5 = identifierCopy;
  if (v4)
  {
    v6 = identifierCopy;
    if (v6)
    {
      if ([(NSMutableSet *)self->_assertions containsObject:v6])
      {
        if (dword_1001D3730 > 30 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v7 = "Ignoring duplicate assertion '%@'\n";
      }

      else
      {
        assertions = self->_assertions;
        if (!assertions)
        {
          v9 = objc_alloc_init(NSMutableSet);
          v10 = self->_assertions;
          self->_assertions = v9;

          assertions = self->_assertions;
        }

        [(NSMutableSet *)assertions addObject:v6];
        v11 = [(NSCountedSet *)self->_daemon->_assertions countForObject:v6];
        v12 = self->_daemon->_assertions;
        if (!v12)
        {
          v13 = objc_alloc_init(NSCountedSet);
          daemon = self->_daemon;
          v15 = daemon->_assertions;
          daemon->_assertions = v13;

          v12 = self->_daemon->_assertions;
        }

        [(NSCountedSet *)v12 addObject:v6];
        if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3730, "[RPDaemonXPCConnection activateAssertionWithIdentifier:]", 30, "Activate assertion '%@': %d -> %d\n", v6, v11, (v11 + 1));
        }

        if (v11 || ([v6 isEqual:@"com.apple.rapport.KeepAlive"] & 1) != 0 || dword_1001D3730 > 30 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v7 = "Ignoring add unknown assertion '%@'\n";
      }

      sub_100117534(v7, v6);
    }

LABEL_22:

    v5 = identifierCopy;
  }
}

- (void)addOrUpdateIdentity:(id)identity source:(int)source completion:(id)completion
{
  v6 = *&source;
  identityCopy = identity;
  completionCopy = completion;
  v15 = 0;
  v10 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"AddOrUpdateIdentity" error:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = +[RPPeopleDaemon sharedPeopleDaemon];
    v14 = v11;
    [v12 addOrUpdateIdentity:identityCopy source:v6 error:&v14];
    v13 = v14;

    v11 = v13;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)_invalidateAssertions
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_assertions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(NSCountedSet *)self->_daemon->_assertions countForObject:v8];
        [(NSCountedSet *)self->_daemon->_assertions removeObject:v8];
        if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3730, "[RPDaemonXPCConnection _invalidateAssertions]", 30, "Invalidate assertion '%@': %d -> %d\n", v8, v9, (v9 - 1));
        }

        if (v9 == 1 && ([v8 isEqual:@"com.apple.rapport.KeepAlive"] & 1) == 0 && dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          sub_100117570(v8);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }

  [(NSMutableSet *)self->_assertions removeAllObjects];
}

- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion
{
  commandCopy = command;
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v35 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticCommand" error:&v35];
  v17 = v35;
  if (v17)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v17);
    }

    goto LABEL_19;
  }

  if (!commandCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    RPErrorF(4294960589, "Null command", v11, v12, v13, v14, v15, v16, v30);
    goto LABEL_22;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = self->_daemon->_subDaemons;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if ([*(*(&v31 + 1) + 8 * i) diagnosticCommand:commandCopy params:paramsCopy])
        {

          goto LABEL_17;
        }
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if (![(RPDaemon *)self->_daemon diagnosticCommand:commandCopy params:paramsCopy])
  {
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    RPErrorF(4294960561, "Unsupported command '%@'", v23, v24, v25, v26, v27, v28, commandCopy);
    v29 = LABEL_22:;
    completionCopy[2](completionCopy, 0, v29);

    goto LABEL_19;
  }

LABEL_17:
  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, &__NSDictionary0__struct, 0);
  }

LABEL_19:
}

- (void)diagnosticLogControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticLogControl" error:&v13];
  v8 = v13;
  v9 = v8;
  if (!v8)
  {
    if (controlCopy && ([controlCopy UTF8String], v11 = LogControl(), v11))
    {
      if (!completionCopy)
      {
        goto LABEL_5;
      }

      NSPrintF("### Control error: %#m\n", v11);
    }

    else
    {
      v12 = LogShow();
      if (!completionCopy)
      {
        goto LABEL_5;
      }

      NSPrintF("### Show error: %#m\n", v12);
    }

    goto LABEL_4;
  }

  if (completionCopy)
  {
    NSPrintF("### Error: %{error}\n", v8);
    v10 = LABEL_4:;
    completionCopy[2](completionCopy, v10);
  }

LABEL_5:
}

- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticShow" error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v9)
  {
    if (showCopy && [showCopy rangeOfString:@"ident" options:9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = +[RPIdentityDaemon sharedIdentityDaemon];
      v11 = CUDescriptionWithLevel();

      if (!completionCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ([showCopy isEqual:@"kc"])
      {
        [(RPDaemon *)self->_daemon keychainStateString];
      }

      else
      {
        CUDescriptionWithLevel();
      }
      v11 = ;
      if (!completionCopy)
      {
        goto LABEL_15;
      }
    }

    if (v11)
    {
      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v13 = NSPrintF("### Generate output failed\n");
      completionCopy[2](completionCopy, v13);
    }

    goto LABEL_15;
  }

  if (completionCopy)
  {
    v11 = NSPrintF("### Error: %{error}\n", v9);
    completionCopy[2](completionCopy, v11);
LABEL_15:
  }
}

- (void)getIdentitiesWithFlags:(unsigned int)flags completion:(id)completion
{
  v4 = *&flags;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"GetIdentities" error:&v10];
  v7 = v10;
  if (v7)
  {
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v8 = +[RPIdentityDaemon sharedIdentityDaemon];
    v9 = [v8 getIdentitiesWithFlags:v4];

    (completionCopy)[2](completionCopy, v9, 0);
  }
}

- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v9 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.RegenerateIdentity"];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if (v10)
  {
    v17 = +[RPPeopleDaemon sharedPeopleDaemon];
    [v17 regenerateSelfIdentity:identityCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v18 = RPErrorF(4294896128, "Missing entitlement '%@' for %@", v11, v12, v13, v14, v15, v16, @"com.apple.rapport.RegenerateIdentity");
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001175B0(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v18);
  }
}

- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.RegenerateIdentity"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if (v7)
  {
    v14 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v14 regenerateTemporarySelfIdentity];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v15 = RPErrorF(4294896128, "Missing entitlement '%@' for %@", v8, v9, v10, v11, v12, v13, @"com.apple.rapport.RegenerateIdentity");
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001175FC(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v15);
  }
}

- (void)primaryAccountSignedInWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if (v7)
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117694(p_xpcCnx);
    }

    v14 = +[RPDaemon sharedDaemon];
    [v14 postDaemonInfoChanges:64];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v15 = RPErrorF(4294896128, "Missing entitlement '%@' for %@", v8, v9, v10, v11, v12, v13, @"com.apple.rapport.Client");
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117648(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v15);
  }
}

- (void)primaryAccountSignedOutWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117728(p_xpcCnx);
    }

    v15 = objc_alloc_init(CUKeychainItem);
    [v15 setAccessGroup:@"com.apple.rapport"];
    [v15 setSyncType:3];
    v16 = objc_alloc_init(CUKeychainManager);
    v37 = 0;
    v31 = v15;
    v17 = [v16 copyItemsMatchingItem:v15 flags:10 error:&v37];
    v18 = v37;
    if (v18 && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117770(v18);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        v23 = 0;
        do
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * v23);
          if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
          {
            sub_1001177B0(v24);
          }

          v32 = 0;
          v25 = [v16 removeItemMatchingItem:v24 error:&v32];
          v26 = v32;
          v18 = v26;
          if (v25)
          {
            v27 = v26 == 0;
          }

          else
          {
            v27 = 0;
          }

          if (!v27 && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3730, "[RPDaemonXPCConnection primaryAccountSignedOutWithCompletion:]", 90, "### Remove failed: %@, %{error}\n", v24, v18);
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v28 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
        v21 = v28;
      }

      while (v28);
    }

    v29 = +[RPDaemon sharedDaemon];
    [v29 postDaemonInfoChanges:16];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v30 = RPErrorF(4294896128, "Missing entitlement '%@' for %@", v9, v10, v11, v12, v13, v14, @"com.apple.rapport.Client");
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001176DC(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v30);
  }
}

- (void)serverCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v41 = 0;
  v16 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"createDeviceMapping" error:&v41];
  v17 = v41;
  if (v16)
  {
    v18 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    v19 = [v18 findDeviceFromID:dCopy];

    if (v19)
    {
      switch(internal)
      {
        case 2:
          [RPNWListener queryDeviceToApplicationServiceMapping:serviceCopy device:v19 completion:completionCopy];
          break;
        case 1:
          v38 = [RPNWListener addDeviceToApplicationServiceMapping:serviceCopy device:v19 completion:completionCopy];
          break;
        case 0:
          v26 = +[RPNWEndpoint dduiEndpointsKey];
          v27 = [RPNWEndpoint addEndpointMapping:v19 endpointID:iDCopy applicationService:serviceCopy discoverySessionID:v26 shouldAutomapListener:0];

          if ((v27 & 1) == 0)
          {
            v34 = RPErrorF(4294960569, "Failed to add endpoint mapping", v28, v29, v30, v31, v32, v33, v40);

            v17 = v34;
          }

          if (completionCopy)
          {
            v35 = +[RPNWNetworkAgent sharedNetworkAgent];
            networkAgentID = [v35 networkAgentID];
            completionCopy[2](completionCopy, networkAgentID, v17);
          }

          break;
        default:
          v37 = "Invalid mapping type";
          goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001177F0(dCopy);
      if (!completionCopy)
      {
        goto LABEL_21;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_21;
    }

    v37 = "Failed to find device for mapping";
LABEL_20:
    v39 = RPErrorF(4294960569, v37, v20, v21, v22, v23, v24, v25, v40);

    completionCopy[2](completionCopy, 0, v39);
    v17 = v39;
    goto LABEL_21;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v17);
  }

LABEL_22:
}

- (void)serverExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion
{
  forCopy = for;
  keyCopy = key;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0;
  v11 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"serverExchangeQUICPublicKeyFor" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[RPNWNetworkAgent sharedNetworkAgent];
    [v13 exchangeQUICPublicKeyFor:forCopy publicKey:keyCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v12);
  }
}

- (void)serverSetAutoMappingInternal:(BOOL)internal completion:(id)completion
{
  internalCopy = internal;
  completionCopy = completion;
  [RPNWListener setAutoMapping:internalCopy];
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v5 = completionCopy;
  }
}

- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"removeSessionPairedIdentity" error:&v10];
  v8 = v10;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    v9 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v9 removeSessionPairedIdentityWithIdentifier:identityCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"removeAdHocPairedIdentity" error:&v10];
  v8 = v10;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    v9 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v9 removeAdHocPairedIdentityWithIdentifier:identityCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

@end