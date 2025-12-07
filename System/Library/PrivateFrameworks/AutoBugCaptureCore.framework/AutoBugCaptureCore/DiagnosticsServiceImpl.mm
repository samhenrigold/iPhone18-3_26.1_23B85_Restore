@interface DiagnosticsServiceImpl
- (BOOL)_checkRateLimitForAllowance:(id)allowance time:(id)time;
- (BOOL)assertEntitlement:(void *)entitlement entitlement:(int)a4 private:;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateSignature:(_BOOL8)signature;
- (DiagnosticsServiceImpl)initWithQueue:(id)queue;
- (id)responseDictWithSuccess:(uint64_t)success reasonCode:;
- (id)responseDictWithSuccess:(uint64_t)success reasonCode:(uint64_t)code expiresIn:(uint64_t)in;
- (id)responseDictWithSuccess:(void *)success sessionId:;
- (id)responseDictWithSuccess:(void *)success sessionId:(void *)id groupId:(void *)groupId additionalDict:(uint64_t)dict reasonCode:;
- (id)responseDictWithSuccess:(void *)success sessionId:(void *)id groupId:(void *)groupId additionalDict:(uint64_t)dict reasonCode:(void *)code expiresIn:;
- (void)_checkRateLimitForConnection:(void *)connection signature:(void *)signature reply:;
- (void)abcEnabledAndReadyWithReply:(uint64_t)reply;
- (void)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply;
- (void)addToSession:(id)session event:(id)event payload:(id)payload reply:(id)reply;
- (void)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply;
- (void)cancelSession:(id)session;
- (void)cloudKitUploadDecisionForCaseIdentifiers:(id)identifiers reply:(id)reply;
- (void)endSession:(id)session;
- (void)getAutoBugCaptureConfiguration:(id)configuration;
- (void)getCasesListFromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply;
- (void)getDiagnosticPayloadsForSignatures:(id)signatures reply:(id)reply;
- (void)getExpertSystemsStatus:(id)status;
- (void)getSessionStatisticsWithReply:(id)reply;
- (void)homeKitResidentDevicesIDSIdentifiersWithReply:(id)reply;
- (void)listCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply;
- (void)listCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)paths reply:(id)reply;
- (void)requestGroupCaseIdentifierForSignature:(id)signature reply:(id)reply;
- (void)resetAllWithReply:(id)reply;
- (void)resetDiagnosticCaseStorageWithReply:(id)reply;
- (void)resetDiagnosticCaseUsageWithReply:(id)reply;
- (void)snapshotWithSignature:(id)signature delay:(unint64_t)delay events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply;
- (void)startSessionWithSignature:(id)signature duration:(unint64_t)duration events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply;
- (void)submitRecentCaseSummariesWithCount:(unint64_t)count reply:(id)reply;
- (void)submitRecentCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)triggerRemoteSessionForSignature:(id)signature groupIdentifier:(id)identifier reply:(id)reply;
- (void)uploadCasesWithIdentifiersToCloudKit:(id)kit;
- (void)uploadRecentCases:(unint64_t)cases;
@end

@implementation DiagnosticsServiceImpl

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [(DiagnosticsServiceImpl *)self assertEntitlement:connectionCopy entitlement:@"com.apple.symptom_diagnostics.report" private:0];
  v7 = v6;
  if (v6)
  {
    if (listener_shouldAcceptNewConnection__onceToken != -1)
    {
      [DiagnosticsServiceImpl listener:shouldAcceptNewConnection:];
    }

    [connectionCopy setExportedInterface:listener_shouldAcceptNewConnection__diagnosticsServiceInterface];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v8 = xpcLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = connectionCopy;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "DiagnosticsService: connection (%@) lacks proper entitlements", &v10, 0xCu);
    }
  }

  return v7;
}

- (BOOL)assertEntitlement:(void *)entitlement entitlement:(int)a4 private:
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  entitlementCopy = entitlement;
  v9 = self != 0;
  if (self && a4)
  {
    v10 = [v7 valueForEntitlement:entitlementCopy];
    v11 = v10;
    if (v10 && (v10 = [v10 BOOLValue], (v10 & 1) != 0))
    {
      v9 = 1;
    }

    else
    {
      v12 = xpcLogHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = entitlementCopy;
        v16 = 1024;
        processIdentifier = [v7 processIdentifier];
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics DiagnosticsService: entitlement %@ is missing (%d)", &v14, 0x12u);
      }

      v9 = 0;
    }
  }

  return v9;
}

uint64_t __61__DiagnosticsServiceImpl_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28537E8A8];
  v1 = listener_shouldAcceptNewConnection__diagnosticsServiceInterface;
  listener_shouldAcceptNewConnection__diagnosticsServiceInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_checkRateLimitForConnection:(void *)connection signature:(void *)signature reply:
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a2;
  connectionCopy = connection;
  signatureCopy = signature;
  v10 = signatureCopy;
  if (!self || !signatureCopy)
  {
    goto LABEL_28;
  }

  v11 = +[ABCAdministrator sharedInstance];
  configurationManager = [v11 configurationManager];
  disableAPIRateLimit = [configurationManager disableAPIRateLimit];

  if (disableAPIRateLimit)
  {
    v10[2](v10, 0, 0.0);
    goto LABEL_28;
  }

  processIdentifier = [v7 processIdentifier];
  v15 = self[2];
  objc_sync_enter(v15);
  date = [MEMORY[0x277CBEAA8] date];
  v17 = +[ABCAdministrator sharedInstance];
  configurationManager2 = [v17 configurationManager];
  [configurationManager2 apiRateLimit];
  v20 = v19;

  v21 = +[ABCAdministrator sharedInstance];
  configurationManager3 = [v21 configurationManager];
  [configurationManager3 apiLimitWindow];
  v24 = v23;

  v26 = xpcLogHandle(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v61 = processIdentifier;
    v62 = 2112;
    v63 = connectionCopy;
    _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: API rate limit check for client: %d signature:%@", buf, 0x12u);
  }

  v27 = self[2];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
  v29 = [v27 objectForKeyedSubscript:v28];

  if (!v29)
  {
    v29 = objc_alloc_init(RateLimitAllowance);
    [(RateLimitAllowance *)v29 setAllowance:v20];
    v30 = self[2];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
    [v30 setObject:v29 forKeyedSubscript:v31];
  }

  v32 = [self _checkRateLimitForAllowance:v29 time:date];
  if (!_checkRateLimitForConnection_signature_reply__lastCleanedAt)
  {
    goto LABEL_17;
  }

  v33 = [date timeIntervalSinceDate:?];
  if (v34 > 3600.0)
  {
    v35 = xpcLogHandle(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_INFO, "DiagnosticsService: Cleaning API rate limit cache", buf, 2u);
    }

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = self[2];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke;
    v55[3] = &unk_278CF0248;
    v56 = date;
    v58 = v24;
    v59 = v20;
    v38 = v36;
    v57 = v38;
    [v37 enumerateKeysAndObjectsUsingBlock:v55];
    if ([v38 count])
    {
      [self[2] removeObjectsForKeys:v38];
    }

    objc_storeStrong(&_checkRateLimitForConnection_signature_reply__lastCleanedAt, date);

    goto LABEL_18;
  }

  if (!_checkRateLimitForConnection_signature_reply__lastCleanedAt)
  {
LABEL_17:
    v39 = date;
    v38 = _checkRateLimitForConnection_signature_reply__lastCleanedAt;
    _checkRateLimitForConnection_signature_reply__lastCleanedAt = v39;
LABEL_18:
  }

  v40 = 0.0;
  if ((v32 & 1) == 0)
  {
    [(RateLimitAllowance *)v29 allowance];
    v42 = 1.0 - v41;
    v43 = v24 / v20;
    if (v20 <= 0.0)
    {
      v43 = 0.0;
    }

    v44 = v43 * v42;
    v40 = ceilf(v44);
  }

  objc_sync_exit(v15);
  if (v32)
  {
    v10[2](v10, 0, 0.0);
  }

  else
  {
    v45 = [connectionCopy objectForKeyedSubscript:@"groupID"];

    if (v45)
    {
      v46 = +[ABCAdministrator sharedInstance];
      caseManager = [v46 caseManager];
      v48 = [connectionCopy objectForKeyedSubscript:@"domain"];
      v49 = [connectionCopy objectForKeyedSubscript:@"type"];
      v50 = [connectionCopy objectForKeyedSubscript:@"subtype"];
      v51 = [connectionCopy objectForKeyedSubscript:@"detected"];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke_127;
      v52[3] = &unk_278CF0270;
      v53 = v10;
      v54 = v40;
      [caseManager countOfCasesMatchingDomain:v48 type:v49 subtype:v50 process:v51 groupCaseIDIsPresent:1 withinLast:v52 reply:3600.0];
    }

    else
    {
      v10[2](v10, 1, v40);
    }
  }

