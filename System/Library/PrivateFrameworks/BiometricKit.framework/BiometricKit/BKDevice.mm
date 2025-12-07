@interface BKDevice
+ (BKDevice)deviceWithDescriptor:(id)descriptor error:(id *)error;
+ (BOOL)biometryAvailabilityInfo:(int64_t *)info fromDeviceInfo:(int64_t)deviceInfo error:(id *)error;
+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure;
+ (BOOL)extendedLockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error;
+ (BOOL)lockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error;
- (BKDeviceDelegate)delegate;
- (BOOL)bioLockoutState:(int64_t *)state forUser:(unsigned int)user error:(id *)error;
- (BOOL)biometryAvailability:(int64_t *)availability forUser:(unsigned int)user error:(id *)error;
- (BOOL)deviceHardwareState:(unint64_t *)state error:(id *)error;
- (BOOL)dropAllUnlockTokensWithError:(id *)error;
- (BOOL)expressModeState:(int64_t *)state forUser:(unsigned int)user error:(id *)error;
- (BOOL)extendedBioLockoutState:(int64_t *)state forUser:(unsigned int)user error:(id *)error;
- (BOOL)forceBioLockoutForAllUsersWithError:(id *)error;
- (BOOL)forceBioLockoutForUser:(unsigned int)user error:(id *)error;
- (BOOL)forceBioLockoutIfLockedForUser:(unsigned int)user error:(id *)error;
- (BOOL)isDelegate;
- (BOOL)removeAllIdentitiesForUser:(unsigned int)user error:(id *)error;
- (BOOL)removeIdentity:(id)identity error:(id *)error;
- (BOOL)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set error:(id *)error;
- (BOOL)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set error:(id *)error;
- (BOOL)updateIdentity:(id)identity error:(id *)error;
- (id)accessoriesWithError:(id *)error;
- (id)accessoryGroupsWithError:(id *)error;
- (id)connectedAccessoriesWithError:(id *)error;
- (id)createEnrollOperationWithError:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
- (id)dispatchQueue;
- (id)effectiveProtectedConfigurationForUser:(unsigned int)user error:(id *)error;
- (id)freeIdentityCountForUser:(unsigned int)user accessoryGroup:(id)group error:(id *)error;
- (id)freeIdentityCountForUser:(unsigned int)user error:(id *)error;
- (id)identitiesDatabaseHashForUser:(unsigned int)user error:(id *)error;
- (id)identitiesDatabaseUUIDForUser:(unsigned int)user error:(id *)error;
- (id)identitiesForUser:(unsigned int)user accessoryGroup:(id)group error:(id *)error;
- (id)identitiesForUser:(unsigned int)user error:(id *)error;
- (id)identitiesWithError:(id *)error;
- (id)identityForUUID:(id)d error:(id *)error;
- (id)lastMatchEventWithError:(id *)error;
- (id)maxIdentityCountWithError:(id *)error;
- (id)protectedConfigurationForUser:(unsigned int)user error:(id *)error;
- (id)systemProtectedConfigurationWithError:(id *)error;
- (void)dealloc;
- (void)removeAllIdentitiesForUser:(unsigned int)user async:(BOOL)async reply:(id)reply;
- (void)removeAllIdentitiesForUser:(unsigned int)user reply:(id)reply;
- (void)removeIdentity:(id)identity async:(BOOL)async reply:(id)reply;
- (void)removeIdentity:(id)identity reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set async:(BOOL)async reply:(id)reply;
- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set reply:(id)reply;
- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set async:(BOOL)async reply:(id)reply;
- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set reply:(id)reply;
- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client;
- (void)updateIdentity:(id)identity async:(BOOL)async reply:(id)reply;
- (void)updateIdentity:(id)identity reply:(id)reply;
@end

@implementation BKDevice

- (BKDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dispatchQueue
{
  queue = self->_queue;
  if (queue)
  {
    v3 = queue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (BOOL)isDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(BiometricKitXPCClient *)self->_xpcClient setDelegate:0];
  v3 = self->_xpcClient;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__BKDevice_dealloc__block_invoke;
  block[3] = &unk_1E8303E78;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  xpcClient = self->_xpcClient;
  self->_xpcClient = 0;

  v7.receiver = self;
  v7.super_class = BKDevice;
  [(BKDevice *)&v7 dealloc];
}

+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure
{
  v15 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136316162;
    v6 = "0";
    v7 = 2048;
    v8 = 0;
    v9 = 2080;
    v10 = &unk_1C82F52EE;
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
    v13 = 1024;
    v14 = 50;
    _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v5, 0x30u);
  }

  return 0;
}

+ (BKDevice)deviceWithDescriptor:(id)descriptor error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  kdebug_trace();
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412290;
    *&v25[4] = descriptorCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceWithDescriptor: %@\n", v25, 0xCu);
  }

  if (!descriptorCopy)
  {
    [BKDevice deviceWithDescriptor:v25 error:?];
    goto LABEL_43;
  }

  v9 = -[BiometricKitXPCClient initWithDeviceType:clientType:]([BiometricKitXPCClient alloc], "initWithDeviceType:clientType:", [descriptorCopy type], 2);
  if (!v9)
  {
    [BKDevice deviceWithDescriptor:v25 error:?];
    goto LABEL_43;
  }

  v10 = v9;
  type = [descriptorCopy type];
  if (type == 2)
  {
    v12 = off_1E8303950;
    if (![BKDevicePearl deviceAvailableWithFailure:0])
    {
      [BKDevice deviceWithDescriptor:v10 error:v25];
      goto LABEL_43;
    }
  }

  else
  {
    if (type != 1)
    {
      if (__osLog)
      {
        v19 = __osLog;
      }

      else
      {
        v19 = v7;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136316162;
        *&v25[4] = "0";
        v26 = 2048;
        v27 = 0;
        v28 = 2080;
        v29 = &unk_1C82F52EE;
        v30 = 2080;
        v31 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
        v32 = 1024;
        v33 = 92;
        _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v25, 0x30u);
      }

      goto LABEL_25;
    }

    v12 = off_1E8303958;
    if (![BKDeviceTouchID deviceAvailableWithFailure:0])
    {
      [BKDevice deviceWithDescriptor:v10 error:v25];
LABEL_43:
      v10 = *v25;
LABEL_25:
      setError(1, error);
      goto LABEL_26;
    }
  }

  v13 = objc_alloc_init(*v12);
  if (!v13)
  {
LABEL_26:
    if (__osLogTrace)
    {
      v20 = __osLogTrace;
    }

    else
    {
      v20 = v7;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      connectionId = [(BiometricKitXPCClient *)v10 connectionId];
      if (error)
      {
        v23 = *error;
      }

      else
      {
        v23 = 0;
      }

      *v25 = 138412802;
      *&v25[4] = 0;
      v26 = 2048;
      v27 = connectionId;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::deviceWithDescriptor: -> %@ (_cid:%lu) %@\n", v25, 0x20u);
    }

    v14 = 0;
    goto LABEL_37;
  }

  v14 = v13;
  [(BiometricKitXPCClient *)v10 setDelegate:v13];
  objc_storeStrong(v14 + 1, v10);
  objc_storeStrong(v14 + 4, descriptor);
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    connectionId2 = [(BiometricKitXPCClient *)v10 connectionId];
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    *v25 = 138412802;
    *&v25[4] = v14;
    v26 = 2048;
    v27 = connectionId2;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceWithDescriptor: -> %@ (_cid:%lu) %@\n", v25, 0x20u);
  }

