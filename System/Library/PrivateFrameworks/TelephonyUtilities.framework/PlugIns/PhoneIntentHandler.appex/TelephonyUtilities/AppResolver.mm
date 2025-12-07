@interface AppResolver
- (BOOL)appSupportsDeprecatedCallingIntents:(id)intents;
@end

@implementation AppResolver

- (BOOL)appSupportsDeprecatedCallingIntents:(id)intents
{
  intentsCopy = intents;
  v17 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:intentsCopy allowPlaceholder:1 error:&v17];
  v5 = v17;
  v6 = v5;
  if (!v5)
  {
    compatibilityObject = [v4 compatibilityObject];
    plugInKitPlugins = [compatibilityObject plugInKitPlugins];
    v11 = INSupportedIntentsByExtensions();

    v12 = [v11 containsObject:INStartCallIntentIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = IntentHandlerDefaultLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10002F45C(v14);
      }
    }

    else if (![v11 containsObject:INStartAudioCallIntentIdentifier])
    {
      v16 = [v11 containsObject:INStartVideoCallIntentIdentifier];

      if (v16)
      {
        v8 = 1;
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    v8 = v13 ^ 1;

    goto LABEL_12;
  }

  v7 = IntentHandlerDefaultLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002F3D4(intentsCopy, v6, v7);
  }

LABEL_5:
  v8 = 0;
LABEL_12:

  return v8;
}

@end