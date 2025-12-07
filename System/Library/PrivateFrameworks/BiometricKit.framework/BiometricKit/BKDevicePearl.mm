@interface BKDevicePearl
+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure;
- (BOOL)clearIdentityMigrationFailureForUser:(unsigned int)user error:(id *)error;
- (BOOL)prewarmCamera:(unint64_t)camera error:(id *)error;
- (BOOL)removePeriocularEnrollmentsForUser:(unsigned int)user removeAll:(BOOL)all error:(id *)error;
- (BOOL)removePeriocularEnrollmentsFromIdentity:(id)identity removeAll:(BOOL)all error:(id *)error;
- (BOOL)setTemplate:(id)template forIdentity:(id)identity error:(id *)error;
- (id)createEnrollOperationWithError:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
- (id)periocularMatchStateForUser:(unsigned int)user error:(id *)error;
- (id)periocularMatchStateWithError:(id *)error;
- (id)queryIdentityMigrationFailureForUser:(unsigned int)user error:(id *)error;
- (id)supportsPeriocularEnrollmentWithError:(id *)error;
- (int64_t)deviceEventWithStatus:(unsigned int)status;
- (int64_t)deviceStateWithStatus:(unsigned int)status;
- (int64_t)pearlState;
- (void)removePeriocularEnrollmentsForUser:(unsigned int)user identityUUID:(id)d removeAll:(BOOL)all async:(BOOL)async reply:(id)reply;
- (void)removePeriocularEnrollmentsForUser:(unsigned int)user removeAll:(BOOL)all reply:(id)reply;
- (void)removePeriocularEnrollmentsFromIdentity:(id)identity removeAll:(BOOL)all reply:(id)reply;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKDevicePearl

- (int64_t)pearlState
{
  getDeviceState = [(BiometricKitXPCClient *)self->super._xpcClient getDeviceState];

  return [(BKDevicePearl *)self deviceStateWithStatus:getDeviceState];
}

