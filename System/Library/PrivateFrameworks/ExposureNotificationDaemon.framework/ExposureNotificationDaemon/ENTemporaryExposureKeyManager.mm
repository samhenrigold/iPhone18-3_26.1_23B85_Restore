@interface ENTemporaryExposureKeyManager
+ (id)temporaryExposureKeyFromRawKey:(id)key error:(id *)error;
- (BOOL)requireKeyReleasePromptForClient:(id)client;
- (ENTemporaryExposureKeyManager)initWithQueue:(id)queue;
- (ENTemporaryExposureKeyManagerDelegate)delegate;
- (id)_getTemporaryExposureKeysFromRollingStart:(unsigned int)start includingActive:(BOOL)active refresh:(BOOL)refresh error:(id *)error;
- (id)getTemporaryExposureKeysForClient:(id)client fromRollingStart:(unsigned int)start didPrompt:(BOOL)prompt forTesting:(BOOL)testing forceRefresh:(BOOL)refresh error:(id *)error;
- (void)resetClientState;
@end

@implementation ENTemporaryExposureKeyManager

- (ENTemporaryExposureKeyManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ENTemporaryExposureKeyManager;
  v6 = [(ENTemporaryExposureKeyManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (BOOL)requireKeyReleasePromptForClient:(id)client
{
  nextPromptDate = self->_nextPromptDate;
  if (!nextPromptDate)
  {
    return 1;
  }

  clientCopy = client;
  [(NSDate *)nextPromptDate timeIntervalSinceNow];
  v6 = v5;
  appAPIVersion = [clientCopy appAPIVersion];

  return v6 <= 0.0 || appAPIVersion > 1;
}

- (id)_getTemporaryExposureKeysFromRollingStart:(unsigned int)start includingActive:(BOOL)active refresh:(BOOL)refresh error:(id *)error
{
  refreshCopy = refresh;
  activeCopy = active;
  v30 = *MEMORY[0x277D85DE8];
  delegate = [(ENTemporaryExposureKeyManager *)self delegate];
  v12 = delegate;
  if (delegate)
  {
    v13 = [delegate temporaryExposureKeyManager:self retrieveTEKHistoryIncludingActive:activeCopy generateNewTEK:refreshCopy];
    if (v13)
    {
      v24 = v12;
      v14 = objc_alloc_init(MEMORY[0x277CBEB10]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [objc_opt_class() temporaryExposureKeyFromRawKey:*(*(&v25 + 1) + 8 * i) error:error];
            if (!v20)
            {

              v22 = 0;
              goto LABEL_15;
            }

            v21 = v20;
            if ([v20 rollingStartNumber] >= start)
            {
              [v14 addObject:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v22 = v14;
LABEL_15:

      v12 = v24;
    }

    else if (error)
    {
      ENErrorF(16, "Retrieving TEK history failed");
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (error)
  {
    ENErrorF(11, "Nil delegate");
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)resetClientState
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v3 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTemporaryExposureKeyManager <= 50 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
  {
    [ENTemporaryExposureKeyManager resetClientState];
  }

  nextPromptDate = self->_nextPromptDate;
  self->_nextPromptDate = 0;

  self->_lastTEKRequestENIN = 0;
  oldestTEK = self->_oldestTEK;
  self->_oldestTEK = 0;
}

+ (id)temporaryExposureKeyFromRawKey:(id)key error:(id *)error
{
  keyCopy = key;
  v6 = [keyCopy length];
  bytes = [keyCopy bytes];
  if (v6 == 21)
  {
    v8 = bytes;
    v9 = objc_alloc_init(MEMORY[0x277CC5D28]);
    v10 = [keyCopy subdataWithRange:{0, 16}];
    [v9 setKeyData:v10];

    [v9 setRollingStartNumber:*(v8 + 16)];
    [v9 setRollingPeriod:*(v8 + 20)];
  }

  else if (error)
  {
    ENErrorF(15, "Bad TEK length: %zu", v6);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ENTemporaryExposureKeyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)getTemporaryExposureKeysForClient:(id)client fromRollingStart:(unsigned int)start didPrompt:(BOOL)prompt forTesting:(BOOL)testing forceRefresh:(BOOL)refresh error:(id *)error
{
  refreshCopy = refresh;
  testingCopy = testing;
  promptCopy = prompt;
  v12 = *&start;
  v79 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v15 = clientCopy;
  if (refreshCopy)
  {
    v16 = 1;
  }

  else if ([clientCopy appAPIVersion] > 1)
  {
    v16 = testingCopy ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(ENTemporaryExposureKeyManager *)self _getTemporaryExposureKeysFromRollingStart:v12 includingActive:testingCopy refresh:v16 error:error];
  if (v17)
  {
    v18 = v17;
    [(NSDate *)self->_nextPromptDate timeIntervalSinceNow];
    v20 = v19;
    v72 = v12;
    if ([v18 count])
    {
      v21 = [v18 objectAtIndexedSubscript:0];
      rollingStartNumber = [v21 rollingStartNumber];
      rollingPeriod = [v21 rollingPeriod];
    }

    else
    {
      rollingPeriod = 0;
      rollingStartNumber = 0;
    }

    v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v24 isSensitiveLoggingAllowed];

    v26 = &unk_27EF3C000;
    if (isSensitiveLoggingAllowed && gLogCategory_ENTemporaryExposureKeyManager <= 30 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
    {
      v27 = v18;
      if (testingCopy)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      v68 = v28;
      v70 = rollingStartNumber;
      if (refreshCopy)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      v30 = promptCopy;
      if (promptCopy)
      {
        v31 = "yes";
      }

      else
      {
        v31 = "no";
      }

      v32 = [v27 count];
      v33 = CUPrintDuration32();
      v65 = v31;
      promptCopy = v30;
      v64 = v29;
      rollingStartNumber = v70;
      v18 = v27;
      v26 = &unk_27EF3C000;
      LogPrintF_safe(&gLogCategory_ENTemporaryExposureKeyManager, "[ENTemporaryExposureKeyManager getTemporaryExposureKeysForClient:fromRollingStart:didPrompt:forTesting:forceRefresh:error:]", 30, "GetDiagnosisKeys %@ fromENIN:%u testing:%s refresh:%s didPrompt:%s; count:%d nextPrompt:%@ lastENIN:%u", v15, v72, v68, v64, v65, v32, v33, self->_lastTEKRequestENIN);
    }

    v34 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isRPILoggingAllowed = [v34 isRPILoggingAllowed];

    if (isRPILoggingAllowed)
    {
      v36 = v26[954];
      if (v36 <= 30 && (v36 != -1 || _LogCategory_Initialize()))
      {
        keyData = [(ENTemporaryExposureKey *)self->_oldestTEK keyData];
        LogPrintF_safe(&gLogCategory_ENTemporaryExposureKeyManager, "[ENTemporaryExposureKeyManager getTemporaryExposureKeysForClient:fromRollingStart:didPrompt:forTesting:forceRefresh:error:]", 30, "currentENIN:%u currentInterval:%u oldestKey:%@", rollingStartNumber, rollingPeriod, keyData);
      }
    }

    if ([v15 appAPIVersion] > 1)
    {
      goto LABEL_70;
    }

    if (promptCopy || testingCopy || !self->_nextPromptDate)
    {
LABEL_65:
      if (promptCopy)
      {
        if (!self->_nextPromptDate || v20 <= 0.0)
        {
          v58 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSinceNow:108000.0];
          nextPromptDate = self->_nextPromptDate;
          self->_nextPromptDate = v58;
        }

        self->_lastTEKRequestENIN = rollingStartNumber;
        lastObject = [v18 lastObject];
        oldestTEK = self->_oldestTEK;
        self->_oldestTEK = lastObject;
      }

LABEL_70:
      v62 = [v18 copy];

      goto LABEL_71;
    }

    if (self->_lastTEKRequestENIN)
    {
      v69 = v15;
      v71 = rollingStartNumber;
      v38 = objc_alloc_init(MEMORY[0x277CBEB10]);
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v67 = v18;
      v39 = v18;
      v40 = [v39 countByEnumeratingWithState:&v73 objects:v78 count:16];
      v66 = promptCopy;
      if (v40)
      {
        v41 = v40;
        v42 = *v74;
        v43 = 1;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v74 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v45 = *(*(&v73 + 1) + 8 * i);
            if ([v45 rollingStartNumber] <= self->_lastTEKRequestENIN + 144)
            {
              [v38 addObject:v45];
            }

            keyData2 = [(ENTemporaryExposureKey *)self->_oldestTEK keyData];
            keyData3 = [v45 keyData];
            v48 = [keyData2 isEqualToData:keyData3];

            v43 &= v48 ^ 1;
          }

          v41 = [v39 countByEnumeratingWithState:&v73 objects:v78 count:16];
        }

        while (v41);
      }

      else
      {
        v43 = 1;
      }

      v51 = [v38 count];
      v18 = v67;
      LODWORD(rollingStartNumber) = v71;
      if (v51 < [v39 count])
      {
        v52 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v52 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && gLogCategory_ENTemporaryExposureKeyManager <= 30 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENTemporaryExposureKeyManager, "-[ENTemporaryExposureKeyManager getTemporaryExposureKeysForClient:fromRollingStart:didPrompt:forTesting:forceRefresh:error:]", 30, "GetDiagnosisKeys removed %d keys", [v39 count] - objc_msgSend(v38, "count"));
        }

        v54 = self->_oldestTEK;
        v55 = v54;
        if (((v54 != 0) & v43) != 0 && [(ENTemporaryExposureKey *)v54 rollingStartNumber]>= v72)
        {
          v56 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v56 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && gLogCategory_ENTemporaryExposureKeyManager <= 30 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory_ENTemporaryExposureKeyManager, "[ENTemporaryExposureKeyManager getTemporaryExposureKeysForClient:fromRollingStart:didPrompt:forTesting:forceRefresh:error:]", 30, "GetDiagnosisKeys appending oldest key");
          }

          [v38 addObject:v55];
        }
      }

      v50 = [v38 copy];
      promptCopy = v66;
    }

    else
    {
      lastObject2 = [v18 lastObject];
      v38 = lastObject2;
      if (!lastObject2)
      {
LABEL_64:

        goto LABEL_65;
      }

      v69 = v15;
      v77 = lastObject2;
      v50 = [MEMORY[0x277CBEA68] arrayWithObjects:&v77 count:1];
    }

    v18 = v50;
    v15 = v69;
    goto LABEL_64;
  }

  v62 = 0;
LABEL_71:

  return v62;
}

@end