@interface FigCameraViewfinderStream
+ (void)initialize;
- (FigCameraViewfinderStream)init;
- (int)enqueueVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_handleEndpointsChanged:(uint64_t)changed;
- (void)_handleStreamsChanged:(void *)result;
- (void)_setEndpoint:(uint64_t)endpoint;
- (void)_setupStateMachine;
- (void)_updateStreams;
- (void)close;
- (void)dealloc;
- (void)openWithDestination:(id)destination;
@end

@implementation FigCameraViewfinderStream

- (FigCameraViewfinderStream)init
{
  v4.receiver = self;
  v4.super_class = FigCameraViewfinderStream;
  v2 = [(FigCameraViewfinderStream *)&v4 init];
  if (v2)
  {
    v2->_delegateStorage = objc_alloc_init(FigDelegateStorage);
    v2->_frameCounter = [[FigCaptureFrameCounter alloc] initWithTitle:[(FigCameraViewfinderStream *)v2 description]];
    [(FigCameraViewfinderStream *)v2 _setupStateMachine];
    if (init_sEndpointManagerOnceToken != -1)
    {
      [FigCameraViewfinderStream init];
    }
  }

  return v2;
}

- (void)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCameraViewfinderStreamStateMachine" stateCount:4 initialState:1 owner:result];
    *(v1 + 2) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [*(v1 + 2) setLabel:@"Activating" forState:2];
    [*(v1 + 2) setLabel:@"Active" forState:4];
    [*(v1 + 2) setLabel:@"Deactivating" forState:8];
    [*(v1 + 2) whenTransitioningToState:4 callHandler:&__block_literal_global_41];
    v3 = *(v1 + 2);

    return [v3 whenTransitioningToState:1 callHandler:&__block_literal_global_46];
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

CFTypeRef __33__FigCameraViewfinderStream_init__block_invoke()
{
  result = FigEndpointManagerForCameraPreviewGetShared();
  if (result)
  {
    result = CFRetain(result);
  }

  gEndpointManager = result;
  return result;
}

- (void)dealloc
{
  currentState = [(FigStateMachine *)self->_stateMachine currentState];

  self->_delegateStorage = 0;
  if (currentState >= 2)
  {
    if (currentState != 8)
    {
      [(FigCameraViewfinderStream *)self close];
    }

    [(FigStateMachine *)self->_stateMachine transitionToState:1];
  }

  displaySource = self->_displaySource;
  if (displaySource)
  {
    CFRelease(displaySource);
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
  }

  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  v7.receiver = self;
  v7.super_class = FigCameraViewfinderStream;
  [(FigCameraViewfinderStream *)&v7 dealloc];
}

- (void)openWithDestination:(id)destination
{
  if (dword_1ED844170)
  {
    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:2 fromState:1, v20, v22])
  {
    if (gEndpointManager)
    {
      v6 = [FigWeakReference weakReferenceToObject:self];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = *MEMORY[0x1E6961890];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __49__FigCameraViewfinderStream_openWithDestination___block_invoke;
      v32[3] = &unk_1E798FC90;
      v32[4] = v6;
      self->_endpointsChangedNotificationToken = [defaultCenter addObserverForName:v8 object:gEndpointManager queue:0 usingBlock:v32];
      v9 = FigVirtualDisplaySourceCameraViewfinderStreamCreate(*MEMORY[0x1E695E480], &self->_displaySource);
      if (v9)
      {
        v13 = v9;
        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v35;
        if (os_log_type_enabled(v17, v34))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v24 = 136315650;
          v25 = "[FigCameraViewfinderStream openWithDestination:]";
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          LODWORD(destinationCopy) = v13;
          LODWORD(v23) = 28;
          v21 = &v24;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v12 = v11(CMBaseObject, 0x1F21999F0, destination);
          if (!v12)
          {
            cvs_endpointManagerSetDisplaySource(self->_displaySource);
            return;
          }

          v13 = v12;
        }

        else
        {
          v13 = 4294954514;
        }

        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v35;
        if (os_log_type_enabled(v14, v34))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v24 = 136315906;
          v25 = "[FigCameraViewfinderStream openWithDestination:]";
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2112;
          destinationCopy = destination;
          v30 = 1024;
          v31 = v13;
          LODWORD(v23) = 38;
          v21 = &v24;
          _os_log_send_and_compose_impl();
        }
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_16;
    }

    if (![FigCameraViewfinderStream openWithDestination:v33])
    {
      v13 = v33[0];
LABEL_16:
      [(FigStateMachine *)self->_stateMachine transitionToState:1 errorStatus:v13, v21, v23];
    }
  }
}

