@interface CMCaptureFrameSenderService
+ (void)initialize;
- (CMCaptureFrameSenderService)initWithEndpointType:(id)type endpointCameraUniqueID:(id)d;
- (CMCaptureFrameSenderService)initWithEndpointType:(id)type endpointPID:(int)d endpointProxyPID:(int)iD endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)uniqueID;
- (int)sendFrame:(opaqueCMSampleBuffer *)frame;
- (opaqueCMSampleBuffer)_newSampleBufferToSendFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_addConnection:(id)connection;
- (void)_cleanupSendingPixelBufferMachinery;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (CMCaptureFrameSenderService)initWithEndpointType:(id)type endpointCameraUniqueID:(id)d
{
  memset(v9, 0, sizeof(v9));
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:{32, FigCaptureGetCurrentProcessAuditToken(v9)}];
  return [(CMCaptureFrameSenderService *)self initWithEndpointType:type endpointPID:getpid() endpointProxyPID:0 endpointAuditToken:v7 endpointProxyAuditToken:0 endpointCameraUniqueID:d];
}

- (CMCaptureFrameSenderService)initWithEndpointType:(id)type endpointPID:(int)d endpointProxyPID:(int)iD endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)uniqueID
{
  v30.receiver = self;
  v30.super_class = CMCaptureFrameSenderService;
  v14 = [(CMCaptureFrameSenderService *)&v30 init];
  if (v14)
  {
    *(v14 + 1) = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    *(v14 + 2) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:type];
    v14[12] = d;
    v14[13] = iD;
    *(v14 + 4) = token;
    *(v14 + 5) = auditToken;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (uniqueID)
    {
      uniqueIDCopy = uniqueID;
    }

    else
    {
      uniqueIDCopy = @"unknown";
    }

    *(v14 + 3) = [v15 initWithString:uniqueIDCopy];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.CMCapture.CMCaptureFrameSender", v17);
    *(v14 + 7) = v18;
    v19 = xpc_connection_create(0, v18);
    *(v14 + 8) = v19;
    *(v14 + 9) = xpc_endpoint_create(v19);
    *(v14 + 10) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v14 + 11) = dispatch_queue_create("com.apple.CMCapture.CMCaptureFrameSender.clients", v20);
    objc_initWeak(&location, v14);
    v21 = *(v14 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke;
    handler[3] = &unk_1E798F978;
    objc_copyWeak(&v28, &location);
    xpc_connection_set_event_handler(v21, handler);
    xpc_connection_activate(*(v14 + 8));
    if (initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID__initAtExitHandler != -1)
    {
      [CMCaptureFrameSenderService initWithEndpointType:endpointPID:endpointProxyPID:endpointAuditToken:endpointProxyAuditToken:endpointCameraUniqueID:];
    }

    if (sRunningInsideCameracaptured == 1)
    {
      if ([CMCaptureFrameSenderEndpointsServerSideSingleton addEndpoint:*(v14 + 9) endpointUniqueID:*(v14 + 1) endpointType:*(v14 + 2) endpointPID:v14[12] endpointProxyPID:v14[13] endpointAuditToken:*(v14 + 4) endpointProxyAuditToken:*(v14 + 5) endpointCameraUniqueID:*(v14 + 3)])
      {
        [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
      }
    }

    else
    {
      FigCaptureSourceRemotePublishFrameSenderServerEndpoint(*(v14 + 9), *(v14 + 1), *(v14 + 2), v14[12], v14[13], *(v14 + 4), *(v14 + 5), *(v14 + 3));
    }

    *(v14 + 12) = 0;
    *(v14 + 13) = 0;
    *(v14 + 19) = 0;
    *(v14 + 20) = 0;
    v14[42] = 5;
    *(v14 + 172) = 0;
    *(v14 + 14) = 0;
    *(v14 + 15) = 0;
    *(v14 + 17) = 0x4014000000000000;
    *(v14 + 18) = 0;
    v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v14 + 11));
    *(v14 + 16) = v22;
    dispatch_source_set_timer(v22, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v23 = *(v14 + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_3;
    v25[3] = &unk_1E798F9C0;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v23, v25);
    dispatch_activate(*(v14 + 16));
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (MEMORY[0x1B26F2E20](a2) == MEMORY[0x1E69E9E68])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      if (WeakRetained)
      {
        v5 = WeakRetained;
        [WeakRetained _addConnection:a2];
      }
    }
  }
}

uint64_t __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_2()
{
  if (FigCaptureCurrentProcessIsCameracaptured())
  {
    v0 = 1;
  }

  else
  {
    v0 = FigCaptureCurrentProcessIsMediaserverd() != 0;
  }

  sRunningInsideCameracaptured = v0;

  return atexit(cfss_atExitHandler);
}

