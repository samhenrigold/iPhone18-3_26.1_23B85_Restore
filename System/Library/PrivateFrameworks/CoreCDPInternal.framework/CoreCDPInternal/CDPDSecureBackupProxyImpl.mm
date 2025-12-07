@interface CDPDSecureBackupProxyImpl
- (BOOL)_createAndRegisterBackupPublicKeyInSOS:(id)s error:(id *)error;
- (BOOL)disableWithInfo:(id)info error:(id *)error;
- (BOOL)enableWithInfo:(id)info error:(id *)error;
- (BOOL)isRecoveryKeySet:(id *)set;
- (BOOL)setRecoveryKeyInSOS:(id)s error:(id *)error;
- (BOOL)verifyRecoveryKey:(id)key error:(id *)error;
- (CDPDSecureBackupProxyImpl)initWithContext:(id)context;
- (id)accountInfoWithInfo:(id)info error:(id *)error;
- (id)activityTypeString;
- (id)recoverWithInfo:(id)info error:(id *)error;
- (id)secureBackupContextWithInfo:(id)info;
- (void)_cleanUpPostEscrowCreationStates;
- (void)accountInfoWithInfo:(id)info completion:(id)completion;
- (void)cacheRecoveryKey:(id)key completionBlock:(id)block;
- (void)uncacheAllSecrets;
@end

@implementation CDPDSecureBackupProxyImpl

- (CDPDSecureBackupProxyImpl)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CDPDSecureBackupProxyImpl;
  v6 = [(CDPDSecureBackupProxyImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cdpContext, context);
  }

  return v7;
}