LABEL_37:
  kdebug_trace();

  return v14;
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = delegateCopy;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::setDelegate: %@\n", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    [(BiometricKitXPCClient *)self->_xpcClient registerDelegate:delegateCopy != 0];
  }

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::setDelegate: -> void\n", &v9, 2u);
  }
}

- (id)createEnrollOperationWithError:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createEnrollOperation\n", &v11, 2u);
  }

  v7 = [[BKEnrollOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createEnrollOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevice createEnrollOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (id)createMatchOperationWithError:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createMatchOperation\n", &v11, 2u);
  }

  v7 = [[BKMatchOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createMatchOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevice createMatchOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (id)createPresenceDetectOperationWithError:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createPresenceDetectOperation\n", &v11, 2u);
  }

  v7 = [(BKOperation *)[BKPresenceDetectOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createPresenceDetectOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevice createPresenceDetectOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (id)protectedConfigurationForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v19 = 67109376;
    *v20 = v5;
    *&v20[4] = 2048;
    *&v20[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::protectedConfigurationForUser: %u (_cid:%lu)\n", &v19, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getProtectedConfigurationForUser:v5];
  if (v11)
  {
    v12 = [[BKUserProtectedConfiguration alloc] initWithDictionary:v11 effective:0];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v7;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        v19 = 138543618;
        *v20 = v13;
        *&v20[8] = 2112;
        *&v20[10] = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::protectedConfigurationForUser: -> %{public}@, error:%@\n", &v19, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice protectedConfigurationForUser:error:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v17 = *error;
    }

    else
    {
      v17 = 0;
    }

    v19 = 138543618;
    *v20 = 0;
    *&v20[8] = 2112;
    *&v20[10] = v17;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKDevice::protectedConfigurationForUser: -> %{public}@, error:%@\n", &v19, 0x16u);
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (id)effectiveProtectedConfigurationForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v19 = 67109376;
    *v20 = v5;
    *&v20[4] = 2048;
    *&v20[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::effectiveProtectedConfigurationForUser: %u (_cid:%lu)\n", &v19, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getProtectedConfigurationForUser:v5];
  if (v11)
  {
    v12 = [[BKUserProtectedConfiguration alloc] initWithDictionary:v11 effective:1];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v7;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        v19 = 138543618;
        *v20 = v13;
        *&v20[8] = 2112;
        *&v20[10] = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::effectiveProtectedConfigurationForUser: -> %{public}@, error:%@\n", &v19, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice effectiveProtectedConfigurationForUser:error:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v17 = *error;
    }

    else
    {
      v17 = 0;
    }

    v19 = 138543618;
    *v20 = 0;
    *&v20[8] = 2112;
    *&v20[10] = v17;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKDevice::effectiveProtectedConfigurationForUser: -> %{public}@, error:%@\n", &v19, 0x16u);
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (id)systemProtectedConfigurationWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v17 = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::systemProtectedConfiguration (_cid:%lu)\n", &v17, 0xCu);
  }

  getSystemProtectedConfiguration = [(BiometricKitXPCClient *)self->_xpcClient getSystemProtectedConfiguration];
  if (getSystemProtectedConfiguration)
  {
    v10 = [[BKSystemProtectedConfiguration alloc] initWithDictionary:getSystemProtectedConfiguration];
    if (v10)
    {
      v11 = v10;
      if (__osLogTrace)
      {
        v12 = __osLogTrace;
      }

      else
      {
        v12 = v5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v13 = *error;
        }

        else
        {
          v13 = 0;
        }

        v17 = 138543618;
        connectionId = v11;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::systemProtectedConfiguration: -> %{public}@, error:%@\n", &v17, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice systemProtectedConfigurationWithError:];
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v15 = *error;
    }

    else
    {
      v15 = 0;
    }

    v17 = 138543618;
    connectionId = 0;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_ERROR, "BKDevice::systemProtectedConfiguration: -> %{public}@, error:%@\n", &v17, 0x16u);
  }

  v11 = 0;
LABEL_26:

  return v11;
}

- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  v10 = *&user;
  v37 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  setCopy = set;
  replyCopy = reply;
  v15 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [setCopy length];
    connectionId = [(BiometricKitXPCClient *)self->_xpcClient connectionId];
    *buf = 138544386;
    *&buf[4] = configurationCopy;
    v29 = 1024;
    v30 = v10;
    v31 = 2048;
    v32 = v18;
    v33 = 1024;
    v34 = asyncCopy;
    v35 = 2048;
    v36 = connectionId;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: %{public}@, %u, NSData(length:%lu), %d (_cid:%lu)\n", buf, 0x2Cu);
  }

  if (configurationCopy)
  {
    if (setCopy)
    {
      v26 = @"BKOptionAuthWithCredentialSet";
      v27 = setCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    }

    else
    {
      v20 = 0;
    }

    xpcClient = self->_xpcClient;
    dictionary = [configurationCopy dictionary];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__BKDevice_setProtectedConfiguration_forUser_credentialSet_async_reply___block_invoke;
    v24[3] = &unk_1E8303EC8;
    v25 = replyCopy;
    [(BiometricKitXPCClient *)xpcClient setProtectedConfiguration:dictionary forUser:v10 withOptions:v20 async:asyncCopy withReply:v24];
  }

  else
  {
    [BKDevice setProtectedConfiguration:forUser:credentialSet:async:reply:];
    v20 = *buf;
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v15;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_DEFAULT, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: -> void\n", buf, 2u);
  }
}

void __72__BKDevice_setProtectedConfiguration_forUser_credentialSet_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109378;
      v7 = 0;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 67109378;
      v7 = 1;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set error:(id *)error
{
  v8 = *&user;
  configurationCopy = configuration;
  setCopy = set;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_error___block_invoke;
  v14[3] = &unk_1E8304308;
  v14[4] = &v21;
  v14[5] = &v15;
  [(BKDevice *)self setProtectedConfiguration:configurationCopy forUser:v8 credentialSet:setCopy async:0 reply:v14];
  if (error)
  {
    *error = v16[5];
  }

  v12 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v12;
}

- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user credentialSet:(id)set reply:(id)reply
{
  v7 = *&user;
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_reply___block_invoke;
  v12[3] = &unk_1E8304358;
  v13 = replyCopy;
  v11 = replyCopy;
  [(BKDevice *)self setProtectedConfiguration:configuration forUser:v7 credentialSet:set async:1 reply:v12];
}

void __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  v42 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  setCopy = set;
  replyCopy = reply;
  v13 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [setCopy length];
    connectionId = [(BiometricKitXPCClient *)self->_xpcClient connectionId];
    *buf = 138544130;
    *&buf[4] = configurationCopy;
    v36 = 2048;
    v37 = v16;
    v38 = 1024;
    v39 = asyncCopy;
    v40 = 2048;
    v41 = connectionId;
    _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: %{public}@, NSData(length:%lu), %d (_cid:%lu)\n", buf, 0x26u);
  }

  if (!configurationCopy)
  {
    [BKDevice setSystemProtectedConfiguration:credentialSet:async:reply:];
LABEL_27:
    v27 = *buf;
    goto LABEL_17;
  }

  unlockTokenMaxLifetime = [configurationCopy unlockTokenMaxLifetime];

  if (unlockTokenMaxLifetime)
  {
    unlockTokenMaxLifetime2 = [configurationCopy unlockTokenMaxLifetime];
    intValue = [unlockTokenMaxLifetime2 intValue];

    if (intValue <= 0)
    {
      [BKDevice setSystemProtectedConfiguration:credentialSet:async:reply:];
      goto LABEL_27;
    }
  }

  bioMatchLifespan = [configurationCopy bioMatchLifespan];

  if (bioMatchLifespan)
  {
    bioMatchLifespan2 = [configurationCopy bioMatchLifespan];
    intValue2 = [bioMatchLifespan2 intValue];

    if (intValue2 <= 0)
    {
      [BKDevice setSystemProtectedConfiguration:credentialSet:async:reply:];
      goto LABEL_27;
    }
  }

  passcodeInputLifespan = [configurationCopy passcodeInputLifespan];

  if (passcodeInputLifespan)
  {
    passcodeInputLifespan2 = [configurationCopy passcodeInputLifespan];
    intValue3 = [passcodeInputLifespan2 intValue];

    if (intValue3 <= 0)
    {
      [BKDevice setSystemProtectedConfiguration:credentialSet:async:reply:];
      goto LABEL_27;
    }
  }

  if (setCopy)
  {
    v33 = @"BKOptionAuthWithCredentialSet";
    v34 = setCopy;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v27 = 0;
  }

  xpcClient = self->_xpcClient;
  dictionary = [configurationCopy dictionary];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__BKDevice_setSystemProtectedConfiguration_credentialSet_async_reply___block_invoke;
  v31[3] = &unk_1E8303EC8;
  v32 = replyCopy;
  [(BiometricKitXPCClient *)xpcClient setSystemProtectedConfiguration:dictionary withOptions:v27 async:asyncCopy withReply:v31];