LABEL_28:
}

void __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 lastCheckedAt];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = *(a1 + 48);
  v12 = 0.0;
  if (v11 > 0.0)
  {
    v12 = *(a1 + 56) / v11;
  }

  [v6 allowance];
  [v6 setAllowance:v13 + v10 * v12];
  [v6 setLastCheckedAt:*(a1 + 32)];
  [v6 allowance];
  if (v14 >= *(a1 + 56))
  {
    v15 = xpcLogHandle([*(a1 + 40) addObject:v5]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [v6 allowance];
      v17 = 138412546;
      v18 = v5;
      v19 = 2048;
      v20 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit allowance for client %@ has fully recovered (%.1f). Cleaning out.", &v17, 0x16u);
    }
  }
}

uint64_t __71__DiagnosticsServiceImpl__checkRateLimitForConnection_signature_reply___block_invoke_127(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = xpcLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "";
    if (a2)
    {
      v5 = " Not";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticsService:%s overriding rate limit for group case", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0, *(a1 + 40));
  }

  return result;
}

- (BOOL)_checkRateLimitForAllowance:(id)allowance time:(id)time
{
  v49 = *MEMORY[0x277D85DE8];
  allowanceCopy = allowance;
  timeCopy = time;
  v7 = +[ABCAdministrator sharedInstance];
  configurationManager = [v7 configurationManager];
  [configurationManager apiRateLimit];
  v10 = v9;

  v11 = +[ABCAdministrator sharedInstance];
  configurationManager2 = [v11 configurationManager];
  [configurationManager2 apiLimitWindow];
  v14 = v13;

  v16 = xpcLogHandle(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [allowanceCopy allowance];
    v18 = v17;
    lastCheckedAt = [allowanceCopy lastCheckedAt];
    if (lastCheckedAt)
    {
      v20 = "last checked at: ";
    }

    else
    {
      v20 = "(no previous checks)";
    }

    lastCheckedAt2 = [allowanceCopy lastCheckedAt];
    v22 = lastCheckedAt2;
    *v42 = 134219010;
    v23 = &stru_285368168;
    *&v42[4] = v18;
    if (lastCheckedAt2)
    {
      v23 = lastCheckedAt2;
    }

    *&v42[12] = 2048;
    *&v42[14] = v10;
    v43 = 2048;
    v44 = v14;
    v45 = 2080;
    v46 = v20;
    v47 = 2112;
    v48 = v23;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit check - allowance: %.1f  current rate: %.0f calls per %.0f seconds. %s%@", v42, 0x34u);
  }

  lastCheckedAt3 = [allowanceCopy lastCheckedAt];

  if (lastCheckedAt3)
  {
    lastCheckedAt4 = [allowanceCopy lastCheckedAt];
    [timeCopy timeIntervalSinceDate:lastCheckedAt4];
    v27 = v26;

    [allowanceCopy allowance];
    [allowanceCopy setAllowance:v28 + v27 * (v10 / v14)];
    allowance = [allowanceCopy allowance];
    if (v30 > v10)
    {
      allowance = [allowanceCopy setAllowance:v10];
    }

    v31 = xpcLogHandle(allowance);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [allowanceCopy allowance];
      *v42 = 134217984;
      *&v42[4] = v32;
      _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "DiagnosticsService: API rate limit allowance recovered to %.1f", v42, 0xCu);
    }
  }

  allowance2 = [allowanceCopy allowance];
  v35 = v34;
  if (v34 < 1.0)
  {
    v37 = xpcLogHandle(allowance2);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      [allowanceCopy allowance];
      *v42 = 134217984;
      *&v42[4] = v40;
      v39 = "DiagnosticsService: API rate limit allowance is insufficient (%.1f), disallowed";
      goto LABEL_19;
    }
  }

  else
  {
    [allowanceCopy allowance];
    v37 = xpcLogHandle([allowanceCopy setAllowance:v36 + -1.0]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      [allowanceCopy allowance];
      *v42 = 134217984;
      *&v42[4] = v38;
      v39 = "DiagnosticsService: API rate limit allowance reduced to %.1f, allowing";
LABEL_19:
      _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_INFO, v39, v42, 0xCu);
    }
  }

  [allowanceCopy setLastCheckedAt:timeCopy];
  return v35 >= 1.0;
}

- (DiagnosticsServiceImpl)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = DiagnosticsServiceImpl;
  v6 = [(DiagnosticsServiceImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allowanceCache = v7->allowanceCache;
    v7->allowanceCache = v8;
  }

  return v7;
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    v12 = xpcLogHandle(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: snapshotWithSignature - ABC is not enabled", buf, 2u);
    }

    v13 = *(a1 + 72);
    if (!v13)
    {
      return;
    }

    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_14:
    v11 = [(DiagnosticsServiceImpl *)v14 responseDictWithSuccess:*v15 reasonCode:?];
    (*(v13 + 16))(v13, v11);
    goto LABEL_4;
  }

  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_139;
    v18[3] = &unk_278CF02C0;
    v22 = *(a1 + 72);
    v17 = *(a1 + 32);
    v7 = *(&v17 + 1);
    v8 = *(a1 + 48);
    v23 = *(a1 + 80);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v19 = v17;
    v20 = v10;
    v21 = *(a1 + 64);
    v24 = *(a1 + 88);
    [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v18];

    v11 = v22;