void __49__FigCameraViewfinderStream_openWithDestination___block_invoke(uint64_t a1, char *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[FigCameraViewfinderStream _handleEndpointsChanged:]([*(a1 + 32) referencedObject], a2);

  objc_autoreleasePoolPop(v4);
}

- (void)close
{
  if (dword_1ED844170)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:8 fromStates:6, v6, v7]&& self->_endpoint)
  {
    displaySource = self->_displaySource;
    if (displaySource)
    {
      CFRelease(displaySource);
      self->_displaySource = 0;
    }

    cvs_endpointManagerSetDisplaySource(0);
    [(FigCameraViewfinderStream *)self _setEndpoint:?];
    stream = self->_stream;
    if (stream)
    {
      CFRelease(stream);
      self->_stream = 0;
    }
  }
}

- (int)enqueueVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!buffer)
  {
    [FigCameraViewfinderStream enqueueVideoSampleBuffer:?];
    return time.value;
  }

  if ([(FigStateMachine *)self->_stateMachine currentState]!= 4)
  {
    [FigCameraViewfinderStream enqueueVideoSampleBuffer:?];
    return time.value;
  }

  if (self->_displaySource)
  {
    v5 = CMGetAttachment(buffer, *off_1E798A430, 0);
    memset(&rect, 0, sizeof(rect));
    memset(&v23, 0, sizeof(v23));
    CMSampleBufferGetPresentationTimeStamp(&v23, buffer);
    if (v5)
    {
      CGRectMakeWithDictionaryRepresentation(v5, &rect);
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, Width, Height);
      v13 = v12;
      rect.origin.x = v9;
      rect.origin.y = v10;
      rect.size.width = v12;
      rect.size.height = v11;
    }

    else
    {
      v15 = CMSampleBufferGetImageBuffer(buffer);
      v13 = CVPixelBufferGetWidth(v15);
      v11 = CVPixelBufferGetHeight(v15);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      rect.size.width = v13;
      rect.size.height = v11;
      v10 = 0.0;
      v9 = 0.0;
    }

    v17 = FigVirtualDisplaySourceCameraViewfinderStreamEnqueueFrame(self->_displaySource, buffer, v9, v10, v13, v11);
    if (v17)
    {
      v22 = 0;
      v21 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      frameCounter = self->_frameCounter;
      time = v23;
      [(FigCaptureFrameCounter *)frameCounter incrementWithPTS:&time];
    }
  }

  else
  {
    LODWORD(rect.origin.x) = 0;
    LOBYTE(v23.value) = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v17;
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 48) start];
  v3 = *(a2 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_2;
  v5[3] = &unk_1E7990650;
  v5[4] = a2;
  return [v3 invokeDelegateCallbackWithBlock:v5];
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderStreamDidOpen:v5];
  }

  return result;
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  if ([*(a2 + 48) started])
  {
    [*(a2 + 48) stop];
  }

  if (v6 == 2)
  {
    if (*(a2 + 40))
    {
      cvs_endpointManagerSetDisplaySource(0);
      v8 = *(a2 + 40);
      if (v8)
      {
        CFRelease(v8);
        *(a2 + 40) = 0;
      }
    }

    v9 = *(a2 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 24) = 0;
    }

    v10 = *(a2 + 32);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 32) = 0;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  *(a2 + 56) = 0;
  v11 = *(a2 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_4;
  v13[3] = &unk_1E7990678;
  v13[4] = a2;
  v14 = a5;
  return [v11 invokeDelegateCallbackWithBlock:v13];
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 cameraViewfinderStream:v5 didCloseWithStatus:v6];
  }

  return result;
}

void __42__FigCameraViewfinderStream__setEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[FigCameraViewfinderStream _handleStreamsChanged:]([*(a1 + 32) referencedObject], a2);

  objc_autoreleasePoolPop(v4);
}