- (id)activityTypeString
{
  v3 = MEMORY[0x277CCACA8];
  [(CDPContext *)self->_cdpContext type];
  v4 = CDPContextTypeAnalyticsString();
  endpoint = [(CDPContext *)self->_cdpContext endpoint];
  v6 = @"Unknown";
  if (endpoint <= 266770438)
  {
    if (endpoint > -754113827)
    {
      if (endpoint > -344522787)
      {
        if (endpoint > -61689622)
        {
          if (endpoint == -61689621)
          {
            v6 = @"RecoverAndSynchronizeSquirrel";
          }

          else if (endpoint == -45788238)
          {
            v6 = @"FinishOfflineLocalSecretChange";
          }
        }

        else if (endpoint == -344522786)
        {
          v6 = @"AttemptToEscrowPreRecord";
        }

        else if (endpoint == -275221680)
        {
          v6 = @"GenerateRandomRecoveryKey";
        }
      }

      else if (endpoint > -569191000)
      {
        if (endpoint == -569190999)
        {
          v6 = @"ClearFollowUp";
        }

        else if (endpoint == -428461448)
        {
          v6 = @"RemoveNonViewAwarePeersFromCircle";
        }
      }

      else if (endpoint == -754113826)
      {
        v6 = @"WalrusStatus";
      }

      else if (endpoint == -617686711)
      {
        v6 = @"SaveTermsAcceptance";
      }
    }

    else if (endpoint > -1249140061)
    {
      if (endpoint > -993238036)
      {
        if (endpoint == -993238035)
        {
          v6 = @"GenerateNewRecoveryKey";
        }

        else if (endpoint == -936527855)
        {
          v6 = @"IsUserVisibleKeychainSyncEnabled";
        }
      }

      else if (endpoint == -1249140060)
      {
        v6 = @"PostFollowUp";
      }

      else if (endpoint == -1152544766)
      {
        v6 = @"HandleCloudDataProtectionState";
      }
    }

    else if (endpoint > -1589433122)
    {
      if (endpoint == -1589433121)
      {
        v6 = @"PerformRecovery";
      }

      else if (endpoint == -1280150785)
      {
        v6 = @"IsICDPEnabledForDSID";
      }
    }

    else if (endpoint == -1748609038)
    {
      v6 = @"BroadcastWalrusStateChange";
    }

    else if (endpoint == -1737446029)
    {
      v6 = @"UpdateWebAccessStatus";
    }
  }

  else if (endpoint <= 1512741305)
  {
    if (endpoint > 819347452)
    {
      if (endpoint > 1288689616)
      {
        if (endpoint == 1288689617)
        {
          v6 = @"FetchEscrowRecordDevices";
        }

        else if (endpoint == 1504201822)
        {
          v6 = @"WebAccessStatus";
        }
      }

      else if (endpoint == 819347453)
      {
        v6 = @"FetchTermsAcceptanceForAccount";
      }

      else if (endpoint == 844041777)
      {
        v6 = @"RepairCloudDataProtectionState";
      }
    }

    else if (endpoint > 546710379)
    {
      if (endpoint == 546710380)
      {
        v6 = @"ShouldPerformRepairForContext";
      }

      else if (endpoint == 581976373)
      {
        v6 = @"SetUserVisibleKeychainSyncEnabled";
      }
    }

    else if (endpoint == 266770439)
    {
      v6 = @"IsRecoveryKeyAvailable";
    }

    else if (endpoint == 540884795)
    {
      v6 = @"HasLocalSecret";
    }
  }

  else if (endpoint <= 1956379799)
  {
    if (endpoint > 1660047999)
    {
      if (endpoint == 1660048000)
      {
        v6 = @"VerifyRecoveryKey";
      }

      else if (endpoint == 1888483151)
      {
        v6 = @"DeviceEscrowRecordRecoverable";
      }
    }

    else if (endpoint == 1512741306)
    {
      v6 = @"DeleteRecoveryKey";
    }

    else if (endpoint == 1547867365)
    {
      v6 = @"UpdateWalrusStatus";
    }
  }

  else if (endpoint <= 1996176789)
  {
    if (endpoint == 1956379800)
    {
      v6 = @"PcsKeysForServices";
    }

    else if (endpoint == 1979543336)
    {
      v6 = @"FinishCyrusFlowAfterTermsAgreement";
    }
  }

  else
  {
    switch(endpoint)
    {
      case 1996176790:
        v6 = @"LocalSecretChangedTo";
        break;
      case 2013313151:
        v6 = @"RecoverSquirrel";
        break;
      case 2121843186:
        v6 = @"StartCircleApplicationApprovalServer";
        break;
    }
  }

  backupActivity = [(CDPContext *)self->_cdpContext backupActivity];
  v8 = @"Unknown";
  if (backupActivity <= -189876308)
  {
    if (backupActivity <= -1236246174)
    {
      if (backupActivity > -1686228710)
      {
        if (backupActivity == -1686228709)
        {
          v8 = @"CheckAndRemoveExistingThenEnableSecureBackupRecord";
        }

        else if (backupActivity == -1385651654)
        {
          v8 = @"IsEligibleForCDP";
        }
      }

      else if (backupActivity == -2145163342)
      {
        v8 = @"PerformEscrowRecoveryWithRecoveryContext";
      }

      else if (backupActivity == -2040123582)
      {
        v8 = @"BackupRecordsArePresent";
      }
    }

    else if (backupActivity <= -486826559)
    {
      if (backupActivity == -1236246173)
      {
        v8 = @"DisableRecoveryKey";
      }

      else if (backupActivity == -671128312)
      {
        v8 = @"SupportsRecoveryKey";
      }
    }

    else
    {
      switch(backupActivity)
      {
        case -486826558:
          v8 = @"EnableSecureBackup";
          break;
        case -475716065:
          v8 = @"ClearAccountInfoCache";
          break;
        case -417863379:
          v8 = @"RecoverSecureBackup";
          break;
      }
    }
  }

  else if (backupActivity > 1142884429)
  {
    if (backupActivity <= 1412515334)
    {
      if (backupActivity == 1142884430)
      {
        v8 = @"DisableSecureBackup";
      }

      else if (backupActivity == 1401497941)
      {
        v8 = @"EnableSecureBackupWithRecoveryKey";
      }
    }

    else
    {
      switch(backupActivity)
      {
        case 1412515335:
          v8 = @"CheckForExistingRecordWithPeerId";
          break;
        case 1808484763:
          v8 = @"UncacheAllSecrets";
          break;
        case 1846835407:
          v8 = @"CheckForExistingRecordMatchingPredicate";
          break;
      }
    }
  }

  else if (backupActivity <= -61353304)
  {
    if (backupActivity == -189876307)
    {
      v8 = @"UpgradeICSCRecordsThenEnableSecureBackup";
    }

    else if (backupActivity == -186675152)
    {
      v8 = @"DeleteAllBackupRecords";
    }
  }

  else
  {
    switch(backupActivity)
    {
      case -61353303:
        v8 = @"SynchronizeKeyValueStore";
        break;
      case 407282594:
        v8 = @"CheckForExistingRecord";
        break;
      case 707469235:
        v8 = @"GetBackupRecordDevicesWithOptionForceFetch";
        break;
    }
  }

  v9 = [v3 stringWithFormat:@"type=%@ endpoint=%@; backupActivity=%@", v4, v6, v8];;

  return v9;
}

