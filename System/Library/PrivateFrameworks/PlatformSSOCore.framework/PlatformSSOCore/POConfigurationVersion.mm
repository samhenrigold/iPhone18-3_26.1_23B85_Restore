@interface POConfigurationVersion
+ (id)notificationForType:(int64_t)type;
- (POConfigurationVersion)initWithConfigurationType:(int64_t)type;
- (int64_t)checkVersion;
- (unint64_t)_state;
- (void)_setStateAndNotify:(unint64_t)notify type:(int64_t)type;
- (void)dealloc;
- (void)increaseVersionWithMessage:(id)message;
- (void)reset;
- (void)setPlatformSSOUnavailable;
@end

@implementation POConfigurationVersion

- (POConfigurationVersion)initWithConfigurationType:(int64_t)type
{
  v5 = PO_LOG_POConfigurationVersion(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POConfigurationVersion *)self initWithConfigurationType:v5];
  }

  v13.receiver = self;
  v13.super_class = POConfigurationVersion;
  v6 = [(POConfigurationVersion *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_token = -1;
    v6->_version = 0;
    v6->_type = type;
    v8 = [POConfigurationVersion notificationForType:type];
    v9 = notify_register_check([v8 UTF8String], &v7->_token);

    if (v9)
    {
      v11 = PO_LOG_POConfigurationVersion(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [POConfigurationVersion initWithConfigurationType:];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    v4 = notify_cancel(token);
    if (v4)
    {
      v5 = PO_LOG_POConfigurationVersion(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [POConfigurationVersion dealloc];
      }
    }
  }

  v6.receiver = self;
  v6.super_class = POConfigurationVersion;
  [(POConfigurationVersion *)&v6 dealloc];
}

- (int64_t)checkVersion
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _state = [(POConfigurationVersion *)selfCopy _state];
  v4 = _state;
  if (_state == -1)
  {
    selfCopy->_version = -1;
    v5 = 2;
  }

  else
  {
    if (!_state)
    {
      [(POConfigurationVersion *)selfCopy increaseVersionWithMessage:@"first load"];
LABEL_6:
      v5 = 0;
      goto LABEL_10;
    }

    if (_state == selfCopy->_version)
    {
      goto LABEL_6;
    }

    v6 = PO_LOG_POConfigurationVersion(_state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      version = selfCopy->_version;
      v9 = 136315906;
      v10 = "[POConfigurationVersion checkVersion]";
      v11 = 2048;
      v12 = version;
      v13 = 2048;
      v14 = v4;
      v15 = 2112;
      v16 = selfCopy;
      _os_log_impl(&dword_25E8B1000, v6, OS_LOG_TYPE_DEFAULT, "%s config version changed from from 0x%016llX to 0x%016llX on %@", &v9, 0x2Au);
    }

    selfCopy->_version = v4;
    v5 = 1;
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)increaseVersionWithMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  selfCopy->_version = (v7 * 1000.0);

  v9 = PO_LOG_POConfigurationVersion(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _state = [(POConfigurationVersion *)selfCopy _state];
    version = selfCopy->_version;
    v12 = 136316162;
    v13 = "[POConfigurationVersion increaseVersionWithMessage:]";
    v14 = 2048;
    v15 = _state;
    v16 = 2048;
    v17 = version;
    v18 = 2114;
    v19 = messageCopy;
    v20 = 2112;
    v21 = selfCopy;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_DEFAULT, "%s config version increased from 0x%016llX to 0x%016llX (%{public}@) on %@", &v12, 0x34u);
  }

  [(POConfigurationVersion *)selfCopy _setStateAndNotify:selfCopy->_version type:selfCopy->_type];
  objc_sync_exit(selfCopy);
}

- (void)setPlatformSSOUnavailable
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POConfigurationVersion(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[POConfigurationVersion setPlatformSSOUnavailable]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  selfCopy2 = self;
  v5 = objc_sync_enter(selfCopy2);
  selfCopy2->_version = -1;
  v6 = PO_LOG_POConfigurationVersion(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_25E8B1000, v6, OS_LOG_TYPE_DEFAULT, "set config version to PlatformSSO unavailable", &v7, 2u);
  }

  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:0];
  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:1];
  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:2];
  objc_sync_exit(selfCopy2);
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(POConfigurationVersion *)obj increaseVersionWithMessage:@"reset"];
  obj->_version = -1;
  objc_sync_exit(obj);
}

- (unint64_t)_state
{
  state64 = -1;
  token = self->_token;
  if (token == -1)
  {
    v4 = PO_LOG_POConfigurationVersion(token);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(POConfigurationVersion *)v4 _state];
    }

    goto LABEL_7;
  }

  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = PO_LOG_POConfigurationVersion(state);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _state];
    }

LABEL_7:
  }

  return state64;
}

- (void)_setStateAndNotify:(unint64_t)notify type:(int64_t)type
{
  v5 = notify_set_state(self->_token, notify);
  if (v5)
  {
    v6 = PO_LOG_POConfigurationVersion(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _setStateAndNotify:type:];
    }
  }

  v7 = [POConfigurationVersion notificationForType:type];
  v8 = notify_post([v7 UTF8String]);

  if (v8)
  {
    v10 = PO_LOG_POConfigurationVersion(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _setStateAndNotify:type:];
    }
  }
}

+ (id)notificationForType:(int64_t)type
{
  v3 = @"/com.apple.PlatformSSO.user.version";
  if (type == 1)
  {
    v3 = @"/com.apple.PlatformSSO.login.version";
  }

  if (type == 2)
  {
    return @"/com.apple.PlatformSSO.device.version";
  }

  else
  {
    return v3;
  }
}

- (void)initWithConfigurationType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POConfigurationVersion initWithConfigurationType:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

@end