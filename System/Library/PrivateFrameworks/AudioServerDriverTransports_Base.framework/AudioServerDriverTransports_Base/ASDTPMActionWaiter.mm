@interface ASDTPMActionWaiter
- (ASDTPMAction)waitAction;
- (ASDTPMActionWaiter)initWithConfig:(id)config forSequencer:(id)sequencer;
- (int)action;
- (void)action;
- (void)interestNotification:(int)notification forDevice:(id)device;
@end

@implementation ASDTPMActionWaiter

- (ASDTPMActionWaiter)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v25.receiver = self;
  v25.super_class = ASDTPMActionWaiter;
  v7 = [(ASDTPMAction *)&v25 initWithConfig:configCopy forSequencer:sequencer];
  if (!v7)
  {
    goto LABEL_6;
  }

  asdtDeviceUID = [configCopy asdtDeviceUID];
  asdtPMActionWaiterActionName = [configCopy asdtPMActionWaiterActionName];
  [(ASDTPMActionWaiter *)v7 setWaitActionName:asdtPMActionWaiterActionName];

  -[ASDTPMActionWaiter setWaitTimeoutUs:](v7, "setWaitTimeoutUs:", [configCopy asdtPMActionWaiterTimeoutUs]);
  v10 = objc_alloc_init(MEMORY[0x277CCA928]);
  [(ASDTPMActionWaiter *)v7 setWaitForActionCondition:v10];

  v11 = MEMORY[0x277CCACA8];
  name = [(ASDTPMDevice *)v7 name];
  v13 = [v11 stringWithFormat:@"%s.%@.cond", "com.apple.AudioServerDriverTransports", name];
  waitForActionCondition = [(ASDTPMActionWaiter *)v7 waitForActionCondition];
  [waitForActionCondition setName:v13];

  if (asdtDeviceUID)
  {
    waitActionName = [(ASDTPMActionWaiter *)v7 waitActionName];
    if (waitActionName)
    {
      v17 = waitActionName;
      waitForActionCondition2 = [(ASDTPMActionWaiter *)v7 waitForActionCondition];

      if (waitForActionCondition2)
      {
        parentSequencer = [(ASDTPMDevice *)v7 parentSequencer];
        parentDevice = [parentSequencer parentDevice];
        deviceManager = [parentDevice deviceManager];
        [deviceManager registerObject:v7 withInterests:1 forUID:asdtDeviceUID];

LABEL_6:
        v22 = v7;
        goto LABEL_10;
      }
    }
  }

  v23 = ASDTBaseLogType(waitActionName, v16);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [ASDTPMActionWaiter initWithConfig:v7 forSequencer:?];
  }

  v22 = 0;
LABEL_10:

  return v22;
}

- (void)interestNotification:(int)notification forDevice:(id)device
{
  deviceCopy = device;
  v7 = ASDTBaseLogType(deviceCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ASDTPMActionWaiter interestNotification:v7 forDevice:?];
  }

  v8 = deviceCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    pmSequencer = [v8 pmSequencer];
    waitActionName = [(ASDTPMActionWaiter *)self waitActionName];
    v13 = [pmSequencer pmDeviceWithName:waitActionName];

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if (v14)
    {
      waitForActionCondition = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [waitForActionCondition lock];

      [(ASDTPMActionWaiter *)self setWaitAction:v13];
      waitForActionCondition2 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [waitForActionCondition2 signal];

      waitForActionCondition3 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [waitForActionCondition3 unlock];
    }

    else
    {
      waitForActionCondition3 = ASDTBaseLogType(v14, v15);
      if (os_log_type_enabled(waitForActionCondition3, OS_LOG_TYPE_ERROR))
      {
        [ASDTPMActionWaiter interestNotification:? forDevice:?];
      }
    }
  }

  else
  {
    v13 = ASDTBaseLogType(isKindOfClass, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionWaiter interestNotification:? forDevice:?];
    }
  }
}

- (int)action
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  if ([(ASDTPMActionWaiter *)self waitTimeoutUs])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{-[ASDTPMActionWaiter waitTimeoutUs](self, "waitTimeoutUs") / 1000000.0}];
  }

  else
  {
    v3 = 0;
  }

  waitForActionCondition = [(ASDTPMActionWaiter *)self waitForActionCondition];
  [waitForActionCondition lock];

  waitAction = [(ASDTPMActionWaiter *)self waitAction];

  if (!waitAction)
  {
    do
    {
      v15 = ASDTBaseLogType(v6, v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(ASDTPMActionWaiter *)v20 action:v21];
      }

      waitForActionCondition2 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      v17 = waitForActionCondition2;
      if (v3)
      {
        v18 = [waitForActionCondition2 waitUntilDate:v3];

        if ((v18 & 1) == 0)
        {
          waitForActionCondition3 = [(ASDTPMActionWaiter *)self waitForActionCondition];
          [waitForActionCondition3 unlock];
          v13 = 1852990585;
          goto LABEL_8;
        }
      }

      else
      {
        [waitForActionCondition2 wait];
      }

      waitAction2 = [(ASDTPMActionWaiter *)self waitAction];
    }

    while (!waitAction2);
  }

  waitForActionCondition4 = [(ASDTPMActionWaiter *)self waitForActionCondition];
  [waitForActionCondition4 unlock];

  v11 = ASDTBaseLogType(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ASDTPMActionWaiter *)self action];
  }

  waitForActionCondition3 = [(ASDTPMActionWaiter *)self waitAction];
  v13 = [waitForActionCondition3 waitForCompletion:{-[ASDTPMActionWaiter waitTimeoutUs](self, "waitTimeoutUs")}];
LABEL_8:

  return v13;
}

- (ASDTPMAction)waitAction
{
  WeakRetained = objc_loadWeakRetained(&self->_waitAction);

  return WeakRetained;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)interestNotification:(void *)a1 forDevice:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_241659000, a2, OS_LOG_TYPE_DEBUG, "%@: Notified.", &v4, 0xCu);
}

- (void)interestNotification:(void *)a1 forDevice:.cold.2(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)interestNotification:(void *)a1 forDevice:.cold.3(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 waitActionName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)action
{
  v8 = *MEMORY[0x277D85DE8];
  name = [self name];
  waitAction = [self waitAction];
  name2 = [waitAction name];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_241659000, a2, OS_LOG_TYPE_DEBUG, "%@: Waiting on action with name: %@", v7, 0x16u);
}

@end