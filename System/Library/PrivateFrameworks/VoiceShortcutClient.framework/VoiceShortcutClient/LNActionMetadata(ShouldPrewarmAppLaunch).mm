@interface LNActionMetadata(ShouldPrewarmAppLaunch)
- (uint64_t)wf_shouldPrewarmAppLaunchWithAction:()ShouldPrewarmAppLaunch;
@end

@implementation LNActionMetadata(ShouldPrewarmAppLaunch)

- (uint64_t)wf_shouldPrewarmAppLaunchWithAction:()ShouldPrewarmAppLaunch
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([self openAppWhenRun] & 1) == 0)
  {
    parameters2 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(parameters2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s openAppWhenRun is false";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  systemProtocols = [v4 systemProtocols];
  cameraCaptureProtocol = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v7 = [systemProtocols containsObject:cameraCaptureProtocol];

  if (v7)
  {
    parameters2 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(parameters2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s Intent conforms to the camera capture protocol";
LABEL_10:
      _os_log_impl(&dword_1B1DE3000, parameters2, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([self outputFlags] & 0x26) != 0)
  {
    parameters2 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(parameters2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s Intent returns a snippet or dialog";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    parameters = [self parameters];
    parameters2 = [parameters if_objectsPassingTest:&__block_literal_global_11014];

    if ([parameters2 count]>= 2)
    {
      v24 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
        v25 = "%s App Shortcut with multiple required parameters with missing value";
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_11;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  parameters2 = [self parameters];
  v13 = [parameters2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    v26 = *MEMORY[0x1E69AC598];
LABEL_18:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(parameters2);
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      isOptional = [v17 isOptional];
      if (v4 && (isOptional & 1) == 0)
      {
        parameters3 = [v4 parameters];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __80__LNActionMetadata_ShouldPrewarmAppLaunch__wf_shouldPrewarmAppLaunchWithAction___block_invoke_50;
        v27[3] = &unk_1E7B01608;
        v27[4] = v17;
        v20 = [parameters3 if_firstObjectPassingTest:v27];
        value = [v20 value];

        if (!value)
        {
          typeSpecificMetadata = [v17 typeSpecificMetadata];
          v23 = [typeSpecificMetadata objectForKeyedSubscript:v26];

          if (!v23)
          {
            v24 = getWFVoiceShortcutClientLogObject();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }

            *buf = 136315138;
            v34 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
            v25 = "%s Required parameter is missing a value";
LABEL_34:
            _os_log_impl(&dword_1B1DE3000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
            goto LABEL_35;
          }
        }
      }

      if (v14 == ++v16)
      {
        v14 = [parameters2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v10 = 1;
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

@end