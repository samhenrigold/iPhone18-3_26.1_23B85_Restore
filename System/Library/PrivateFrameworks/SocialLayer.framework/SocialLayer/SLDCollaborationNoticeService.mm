@interface SLDCollaborationNoticeService
+ (id)sharedService;
- (BOOL)_connShouldUnrestrictHighlightLookup:(id)lookup;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)_handlesForAttributionIdentifiers:(id)identifiers appID:(id)d;
- (void)_send:(id)_send forAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)_sendClearNoticesTransmission:(id)transmission forAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)sendClearNoticesFor:(id)for forAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)sendHighlightEventData:(id)data eventType:(int64_t)type forAttributionIdentifiers:(id)identifiers reply:(id)reply;
@end

@implementation SLDCollaborationNoticeService

+ (id)sharedService
{
  if (sharedService_onceToken_6 != -1)
  {
    +[SLDCollaborationNoticeService sharedService];
  }

  v3 = sharedService_sService_6;

  return v3;
}

uint64_t __46__SLDCollaborationNoticeService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationNoticeService);
  v1 = sharedService_sService_6;
  sharedService_sService_6 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)sendClearNoticesFor:(id)for forAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  replyCopy = reply;
  identifiersCopy = identifiers;
  forCopy = for;
  v11 = objc_alloc(getIMCollaborationClearTransmissionClass());
  date = [MEMORY[0x277CBEAA8] date];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v11 initWithCollaborationId:forCopy date:date guidString:uUIDString];

  [(SLDCollaborationNoticeService *)self _sendClearNoticesTransmission:v15 forAttributionIdentifiers:identifiersCopy reply:replyCopy];
}

- (void)sendHighlightEventData:(id)data eventType:(int64_t)type forAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  replyCopy = reply;
  identifiersCopy = identifiers;
  dataCopy = data;
  v13 = objc_alloc(getIMCollaborationNoticeTransmissionClass());
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [v13 initWithEventData:dataCopy eventType:type guidString:uUIDString date:date];

  [(SLDCollaborationNoticeService *)self _send:v17 forAttributionIdentifiers:identifiersCopy reply:replyCopy];
}

- (void)_sendClearNoticesTransmission:(id)transmission forAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  transmissionCopy = transmission;
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(SLDCollaborationNoticeService *)self _connShouldUnrestrictHighlightLookup:currentConnection])
  {
    v12 = @"accessibility";
  }

  else
  {
    v12 = [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:currentConnection];
  }

  IMCollaborationNoticeDispatcherClass = getIMCollaborationNoticeDispatcherClass();
  if (!IMCollaborationNoticeDispatcherClass || (IMCollaborationNoticeDispatcherClass = getIMCollaborationClearTransmissionClass()) == 0 || (IMCollaborationNoticeDispatcherClass = [getIMCollaborationClearTransmissionClass() instancesRespondToSelector:sel_initWithCollaborationId_date_guidString_], (IMCollaborationNoticeDispatcherClass & 1) == 0))
  {
    v14 = SLDaemonLogHandle(IMCollaborationNoticeDispatcherClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

    replyCopy[2](replyCopy, 0);
  }

  v15 = [(SLDCollaborationNoticeService *)self _handlesForAttributionIdentifiers:identifiersCopy appID:v12];
  if (!v15)
  {
    v17 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

    goto LABEL_17;
  }

  v16 = [getIMCollaborationNoticeDispatcherClass() instancesRespondToSelector:sel_sendClearNotice_toHandles_completion_];
  if (!v16)
  {
    v17 = SLDaemonLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

LABEL_17:

    replyCopy[2](replyCopy, 0);
    goto LABEL_18;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke;
  block[3] = &unk_278927298;
  block[4] = self;
  v19 = transmissionCopy;
  v20 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);
  replyCopy[2](replyCopy, 1);

LABEL_18:
}

void __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v5 = SLDaemonLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 134218498;
    v18 = v6;
    v19 = 2080;
    v20 = "[SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] posting clear notice to imagent. Request UUID: %@", buf, 0x20u);
  }

  v7 = objc_alloc_init(getIMCollaborationNoticeDispatcherClass());
  v8 = a1[5];
  v9 = [MEMORY[0x277CBEB98] setWithArray:a1[6]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke_55;
  v13[3] = &unk_2789275B0;
  v10 = a1[4];
  v14 = v7;
  v15 = v10;
  v16 = v3;
  v11 = v3;
  v12 = v7;
  [v12 sendClearNotice:v8 toHandles:v9 completion:v13];
}

void __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke_55(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = SLDaemonLogHandle([*(a1 + 32) disconnectFromDaemon]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (a2)
    {
      v5 = @"YES";
    }

    v8 = 134218754;
    v9 = v6;
    v10 = 2080;
    v11 = "[SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] post clear notice completion success: %@ request UUID: %@", &v8, 0x2Au);
  }
}

