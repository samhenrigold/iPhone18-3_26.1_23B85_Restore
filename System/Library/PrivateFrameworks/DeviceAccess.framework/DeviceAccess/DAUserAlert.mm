@interface DAUserAlert
+ (id)accessoryRemovalAlert:(id)alert appName:(id)name;
+ (id)accessoryUnpairAlert:(id)alert appName:(id)name;
- (DAUserAlert)init;
- (void)_activateWithCompletionHandler:(id)handler;
- (void)_autoInvalidate;
- (void)_invalidated;
- (void)_responseCallback:(__CFUserNotification *)callback responseFlags:(unint64_t)flags;
- (void)activateWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation DAUserAlert

- (DAUserAlert)init
{
  v6.receiver = self;
  v6.super_class = DAUserAlert;
  v2 = [(DAUserAlert *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    [DAUserAlert dealloc];
    [(DAUserAlert *)v2 activateWithCompletionHandler:v3, v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DAUserAlert;
    [(DAUserAlert *)&v5 dealloc];
  }
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DAUserAlert_activateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__DAUserAlert_activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = DAErrorF(350002, "activate already called");
    v10 = v3;
    if (gLogCategory_DAUserAlert <= 90)
    {
      if (gLogCategory_DAUserAlert != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
      {
        __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1(v3);
      }
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _autoInvalidate];
LABEL_11:

    return;
  }

  if (*(v2 + 9) == 1)
  {
    v5 = DAErrorF(350002, "activate after invalidate");
    v10 = v5;
    if (gLogCategory_DAUserAlert <= 90)
    {
      if (gLogCategory_DAUserAlert != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
      {
        __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1(v5);
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  if (gLogCategory_DAUserAlert <= 30)
  {
    if (gLogCategory_DAUserAlert != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 32), v7))
    {
      LogPrintF(&gLogCategory_DAUserAlert, "[DAUserAlert activateWithCompletionHandler:]_block_invoke", 30, "Activate: Timeout %.3f", *(v2 + 104));
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 8) = 1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  [v8 _activateWithCompletionHandler:v9];
}

- (void)_activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__DAUserAlert__activateWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_278F57DD0;
  v47 = &v48;
  v5 = handlerCopy;
  aBlock[4] = self;
  v46 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = self->_titleKey;
  v9 = MEMORY[0x277CBF188];
  if (v8)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v8 value:&stru_285B4C350 table:0];

    v12 = self->_titleParameter;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11, v12];

      v11 = v13;
    }

    v14 = *v9;

    [v7 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = self->_localizedTitle;
  if (v15)
  {
    [v7 setObject:v15 forKeyedSubscript:*v9];
  }

  v16 = self->_subTitleKey;
  v17 = MEMORY[0x277CBF198];
  if (v16)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:v16 value:&stru_285B4C350 table:0];

    v20 = self->_subTitleParameter;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v19, -[NSObject unsignedIntValue](v20, "unsignedIntValue")];
      }

      else
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v19, v20];
      }

      v22 = v21;

      v19 = v22;
    }

    v23 = *v17;

    [v7 setObject:v19 forKeyedSubscript:v23];
  }

  v24 = self->_localizedMessage;
  if (v24)
  {
    [v7 setObject:v24 forKeyedSubscript:*v17];
  }

  v25 = self->_defaultButtonTitleKey;
  if (v25)
  {
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = CULocalizedStringEx();
    v28 = *MEMORY[0x277CBF1E8];

    [v7 setObject:v27 forKeyedSubscript:v28];
  }

  v29 = self->_alternativeButtonTitleKey;
  if (v29)
  {
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = CULocalizedStringEx();
    v32 = *MEMORY[0x277CBF1C0];

    [v7 setObject:v31 forKeyedSubscript:v32];
  }

  if (self->_showOnLockScreen)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67348]];
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67328]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D672A0]];
  }

  error = 0;
  v33 = CFUserNotificationCreate(0, self->_timeoutSeconds, 2uLL, &error, v7);
  v34 = v33;
  if (!v33)
  {
    v42 = DAErrorF(350004, "Create alert failed (%d)", error);
LABEL_30:
    v43 = v49[5];
    v49[5] = v42;

    goto LABEL_27;
  }

  self->_userNotification = v33;
  pthread_mutex_lock(&gDAUserAlertMutex);
  v35 = gDAUserAlertMap;
  if (!gDAUserAlertMap)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v37 = gDAUserAlertMap;
    gDAUserAlertMap = v36;

    v35 = gDAUserAlertMap;
  }

  v38 = [MEMORY[0x277CCABB0] numberWithLong:v34];
  [v35 setObject:self forKeyedSubscript:v38];

  pthread_mutex_unlock(&gDAUserAlertMutex);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v34, _responseCallback, 0);
  v40 = RunLoopSource;
  if (!RunLoopSource)
  {
    v42 = DAErrorF(350004, "Create alert RLS failed");
    goto LABEL_30;
  }

  self->_userRLS = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v40, *MEMORY[0x277CBF058]);
  (*(v5 + 2))(v5, 0);
LABEL_27:

  v6[2](v6);
  _Block_object_dispose(&v48, 8);
}

