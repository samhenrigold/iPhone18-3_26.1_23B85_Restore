@interface BKDeviceTouchID
+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure;
- (BOOL)enableBackgroundFingerDetection:(BOOL)detection error:(id *)error;
- (id)createEnrollOperationWithError:(id *)error;
- (id)createExtendEnrollTouchIDOperationWithError:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
@end

@implementation BKDeviceTouchID

+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure
{
  *&v15[5] = *MEMORY[0x1E69E9840];
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
    *buf = 134217984;
    *v15 = failure;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::deviceAvailableWithFailure: %p\n", buf, 0xCu);
  }

  v13 = 0;
  if (isEphemeralMultiUser(v6, v7))
  {
    goto LABEL_20;
  }

  v8 = isTouchIDPlatformWithFailure(&v13);
  if (failure)
  {
    *failure = v13;
  }

  if ((v8 & 1) == 0)
  {
LABEL_20:
    [(BKDeviceTouchID *)failure deviceAvailableWithFailure:buf];
    v11 = buf[0];
  }

  else
  {
    if (__osLogTrace)
    {
      v9 = __osLogTrace;
    }

    else
    {
      v9 = v4;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (failure)
      {
        v10 = *failure;
      }

      else
      {
        v10 = -1;
      }

      *buf = 67109376;
      v11 = 1;
      v15[0] = 1;
      LOWORD(v15[1]) = 1024;
      *(&v15[1] + 2) = v10;
      _os_log_impl(&dword_1C82AD000, v9, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::deviceAvailableWithFailure: -> %d, failure:%d\n", buf, 0xEu);
    }

    else
    {
      v11 = 1;
    }
  }

  kdebug_trace();
  return v11;
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createEnrollOperation\n", &v11, 2u);
  }

  v7 = [[BKEnrollTouchIDOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createEnrollOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createEnrollOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (id)createExtendEnrollTouchIDOperationWithError:(id *)error
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createExtendEnrollTouchIDOperation\n", &v11, 2u);
  }

  v7 = [(BKOperation *)[BKExtendEnrollTouchIDOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createExtendEnrollTouchIDOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createExtendEnrollTouchIDOperationWithError:];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createMatchOperation\n", &v11, 2u);
  }

  v7 = [(BKMatchOperation *)[BKMatchTouchIDOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createMatchOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createMatchOperationWithError:];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createPresenceDetectOperation\n", &v11, 2u);
  }

  v7 = [(BKOperation *)[BKFingerDetectOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createPresenceDetectOperation -> %@, error:%@\n", &v11, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createPresenceDetectOperationWithError:];
  }

  kdebug_trace();

  return v7;
}

- (BOOL)enableBackgroundFingerDetection:(BOOL)detection error:(id *)error
{
  detectionCopy = detection;
  v27 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->super._xpcClient;
    v10 = v8;
    v20 = 67109376;
    *v21 = detectionCopy;
    *&v21[4] = 2048;
    *&v21[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::enableBackgroundFingerDetection: %d (_cid:%lu)\n", &v20, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->super._xpcClient enableBackgroundFdet:detectionCopy];
  if (v11)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v11;
      *&v21[18] = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDeviceTouchID.m";
      v25 = 1024;
      v26 = 505;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v11, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v7;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109634;
      *v21 = 0;
      *&v21[4] = 1024;
      *&v21[6] = v11;
      *&v21[10] = 2112;
      *&v21[12] = v19;
      v14 = v18;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
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

      v20 = 67109634;
      *v21 = 1;
      *&v21[4] = 1024;
      *&v21[6] = 0;
      *&v21[10] = 2112;
      *&v21[12] = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v14, v15, "BKDeviceTouchID::enableBackgroundFingerDetection: -> %d(err:0x%x), error:%@\n", &v20, 0x18u);
    }
  }

  kdebug_trace();
  return v11 == 0;
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

- (void)createExtendEnrollTouchIDOperationWithError:.cold.1()
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

@end