- (void)_send:(id)_send forAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  _sendCopy = _send;
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(SLDCollaborationNoticeService *)self _connShouldUnrestrictHighlightLookup:currentConnection])
  {
    v12 = @"accessibility";
  }

  else
  {
    v12 = [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:currentConnection];
  }

  IMCollaborationNoticeDispatcherClass = getIMCollaborationNoticeDispatcherClass();
  if (!IMCollaborationNoticeDispatcherClass || (IMCollaborationNoticeDispatcherClass = getIMCollaborationNoticeTransmissionClass()) == 0 || (IMCollaborationNoticeDispatcherClass = [getIMCollaborationNoticeTransmissionClass() instancesRespondToSelector:sel_initWithEventData_eventType_guidString_date_], (IMCollaborationNoticeDispatcherClass & 1) == 0))
  {
    v14 = SLDaemonLogHandle(IMCollaborationNoticeDispatcherClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

    replyCopy[2](replyCopy, 0);
  }

  v15 = MEMORY[0x277CBEB98];
  v16 = [(SLDCollaborationNoticeService *)self _handlesForAttributionIdentifiers:identifiersCopy appID:v12];
  v17 = [v15 setWithArray:v16];

  if (!v17)
  {
    v20 = SLDaemonLogHandle(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

    goto LABEL_17;
  }

  v19 = [getIMCollaborationNoticeDispatcherClass() instancesRespondToSelector:sel_sendNotice_toHandles_completion_];
  if (!v19)
  {
    v20 = SLDaemonLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

LABEL_17:

    replyCopy[2](replyCopy, 0);
    goto LABEL_18;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke;
  block[3] = &unk_278927298;
  block[4] = self;
  v22 = _sendCopy;
  v23 = v17;
  dispatch_async(MEMORY[0x277D85CD0], block);
  replyCopy[2](replyCopy, 1);

LABEL_18:
}

void __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v5 = SLDaemonLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 134218498;
    v18 = v6;
    v19 = 2080;
    v20 = "[SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] posting notice to imagent. Request UUID: %@", buf, 0x20u);
  }

  v7 = objc_alloc_init(getIMCollaborationNoticeDispatcherClass());
  v8 = a1[5];
  v9 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke_67;
  v13[3] = &unk_2789275B0;
  v10 = a1[4];
  v14 = v7;
  v15 = v10;
  v16 = v3;
  v11 = v3;
  v12 = v7;
  [v12 sendNotice:v8 toHandles:v9 completion:v13];
}

void __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke_67(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = SLDaemonLogHandle([*(a1 + 32) disconnectFromDaemon]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (a2)
    {
      v5 = @"YES";
    }

    v8 = 134218754;
    v9 = v6;
    v10 = 2080;
    v11 = "[SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] post notice completion success: %@ request UUID: %@", &v8, 0x2Au);
  }
}

- (id)_handlesForAttributionIdentifiers:(id)identifiers appID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v23 = [[SLHighlightCenter alloc] initWithAppIdentifier:dCopy];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = identifiersCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(SLHighlightCenter *)v23 fetchAttributionForAttributionIdentifier:*(*(&v28 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          relatedPersons = [v11 relatedPersons];
          v14 = [relatedPersons countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(relatedPersons);
                }

                handle = [*(*(&v24 + 1) + 8 * j) handle];
                [array addObject:handle];
              }

              v15 = [relatedPersons countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v19 = [array copy];

  return v19;
}

- (BOOL)_connShouldUnrestrictHighlightLookup:(id)lookup
{
  v22 = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  v5 = MEMORY[0x277D46F48];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lookupCopy, "processIdentifier")}];
  v15 = 0;
  v7 = [v5 handleForIdentifier:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (v10)
  {
    bundle = SLDaemonLogHandle(v9);
    if (os_log_type_enabled(bundle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2112;
      v19 = lookupCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_231772000, bundle, OS_LOG_TYPE_ERROR, "[SLDCollaborationNoticeService: %p] failed to look up a process handle for: %@ error: %@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    bundle = [v7 bundle];
    identifier = [bundle identifier];
    v13 = [identifier isEqualToString:@"com.apple.SafariBookmarksSyncAgent"];
  }

  return v13;
}

- (id)_applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v7 = [v6 bundleRecordForAuditToken:v15 error:&v14];
  v8 = v14;
  applicationIdentifier = [v7 applicationIdentifier];

  if (!applicationIdentifier)
  {
    v11 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:v8, v11];
    }
  }

  applicationIdentifier2 = [v7 applicationIdentifier];

  return applicationIdentifier2;
}

- (void)_sendClearNoticesTransmission:forAttributionIdentifiers:reply:.cold.3()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_3(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Didn't find any handles for attribution identifiers '%@' Bailing.");
}

- (void)_send:forAttributionIdentifiers:reply:.cold.3()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_3(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Didn't find any handles for attribution identifiers '%@' Bailing.");
}

- (void)_applicationIdentifierForConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v7;
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@: %p] Failed to generate a bundle record, or the record's app ID is nil. This is required to look up attribution data. Error: %@", &v8, 0x20u);
}

@end