- (id)secureBackupContextWithInfo:(id)info
{
  v4 = MEMORY[0x277CFB280];
  infoCopy = info;
  v6 = [v4 alloc];
  activityTypeString = [(CDPDSecureBackupProxyImpl *)self activityTypeString];
  v8 = [v6 initWithUserActivityLabel:activityTypeString];

  [v8 populateWithInfo:infoCopy];

  return v8;
}

- (void)accountInfoWithInfo:(id)info completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  infoCopy = info;
  v8 = _CDPSignpostLogSystem();
  v9 = _CDPSignpostCreate();
  v11 = v10;

  v12 = _CDPSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AccountInfoWithInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v9;
    _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AccountInfoWithInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v15 = [(CDPDSecureBackupProxyImpl *)self secureBackupContextWithInfo:infoCopy];

  v16 = objc_alloc_init(_TtC15CoreCDPInternal28CDPExponentialRetryScheduler);
  cdpContext = self->_cdpContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__CDPDSecureBackupProxyImpl_accountInfoWithInfo_completion___block_invoke;
  v19[3] = &unk_278E24C00;
  v21 = v9;
  v22 = v11;
  v20 = completionCopy;
  v18 = completionCopy;
  [(CDPExponentialRetryScheduler *)v16 retryFetchAccountInfo:v15 cdpContext:cdpContext completionHandler:v19];
}

void __60__CDPDSecureBackupProxyImpl_accountInfoWithInfo_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __60__CDPDSecureBackupProxyImpl_accountInfoWithInfo_completion___block_invoke_cold_1();
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  v11 = a1[5];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v20 = 67240192;
    LODWORD(v21) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_END, v11, "AccountInfoWithInfo", " error=%{public,signpost.telemetry:number1,name=error}d ", &v20, 8u);
  }

  v12 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[5];
    v15 = [v6 code];
    v20 = 134218496;
    v21 = v14;
    v22 = 2048;
    v23 = v13;
    v24 = 1026;
    v25 = v15;
    _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountInfoWithInfo  error=%{public,signpost.telemetry:number1,name=error}d ", &v20, 0x1Cu);
  }

  if (!v5 || v6)
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __60__CDPDSecureBackupProxyImpl_accountInfoWithInfo_completion___block_invoke_cold_2();
    }

    v19 = a1[4];
    if (v19)
    {
      v17 = *(v19 + 16);
      goto LABEL_16;
    }
  }

  else
  {
    v16 = a1[4];
    if (v16)
    {
      v17 = *(v16 + 16);
LABEL_16:
      v17();
    }
  }
}

- (id)accountInfoWithInfo:(id)info error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = _CDPSignpostLogSystem();
  v8 = _CDPSignpostCreate();

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AccountInfoWithInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v8;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AccountInfoWithInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(CDPDSecureBackupProxyImpl *)self secureBackupContextWithInfo:infoCopy];

  v23 = 0;
  v13 = [v12 getAccountInfoWithError:&v23];
  v14 = v23;

  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v17 = _CDPSignpostLogSystem();
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    code = [v14 code];
    *buf = 67240192;
    LODWORD(v25) = code;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v18, OS_SIGNPOST_INTERVAL_END, v8, "AccountInfoWithInfo", " error=%{public,signpost.telemetry:number1,name=error}d ", buf, 8u);
  }

  v20 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v14 code];
    *buf = 134218496;
    v25 = v8;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = code2;
    _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountInfoWithInfo  error=%{public,signpost.telemetry:number1,name=error}d ", buf, 0x1Cu);
  }

  return v13;
}