void *__46__DAUserAlert__activateWithCompletionHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (result)
  {
    if (gLogCategory_DAUserAlert <= 90 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DAUserAlert, "[DAUserAlert _activateWithCompletionHandler:]_block_invoke", 90, "### Activate failed: %@", v3);
    }

    (*(a1[5] + 16))();
    v4 = a1[4];

    return [v4 _autoInvalidate];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DAUserAlert_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__25__DAUserAlert_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (gLogCategory_DAUserAlert <= 30)
  {
    if (gLogCategory_DAUserAlert != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __25__DAUserAlert_invalidate__block_invoke_cold_1(result, a2, a3);
    }
  }

  v4 = v3[4];
  if ((*(v4 + 9) & 1) == 0)
  {
    *(v4 + 9) = 1;
    v5 = v3[4];

    return [v5 _autoInvalidate];
  }

  return result;
}

- (void)_autoInvalidate
{
  selfCopy = self;
  if (!self->_invalidateCalled && gLogCategory_DAUserAlert <= 30)
  {
    if (gLogCategory_DAUserAlert != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(DAUserAlert *)self _autoInvalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  userRLS = selfCopy->_userRLS;
  if (userRLS)
  {
    v5 = *MEMORY[0x277CBF058];
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, userRLS, v5);
    CFRelease(userRLS);
    selfCopy->_userRLS = 0;
  }

  userNotification = selfCopy->_userNotification;
  if (userNotification)
  {
    pthread_mutex_lock(&gDAUserAlertMutex);
    v8 = gDAUserAlertMap;
    v9 = [MEMORY[0x277CCABB0] numberWithLong:userNotification];
    [v8 setObject:0 forKeyedSubscript:v9];

    pthread_mutex_unlock(&gDAUserAlertMutex);
    if (!selfCopy->_dismissed)
    {
      CFUserNotificationCancel(userNotification);
    }

    CFRelease(userNotification);
    selfCopy->_userNotification = 0;
  }

  [(DAUserAlert *)selfCopy _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_userNotification)
  {
    v9 = _Block_copy(self->_actionHandler);
    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    if (v9)
    {
      v9[2](v9, 15);
    }

    v4 = _Block_copy(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v4)
    {
      v6 = v4[2](v4);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_DAUserAlert <= 30)
    {
      if (gLogCategory_DAUserAlert != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(DAUserAlert *)v6 _invalidated];
      }
    }
  }
}

- (void)_responseCallback:(__CFUserNotification *)callback responseFlags:(unint64_t)flags
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DAUserAlert__responseCallback_responseFlags___block_invoke;
  block[3] = &unk_278F57DF8;
  block[4] = self;
  block[5] = callback;
  block[6] = flags;
  dispatch_async(dispatchQueue, block);
}

void __47__DAUserAlert__responseCallback_responseFlags___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == *(*(a1 + 32) + 16))
  {
    if (gLogCategory_DAUserAlert <= 30 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      __47__DAUserAlert__responseCallback_responseFlags___block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 11) = 1;
    v3 = qword_2488F0CD0[*(a1 + 48) & 3];
    v6 = _Block_copy(*(*(a1 + 32) + 112));
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;

    if (v6)
    {
      v6[2](v6, v3);
    }

    [*(a1 + 32) _autoInvalidate];
  }
}

+ (id)accessoryRemovalAlert:(id)alert appName:(id)name
{
  v5 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  alertCopy = alert;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = CULocalizedStringEx();

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = CULocalizedStringEx();

  v12 = objc_alloc_init(DAUserAlert);
  [(DAUserAlert *)v12 setLocalizedTitle:v9];
  alertCopy = [MEMORY[0x277CCACA8] stringWithFormat:v11, nameCopy, alertCopy];

  [(DAUserAlert *)v12 setLocalizedMessage:alertCopy];
  [(DAUserAlert *)v12 setDefaultButtonTitleKey:@"DeviceRemoveAlertPrimaryKey"];
  [(DAUserAlert *)v12 setAlternativeButtonTitleKey:@"DeviceRemoveAlertSecondaryKey"];

  return v12;
}

+ (id)accessoryUnpairAlert:(id)alert appName:(id)name
{
  v5 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  alertCopy = alert;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = CULocalizedStringEx();

  MGGetBoolAnswer();
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = CULocalizedStringEx();

  v12 = objc_alloc_init(DAUserAlert);
  alertCopy = [MEMORY[0x277CCACA8] stringWithFormat:v9, alertCopy];

  [(DAUserAlert *)v12 setLocalizedTitle:alertCopy];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v11, nameCopy];

  [(DAUserAlert *)v12 setLocalizedMessage:nameCopy];
  [(DAUserAlert *)v12 setDefaultButtonTitleKey:@"DeviceUnpairAlertPrimaryKey"];
  [(DAUserAlert *)v12 setAlternativeButtonTitleKey:@"DeviceUnpairAlertSecondaryKey"];

  return v12;
}

void __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_DAUserAlert, "[DAUserAlert activateWithCompletionHandler:]_block_invoke", 90, "### Activate failed: %@", v1);
}

@end