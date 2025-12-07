@interface AVSystemControllerCommon
+ (void)initialize;
+ (void)postNotificationOnMainQueue:(id)queue notification:(id)notification object:(id)object;
- (AVSystemControllerCommon)init;
- (BOOL)setAttribute:(id)attribute forKey:(id)key error:(id *)error;
- (OpaqueFigSystemController)copyFigController;
- (id)attributeForKey:(id)key;
- (id)copyAttributeForKeyMappingToFig;
- (id)copySetAttributeForKeyMappingToFig;
- (void)dealloc;
- (void)initializeAttributeForKeyMappingToFig;
- (void)releaseSharedInstance;
@end

@implementation AVSystemControllerCommon

- (AVSystemControllerCommon)init
{
  v5.receiver = self;
  v5.super_class = AVSystemControllerCommon;
  v2 = [(AVSystemControllerCommon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVSystemControllerCommon *)v2 initializeAttributeForKeyMappingToFig];
    objc_storeWeak(&selfWeakAVSCReference, [(AVSystemControllerCommon *)v3 selfWeak]);
    if (FigSystemControllerRemoteCreate(*MEMORY[0x1E695E480], 0, &v3->mFigController) || !v3->mFigController || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListeners()) || !v3->mFigController)
    {

      return 0;
    }
  }

  return v3;
}

- (void)initializeAttributeForKeyMappingToFig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVSystemControllerCommon_initializeAttributeForKeyMappingToFig__block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = self;
  if (initializeAttributeForKeyMappingToFig_onceToken != -1)
  {
    dispatch_once(&initializeAttributeForKeyMappingToFig_onceToken, block);
  }
}

void __65__AVSystemControllerCommon_initializeAttributeForKeyMappingToFig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copyAttributeForKeyMappingToFig];
  v4 = [*(a1 + 32) copySetAttributeForKeyMappingToFig];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  sAttributeForKeyMappingToFig = [v3 initWithObjectsAndKeys:{@"SubscribeToNotifications", AVSystemController_SubscribeToNotificationsAttribute, 0}];
  sSetAttributeForKeyMappingToFig = objc_alloc_init(MEMORY[0x1E695DF90]);
  [sAttributeForKeyMappingToFig addEntriesFromDictionary:v2];
  [sSetAttributeForKeyMappingToFig addEntriesFromDictionary:v4];
}

+ (void)initialize
{
  if (objc_opt_self() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (OpaqueFigSystemController)copyFigController
{
  result = self->mFigController;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

+ (void)postNotificationOnMainQueue:(id)queue notification:(id)notification object:(id)object
{
  queueCopy = queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__AVSystemControllerCommon_postNotificationOnMainQueue_notification_object___block_invoke;
  v8[3] = &unk_1E7AEA340;
  v8[4] = notification;
  v8[5] = queue;
  MXDispatchAsync("+[AVSystemControllerCommon postNotificationOnMainQueue:notification:object:]", "AVSystemController_Common.m", 157, 0, 0, MEMORY[0x1E69E96A0], v8);
}

void __76__AVSystemControllerCommon_postNotificationOnMainQueue_notification_object___block_invoke(uint64_t a1)
{
  if (objc_loadWeak(&selfWeakAVSCReference))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v2 = *(a1 + 40);
}

- (void)dealloc
{
  if (self->mFigController)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    mFigController = self->mFigController;
    if (mFigController)
    {
      CFRelease(mFigController);
      self->mFigController = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = AVSystemControllerCommon;
  [(AVSystemControllerCommon *)&v4 dealloc];
}

- (id)attributeForKey:(id)key
{
  v13 = 0;
  v5 = [sAttributeForKeyMappingToFig valueForKey:?];
  if (v5)
  {
    v6 = v5;
    mFigController = self->mFigController;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(mFigController, v6, *MEMORY[0x1E695E480], &v13);
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    return v13;
  }

  else if ([key isEqualToString:AVSystemController_PostNotificationsFromMainThreadOnly] || objc_msgSend(key, "isEqualToString:", AVSystemController_DeviceManufacturedForEURegion))
  {
    v12 = MEMORY[0x1E696AD98];

    return [v12 numberWithBool:0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)setAttribute:(id)attribute forKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if ([key isEqualToString:AVSystemController_IAmTheiPodAppAttribute])
  {
    return 1;
  }

  v10 = [sSetAttributeForKeyMappingToFig valueForKey:key];
  if (v10)
  {
    v11 = v10;
    mFigController = self->mFigController;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v14 = v13(mFigController, v11, attribute);
    }

    else
    {
      v14 = 4294954514;
    }

    v15 = 0;
    if (error && v14)
    {
      v16 = @"setAttribute failed: '%@'";
LABEL_18:
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v16, 0, key];
    }
  }

  else
  {
    v17 = [key isEqualToString:AVSystemController_PostNotificationsFromMainThreadOnly];
    v15 = 0;
    if (v17)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4294967246;
    }

    if ((v17 & 1) == 0 && error)
    {
      v16 = @"unsupported attribute: '%@'";
      v14 = 4294967246;
      goto LABEL_18;
    }
  }

  if (error)
  {
    if (v14)
    {
      *error = [(AVSystemControllerCommon *)self errorWithCode:v14 description:v15];
    }
  }

  return v14 == 0;
}

- (void)releaseSharedInstance
{
  v3 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (id)copySetAttributeForKeyMappingToFig
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

- (id)copyAttributeForKeyMappingToFig
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

@end