- (BOOL)enableWithInfo:(id)info error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = *MEMORY[0x277CFD930];
  v8 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD700] category:*MEMORY[0x277CFD930]];
  v9 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6F0] category:v7];
  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CFB348]];
  if (v10)
  {

    v11 = *MEMORY[0x277CFB3A0];
  }

  else
  {
    v11 = *MEMORY[0x277CFB3A0];
    v12 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CFB3A0]];

    if (!v12)
    {
      v39 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CFB360]];

      if (v39)
      {
        v40 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7B0] category:v7];

        v9 = v40;
        goto LABEL_7;
      }

      v14 = *MEMORY[0x277CFD668];
      v15 = MEMORY[0x277CBEC28];
      goto LABEL_6;
    }
  }

  v13 = [infoCopy objectForKeyedSubscript:v11];

  if (v13)
  {
    v14 = *MEMORY[0x277CFD668];
    v15 = MEMORY[0x277CBEC38];
LABEL_6:
    [v9 setObject:v15 forKeyedSubscript:v14];
  }

LABEL_7:
  v16 = _CDPSignpostLogSystem();
  v17 = _CDPSignpostCreate();
  v41 = v18;

  v19 = _CDPSignpostLogSystem();
  v20 = v19;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "EnableBackupWithInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = v17;
    _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: EnableBackupWithInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v23 = v8;
  [rtcAnalyticsReporter sendEvent:v8];

  v24 = [(CDPDSecureBackupProxyImpl *)self secureBackupContextWithInfo:infoCopy];
  v42 = 0;
  v25 = [v24 enableWithError:&v42];
  v26 = v42;

  if (error)
  {
    v27 = v26;
    *error = v26;
  }

  v28 = _CDPLogSystem();
  v29 = v28;
  if (v26)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl enableWithInfo:error:];
    }
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v29, OS_LOG_TYPE_DEFAULT, "SecureBackup enabled", buf, 2u);
    }

    [(CDPDSecureBackupProxyImpl *)self _cleanUpPostEscrowCreationStates];
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v31 = _CDPSignpostLogSystem();
  v32 = v31;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    code = [v26 code];
    *buf = 67240192;
    LODWORD(v44) = code;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v32, OS_SIGNPOST_INTERVAL_END, v17, "EnableBackupWithInfo", " error=%{public,signpost.telemetry:number1,name=error}d ", buf, 8u);
  }

  v34 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v26 code];
    *buf = 134218496;
    v44 = v17;
    v45 = 2048;
    v46 = Nanoseconds / 1000000000.0;
    v47 = 1026;
    v48 = code2;
    _os_log_impl(&dword_24510B000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: EnableBackupWithInfo  error=%{public,signpost.telemetry:number1,name=error}d ", buf, 0x1Cu);
  }

  v36 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [v9 setObject:v36 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  if (v26)
  {
    [v9 populateUnderlyingErrorsStartingWithRootError:v26];
  }

  rtcAnalyticsReporter2 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter2 sendEvent:v9];

  return v25;
}

- (id)recoverWithInfo:(id)info error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = _CDPSignpostLogSystem();
  v8 = _CDPSignpostCreate();

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecoverBackupWithInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v8;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverBackupWithInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(CDPDSecureBackupProxyImpl *)self secureBackupContextWithInfo:infoCopy];

  v23 = 0;
  v13 = [v12 recoverWithError:&v23];
  v14 = v23;

  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v17 = _CDPSignpostLogSystem();
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    code = [v14 code];
    *buf = 67240192;
    LODWORD(v25) = code;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RecoverBackupWithInfo", " error=%{public,signpost.telemetry:number1,name=error}d ", buf, 8u);
  }

  v20 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v14 code];
    *buf = 134218496;
    v25 = v8;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = code2;
    _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverBackupWithInfo  error=%{public,signpost.telemetry:number1,name=error}d ", buf, 0x1Cu);
  }

  return v13;
}