void __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (dword_1ED8441D0)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v2 _cleanupSendingPixelBufferMachinery];
  }
}

- (void)dealloc
{
  if (sRunningInsideCameracaptured == 1)
  {
    if ([CMCaptureFrameSenderEndpointsServerSideSingleton removeEndpointWithUniqueID:self->_endpointUniqueID])
    {
      [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    }
  }

  else
  {
    FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint(self->_endpointUniqueID);
  }

  reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
  if (reapSendingPixelTransferSessionTimer)
  {
    dispatch_source_cancel(reapSendingPixelTransferSessionTimer);

    self->_reapSendingPixelTransferSessionTimer = 0;
  }

  listener = self->_listener;
  if (listener)
  {
    xpc_connection_cancel(listener);
  }

  [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery];
  v5.receiver = self;
  v5.super_class = CMCaptureFrameSenderService;
  [(CMCaptureFrameSenderService *)&v5 dealloc];
}

- (void)_addConnection:(id)connection
{
  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CMCaptureFrameSenderService__addConnection___block_invoke;
  block[3] = &unk_1E798F9E8;
  objc_copyWeak(&v7, &location);
  block[4] = connection;
  dispatch_async(clientQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__CMCaptureFrameSenderService__addConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [[CMCaptureFrameSenderClient alloc] initWithConnection:*(a1 + 32) queue:*(WeakRetained + 11)];
    if (v2)
    {
      v3 = v2;
      [*(WeakRetained + 10) addObject:v2];
    }
  }
}

- (void)_cleanupSendingPixelBufferMachinery
{
  reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
  if (reapSendingPixelTransferSessionTimer)
  {
    if (dword_1ED8441D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
    }

    dispatch_source_set_timer(reapSendingPixelTransferSessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  self->_sendingPixelBufferIsAWeirdSize = 0;
  self->_sendingPixelBufferHeight = 0;
  *&self->_sendingPixelBufferPixelFormatType = 0;
  self->_sendingPixelBufferWidth = 0;
  sendingPixelBufferPool = self->_sendingPixelBufferPool;
  if (sendingPixelBufferPool)
  {
    CFRelease(sendingPixelBufferPool);
    self->_sendingPixelBufferPool = 0;
  }

  sendingSampleBufferFormatDescription = self->_sendingSampleBufferFormatDescription;
  if (sendingSampleBufferFormatDescription)
  {
    CFRelease(sendingSampleBufferFormatDescription);
    self->_sendingSampleBufferFormatDescription = 0;
  }

  sendingPixelTransferSession = self->_sendingPixelTransferSession;
  if (sendingPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(sendingPixelTransferSession);
    v8 = self->_sendingPixelTransferSession;
    if (v8)
    {
      CFRelease(v8);
      self->_sendingPixelTransferSession = 0;
    }
  }

  sendingPixelRotationSession = self->_sendingPixelRotationSession;
  if (sendingPixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(sendingPixelRotationSession);
    v10 = self->_sendingPixelRotationSession;
    if (v10)
    {
      CFRelease(v10);
      self->_sendingPixelRotationSession = 0;
    }
  }
}

- (opaqueCMSampleBuffer)_newSampleBufferToSendFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    sampleBufferOut = CFRetain(buffer);
    goto LABEL_77;
  }

  v6 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v6);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  v10 = [CMGetAttachment(buffer @"CrossPlatformRotationDegrees"];
  v11 = v10;
  v12 = self->_sendingPixelBufferWidth == Width && self->_sendingPixelBufferHeight == Height && self->_sendingPixelBufferPixelFormatType == PixelFormatType && self->_crossPlatformRotationDegrees == v10;
  sendingPixelBufferPool = self->_sendingPixelBufferPool;
  if (sendingPixelBufferPool && !v12)
  {
    [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery];
    sendingPixelBufferPool = self->_sendingPixelBufferPool;
  }

  v14 = MEMORY[0x1E695E480];
  v15 = &unk_1ED844000;
  if (sendingPixelBufferPool)
  {
    if (!self->_sendingPixelBufferIsAWeirdSize)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  self->_sendingPixelBufferWidth = Width;
  self->_sendingPixelBufferHeight = Height;
  self->_sendingPixelBufferPixelFormatType = PixelFormatType;
  self->_crossPlatformRotationDegrees = v11;
  if (v11 == 270)
  {
    v16 = Width;
  }

  else
  {
    v16 = Height;
  }

  if (v11 == 270)
  {
    v17 = Height;
  }

  else
  {
    v17 = Width;
  }

  if (v11 == 90)
  {
    v18 = Height;
  }

  else
  {
    Width = v16;
    v18 = v17;
  }

  v99[0] = *MEMORY[0x1E6966208];
  v100[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
  v99[1] = *MEMORY[0x1E69660B8];
  v100[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v99[2] = *MEMORY[0x1E6966130];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sendingPixelBufferPixelFormatType];
  v99[3] = *MEMORY[0x1E69660D8];
  v100[2] = v19;
  v100[3] = MEMORY[0x1E695E0F8];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];
  v97[0] = *MEMORY[0x1E6966160];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:self->_sendingPixelBufferPoolSize];
  v97[1] = *MEMORY[0x1E6966158];
  v98[0] = v21;
  v98[1] = &unk_1F22424F0;
  v22 = CVPixelBufferPoolCreate(*v14, [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2], v20, &self->_sendingPixelBufferPool);
  v15 = &unk_1ED844000;
  v23 = v22;
  if (dword_1ED8441D0)
  {
    v96 = 0;
    v95 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = MEMORY[0x1E695E480];
    v15 = &unk_1ED844000;
  }

  if (v23)
  {
    [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:v23];
    goto LABEL_89;
  }

  v25 = self->_sendingPixelBufferWidth >= 0x4000 && self->_sendingPixelBufferHeight < 0x21;
  self->_sendingPixelBufferIsAWeirdSize = v25;
  if (v25)
  {
LABEL_30:
    if (v15[116])
    {
      v96 = 0;
      v95 = OS_LOG_TYPE_DEFAULT;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = v96;
      if (os_log_type_enabled(v26, v95))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        sendingPixelBufferWidth = self->_sendingPixelBufferWidth;
        sendingPixelBufferHeight = self->_sendingPixelBufferHeight;
        sendingPixelBufferPixelFormatType = self->_sendingPixelBufferPixelFormatType;
        *timingArrayEntriesNeededOut = 136315906;
        *&timingArrayEntriesNeededOut[4] = "[CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:]";
        v88 = 1024;
        v89 = sendingPixelBufferWidth;
        v90 = 1024;
        v91 = sendingPixelBufferHeight;
        v92 = 1024;
        v93 = sendingPixelBufferPixelFormatType;
        LODWORD(v80) = 30;
        v79 = timingArrayEntriesNeededOut;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_37:
  p_sendingPixelTransferSession = &self->_sendingPixelTransferSession;
  if (self->_sendingPixelTransferSession || self->_sendingPixelRotationSession)
  {
    goto LABEL_44;
  }

  v33 = *v14;
  if (!self->_crossPlatformRotationDegrees)
  {
    v41 = VTPixelTransferSessionCreate(v33, &self->_sendingPixelTransferSession);
    if (v41)
    {
      [(CMCaptureFrameSenderService *)v41 _newSampleBufferToSendFromSampleBuffer:v42];
      goto LABEL_89;
    }

    goto LABEL_44;
  }

  v34 = VTPixelRotationSessionCreate(v33, &self->_sendingPixelRotationSession);
  if (v34)
  {
    [(CMCaptureFrameSenderService *)v34 _newSampleBufferToSendFromSampleBuffer:v35];
    goto LABEL_89;
  }

  sendingPixelRotationSession = self->_sendingPixelRotationSession;
  v37 = *MEMORY[0x1E6983D98];
  v38 = FigCaptureVTRotationFromDegrees(360 - self->_crossPlatformRotationDegrees);
  v39 = VTSessionSetProperty(sendingPixelRotationSession, v37, v38);
  if (!v39)
  {
LABEL_44:
    v43 = *v14;
    v44 = CVPixelBufferPoolCreatePixelBuffer(*v14, self->_sendingPixelBufferPool, &pixelBufferOut);
    if (v44)
    {
      [(CMCaptureFrameSenderService *)v44 _newSampleBufferToSendFromSampleBuffer:v45];
      goto LABEL_77;
    }

    if (*p_sendingPixelTransferSession)
    {
      v46 = VTPixelTransferSessionTransferImage(*p_sendingPixelTransferSession, v6, pixelBufferOut);
      if (!v46)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v46 = VTPixelRotationSessionRotateImage(self->_sendingPixelRotationSession, v6, pixelBufferOut);
      if (!v46)
      {
LABEL_47:
        p_sendingSampleBufferFormatDescription = &self->_sendingSampleBufferFormatDescription;
        if (!self->_sendingSampleBufferFormatDescription)
        {
          v49 = CMVideoFormatDescriptionCreateForImageBuffer(v43, pixelBufferOut, &self->_sendingSampleBufferFormatDescription);
          if (v49)
          {
            [(CMCaptureFrameSenderService *)v49 _newSampleBufferToSendFromSampleBuffer:v50];
            goto LABEL_89;
          }
        }

        *timingArrayEntriesNeededOut = 0;
        v51 = *(MEMORY[0x1E6960CF0] + 48);
        *&timingArrayOut.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
        *&timingArrayOut.decodeTimeStamp.value = v51;
        timingArrayOut.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
        v52 = *(MEMORY[0x1E6960CF0] + 16);
        *&timingArrayOut.duration.value = *MEMORY[0x1E6960CF0];
        *&timingArrayOut.duration.epoch = v52;
        SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(buffer, 1, 0, timingArrayEntriesNeededOut);
        if (SampleTimingInfoArray)
        {
          [(CMCaptureFrameSenderService *)SampleTimingInfoArray _newSampleBufferToSendFromSampleBuffer:v54];
          goto LABEL_77;
        }

        if (*timingArrayEntriesNeededOut)
        {
          v55 = CMSampleBufferGetSampleTimingInfoArray(buffer, *timingArrayEntriesNeededOut, &timingArrayOut, timingArrayEntriesNeededOut);
          if (v55)
          {
            [(CMCaptureFrameSenderService *)v55 _newSampleBufferToSendFromSampleBuffer:v56];
            goto LABEL_77;
          }
        }

        v57 = CMSampleBufferCreateForImageBuffer(v43, pixelBufferOut, 1u, 0, 0, *p_sendingSampleBufferFormatDescription, &timingArrayOut, &sampleBufferOut);
        if (v57 == -12743)
        {
          if (*p_sendingSampleBufferFormatDescription)
          {
            CFRelease(*p_sendingSampleBufferFormatDescription);
            *p_sendingSampleBufferFormatDescription = 0;
          }

          v59 = CMVideoFormatDescriptionCreateForImageBuffer(v43, pixelBufferOut, &self->_sendingSampleBufferFormatDescription);
          if (v59)
          {
            [(CMCaptureFrameSenderService *)v59 _newSampleBufferToSendFromSampleBuffer:v60];
            goto LABEL_77;
          }

          v57 = CMSampleBufferCreateForImageBuffer(v43, pixelBufferOut, 1u, 0, 0, *p_sendingSampleBufferFormatDescription, &timingArrayOut, &sampleBufferOut);
        }

        if (v57)
        {
          [(CMCaptureFrameSenderService *)v57 _newSampleBufferToSendFromSampleBuffer:v58];
          goto LABEL_77;
        }

        v61 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
        v62 = [v61 objectForKeyedSubscript:*off_1E798B540];
        v63 = [v61 objectForKeyedSubscript:*off_1E798B238];
        if (objc_msgSend_isEqualToString_(v62))
        {
          LOBYTE(v64) = 0;
        }

        else
        {
          v64 = objc_msgSend_isEqualToString_(v62) ^ 1;
        }

        IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([v63 integerValue]);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v62 forKeyedSubscript:@"PortType"];
        [dictionary setObject:v63 forKeyedSubscript:@"DeviceType"];
        [dictionary setObject:objc_msgSend(v61 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B220), @"DetectedObjectsInfo"}];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", IsExtensionDeviceType), @"IsExternalCamera"}];
        v86[0] = 0x1F216A8D0;
        v86[1] = @"MirroredVertical";
        v86[2] = @"MirroredHorizontal";
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v68 = [v67 countByEnumeratingWithState:&v82 objects:v81 count:16];
        if (!v68)
        {
LABEL_76:
          CMSetAttachment(sampleBufferOut, @"MetadataDictionary", dictionary, 1u);
          goto LABEL_77;
        }

        v69 = v68;
        v70 = *v83;
        v71 = v64 | IsExtensionDeviceType;
LABEL_63:
        v72 = 0;
        while (1)
        {
          if (*v83 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v73 = *(*(&v82 + 1) + 8 * v72);
          v74 = CMGetAttachment(v6, v73, 0);
          if (v71 || !objc_msgSend_isEqualToString_(v73))
          {
            goto LABEL_74;
          }

          v75 = FigCaptureNormalizeAngle([v74 intValue]);
          if (FigCaptureFrontCameraRotationAngle(v75, v76) == 90)
          {
            break;
          }

          if (!FigCaptureCameraRequires180DegreesRotation(1, 0))
          {
            v77 = 180;
            goto LABEL_72;
          }

LABEL_73:
          v74 = [MEMORY[0x1E696AD98] numberWithInt:v75];
LABEL_74:
          [dictionary setObject:v74 forKeyedSubscript:v73];
          if (v69 == ++v72)
          {
            v69 = [v67 countByEnumeratingWithState:&v82 objects:v81 count:16];
            if (!v69)
            {
              goto LABEL_76;
            }

            goto LABEL_63;
          }
        }

        v77 = 90;
LABEL_72:
        v75 = FigCaptureNormalizeAngle(v75 + v77);
        goto LABEL_73;
      }
    }

    [(CMCaptureFrameSenderService *)v46 _newSampleBufferToSendFromSampleBuffer:v47];
    goto LABEL_77;
  }

  [(CMCaptureFrameSenderService *)v39 _newSampleBufferToSendFromSampleBuffer:v40];
LABEL_89:
  [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery:v79];
LABEL_77:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return sampleBufferOut;
}

- (int)sendFrame:(opaqueCMSampleBuffer *)frame
{
  if (frame)
  {
    objc_initWeak(&location, self);
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CMCaptureFrameSenderService_sendFrame___block_invoke;
    block[3] = &unk_1E798FA10;
    objc_copyWeak(v8, &location);
    v8[1] = frame;
    dispatch_async_and_wait(clientQueue, block);
    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }

  return 0;
}

void __41__CMCaptureFrameSenderService_sendFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return;
  }

  v2 = WeakRetained;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = WeakRetained[10];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_49;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v39;
  blockAllocator = *MEMORY[0x1E695E480];
  v30 = v3;
  do
  {
    v11 = 0;
    do
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      if ([v12 connectionIsValid])
      {
        if (v8)
        {
          goto LABEL_31;
        }

        v13 = *(v2 + 16);
        v14 = dispatch_time(0, (*(v2 + 17) * 1000000000.0));
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
        v6 = [v2 _newSampleBufferToSendFromSampleBuffer:*(a1 + 40)];
        if (!v6)
        {
          goto LABEL_30;
        }

        dataPointerOut = 0;
        v45[0] = 0;
        totalLengthOut = 0;
        v7 = xpc_dictionary_create(0, 0, 0);
        if (FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer())
        {
          __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_1();
        }

        else
        {
          IsRangeContiguous = CMBlockBufferIsRangeContiguous(v45[0], 0, 0);
          v16 = v45[0];
          if (IsRangeContiguous)
          {
            goto LABEL_16;
          }

          blockBufferOut = 0;
          v17 = CMBlockBufferCreateContiguous(blockAllocator, v45[0], blockAllocator, 0, 0, 0, 0, &blockBufferOut);
          if (v17)
          {
            __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_2(v17, &blockBufferOut);
          }

          else
          {
            if (v45[0])
            {
              CFRelease(v45[0]);
            }

            v16 = blockBufferOut;
            v45[0] = blockBufferOut;
LABEL_16:
            if (!CMBlockBufferGetDataPointer(v16, 0, 0, &totalLengthOut, &dataPointerOut))
            {
              v18 = xpc_data_create(dataPointerOut, totalLengthOut);
              xpc_dictionary_set_value(v7, "sample-buffer-basic-fields", v18);
              ImageBuffer = CMSampleBufferGetImageBuffer(v6);
              if (ImageBuffer)
              {
                IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
                if (IOSurface)
                {
                  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
                  xpc_dictionary_set_value(v7, "sample-buffer-iosurface", XPCObject);
                  xpc_release(XPCObject);
                }
              }

              v22 = 0;
LABEL_21:
              if (v45[0])
              {
                CFRelease(v45[0]);
              }

              if (v18)
              {
                xpc_release(v18);
              }

              if (v7)
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }

              if (v23 == 1)
              {
                xpc_release(v7);
                v7 = 0;
              }

LABEL_30:
              v3 = v30;
LABEL_31:
              if (v7)
              {
                [v12 sendXCPSampleBuffer:v7];
              }

              v8 = 1;
              goto LABEL_37;
            }

            __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_3();
          }
        }

        v18 = 0;
        v22 = 1;
        goto LABEL_21;
      }

      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v9 addObject:v12];
LABEL_37:
      ++v11;
    }

    while (v5 != v11);
    v24 = [v3 countByEnumeratingWithState:&v38 objects:v37 count:16];
    v5 = v24;
  }

  while (v24);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    xpc_release(v7);
  }

LABEL_49:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v9);
        }

        [*(v2 + 10) removeObject:*(*(&v33 + 1) + 8 * i)];
      }

      v26 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v26);
  }
}

@end