LABEL_4:

    return;
  }

  v16 = xpcLogHandle(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: snapshotWithSignature - ABC is not ready", buf, 2u);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceNotReady;
    goto LABEL_14;
  }
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_139(uint64_t a1, int a2, double a3)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v15 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v16 = *(a1 + 48);
    v17 = [v16 objectForKeyedSubscript:@"sandbox_ext_token_dict"];

    if (v17)
    {
      v19 = [v16 mutableCopy];
      [v19 removeObjectForKey:@"sandbox_ext_token_dict"];

      v21 = xpcLogHandle(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "> DiagnosticsService: redacting sandbox extension token", buf, 2u);
      }

      v16 = v19;
    }

    v22 = xpcLogHandle(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 80);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v27 = "invalid";
      if (v15)
      {
        v27 = "valid";
      }

      v28 = "";
      if (*(a1 + 88))
      {
        v28 = "(trigger remote diags)";
      }

      *buf = 138413826;
      v44 = v23;
      v45 = 2048;
      v46 = v24;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v25;
      v51 = 2112;
      v52 = v26;
      v53 = 2080;
      v54 = v27;
      v55 = 2080;
      v56 = v28;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to SNAPSHOT with signature: %@, for Delay: %ld, payload: %@, events: %@, actions: %@ (signature %s) %s", buf, 0x48u);
    }

    if (v15)
    {
      if (*(a1 + 88))
      {
        v29 = 5;
      }

      else
      {
        v32 = [*(a1 + 40) objectForKeyedSubscript:@"groupID"];

        if (v32)
        {
          v29 = 3;
        }

        else
        {
          v29 = 1;
        }
      }

      v33 = +[ABCAdministrator sharedInstance];
      v34 = [v33 caseManager];
      v35 = *(a1 + 80);
      v36 = *(a1 + 40);
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      v39 = *(a1 + 64);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_143;
      v41[3] = &unk_278CF0298;
      v40 = *(a1 + 72);
      v41[4] = *(a1 + 32);
      v42 = v40;
      [v34 startSessionWithSignature:v36 flags:v29 preferredTimeout:v38 events:v37 payload:v39 actions:v41 reply:v35];

      v31 = v42;
    }

    else
    {
      v30 = *(a1 + 72);
      if (!v30)
      {
        goto LABEL_27;
      }

      v31 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:20 reasonCode:?];
      (*(v30 + 16))(v30, v31);
    }

    goto LABEL_27;
  }

  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  [v5 apiRateLimit];
  v7 = v6;

  v8 = +[ABCAdministrator sharedInstance];
  v9 = [v8 configurationManager];
  [v9 apiLimitWindow];
  v11 = v10;

  v13 = xpcLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v44 = v7;
    v45 = 2048;
    v46 = v11;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: API rate limited. (Allowed limit is %.0f calls per %.0f second window)", buf, 0x16u);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v16 = [DiagnosticsServiceImpl responseDictWithSuccess:0 reasonCode:41 expiresIn:?];
    (*(v14 + 16))(v14, v16);
LABEL_27:
  }
}

void __99__DiagnosticsServiceImpl_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_143(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:a3 groupId:a4 additionalDict:a5 reasonCode:?];
    (*(v5 + 16))(v5, v6);
  }
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    v12 = xpcLogHandle(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: startSessionWithSignature - ABC is not enabled", buf, 2u);
    }

    v13 = *(a1 + 72);
    if (!v13)
    {
      return;
    }

    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_14:
    v11 = [(DiagnosticsServiceImpl *)v14 responseDictWithSuccess:*v15 reasonCode:?];
    (*(v13 + 16))(v13, v11);
    goto LABEL_4;
  }

  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_147;
    v18[3] = &unk_278CF02C0;
    v22 = *(a1 + 72);
    v17 = *(a1 + 32);
    v7 = *(&v17 + 1);
    v23 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v19 = v17;
    v20 = v10;
    v21 = *(a1 + 64);
    v24 = *(a1 + 88);
    [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v18];

    v11 = v22;
LABEL_4:

    return;
  }

  v16 = xpcLogHandle(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: startSessionWithSignature - ABC is not ready", buf, 2u);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = &kSymptomDiagnosticErrorServiceNotReady;
    goto LABEL_14;
  }
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_147(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v5 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v6 = v5;
    v7 = xpcLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = "invalid";
      if (v6)
      {
        v13 = "valid";
      }

      *buf = 138413570;
      v31 = v9;
      v32 = 2048;
      v33 = v8;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2080;
      v41 = v13;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to START logging session with signature: %@, duration: %ld, payload: %@, events: %@, actions: %@ (signature %s)", buf, 0x3Eu);
    }

    if (v6)
    {
      if (*(a1 + 88))
      {
        v14 = 4;
      }

      else
      {
        v18 = [*(a1 + 40) objectForKeyedSubscript:@"groupID"];
        v19 = v18 != 0;

        v14 = 2 * v19;
      }

      v20 = +[ABCAdministrator sharedInstance];
      v21 = [v20 caseManager];
      v22 = *(a1 + 80);
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_148;
      v28[3] = &unk_278CF0298;
      v27 = *(a1 + 72);
      v28[4] = *(a1 + 32);
      v29 = v27;
      [v21 startSessionWithSignature:v23 flags:v14 preferredTimeout:v25 events:v24 payload:v26 actions:v28 reply:v22];

      v17 = v29;
      goto LABEL_19;
    }

    v4 = *(a1 + 72);
    if (!v4)
    {
      return;
    }

    v15 = *(a1 + 32);
    v16 = &kSymptomDiagnosticErrorInvalidParameters;
LABEL_14:
    v17 = [(DiagnosticsServiceImpl *)v15 responseDictWithSuccess:*v16 reasonCode:?];
    (*(v4 + 16))(v4, v17);
LABEL_19:

    return;
  }

  v3 = xpcLogHandle(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "DiagnosticsService: API rate limited.", buf, 2u);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v15 = *(a1 + 32);
    v16 = &kSymptomDiagnosticErrorRequestThrottled;
    goto LABEL_14;
  }
}

void __106__DiagnosticsServiceImpl_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_148(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:a3 groupId:a4 additionalDict:a5 reasonCode:?];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)addToSession:(id)session event:(id)event payload:(id)payload reply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  payloadCopy = payload;
  replyCopy = reply;
  if (event)
  {
    eventCopy = event;
    v13 = MEMORY[0x277CBEA60];
    eventCopy2 = event;
    event = [v13 arrayWithObjects:&eventCopy count:1];
  }

  [(DiagnosticsServiceImpl *)self addToSession:sessionCopy events:event payload:payloadCopy reply:replyCopy, eventCopy, v16];
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138412802;
      *&buf[4] = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request ADD EVENTS to session: %@. events: %@ payload: %@", buf, 0x20u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152;
    v19[3] = &unk_278CF0310;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v19[4] = *(a1 + 32);
    v20 = v16;
    [v12 addToSession:v13 events:v14 payload:v15 reply:v19];

    v17 = v20;
    goto LABEL_6;
  }

  if (v7)
  {
    v18 = "enabled";
    if (v4)
    {
      v18 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: addToSession - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 64))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v17 = *buf;
