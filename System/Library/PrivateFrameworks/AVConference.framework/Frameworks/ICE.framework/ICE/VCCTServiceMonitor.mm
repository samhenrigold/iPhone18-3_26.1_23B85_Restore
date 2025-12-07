@interface VCCTServiceMonitor
+ (id)sharedInstance;
- (BOOL)supportsCellular;
- (CTDataConnectionStatus)connectionStatus;
- (CTSignalStrengthInfo)signalStrength;
- (VCCTServiceMonitor)init;
- (id)getCurrentDataSubscriptionContext;
- (void)connectionStatus;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)getCurrentDataSubscriptionContext;
- (void)init;
- (void)internetConnectionStateChanged:(id)changed;
- (void)signalStrength;
- (void)signalStrengthChanged:(id)changed info:(id)info;
@end

@implementation VCCTServiceMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VCCTServiceMonitor sharedInstance];
  }

  return sharedInstance_sharedCTServiceMonitor;
}

VCCTServiceMonitor *__36__VCCTServiceMonitor_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCCTServiceMonitor);
  sharedInstance_sharedCTServiceMonitor = result;
  return result;
}

- (VCCTServiceMonitor)init
{
  v6.receiver = self;
  v6.super_class = VCCTServiceMonitor;
  v2 = [(VCCTServiceMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
    v2->_ctClient = v3;
    [(CoreTelephonyClient *)v3 setDelegate:v2];
    v2->_subscriptionContext = [(VCCTServiceMonitor *)v2 getCurrentDataSubscriptionContext];
    v2->_supportsCellular = MGGetBoolAnswer();
    v5 = 0;
    v2->_dataStatus = [(CoreTelephonyClient *)v2->_ctClient getDataStatus:v2->_subscriptionContext error:&v5];
    if (v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [VCCTServiceMonitor init];
        }
      }

      return 0;
    }

    else
    {
      v2->_statusLock._os_unfair_lock_opaque = 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCCTServiceMonitor;
  [(VCCTServiceMonitor *)&v3 dealloc];
}

- (id)getCurrentDataSubscriptionContext
{
  v4 = 0;
  v2 = [(CoreTelephonyClient *)self->_ctClient getCurrentDataServiceDescriptorSync:&v4];
  result = [MEMORY[0x277CC3798] contextWithServiceDescriptor:v2];
  if (v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [VCCTServiceMonitor getCurrentDataSubscriptionContext];
      }
    }

    return 0;
  }

  return result;
}

- (CTDataConnectionStatus)connectionStatus
{
  v8 = 0;
  os_unfair_lock_lock(&self->_statusLock);
  connectionStatus = self->_connectionStatus;
  if (!connectionStatus)
  {
    v4 = [(CoreTelephonyClient *)self->_ctClient getConnectionState:self->_subscriptionContext connectionType:0 error:&v8];
    self->_connectionStatus = v4;
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [VCCTServiceMonitor connectionStatus];
        }
      }

      connectionStatus = 0;
      self->_connectionStatus = 0;
    }

    else
    {
      v5 = v4;
      connectionStatus = self->_connectionStatus;
    }
  }

  v6 = connectionStatus;
  os_unfair_lock_unlock(&self->_statusLock);
  return v6;
}

- (CTSignalStrengthInfo)signalStrength
{
  v8 = 0;
  os_unfair_lock_lock(&self->_statusLock);
  signalStrength = self->_signalStrength;
  if (!signalStrength)
  {
    v4 = [(CoreTelephonyClient *)self->_ctClient getSignalStrengthInfo:self->_subscriptionContext error:&v8];
    self->_signalStrength = v4;
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [VCCTServiceMonitor signalStrength];
        }
      }

      signalStrength = 0;
      self->_signalStrength = 0;
    }

    else
    {
      v5 = v4;
      signalStrength = self->_signalStrength;
    }
  }

  v6 = signalStrength;
  os_unfair_lock_unlock(&self->_statusLock);
  return v6;
}

- (BOOL)supportsCellular
{
  os_unfair_lock_lock(&self->_statusLock);
  supportsCellular = self->_supportsCellular;
  os_unfair_lock_unlock(&self->_statusLock);
  return supportsCellular;
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_statusLock);
  signalStrength = self->_signalStrength;
  self->_signalStrength = info;

  os_unfair_lock_unlock(&self->_statusLock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCCTServiceMonitor signalStrengthChanged:info:]";
      v14 = 1024;
      v15 = 162;
      v16 = 2112;
      changedCopy = changed;
      v18 = 2112;
      infoCopy = info;
      _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Signal strength changed for context: %@, signal strength info: %@", &v10, 0x30u);
    }
  }
}

- (void)internetConnectionStateChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_statusLock);
  connectionStatus = self->_connectionStatus;
  self->_connectionStatus = changed;

  os_unfair_lock_unlock(&self->_statusLock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCCTServiceMonitor internetConnectionStateChanged:]";
      v12 = 1024;
      v13 = 173;
      v14 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Internet connection state changed: %@", &v8, 0x26u);
    }
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_statusLock);
  dataStatus = self->_dataStatus;
  self->_dataStatus = info;

  os_unfair_lock_unlock(&self->_statusLock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCCTServiceMonitor dataStatus:dataStatusInfo:]";
      v14 = 1024;
      v15 = 182;
      v16 = 2112;
      statusCopy = status;
      v18 = 2112;
      infoCopy = info;
      _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Data status changed for context: %@, dataStatus: %@", &v10, 0x30u);
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_9_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4(&dword_23D497000, v0, v1, " [%s] %s:%d Error occurred when calling getDataStatus: %@");
}

- (void)getCurrentDataSubscriptionContext
{
  OUTLINED_FUNCTION_9_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4(&dword_23D497000, v0, v1, " [%s] %s:%d Error occurs when getting current data subscription context: %@");
}

- (void)connectionStatus
{
  OUTLINED_FUNCTION_9_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4(&dword_23D497000, v0, v1, " [%s] %s:%d Error occurred when calling getConnectionState: %@");
}

- (void)signalStrength
{
  OUTLINED_FUNCTION_9_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4(&dword_23D497000, v0, v1, " [%s] %s:%d Error occurred when calling getSignalStrengthInfo: %@");
}

@end