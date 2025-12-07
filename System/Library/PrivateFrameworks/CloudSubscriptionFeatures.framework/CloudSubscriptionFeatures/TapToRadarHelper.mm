@interface TapToRadarHelper
+ (id)dispatchQueue;
+ (void)tapToRadar:(id)radar withMessage:(id)message withReason:(id)reason;
@end

@implementation TapToRadarHelper

+ (id)dispatchQueue
{
  if (dispatchQueue_onceToken_0 != -1)
  {
    +[TapToRadarHelper dispatchQueue];
  }

  v3 = dispatchQueue_queue_0;

  return v3;
}

uint64_t __33__TapToRadarHelper_dispatchQueue__block_invoke()
{
  dispatchQueue_queue_0 = dispatch_queue_create("com.apple.csf.availability", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)tapToRadar:(id)radar withMessage:(id)message withReason:(id)reason
{
  radarCopy = radar;
  messageCopy = message;
  reasonCopy = reason;
  v11 = _CSFGetLogSystem(reasonCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF47C000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to post a new TTR, dispatching.", buf, 2u);
  }

  dispatchQueue = [self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke;
  block[3] = &unk_1E86BB378;
  v17 = radarCopy;
  v18 = messageCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = messageCopy;
  v15 = radarCopy;
  dispatch_async(dispatchQueue, block);
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = _CSFGetLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_cold_1(v2);
  }

  v3 = [(objc_class *)getTapToRadarServiceClass() shared];
  v4 = [v3 serviceSettings];

  v6 = _CSFGetLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "Got settings, checking if we should post a new TTR.", &v25, 2u);
  }

  if ([v4 authorizationStatus])
  {
    if ([v4 authorizationStatus] == 1)
    {
      v7 = _CSFGetLogSystem(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        v8 = "User denied authorization for process to file TTR. Will not prompt user.";
LABEL_14:
        v9 = v7;
        v10 = 2;
LABEL_15:
        _os_log_impl(&dword_1DF47C000, v9, OS_LOG_TYPE_DEFAULT, v8, &v25, v10);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if ([v4 authorizationStatus] == 2)
    {
      v7 = _CSFGetLogSystem(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        v8 = "Process is rate limited for sending TTRs. Will not prompt user.";
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    v11 = [v4 authorizationStatus];
    v7 = _CSFGetLogSystem(v11);
    v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v11 != 3)
    {
      if (!v12)
      {
        goto LABEL_16;
      }

      v21 = [v4 authorizationStatus];
      v25 = 134217984;
      v26 = v21;
      v8 = "Process has unknown authorization to display prompt %zd, will not post prompt.";
      v9 = v7;
      v10 = 12;
      goto LABEL_15;
    }

    if (v12)
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1DF47C000, v7, OS_LOG_TYPE_DEFAULT, "Process is fully authorized to display TTR.", &v25, 2u);
    }

    v13 = [v4 rateLimitResetDate];
    v7 = v13;
    if (v13)
    {
      v14 = [MEMORY[0x1E695DF00] now];
      v15 = [v7 compare:v14];

      v17 = _CSFGetLogSystem(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v15 != -1)
      {
        if (!v18)
        {
LABEL_33:

          goto LABEL_16;
        }

        v19 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v20 = [v19 stringFromDate:v7];
        v25 = 138412290;
        v26 = v20;
        _os_log_impl(&dword_1DF47C000, v17, OS_LOG_TYPE_DEFAULT, "Device is being rate limited and is not eligible for another TTR prompt. will be shown %@", &v25, 0xCu);

LABEL_32:
        goto LABEL_33;
      }

      if (v18)
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1DF47C000, v17, OS_LOG_TYPE_DEFAULT, "Device is not being rate limited and is eligible for another TTR prompt.", &v25, 2u);
      }
    }

    v22 = _CSFGetLogSystem(v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1DF47C000, v22, OS_LOG_TYPE_DEFAULT, "Posting TTR.", &v25, 2u);
    }

    v17 = objc_alloc_init(getRadarDraftClass());
    [v17 setTitle:a1[4]];
    [v17 setProblemDescription:a1[5]];
    [v17 setClassification:6];
    [v17 setReproducibility:6];
    v23 = [v17 setIsUserInitiated:0];
    v24 = [objc_alloc(getRadarComponentClass(v23)) initWithName:@"iCloudSubscription Client" version:@"Greymatter" identifier:1656574];
    [v17 setComponent:v24];

    v20 = [(objc_class *)getTapToRadarServiceClass() shared];
    [v20 createDraft:v17 forProcessNamed:@"iCloud daemon" withDisplayReason:a1[6] completionHandler:&__block_literal_global_19_0];
    goto LABEL_32;
  }

  v7 = _CSFGetLogSystem(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    v8 = "Process is not authorized for TTR. Will not prompt user.";
    goto LABEL_14;
  }

LABEL_16:
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CSFGetLogSystem(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "Completed posting TTR", v5, 2u);
  }
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error posting TTR: %@", &v2, 0xCu);
}

@end