+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v15 = 134217984;
    *v16 = failure;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::deviceAvailableWithFailure: %p\n", &v15, 0xCu);
  }

  v8 = isEphemeralMultiUser(v6, v7);
  if (v8)
  {
    goto LABEL_20;
  }

  v10 = isFaceIDPlatform(v8, v9);
  if (failure)
  {
    *failure = 0;
  }

  if ((v10 & 1) == 0)
  {
LABEL_20:
    [(BKDevicePearl *)failure deviceAvailableWithFailure:?];
    v13 = v15;
  }

  else
  {
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v4;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (failure)
      {
        v12 = *failure;
      }

      else
      {
        v12 = -1;
      }

      v15 = 67109376;
      v13 = 1;
      v16[0] = 1;
      LOWORD(v16[1]) = 1024;
      *(&v16[1] + 2) = v12;
      _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::deviceAvailableWithFailure: -> %d, failure:%d\n", &v15, 0xEu);
    }

    else
    {
      v13 = 1;
    }
  }

  kdebug_trace();
  return v13;
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createEnrollOperation\n", &v11, 2u);
  }

  v7 = [[BKEnrollPearlOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createEnrollOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createEnrollOperationWithError:];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createMatchOperation\n", &v11, 2u);
  }

  v7 = [(BKMatchOperation *)[BKMatchPearlOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createMatchOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createMatchOperationWithError:];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createPresenceDetectOperation\n", &v11, 2u);
  }

  v7 = [[BKFaceDetectOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createPresenceDetectOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createPresenceDetectOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (id)queryIdentityMigrationFailureForUser:(unsigned int)user error:(id *)error
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
    xpcClient = self->super._xpcClient;
    v10 = v8;
    *buf = 67109376;
    *v20 = v5;
    *&v20[4] = 2048;
    *&v20[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::queryIdentityMigrationFailureForUser: %u (_cid:%lu)\n", buf, 0x12u);
  }

  v18 = 0;
  if ([(BiometricKitXPCClient *)self->super._xpcClient queryIdentityMigrationFailureForUser:v5 failed:&v18 clear:0])
  {
    [BKDevicePearl queryIdentityMigrationFailureForUser:error:];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v18];
    if (v11)
    {
      v12 = v11;
      if (__osLogTrace)
      {
        v13 = __osLogTrace;
      }

      else
      {
        v13 = v7;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v14 = *error;
        }

        else
        {
          v14 = 0;
        }

        *buf = 138412546;
        *v20 = v12;
        *&v20[8] = 2112;
        *&v20[10] = v14;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::queryIdentityMigrationFailureForUser: -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    *buf = 138412546;
    *v20 = 0;
    *&v20[8] = 2112;
    *&v20[10] = v16;
    _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "BKDevicePearl::queryIdentityMigrationFailureForUser: -> %@, error:%@\n", buf, 0x16u);
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (BOOL)clearIdentityMigrationFailureForUser:(unsigned int)user error:(id *)error
{
  v5 = *&user;
  v29 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->super._xpcClient;
    v10 = v8;
    v21 = 67109376;
    *v22 = v5;
    *&v22[4] = 2048;
    *&v22[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::clearIdentityMigrationFailureForUser: %u (_cid:%lu)\n", &v21, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->super._xpcClient queryIdentityMigrationFailureForUser:v5 failed:0 clear:1];
  v12 = v11;
  if (v11)
  {
    if (__osLog)
    {
      v18 = __osLog;
    }

    else
    {
      v18 = v7;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136316162;
      *v22 = "err == 0 ";
      *&v22[8] = 2048;
      *&v22[10] = v12;
      v23 = 2080;
      v24 = &unk_1C82F52EE;
      v25 = 2080;
      v26 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v27 = 1024;
      v28 = 1446;
      _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v21, 0x30u);
    }

    setErrorWithOSStatus(v12, error);
    if (__osLogTrace)
    {
      v19 = __osLogTrace;
    }

    else
    {
      v19 = v7;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v20 = *error;
      }

      else
      {
        v20 = 0;
      }

      v21 = 67109378;
      *v22 = 0;
      *&v22[4] = 2112;
      *&v22[6] = v20;
      v15 = v19;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v7;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v14 = *error;
      }

      else
      {
        v14 = 0;
      }

      v21 = 67109378;
      *v22 = 1;
      *&v22[4] = 2112;
      *&v22[6] = v14;
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v15, v16, "BKDevicePearl::clearIdentityMigrationFailureForUser: -> %d, error:%@\n", &v21, 0x12u);
    }
  }

  return v12 == 0;
}

- (id)supportsPeriocularEnrollmentWithError:(id *)error
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
    xpcClient = self->super._xpcClient;
    v8 = v6;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::supportsPeriocularEnrollment (_cid:%lu)\n", buf, 0xCu);
  }

  v16 = 0;
  if ([(BiometricKitXPCClient *)self->super._xpcClient isPeriocularEnrollmentSupported:&v16])
  {
    [BKDevicePearl supportsPeriocularEnrollmentWithError:];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    if (v9)
    {
      v10 = v9;
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v12 = *error;
        }

        else
        {
          v12 = 0;
        }

        *buf = 138412546;
        connectionId = v10;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::supportsPeriocularEnrollment -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v14 = *error;
    }

    else
    {
      v14 = 0;
    }

    *buf = 138412546;
    connectionId = 0;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "BKDevicePearl::supportsPeriocularEnrollment -> %@, error:%@\n", buf, 0x16u);
  }

  v10 = 0;
LABEL_26:

  return v10;
}

- (id)periocularMatchStateWithError:(id *)error
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
    xpcClient = self->super._xpcClient;
    v8 = v6;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchState (_cid:%lu)\n", buf, 0xCu);
  }

  v16 = 0;
  if ([(BiometricKitXPCClient *)self->super._xpcClient getPeriocularMatchState:0xFFFFFFFFLL state:&v16])
  {
    [BKDevicePearl periocularMatchStateWithError:];
  }

  else
  {
    0x3F = [MEMORY[0x1E696AD98] numberWithInteger:v16 & 0x3F];
    if (0x3F)
    {
      v10 = 0x3F;
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v12 = *error;
        }

        else
        {
          v12 = 0;
        }

        *buf = 138412546;
        connectionId = v10;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchState -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v14 = *error;
    }

    else
    {
      v14 = 0;
    }

    *buf = 138412546;
    connectionId = 0;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "BKDevicePearl::periocularMatchState -> %@, error:%@\n", buf, 0x16u);
  }

  v10 = 0;
