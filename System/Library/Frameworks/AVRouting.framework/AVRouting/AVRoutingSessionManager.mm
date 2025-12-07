@interface AVRoutingSessionManager
+ (BOOL)longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:(int64_t)type subType:(int64_t)subType;
+ (id)longFormVideoRoutingSessionManager;
+ (void)initialize;
- (AVRoutingSession)currentRoutingSession;
- (AVRoutingSessionManager)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)manager;
- (BOOL)prefersLikelyDestinationsOverCurrentRoutingSession;
- (BOOL)startRoutingSessionWithOutputDeviceDescriptions:(id)descriptions error:(id *)error;
- (BOOL)startSuppressingLikelyDestinationsUntilNextPlayEventAndReturnError:(id *)error;
- (BOOL)stopSuppressingLikelyDestinationsAndReturnError:(id *)error;
- (NSArray)likelyExternalDestinations;
- (id)description;
- (void)dealloc;
- (void)startRoutingSessionForHighConfidenceExternalDestinationIfPresentWithCompletionHandler:(id)handler;
- (void)updateCurrentRoutingSessionFromLikelyDestinationsWithCompletionHandler:(id)handler;
@end

@implementation AVRoutingSessionManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (BOOL)longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:(int64_t)type subType:(int64_t)subType
{
  v4 = 0x32800u >> subType;
  if (subType > 0x11)
  {
    LOBYTE(v4) = 0;
  }

  if (type)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    if (ivars->figRoutingSessionManager)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      ivars = self->_ivars;
      figRoutingSessionManager = ivars->figRoutingSessionManager;
      if (figRoutingSessionManager)
      {
        CFRelease(figRoutingSessionManager);
        ivars = self->_ivars;
      }
    }
  }

  v5.receiver = self;
  v5.super_class = AVRoutingSessionManager;
  [(AVRoutingSessionManager *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, currentRoutingSession=%@, likelyExternalDestinations=%@, allLikelyDestinations=%@, prefersLikelyDestinationsOverCurrentRoutingSession=%d>", NSStringFromClass(v4), self, -[AVRoutingSessionManager currentRoutingSession](self, "currentRoutingSession"), -[AVRoutingSessionManager likelyExternalDestinations](self, "likelyExternalDestinations"), -[AVRoutingSessionManager allLikelyDestinations](self, "allLikelyDestinations"), -[AVRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession](self, "prefersLikelyDestinationsOverCurrentRoutingSession")];
}

- (AVRoutingSession)currentRoutingSession
{
  cf = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    v8 = 0;
    return v8;
  }

  v4 = v3(figRoutingSessionManager, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (v6)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v7 = [AVRoutingSession alloc];
  v8 = [(AVRoutingSession *)v7 initWithFigRoutingSession:cf];
  v5 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v5);
  }

  return v8;
}

- (NSArray)likelyExternalDestinations
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  FigRoutingSessionManagerGetConfidenceThresholds();
  LikelyDestinationsFromFig = AVRoutingSessionManagerGetLikelyDestinationsFromFig(self->_ivars->figRoutingSessionManager, &__block_literal_global_4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)LikelyDestinationsFromFig countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(LikelyDestinationsFromFig);
        }

        [*(*(&v11 + 1) + 8 * i) probability];
        v7 = v7 + v9;
      }

      v5 = [(NSArray *)LikelyDestinationsFromFig countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if (v7 >= v15)
  {
    return LikelyDestinationsFromFig;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BOOL)prefersLikelyDestinationsOverCurrentRoutingSession
{
  v7 = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(figRoutingSessionManager, &v7);
  return v7 && v4 == 0;
}

- (void)updateCurrentRoutingSessionFromLikelyDestinationsWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [handler copy];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v9 = v8(figRoutingSessionManager, AVRoutingSessionManagerStartHighConfidenceDestinationComplete, v5);
    if (!v9)
    {
      return;
    }

    v10 = v9;
    if (v9 == -15395)
    {

      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v11, v12, v13, v14, v15, v17), 0}];
      objc_exception_throw(v16);
    }
  }

  else
  {
    v10 = 4294954514;
  }

  AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(v5, v10);
}