LABEL_17:
  if (__osLogTrace)
  {
    v30 = __osLogTrace;
  }

  else
  {
    v30 = v13;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v30, OS_LOG_TYPE_DEFAULT, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: -> void\n", buf, 2u);
  }
}

void __70__BKDevice_setSystemProtectedConfiguration_credentialSet_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109378;
      v7 = 0;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 67109378;
      v7 = 1;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set error:(id *)error
{
  configurationCopy = configuration;
  setCopy = set;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_error___block_invoke;
  v12[3] = &unk_1E8304308;
  v12[4] = &v19;
  v12[5] = &v13;
  [(BKDevice *)self setSystemProtectedConfiguration:configurationCopy credentialSet:setCopy async:0 reply:v12];
  if (error)
  {
    *error = v14[5];
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke;
  v10[3] = &unk_1E8304358;
  v11 = replyCopy;
  v9 = replyCopy;
  [(BKDevice *)self setSystemProtectedConfiguration:configuration credentialSet:set async:1 reply:v10];
}

void __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)bioLockoutState:(int64_t *)state forUser:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  v26 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    *buf = 134218496;
    *v23 = state;
    *&v23[8] = 1024;
    *&v23[10] = v6;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::bioLockoutState:forUser: %p, %u (_cid:%lu)\n", buf, 0x1Cu);
  }

  v21 = -1;
  if (state)
  {
    if ([(BiometricKitXPCClient *)self->_xpcClient getBioLockoutState:&v21 forUser:v6])
    {
      [BKDevice bioLockoutState:forUser:error:];
    }

    else
    {
      if ([BKDevice lockoutState:state fromDeviceLockoutState:v21 error:error])
      {
        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v9;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v14 = *state;
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        *buf = 67109634;
        v16 = 1;
        *v23 = 1;
        *&v23[4] = 2048;
        *&v23[6] = v14;
        v24 = 2112;
        connectionId = v15;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::bioLockoutState:forUser: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
        return v16;
      }

      [BKDevice bioLockoutState:forUser:error:];
    }
  }

  else
  {
    [BKDevice bioLockoutState:forUser:error:];
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v19 = *state;
    }

    else
    {
      v19 = 0;
    }

    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    *buf = 67109634;
    *v23 = 0;
    *&v23[4] = 2048;
    *&v23[6] = v19;
    v24 = 2112;
    connectionId = v20;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKDevice::bioLockoutState:forUser: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
  }

  return 0;
}

- (BOOL)extendedBioLockoutState:(int64_t *)state forUser:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  v26 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    *buf = 134218496;
    *v23 = state;
    *&v23[8] = 1024;
    *&v23[10] = v6;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::extendedBioLockoutState:forUser: %p, %u (_cid:%lu)\n", buf, 0x1Cu);
  }

  v21 = -1;
  if (state)
  {
    if ([(BiometricKitXPCClient *)self->_xpcClient getBioLockoutState:&v21 forUser:v6])
    {
      [BKDevice extendedBioLockoutState:forUser:error:];
    }

    else
    {
      if ([BKDevice extendedLockoutState:state fromDeviceLockoutState:v21 error:error])
      {
        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v9;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v14 = *state;
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        *buf = 67109634;
        v16 = 1;
        *v23 = 1;
        *&v23[4] = 2048;
        *&v23[6] = v14;
        v24 = 2112;
        connectionId = v15;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::extendedBioLockoutState:forUser: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
        return v16;
      }

      [BKDevice extendedBioLockoutState:forUser:error:];
    }
  }

  else
  {
    [BKDevice extendedBioLockoutState:forUser:error:];
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v19 = *state;
    }

    else
    {
      v19 = 0;
    }

    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    *buf = 67109634;
    *v23 = 0;
    *&v23[4] = 2048;
    *&v23[6] = v19;
    v24 = 2112;
    connectionId = v20;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKDevice::extendedBioLockoutState:forUser: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
  }

  return 0;
}

