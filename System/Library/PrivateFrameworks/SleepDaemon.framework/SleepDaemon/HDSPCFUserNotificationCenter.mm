@interface HDSPCFUserNotificationCenter
- (HDSPCFUserNotificationCenter)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (NSString)sourceIdentifier;
- (id)_confirmTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_ignoreTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (void)_publishNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle bypassDND:(BOOL)d aboveLockScreen:(BOOL)screen actionHandler:(id)self0;
- (void)_publishWakeDetectionNotificationForUserInfo:(id)info;
- (void)handleResponse:(unint64_t)response forUserNotification:(id)notification;
- (void)publishNotificationForEvent:(id)event;
- (void)tearDownNotificationForEventIdentifier:(id)identifier;
@end

@implementation HDSPCFUserNotificationCenter

- (HDSPCFUserNotificationCenter)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = HDSPCFUserNotificationCenter;
  v5 = [(HDSPCFUserNotificationCenter *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    mutexGenerator = [environmentCopy mutexGenerator];
    v8 = mutexGenerator[2]();
    mutexProvider = v6->_mutexProvider;
    v6->_mutexProvider = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notifications = v6->_notifications;
    v6->_notifications = v10;

    v12 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)event
{
  eventCopy = event;
  identifier = [eventCopy identifier];
  if ([identifier isEqualToString:*MEMORY[0x277D621D8]])
  {
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    behavior = [WeakRetained behavior];
    isAppleWatch = [behavior isAppleWatch];

    if (isAppleWatch)
    {
      goto LABEL_5;
    }

    identifier = [eventCopy context];
    [(HDSPCFUserNotificationCenter *)self _publishWakeDetectionNotificationForUserInfo:identifier];
  }

LABEL_5:
}

- (void)_publishWakeDetectionNotificationForUserInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = objc_opt_class();
    v6 = v28;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] publishWakeDetectionNotification", buf, 0xCu);
  }

  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62338]];
  bOOLValue = [v7 BOOLValue];

  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62340]];
  bOOLValue2 = [v9 BOOLValue];

  if (bOOLValue2)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543362;
      v28 = v12;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is on", buf, 0xCu);
    }
  }

  if (bOOLValue)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v28 = v15;
      v16 = v15;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] alarm is enabled", buf, 0xCu);
    }
  }

  v17 = [(HDSPCFUserNotificationCenter *)self _wakeDetectionAlertTitleForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v18 = [(HDSPCFUserNotificationCenter *)self _wakeDetectionAlertBodyForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v19 = [(HDSPCFUserNotificationCenter *)self _confirmTextForForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v20 = [(HDSPCFUserNotificationCenter *)self _ignoreTextForForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  objc_initWeak(buf, self);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  isAppleWatch = [behavior isAppleWatch];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke;
  v25[3] = &unk_279C7C028;
  objc_copyWeak(&v26, buf);
  LOBYTE(v24) = isAppleWatch ^ 1;
  [(HDSPCFUserNotificationCenter *)self _publishNotificationWithIdentifier:*MEMORY[0x277D621D8] title:v17 message:v18 defaultButtonTitle:v19 otherButtonTitle:v20 bypassDND:1 aboveLockScreen:v24 actionHandler:v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained(WeakRetained + 1);
  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] confirming the awake notification", buf, 0xCu);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke_295;
    v9[3] = &unk_279C7B108;
    v10 = v4;
    [v10 perform:v9 withSource:WeakRetained];
    v5 = v10;
  }

  else if (v6)
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v8 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] dismissing the awake notification", buf, 0xCu);
  }
}

void __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke_295(uint64_t a1)
{
  v1 = [*(a1 + 32) actionManager];
  [v1 confirmWakeUp:1];
}

- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v4 = @"EARLY_WAKEUP_TITLE_NONE";
  if (enabled)
  {
    v4 = @"EARLY_WAKEUP_TITLE_ALARM";
  }

  v5 = @"EARLY_WAKEUP_TITLE_ALARM_AND_SLEEP_FOCUS";
  if (!enabled)
  {
    v5 = @"EARLY_WAKEUP_TITLE_SLEEP_FOCUS";
  }

  if (on)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = HDSPLocalizedString(v6);

  return v7;
}

- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v4 = @"EARLY_WAKEUP_BODY_NONE";
  if (enabled)
  {
    v4 = @"EARLY_WAKEUP_BODY_ALARM";
  }

  v5 = @"EARLY_WAKEUP_BODY_ALARM_AND_SLEEP_FOCUS";
  if (!enabled)
  {
    v5 = @"EARLY_WAKEUP_BODY_SLEEP_FOCUS";
  }

  if (on)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = HDSPLocalizedString(v6);

  return v7;
}

- (id)_confirmTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  if (enabled || on)
  {
    v4 = @"EARLY_DISMISS_TURN_OFF";
  }

  else
  {
    v4 = @"EARLY_DISMISS_YES";
  }

  v5 = HDSPLocalizedString(v4);

  return v5;
}

- (id)_ignoreTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  if (enabled || on)
  {
    v4 = @"EARLY_DISMISS_LEAVE_ON";
  }

  else
  {
    v4 = @"EARLY_DISMISS_NO";
  }

  v5 = HDSPLocalizedString(v4);

  return v5;
}