LABEL_26:

  return v10;
}

- (id)periocularMatchStateForUser:(unsigned int)user error:(id *)error
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
    xpcClient = self->super._xpcClient;
    v10 = v8;
    *buf = 67109376;
    *v20 = v5;
    *&v20[4] = 2048;
    *&v20[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchStateForUser: %u (_cid:%lu)\n", buf, 0x12u);
  }

  v18 = 0;
  if (v5 == -1)
  {
    [BKDevicePearl periocularMatchStateForUser:error:];
  }

  else if ([(BiometricKitXPCClient *)self->super._xpcClient getPeriocularMatchState:v5 state:&v18])
  {
    [BKDevicePearl periocularMatchStateForUser:error:];
  }

  else
  {
    0x3F = [MEMORY[0x1E696AD98] numberWithInteger:v18 & 0x3F];
    if (0x3F)
    {
      v12 = 0x3F;
      if (__osLogTrace)
      {
        v13 = __osLogTrace;
      }

      else
      {
        v13 = v7;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v14 = *error;
        }

        else
        {
          v14 = 0;
        }

        *buf = 138412546;
        *v20 = v12;
        *&v20[8] = 2112;
        *&v20[10] = v14;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchStateForUser: -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    *buf = 138412546;
    *v20 = 0;
    *&v20[8] = 2112;
    *&v20[10] = v16;
    _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "BKDevicePearl::periocularMatchStateForUser: -> %@, error:%@\n", buf, 0x16u);
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (void)removePeriocularEnrollmentsForUser:(unsigned int)user identityUUID:(id)d removeAll:(BOOL)all async:(BOOL)async reply:(id)reply
{
  asyncCopy = async;
  allCopy = all;
  v10 = *&user;
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v14 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super._xpcClient;
    v17 = v15;
    *buf = 67110146;
    v26 = v10;
    v27 = 2112;
    v28 = dCopy;
    v29 = 1024;
    v30 = allCopy;
    v31 = 1024;
    v32 = asyncCopy;
    v33 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: %u, %@, %d, %d (_cid:%lu)\n", buf, 0x28u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  [dictionary setObject:v19 forKeyedSubscript:@"BKRemovePOTemplatesIdentityUserID"];

  if (dCopy)
  {
    [dictionary setObject:dCopy forKeyedSubscript:@"BKRemovePOTemplatesIdentityUUID"];
  }

  if (allCopy)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"BKRemovePOTemplatesRemoveAll"];
  }

  v20 = self->super._xpcClient;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__BKDevicePearl_removePeriocularEnrollmentsForUser_identityUUID_removeAll_async_reply___block_invoke;
  v23[3] = &unk_1E8303EC8;
  v21 = replyCopy;
  v24 = v21;
  [(BiometricKitXPCClient *)v20 removePeriocularTemplatesWithOptions:dictionary async:asyncCopy withReply:v23];
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
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: -> void\n", buf, 2u);
  }
}

