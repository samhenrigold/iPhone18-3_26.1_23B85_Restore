@interface AFSiriActivationHandlerCoreSpeechDaemon
- (BOOL)handleContext:(id)context completion:(id)completion;
@end

@implementation AFSiriActivationHandlerCoreSpeechDaemon

- (BOOL)handleContext:(id)context completion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v55 = 2112;
    v56 = contextCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  source = [contextCopy source];
  event = [contextCopy event];
  v10 = event;
  if (source == 5)
  {
    deviceID = [contextCopy deviceID];
    if (deviceID)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        sharedNotifier = [getCSActivationEventNotifierClass() sharedNotifier];
        CSActivationEventClass = getCSActivationEventClass();
        userInfo = [contextCopy userInfo];
        v25 = [CSActivationEventClass jarvisVoiceTriggerEvent:deviceID activationInfo:userInfo hostTime:{objc_msgSend(contextCopy, "timestamp")}];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_7;
        v41[3] = &unk_1E7345A40;
        v42 = contextCopy;
        v43 = completionCopy;
        [sharedNotifier notifyActivationEvent:v25 completion:v41];

        v21 = v42;
        goto LABEL_14;
      }

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

LABEL_20:
    *buf = 136315394;
    v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v55 = 2112;
    v56 = contextCopy;
    v29 = "%s No device ID is provided in context %@.";
LABEL_30:
    _os_log_error_impl(&dword_1912FE000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
    goto LABEL_31;
  }

  if (source == 4)
  {
    deviceID = [contextCopy deviceID];
    if (deviceID)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        sharedNotifier2 = [getCSActivationEventNotifierClass() sharedNotifier];
        v18 = getCSActivationEventClass();
        userInfo2 = [contextCopy userInfo];
        v20 = [v18 remoteMicVoiceTriggerEvent:deviceID activationInfo:userInfo2 hostTime:{objc_msgSend(contextCopy, "timestamp")}];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_3;
        v47[3] = &unk_1E7345A40;
        v48 = contextCopy;
        v49 = completionCopy;
        [sharedNotifier2 notifyActivationEvent:v20 completion:v47];

        v21 = v48;
LABEL_14:

        v15 = 1;
LABEL_32:

        goto LABEL_33;
      }

      if (v10 == 6)
      {
        userInfo3 = [contextCopy userInfo];
        v31 = [userInfo3 objectForKey:@"score"];

        v15 = v31 != 0;
        if (v31)
        {
          sharedNotifier3 = [getCSActivationEventNotifierClass() sharedNotifier];
          v33 = getCSActivationEventClass();
          [v31 floatValue];
          v35 = v34;
          timestamp = [contextCopy timestamp];
          LODWORD(v37) = v35;
          v38 = [v33 remoteMicVADEvent:deviceID vadScore:timestamp hostTime:v37];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_2;
          v44[3] = &unk_1E7345A40;
          v45 = contextCopy;
          v46 = completionCopy;
          [sharedNotifier3 notifyActivationEvent:v38 completion:v44];
        }

        else
        {
          v40 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
            v55 = 2112;
            v56 = contextCopy;
            _os_log_error_impl(&dword_1912FE000, v40, OS_LOG_TYPE_ERROR, "%s No score is provided in context %@.", buf, 0x16u);
          }
        }

        goto LABEL_32;
      }

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        *buf = 136315394;
        v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
        v55 = 2112;
        v56 = contextCopy;
        v29 = "%s Unexpected event in context %@.";
        goto LABEL_30;
      }

LABEL_31:
      v15 = 0;
      goto LABEL_32;
    }

    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (source != 1)
  {
    v26 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v15 = 0;
      goto LABEL_33;
    }

    *buf = 136315394;
    v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v55 = 2112;
    v56 = contextCopy;
    v27 = "%s Unexpected source in context %@.";
LABEL_38:
    _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    goto LABEL_18;
  }

  if ((event & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v54 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v55 = 2112;
    v56 = contextCopy;
    v27 = "%s Unexpected event in context %@.";
    goto LABEL_38;
  }

  sharedNotifier4 = [getCSActivationEventNotifierClass() sharedNotifier];
  v12 = getCSActivationEventClass();
  userInfo4 = [contextCopy userInfo];
  v14 = [v12 builtInMicVoiceTriggerEvent:userInfo4 hostTime:{objc_msgSend(contextCopy, "timestamp")}];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke;
  v50[3] = &unk_1E7345A40;
  v51 = contextCopy;
  v52 = completionCopy;
  [sharedNotifier4 notifyActivationEvent:v14 completion:v50];

  v15 = 1;
LABEL_33:

  return v15;
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v12 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_1;
    v9[3] = &unk_1E7346640;
    v10 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v9];
    (*(v6 + 16))(v6, v7);
  }
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v12 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_4;
    v9[3] = &unk_1E7346640;
    v10 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v9];
    (*(v6 + 16))(v6, v7);
  }
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v12 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_6;
    v9[3] = &unk_1E7346640;
    v10 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v9];
    (*(v6 + 16))(v6, v7);
  }
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v12 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_8;
    v9[3] = &unk_1E7346640;
    v10 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v9];
    (*(v6 + 16))(v6, v7);
  }
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

@end