- (void)_publishNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle bypassDND:(BOOL)d aboveLockScreen:(BOOL)screen actionHandler:(id)self0
{
  dCopy = d;
  v61[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  handlerCopy = handler;
  v21 = *MEMORY[0x277CBF198];
  v60[0] = *MEMORY[0x277CBF188];
  v60[1] = v21;
  v61[0] = titleCopy;
  v61[1] = messageCopy;
  v22 = *MEMORY[0x277CBF1C0];
  v60[2] = *MEMORY[0x277CBF1E8];
  v60[3] = v22;
  v61[2] = buttonTitleCopy;
  v61[3] = otherButtonTitleCopy;
  v60[4] = *MEMORY[0x277CBF1B0];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:screen];
  v61[4] = v23;
  v60[5] = *MEMORY[0x277D673B0];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:dCopy];
  v25 = *MEMORY[0x277D67400];
  v61[5] = v24;
  v61[6] = &unk_287A950E0;
  v26 = *MEMORY[0x277D673F8];
  v60[6] = v25;
  v60[7] = v26;
  v27 = *MEMORY[0x277D67360];
  v61[7] = *MEMORY[0x277D71FE8];
  v61[8] = MEMORY[0x277CBEC38];
  v28 = *MEMORY[0x277D67338];
  v60[8] = v27;
  v60[9] = v28;
  v61[9] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:10];

  v30 = HKSPLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v57 = objc_opt_class();
    v58 = 2114;
    v59 = v29;
    v31 = v57;
    _os_log_impl(&dword_269B11000, v30, OS_LOG_TYPE_INFO, "[%{public}@] publishing notification with properties %{public}@", buf, 0x16u);
  }

  error = 0;
  v32 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v29);
  if (v32)
  {
    v33 = v32;
    v34 = error;
    v35 = HKSPLogForCategory();
    v36 = v35;
    if (v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        *buf = 138543618;
        v57 = v37;
        v58 = 1024;
        LODWORD(v59) = error;
        v38 = v37;
        _os_log_error_impl(&dword_269B11000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] failed to post CFUserNotification (%d)", buf, 0x12u);
      }
    }

    else
    {
      v49 = titleCopy;
      v50 = identifierCopy;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        *buf = 138543618;
        v57 = v40;
        v58 = 2114;
        v59 = identifierCopy;
        v41 = v40;
        _os_log_impl(&dword_269B11000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting CFUserNotification for %{public}@", buf, 0x16u);

        identifierCopy = v50;
      }

      CFRetain(v33);
      v42 = [HDSPCFUserNotification userNotificationWithIdentifier:identifierCopy notification:v33 actionHandler:handlerCopy];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __157__HDSPCFUserNotificationCenter__publishNotificationWithIdentifier_title_message_defaultButtonTitle_otherButtonTitle_bypassDND_aboveLockScreen_actionHandler___block_invoke;
      v52[3] = &unk_279C7C050;
      v52[4] = self;
      v43 = v50;
      v53 = v43;
      v54 = v42;
      v36 = v42;
      [(HDSPCFUserNotificationCenter *)self _withLock:v52];
      WeakRetained = objc_loadWeakRetained(&self->_environment);
      assertionManager = [WeakRetained assertionManager];
      [assertionManager takeAssertionWithIdentifier:v43 type:1 timeout:1800.0];

      identifierCopy = v50;
      v46 = +[HDSPCFUserNotificationCenterManager sharedManager];
      [v46 postNotification:v36 fromCenter:self];

      titleCopy = v49;
    }

    CFRelease(v33);
  }

  else
  {
    v39 = HKSPLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      *buf = 138543618;
      v57 = v47;
      v58 = 1024;
      LODWORD(v59) = error;
      v48 = v47;
      _os_log_error_impl(&dword_269B11000, v39, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create CFUserNotification (%d)", buf, 0x12u);
    }
  }
}

- (void)handleResponse:(unint64_t)response forUserNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    identifier = [notificationCopy identifier];
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = identifier;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] calling handler for %{public}@", buf, 0x16u);
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __67__HDSPCFUserNotificationCenter_handleResponse_forUserNotification___block_invoke;
  v16 = &unk_279C7B2D0;
  selfCopy = self;
  v18 = notificationCopy;
  v11 = notificationCopy;
  [(HDSPCFUserNotificationCenter *)self _withLock:&v13];
  actionHandler = [v11 actionHandler];
  (actionHandler)[2](actionHandler, response == 0);
}

void __67__HDSPCFUserNotificationCenter_handleResponse_forUserNotification___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObjectForKey:v2];
}

- (void)tearDownNotificationForEventIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HDSPCFUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke;
  v12[3] = &unk_279C7C078;
  v14 = &v15;
  v12[4] = self;
  v5 = identifierCopy;
  v13 = v5;
  [(HDSPCFUserNotificationCenter *)self _withLock:v12];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  assertionManager = [WeakRetained assertionManager];
  [assertionManager releaseAssertionWithIdentifier:v5];

  if (v16[5])
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v5;
      v10 = v9;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] cancelling CFUserNotification for %{public}@", buf, 0x16u);
    }

    v11 = +[HDSPCFUserNotificationCenterManager sharedManager];
    [v11 cancelNotification:v16[5] fromCenter:self];
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __71__HDSPCFUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 24);

  return [v6 removeObjectForKey:v5];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end