@interface SiriCoreSymptomsReporter
+ (id)sharedInstance;
- (id)_processNameForPid:(int)pid;
- (id)_subtypeContextStringFromContext:(id)context;
- (void)_getTypeForError:(id)error completion:(id)completion;
- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status triggerForIDSIdentifiers:(id)identifiers;
- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status triggerForIDSIdentifiers:(id)identifiers withPcap:(BOOL)self0;
- (void)reportIssueForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status;
- (void)reportIssueForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status withPcap:(BOOL)pcap;
- (void)reportIssueWithBackOffTimerForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status;
@end

@implementation SiriCoreSymptomsReporter

- (void)reportIssueForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status withPcap:(BOOL)pcap
{
  pcapCopy = pcap;
  statusCopy = status;
  v10 = *&identifier;
  v37 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  if (typeCopy && [typeCopy length])
  {
    v17 = [(SiriCoreSymptomsReporter *)self _processNameForPid:v10];
    if (subTypeCopy)
    {
      v18 = subTypeCopy;
    }

    else
    {
      v18 = &stru_28782DDB0;
    }

    if (statusCopy)
    {
      v19 = @"_Carry";
    }

    else
    {
      v19 = @"_NonCarry";
    }

    v20 = [(__CFString *)v18 stringByAppendingString:v19];

    v21 = [objc_alloc(MEMORY[0x277D6AFC8]) initWithQueue:0];
    v22 = [(SiriCoreSymptomsReporter *)self _subtypeContextStringFromContext:contextCopy];
    v23 = [v21 signatureWithDomain:@"SiriAssistant" type:typeCopy subType:v20 subtypeContext:v22 detectedProcess:v17 triggerThresholdValues:0];

    v24 = 0;
    if (pcapCopy)
    {
      v33 = *MEMORY[0x277D6B010];
      v31 = *MEMORY[0x277D6B008];
      v32 = &unk_2878382E8;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v34 = v25;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105__SiriCoreSymptomsReporter_reportIssueForType_subType_context_processIdentifier_walkboutStatus_withPcap___block_invoke;
    v27[3] = &unk_279BD6058;
    v28 = typeCopy;
    subTypeCopy = v20;
    v29 = subTypeCopy;
    selfCopy = self;
    [v21 snapshotWithSignature:v23 duration:0 events:contextCopy payload:v24 actions:v27 reply:120.0];
  }

  else
  {
    v26 = *MEMORY[0x277CEF088];
    if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[SiriCoreSymptomsReporter reportIssueForType:subType:context:processIdentifier:walkboutStatus:withPcap:]";
      _os_log_impl(&dword_2669D1000, v26, OS_LOG_TYPE_INFO, "%s Type cannot be nil for ABC", buf, 0xCu);
    }
  }
}

void __105__SiriCoreSymptomsReporter_reportIssueForType_subType_context_processIdentifier_walkboutStatus_withPcap___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v15 = [v3 stringByAppendingString:v4];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B198]];

  LODWORD(v4) = [v6 BOOLValue];
  v7 = [*(a1 + 48) lock];
  [v7 lock];

  v8 = *(a1 + 48);
  if (v4)
  {
    v9 = 8;
    if (*(v8 + 8))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 16;
    if (*(v8 + 16))
    {
      goto LABEL_6;
    }
  }

  v10 = objc_opt_new();
  v11 = *(a1 + 48);
  v12 = *(v11 + v9);
  *(v11 + v9) = v10;

LABEL_6:
  v13 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 48) + v9) setObject:v13 forKeyedSubscript:v15];

  v14 = [*(a1 + 48) lock];
  [v14 unlock];
}

- (void)reportIssueWithBackOffTimerForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status
{
  statusCopy = status;
  v8 = *&identifier;
  v31 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  if (typeCopy && [typeCopy length])
  {
    if (subTypeCopy)
    {
      v15 = subTypeCopy;
    }

    else
    {
      v15 = &stru_28782DDB0;
    }

    v16 = [typeCopy stringByAppendingString:v15];
    v17 = v16;
    if (statusCopy)
    {
      v18 = @"_Carry";
    }

    else
    {
      v18 = @"_NonCarry";
    }

    v19 = [v16 stringByAppendingString:v18];

    lock = [(SiriCoreSymptomsReporter *)self lock];
    [lock lock];

    keysRejectedWithTimestamp = self->_keysRejectedWithTimestamp;
    if (keysRejectedWithTimestamp)
    {
      mEMORY[0x277CEF368] = [(NSMutableDictionary *)keysRejectedWithTimestamp objectForKeyedSubscript:v19];
      if ([mEMORY[0x277CEF368] siriCore_isWithin1HourInterval])
      {
        v23 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          *v30 = 136315394;
          *&v30[4] = "[SiriCoreSymptomsReporter reportIssueWithBackOffTimerForType:subType:context:processIdentifier:walkboutStatus:]";
          *&v30[12] = 2112;
          *&v30[14] = v19;
          v24 = "%s %@ key was rejected less than an hour ago. Will skip reporting.";
LABEL_20:
          _os_log_impl(&dword_2669D1000, v23, OS_LOG_TYPE_INFO, v24, v30, 0x16u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    keysAcceptedWithTimestamp = self->_keysAcceptedWithTimestamp;
    if (keysAcceptedWithTimestamp)
    {
      mEMORY[0x277CEF368] = [(NSMutableDictionary *)keysAcceptedWithTimestamp objectForKeyedSubscript:v19];
      if ([mEMORY[0x277CEF368] siriCore_isWithin24HourInterval])
      {
        v23 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          *v30 = 136315394;
          *&v30[4] = "[SiriCoreSymptomsReporter reportIssueWithBackOffTimerForType:subType:context:processIdentifier:walkboutStatus:]";
          *&v30[12] = 2112;
          *&v30[14] = v19;
          v24 = "%s %@ key was already accepted today. Will skip reporting.";
          goto LABEL_20;
        }

LABEL_21:
        v27 = [(SiriCoreSymptomsReporter *)self lock:*v30];
        [v27 unlock];

LABEL_26:
        goto LABEL_27;
      }
    }

    lock2 = [(SiriCoreSymptomsReporter *)self lock];
    [lock2 unlock];

    v29 = *MEMORY[0x277CEF088];
    if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
    {
      *v30 = 136315394;
      *&v30[4] = "[SiriCoreSymptomsReporter reportIssueWithBackOffTimerForType:subType:context:processIdentifier:walkboutStatus:]";
      *&v30[12] = 2112;
      *&v30[14] = v19;
      _os_log_impl(&dword_2669D1000, v29, OS_LOG_TYPE_INFO, "%s reporting issue for type: %@", v30, 0x16u);
    }

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    -[SiriCoreSymptomsReporter reportIssueForType:subType:context:processIdentifier:walkboutStatus:withPcap:](self, "reportIssueForType:subType:context:processIdentifier:walkboutStatus:withPcap:", typeCopy, subTypeCopy, contextCopy, v8, statusCopy, [mEMORY[0x277CEF368] includeProbePacketCaptureForABC]);
    goto LABEL_26;
  }

  v25 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    *v30 = 136315138;
    *&v30[4] = "[SiriCoreSymptomsReporter reportIssueWithBackOffTimerForType:subType:context:processIdentifier:walkboutStatus:]";
    _os_log_impl(&dword_2669D1000, v25, OS_LOG_TYPE_INFO, "%s invalid type for ABC", v30, 0xCu);
  }

LABEL_27:
}

- (void)reportIssueForType:(id)type subType:(id)subType context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status
{
  statusCopy = status;
  v8 = *&identifier;
  v12 = MEMORY[0x277CEF368];
  contextCopy = context;
  subTypeCopy = subType;
  typeCopy = type;
  sharedPreferences = [v12 sharedPreferences];
  -[SiriCoreSymptomsReporter reportIssueForType:subType:context:processIdentifier:walkboutStatus:withPcap:](self, "reportIssueForType:subType:context:processIdentifier:walkboutStatus:withPcap:", typeCopy, subTypeCopy, contextCopy, v8, statusCopy, [sharedPreferences includeProbePacketCaptureForABC]);
}

- (id)_subtypeContextStringFromContext:(id)context
{
  contextCopy = context;
  if ([contextCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    allKeys = [contextCopy allKeys];
    v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_35];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SiriCoreSymptomsReporter__subtypeContextStringFromContext___block_invoke_2;
    v11[3] = &unk_279BD6030;
    v12 = contextCopy;
    v7 = v4;
    v13 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = &stru_28782DDB0;
  }

  return v9;
}

void __61__SiriCoreSymptomsReporter__subtypeContextStringFromContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [v5 objectForKey:v6];
  v7 = *(a1 + 40);
  v8 = [v11 description];
  v9 = v8;
  if (a3)
  {
    v10 = @", %@: %@";
  }

  else
  {
    v10 = @"%@: %@";
  }

  [v7 appendFormat:v10, v6, v8];
}

- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status triggerForIDSIdentifiers:(id)identifiers withPcap:(BOOL)self0
{
  v11 = *&identifier;
  subtypeCopy = subtype;
  contextCopy = context;
  identifiersCopy = identifiers;
  errorCopy = error;
  v19 = AFAnalyticsEventTypeGetName();
  v20 = [(SiriCoreSymptomsReporter *)self _processNameForPid:v11];
  v21 = [objc_alloc(MEMORY[0x277D6AFC8]) initWithQueue:0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __136__SiriCoreSymptomsReporter_reportIssueForError_type_subtype_context_processIdentifier_walkboutStatus_triggerForIDSIdentifiers_withPcap___block_invoke;
  v28[3] = &unk_279BD5FE8;
  statusCopy = status;
  v29 = v19;
  v30 = v21;
  v31 = subtypeCopy;
  v32 = v20;
  pcapCopy = pcap;
  v33 = identifiersCopy;
  v34 = contextCopy;
  v22 = contextCopy;
  v23 = identifiersCopy;
  v24 = v20;
  v25 = subtypeCopy;
  v26 = v21;
  v27 = v19;
  [(SiriCoreSymptomsReporter *)self _getTypeForError:errorCopy completion:v28];
}

void __136__SiriCoreSymptomsReporter_reportIssueForError_type_subtype_context_processIdentifier_walkboutStatus_triggerForIDSIdentifiers_withPcap___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not ";
    v8 = *(a1 + 32);
    v19 = "[SiriCoreSymptomsReporter reportIssueForError:type:subtype:context:processIdentifier:walkboutStatus:triggerForIDSIdentifiers:withPcap:]_block_invoke";
    v20 = 2080;
    *buf = 136315906;
    if (a2)
    {
      v7 = "";
    }

    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_DEFAULT, "%s %sReporting error with signature %@ %@", buf, 0x2Au);
  }

  if (a2)
  {
    if ((AFIsHorseman() & 1) != 0 || AFIsNano())
    {
      if (*(a1 + 80))
      {
        v9 = @"_Carry";
      }

      else
      {
        v9 = @"_NonCarry";
      }

      v10 = [v5 stringByAppendingString:v9];

      v5 = v10;
    }

    v11 = [*(a1 + 40) signatureWithDomain:@"SiriAssistant" type:*(a1 + 32) subType:*(a1 + 48) subtypeContext:v5 detectedProcess:*(a1 + 56) triggerThresholdValues:0];
    v12 = 0;
    if (*(a1 + 81) == 1)
    {
      v16 = *MEMORY[0x277D6B010];
      v14 = *MEMORY[0x277D6B008];
      v15 = &unk_2878382E8;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v17 = v13;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    [*(a1 + 40) snapshotWithSignature:v11 withIDSDestinations:*(a1 + 64) validFor:0 duration:*(a1 + 72) events:v12 payload:0 actions:600.0 reply:120.0];
  }
}

- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context processIdentifier:(int)identifier walkboutStatus:(BOOL)status triggerForIDSIdentifiers:(id)identifiers
{
  statusCopy = status;
  v10 = *&identifier;
  v16 = MEMORY[0x277CEF368];
  identifiersCopy = identifiers;
  contextCopy = context;
  subtypeCopy = subtype;
  errorCopy = error;
  sharedPreferences = [v16 sharedPreferences];
  LOBYTE(v21) = [sharedPreferences includeProbePacketCaptureForABC];
  [(SiriCoreSymptomsReporter *)self reportIssueForError:errorCopy type:type subtype:subtypeCopy context:contextCopy processIdentifier:v10 walkboutStatus:statusCopy triggerForIDSIdentifiers:identifiersCopy withPcap:v21];
}

- (id)_processNameForPid:(int)pid
{
  v11 = *MEMORY[0x277D85DE8];
  buffer = 0u;
  memset(v10, 0, sizeof(v10));
  v4 = proc_pidinfo(pid, 13, 1uLL, &buffer, 64);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v4 < 1)
  {
    v6 = [v5 initWithFormat:@"pid(%ld)", pid, v8];
  }

  else
  {
    v6 = [v5 initWithFormat:@"%.*s", 16, v10];
  }

  return v6;
}

- (void)_getTypeForError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v9 = 0;
  if ([domain isEqualToString:*MEMORY[0x277CEF588]])
  {
    if (code > 199)
    {
      if ((code - 200) <= 0x16)
      {
        if (((1 << (code + 56)) & 0x700327) != 0)
        {
          goto LABEL_13;
        }

        if (code == 203)
        {
          userInfo = [errorCopy userInfo];
          v11 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

          domain2 = [v11 domain];
          v13 = [domain2 isEqualToString:*MEMORY[0x277CEF100]];

          v9 = 0;
          if (v13)
          {
            code2 = [v11 code];
            if (code2 == 1 || code2 == 201 || code2 == 102)
            {
              v9 = 1;
            }
          }

          goto LABEL_14;
        }
      }

      if (code != 1107 && code != 1101)
      {
        goto LABEL_14;
      }

LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

    if (code <= 0x16 && ((1 << code) & 0x4000B6) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
  AFErrorEnumerate();
  if (completionCopy)
  {
    if ([v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    (completionCopy)[2](completionCopy, v9, v16);
  }
}

void __56__SiriCoreSymptomsReporter__getTypeForError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 length];
  v6 = *(a1 + 32);
  v9 = [v4 domain];
  v7 = [v4 code];

  if (v5)
  {
    v8 = @"_%@.%ld";
  }

  else
  {
    v8 = @"%@.%ld";
  }

  [v6 appendFormat:v8, v9, v7];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1869 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1869, &__block_literal_global_1870);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __42__SiriCoreSymptomsReporter_sharedInstance__block_invoke()
{
  if (AFIsInternalInstall())
  {
    v0 = objc_alloc_init(SiriCoreSymptomsReporter);
    v1 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v0;

    v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [sharedInstance_sharedInstance setLock:v2];
  }
}

@end