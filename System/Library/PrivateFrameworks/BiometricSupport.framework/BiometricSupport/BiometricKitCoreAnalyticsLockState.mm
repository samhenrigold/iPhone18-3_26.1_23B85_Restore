@interface BiometricKitCoreAnalyticsLockState
- (BOOL)isBiometryUnlockEnabledForUser:(unsigned int)user;
- (BOOL)isPasscodeNeededForUser:(unsigned int)user;
- (BOOL)wasPasscodeNeededForUser:(unsigned int)user;
- (BiometricKitCoreAnalyticsLockState)initWithName:(id)name;
- (unsigned)lockStateUpdated:(unsigned int)updated forUser:(unsigned int)user;
- (void)reset;
- (void)serviceMatchWithServer:(id)server;
@end

@implementation BiometricKitCoreAnalyticsLockState

- (BiometricKitCoreAnalyticsLockState)initWithName:(id)name
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = BiometricKitCoreAnalyticsLockState;
  v3 = [(BiometricKitCoreAnalyticsEvent *)&v13 initWithName:name];
  if (v3)
  {
    v14[0] = @"eventCanceled";
    v14[1] = @"displayOn";
    v14[2] = @"deviceEnclosureColor";
    v14[3] = @"timeSinceLastEnrollment";
    v14[4] = @"timeSinceLastEnrollmentBinned";
    v14[5] = @"timeSinceLastEvent";
    v14[6] = @"previousEventDate";
    v14[7] = @"passcodeSet";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:8];
    privateProperties = v3->super._privateProperties;
    v3->super._privateProperties = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = _currentLockStateForUser;
    _currentLockStateForUser = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v9 = _previousLockStateForUser;
    _previousLockStateForUser = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v11 = _unlockTokenForUser;
    _unlockTokenForUser = dictionary3;
  }

  return v3;
}

- (void)reset
{
  v19.receiver = self;
  v19.super_class = BiometricKitCoreAnalyticsLockState;
  [(BiometricKitCoreAnalyticsEvent *)&v19 reset];
  unlockTotal = self->_unlockTotal;
  self->_unlockTotal = &unk_28374C4B0;

  biometryUnlockTotal = self->_biometryUnlockTotal;
  self->_biometryUnlockTotal = &unk_28374C4B0;

  remoteUnlockTotal = self->_remoteUnlockTotal;
  self->_remoteUnlockTotal = &unk_28374C4B0;

  remoteUnlockBiometryAvailable = self->_remoteUnlockBiometryAvailable;
  self->_remoteUnlockBiometryAvailable = &unk_28374C4B0;

  remoteUnlockBiometryUnavailable = self->_remoteUnlockBiometryUnavailable;
  self->_remoteUnlockBiometryUnavailable = &unk_28374C4B0;

  remoteUnlockBiometryDisabled = self->_remoteUnlockBiometryDisabled;
  self->_remoteUnlockBiometryDisabled = &unk_28374C4B0;

  passcodeUnlockTotal = self->_passcodeUnlockTotal;
  self->_passcodeUnlockTotal = &unk_28374C4B0;

  passcodeUnlockBiometryAvailable = self->_passcodeUnlockBiometryAvailable;
  self->_passcodeUnlockBiometryAvailable = &unk_28374C4B0;

  passcodeUnlockBiometryUnavailable = self->_passcodeUnlockBiometryUnavailable;
  self->_passcodeUnlockBiometryUnavailable = &unk_28374C4B0;

  passcodeUnlockBiometryDisabled = self->_passcodeUnlockBiometryDisabled;
  self->_passcodeUnlockBiometryDisabled = &unk_28374C4B0;

  passcodeValidatedTotal = self->_passcodeValidatedTotal;
  self->_passcodeValidatedTotal = &unk_28374C4B0;

  passcodeValidatedBiometryAvailable = self->_passcodeValidatedBiometryAvailable;
  self->_passcodeValidatedBiometryAvailable = &unk_28374C4B0;

  passcodeValidatedBiometryUnavailable = self->_passcodeValidatedBiometryUnavailable;
  self->_passcodeValidatedBiometryUnavailable = &unk_28374C4B0;

  passcodeAuthenticatedTotal = self->_passcodeAuthenticatedTotal;
  self->_passcodeAuthenticatedTotal = &unk_28374C4B0;

  passcodeAuthenticatedBiometryAvailable = self->_passcodeAuthenticatedBiometryAvailable;
  self->_passcodeAuthenticatedBiometryAvailable = &unk_28374C4B0;

  passcodeAuthenticatedBiometryUnavailable = self->_passcodeAuthenticatedBiometryUnavailable;
  self->_passcodeAuthenticatedBiometryUnavailable = &unk_28374C4B0;
}