LABEL_6:
  }
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(v4, a1, v2);
  }
}

void __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138412802;
      *&buf[4] = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request APPEND SIGNATURE to session: %@. key: %@ content: %@", buf, 0x20u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    v12 = [v11 caseManager];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke_154;
    v19[3] = &unk_278CF0310;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v19[4] = *(a1 + 32);
    v20 = v16;
    [v12 addSignatureContentForSession:v13 key:v14 content:v15 reply:v19];

    v17 = v20;
    goto LABEL_6;
  }

  if (v7)
  {
    v18 = "enabled";
    if (v4)
    {
      v18 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: addSignatureContentForSession - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 64))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v17 = *buf;
LABEL_6:
  }
}

void __74__DiagnosticsServiceImpl_addSignatureContentForSession_key_content_reply___block_invoke_154(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(v4, a1, v2);
  }
}

void __37__DiagnosticsServiceImpl_endSession___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v13 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to END logging session: %@", &v11, 0xCu);
    }

    v6 = +[ABCAdministrator sharedInstance];
    v9 = [v6 caseManager];
    [v9 endSessionWithIdentifier:*(a1 + 32) forced:0];
  }

  else if (v7)
  {
    v10 = "enabled";
    if (v4)
    {
      v10 = "ready";
    }

    v11 = 136446210;
    v12 = v10;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: endSession - ABC is not %{public}s", &v11, 0xCu);
  }
}

void __40__DiagnosticsServiceImpl_cancelSession___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v13 = *MEMORY[0x277D85DE8];
  v6 = xpcLogHandle(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 && (a3 & 1) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to CANCEL logging session: %@", &v11, 0xCu);
    }

    v6 = +[ABCAdministrator sharedInstance];
    v9 = [v6 caseManager];
    [v9 cancelSessionWithIdentifier:*(a1 + 32)];
  }

  else if (v7)
  {
    v10 = "enabled";
    if (v4)
    {
      v10 = "ready";
    }

    v11 = 136446210;
    v12 = v10;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: cancelSession - ABC is not %{public}s", &v11, 0xCu);
  }
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    if (a3)
    {
      if (!*(a1 + 48))
      {
        return;
      }

      v4 = *(a1 + 32);
      v5 = [MEMORY[0x277CCAE80] currentConnection];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155;
      v16[3] = &unk_278CF03B0;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v18 = v7;
      v16[4] = v8;
      v17 = v9;
      [(DiagnosticsServiceImpl *)v4 _checkRateLimitForConnection:v5 signature:v6 reply:v16];

      v10 = v18;
      goto LABEL_14;
    }

    v15 = xpcLogHandle(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: groupCaseIdentifierForSignature - ABC is not ready", buf, 2u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = &kSymptomDiagnosticErrorServiceNotReady;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = xpcLogHandle(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: groupCaseIdentifierForSignature - ABC is not enabled", buf, 2u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = &kSymptomDiagnosticErrorServiceUnavailable;
LABEL_13:
      v10 = [(DiagnosticsServiceImpl *)v13 responseDictWithSuccess:*v14 reasonCode:?];
      (*(v12 + 16))(v12, v10);
LABEL_14:
    }
  }
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_2(a1, buf);
  }

  else
  {
    v4 = [(DiagnosticsServiceImpl *)*(a1 + 32) validateSignature:?];
    v5 = v4;
    v6 = xpcLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "invalid";
      v8 = *(a1 + 40);
      if (v5)
      {
        v7 = "valid";
      }

      *buf = 138412546;
      *&buf[4] = v8;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request for a group case identifier with signature: %@ (signature %s)", buf, 0x16u);
    }

    if (v5)
    {
      v9 = +[ABCAdministrator sharedInstance];
      v10 = [v9 caseManager];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_156;
      v13[3] = &unk_278CF0388;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13[4] = *(a1 + 32);
      v14 = v12;
      [v10 requestGroupCaseIdentifierForSignature:v11 reply:v13];

      v3 = v14;
      goto LABEL_10;
    }

    __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_1(a1, (a1 + 32));
  }

  v3 = *buf;
LABEL_10:
}

void __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  v24 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    v7 = v6;
    v8 = xpcLogHandle(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: remote trigger authorized", buf, 2u);
      }

      v10 = +[ABCAdministrator sharedInstance];
      v11 = [v10 diagnosticLiaison];
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = *(*(a1 + 32) + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke_162;
      v19[3] = &unk_278CF0090;
      v20 = *(a1 + 56);
      [v11 remotelyTriggerSessionForSignature:v13 groupIdentifier:v12 event:0 queue:v14 reply:v19];

      v15 = v20;
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: not entitled to access private API", buf, 2u);
      }

      v18 = *(a1 + 56);
      if (!v18)
      {
        goto LABEL_18;
      }

      v21 = @"success";
      v22 = MEMORY[0x277CBEC28];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      (*(v18 + 16))(v18, v15);
    }

LABEL_18:
    return;
  }

  v16 = xpcLogHandle(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "enabled";
    if (v3)
    {
      v17 = "ready";
    }

    *buf = 136446210;
    *&buf[4] = v17;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): triggerRemoteSessionForSignature - ABC is not %{public}s", buf, 0xCu);
  }

  if (*(a1 + 56))
  {
    __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1();
    v5 = *buf;
    goto LABEL_18;
  }
}

void __81__DiagnosticsServiceImpl_triggerRemoteSessionForSignature_groupIdentifier_reply___block_invoke_162(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"success";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    (*(v2 + 16))(v2, v4);
  }
}

