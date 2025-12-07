@interface _DPLHBitacoraLogger
+ (BOOL)donateEventToBitacoraForKey:(id)key eventPhase:(int)phase uuid:(id)uuid succeeded:(BOOL)succeeded errorCode:(int)code errorMessage:(id)message aggregateFunction:(int)function count:(int)self0 telemetryAllowed:(BOOL)self1;
+ (id)bitacoraDprivacydEventWithEventPhase:(int)phase uuid:(id)uuid succeeded:(BOOL)succeeded errorCode:(int)code errorMessage:(id)message aggregateFunction:(int)function count:(int)count;
+ (id)trialIdentifiersForKey:(id)key;
@end

@implementation _DPLHBitacoraLogger

+ (BOOL)donateEventToBitacoraForKey:(id)key eventPhase:(int)phase uuid:(id)uuid succeeded:(BOOL)succeeded errorCode:(int)code errorMessage:(id)message aggregateFunction:(int)function count:(int)self0 telemetryAllowed:(BOOL)self1
{
  v12 = *&code;
  succeededCopy = succeeded;
  v15 = *&phase;
  keyCopy = key;
  uuidCopy = uuid;
  messageCopy = message;
  if (!allowed)
  {
    goto LABEL_4;
  }

  if (count < 1)
  {
    v20 = 1;
    goto LABEL_19;
  }

  if (([keyCopy hasPrefix:@"fedstats:com.apple.dedisco.telemetry"] & 1) == 0)
  {
    v21 = [self trialIdentifiersForKey:keyCopy];
    if (v21)
    {
      LODWORD(v29) = count;
      v22 = [self bitacoraDprivacydEventWithEventPhase:v15 uuid:uuidCopy succeeded:succeededCopy errorCode:v12 errorMessage:messageCopy aggregateFunction:function count:v29];
      if (v22)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x2050000000;
        v23 = getLBFEventManagerClass_softClass;
        v35 = getLBFEventManagerClass_softClass;
        if (!getLBFEventManagerClass_softClass)
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __getLBFEventManagerClass_block_invoke;
          v31[3] = &unk_27858B458;
          v31[4] = &v32;
          __getLBFEventManagerClass_block_invoke(v31);
          v23 = v33[3];
        }

        v24 = v23;
        _Block_object_dispose(&v32, 8);
        sharedInstance = [v23 sharedInstance];
        v30 = 0;
        v20 = [sharedInstance addDprivacydEvent:v22 identifiers:v21 error:&v30];
        v26 = v30;
        if ((v20 & 1) == 0)
        {
          v27 = +[_DPLog framework];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:v26 uuid:v27 succeeded:? errorCode:? errorMessage:? aggregateFunction:? count:? telemetryAllowed:?];
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
LABEL_4:
    v20 = 0;
  }

LABEL_19:

  return v20;
}

+ (id)trialIdentifiersForKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [keyCopy componentsSeparatedByString:@":"];
  v5 = [v4 count];
  if (v5 > 4)
  {
    v8 = v5;
    v6 = [v4 objectAtIndexedSubscript:v5 - 3];
    v9 = [v4 objectAtIndexedSubscript:v8 - 2];
    v10 = [v4 objectAtIndexedSubscript:v8 - 1];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v19 = getLBFTrialIdentifiersClass_softClass;
    v25 = getLBFTrialIdentifiersClass_softClass;
    if (!getLBFTrialIdentifiersClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLBFTrialIdentifiersClass_block_invoke;
      v27 = &unk_27858B458;
      v28 = &v22;
      __getLBFTrialIdentifiersClass_block_invoke(buf, v11, v12, v13, v14, v15, v16, v17, v6);
      v19 = v23[3];
    }

    v20 = v19;
    _Block_object_dispose(&v22, 8);
    v7 = [[v19 alloc] initWithBMLTTaskID:v18 deploymentID:0];
  }

  else
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = keyCopy;
      *&buf[12] = 2048;
      *&buf[14] = 5;
      _os_log_impl(&dword_22622D000, v6, OS_LOG_TYPE_INFO, "Skipping donation to Bitacora; malformed collection ID %@. The number of colon separated components is less than %ld", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)bitacoraDprivacydEventWithEventPhase:(int)phase uuid:(id)uuid succeeded:(BOOL)succeeded errorCode:(int)code errorMessage:(id)message aggregateFunction:(int)function count:(int)count
{
  v9 = *&function;
  succeededCopy = succeeded;
  v13 = *&phase;
  uuidCopy = uuid;
  messageCopy = message;
  if (!v13)
  {
    v23 = +[_DPLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_DPLHBitacoraLogger bitacoraDprivacydEventWithEventPhase:v23 uuid:? succeeded:? errorCode:? errorMessage:? aggregateFunction:? count:?];
    }

    goto LABEL_8;
  }

  if (!code && !succeededCopy)
  {
    v23 = +[_DPLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_DPLHBitacoraLogger bitacoraDprivacydEventWithEventPhase:v23 uuid:? succeeded:? errorCode:? errorMessage:? aggregateFunction:? count:?];
    }

LABEL_8:
    v24 = 0;
    goto LABEL_19;
  }

  if (code || !succeededCopy)
  {
    if (messageCopy)
    {
      v25 = messageCopy;
    }

    else
    {
      v25 = &stru_2839671C8;
    }

    v23 = [_DPDediscoError errorWithCode:code description:v25];
  }

  else
  {
    v23 = 0;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v26 = getLBFDprivacydEventClass_softClass;
  v34 = getLBFDprivacydEventClass_softClass;
  if (!getLBFDprivacydEventClass_softClass)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __getLBFDprivacydEventClass_block_invoke;
    v30[3] = &unk_27858B458;
    v30[4] = &v31;
    __getLBFDprivacydEventClass_block_invoke(v30, v15, v16, v17, v18, v19, v20, v21, v29);
    v26 = v32[3];
  }

  v27 = v26;
  _Block_object_dispose(&v31, 8);
  v24 = [[v26 alloc] initWithEventPhase:v13 eventUUID:uuidCopy succeeded:succeededCopy error:v23 aggregateFunction:v9 count:count];
LABEL_19:

  return v24;
}

+ (void)donateEventToBitacoraForKey:(NSObject *)a3 eventPhase:uuid:succeeded:errorCode:errorMessage:aggregateFunction:count:telemetryAllowed:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "Failed to donate to Bitacora for key %@ with error: %@", &v6, 0x16u);
}

@end