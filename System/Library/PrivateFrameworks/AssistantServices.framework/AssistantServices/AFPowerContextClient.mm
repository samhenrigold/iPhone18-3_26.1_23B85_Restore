@interface AFPowerContextClient
- (AFPowerContextClient)init;
- (BOOL)updateCurrentPowerPolicy:(id)policy withError:(id *)error;
- (id)currentPowerPolicyWithError:(id *)error;
- (unint64_t)currentEncodedPowerPolicyWithError:(id *)error;
- (void)_registerForDarwinNotificationIfNeeded;
@end

@implementation AFPowerContextClient

- (void)_registerForDarwinNotificationIfNeeded
{
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    self->_registrationStatus = notify_register_check("com.apple.siri.power.PowerContextPolicy.updated", &self->_notificationToken);
  }
}

- (id)currentPowerPolicyWithError:(id *)error
{
  v3 = [[AFPowerContextPolicy alloc] initWithEncodedPolicy:[(AFPowerContextClient *)self currentEncodedPowerPolicyWithError:error]];

  return v3;
}

- (unint64_t)currentEncodedPowerPolicyWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  [(AFPowerContextClient *)self _registerForDarwinNotificationIfNeeded];
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    v10 = AFSiriLogContextPower;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error retrieving current power policy - unregistered token", buf, 0xCu);
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = 7100;
      goto LABEL_9;
    }

    return 0;
  }

  state64 = 0;
  state = notify_get_state(self->_notificationToken, &state64);
  v6 = AFSiriLogContextPower;
  if (state)
  {
    v7 = state;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
      v17 = 1024;
      LODWORD(v18) = v7;
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error retrieving current power policy - failed to get state with status code: %u", buf, 0x12u);
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = 7101;
LABEL_9:
      v11 = [v8 initWithDomain:@"kAFAssistantErrorDomain" code:v9 userInfo:0];
      v12 = v11;
      result = 0;
      *error = v11;
      return result;
    }

    return 0;
  }

  if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
    v17 = 2048;
    v18 = state64;
    v19 = 2048;
    v20 = state64;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s PowerContextClient: Retrieved current power policy: %llu -> 0x%llx", buf, 0x20u);
  }

  return state64;
}

- (AFPowerContextClient)init
{
  v5.receiver = self;
  v5.super_class = AFPowerContextClient;
  v2 = [(AFPowerContextClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_registrationStatus = -1;
    [(AFPowerContextClient *)v2 _registerForDarwinNotificationIfNeeded];
  }

  return v3;
}

- (BOOL)updateCurrentPowerPolicy:(id)policy withError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  [(AFPowerContextClient *)self _registerForDarwinNotificationIfNeeded];
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    v13 = AFSiriLogContextPower;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
      _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error updating current power policy - unregistered token", &v16, 0xCu);
      if (!error)
      {
        goto LABEL_16;
      }
    }

    else if (!error)
    {
      goto LABEL_16;
    }

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = 7100;
    goto LABEL_9;
  }

  encodePolicy = [policyCopy encodePolicy];
  v8 = notify_set_state(self->_notificationToken, encodePolicy);
  v9 = AFSiriLogContextPower;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
      v18 = 1024;
      LODWORD(v19) = v10;
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error updating current power policy - failed to set state with status code: %u", &v16, 0x12u);
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = 7102;
LABEL_9:
      v14 = 0;
      *error = [v11 initWithDomain:@"kAFAssistantErrorDomain" code:v12 userInfo:0];
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
    v18 = 2048;
    v19 = encodePolicy;
    v20 = 2048;
    v21 = encodePolicy;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s PowerContextClient: Updated current power policy: %llu -> 0x%llx", &v16, 0x20u);
  }

  notify_post("com.apple.siri.power.PowerContextPolicy.updated");
  v14 = 1;
LABEL_17:

  return v14;
}

@end