void __56__DiagnosticsServiceImpl_getSessionStatisticsWithReply___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    if (v6)
    {
      v7 = xpcLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: statistics authorized", &v15, 2u);
      }

      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 caseManager];
      v10 = [v9 statsManager];
      [v10 getDiagnosticCaseUsageStatistics:*(a1 + 40)];
    }

    else if (*(a1 + 40))
    {
      v14 = xpcLogHandle(v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to access private API", &v15, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = xpcLogHandle(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "enabled";
      if (v3)
      {
        v12 = "ready";
      }

      v15 = 136446210;
      v16 = v12;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getSessionStatisticsWithReply - ABC is not %{public}s", &v15, 0xCu);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

void __65__DiagnosticsServiceImpl_getCasesListFromIdentifier_count_reply___block_invoke(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    if (v6)
    {
      v7 = xpcLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: incremental case listing authorized", &v14, 2u);
      }

      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 caseManager];
      [v9 getHistoricalDiagnosicCaseDictionaryFromIdentifier:a1[5] withEvents:0 count:a1[7] reply:a1[6]];
    }

    else if (a1[6])
    {
      v13 = xpcLogHandle(v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to access private API", &v14, 2u);
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v10 = xpcLogHandle(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "enabled";
      if (v3)
      {
        v11 = "ready";
      }

      v14 = 136446210;
      v15 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getCasesListFromIdentifier - ABC is not %{public}s", &v14, 0xCu);
    }

    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

- (void)resetDiagnosticCaseStorageWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reqeust to reset DiagnosticCaseStorage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = v8;
  v10 = xpcLogHandle(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset case storage authorized", v15, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v12 = +[ABCAdministrator sharedInstance];
    caseManager = [v12 caseManager];
    [caseManager resetDiagnosticCaseStorage];

    if (!replyCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    replyCopy[2](replyCopy, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v14, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (replyCopy)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)resetDiagnosticCaseUsageWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to reset DiagnosticCaseUsage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = v8;
  v10 = xpcLogHandle(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset case usage authorized", v16, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v12 = +[ABCAdministrator sharedInstance];
    caseManager = [v12 caseManager];
    statsManager = [caseManager statsManager];
    [statsManager resetDiagnosticCaseUsage];

    if (!replyCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    replyCopy[2](replyCopy, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v15, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (replyCopy)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)resetAllWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request to reset DiagnosticCaseStorage and DiagnosticCaseUsage backing store", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.reset" private:1];
  v9 = v8;
  v10 = xpcLogHandle(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: reset all authorized", v15, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v12 = +[ABCAdministrator sharedInstance];
    caseManager = [v12 caseManager];
    [caseManager resetAll];

    if (!replyCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    replyCopy[2](replyCopy, v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagnosticsService: no entitlement to execute reset", v14, 2u);
  }

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  if (replyCopy)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void __49__DiagnosticsServiceImpl_getExpertSystemsStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [MEMORY[0x277CCAE80] currentConnection];
    v5 = [(DiagnosticsServiceImpl *)*(a1 + 32) assertEntitlement:v4 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    v6 = v5;
    v7 = xpcLogHandle(v5);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request service status authorized", v13, 2u);
      }

      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 internalStateDictionary];
      [v3 setObject:v9 forKeyedSubscript:@"AutoBugCaptureAdministrator"];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to request service status", v13, 2u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v3);
    }

    goto LABEL_15;
  }

  v10 = xpcLogHandle(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService(PRIVATE): getExpertSystemsStatus - ABC is not enabled", v13, 2u);
  }

  if (*(a1 + 40))
  {
    v16 = @"AutoBugCaptureAdministrator";
    v14 = @"serviceEnabled";
    v15 = MEMORY[0x277CBEC28];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v11;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    (*(*(a1 + 40) + 16))();
LABEL_15:
  }
}

- (void)getDiagnosticPayloadsForSignatures:(id)signatures reply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  signaturesCopy = signatures;
  replyCopy = reply;
  v8 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = signaturesCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request collected payloads for the given signatures: %@", buf, 0xCu);
  }

  v9 = +[ABCAdministrator sharedInstance];
  caseManager = [v9 caseManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke;
  v12[3] = &unk_278CF04A0;
  v12[4] = self;
  v13 = replyCopy;
  v11 = replyCopy;
  [caseManager payloadsForSignatures:signaturesCopy reply:v12];
}

void __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__DiagnosticsServiceImpl_getDiagnosticPayloadsForSignatures_reply___block_invoke_2;
    block[3] = &unk_278CF0478;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)homeKitResidentDevicesIDSIdentifiersWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request IDS identifiers of HomeKit resident devices", buf, 2u);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v8 = v7;
  v9 = xpcLogHandle(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized request for IDS identifiers of HomeKit resident devices", buf, 2u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    diagnosticLiaison = [v11 diagnosticLiaison];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__DiagnosticsServiceImpl_homeKitResidentDevicesIDSIdentifiersWithReply___block_invoke;
    v13[3] = &unk_278CF00B8;
    v14 = replyCopy;
    [diagnosticLiaison residentDevicesIDSIdentifiersWithReply:v13];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to request IDS identifiers of HomeKit resident devices", buf, 2u);
    }

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0);
    }
  }
}

uint64_t __72__DiagnosticsServiceImpl_homeKitResidentDevicesIDSIdentifiersWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getAutoBugCaptureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = xpcLogHandle(configurationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request current AutoBugCapture configuration", buf, 2u);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v8 = v7;
  v9 = xpcLogHandle(v7);
  configurationManager = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241804000, configurationManager, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized request for current AutoBugCapture configuration", v14, 2u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    configurationManager = [v11 configurationManager];

    getAutoBugCaptureConfiguration = [configurationManager getAutoBugCaptureConfiguration];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241804000, configurationManager, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to retrive current AutoBugCapture configuration", v13, 2u);
    }

    getAutoBugCaptureConfiguration = 0;
  }

  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy, getAutoBugCaptureConfiguration);
  }
}

- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)paths reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  replyCopy = reply;
  v8 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = pathsCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request purge AutoBugCapture files with subpaths: %@", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  v11 = v10;
  v12 = xpcLogHandle(v10);
  v13 = v12;
  if (v11)
  {
    v34 = currentConnection;
    v35 = replyCopy;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized purging of AutoBugCapture files", buf, 2u);
    }

    v14 = +[ABCAdministrator sharedInstance];
    configurationManager = [v14 configurationManager];

    v33 = configurationManager;
    logArchivePath = [configurationManager logArchivePath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    context = objc_autoreleasePoolPush();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = pathsCopy;
    v18 = pathsCopy;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      v23 = *v40;
      v37 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v39 + 1) + 8 * i);
          v26 = [logArchivePath copy];

          v22 = [v26 stringByAppendingPathComponent:v25];

          if ([defaultManager fileExistsAtPath:v22])
          {
            v38 = v21;
            v27 = [defaultManager removeItemAtPath:v22 error:&v38];
            v28 = v38;

            if ((v27 & 1) == 0)
            {
              v30 = xpcLogHandle(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v44 = v22;
                v45 = 2112;
                v46 = v28;
                _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_ERROR, "DiagnosticsService: Couldn't delete file: %@ because %@", buf, 0x16u);
              }

              v37 = 0;
            }

            v21 = v28;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v37 = 1;
    }

    objc_autoreleasePoolPop(context);
    replyCopy = v35;
    pathsCopy = v36;
    v13 = v33;
    currentConnection = v34;
    v31 = v37;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "DiagnosticsService: not entitled to purge AutoBugCapture files", buf, 2u);
    }

    v31 = 0;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v31 & 1);
  }
}

