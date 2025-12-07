@interface CSFSoftLinking
+ (BOOL)isDeviceEnrolledWithDeKOTA:(id *)a;
+ (void)registerForLoggedOutPushNotifications;
+ (void)unregisterForLoggedOutPushNotifications;
@end

@implementation CSFSoftLinking

+ (void)registerForLoggedOutPushNotifications
{
  v2 = _CSFGetLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, OS_LOG_TYPE_DEFAULT, "Registering for logged out push notifications.", v4, 2u);
  }

  v3 = objc_alloc_init(getINDaemonConnectionClass());
  [v3 registerDeviceForLoggedOutiCloudNotificationsWithReason:8 completion:&__block_literal_global_4];
}

void __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _CSFGetLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke_cold_1(v5, v6);
    }
  }

  v7 = _CSFGetLogSystem(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1DF47C000, v7, OS_LOG_TYPE_DEFAULT, "Registering for logged out push was successful? %@", &v9, 0xCu);
  }
}

+ (void)unregisterForLoggedOutPushNotifications
{
  v2 = _CSFGetLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering for logged out push notifications.", v4, 2u);
  }

  v3 = objc_alloc_init(getINDaemonConnectionClass());
  [v3 unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:&__block_literal_global_6];
}

void __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _CSFGetLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke_cold_1(v5, v6);
    }
  }

  v7 = _CSFGetLogSystem(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1DF47C000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering for logged out push was successful? %@", &v9, 0xCu);
  }
}

+ (BOOL)isDeviceEnrolledWithDeKOTA:(id *)a
{
  v11 = *MEMORY[0x1E69E9840];
  MSDKDemoStateClass = getMSDKDemoStateClass();
  sharedInstance = _CSFGetLogSystem(MSDKDemoStateClass);
  v6 = os_log_type_enabled(sharedInstance, OS_LOG_TYPE_DEFAULT);
  if (MSDKDemoStateClass)
  {
    if (v6)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1DF47C000, sharedInstance, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA querying MSDKDemoState", v10, 2u);
    }

    sharedInstance = [getMSDKDemoStateClass() sharedInstance];
    v7 = [sharedInstance isDeviceEnrolledWithDeKOTA:a];
    v8 = _CSFGetLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_1DF47C000, v8, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA %d", v10, 8u);
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1DF47C000, sharedInstance, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA no access to MSDKDemoState. Returning false", v10, 2u);
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

void __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error while registering for logged out push notifications: %@", &v2, 0xCu);
}

void __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error while unregistering for logged out push notifications: %@", &v2, 0xCu);
}

@end