- (BOOL)expressModeState:(int64_t *)state forUser:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  v25 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    v21 = 134218496;
    *v22 = state;
    *&v22[8] = 1024;
    *&v22[10] = v6;
    v23 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::expressModeState:forUser: %p, %u (_cid:%lu)\n", &v21, 0x1Cu);
  }

  if (state)
  {
    if (![(BiometricKitXPCClient *)self->_xpcClient getExpressModeState:state forUser:v6])
    {
      if (__osLogTrace)
      {
        v13 = __osLogTrace;
      }

      else
      {
        v13 = v9;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v14 = *state;
      if (error)
      {
        v15 = *error;
      }

      else
      {
        v15 = 0;
      }

      v21 = 67109634;
      v16 = 1;
      *v22 = 1;
      *&v22[4] = 2048;
      *&v22[6] = v14;
      v23 = 2112;
      connectionId = v15;
      _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::expressModeState:forUser: -> %d, state:%ld, error:%@\n", &v21, 0x1Cu);
      return v16;
    }

    [BKDevice expressModeState:forUser:error:];
  }

  else
  {
    [BKDevice expressModeState:forUser:error:];
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v19 = *state;
    }

    else
    {
      v19 = 0;
    }

    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    v21 = 67109634;
    *v22 = 0;
    *&v22[4] = 2048;
    *&v22[6] = v19;
    v23 = 2112;
    connectionId = v20;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKDevice::expressModeState:forUser: -> %d, state:%ld, error:%@\n", &v21, 0x1Cu);
  }

  return 0;
}

- (id)identitiesDatabaseUUIDForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v15 = 67109376;
    *v16 = v5;
    *&v16[4] = 2048;
    *&v16[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesDatabaseUUIDForUser: %u (_cid:%lu)\n", &v15, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getIdentitiesDatabaseUUIDForUser:v5];
  if (v11)
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v15 = 138412546;
      *v16 = v11;
      *&v16[8] = 2112;
      *&v16[10] = v13;
      _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesDatabaseUUIDForUser: -> %@, error:%@\n", &v15, 0x16u);
    }
  }

  else
  {
    [BKDevice identitiesDatabaseUUIDForUser:error error:?];
  }

  return v11;
}

- (id)identitiesDatabaseHashForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v15 = 67109376;
    *v16 = v5;
    *&v16[4] = 2048;
    *&v16[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesDatabaseHashForUser: %u (_cid:%lu)\n", &v15, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getIdentitiesDatabaseHashForUser:v5];
  if (v11)
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v15 = 138412546;
      *v16 = v11;
      *&v16[8] = 2112;
      *&v16[10] = v13;
      _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesDatabaseHashForUser: -> %@, error:%@\n", &v15, 0x16u);
    }
  }

  else
  {
    [BKDevice identitiesDatabaseHashForUser:error error:?];
  }

  return v11;
}

- (BOOL)dropAllUnlockTokensWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v18 = 134217984;
    *v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::dropAllUnlockTokens (_cid:%lu)\n", &v18, 0xCu);
  }

  dropUnlockToken = [(BiometricKitXPCClient *)self->_xpcClient dropUnlockToken];
  if (dropUnlockToken)
  {
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = v5;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136316162;
      *v19 = "err == 0 ";
      *&v19[8] = 2048;
      *v20 = dropUnlockToken;
      *&v20[8] = 2080;
      v21 = &unk_1C82F52EE;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
      v24 = 1024;
      v25 = 551;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v18, 0x30u);
    }

    setErrorWithOSStatus(dropUnlockToken, error);
    if (__osLogTrace)
    {
      v16 = __osLogTrace;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = 0;
      }

      v18 = 67109634;
      *v19 = 0;
      *&v19[4] = 1024;
      *&v19[6] = dropUnlockToken;
      *v20 = 2112;
      *&v20[2] = v17;
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v5;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v11 = *error;
      }

      else
      {
        v11 = 0;
      }

      v18 = 67109634;
      *v19 = 1;
      *&v19[4] = 1024;
      *&v19[6] = 0;
      *v20 = 2112;
      *&v20[2] = v11;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v12, v13, "BKDevice::dropAllUnlockTokens -> %d(err:0x%x), error:%@\n", &v18, 0x18u);
    }
  }

  return dropUnlockToken == 0;
}

- (BOOL)forceBioLockoutForAllUsersWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v18 = 134217984;
    *v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutForAllUsers (_cid:%lu)\n", &v18, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->_xpcClient forceBioLockoutForUser:0xFFFFFFFFLL withOptions:0];
  if (v9)
  {
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = v5;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136316162;
      *v19 = "err == 0 ";
      *&v19[8] = 2048;
      *v20 = v9;
      *&v20[8] = 2080;
      v21 = &unk_1C82F52EE;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
      v24 = 1024;
      v25 = 573;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v18, 0x30u);
    }

    setErrorWithOSStatus(v9, error);
    if (__osLogTrace)
    {
      v16 = __osLogTrace;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = 0;
      }

      v18 = 67109634;
      *v19 = 0;
      *&v19[4] = 1024;
      *&v19[6] = v9;
      *v20 = 2112;
      *&v20[2] = v17;
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v5;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v11 = *error;
      }

      else
      {
        v11 = 0;
      }

      v18 = 67109634;
      *v19 = 1;
      *&v19[4] = 1024;
      *&v19[6] = 0;
      *v20 = 2112;
      *&v20[2] = v11;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v12, v13, "BKDevice::dropAllUnlockTokens -> %d(err:0x%x), error:%@\n", &v18, 0x18u);
    }
  }

  return v9 == 0;
}

- (BOOL)forceBioLockoutForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  *&v22[7] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v19 = 67109376;
    v20 = v5;
    v21 = 2048;
    *v22 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutForUser: %u (_cid:%lu)\n", &v19, 0x12u);
  }

  if (v5 == -1)
  {
    [BKDevice forceBioLockoutForUser:error:];
    v16 = 0;
  }

  else
  {
    v11 = [(BiometricKitXPCClient *)self->_xpcClient forceBioLockoutForUser:v5 withOptions:0];
    if (!v11)
    {
      if (__osLogTrace)
      {
        v12 = __osLogTrace;
      }

      else
      {
        v12 = v7;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v19 = 67109634;
      v14 = 1;
      v20 = 1;
      v21 = 1024;
      *v22 = 0;
      v22[2] = 2112;
      *&v22[3] = v13;
      _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutForUser: -> %d(err:0x%x), error:%@\n", &v19, 0x18u);
      return v14;
    }

    v16 = v11;
    [BKDevice forceBioLockoutForUser:error:];
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v7;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    v19 = 67109634;
    v20 = 0;
    v21 = 1024;
    *v22 = v16;
    v22[2] = 2112;
    *&v22[3] = v18;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "BKDevice::forceBioLockoutForUser: -> %d(err:0x%x), error:%@\n", &v19, 0x18u);
  }

  return 0;
}

- (BOOL)forceBioLockoutIfLockedForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  *&v22[7] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v19 = 67109376;
    v20 = v5;
    v21 = 2048;
    *v22 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutIfLockedForUser: %u (_cid:%lu)\n", &v19, 0x12u);
  }

  if (v5 == -1)
  {
    [BKDevice forceBioLockoutIfLockedForUser:error:];
    v16 = 0;
  }

  else
  {
    v11 = [(BiometricKitXPCClient *)self->_xpcClient forceBioLockoutForUser:v5 withOptions:&unk_1F48015C0];
    if (!v11)
    {
      if (__osLogTrace)
      {
        v12 = __osLogTrace;
      }

      else
      {
        v12 = v7;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v19 = 67109634;
      v14 = 1;
      v20 = 1;
      v21 = 1024;
      *v22 = 0;
      v22[2] = 2112;
      *&v22[3] = v13;
      _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutIfLockedForUser: -> %d(0x%x), error:%@\n", &v19, 0x18u);
      return v14;
    }

    v16 = v11;
    [BKDevice forceBioLockoutIfLockedForUser:error:];
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v7;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    v19 = 67109634;
    v20 = 0;
    v21 = 1024;
    *v22 = v16;
    v22[2] = 2112;
    *&v22[3] = v18;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "BKDevice::forceBioLockoutIfLockedForUser: -> %d(0x%x), error:%@\n", &v19, 0x18u);
  }

  return 0;
}

- (id)identityForUUID:(id)d error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v19 = 138412546;
    v20 = dCopy;
    v21 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::identityForUUID: %@ (_cid:%lu)\n", &v19, 0x16u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getIdentityFromUUID:dCopy];
  if (v11)
  {
    v12 = [[BKIdentity alloc] initWithServerIdentity:v11 device:self];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v7;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        v19 = 138412546;
        v20 = v13;
        v21 = 2112;
        connectionId = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::identityForUUID: -> %@, error:%@\n", &v19, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice identityForUUID:error:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v17 = *error;
    }

    else
    {
      v17 = 0;
    }

    v19 = 138412546;
    v20 = 0;
    v21 = 2112;
    connectionId = v17;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKDevice::identityForUUID: -> %@, error:%@\n", &v19, 0x16u);
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (void)updateIdentity:(id)identity async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  replyCopy = reply;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v13 = v11;
    *buf = 138412802;
    v21 = identityCopy;
    v22 = 1024;
    v23 = asyncCopy;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::updateIdentity:async: %@, %d (_cid:%lu)\n", buf, 0x1Cu);
  }

  v14 = self->_xpcClient;
  serverIdentity = [identityCopy serverIdentity];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__BKDevice_updateIdentity_async_reply___block_invoke;
  v18[3] = &unk_1E8303EC8;
  v16 = replyCopy;
  v19 = v16;
  [(BiometricKitXPCClient *)v14 updateIdentity:serverIdentity withOptions:0 async:asyncCopy withReply:v18];

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v10;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevice::updateIdentity:async: -> void\n", buf, 2u);
  }
}

void __39__BKDevice_updateIdentity_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109378;
      v7 = 0;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::updateIdentity:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 67109378;
      v7 = 1;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::updateIdentity:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)updateIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__BKDevice_updateIdentity_error___block_invoke;
  v9[3] = &unk_1E8304308;
  v9[4] = &v16;
  v9[5] = &v10;
  [(BKDevice *)self updateIdentity:identityCopy async:0 reply:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)updateIdentity:(id)identity reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__BKDevice_updateIdentity_reply___block_invoke;
  v8[3] = &unk_1E8304358;
  v9 = replyCopy;
  v7 = replyCopy;
  [(BKDevice *)self updateIdentity:identity async:1 reply:v8];
}

void __33__BKDevice_updateIdentity_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKDevice_updateIdentity_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeIdentity:(id)identity async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  replyCopy = reply;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v13 = v11;
    *buf = 138412802;
    v21 = identityCopy;
    v22 = 1024;
    v23 = asyncCopy;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::removeIdentity:async: %@, %d (_cid:%lu)\n", buf, 0x1Cu);
  }

  v14 = self->_xpcClient;
  serverIdentity = [identityCopy serverIdentity];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__BKDevice_removeIdentity_async_reply___block_invoke;
  v18[3] = &unk_1E8303EC8;
  v16 = replyCopy;
  v19 = v16;
  [(BiometricKitXPCClient *)v14 removeIdentity:serverIdentity withOptions:0 async:asyncCopy withReply:v18];

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v10;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevice::removeIdentity:async: -> void\n", buf, 2u);
  }
}

void __39__BKDevice_removeIdentity_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109378;
      v7 = 0;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::removeIdentity:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 67109378;
      v7 = 1;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::removeIdentity:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)removeIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__BKDevice_removeIdentity_error___block_invoke;
  v9[3] = &unk_1E8304308;
  v9[4] = &v16;
  v9[5] = &v10;
  [(BKDevice *)self removeIdentity:identityCopy async:0 reply:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)removeIdentity:(id)identity reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__BKDevice_removeIdentity_reply___block_invoke;
  v8[3] = &unk_1E8304358;
  v9 = replyCopy;
  v7 = replyCopy;
  [(BKDevice *)self removeIdentity:identity async:1 reply:v8];
}

void __33__BKDevice_removeIdentity_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKDevice_removeIdentity_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeAllIdentitiesForUser:(unsigned int)user async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  v6 = *&user;
  v24 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    *buf = 67109632;
    v19 = v6;
    v20 = 1024;
    v21 = asyncCopy;
    v22 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::removeAllIdentitiesForUser:async: %u, %d (_cid:%lu)\n", buf, 0x18u);
  }

  v13 = self->_xpcClient;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__BKDevice_removeAllIdentitiesForUser_async_reply___block_invoke;
  v16[3] = &unk_1E8303EC8;
  v14 = replyCopy;
  v17 = v14;
  [(BiometricKitXPCClient *)v13 removeAllIdentitiesForUser:v6 withOptions:0 async:asyncCopy withReply:v16];
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDevice::removeAllIdentitiesForUser:async: -> void\n", buf, 2u);
  }
}

