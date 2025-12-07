@interface CMFall
+ (BOOL)areStatsAvailable;
- (BOOL)setStatsEnabled:(BOOL)enabled;
- (id)sendStatsDataToUrl:(id)url;
- (unint64_t)setDataCollectionConfiguration:(unint64_t)configuration;
- (void)sendStatsDataToUrl:(id)url onCompletion:(id)completion;
- (void)setHgalCaptureMode:(unsigned __int8)mode;
- (void)simulateEvent:(unint64_t)event;
@end

@implementation CMFall

+ (BOOL)areStatsAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v2, "kCLConnectionMessageFallStatsAvailable");
}

- (BOOL)setStatsEnabled:(BOOL)enabled
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CMFallSetStatsEnabled";
  v6[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, enabled);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v6, &v5, 1);
  operator new();
}

- (unint64_t)setDataCollectionConfiguration:(unint64_t)configuration
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CMFallDataCollectionConfigurationKey";
  v6[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, configuration);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v6, &v5, 1);
  operator new();
}

- (id)sendStatsDataToUrl:(id)url
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v6, url))
  {
    sub_19B5D140C();
  }

  v9 = @"CMReturnCode";
  v10[0] = MEMORY[0x1E695E110];
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v10, &v9, 1);
}

- (void)sendStatsDataToUrl:(id)url onCompletion:(id)completion
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v7, v6);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v8, url))
  {
    sub_19B5D140C();
  }

  v11 = @"CMReturnCode";
  v12[0] = MEMORY[0x1E695E110];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v12, &v11, 1);
  (*(completion + 2))(completion, v10);
}

- (void)simulateEvent:(unint64_t)event
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CMAnomalyEventType";
  v5[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, event);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v5, &v4, 1);
  operator new();
}

- (void)setHgalCaptureMode:(unsigned __int8)mode
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CMHgalCaptureMode";
  v6[0] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, mode);
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v6, &v5, 1);
  sub_19B6F3270();
}

@end