- (void)uploadCasesWithIdentifiersToCloudKit:(id)kit
{
  v23 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  v5 = xpcLogHandle(kitCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = kitCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload for case identifiers %@", &v21, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  if (v7)
  {
    v8 = xpcLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit upload of ABC cases", &v21, 2u);
    }

    v9 = +[ABCAdministrator sharedInstance];
    configurationManager = [v9 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    if (cloudKitEnabled)
    {
      v13 = +[ABCAdministrator sharedInstance];
      ckUploadController = [v13 ckUploadController];

      if (ckUploadController)
      {
        v16 = +[ABCAdministrator sharedInstance];
        ckUploadController2 = [v16 ckUploadController];
        [ckUploadController2 uploadCasesWithIdentifiers:kitCopy];

LABEL_14:
        goto LABEL_15;
      }

      v16 = xpcLogHandle(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      LOWORD(v21) = 0;
      v18 = "CloudKit upload controller is not instantiated!";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v16 = xpcLogHandle(v12);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(v21) = 0;
      v18 = "CloudKit upload is disabled";
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_241804000, v19, v20, v18, &v21, 2u);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)uploadRecentCases:(unint64_t)cases
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    casesCopy = cases;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload for recent %ld cases", &v21, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  if (v7)
  {
    v8 = xpcLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit upload of recent ABC cases", &v21, 2u);
    }

    v9 = +[ABCAdministrator sharedInstance];
    configurationManager = [v9 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    if (cloudKitEnabled)
    {
      v13 = +[ABCAdministrator sharedInstance];
      ckUploadController = [v13 ckUploadController];

      if (ckUploadController)
      {
        v16 = +[ABCAdministrator sharedInstance];
        ckUploadController2 = [v16 ckUploadController];
        [ckUploadController2 uploadMostRecentCases:cases];

LABEL_14:
        goto LABEL_15;
      }

      v16 = xpcLogHandle(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      LOWORD(v21) = 0;
      v18 = "CloudKit upload controller is not instantiated!";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v16 = xpcLogHandle(v12);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(v21) = 0;
      v18 = "CloudKit upload is disabled";
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_241804000, v19, v20, v18, &v21, 2u);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)cloudKitUploadDecisionForCaseIdentifiers:(id)identifiers reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = identifiersCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: request CloudKit upload decision for case identifiers %@", &v23, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  if (v10)
  {
    v11 = xpcLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticsService: authorized CloudKit Upload Decision of ABC cases", &v23, 2u);
    }

    v12 = +[ABCAdministrator sharedInstance];
    configurationManager = [v12 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    if (cloudKitEnabled)
    {
      v16 = +[ABCAdministrator sharedInstance];
      ckUploadController = [v16 ckUploadController];

      if (ckUploadController)
      {
        v19 = +[ABCAdministrator sharedInstance];
        ckUploadController2 = [v19 ckUploadController];
        [ckUploadController2 uploadDecisionWithIdentifiers:identifiersCopy reply:replyCopy];

LABEL_17:
        goto LABEL_18;
      }

      v22 = xpcLogHandle(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "CloudKit upload controller is not instantiated!", &v23, 2u);
      }

      if (replyCopy)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
        replyCopy[2](replyCopy, &unk_285379F68, v19);
        goto LABEL_17;
      }
    }

    else
    {
      v21 = xpcLogHandle(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEFAULT, "CloudKit upload is disabled", &v23, 2u);
      }

      if (replyCopy)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
        replyCopy[2](replyCopy, &unk_285379F90, v19);
        goto LABEL_17;
      }
    }
  }

LABEL_18:
}

void __65__DiagnosticsServiceImpl_listCaseSummariesWithIdentifiers_reply___block_invoke(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a2;
  v28 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    if (v6)
    {
      v7 = xpcLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized for CloudKit ABC activities", &v24, 2u);
      }

      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 configurationManager];
      v10 = [v9 cloudKitEnabled];

      v11 = +[ABCAdministrator sharedInstance];
      v12 = [v11 configurationManager];
      v13 = [v12 caseSummaryEnabled];

      v15 = xpcLogHandle(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"disabled";
        if (v10)
        {
          v17 = @"enabled";
        }

        else
        {
          v17 = @"disabled";
        }

        if (v13)
        {
          v16 = @"enabled";
        }

        v24 = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKitUpload is %@, CaseSummary is %@", &v24, 0x16u);
      }

      v18 = +[ABCAdministrator sharedInstance];
      v19 = [v18 caseManager];
      [v19 listCaseSummariesWithIdentifiers:a1[5] reply:a1[6]];
    }

    else if (a1[6])
    {
      v23 = xpcLogHandle(v6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v24, 2u);
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v20 = xpcLogHandle(a1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "enabled";
      if (v3)
      {
        v21 = "ready";
      }

      v24 = 136446210;
      v25 = v21;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService(PRIVATE): listCaseSummariesWithIdentifiers - ABC is not %{public}s", &v24, 0xCu);
    }

    v22 = a1[6];
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }
}

void __77__DiagnosticsServiceImpl_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a2;
  v28 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) != 0)
  {
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    v6 = [(DiagnosticsServiceImpl *)a1[4] assertEntitlement:v5 entitlement:@"com.apple.symptom_diagnostics.private" private:1];
    if (v6)
    {
      v7 = xpcLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized for CloudKit ABC activities", &v24, 2u);
      }

      v8 = +[ABCAdministrator sharedInstance];
      v9 = [v8 configurationManager];
      v10 = [v9 cloudKitEnabled];

      v11 = +[ABCAdministrator sharedInstance];
      v12 = [v11 configurationManager];
      v13 = [v12 caseSummaryEnabled];

      v15 = xpcLogHandle(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"disabled";
        if (v10)
        {
          v17 = @"enabled";
        }

        else
        {
          v17 = @"disabled";
        }

        if (v13)
        {
          v16 = @"enabled";
        }

        v24 = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKitUpload is %@, CaseSummary is %@", &v24, 0x16u);
      }

      v18 = +[ABCAdministrator sharedInstance];
      v19 = [v18 caseManager];
      [v19 listCaseSummariesOfType:a1[5] fromIdentifier:a1[6] count:a1[8] reply:a1[7]];
    }

    else if (a1[7])
    {
      v23 = xpcLogHandle(v6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v24, 2u);
      }

      (*(a1[7] + 16))();
    }
  }

  else
  {
    v20 = xpcLogHandle(a1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "enabled";
      if (v3)
      {
        v21 = "ready";
      }

      v24 = 136446210;
      v25 = v21;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService(PRIVATE): listCaseSummariesOfType - ABC is not %{public}s", &v24, 0xCu);
    }

    v22 = a1[7];
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }
}