- (void)startRoutingSessionForHighConfidenceExternalDestinationIfPresentWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [handler copy];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(figRoutingSessionManager, AVRoutingSessionManagerStartHighConfidenceDestinationComplete, v5);
    if (!v9)
    {
      return;
    }

    v10 = v9;
    if (v9 == -15395)
    {

      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v11, v12, v13, v14, v15, v17), 0}];
      objc_exception_throw(v16);
    }
  }

  else
  {
    v10 = 4294954514;
  }

  AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(v5, v10);
}

- (BOOL)startRoutingSessionWithOutputDeviceDescriptions:(id)descriptions error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (dword_1EB46D588)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [descriptions countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(descriptions);
        }

        v13 = AVCreateFigRouteDescriptorFromOutputDeviceDescription(*(*(&v31 + 1) + 8 * i));
        CFArrayAppendValue(Mutable, v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      v10 = [descriptions countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v10);
  }

  if (dword_1EB46D588)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v36;
    v16 = type;
    if (os_log_type_enabled(v14, type))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = AVSuccinctRouteDescriptorsDescription(Mutable);
      v38 = 136315395;
      v39 = "[AVRoutingSessionManager startRoutingSessionWithOutputDeviceDescriptions:error:]";
      v40 = 2113;
      v41 = v18;
      v29 = &v38;
      _os_log_send_and_compose_impl(v17, 0, v42, 128, &dword_1AB586000, v14, v16, "<<<< AVRoutingSessionManager >>>> %s: Calling FigRoutingSessionManagerStartSessionWithRouteDescriptors (routeDescriptors: %{private}@)");
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v25)
  {
    v26 = v25(figRoutingSessionManager, Mutable);
    if (!v26)
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 1;
    }
  }

  else
  {
    v26 = 4294954514;
  }

  if (error && v26 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v26, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26 == -15395)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v20, v21, v22, v23, v24, v29), 0}];
    objc_exception_throw(v28);
  }

  return 0;
}

- (BOOL)startSuppressingLikelyDestinationsUntilNextPlayEventAndReturnError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v13)
  {
    v14 = v13(figRoutingSessionManager);
    if (!v14)
    {
      return 1;
    }
  }

  else
  {
    v14 = 4294954514;
  }

  if (error && v14 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v14, 0);
  }

  if (v14 == -15395)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v8, v9, v10, v11, v12, v17), 0}];
    objc_exception_throw(v16);
  }

  return 0;
}

- (BOOL)stopSuppressingLikelyDestinationsAndReturnError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v13)
  {
    v14 = v13(figRoutingSessionManager);
    if (!v14)
    {
      return 1;
    }
  }

  else
  {
    v14 = 4294954514;
  }

  if (error && v14 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v14, 0);
  }

  if (v14 == -15395)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v8, v9, v10, v11, v12, v17), 0}];
    objc_exception_throw(v16);
  }

  return 0;
}

+ (id)longFormVideoRoutingSessionManager
{
  if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager())
  {
    v3 = 0;
  }

  else
  {
    v3 = [[self alloc] initWithFigRoutingSessionManager:0];
  }

  return v3;
}

- (AVRoutingSessionManager)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)manager
{
  CMNotificationCenterGetDefaultLocalCenter();
  v16.receiver = self;
  v16.super_class = AVRoutingSessionManager;
  v5 = [(AVRoutingSessionManager *)&v16 init];
  if (v5 && (ivars = objc_alloc_init(AVRoutingSessionManagerInternal), (v5->_ivars = ivars) != 0) && (!manager ? (v9 = 0) : (v9 = CFRetain(manager), ivars = v5->_ivars), (ivars->figRoutingSessionManager = v9, (figRoutingSessionManager = v5->_ivars->figRoutingSessionManager) != 0) && (v11 = OUTLINED_FUNCTION_0_2(ivars, v7, v8, *MEMORY[0x1E69AF578], figRoutingSessionManager), !v11) && !OUTLINED_FUNCTION_0_2(v11, v12, v13, *MEMORY[0x1E69AF580], v5->_ivars->figRoutingSessionManager)))
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end