- (void)serviceMatchWithServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    objc_storeStrong(&_server, server);
    v6 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke;
    v7[3] = &unk_2784FA3F0;
    v7[4] = self;
    v8 = serverCopy;
    dispatch_async(v6, v7);
  }

  else
  {
    [BiometricKitCoreAnalyticsLockState serviceMatchWithServer:];
  }
}

void __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 40) identities];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = *v19;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = _currentLockStateForUser;
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend_userID(v6, obj)}];
        v9 = [v7 objectForKey:v8];
        LODWORD(v7) = v9 == 0;

        if (v7)
        {
          v17 = 0;
          if ([_server performGetSKSLockStateCommand:objc_msgSend_userID(v6) outState:&v17])
          {
            __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke_cold_1();
            goto LABEL_11;
          }

          v10 = _currentLockStateForUser;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(v6)];
          [v10 setObject:v11 forKey:v12];

          v13 = _previousLockStateForUser;
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(v6)];
          [v13 setObject:v14 forKey:v15];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(obj);
}

- (unsigned)lockStateUpdated:(unsigned int)updated forUser:(unsigned int)user
{
  v4 = *&user;
  v5 = *&updated;
  v75 = *MEMORY[0x277D85DE8];
  v7 = [(BiometricKitCoreAnalyticsLockState *)self isBiometryUnlockEnabledForUser:*&user];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = _currentLockStateForUser;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    v12 = _currentLockStateForUser;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    v14 = [v12 objectForKey:v13];
    unsignedIntValue = [v14 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 5;
  }

  v16 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v17 = __osLog;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v69 = 67109632;
    v70 = v4;
    v71 = 1024;
    v72 = v5;
    v73 = 1024;
    v74 = unsignedIntValue;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsLockState lockStateUpdated forUser: %u currentLockState: %u previousLockState: %u\n", &v69, 0x14u);
  }

  if ((v5 & 1) != 0 || (unsignedIntValue & 1) == 0)
  {
    if ((v5 & 1) != 0 && (unsignedIntValue & 1) == 0)
    {
      v22 = 1;
      goto LABEL_44;
    }

    if ((v5 & 0x21) == 0x21)
    {
      if ([(BiometricKitCoreAnalyticsLockState *)selfCopy passcodeNedded:unsignedIntValue]&& ![(BiometricKitCoreAnalyticsLockState *)selfCopy passcodeNedded:v5])
      {
        v68 = _unlockTokenForUser;
        passcodeValidatedBiometryUnavailable = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
        [v68 setObject:MEMORY[0x277CBEC38] forKey:passcodeValidatedBiometryUnavailable];
        v22 = 0;
        goto LABEL_43;
      }
    }

    else if ((v5 & 0x21) == 0x20)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeAuthenticatedTotal, "unsignedIntValue") + 1}];
      passcodeAuthenticatedTotal = selfCopy->_passcodeAuthenticatedTotal;
      selfCopy->_passcodeAuthenticatedTotal = v23;

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedTotal, "unsignedIntValue") + 1}];
      passcodeValidatedTotal = selfCopy->_passcodeValidatedTotal;
      selfCopy->_passcodeValidatedTotal = v25;

      if ([(BiometricKitCoreAnalyticsLockState *)selfCopy passcodeNedded:unsignedIntValue])
      {
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeAuthenticatedBiometryUnavailable, "unsignedIntValue") + 1}];
        passcodeAuthenticatedBiometryUnavailable = selfCopy->_passcodeAuthenticatedBiometryUnavailable;
        selfCopy->_passcodeAuthenticatedBiometryUnavailable = v27;

        v29 = 192;
        [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedBiometryUnavailable, "unsignedIntValue") + 1}];
      }

      else
      {
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeAuthenticatedBiometryAvailable, "unsignedIntValue") + 1}];
        passcodeAuthenticatedBiometryAvailable = selfCopy->_passcodeAuthenticatedBiometryAvailable;
        selfCopy->_passcodeAuthenticatedBiometryAvailable = v55;

        v29 = 184;
        [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedBiometryAvailable, "unsignedIntValue") + 1}];
      }
      v30 = ;
      v22 = 0;
      passcodeValidatedBiometryUnavailable = *(&selfCopy->super.super.isa + v29);
      *(&selfCopy->super.super.isa + v29) = v30;
      goto LABEL_43;
    }

    v22 = 0;
    goto LABEL_44;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_unlockTotal, "unsignedIntValue") + 1}];
  unlockTotal = selfCopy->_unlockTotal;
  selfCopy->_unlockTotal = v18;

  if ((v5 & 0x20) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockTotal, "unsignedIntValue") + 1}];
    passcodeUnlockTotal = selfCopy->_passcodeUnlockTotal;
    selfCopy->_passcodeUnlockTotal = v31;

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedTotal, "unsignedIntValue") + 1}];
    v34 = selfCopy->_passcodeValidatedTotal;
    selfCopy->_passcodeValidatedTotal = v33;

    if (v7)
    {
      if (-[BiometricKitCoreAnalyticsLockState passcodeNedded:](selfCopy, "passcodeNedded:", unsignedIntValue) || (v35 = _unlockTokenForUser, [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKey:", v36), v37 = objc_claimAutoreleasedReturnValue(), LOBYTE(v35) = objc_msgSend(v37, "BOOLValue"), v37, v36, (v35 & 1) != 0))
      {
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockBiometryUnavailable, "unsignedIntValue") + 1}];
        passcodeUnlockBiometryUnavailable = selfCopy->_passcodeUnlockBiometryUnavailable;
        selfCopy->_passcodeUnlockBiometryUnavailable = v38;

        v40 = 192;
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedBiometryUnavailable, "unsignedIntValue") + 1}];
      }

      else
      {
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockBiometryAvailable, "unsignedIntValue") + 1}];
        passcodeUnlockBiometryAvailable = selfCopy->_passcodeUnlockBiometryAvailable;
        selfCopy->_passcodeUnlockBiometryAvailable = v66;

        v40 = 184;
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedBiometryAvailable, "unsignedIntValue") + 1}];
      }
    }

    else
    {
      v40 = 168;
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockBiometryDisabled, "unsignedIntValue") + 1}];
    }

    v46 = *(&selfCopy->super.super.isa + v40);
    *(&selfCopy->super.super.isa + v40) = v41;

    v47 = _unlockTokenForUser;
    passcodeValidatedBiometryUnavailable = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    [v47 removeObjectForKey:passcodeValidatedBiometryUnavailable];
    goto LABEL_32;
  }

  if ((v5 & 0x400) != 0)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_remoteUnlockTotal, "unsignedIntValue") + 1}];
    remoteUnlockTotal = selfCopy->_remoteUnlockTotal;
    selfCopy->_remoteUnlockTotal = v42;

    if (v7)
    {
      if ([(BiometricKitCoreAnalyticsLockState *)selfCopy passcodeNedded:unsignedIntValue])
      {
        v44 = 128;
        [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_remoteUnlockBiometryUnavailable, "unsignedIntValue") + 1}];
      }

      else
      {
        v44 = 120;
        [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_remoteUnlockBiometryAvailable, "unsignedIntValue") + 1}];
      }
      v45 = ;
    }

    else
    {
      v44 = 136;
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_remoteUnlockBiometryDisabled, "unsignedIntValue") + 1}];
    }

    passcodeValidatedBiometryUnavailable = *(&selfCopy->super.super.isa + v44);
    *(&selfCopy->super.super.isa + v44) = v45;
    v22 = 4;
    goto LABEL_43;
  }

  if ((!v7 | ((v5 & 4) >> 2)))
  {
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockTotal, "unsignedIntValue") + 1}];
    v49 = selfCopy->_passcodeUnlockTotal;
    selfCopy->_passcodeUnlockTotal = v48;

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedTotal, "unsignedIntValue") + 1}];
    v51 = selfCopy->_passcodeValidatedTotal;
    selfCopy->_passcodeValidatedTotal = v50;

    if (v7)
    {
      v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockBiometryUnavailable, "unsignedIntValue") + 1}];
      v53 = selfCopy->_passcodeUnlockBiometryUnavailable;
      selfCopy->_passcodeUnlockBiometryUnavailable = v52;

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeValidatedBiometryUnavailable, "unsignedIntValue") + 1}];
      passcodeValidatedBiometryUnavailable = selfCopy->_passcodeValidatedBiometryUnavailable;
      selfCopy->_passcodeValidatedBiometryUnavailable = v54;
    }

    else
    {
      v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_passcodeUnlockBiometryDisabled, "unsignedIntValue") + 1}];
      passcodeValidatedBiometryUnavailable = selfCopy->_passcodeUnlockBiometryDisabled;
      selfCopy->_passcodeUnlockBiometryDisabled = v65;
    }