- (void)submitRecentCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = identifiersCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: request CloudKit submission for identifiers %@", &v28, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  if (v10)
  {
    v11 = xpcLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized CloudKit submission for ABC case summaries", &v28, 2u);
    }

    v12 = +[ABCAdministrator sharedInstance];
    configurationManager = [v12 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    v15 = +[ABCAdministrator sharedInstance];
    configurationManager2 = [v15 configurationManager];
    caseSummaryEnabled = [configurationManager2 caseSummaryEnabled];

    if (cloudKitEnabled && caseSummaryEnabled)
    {
      v19 = +[ABCAdministrator sharedInstance];
      ckUploadController = [v19 ckUploadController];

      if (ckUploadController)
      {
        v22 = +[ABCAdministrator sharedInstance];
        ckUploadController2 = [v22 ckUploadController];
        [ckUploadController2 submitCaseSummariesWithIdentifiers:identifiersCopy reply:replyCopy];
      }

      else
      {
        v22 = xpcLogHandle(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: CloudKit upload controller is not instantiated!", &v28, 2u);
        }
      }
    }

    else
    {
      v25 = xpcLogHandle(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = @"disabled";
        if (cloudKitEnabled)
        {
          v27 = @"enabled";
        }

        else
        {
          v27 = @"disabled";
        }

        if (caseSummaryEnabled)
        {
          v26 = @"enabled";
        }

        v28 = 138412546;
        v29 = v27;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: cannot submit! CloudKitUpload is %@, CaseSummary is %@", &v28, 0x16u);
      }
    }
  }

  else if (replyCopy)
  {
    v24 = xpcLogHandle(v10);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v28, 2u);
    }

    replyCopy[2](replyCopy, @"No access to private API");
  }
}

- (void)submitRecentCaseSummariesWithCount:(unint64_t)count reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: request CloudKit submission for recent %ld case summaries", &v31, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v9 = [(DiagnosticsServiceImpl *)self assertEntitlement:currentConnection entitlement:@"com.apple.symptom_diagnostics.private" private:1];
  if (v9)
  {
    v10 = xpcLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: authorized CloudKit submission for recent ABC case summaries", &v31, 2u);
    }

    v11 = +[ABCAdministrator sharedInstance];
    configurationManager = [v11 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    v14 = +[ABCAdministrator sharedInstance];
    configurationManager2 = [v14 configurationManager];
    caseSummaryEnabled = [configurationManager2 caseSummaryEnabled];

    if (cloudKitEnabled && caseSummaryEnabled)
    {
      v18 = +[ABCAdministrator sharedInstance];
      ckUploadController = [v18 ckUploadController];

      if (ckUploadController)
      {
        v21 = +[ABCAdministrator sharedInstance];
        ckUploadController2 = [v21 ckUploadController];
        [ckUploadController2 submitRecentCaseSummaries:count reply:replyCopy];

        goto LABEL_25;
      }

      v24 = xpcLogHandle(v20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        v27 = "DiagnosticCaseSummaryLog: CloudKit upload controller is not instantiated!";
        v28 = v24;
        v29 = OS_LOG_TYPE_INFO;
        v30 = 2;
LABEL_23:
        _os_log_impl(&dword_241804000, v28, v29, v27, &v31, v30);
      }
    }

    else
    {
      v24 = xpcLogHandle(v17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = @"disabled";
        if (cloudKitEnabled)
        {
          v26 = @"enabled";
        }

        else
        {
          v26 = @"disabled";
        }

        if (caseSummaryEnabled)
        {
          v25 = @"enabled";
        }

        v31 = 138412546;
        countCopy = v26;
        v33 = 2112;
        v34 = v25;
        v27 = "DiagnosticCaseSummaryLog: cannot submit! CloudKitUpload is %@, CaseSummary is %@";
        v28 = v24;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 22;
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

  if (replyCopy)
  {
    v23 = xpcLogHandle(v9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: DiagnosticsService: not entitled to access private API", &v31, 2u);
    }

    replyCopy[2](replyCopy, @"No access to private API");
  }

LABEL_25:
}

- (id)responseDictWithSuccess:(void *)success sessionId:(void *)id groupId:(void *)groupId additionalDict:(uint64_t)dict reasonCode:(void *)code expiresIn:
{
  successCopy = success;
  idCopy = id;
  groupIdCopy = groupId;
  codeCopy = code;
  if (self)
  {
    v17 = MEMORY[0x277CBEB38];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v19 = [v17 dictionaryWithObjectsAndKeys:{v18, @"success", 0}];

    if (groupIdCopy)
    {
      [v19 addEntriesFromDictionary:groupIdCopy];
    }

    if ([successCopy length])
    {
      [v19 setObject:successCopy forKey:@"session"];
    }

    if ([idCopy length])
    {
      [v19 setObject:idCopy forKey:@"groupID"];
    }

    if (dict)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:dict];
      [v19 setObject:v20 forKey:@"reason"];

      v21 = diagnosticErrorStringForCode(dict);
      [v19 setObject:v21 forKey:@"reasonStr"];
    }

    if (codeCopy)
    {
      [v19 setObject:codeCopy forKey:@"expiresIn"];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)responseDictWithSuccess:(uint64_t)success reasonCode:
{
  if (self)
  {
    self = [(DiagnosticsServiceImpl *)self responseDictWithSuccess:a2 sessionId:0 groupId:0 additionalDict:0 reasonCode:success expiresIn:0];
    v3 = vars8;
  }

  return self;
}

- (id)responseDictWithSuccess:(uint64_t)success reasonCode:(uint64_t)code expiresIn:(uint64_t)in
{
  if (success)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v7 = [(DiagnosticsServiceImpl *)success responseDictWithSuccess:code sessionId:0 groupId:0 additionalDict:0 reasonCode:in expiresIn:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)responseDictWithSuccess:(void *)success sessionId:
{
  if (self)
  {
    self = [(DiagnosticsServiceImpl *)self responseDictWithSuccess:a2 sessionId:success groupId:0 additionalDict:0 reasonCode:0 expiresIn:0];
    v3 = vars8;
  }

  return self;
}

- (id)responseDictWithSuccess:(void *)success sessionId:(void *)id groupId:(void *)groupId additionalDict:(uint64_t)dict reasonCode:
{
  if (self)
  {
    self = [(DiagnosticsServiceImpl *)self responseDictWithSuccess:a2 sessionId:success groupId:id additionalDict:groupId reasonCode:dict expiresIn:0];
    v6 = vars8;
  }

  return self;
}

- (BOOL)validateSignature:(_BOOL8)signature
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (signature)
  {
    signature = v3 != 0;
    v5 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];

    if (!v5)
    {
      v7 = xpcLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_13(&dword_241804000, v7, v9, "DiagnosticsService: signature validation failed! '%@' must be specified: %@", v16);
      }

      signature = 0;
    }

    v10 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];

    if (!v10)
    {
      v12 = xpcLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [OUTLINED_FUNCTION_14() objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_13(&dword_241804000, v12, v14, "DiagnosticsService: signature validation failed! '%@' must be specified: %@", v16);
      }

      signature = 0;
    }
  }

  return signature;
}