void __87__BKDevicePearl_removePeriocularEnrollmentsForUser_identityUUID_removeAll_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: -> reply(%d, %@)\n", &v6, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: -> reply(%d, %@)\n", &v6, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)removePeriocularEnrollmentsFromIdentity:(id)identity removeAll:(BOOL)all error:(id *)error
{
  allCopy = all;
  identityCopy = identity;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  userID = [identityCopy userID];
  uuid = [identityCopy uuid];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_error___block_invoke;
  v13[3] = &unk_1E8304308;
  v13[4] = &v20;
  v13[5] = &v14;
  [(BKDevicePearl *)self removePeriocularEnrollmentsForUser:userID identityUUID:uuid removeAll:allCopy async:0 reply:v13];

  if (error)
  {
    *error = v15[5];
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v11;
}

- (void)removePeriocularEnrollmentsFromIdentity:(id)identity removeAll:(BOOL)all reply:(id)reply
{
  allCopy = all;
  replyCopy = reply;
  identityCopy = identity;
  userID = [identityCopy userID];
  uuid = [identityCopy uuid];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_reply___block_invoke;
  v13[3] = &unk_1E8304358;
  v14 = replyCopy;
  v12 = replyCopy;
  [(BKDevicePearl *)self removePeriocularEnrollmentsForUser:userID identityUUID:uuid removeAll:allCopy async:1 reply:v13];
}

void __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)removePeriocularEnrollmentsForUser:(unsigned int)user removeAll:(BOOL)all error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_error___block_invoke;
  v8[3] = &unk_1E8304308;
  v8[4] = &v15;
  v8[5] = &v9;
  [(BKDevicePearl *)self removePeriocularEnrollmentsForUser:*&user identityUUID:0 removeAll:all async:0 reply:v8];
  if (error)
  {
    *error = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (void)removePeriocularEnrollmentsForUser:(unsigned int)user removeAll:(BOOL)all reply:(id)reply
{
  allCopy = all;
  v6 = *&user;
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_reply___block_invoke;
  v10[3] = &unk_1E8304358;
  v11 = replyCopy;
  v9 = replyCopy;
  [(BKDevicePearl *)self removePeriocularEnrollmentsForUser:v6 identityUUID:0 removeAll:allCopy async:1 reply:v10];
}

void __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)setTemplate:(id)template forIdentity:(id)identity error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  identityCopy = identity;
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
    v12 = v11;
    v13 = [templateCopy length];
    connectionId = [(BiometricKitXPCClient *)self->super._xpcClient connectionId];
    v26 = 134218496;
    *v27 = v13;
    *&v27[8] = 2048;
    *&v27[10] = identityCopy;
    v28 = 2048;
    v29 = connectionId;
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::setTemplate:forIdentity: NSData(length:%lu), %p (_cid:%lu)\n", &v26, 0x20u);
  }

  xpcClient = self->super._xpcClient;
  serverIdentity = [identityCopy serverIdentity];
  v17 = [(BiometricKitXPCClient *)xpcClient setTemplate:templateCopy forIdentity:serverIdentity];

  if (v17)
  {
    if (__osLog)
    {
      v23 = __osLog;
    }

    else
    {
      v23 = v10;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 136316162;
      *v27 = "err == 0 ";
      *&v27[8] = 2048;
      *&v27[10] = v17;
      v28 = 2080;
      v29 = &unk_1C82F52EE;
      v30 = 2080;
      v31 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v32 = 1024;
      v33 = 1641;
      _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v26, 0x30u);
    }

    setErrorWithOSStatus(v17, error);
    if (__osLogTrace)
    {
      v24 = __osLogTrace;
    }

    else
    {
      v24 = v10;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v25 = *error;
      }

      else
      {
        v25 = 0;
      }

      v26 = 67109378;
      *v27 = 0;
      *&v27[4] = 2112;
      *&v27[6] = v25;
      v20 = v24;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v10;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v26 = 67109378;
      *v27 = 1;
      *&v27[4] = 2112;
      *&v27[6] = v19;
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v20, v21, "BKDevicePearl::setTemplate:forIdentity: -> %d, error:%@\n", &v26, 0x12u);
    }
  }

  return v17 == 0;
}