LABEL_32:
    v22 = 3;
    goto LABEL_43;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](selfCopy->_biometryUnlockTotal, "unsignedIntValue") + 1}];
  passcodeValidatedBiometryUnavailable = selfCopy->_biometryUnlockTotal;
  selfCopy->_biometryUnlockTotal = v20;
  v22 = 2;
LABEL_43:

LABEL_44:
  v57 = _currentLockStateForUser;
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [v57 setObject:v58 forKey:v59];

  v60 = _previousLockStateForUser;
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue];
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [v60 setObject:v61 forKey:v62];

  objc_sync_exit(selfCopy);
  if (__osLog)
  {
    v63 = __osLog;
  }

  else
  {
    v63 = v16;
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    v69 = 67109120;
    v70 = v22;
    _os_log_impl(&dword_223E00000, v63, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsLockState lockStateUpdated result: %u\n", &v69, 8u);
  }

  return v22;
}

- (BOOL)isPasscodeNeededForUser:(unsigned int)user
{
  v4 = _currentLockStateForUser;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&user];
  v6 = [v4 objectForKey:v5];
  LOBYTE(self) = -[BiometricKitCoreAnalyticsLockState passcodeNedded:](self, "passcodeNedded:", [v6 unsignedIntValue]);

  return self;
}

