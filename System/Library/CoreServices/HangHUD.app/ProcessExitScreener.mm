@interface ProcessExitScreener
+ (id)sharedInstance;
- (BOOL)allowedExitReasonsMatchRecordReasons:(id)reasons;
- (BOOL)isProcessExitRecordAllowed:(id)allowed;
- (ProcessExitScreener)init;
- (void)setFilteringConfiguration:(id)configuration;
@end

@implementation ProcessExitScreener

+ (id)sharedInstance
{
  if (qword_10003E748 != -1)
  {
    sub_10001923C();
  }

  v3 = qword_10003E740;

  return v3;
}

- (ProcessExitScreener)init
{
  v6.receiver = self;
  v6.super_class = ProcessExitScreener;
  v2 = [(ProcessExitScreener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    knownCriticalProcesses = v2->_knownCriticalProcesses;
    v2->_knownCriticalProcesses = &off_100035ED0;
  }

  return v3;
}

- (BOOL)isProcessExitRecordAllowed:(id)allowed
{
  allowedCopy = allowed;
  processName = [allowedCopy processName];
  v6 = processName;
  if (!self->_filteringConfiguration)
  {
    v11 = sub_10000A9AC(processName);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194C0();
    }

    goto LABEL_11;
  }

  exitReasonNamespace = [allowedCopy exitReasonNamespace];
  if (!exitReasonNamespace)
  {
    v11 = sub_10000A9AC(exitReasonNamespace);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019458();
    }

    goto LABEL_11;
  }

  allowsAllProcesses = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowsAllProcesses];
  if (!allowsAllProcesses)
  {
    if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowsCriticalProcesses])
    {
      v13 = [(NSArray *)self->_knownCriticalProcesses containsObject:v6];
      if (v13)
      {
        v9 = sub_10000A9AC(v13);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100019388();
        }

        goto LABEL_6;
      }
    }

    allowedProcessNames = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
    v15 = [allowedProcessNames count];

    if (v15)
    {
      allowedProcessNames2 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
      v18 = [allowedProcessNames2 containsObject:v6];

      v9 = sub_10000A9AC(v19);
      v20 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        if (v20)
        {
          sub_1000192B8();
        }

        goto LABEL_6;
      }

      if (v20)
      {
        sub_100019250();
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v11 = sub_10000A9AC(v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019320();
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = sub_10000A9AC(allowsAllProcesses);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000193F0();
  }

LABEL_6:

  v10 = [(ProcessExitScreener *)self allowedExitReasonsMatchRecordReasons:allowedCopy];
LABEL_13:

  return v10;
}

- (BOOL)allowedExitReasonsMatchRecordReasons:(id)reasons
{
  reasonsCopy = reasons;
  processName = [reasonsCopy processName];
  v6 = 1 << [reasonsCopy exitReasonNamespace];
  if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons]== 1 || (v7 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons], (v7 & v6) != 0))
  {
    v8 = sub_1000101C0(v6);
    v9 = [v8 count];

    if (v9)
    {
      allowedSubReasons = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedSubReasons];
      v12 = [NSNumber numberWithUnsignedLongLong:v6];
      v13 = [allowedSubReasons objectForKeyedSubscript:v12];

      if (v13)
      {
        unsignedLongLongValue = [v13 unsignedLongLongValue];
        v16 = sub_10000FE7C(v6, [reasonsCopy exitReasonCode]);
        v17 = sub_10000A9AC(v16);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (unsignedLongLongValue != 1 && (v16 & unsignedLongLongValue) == 0)
        {
          if (v18)
          {
            sub_100019650(processName, reasonsCopy);
          }

          v19 = 0;
          goto LABEL_21;
        }

        if (v18)
        {
          sub_1000195B0(processName, reasonsCopy);
        }
      }

      else
      {
        v17 = sub_10000A9AC(v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_1000196F0(processName, reasonsCopy);
        }
      }

      v19 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v13 = sub_10000A9AC(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100019778(processName, reasonsCopy);
    }

    v19 = 1;
  }

  else
  {
    v13 = sub_10000A9AC(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100019528(processName, reasonsCopy);
    }

    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (void)setFilteringConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_filteringConfiguration, configuration);
  v7 = sub_10000A9AC(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Process Terminations: applied filtering configuration:\n%@", &v8, 0xCu);
  }
}

@end