- (BOOL)prewarmCamera:(unint64_t)camera error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->super._xpcClient;
    v10 = v8;
    v18 = 134218240;
    *v19 = camera;
    *&v19[8] = 2048;
    *&v19[10] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::prewarmCamera: %lu (_cid:%lu)\n", &v18, 0x16u);
  }

  if (camera == 1)
  {
    if (![(BiometricKitXPCClient *)self->super._xpcClient prewarmCamera:2])
    {
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

      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v18 = 67109378;
      v16 = 1;
      *v19 = 1;
      *&v19[4] = 2112;
      *&v19[6] = v12;
      _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::prewarmCamera: -> %d, error:%@\n", &v18, 0x12u);
      return v16;
    }

    [BKDevicePearl prewarmCamera:error:];
  }

  else
  {
    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v7;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136316162;
      *v19 = "0";
      *&v19[8] = 2048;
      *&v19[10] = 0;
      v20 = 2080;
      v21 = &unk_1C82F52EE;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v24 = 1024;
      v25 = 1666;
      _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v18, 0x30u);
    }

    setError(1, error);
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
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

    v18 = 67109378;
    *v19 = 0;
    *&v19[4] = 2112;
    *&v19[6] = v15;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_ERROR, "BKDevicePearl::prewarmCamera: -> %d, error:%@\n", &v18, 0x12u);
  }

  return 0;
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  v5 = *&message;
  v28 = *MEMORY[0x1E69E9840];
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
    *buf = 67109376;
    v25 = v5;
    v26 = 2048;
    clientCopy = client;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::statusMessage:client: %u, %llu\n", buf, 0x12u);
  }

  v9 = v5 + 13;
  if ((v5 - 1011) > 0x3B)
  {
LABEL_12:
    if ((v5 - 1001) >= 0xA)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (((1 << v9) & 0x8800000000007C0) == 0)
  {
    if (((1 << v9) & 0x1F) != 0)
    {
      v10 = [(BKDevicePearl *)self deviceStateWithStatus:v5];
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = v10;
      delegate = [(BKDevice *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      dispatchQueue = [(BKDevice *)self dispatchQueue];
      v15 = dispatchQueue;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __38__BKDevicePearl_statusMessage_client___block_invoke_2;
      v22[3] = &unk_1E8303D98;
      v22[4] = self;
      v22[5] = v11;
      v16 = v22;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_13:
  v17 = [(BKDevicePearl *)self deviceEventWithStatus:v5];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  delegate2 = [(BKDevice *)self delegate];
  v20 = objc_opt_respondsToSelector();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  dispatchQueue = [(BKDevice *)self dispatchQueue];
  v15 = dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__BKDevicePearl_statusMessage_client___block_invoke;
  block[3] = &unk_1E8303D98;
  block[4] = self;
  block[5] = v18;
  v16 = block;
LABEL_16:
  dispatch_async(dispatchQueue, v16);

LABEL_17:
  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v7;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::statusMessage:client: -> void\n", buf, 2u);
  }
}

void __38__BKDevicePearl_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) pearlEventOccurred:*(a1 + 40)];
}

void __38__BKDevicePearl_statusMessage_client___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) pearlStateChanged:*(a1 + 40)];
}

- (int64_t)deviceEventWithStatus:(unsigned int)status
{
  result = 0;
  switch(status)
  {
    case 0x3E9u:
      result = 1;
      break;
    case 0x3EAu:
      result = 2;
      break;
    case 0x3EBu:
      result = 3;
      break;
    case 0x3ECu:
      result = 4;
      break;
    case 0x3EDu:
      result = 5;
      break;
    case 0x3EEu:
      result = 6;
      break;
    case 0x3EFu:
      result = 7;
      break;
    case 0x3F0u:
      result = 8;
      break;
    case 0x3F1u:
      result = 9;
      break;
    case 0x3F2u:
      result = 10;
      break;
    case 0x3F3u:
    case 0x3F4u:
    case 0x3F5u:
    case 0x3F6u:
    case 0x3F7u:
    case 0x3F8u:
      return result;
    case 0x3F9u:
      result = 13;
      break;
    case 0x3FAu:
      result = 14;
      break;
    case 0x3FBu:
      result = 15;
      break;
    case 0x3FCu:
      result = 16;
      break;
    case 0x3FDu:
      result = 17;
      break;
    default:
      v4 = 11;
      if (status != 1070)
      {
        v4 = 0;
      }

      if (status == 1066)
      {
        result = 12;
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

- (int64_t)deviceStateWithStatus:(unsigned int)status
{
  v3 = status - 1011;
  if (v3 < 5)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (void)deviceAvailableWithFailure:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  if (OUTLINED_FUNCTION_2_1(__osLogTrace))
  {
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0xEu);
  }

  *a2 = 0;
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

- (id)queryIdentityMigrationFailureForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)supportsPeriocularEnrollmentWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)periocularMatchStateWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)periocularMatchStateForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

- (id)periocularMatchStateForUser:error:.cold.2()
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

- (id)prewarmCamera:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  return OUTLINED_FUNCTION_14_0();
}

@end