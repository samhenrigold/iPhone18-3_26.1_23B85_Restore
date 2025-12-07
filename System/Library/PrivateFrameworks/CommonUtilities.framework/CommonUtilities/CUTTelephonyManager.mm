@interface CUTTelephonyManager
+ (id)sharedInstance;
- (BOOL)disableFastDormancy;
- (CUTTelephonyManager)init;
- (void)__adjustFastDormancyTokens;
- (void)_adjustFastDormancyTokens;
- (void)_setFastDormancySuspended:(BOOL)suspended;
- (void)addFastDormancyDisableToken:(id)token;
- (void)dealloc;
- (void)removeFastDormancyDisableToken:(id)token;
@end

@implementation CUTTelephonyManager

+ (id)sharedInstance
{
  if (qword_1EB7AAE18 != -1)
  {
    sub_1B2331A14();
  }

  if (qword_1EB7AAE28 != -1)
  {
    sub_1B2331A28();
  }

  if (qword_1EB7AAE20 != -1)
  {
    sub_1B2322CCC();
  }

  v2 = qword_1EB7AAE10;

  return v2;
}

- (void)_adjustFastDormancyTokens
{
  objc_msgSend_lock(self->_lock, a2, v2);
  if ((byte_1EB7AAE08 & 1) == 0)
  {
    byte_1EB7AAE08 = 1;
    v6 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B232A140;
    block[3] = &unk_1E7B20EB0;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }

  objc_msgSend_unlock(self->_lock, v4, v5);
}

- (CUTTelephonyManager)init
{
  v10.receiver = self;
  v10.super_class = CUTTelephonyManager;
  v2 = [(CUTTelephonyManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v7 = objc_msgSend_sharedInstance(CUTWiFiManager, v5, v6);
    objc_msgSend_addDelegate_(v7, v8, v2);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend_removeAllObjects(self->_disableFastDormancyTokens, v4, v5);
  objc_msgSend__adjustFastDormancyTokens(self, v6, v7);
  objc_msgSend_unlock(self->_lock, v8, v9);
  v10.receiver = self;
  v10.super_class = CUTTelephonyManager;
  [(CUTTelephonyManager *)&v10 dealloc];
}

- (void)_setFastDormancySuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v32 = *MEMORY[0x1E69E9840];
  if (self->_serverConnection)
  {
    v5 = 0;
  }

  else
  {
    v6 = _CTServerConnectionCreateWithIdentifier();
    self->_serverConnection = v6;
    v5 = v6 == 0;
  }

  suspendDormancyAssertion = self->_suspendDormancyAssertion;
  if (suspendedCopy)
  {
    if (suspendDormancyAssertion != 0 || v5)
    {
      return;
    }

    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v9 = CFBundleGetIdentifier(MainBundle);
    }

    else
    {
      v9 = 0;
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_msgSend_initWithFormat_(v12, v13, @"%@.cuttelephonymanager", v9);
    v15 = _CTServerConnectionDormancySuspendAssertionCreate();
    v16 = v15;
    v17 = HIDWORD(v15);
    v20 = objc_msgSend_network(CUTLog, v18, v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v21)
      {
        *buf = 67109376;
        *v28 = v16;
        *&v28[4] = 1024;
        *&v28[6] = v17;
        v24 = "Could not suspend fast dormancy: (%i, %i).";
        v25 = v20;
        v26 = 14;
        goto LABEL_17;
      }
    }

    else if (v21)
    {
      v23 = self->_suspendDormancyAssertion;
      serverConnection = self->_serverConnection;
      *buf = 134218498;
      *v28 = serverConnection;
      *&v28[8] = 2112;
      v29 = v14;
      v30 = 2048;
      v31 = v23;
      v24 = "Fast dormancy suspended with ctServerConnection %p, name %@, assertion %p";
      v25 = v20;
      v26 = 32;
LABEL_17:
      _os_log_impl(&dword_1B2321000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }

    goto LABEL_19;
  }

  if (!suspendDormancyAssertion)
  {
    return;
  }

  CFRelease(suspendDormancyAssertion);
  self->_suspendDormancyAssertion = 0;
  v9 = objc_msgSend_network(CUTLog, v10, v11);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Fast dormancy suspension removed", buf, 2u);
  }

LABEL_19:
}

- (void)__adjustFastDormancyTokens
{
  v4 = objc_msgSend_disableFastDormancy(self, a2, v2);

  MEMORY[0x1EEE66B58](self, sel__setFastDormancySuspended_, v4);
}

- (BOOL)disableFastDormancy
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_count(self->_disableFastDormancyTokens, v4, v5) != 0;
  objc_msgSend_unlock(self->_lock, v7, v8);
  return v6;
}

- (void)addFastDormancyDisableToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    disableFastDormancyTokens = self->_disableFastDormancyTokens;
    if (!disableFastDormancyTokens)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = self->_disableFastDormancyTokens;
      self->_disableFastDormancyTokens = v9;

      disableFastDormancyTokens = self->_disableFastDormancyTokens;
    }

    objc_msgSend_addObject_(disableFastDormancyTokens, v7, tokenCopy);
    v13 = objc_msgSend_network(CUTLog, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_disableFastDormancyTokens;
      v19 = 138412546;
      v20 = tokenCopy;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1B2321000, v13, OS_LOG_TYPE_DEFAULT, "Client token: %@ being added to fast dormancy clients (%@)", &v19, 0x16u);
    }

    objc_msgSend_unlock(self->_lock, v15, v16);
    objc_msgSend__adjustFastDormancyTokens(self, v17, v18);
  }
}

- (void)removeFastDormancyDisableToken:(id)token
{
  v20 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    v7 = objc_msgSend_network(CUTLog, v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      disableFastDormancyTokens = self->_disableFastDormancyTokens;
      v16 = 138412546;
      v17 = tokenCopy;
      v18 = 2112;
      v19 = disableFastDormancyTokens;
      _os_log_impl(&dword_1B2321000, v7, OS_LOG_TYPE_DEFAULT, "Client token: %@ being removed from fast dormancy clients (%@)", &v16, 0x16u);
    }

    objc_msgSend_lock(self->_lock, v9, v10);
    objc_msgSend_removeObject_(self->_disableFastDormancyTokens, v11, tokenCopy);
    objc_msgSend_unlock(self->_lock, v12, v13);
    objc_msgSend__adjustFastDormancyTokens(self, v14, v15);
  }
}

@end