- (BOOL)disableWithInfo:(id)info error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD708] category:*MEMORY[0x277CFD930]];
  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CFB3D8]];

  if (v8)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD710]];
  }

  v9 = [infoCopy mutableCopy];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];

  if (telemetryFlowID)
  {
    telemetryFlowID2 = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v9 setObject:telemetryFlowID2 forKeyedSubscript:*MEMORY[0x277CFB310]];
  }

  telemetryDeviceSessionID = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];

  if (telemetryDeviceSessionID)
  {
    telemetryDeviceSessionID2 = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v9 setObject:telemetryDeviceSessionID2 forKeyedSubscript:*MEMORY[0x277CFB2E8]];
  }

  v14 = _CDPSignpostLogSystem();
  v15 = _CDPSignpostCreate();

  v16 = _CDPSignpostLogSystem();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "DisableBackupWithInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v15;
    _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisableBackupWithInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v19 = [(CDPDSecureBackupProxyImpl *)self secureBackupContextWithInfo:v9];
  v34 = 0;
  v20 = [v19 disableWithError:&v34];
  v21 = v34;

  if (error)
  {
    v22 = v21;
    *error = v21;
  }

  v23 = _CDPLogSystem();
  v24 = v23;
  if (v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl disableWithInfo:error:];
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupProxyImpl disableWithInfo:error:];
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v26 = _CDPSignpostLogSystem();
  v27 = v26;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    code = [v21 code];
    *buf = 67240192;
    LODWORD(v36) = code;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v27, OS_SIGNPOST_INTERVAL_END, v15, "DisableBackupWithInfo", " enableError=%{public,signpost.telemetry:number1,name=enableError}d ", buf, 8u);
  }

  v29 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v21 code];
    *buf = 134218496;
    v36 = v15;
    v37 = 2048;
    v38 = Nanoseconds / 1000000000.0;
    v39 = 1026;
    v40 = code2;
    _os_log_impl(&dword_24510B000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisableBackupWithInfo  enableError=%{public,signpost.telemetry:number1,name=enableError}d ", buf, 0x1Cu);
  }

  v31 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  [v7 setObject:v31 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  if (v21)
  {
    [v7 populateUnderlyingErrorsStartingWithRootError:v21];
  }

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v7];

  return v20;
}

- (void)cacheRecoveryKey:(id)key completionBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupProxyImpl cacheRecoveryKey:completionBlock:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  secureBackupContext = [(CDPDSecureBackupProxyImpl *)self secureBackupContext];
  [v15[5] setRecoveryKey:keyCopy];
  v9 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__CDPDSecureBackupProxyImpl_cacheRecoveryKey_completionBlock___block_invoke;
  v11[3] = &unk_278E24C28;
  v10 = blockCopy;
  v12 = v10;
  v13 = &v14;
  [v9 cacheRecoveryKeyWithCompletionBlock:v11];

  _Block_object_dispose(&v14, 8);
}

void __62__CDPDSecureBackupProxyImpl_cacheRecoveryKey_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CDPDSecureBackupProxyImpl_cacheRecoveryKey_completionBlock___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__CDPDSecureBackupProxyImpl_cacheRecoveryKey_completionBlock___block_invoke_cold_2();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)uncacheAllSecrets
{
  secureBackupContext = [(CDPDSecureBackupProxyImpl *)self secureBackupContext];
  [secureBackupContext uncachePassphrase];
}

- (void)_cleanUpPostEscrowCreationStates
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v5 = _CDPLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (aa_primaryAppleAccount)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "reset missing escrow debounce timer since securebackup is enabled", buf, 2u);
    }

    [aa_primaryAppleAccount setAccountProperty:0 forKey:@"escrowRecordHealthCheckFailureCount"];
    v13 = 0;
    v7 = [defaultStore saveVerifiedAccount:aa_primaryAppleAccount error:&v13];
    v5 = v13;
    if ((v7 & 1) == 0)
    {
      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupProxyImpl _cleanUpPostEscrowCreationStates];
      }
    }
  }

  else if (v6)
  {
    *v15 = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "No primary account found to reset missing escrow debounce timer", v15, 2u);
  }

  v9 = [CDPDLocalSecretFollowUpProviderImpl alloc];
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v12 = [(CDPDLocalSecretFollowUpProviderImpl *)v9 initWithAltDSID:altDSID telemetryFlowID:telemetryFlowID];

  [(CDPDLocalSecretFollowUpProviderImpl *)v12 deleteLocalSecretChangeFollowUp];
  [(CDPDLocalSecretFollowUpProviderImpl *)v12 deleteConfirmExistingSecretFollowUp];
  [(CDPDLocalSecretFollowUpProviderImpl *)v12 deleteCreatePasscodeFollowUp];
}