- (BOOL)wasPasscodeNeededForUser:(unsigned int)user
{
  v4 = _previousLockStateForUser;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&user];
  v6 = [v4 objectForKey:v5];
  LOBYTE(self) = -[BiometricKitCoreAnalyticsLockState passcodeNedded:](self, "passcodeNedded:", [v6 unsignedIntValue]);

  return self;
}

- (BOOL)isBiometryUnlockEnabledForUser:(unsigned int)user
{
  if (_server)
  {
    v8 = 0;
    v9 = 0;
    v3 = [_server performGetProtectedConfigCommand:*&user outSetCfg:&v9 outEffectiveCfg:&v8];
    v4 = v9;
    v5 = v8;
    v6 = v5;
    if (v3)
    {
      [(BiometricKitCoreAnalyticsLockState *)v3 isBiometryUnlockEnabledForUser:v5, v4];
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [v5 unlockEnabled] != 0;
    }
  }

  else
  {
    [BiometricKitCoreAnalyticsLockState isBiometryUnlockEnabledForUser:?];
    LOBYTE(v3) = v10;
  }

  return v3;
}

- (void)serviceMatchWithServer:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }
}

void __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }
}

- (void)isBiometryUnlockEnabledForUser:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136316162;
    OUTLINED_FUNCTION_6_0();
    v8 = a1;
    OUTLINED_FUNCTION_26();
    v9 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v10 = 281;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, 0x30u);
  }
}

- (void)isBiometryUnlockEnabledForUser:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136316162;
    OUTLINED_FUNCTION_6_0();
    v4 = 0;
    OUTLINED_FUNCTION_26();
    v5 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v6 = 279;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, 0x30u);
  }

  *a1 = 0;
}

@end