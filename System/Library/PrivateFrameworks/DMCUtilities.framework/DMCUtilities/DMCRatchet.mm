@interface DMCRatchet
+ (BOOL)isEnabled;
+ (id)_ratchetCalloutForOperation:(unint64_t)operation;
+ (id)_ratchetCountdownForOperation:(unint64_t)operation;
+ (id)_ratchetReasonForOperation:(unint64_t)operation;
+ (id)_ratchetStrictTextForOperation:(unint64_t)operation;
+ (id)_ratchetTextForOperation:(unint64_t)operation;
+ (id)_ratchetTitleForOperation:(unint64_t)operation;
+ (unint64_t)_responseFromRatchetResult:(id)result error:(id)error;
+ (void)isAuthorizedForOperation:(unint64_t)operation completion:(id)completion;
@end

@implementation DMCRatchet

+ (BOOL)isEnabled
{
  if (getLARatchetManagerClass())
  {
    sharedInstance = [getLARatchetManagerClass() sharedInstance];
    isFeatureEnabled = [sharedInstance isFeatureEnabled];

    return isFeatureEnabled;
  }

  else
  {
    v6 = *DMCLogObjects(0, v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "LARatchetManager is unavailable", v7, 2u);
    }

    return 0;
  }
}

+ (void)isAuthorizedForOperation:(unint64_t)operation completion:(id)completion
{
  v30[9] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  isEnabled = [self isEnabled];
  if ((isEnabled & 1) == 0)
  {
    v20 = *DMCLogObjects(isEnabled, v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "DMCRatchet is authorized because LARatchet is disabled";
      v22 = v20;
      v23 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_1B1630000, v22, v23, v21, buf, 2u);
    }

LABEL_9:
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

  if (!getLARatchetClass())
  {
    v24 = *DMCLogObjects(0, v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "DMCRatchet is authorized because LARatchet is unavailable";
      v22 = v24;
      v23 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v25 = [objc_alloc(getLARatchetClass()) initWithIdentifier:@"com.apple.devicemanagementclient.DMCRatchet"];
  v10 = MEMORY[0x1E695DF90];
  v29[0] = &unk_1F28682C0;
  v11 = [self _ratchetTitleForOperation:operation];
  v30[0] = v11;
  v29[1] = &unk_1F28682D8;
  v12 = [self _ratchetTextForOperation:operation];
  v30[1] = v12;
  v29[2] = &unk_1F28682F0;
  v13 = [self _ratchetStrictTextForOperation:operation];
  v30[2] = v13;
  v29[3] = &unk_1F2868308;
  v14 = [self _ratchetCountdownForOperation:operation];
  v30[3] = v14;
  v29[4] = &unk_1F2868320;
  v15 = [self _ratchetReasonForOperation:operation];
  v30[4] = v15;
  v29[5] = &unk_1F2868338;
  v16 = [self _ratchetCalloutForOperation:operation];
  v30[5] = v16;
  v29[6] = &unk_1F2868350;
  v17 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
  v30[6] = v17;
  v30[7] = MEMORY[0x1E695E118];
  v29[7] = &unk_1F2868368;
  v29[8] = &unk_1F2868380;
  v30[8] = MEMORY[0x1E695E110];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:9];
  v19 = [v10 dictionaryWithDictionary:v18];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__DMCRatchet_isAuthorizedForOperation_completion___block_invoke;
  v26[3] = &unk_1E7ADD178;
  v27 = completionCopy;
  [v25 armWithOptions:v19 completion:v26];

LABEL_10:
}

uint64_t __50__DMCRatchet_isAuthorizedForOperation_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [DMCRatchet _responseFromRatchetResult:a2 error:a3];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

+ (unint64_t)_responseFromRatchetResult:(id)result error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  v7 = [resultCopy objectForKeyedSubscript:&unk_1F2868338];

  if (!v7)
  {
    if (!errorCopy)
    {
      v16 = *DMCLogObjects(v8, v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = resultCopy;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with result: %{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if ([errorCopy code] == 4)
    {
      v15 = *DMCLogObjects(4, v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v11 = "DMCRatchet is authorized because passcode is not set";
LABEL_13:
      v12 = v15;
      v13 = 2;
      goto LABEL_14;
    }

    if ([errorCopy code] == 5)
    {
      v15 = *DMCLogObjects(5, v17);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v11 = "DMCRatchet is authorized because biometry is not enrolled";
      goto LABEL_13;
    }

    code = [errorCopy code];
    if (code == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      underlyingErrors = [errorCopy underlyingErrors];
      v23 = [underlyingErrors countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(underlyingErrors);
            }

            if ([*(*(&v37 + 1) + 8 * i) code] == -2)
            {
              v36 = *DMCLogObjects(-2, v27);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_DEFAULT, "DMCRatchet canceled by user", buf, 2u);
              }

              v18 = 2;
              goto LABEL_16;
            }
          }

          v24 = [underlyingErrors countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v30 = *DMCLogObjects(v28, v29);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v31 = v30;
      userInfo = [errorCopy userInfo];
      *buf = 138543362;
      v42 = userInfo;
      _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with generic error user info: %{public}@", buf, 0xCu);
    }

    else
    {
      v33 = *DMCLogObjects(code, v21);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:
        v18 = 1;
        goto LABEL_16;
      }

      v31 = v33;
      code2 = [errorCopy code];
      userInfo2 = [errorCopy userInfo];
      *buf = 134349314;
      v42 = code2;
      v43 = 2114;
      v44 = userInfo2;
      _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with error code %{public}ld and user info: %{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v10 = *DMCLogObjects(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = resultCopy;
    v11 = "DMCRatchet is authorized with result: %{public}@";
    v12 = v10;
    v13 = 12;
LABEL_14:
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

+ (id)_ratchetTitleForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_TITLE_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_TITLE_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetTextForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_TEXT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_TEXT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetStrictTextForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_STRICT_TEXT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_STRICT_TEXT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetCountdownForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_COUNTDOWN_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_COUNTDOWN_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetReasonForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_REASON_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_REASON_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetCalloutForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_CALLOUT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_CALLOUT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

@end