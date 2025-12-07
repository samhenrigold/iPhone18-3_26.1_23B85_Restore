@interface ASDTSystemPowerNotifier
+ (id)notifierForBundleName:(id)name delegate:(id)delegate earlyWake:(BOOL)wake;
+ (id)notifierForBundleName:(id)name delegate:(id)delegate queue:(id)queue earlyWake:(BOOL)wake;
- (ASDTSystemPowerNotifierDelegate)delegate;
- (BOOL)allowSleepStateNotification:(int)notification;
- (BOOL)registerForSystemSleepNotificationsSystemPower;
- (id)initForBundleName:(id)name delegate:(id)delegate queue:(id)queue earlyWake:(BOOL)wake;
- (void)dealloc;
- (void)deregisterForSystemSleepNotificationsSystemPower;
- (void)handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(void *)argument;
- (void)registerForSystemSleepNotificationsSystemPower;
@end

@implementation ASDTSystemPowerNotifier

- (ASDTSystemPowerNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)notifierForBundleName:(id)name delegate:(id)delegate earlyWake:(BOOL)wake
{
  wakeCopy = wake;
  nameCopy = name;
  delegateCopy = delegate;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.PowerNotification", nameCopy];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INTERACTIVE, 0);

  v12 = dispatch_queue_create([nameCopy UTF8String], v11);
  v13 = [[ASDTSystemPowerNotifier alloc] initForBundleName:nameCopy delegate:delegateCopy queue:v12 earlyWake:wakeCopy];

  return v13;
}

+ (id)notifierForBundleName:(id)name delegate:(id)delegate queue:(id)queue earlyWake:(BOOL)wake
{
  wakeCopy = wake;
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v12 = [[ASDTSystemPowerNotifier alloc] initForBundleName:nameCopy delegate:delegateCopy queue:queueCopy earlyWake:wakeCopy];

  return v12;
}

- (id)initForBundleName:(id)name delegate:(id)delegate queue:(id)queue earlyWake:(BOOL)wake
{
  wakeCopy = wake;
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = ASDTSystemPowerNotifier;
  v13 = [(ASDTSystemPowerNotifier *)&v19 init];
  v15 = v13;
  if (!v13)
  {
    goto LABEL_6;
  }

  if (!nameCopy || !delegateCopy || !queueCopy)
  {
    v17 = ASDTBaseLogType(v13, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemPowerNotifier initForBundleName:v17 delegate:? queue:? earlyWake:?];
    }

    goto LABEL_10;
  }

  [(ASDTSystemPowerNotifier *)v13 setBundleName:nameCopy];
  [(ASDTSystemPowerNotifier *)v15 setDelegate:delegateCopy];
  [(ASDTSystemPowerNotifier *)v15 setPowerNotificationQueue:queueCopy];
  [(ASDTSystemPowerNotifier *)v15 setWakeForEarlyWake:wakeCopy];
  if (![(ASDTSystemPowerNotifier *)v15 registerForSystemSleepNotificationsSystemPower])
  {
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v16 = v15;
LABEL_11:

  return v16;
}

- (void)dealloc
{
  [(ASDTSystemPowerNotifier *)self deregisterForSystemSleepNotificationsSystemPower];
  v3.receiver = self;
  v3.super_class = ASDTSystemPowerNotifier;
  [(ASDTSystemPowerNotifier *)&v3 dealloc];
}

- (BOOL)allowSleepStateNotification:(int)notification
{
  v24 = *MEMORY[0x277D85DE8];
  allowSystemSleep = 1;
  if (notification > 1)
  {
    if (notification == 2)
    {
      if (![(ASDTSystemPowerNotifier *)self wakeForEarlyWake])
      {
        return allowSystemSleep;
      }
    }

    else if (notification != 3)
    {
      return allowSystemSleep;
    }

    systemIsSleeping = [(ASDTSystemPowerNotifier *)self systemIsSleeping];
    v14 = systemIsSleeping;
    v16 = ASDTBaseLogType(systemIsSleeping, v15);
    v9 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        bundleName = [(ASDTSystemPowerNotifier *)self bundleName];
        v22 = 138412290;
        v23 = bundleName;
        _os_log_impl(&dword_241659000, v9, OS_LOG_TYPE_DEFAULT, "%@: Waking.", &v22, 0xCu);
      }

      [(ASDTSystemPowerNotifier *)self setSystemIsSleeping:0];
      delegate = [(ASDTSystemPowerNotifier *)self delegate];
      [delegate systemHasPoweredOn];

      return 1;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTSystemPowerNotifier *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      [ASDTSystemPowerNotifier allowSleepStateNotification:];
    }