void __51__BKDevice_removeAllIdentitiesForUser_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109378;
      v7 = 0;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::removeAllIdentitiesForUser:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 67109378;
      v7 = 1;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::removeAllIdentitiesForUser:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)removeAllIdentitiesForUser:(unsigned int)user error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__BKDevice_removeAllIdentitiesForUser_error___block_invoke;
  v7[3] = &unk_1E8304308;
  v7[4] = &v14;
  v7[5] = &v8;
  [(BKDevice *)self removeAllIdentitiesForUser:*&user async:0 reply:v7];
  if (error)
  {
    *error = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (void)removeAllIdentitiesForUser:(unsigned int)user reply:(id)reply
{
  v4 = *&user;
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__BKDevice_removeAllIdentitiesForUser_reply___block_invoke;
  v8[3] = &unk_1E8304358;
  v9 = replyCopy;
  v7 = replyCopy;
  [(BKDevice *)self removeAllIdentitiesForUser:v4 async:1 reply:v8];
}

void __45__BKDevice_removeAllIdentitiesForUser_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__BKDevice_removeAllIdentitiesForUser_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (id)identitiesWithError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::identities (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = [(BiometricKitXPCClient *)self->_xpcClient identities:0];
  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[BKIdentity alloc] initWithServerIdentity:*(*(&v26 + 1) + 8 * i) device:self];
          [array addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v12);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v16 = __osLogTrace;
      }

      else
      {
        v16 = v4;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [array count];
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 134218498;
        connectionId = v18;
        v32 = 2114;
        v33 = array;
        v34 = 2112;
        v35 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevice::identities -> %lu: %{public}@, error:%@\n", buf, 0x20u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    [BKDevice identitiesWithError:];
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v4;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = v20;
    v22 = [0 count];
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 134218498;
    connectionId = v22;
    v32 = 2114;
    v33 = 0;
    v34 = 2112;
    v35 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::identities -> %lu: %{public}@, error:%@\n", buf, 0x20u);
  }

  array = 0;
LABEL_31:

  return array;
}

- (id)identitiesForUser:(unsigned int)user error:(id *)error
{
  v4 = *&user;
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v9 = v7;
    *buf = 67109376;
    *v33 = v4;
    *&v33[4] = 2048;
    *&v33[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v9, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesForUser: %u (_cid:%lu)\n", buf, 0x12u);
  }

  v10 = self->_xpcClient;
  v35 = @"BKFilterUserID";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v36[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v13 = [(BiometricKitXPCClient *)v10 identities:v12];

  if (v13)
  {
    v14 = v6;
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[BKIdentity alloc] initWithServerIdentity:*(*(&v28 + 1) + 8 * i) device:self];
          [array addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v18);
    }

    v6 = v14;
    if (array)
    {
      if (__osLogTrace)
      {
        v22 = __osLogTrace;
      }

      else
      {
        v22 = v14;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        *v33 = array;
        *&v33[8] = 2112;
        *&v33[10] = errorCopy;
        _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesForUser: -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    [BKDevice identitiesForUser:error:];
  }

  if (__osLogTrace)
  {
    v24 = __osLogTrace;
  }

  else
  {
    v24 = v6;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    *v33 = 0;
    *&v33[8] = 2112;
    *&v33[10] = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v24, OS_LOG_TYPE_ERROR, "BKDevice::identitiesForUser: -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_31:

  return array;
}

- (id)maxIdentityCountWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v20 = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::maxIdentityCount (_cid:%lu)\n", &v20, 0xCu);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BiometricKitXPCClient getMaxIdentityCount:](self->_xpcClient, "getMaxIdentityCount:", 0)}];
  v10 = v9;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (v9)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v12 = v11;
    integerValue = [v10 integerValue];
    if (error)
    {
      v14 = *error;
    }

    else
    {
      v14 = 0;
    }

    v20 = 134218242;
    connectionId = integerValue;
    v22 = 2112;
    v23 = v14;
    v17 = v12;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v12 = v11;
    integerValue2 = [0 integerValue];
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    v20 = 134218242;
    connectionId = integerValue2;
    v22 = 2112;
    v23 = v16;
    v17 = v12;
    v18 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C82AD000, v17, v18, "BKDevice::maxIdentityCount -> %ld, error:%@\n", &v20, 0x16u);

LABEL_21:

  return v10;
}

- (id)freeIdentityCountForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v24 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    v22 = 67109376;
    *v23 = v5;
    *&v23[4] = 2048;
    *&v23[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::freeIdentityCountForUser: %u (_cid:%lu)\n", &v22, 0x12u);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BiometricKitXPCClient getFreeIdentityCount:forUser:](self->_xpcClient, "getFreeIdentityCount:forUser:", 0, v5)}];
  v12 = v11;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (v11)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v14 = v13;
    integerValue = [v12 integerValue];
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    v22 = 134218242;
    *v23 = integerValue;
    *&v23[8] = 2112;
    *&v23[10] = v16;
    v19 = v14;
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v14 = v13;
    integerValue2 = [0 integerValue];
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    v22 = 134218242;
    *v23 = integerValue2;
    *&v23[8] = 2112;
    *&v23[10] = v18;
    v19 = v14;
    v20 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C82AD000, v19, v20, "BKDevice::freeIdentityCountForUser: -> %ld, error:%@\n", &v22, 0x16u);

LABEL_21:

  return v12;
}

- (BOOL)biometryAvailability:(int64_t *)availability forUser:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  v26 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    *buf = 134218496;
    *v23 = availability;
    *&v23[8] = 1024;
    *&v23[10] = v6;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::biometryAvailability:forUser: %p, %u (_cid:%lu)\n", buf, 0x1Cu);
  }

  v21 = 0;
  if (availability)
  {
    if ([(BiometricKitXPCClient *)self->_xpcClient getBiometryAvailability:&v21 forUser:v6])
    {
      [BKDevice biometryAvailability:forUser:error:];
    }

    else
    {
      if ([BKDevice biometryAvailabilityInfo:availability fromDeviceInfo:v21 error:error])
      {
        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v9;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v14 = *availability;
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        *buf = 67109634;
        v16 = 1;
        *v23 = 1;
        *&v23[4] = 2048;
        *&v23[6] = v14;
        v24 = 2112;
        connectionId = v15;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::biometryAvailability:forUser: -> %d, info:%ld, error:%@\n", buf, 0x1Cu);
        return v16;
      }

      [BKDevice biometryAvailability:forUser:error:];
    }
  }

  else
  {
    [BKDevice biometryAvailability:forUser:error:];
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (availability)
    {
      v19 = *availability;
    }

    else
    {
      v19 = 0;
    }

    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    *buf = 67109634;
    *v23 = 0;
    *&v23[4] = 2048;
    *&v23[6] = v19;
    v24 = 2112;
    connectionId = v20;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKDevice::biometryAvailability:forUser: -> %d, info:%ld, error:%@\n", buf, 0x1Cu);
  }

  return 0;
}