- (void)_handleEndpointsChanged:(uint64_t)changed
{
  if (changed)
  {
    v34[0] = 0;
    if (dword_1ED844170)
    {
      OUTLINED_FUNCTION_2_26();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v2 = v32;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v32))
      {
        v6 = v33;
      }

      else
      {
        v6 = v33 & 0xFFFFFFFE;
      }

      if (v6)
      {
        OUTLINED_FUNCTION_15_7();
        OUTLINED_FUNCTION_4_24();
        v28 = a2;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    userInfo = [a2 userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69718F0]];
    if (!v8 || v8 == *(changed + 40))
    {
      userInfo2 = [a2 userInfo];
      v10 = [objc_msgSend(userInfo2 objectForKeyedSubscript:{*MEMORY[0x1E69718F8]), "intValue"}];
      if (v10)
      {
        v16 = v10;
        OUTLINED_FUNCTION_0_8();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21);
      }

      else
      {
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v13 = v12(CMBaseObject, *MEMORY[0x1E69618A0], *MEMORY[0x1E695E480], v34);
          if (!v13)
          {
            if (dword_1ED844170)
            {
              OUTLINED_FUNCTION_2_26();
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (os_log_type_enabled(v14, v32))
              {
                v15 = v33;
              }

              else
              {
                v15 = v33 & 0xFFFFFFFE;
              }

              if (v15)
              {
                OUTLINED_FUNCTION_15_7();
                OUTLINED_FUNCTION_3_20();
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_8_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v34[0] && CFArrayGetCount(v34[0]) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v34[0], 0);
              [(FigCameraViewfinderStream *)changed _setEndpoint:?];
              goto LABEL_23;
            }

            [(FigCameraViewfinderStream *)changed _setEndpoint:?];
            if ([*(changed + 16) transitionToState:1 fromStates:14])
            {
LABEL_23:
              if (v34[0])
              {
                CFRelease(v34[0]);
              }

              return;
            }

            OUTLINED_FUNCTION_2_26();
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (OUTLINED_FUNCTION_16_11(v18))
            {
              v19 = v2;
            }

            else
            {
              v19 = v2 & 0xFFFFFFFE;
            }

            if (v19)
            {
              [*(changed + 16) currentStateLabel];
              [*(changed + 16) labelForState:2];
              [*(changed + 16) labelForState:4];
              [*(changed + 16) labelForState:8];
              OUTLINED_FUNCTION_15_7();
              OUTLINED_FUNCTION_4_24();
              OUTLINED_FUNCTION_5();
LABEL_37:
              OUTLINED_FUNCTION_8_0();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_14_5();
LABEL_42:
              OUTLINED_FUNCTION_13_0(qword_1ED844168, 0, 1, v20, v20 != &v31);
              goto LABEL_23;
            }

            goto LABEL_41;
          }

          v16 = v13;
        }

        else
        {
          v16 = 4294954514;
        }

        OUTLINED_FUNCTION_0_8();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16);
      }

      [*(changed + 16) transitionToState:1 errorStatus:v16];
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v24, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_2_26();
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = OUTLINED_FUNCTION_16_11(v22);
    if (OUTLINED_FUNCTION_5_24(v23))
    {
      OUTLINED_FUNCTION_15_7();
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_5();
      goto LABEL_37;
    }

LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }
}

- (void)_setEndpoint:(uint64_t)endpoint
{
  if (endpoint)
  {
    v4 = *(endpoint + 24);
    if (v4 != a2)
    {
      if (v4)
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        *(endpoint + 64) = 0;
        v5 = *(endpoint + 24);
      }

      else
      {
        v5 = 0;
      }

      *(endpoint + 24) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (a2)
      {
        v6 = [FigWeakReference weakReferenceToObject:endpoint];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v8 = *MEMORY[0x1E6961940];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __42__FigCameraViewfinderStream__setEndpoint___block_invoke;
        v9[3] = &unk_1E798FC90;
        v9[4] = v6;
        *(endpoint + 64) = [defaultCenter addObserverForName:v8 object:a2 queue:0 usingBlock:v9];
        [(FigCameraViewfinderStream *)endpoint _updateStreams];
      }
    }
  }
}

