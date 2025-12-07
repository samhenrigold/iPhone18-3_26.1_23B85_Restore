@interface ARRecon3DLogger
- (ARRecon3DLogger)initWithInternalLogging:(BOOL)logging;
- (void)dealloc;
@end

@implementation ARRecon3DLogger

- (ARRecon3DLogger)initWithInternalLogging:(BOOL)logging
{
  loggingCopy = logging;
  v48 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = ARRecon3DLogger;
  v4 = [(ARRecon3DLogger *)&v45 init];
  if (!v4)
  {
    goto LABEL_41;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __43__ARRecon3DLogger_initWithInternalLogging___block_invoke;
  v39 = &unk_1E817C268;
  v40 = &v41;
  v5 = CV3DReconLoggingHandleCreate();
  v6 = v42[3];
  if (!v6)
  {
    v11 = v5;
    v12 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.api"];
    v13 = CV3DReconLoggingHandleEnable();
    if (v13)
    {
      v14 = _ARLogGeneral_51(v13);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      *buf = 67109120;
      LODWORD(v47) = v12;
      v15 = "Recon3D API logging level enabled: %i";
      v16 = v14;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 8;
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_56 != -1)
      {
        [ARRecon3DLogger initWithInternalLogging:];
      }

      v20 = ARShouldUseLogTypeError_internalOSVersion_56;
      v21 = _ARLogGeneral_51(v13);
      v14 = v21;
      if (v20 == 1)
      {
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v22 = v42[3];
        *buf = 138412290;
        v47 = v22;
        v15 = "Error enabling Recon3D API logging: %@";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }

        v23 = v42[3];
        *buf = 138412290;
        v47 = v23;
        v15 = "Error: Error enabling Recon3D API logging: %@";
        v16 = v14;
        v17 = OS_LOG_TYPE_INFO;
      }

      v18 = 12;
    }

    _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, v18);
LABEL_24:

    if (!loggingCopy)
    {
LABEL_38:
      v4->_loggingHandle = v11;
      goto LABEL_39;
    }

    v24 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.internal"];
    v25 = CV3DReconLoggingHandleEnableInternal();
    if (v25)
    {
      v26 = _ARLogGeneral_51(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v47) = v24;
        v27 = "Recon3D internal logging level enabled: %i";
        v28 = v26;
        v29 = OS_LOG_TYPE_INFO;
        v30 = 8;
LABEL_36:
        _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, v30);
      }

LABEL_37:

      goto LABEL_38;
    }

    if (ARShouldUseLogTypeError_onceToken_56 != -1)
    {
      [ARRecon3DLogger initWithInternalLogging:];
    }

    v31 = ARShouldUseLogTypeError_internalOSVersion_56;
    v32 = _ARLogGeneral_51(v25);
    v26 = v32;
    if (v31 == 1)
    {
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v33 = v42[3];
      *buf = 138412290;
      v47 = v33;
      v27 = "Error enabling Recon3D internal logging: %@";
      v28 = v26;
      v29 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      v34 = v42[3];
      *buf = 138412290;
      v47 = v34;
      v27 = "Error: Error enabling Recon3D internal logging: %@";
      v28 = v26;
      v29 = OS_LOG_TYPE_INFO;
    }

    v30 = 12;
    goto LABEL_36;
  }

  if (ARShouldUseLogTypeError_onceToken_56 != -1)
  {
    [ARRecon3DLogger initWithInternalLogging:];
  }

  v7 = ARShouldUseLogTypeError_internalOSVersion_56;
  v8 = _ARLogGeneral_51(v5);
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v42[3];
      *buf = 138412290;
      v47 = v10;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "Error creating recon logging handle: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = v42[3];
    *buf = 138412290;
    v47 = v19;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: Error creating recon logging handle: %@", buf, 0xCu);
  }

LABEL_39:
  v38(v37);
  _Block_object_dispose(&v41, 8);
  if (!v6)
  {
LABEL_41:
    v35 = v4;
    goto LABEL_42;
  }

  v35 = 0;
LABEL_42:

  return v35;
}

void __43__ARRecon3DLogger_initWithInternalLogging___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)dealloc
{
  CV3DReconLoggingHandleRelease();
  v3.receiver = self;
  v3.super_class = ARRecon3DLogger;
  [(ARRecon3DLogger *)&v3 dealloc];
}

@end