- (id)lastMatchEventWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::lastMatchEvent (_cid:%lu)\n", buf, 0xCu);
  }

  v9 = self->_xpcClient;
  v19 = 0;
  v10 = [(BiometricKitXPCClient *)v9 getLastMatchEvent:&v19];
  v11 = v19;
  if (v10)
  {
    [BKDevice lastMatchEventWithError:];
  }

  else
  {
    v12 = [BKMatchEvent matchEventWithDictionary:v11 device:self error:error];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v5;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        *buf = 138412546;
        connectionId = v13;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::lastMatchEvent -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_16;
    }

    [BKDevice lastMatchEventWithError:];
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v5;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    *buf = 138412546;
    connectionId = 0;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "BKDevice::lastMatchEvent -> %@, error:%@\n", buf, 0x16u);
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (BOOL)deviceHardwareState:(unint64_t *)state error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v21 = state;
    *&v21[8] = 2048;
    *&v21[10] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceHardwareState: %p (_cid:%lu)\n", buf, 0x16u);
  }

  v19 = 0;
  if (state)
  {
    if (![(BiometricKitXPCClient *)self->_xpcClient getDeviceHardwareState:&v19])
    {
      if (v19 < 3)
      {
        *state = v19;
      }

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v7;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v12 = *state;
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      *buf = 67109634;
      v14 = 1;
      *v21 = 1;
      *&v21[4] = 2048;
      *&v21[6] = v12;
      *&v21[14] = 2112;
      *&v21[16] = v13;
      _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceHardwareState: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
      return v14;
    }

    [BKDevice deviceHardwareState:error:];
  }

  else
  {
    [BKDevice deviceHardwareState:error:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v17 = *state;
    }

    else
    {
      v17 = 0;
    }

    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    *buf = 67109634;
    *v21 = 0;
    *&v21[4] = 2048;
    *&v21[6] = v17;
    *&v21[14] = 2112;
    *&v21[16] = v18;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKDevice::deviceHardwareState: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
  }

  return 0;
}

- (id)accessoryGroupsWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::accessoryGroups (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v32 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v32];
  v10 = v32;
  if (v9)
  {
    [BKDevice accessoryGroupsWithError:];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [BKAccessoryGroup alloc];
          group = [v17 group];
          v20 = [(BKAccessoryGroup *)v18 initWithServerAccessoryGroup:group device:self];
          [v11 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    v4 = MEMORY[0x1E69E9C10];
    if (v11)
    {
      if (__osLogTrace)
      {
        v21 = __osLogTrace;
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = v11;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_DEFAULT, "BKDevice::accessoryGroups -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v4;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v35 = 2112;
    v36 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "BKDevice::accessoryGroups -> %@, error:%@\n", buf, 0x16u);
  }

  v11 = 0;
LABEL_31:
  allObjects = [v11 allObjects];

  return allObjects;
}

- (id)accessoriesWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::accessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v28 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v28];
  v10 = v28;
  if (v9)
  {
    [BKDevice accessoriesWithError:];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[BKAccessory alloc] initWithServerAccessory:*(*(&v24 + 1) + 8 * i) device:self];
          [array addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v14);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v18 = __osLogTrace;
      }

      else
      {
        v18 = v4;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = array;
        v31 = 2112;
        v32 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKDevice::accessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v4;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v31 = 2112;
    v32 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDevice::accessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_31:

  return array;
}

- (id)connectedAccessoriesWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::connectedAccessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v29 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v29];
  v10 = v29;
  if (v9)
  {
    [BKDevice connectedAccessoriesWithError:];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if (([v17 flags] & 2) != 0)
          {
            v18 = [[BKAccessory alloc] initWithServerAccessory:v17 device:self];
            [array addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v19 = __osLogTrace;
      }

      else
      {
        v19 = v4;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = array;
        v32 = 2112;
        v33 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKDevice::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_33;
    }
  }

  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v4;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v32 = 2112;
    v33 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_33:

  return array;
}

- (id)identitiesForUser:(unsigned int)user accessoryGroup:(id)group error:(id *)error
{
  v5 = *&user;
  v42 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v8 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v11 = v9;
    *buf = 67109634;
    *v41 = v5;
    *&v41[4] = 2112;
    *&v41[6] = groupCopy;
    *&v41[14] = 2048;
    *&v41[16] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesForUser:accessoryGroup: %u, %@ (_cid:%lu)\n", buf, 0x1Cu);
  }

  selfCopy = self;
  v13 = self->_xpcClient;
  v38 = @"BKFilterUserID";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v39 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v16 = [(BiometricKitXPCClient *)v13 identities:v15];

  if (v16)
  {
    [MEMORY[0x1E695DF70] array];
    v32 = v31 = v16;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          accessory = [v22 accessory];
          group = [accessory group];
          v25 = [groupCopy isEqualToServerAccessoryGroup:group];

          if (v25)
          {
            v26 = [[BKIdentity alloc] initWithServerIdentity:v22 device:selfCopy];
            [v32 addObject:v26];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    v16 = v31;
    v8 = MEMORY[0x1E69E9C10];
    if (v32)
    {
      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        *v41 = v32;
        *&v41[8] = 2112;
        *&v41[10] = errorCopy;
        _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::identitiesForUser:accessoryGroup: -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    [BKDevice identitiesForUser:accessoryGroup:error:];
  }

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    *v41 = 0;
    *&v41[8] = 2112;
    *&v41[10] = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_ERROR, "BKDevice::identitiesForUser:accessoryGroup: -> %@, error:%@\n", buf, 0x16u);
  }

  v32 = 0;
LABEL_31:

  return v32;
}

- (id)freeIdentityCountForUser:(unsigned int)user accessoryGroup:(id)group error:(id *)error
{
  v6 = *&user;
  v30 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v12 = v10;
    *buf = 67109376;
    *v29 = v6;
    *&v29[4] = 2048;
    *&v29[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::freeIdentityCountForUser:accessoryGroup: %u (_cid:%lu)\n", buf, 0x12u);
  }

  v27 = 0;
  v13 = self->_xpcClient;
  serverAccessoryGroup = [groupCopy serverAccessoryGroup];
  v15 = [(BiometricKitXPCClient *)v13 getFreeIdentityCount:&v27 forUser:v6 accessoryGroup:serverAccessoryGroup];

  if (v15)
  {
    [BKDevice freeIdentityCountForUser:accessoryGroup:error:];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
    if (v16)
    {
      v17 = v16;
      if (__osLogTrace)
      {
        v18 = __osLogTrace;
      }

      else
      {
        v18 = v9;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        integerValue = [v17 integerValue];
        if (error)
        {
          v21 = *error;
        }

        else
        {
          v21 = 0;
        }

        *buf = 134218242;
        *v29 = integerValue;
        *&v29[8] = 2112;
        *&v29[10] = v21;
        _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKDevice::freeIdentityCountForUser:accessoryGroup: -> %ld, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v9;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = v22;
    integerValue2 = [0 integerValue];
    if (error)
    {
      v25 = *error;
    }

    else
    {
      v25 = 0;
    }

    *buf = 134218242;
    *v29 = integerValue2;
    *&v29[8] = 2112;
    *&v29[10] = v25;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "BKDevice::freeIdentityCountForUser:accessoryGroup: -> %ld, error:%@\n", buf, 0x16u);
  }

  v17 = 0;
LABEL_26:

  return v17;
}

- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client
{
  v6 = *&message;
  v29 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  if (v6 == 500)
  {
    delegate = [(BKDevice *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [BKMatchEvent matchEventWithDictionary:detailsCopy device:self error:0];
      if (v11)
      {
        if (__osLog)
        {
          v12 = __osLog;
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          result = [v11 result];
          timeStamp = [v11 timeStamp];
          delegate2 = [(BKDevice *)self delegate];
          delegate3 = [(BKDevice *)self delegate];
          *buf = 67109890;
          v22 = result;
          v23 = 2048;
          v24 = timeStamp;
          v25 = 2048;
          v26 = delegate2;
          v27 = 2112;
          v28 = delegate3;
          _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevice::statusMessage:details:client: matchEventOccurred:(result:%d, timeStamp:%llu) => delegate:%p(%@)\n", buf, 0x26u);
        }

        dispatchQueue = [(BKDevice *)self dispatchQueue];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __41__BKDevice_statusMessage_details_client___block_invoke;
        v19[3] = &unk_1E8304208;
        v19[4] = self;
        v20 = v11;
        dispatch_async(dispatchQueue, v19);
      }
    }
  }

  else
  {
    [(BKDevice *)self statusMessage:v6 client:client];
  }
}

void __41__BKDevice_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) matchEventOccurred:*(a1 + 40)];
}

