@interface UARPAnalyticsUpdateFirmwareState
- (BOOL)isEqual:(id)equal;
- (UARPAnalyticsUpdateFirmwareState)initWithAccessoryID:(id)d assetID:(id)iD;
- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)eventParams;
- (id)description;
- (unint64_t)age;
- (void)accessoryUnreachable;
- (void)setState:(int64_t)state;
- (void)stagingCompleteWithStatus:(unint64_t)status;
- (void)stagingInterrupted;
- (void)stagingStartedWithUserIntent:(BOOL)intent;
- (void)updateStagingDuration;
@end

@implementation UARPAnalyticsUpdateFirmwareState

- (UARPAnalyticsUpdateFirmwareState)initWithAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = UARPAnalyticsUpdateFirmwareState;
  v8 = [(UARPAnalyticsUpdateFirmwareState *)&v18 init];
  if (v8)
  {
    v9 = [dCopy copy];
    accessoryID = v8->_accessoryID;
    v8->_accessoryID = v9;

    v11 = [iDCopy copy];
    assetID = v8->_assetID;
    v8->_assetID = v11;

    date = [MEMORY[0x277CBEAA8] date];
    startDate = v8->_startDate;
    v8->_startDate = date;

    v15 = os_log_create("com.apple.accessoryupdater.uarp", "analytics");
    log = v8->_log;
    v8->_log = v15;
  }

  return v8;
}

- (void)stagingStartedWithUserIntent:(BOOL)intent
{
  v12 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[UARPAnalyticsUpdateFirmwareState stagingStartedWithUserIntent:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@", &v8, 0x16u);
  }

  if ((self->_state | 2) == 2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    stagingDurationStart = self->_stagingDurationStart;
    self->_stagingDurationStart = date;

    ++self->_stagingIterations;
    [(UARPAnalyticsUpdateFirmwareState *)self setState:1];
    self->_stagingUserInitiated = intent;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPAnalyticsUpdateFirmwareState stagingStartedWithUserIntent:];
  }
}

- (void)stagingInterrupted
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  if (!v8 & v7)
  {
    v9 = "unrecognized";
  }

  else
  {
    v9 = off_278EC1898[v6];
  }

  LODWORD(v10) = 136315138;
  *(&v10 + 4) = v9;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Staging interrupted while in an unexpected state: %s", v2, v3, v4, v5, v10, DWORD2(v10));
}

- (void)stagingCompleteWithStatus:(unint64_t)status
{
  v13 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[UARPAnalyticsUpdateFirmwareState stagingCompleteWithStatus:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@", &v9, 0x16u);
  }

  if (self->_state == 1)
  {
    [(UARPAnalyticsUpdateFirmwareState *)self setState:3];
    [(UARPAnalyticsUpdateFirmwareState *)self updateStagingDuration];
    if (status > 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = qword_247B3D370[status];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    stagingStatus = self->_stagingStatus;
    self->_stagingStatus = v7;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPAnalyticsUpdateFirmwareState stagingCompleteWithStatus:];
  }
}

- (void)updateStagingDuration
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_stagingDurationStart];
  v5 = v4;

  stagingDurationStart = self->_stagingDurationStart;
  self->_stagingDurationSeconds += v5;
  self->_stagingDurationStart = 0;
}

- (void)accessoryUnreachable
{
  if (self->_state == 1)
  {
    [(UARPAnalyticsUpdateFirmwareState *)self stagingInterrupted];
  }
}

- (void)setState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state > 3)
  {
    v6 = "unrecognized";
  }

  else
  {
    v6 = off_278EC1898[state];
  }

  if (state > 3)
  {
    v7 = "unrecognized";
  }

  else
  {
    v7 = off_278EC1898[state];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%@ state change: %s -> %s", &v9, 0x20u);
  }

  self->_state = state;
}

- (unint64_t)age
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_startDate];
  v5 = v4;

  return v5;
}

- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)eventParams
{
  v3 = objc_alloc_init(UARPUpdateFirmwareAnalyticsEventFrameworkParams);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_stagingUserInitiated];
  [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v3 setStagingUserInitiated:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_stagingDurationSeconds];
  [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v3 setStagingDuration:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_stagingIterations];
  [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v3 setStagingIterations:v6];

  [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v3 setStagingStatus:self->_stagingStatus];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      accessoryID = self->_accessoryID;
      accessoryID = [(UARPAnalyticsUpdateFirmwareState *)v5 accessoryID];
      if ([(UARPAccessoryID *)accessoryID isEqual:accessoryID])
      {
        assetID = self->_assetID;
        assetID = [(UARPAnalyticsUpdateFirmwareState *)v5 assetID];
        v10 = [(UARPAssetID *)assetID isEqual:assetID];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  manufacturer = [(UARPAccessoryID *)self->_accessoryID manufacturer];
  modelName = [(UARPAccessoryID *)self->_accessoryID modelName];
  serialNumber = [(UARPAccessoryID *)self->_accessoryID serialNumber];
  firmwareVersion = [(UARPAccessoryID *)self->_accessoryID firmwareVersion];
  assetVersion = [(UARPAssetID *)self->_assetID assetVersion];
  v11 = [v3 stringWithFormat:@"<%@: %@ %@ [%@] %@ -> %@>", v5, manufacturer, modelName, serialNumber, firmwareVersion, assetVersion];

  return v11;
}

- (void)stagingStartedWithUserIntent:.cold.1()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  if (!v8 & v7)
  {
    v9 = "unrecognized";
  }

  else
  {
    v9 = off_278EC1898[v6];
  }

  LODWORD(v10) = 136315138;
  *(&v10 + 4) = v9;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Staging started while in an unexpected state: %s", v2, v3, v4, v5, v10, DWORD2(v10));
}

- (void)stagingCompleteWithStatus:.cold.1()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  if (!v8 & v7)
  {
    v9 = "unrecognized";
  }

  else
  {
    v9 = off_278EC1898[v6];
  }

  LODWORD(v10) = 136315138;
  *(&v10 + 4) = v9;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Staging completed while in unexpected state: %s", v2, v3, v4, v5, v10, DWORD2(v10));
}

@end