LABEL_7:

    return 1;
  }

  if (notification)
  {
    if (notification == 1)
    {
      systemIsSleeping2 = [(ASDTSystemPowerNotifier *)self systemIsSleeping];
      v6 = systemIsSleeping2;
      v8 = ASDTBaseLogType(systemIsSleeping2, v7);
      v9 = v8;
      if ((v6 & 1) == 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          bundleName2 = [(ASDTSystemPowerNotifier *)self bundleName];
          v22 = 138412290;
          v23 = bundleName2;
          _os_log_impl(&dword_241659000, v9, OS_LOG_TYPE_DEFAULT, "%@: Sleeping.", &v22, 0xCu);
        }

        [(ASDTSystemPowerNotifier *)self setSystemIsSleeping:1];
        delegate2 = [(ASDTSystemPowerNotifier *)self delegate];
        [delegate2 systemWillSleep];

        return 1;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ASDTSystemPowerNotifier *)self bundleName];
        objc_claimAutoreleasedReturnValue();
        [ASDTSystemPowerNotifier allowSleepStateNotification:];
      }

      goto LABEL_7;
    }
  }

  else
  {
    delegate3 = [(ASDTSystemPowerNotifier *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return 1;
    }

    delegate4 = [(ASDTSystemPowerNotifier *)self delegate];
    allowSystemSleep = [delegate4 allowSystemSleep];
  }

  return allowSystemSleep;
}

- (void)handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(void *)argument
{
  HIDWORD(v6) = type + 536870288;
  LODWORD(v6) = type + 536870288;
  v5 = v6 >> 4;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        return;
      case 9:
        v7 = 3;
        goto LABEL_10;
      case 11:
        v7 = 2;
LABEL_10:

        [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:v7, argument];
        return;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    if (v5 != 1)
    {
LABEL_17:
      v11 = ASDTBaseLogType(self, a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(ASDTSystemPowerNotifier *)self bundleName];
        objc_claimAutoreleasedReturnValue();
        [ASDTSystemPowerNotifier handlePowerNotificationWithMessageType:andArgument:];
      }

      return;
    }

    [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:1];
    powerConnection = self->_powerConnection;
    goto LABEL_14;
  }

  v10 = [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:0];
  powerConnection = self->_powerConnection;
  if (v10)
  {
LABEL_14:

    IOAllowPowerChange(powerConnection, argument);
    return;
  }

  IOCancelPowerChange(powerConnection, argument);
}

- (BOOL)registerForSystemSleepNotificationsSystemPower
{
  powerNotificationPort = IORegisterForSystemPower(self, &self->_powerNotificationPort, ASDTSystemPowerInterestCallback, &self->_powerNotifier);
  self->_powerConnection = powerNotificationPort;
  if (powerNotificationPort && (powerNotificationPort = self->_powerNotificationPort) != 0 && self->_powerNotifier)
  {
    IONotificationPortSetDispatchQueue(powerNotificationPort, self->_powerNotificationQueue);
    return 1;
  }

  else
  {
    v6 = ASDTBaseLogType(powerNotificationPort, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTSystemPowerNotifier *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      [ASDTSystemPowerNotifier registerForSystemSleepNotificationsSystemPower];
    }

    return 0;
  }
}

- (void)deregisterForSystemSleepNotificationsSystemPower
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = ASDTBaseLogType(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bundleName = [(ASDTSystemPowerNotifier *)self bundleName];
    v7 = 138412290;
    v8 = bundleName;
    _os_log_impl(&dword_241659000, v3, OS_LOG_TYPE_DEFAULT, "%@: Deregistered for system sleep notifications", &v7, 0xCu);
  }

  if (self->_powerNotifier)
  {
    IODeregisterForSystemPower(&self->_powerNotifier);
    self->_powerNotifier = 0;
  }

  powerNotificationPort = self->_powerNotificationPort;
  if (powerNotificationPort)
  {
    IONotificationPortDestroy(powerNotificationPort);
    self->_powerNotificationPort = 0;
  }

  powerConnection = self->_powerConnection;
  if (powerConnection)
  {
    IOServiceClose(powerConnection);
    self->_powerConnection = 0;
  }
}

- (void)allowSleepStateNotification:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Already awake.", v4, 0xCu);
}

- (void)allowSleepStateNotification:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Already asleep.", v4, 0xCu);
}

- (void)handlePowerNotificationWithMessageType:andArgument:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_debug_impl(&dword_241659000, v6, OS_LOG_TYPE_DEBUG, "%@: Unexpected power notification: %u", v5, 0x12u);
}

- (void)registerForSystemSleepNotificationsSystemPower
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_error_impl(&dword_241659000, v3, OS_LOG_TYPE_ERROR, "%@: Failed failed to register for system power notifications.", v4, 0xCu);
}

@end