+ (BOOL)lockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error
{
  if (state)
  {
    if ((lockoutState & 0x40) != 0)
    {
      v6 = 6;
    }

    else if ((lockoutState & 0x100) != 0)
    {
      v6 = 7;
    }

    else if ((lockoutState & 0x10) != 0)
    {
      v6 = 2;
    }

    else if ((lockoutState & 2) != 0)
    {
      v6 = 3;
    }

    else if ((lockoutState & 4) != 0)
    {
      v6 = 4;
    }

    else if ((lockoutState & 8) != 0)
    {
      v6 = 1;
    }

    else if ((lockoutState & 0x800) != 0)
    {
      v6 = 8;
    }

    else
    {
      v6 = 5;
    }

    *state = v6;
  }

  else
  {
    +[BKDevice lockoutState:fromDeviceLockoutState:error:];
  }

  return state != 0;
}

+ (BOOL)extendedLockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error
{
  if (state)
  {
    v6 = (lockoutState >> 3) & 8 | (lockoutState >> 2) & 0x40 | (lockoutState >> 4) & 1 | lockoutState & 6;
    *state = v6;
    v7 = v6;
    if ((lockoutState & 8) == 0)
    {
      v7 = v6 | 0x10;
      *state = v6 | 0x10;
      if ((lockoutState & 0x800) != 0)
      {
        v7 = v6 | 0x90;
        *state = v6 | 0x90;
      }
    }

    if ((lockoutState & 0x200) == 0)
    {
      *state = v7 | 0x20;
    }
  }

  else
  {
    +[BKDevice extendedLockoutState:fromDeviceLockoutState:error:];
  }

  return state != 0;
}

+ (BOOL)biometryAvailabilityInfo:(int64_t *)info fromDeviceInfo:(int64_t)deviceInfo error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (info)
  {
    switch(deviceInfo)
    {
      case 3:
        v7 = 3;
        break;
      case 2:
        v7 = 2;
        break;
      case 1:
        result = 1;
        *info = 1;
        return result;
      default:
        if (__osLog)
        {
          v8 = __osLog;
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 136316162;
          v10 = "0";
          v11 = 2048;
          v12 = 0;
          v13 = 2080;
          v14 = &unk_1C82F52EE;
          v15 = 2080;
          v16 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
          v17 = 1024;
          v18 = 1349;
          _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v9, 0x30u);
        }

        setError(1, error);
        return 0;
    }

    *info = v7;
    return 1;
  }

  +[BKDevice biometryAvailabilityInfo:fromDeviceInfo:error:];
  return 0;
}

+ (void)deviceWithDescriptor:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = a1;
}

+ (void)deviceWithDescriptor:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = a1;
}

+ (void)deviceWithDescriptor:(void *)a1 error:.cold.3(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
}

+ (void)deviceWithDescriptor:(void *)a1 error:.cold.4(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
}

- (void)createEnrollOperationWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)createMatchOperationWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)createPresenceDetectOperationWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (id)protectedConfigurationForUser:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)effectiveProtectedConfigurationForUser:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)systemProtectedConfigurationWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (uint64_t)setProtectedConfiguration:forUser:credentialSet:async:reply:.cold.1()
{
  OUTLINED_FUNCTION_15_0();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = [BKErrorHelper errorWithCode:1];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  return v8(v7);
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.1()
{
  OUTLINED_FUNCTION_15_0();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  return v8(v7);
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.2()
{
  OUTLINED_FUNCTION_15_0();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  return v8(v7);
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.3()
{
  OUTLINED_FUNCTION_15_0();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  return v8(v7);
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.4()
{
  OUTLINED_FUNCTION_15_0();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = [BKErrorHelper errorWithCode:1];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  return v8(v7);
}

- (id)bioLockoutState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (void)bioLockoutState:forUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }
}

- (id)bioLockoutState:forUser:error:.cold.3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)extendedBioLockoutState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (void)extendedBioLockoutState:forUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }
}

- (id)extendedBioLockoutState:forUser:error:.cold.3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)expressModeState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)expressModeState:forUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (void)identitiesDatabaseUUIDForUser:(void *)a1 error:.cold.1(void *a1)
{
  setError(1, a1);
  if (OUTLINED_FUNCTION_2(__osLogTrace))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

- (void)identitiesDatabaseHashForUser:(void *)a1 error:.cold.1(void *a1)
{
  setError(1, a1);
  if (OUTLINED_FUNCTION_2(__osLogTrace))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

- (id)forceBioLockoutForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)forceBioLockoutForUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)forceBioLockoutIfLockedForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)forceBioLockoutIfLockedForUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)identityForUUID:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)identitiesWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)identitiesForUser:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)biometryAvailability:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (void)biometryAvailability:forUser:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }
}

- (id)biometryAvailability:forUser:error:.cold.3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)lastMatchEventWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (void)lastMatchEventWithError:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }
}

- (id)deviceHardwareState:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)deviceHardwareState:error:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)accessoryGroupsWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)accessoriesWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)connectedAccessoriesWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)identitiesForUser:accessoryGroup:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (id)freeIdentityCountForUser:accessoryGroup:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

+ (id)lockoutState:fromDeviceLockoutState:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

+ (id)extendedLockoutState:fromDeviceLockoutState:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

+ (id)biometryAvailabilityInfo:fromDeviceInfo:error:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

@end