- (void)_handleStreamsChanged:(void *)result
{
  if (result)
  {
    if (dword_1ED844170)
    {
      v4 = OUTLINED_FUNCTION_11_13();
      v5 = os_log_type_enabled(v4, v15);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        OUTLINED_FUNCTION_4_24();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v6, v7, v8, v9, v10);
    }

    userInfo = [a2 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6961910]];
    if (!v12 || ([v12 BOOLValue] & 1) != 0)
    {
      [(FigCameraViewfinderStream *)result _updateStreams];
    }

    else
    {
      if (dword_1ED844170)
      {
        v13 = OUTLINED_FUNCTION_11_13();
        if (os_log_type_enabled(v13, v15))
        {
          v14 = v16;
        }

        else
        {
          v14 = v16 & 0xFFFFFFFE;
        }

        if (v14)
        {
          OUTLINED_FUNCTION_4_24();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [result close];
    }
  }
}

- (void)_updateStreams
{
  if (self)
  {
    v104[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v3 || (v4 = *MEMORY[0x1E695E480], v5 = v3(CMBaseObject, *MEMORY[0x1E6962268], *MEMORY[0x1E695E480], v104), v5))
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v58, v60, *(&v60 + 1), v63, v65, v67, v69);
      goto LABEL_38;
    }

    v13 = &unk_1ED844000;
    if (dword_1ED844170)
    {
      v14 = OUTLINED_FUNCTION_6_19();
      v15 = OUTLINED_FUNCTION_12_10(v14);
      if (OUTLINED_FUNCTION_5_24(v15))
      {
        LODWORD(v60) = 136315650;
        *(&v60 + 4) = "[FigCameraViewfinderStream _updateStreams]";
        OUTLINED_FUNCTION_3_20();
        v65 = v16;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_14_5();
      }

      OUTLINED_FUNCTION_2_4();
      v5 = OUTLINED_FUNCTION_13_0(v18, v19, v20, v21, v22);
    }

    v23 = v104[0];
    v24 = OUTLINED_FUNCTION_17_4(v5, v6, v7, v8, v9, v10, v11, v12, v56, v58, v60, *(&v60 + 1), v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0];
      v27 = *MEMORY[0x1E69625C8];
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(8 * i);
          v103[0] = 0;
          v30 = FigEndpointStreamGetCMBaseObject();
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v31(v30, v27, v4, v103);
          }

          v39 = FigCFEqual();
          v40 = v103[0];
          if (v39)
          {
            if (v103[0])
            {
              CFRelease(v103[0]);
            }

            goto LABEL_24;
          }

          if (v103[0])
          {
            CFRelease(v103[0]);
          }
        }

        v25 = OUTLINED_FUNCTION_17_4(v40, v32, v33, v34, v35, v36, v37, v38, v57, v59, v61, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
        if (v25)
        {
          continue;
        }

        break;
      }

      v29 = 0;
LABEL_24:
      v13 = &unk_1ED844000;
    }

    else
    {
      v29 = 0;
    }

    if (v13[92])
    {
      v41 = OUTLINED_FUNCTION_6_19();
      v42 = OUTLINED_FUNCTION_12_10(v41);
      if (OUTLINED_FUNCTION_5_24(v42))
      {
        OUTLINED_FUNCTION_3_20();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_14_5();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v43, v44, v45, v46, v47);
    }

    v48 = *(self + 32);
    if (!v29 || v48)
    {
      *(self + 32) = v29;
      if (!v29)
      {
        if (!v48)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    else
    {
      [*(self + 16) transitionToState:4 fromState:2];
      if (v13[92])
      {
        v49 = OUTLINED_FUNCTION_6_19();
        v50 = OUTLINED_FUNCTION_12_10(v49);
        if (OUTLINED_FUNCTION_5_24(v50))
        {
          OUTLINED_FUNCTION_4_24();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_14_5();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0(v51, v52, v53, v54, v55);
      }

      v48 = *(self + 32);
      *(self + 32) = v29;
    }

    CFRetain(v29);
    if (!v48)
    {
LABEL_38:
      if (v104[0])
      {
        CFRelease(v104[0]);
      }

      return;
    }

LABEL_37:
    CFRelease(v48);
    goto LABEL_38;
  }
}

- (BOOL)openWithDestination:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844168, 0xFFFFCE14, "<<<< CameraViewfinderStream >>>>", 0xB9, v1, v3, v4, v8);
  *a1 = v5;
  return v5 == 0;
}

- (uint64_t)enqueueVideoSampleBuffer:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844168, 0xFFFFFFCELL, "<<<< CameraViewfinderStream >>>>", 0xEC, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)enqueueVideoSampleBuffer:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844168, 0xFFFFFFCELL, "<<<< CameraViewfinderStream >>>>", 0xEB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

@end