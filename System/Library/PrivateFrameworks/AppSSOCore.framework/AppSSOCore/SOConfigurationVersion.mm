@interface SOConfigurationVersion
+ (void)reset;
- (SOConfigurationVersion)initWithMode:(int64_t)mode;
- (int64_t)checkVersion;
- (unint64_t)_state;
- (void)_setStateAndNotify:(unint64_t)notify;
- (void)_state;
- (void)dealloc;
- (void)increaseVersionWithMessage:(id)message;
- (void)setAppSSOUnavailable;
@end

@implementation SOConfigurationVersion

- (int64_t)checkVersion
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _state = [(SOConfigurationVersion *)selfCopy _state];
  v4 = _state;
  if (_state == -1)
  {
    selfCopy->_version = -1;
    v5 = 2;
    goto LABEL_10;
  }

  if (!_state)
  {
LABEL_9:
    v5 = 1;
    goto LABEL_10;
  }

  if (_state != selfCopy->_version)
  {
    v6 = SO_LOG_SOConfigurationVersion(_state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      version = selfCopy->_version;
      v9 = 136315906;
      v10 = "[SOConfigurationVersion checkVersion]";
      v11 = 2048;
      v12 = version;
      v13 = 2048;
      v14 = v4;
      v15 = 2112;
      v16 = selfCopy;
      _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "%s config version changed from from 0x%016llX to 0x%016llX on %@", &v9, 0x2Au);
    }

    selfCopy->_version = v4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:
  objc_sync_exit(selfCopy);

  return v5;
}

- (unint64_t)_state
{
  state64 = -1;
  token = self->_token;
  if (token == -1)
  {
    v4 = SO_LOG_SOConfigurationVersion(token);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _state];
    }

    goto LABEL_7;
  }

  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = SO_LOG_SOConfigurationVersion(state);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _state];
    }

LABEL_7:
  }

  return state64;
}

- (SOConfigurationVersion)initWithMode:(int64_t)mode
{
  v5 = SO_LOG_SOConfigurationVersion(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOConfigurationVersion *)mode initWithMode:v5];
  }

  v11.receiver = self;
  v11.super_class = SOConfigurationVersion;
  v6 = [(SOConfigurationVersion *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_token = -1;
    v6->_mode = mode;
    v6->_version = 0;
    v8 = notify_register_check("/com.apple.AppSSO.version", &v6->_token);
    if (v8)
    {
      v9 = SO_LOG_SOConfigurationVersion(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationVersion initWithMode:];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)increaseVersionWithMessage:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = messageCopy;
  if (self->_mode)
  {
    selfCopy = SO_LOG_SOConfigurationVersion(messageCopy);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion increaseVersionWithMessage:];
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    selfCopy->_version = (v8 * 1000.0);

    v10 = SO_LOG_SOConfigurationVersion(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      _state = [(SOConfigurationVersion *)selfCopy _state];
      version = selfCopy->_version;
      v13 = 136316162;
      v14 = "[SOConfigurationVersion increaseVersionWithMessage:]";
      v15 = 2048;
      v16 = _state;
      v17 = 2048;
      v18 = version;
      v19 = 2114;
      v20 = v5;
      v21 = 2112;
      v22 = selfCopy;
      _os_log_impl(&dword_1CA238000, v10, OS_LOG_TYPE_DEFAULT, "%s config version increased from 0x%016llX to 0x%016llX (%{public}@) on %@", &v13, 0x34u);
    }

    [(SOConfigurationVersion *)selfCopy _setStateAndNotify:selfCopy->_version];
    objc_sync_exit(selfCopy);
  }
}

- (void)setAppSSOUnavailable
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationVersion(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOConfigurationVersion setAppSSOUnavailable]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  if (self->_mode)
  {
    selfCopy2 = SO_LOG_SOConfigurationVersion(v4);
    if (os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion setAppSSOUnavailable];
    }
  }

  else
  {
    selfCopy2 = self;
    v6 = objc_sync_enter(selfCopy2);
    selfCopy2->_version = -1;
    v7 = SO_LOG_SOConfigurationVersion(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "set config version to AppSSO unavailable", &v8, 2u);
    }

    [(SOConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version];
    objc_sync_exit(selfCopy2);
  }
}

+ (void)reset
{
  out_token = 0;
  v2 = notify_register_check("/com.apple.AppSSO.version", &out_token);
  if (v2)
  {
    NSLog(&cfstr_NotifyRegister.isa, v2);
  }

  else
  {
    v3 = notify_set_state(out_token, 0);
    if (v3)
    {
      NSLog(&cfstr_NotifySetState.isa, v3);
      notify_cancel(out_token);
    }

    else
    {
      v4 = notify_cancel(out_token);
      if (v4)
      {
        NSLog(&cfstr_NotifyCancelFa.isa, v4);
      }
    }
  }
}

- (void)_setStateAndNotify:(unint64_t)notify
{
  v3 = notify_set_state(self->_token, notify);
  if (v3)
  {
    v4 = SO_LOG_SOConfigurationVersion(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _setStateAndNotify:];
    }
  }

  v5 = notify_post("/com.apple.AppSSO.version");
  if (v5)
  {
    v6 = SO_LOG_SOConfigurationVersion(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _setStateAndNotify:];
    }
  }
}

- (void)initWithMode:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = "NO";
  v5 = "[SOConfigurationVersion initWithMode:]";
  v4 = 136315650;
  if (!a1)
  {
    v3 = "YES";
  }

  v6 = 2080;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1CA238000, log, OS_LOG_TYPE_DEBUG, "%s host = %s on %@", &v4, 0x20u);
}

- (void)initWithMode:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_state
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_setStateAndNotify:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_setStateAndNotify:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end