- (BOOL)isRecoveryKeySet:(id *)set
{
  cliqueConfiguration = [(CDPContext *)self->_cdpContext cliqueConfiguration];
  v10 = 0;
  v5 = [MEMORY[0x277CDBD48] isRecoveryKeySetInSOS:cliqueConfiguration error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl isRecoveryKeySet:];
    }

    if (set)
    {
      v8 = v6;
      v5 = 0;
      *set = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)verifyRecoveryKey:(id)key error:(id *)error
{
  keyCopy = key;
  secureBackupContext = [(CDPDSecureBackupProxyImpl *)self secureBackupContext];
  v13 = 0;
  v8 = [secureBackupContext verifyRecoveryKey:keyCopy error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl verifyRecoveryKey:error:];
    }

    if (error)
    {
      v11 = v9;
      v8 = 0;
      *error = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)setRecoveryKeyInSOS:(id)s error:(id *)error
{
  sCopy = s;
  v31 = 0;
  v7 = SOSCCCopyMyPeerInfo();
  if (!v7)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
    }

    if (error)
    {
      v11 = 0;
      *error = v31;
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v8 = v7;
  v9 = SOSPeerInfoCopyBackupKey();
  if (!v9)
  {
    v30 = 0;
    v16 = SecPasswordGenerate();
    if (v16)
    {
      v10 = v16;
      v17 = [v16 dataUsingEncoding:4];
      v29 = 0;
      v18 = SOSCCCopyMyPeerWithNewDeviceRecoverySecret();
      v19 = _CDPLogSystem();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
        }

        CFRelease(v18);
        goto LABEL_5;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
      }

      if (error)
      {
        *error = v29;
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    else
    {
      v26 = _CDPLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
      }

      if (error)
      {
        *error = v30;
      }
    }

LABEL_37:
    v11 = 0;
    goto LABEL_41;
  }

  CFRelease(v9);
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
  }

LABEL_5:

  CFRelease(v8);
  v28 = 0;
  v11 = [(CDPDSecureBackupProxyImpl *)self _createAndRegisterBackupPublicKeyInSOS:sCopy error:&v28];
  v12 = v28;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      v11 = 0;
      *error = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    secureBackupContext = [(CDPDSecureBackupProxyImpl *)self secureBackupContext];
    v22 = [secureBackupContext backupForRecoveryKeyWithInfo:0];

    v23 = _CDPLogSystem();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
      }

      if (error)
      {
        v25 = v22;
        v11 = 0;
        *error = v22;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupProxyImpl setRecoveryKeyInSOS:error:];
      }
    }
  }

LABEL_41:
  return v11;
}

- (BOOL)_createAndRegisterBackupPublicKeyInSOS:(id)s error:(id *)error
{
  v5 = SecRKCreateRecoveryKeyWithError();
  v6 = 0;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupProxyImpl _createAndRegisterBackupPublicKeyInSOS:error:];
    }

    if (error)
    {
      v8 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = SecRKRegisterBackupPublicKey();
  }

  return v9;
}

void __60__CDPDSecureBackupProxyImpl_accountInfoWithInfo_completion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24510B000, v0, OS_LOG_TYPE_DEBUG, "Fetched account info: %@", v1, 0xCu);
}

- (void)setRecoveryKeyInSOS:error:.cold.5()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SOSCCCopyMyPeerWithNewDeviceRecoverySecret() failed: %@", v2, v3, v4, v5);
}

- (void)setRecoveryKeyInSOS:error:.cold.6()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SecPasswordGenerate() failed: %@", v2, v3, v4, v5);
}

- (void)setRecoveryKeyInSOS:error:.cold.7()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "SOSCCCopyMyPeerInfo() failed: %@", v2, v3, v4, v5);
}

- (void)_createAndRegisterBackupPublicKeyInSOS:error:.cold.2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to register RK into SOS: %@", v2, v3, v4, v5);
}

- (void)removeRecoveryKeyFromSOS:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to remove RK from SOS: %@", v2, v3, v4, v5);
}

@end