- (void)abcEnabledAndReadyWithReply:(uint64_t)reply
{
  v3 = a2;
  if (reply)
  {
    v4 = +[ABCAdministrator sharedInstance];
    configurationManager = [v4 configurationManager];
    autoBugCaptureEnabled = [configurationManager autoBugCaptureEnabled];

    if ((autoBugCaptureEnabled & 1) == 0)
    {
      v8 = xpcLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "DiagnosticsService: AutoBugCapture is disabled", buf, 2u);
      }
    }

    caseManager = [v4 caseManager];

    if (!caseManager)
    {
      v11 = xpcLogHandle(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "DiagnosticsService: AutoBugCapture is not ready yet", v14, 2u);
      }
    }

    if (v3)
    {
      v12 = OUTLINED_FUNCTION_4();
      v13(v12, autoBugCaptureEnabled);
    }
  }
}

- (void)snapshotWithSignature:(id)signature delay:(unint64_t)delay events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply
{
  v13 = OUTLINED_FUNCTION_7(self, a2, signature);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v18 = OUTLINED_FUNCTION_10();
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v17;
  OUTLINED_FUNCTION_12(v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

- (void)startSessionWithSignature:(id)signature duration:(unint64_t)duration events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply
{
  v13 = OUTLINED_FUNCTION_7(self, a2, signature);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v18 = OUTLINED_FUNCTION_10();
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v17;
  OUTLINED_FUNCTION_12(v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

- (void)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply
{
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v11 = v7;
  v12 = v6;
  replyCopy = reply;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v22 = v12;
  v23 = v14;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = replyCopy;
  OUTLINED_FUNCTION_8(v18, v19);
}

- (void)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply
{
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v11 = v7;
  v12 = v6;
  replyCopy = reply;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v22 = v12;
  v23 = v14;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = replyCopy;
  OUTLINED_FUNCTION_8(v18, v19);
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v8 = v5;
  v6 = v5;
  OUTLINED_FUNCTION_8(v6, v7);
}

- (void)cancelSession:(id)session
{
  sessionCopy = session;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v8 = v5;
  v6 = v5;
  OUTLINED_FUNCTION_8(v6, v7);
}

- (void)requestGroupCaseIdentifierForSignature:(id)signature reply:(id)reply
{
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v8 = v4;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v13 = __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke;
  v14 = &unk_278CF03D8;
  v16 = v7;
  v17 = v9;
  v15 = v5;
  v10 = v7;
  v11 = v8;
  [(DiagnosticsServiceImpl *)v5 abcEnabledAndReadyWithReply:v12];
}

void __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_156(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v10 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:a2 sessionId:0 groupId:v7 additionalDict:0 reasonCode:[DiagnosticCaseManager symptomDiagnosticErrorForDiagnosticCaseDampeningType:a3]];

  v8 = OUTLINED_FUNCTION_4();
  v9(v8, v10);
}

- (void)triggerRemoteSessionForSignature:(id)signature groupIdentifier:(id)identifier reply:(id)reply
{
  OUTLINED_FUNCTION_9();
  v31 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = xpcLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v9;
    v29 = 2112;
    v30 = v8;
    OUTLINED_FUNCTION_13(&dword_241804000, v11, v12, "DiagnosticsService(PRIVATE): request to trigger remote session with group identifier %@ and signature %@", &v27);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  OUTLINED_FUNCTION_12(v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

- (void)getSessionStatisticsWithReply:(id)reply
{
  replyCopy = reply;
  v4 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16(&dword_241804000, v5, v6, "DiagnosticsService(PRIVATE): request to get statistics", v7, v8, v9, v10, v19, v20, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v25 = replyCopy;
  v11 = replyCopy;
  OUTLINED_FUNCTION_12(v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

- (void)getCasesListFromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v9 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134218242;
    countCopy = count;
    v24 = 2112;
    v25 = identifierCopy;
    OUTLINED_FUNCTION_13(&dword_241804000, v9, v10, "DiagnosticsService(PRIVATE): request to get list of %ld cases from identifier %@", &v22);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v21 = identifierCopy;
  v11 = identifierCopy;
  v12 = replyCopy;
  OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

- (void)getExpertSystemsStatus:(id)status
{
  statusCopy = status;
  v4 = xpcLogHandle(statusCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16(&dword_241804000, v5, v6, "DiagnosticsService: requesting service status", v7, v8, v9, v10, v19, v20, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  v25 = statusCopy;
  v11 = statusCopy;
  OUTLINED_FUNCTION_12(v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

- (void)listCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifiersCopy;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: list case summaries with identifiers %@", buf, 0xCu);
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v12 = __65__DiagnosticsServiceImpl_listCaseSummariesWithIdentifiers_reply___block_invoke;
  v13 = &unk_278CF03D8;
  v15 = identifiersCopy;
  v16 = replyCopy;
  selfCopy = self;
  v9 = identifiersCopy;
  v10 = replyCopy;
  [(DiagnosticsServiceImpl *)self abcEnabledAndReadyWithReply:v11];
}

- (void)listCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  replyCopy = reply;
  v13 = xpcLogHandle(replyCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = typeCopy;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: DiagnosticsService: list '%@' case summaries", buf, 0xCu);
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v18 = __77__DiagnosticsServiceImpl_listCaseSummariesOfType_fromIdentifier_count_reply___block_invoke;
  v19 = &unk_278CF04C8;
  selfCopy = self;
  v21 = typeCopy;
  v22 = identifierCopy;
  v23 = replyCopy;
  countCopy = count;
  v14 = identifierCopy;
  v15 = typeCopy;
  v16 = replyCopy;
  [(DiagnosticsServiceImpl *)self abcEnabledAndReadyWithReply:v17];
}

uint64_t __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v3 = [(DiagnosticsServiceImpl *)v0 responseDictWithSuccess:v1 reasonCode:v2];
  v4 = OUTLINED_FUNCTION_2(v3);
  return v5(v4);
}

void __60__DiagnosticsServiceImpl_addToSession_events_payload_reply___block_invoke_152_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [(DiagnosticsServiceImpl *)*(a2 + 32) responseDictWithSuccess:a3 reasonCode:?];
  v3 = OUTLINED_FUNCTION_4();
  v4(v3);
}

uint64_t __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_1(uint64_t a1, void **a2)
{
  v2 = [(DiagnosticsServiceImpl *)*a2 responseDictWithSuccess:20 reasonCode:?];
  v3 = OUTLINED_FUNCTION_2(v2);
  return v4(v3);
}

uint64_t __71__DiagnosticsServiceImpl_requestGroupCaseIdentifierForSignature_reply___block_invoke_155_cold_2(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  [v5 apiRateLimit];
  v7 = v6;

  v8 = +[ABCAdministrator sharedInstance];
  v9 = [v8 configurationManager];
  [v9 apiLimitWindow];
  v11 = v10;

  v13 = xpcLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = v7;
    v20 = 2048;
    v21 = v11;
    OUTLINED_FUNCTION_13(&dword_241804000, v13, v14, "DiagnosticsService: API rate limited. (Allowed limit is %.0f calls per %.0f second window)", &v18);
  }

  v15 = *(a1 + 48);
  v16 = [(DiagnosticsServiceImpl *)*(a1 + 32) responseDictWithSuccess:41 reasonCode:?];
  *a2 = v16;
  return (*(v15 + 16))(v15, v16);
}

@end