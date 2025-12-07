@interface AVCaptureMetadataOutput
+ (id)_metadataConstantValueToName:(id)name;
+ (void)initialize;
- (AVCaptureMetadataOutput)init;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (BOOL)isAppClipCodeMetadataSupported;
- (BOOL)isAttentionDetectionSupported;
- (BOOL)isFaceOcclusionDetectionSupported;
- (BOOL)isFaceTrackingSupported;
- (BOOL)isHeadMetadataSupported;
- (BOOL)isHumanHandMetadataSupported;
- (BOOL)isOfflineVideoStabilizationMotionMetadataSupported;
- (BOOL)isSceneClassificationMetadataSupported;
- (BOOL)isSynchronizationEnabled;
- (BOOL)isTextRegionMetadataSupported;
- (BOOL)isVideoPreviewHistogramMetadataSupported;
- (CGRect)rectOfInterest;
- (NSArray)availableMetadataObjectTypes;
- (NSArray)metadataObjectTypes;
- (NSArray)requiredMetadataObjectTypesForCinematicVideoCapture;
- (float)motionToWakeTargetFrameRate;
- (float)objectDetectionTargetFrameRate;
- (id)_metadataIdentifiers;
- (id)_newEmitTimerForSynchronizedMetadataCollections:(id)collections;
- (id)metadataIdentifiersForMetadataObjectTypes:(id)types;
- (id)metadataObjectTypesForMetadataIdentifiers:(id)identifiers;
- (id)metadataObjectTypesSupportingZeroFrameDelaySynchronization;
- (id)supportedMetadataObjectTypesForFrameRateControl;
- (unint64_t)maxSynchronizationFrameDelay;
- (void)_emitCollections:(id)collections;
- (void)_emitSyncedCollections:(id)collections;
- (void)_flushSynchronizedMetadataCollectionsQueue;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_processSynchronizationWithCollections:(id)collections withCorrespondingMetadataObjectTypes:(id)types;
- (void)_removeMetadataObjectTypeFromMetadataObjectTypes:(id)types;
- (void)_removeMetadataObjectTypesFromMetadataObjectTypes:(id)types;
- (void)_updateLocalQueue:(localQueueOpaque *)queue;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue;
- (void)_updateSynchronizationEnabledStatus;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setAppClipCodeMetadataObjectTypeAvailable:(BOOL)available;
- (void)setAttentionDetectionEnabled:(BOOL)enabled;
- (void)setAttentionForFaceIDReadinessRequired:(BOOL)required;
- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue;
- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata;
- (void)setFaceOcclusionDetectionEnabled:(BOOL)enabled;
- (void)setFaceTrackingFailureFieldOfViewModifier:(float)modifier;
- (void)setFaceTrackingMaxFaces:(int64_t)faces;
- (void)setFaceTrackingMetadataObjectTypesAvailable:(BOOL)available;
- (void)setFaceTrackingNetworkFailureThresholdMultiplier:(float)multiplier;
- (void)setFaceTrackingPlusEnabled:(BOOL)enabled;
- (void)setFaceTrackingSuspended:(BOOL)suspended;
- (void)setFaceTrackingUsesFaceRecognition:(BOOL)recognition;
- (void)setHeadMetadataObjectTypesAvailable:(BOOL)available;
- (void)setHumanHandMetadataObjectTypeAvailable:(BOOL)available;
- (void)setMaxSynchronizationFrameDelay:(unint64_t)delay;
- (void)setMetadataObjectTypes:(NSArray *)metadataObjectTypes;
- (void)setMetadataObjectsDelegate:(id)objectsDelegate queue:(dispatch_queue_t)objectsCallbackQueue;
- (void)setOfflineVideoStabilizationMotionMetadataObjectTypesAvailable:(BOOL)available;
- (void)setPeriocularForFaceIDReadinessEnabled:(BOOL)enabled;
- (void)setRectOfInterest:(CGRect)rectOfInterest;
- (void)setSceneClassificationMetadataObjectTypeAvailable:(BOOL)available;
- (void)setSynchronizationEnabled:(BOOL)enabled;
- (void)setTargetFrameRate:(float)rate forMetadataObjectType:(id)type;
- (void)setTextRegionMetadataObjectTypeAvailable:(BOOL)available;
- (void)setVideoPreviewHistogramMetadataObjectTypesAvailable:(BOOL)available;
@end

@implementation AVCaptureMetadataOutput

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVCaptureMetadataOutput)init
{
  v10.receiver = self;
  v10.super_class = AVCaptureMetadataOutput;
  initSubclass = [(AVCaptureOutput *)&v10 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureMetadataOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      v3->rectOfInterest.origin.x = 0.0;
      v3->rectOfInterest.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      v3->rectOfInterest.size = _Q0;
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
}

- (NSArray)metadataObjectTypes
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureMetadataOutputCapturesFacesByDefault") && !self->_internal->metadataObjectTypes && [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "isFaceDetectionSupported"}])
  {
    v8 = @"face";
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  else
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    metadataObjectTypes = self->_internal->metadataObjectTypes;
    if (metadataObjectTypes)
    {
      array = [(NSArray *)metadataObjectTypes copy];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v3 = array;
    objc_sync_exit(internal);
  }

  return v3;
}

- (BOOL)isVideoPreviewHistogramMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991490];

  return [v2 containsObject:v3];
}

- (BOOL)isAppClipCodeMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991478];

  return [v2 containsObject:v3];
}

- (BOOL)isTextRegionMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991480];

  return [v2 containsObject:v3];
}

- (BOOL)isHeadMetadataSupported
{
  v2 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v3 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  if ([v3 containsObject:*MEMORY[0x1E6991470]])
  {
    return 1;
  }

  v4 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  if ([v4 containsObject:*MEMORY[0x1E6960370]])
  {
    return 1;
  }

  v6 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  v7 = *MEMORY[0x1E6960380];

  return [v6 containsObject:v7];
}

- (NSArray)availableMetadataObjectTypes
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (void)_updateSynchronizationEnabledStatus
{
  v3 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypes](self, "metadataObjectTypes")}];
  if ([(AVCaptureMetadataOutput *)self metadataObjectTypesSupportingZeroFrameDelaySynchronization])
  {
    [v3 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[AVCaptureMetadataOutput metadataObjectTypesSupportingZeroFrameDelaySynchronization](self, "metadataObjectTypesSupportingZeroFrameDelaySynchronization"))}];
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  synchronizationEnabled = self->_internal->synchronizationEnabled;
  if ([(NSArray *)[(AVCaptureMetadataOutput *)self metadataObjectTypes] count]== 1)
  {
    synchronizationEnabledByClient = 0;
    v7 = self->_internal;
  }

  else
  {
    v8 = [v3 count];
    v7 = self->_internal;
    if (v8)
    {
      synchronizationEnabledByClient = v7->synchronizationEnabledByClient;
    }

    else
    {
      synchronizationEnabledByClient = 1;
    }
  }

  v7->synchronizationEnabled = synchronizationEnabledByClient;
  v9 = self->_internal->synchronizationEnabled;
  objc_sync_exit(internal);
  if (synchronizationEnabled != v9)
  {

    [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  }
}

- (id)metadataObjectTypesSupportingZeroFrameDelaySynchronization
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiersForZeroFrameDelaySynchronization"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (id)_metadataIdentifiers
{
  metadataObjectTypes = [(AVCaptureMetadataOutput *)self metadataObjectTypes];

  return [(AVCaptureMetadataOutput *)self metadataIdentifiersForMetadataObjectTypes:metadataObjectTypes];
}

- (CGRect)rectOfInterest
{
  internal = self->_internal;
  x = internal->rectOfInterest.origin.x;
  y = internal->rectOfInterest.origin.y;
  width = internal->rectOfInterest.size.width;
  height = internal->rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)objectDetectionTargetFrameRate
{
  v3 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v4 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypesForMetadataIdentifiers:](self, "metadataObjectTypesForMetadataIdentifiers:", objc_msgSend_objectForKeyedSubscript_(objc_msgSend(-[AVCaptureConnection sourceDevice](v3, "sourceDevice"), "availableMetadataKeyGroups")))}];
  v5 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypes](self, "metadataObjectTypes")}];
  [v5 intersectSet:v4];
  v6 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSDictionary allKeys](self->_internal->targetFrameRateByMetadataObjectType, "allKeys")}];
  [v6 intersectSet:v4];
  v7 = [v6 isEqualToSet:v5];
  result = 0.0;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      v12 = &unk_1F1CEA6B0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          if (v12 <= objc_msgSend_objectForKeyedSubscript_(self->_internal->targetFrameRateByMetadataObjectType))
          {
            v12 = objc_msgSend_objectForKeyedSubscript_(self->_internal->targetFrameRateByMetadataObjectType);
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = &unk_1F1CEA6B0;
    }

    [v12 floatValue];
  }

  return result;
}

- (float)motionToWakeTargetFrameRate
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_internal->targetFrameRateByMetadataObjectType, a2, @"MotionToWake");

  [v2 floatValue];
  return result;
}

- (void)_flushSynchronizedMetadataCollectionsQueue
{
  internal = self->_internal;
  objc_sync_enter(internal);

  self->_internal->synchronizedMetadataCollectionsQueue = 0;

  objc_sync_exit(internal);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setMetadataObjectsDelegate:(id)objectsDelegate queue:(dispatch_queue_t)objectsCallbackQueue
{
  if (AVCaptureIsRunningInMediaserverd(self, a2))
  {
    objectsCallbackQueue = 0;
  }

  [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"metadataObjectsDelegate"];
  v10 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:objectsDelegate clientCallbackQueue:objectsCallbackQueue exceptionReason:&v10])
  {
    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"metadataObjectsDelegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    v8 = [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"metadataObjectsDelegate"];
    if (AVCaptureShouldThrowForAPIViolations(v8, v9))
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (id)metadataObjectTypesForMetadataIdentifiers:(id)identifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if (metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionaryOnceToken != -1)
  {
    [AVCaptureMetadataOutput metadataObjectTypesForMetadataIdentifiers:];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [identifiers countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary);
        internal = self->_internal;
        if (internal->faceTrackingMetadataObjectTypesAvailable && v10 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        else
        {
          v13 = v10;
        }

        if (internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->videoPreviewHistogramMetadataObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->appClipCodeObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->textRegionObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->sceneClassificationObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->headObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary);
          internal = self->_internal;
        }

        if (internal->humanHandObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary);
        }

        if (v13)
        {
          [array addObject:?];
        }
      }

      v7 = [identifiers countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }

  return array;
}

id __69__AVCaptureMetadataOutput_metadataObjectTypesForMetadataIdentifiers___block_invoke()
{
  v0 = *MEMORY[0x1E69877B8];
  v27[0] = *MEMORY[0x1E69877B0];
  v27[1] = v0;
  v28[0] = @"face";
  v28[1] = @"humanBody";
  v27[2] = @"mdta/com.apple.quicktime.detected-human-full-body";
  v27[3] = @"mdta/com.apple.quicktime.detected-cat-head";
  v28[2] = @"humanFullBody";
  v28[3] = @"catHead";
  v27[4] = *MEMORY[0x1E69877A0];
  v27[5] = @"mdta/com.apple.quicktime.detected-dog-head";
  v28[4] = @"catBody";
  v28[5] = @"dogHead";
  v1 = *MEMORY[0x1E69877C0];
  v27[6] = *MEMORY[0x1E69877A8];
  v27[7] = v1;
  v28[6] = @"dogBody";
  v28[7] = @"salientObject";
  v27[8] = @"mdta/com.apple.quicktime.detected-machine-readable-code.UPCE";
  v27[9] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39";
  v28[8] = @"org.gs1.UPC-E";
  v28[9] = @"org.iso.Code39";
  v27[10] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39Checksum";
  v27[11] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN13";
  v28[10] = @"org.iso.Code39Mod43";
  v28[11] = @"org.gs1.EAN-13";
  v27[12] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN8";
  v27[13] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code93";
  v28[12] = @"org.gs1.EAN-8";
  v28[13] = @"com.intermec.Code93";
  v27[14] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code128";
  v27[15] = @"mdta/com.apple.quicktime.detected-machine-readable-code.QR";
  v28[14] = @"org.iso.Code128";
  v28[15] = @"org.iso.QRCode";
  v27[16] = @"mdta/com.apple.quicktime.detected-machine-readable-code.PDF417";
  v27[17] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Aztec";
  v28[16] = @"org.iso.PDF417";
  v28[17] = @"org.iso.Aztec";
  v27[18] = @"mdta/com.apple.quicktime.detected-machine-readable-code.DataMatrix";
  v27[19] = @"mdta/com.apple.quicktime.detected-machine-readable-code.I2of5";
  v28[18] = @"org.iso.DataMatrix";
  v28[19] = @"org.ansi.Interleaved2of5";
  v27[20] = @"mdta/com.apple.quicktime.detected-machine-readable-code.ITF14";
  v27[21] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Codabar";
  v28[20] = @"org.gs1.ITF14";
  v28[21] = @"Codabar";
  v27[22] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBar";
  v27[23] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarExpanded";
  v28[22] = @"org.gs1.GS1DataBar";
  v28[23] = @"org.gs1.GS1DataBarExpanded";
  v27[24] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarLimited";
  v27[25] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroQR";
  v28[24] = @"org.gs1.GS1DataBarLimited";
  v28[25] = @"org.iso.MicroQR";
  v27[26] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroPDF417";
  v27[27] = @"mdta/com.apple.quicktime.eye-relief-status";
  v28[26] = @"org.iso.MicroPDF417";
  v28[27] = @"EyeReliefStatus";
  v27[28] = @"mdta/com.apple.quicktime.faceid-readiness";
  v27[29] = @"mdta/com.apple.quicktime.motion-to-wake";
  v28[28] = @"FaceIDReadiness";
  v28[29] = @"MotionToWake";
  metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:30];
  v2 = metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary;
  v25 = *MEMORY[0x1E69629E8];
  v26 = @"trackedFaces";
  metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v3 = metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary;
  v23 = *MEMORY[0x1E69629D8];
  v24 = @"offlineVideoStabilizationMotion";
  metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v4 = metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary;
  v21 = @"mdta/com.apple.quicktime.video-preview-histogram";
  v22 = @"videoPreviewHistogram";
  metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v5 = metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary;
  v19 = @"mdta/com.apple.quicktime.detected-machine-readable-code.AppClipCode";
  v20 = @"com.apple.AppClipCode";
  metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v6 = metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary;
  v17 = @"mdta/com.apple.quicktime.detected-text-region";
  v18 = @"textRegion";
  metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v7 = metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary;
  v15 = @"mdta/com.apple.quicktime.scene-classification";
  v16 = @"sceneClassification";
  metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v8 = metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary;
  v13[0] = @"mdta/com.apple.quicktime.detected-human-head";
  v13[1] = @"mdta/com.apple.quicktime.detected-cat-head";
  v14[0] = @"humanHead";
  v14[1] = @"catHead";
  v13[2] = @"mdta/com.apple.quicktime.detected-dog-head";
  v14[2] = @"dogHead";
  metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v9 = metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary;
  v11 = @"mdta/com.apple.quicktime.detected-human-hand";
  v12 = @"humanHand";
  metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  return metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary;
}

- (void)setMetadataObjectTypes:(NSArray *)metadataObjectTypes
{
  if (metadataObjectTypes)
  {
    availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self availableMetadataObjectTypes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(NSArray *)metadataObjectTypes countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(metadataObjectTypes);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (![(NSArray *)availableMetadataObjectTypes containsObject:v10])
          {
            v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, v10}];
            if (AVCaptureShouldThrowForAPIViolations(v13, v14))
            {
              objc_exception_throw(v13);
            }

            NSLog(&cfstr_SuppressingExc.isa, v13);
            return;
          }
        }

        v7 = [(NSArray *)metadataObjectTypes countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v12 = self->_internal->metadataObjectTypes;
  if (v12 == metadataObjectTypes || [(NSArray *)v12 isEqualToArray:metadataObjectTypes])
  {
    objc_sync_exit(internal);
  }

  else
  {

    self->_internal->metadataObjectTypes = [(NSArray *)metadataObjectTypes copy];
    objc_sync_exit(internal);
    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (NSArray)requiredMetadataObjectTypesForCinematicVideoCapture
{
  v3[0] = @"face";
  v3[1] = @"humanBody";
  v3[2] = @"catHead";
  v3[3] = @"catBody";
  v3[4] = @"dogHead";
  v3[5] = @"dogBody";
  v3[6] = @"salientObject";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
}

- (id)metadataIdentifiersForMetadataObjectTypes:(id)types
{
  if (metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionaryOnceToken != -1)
  {
    [AVCaptureMetadataOutput metadataIdentifiersForMetadataObjectTypes:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [types countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(types);
        }

        v10 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary);
        internal = self->_internal;
        if (internal->faceTrackingMetadataObjectTypesAvailable && v10 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        else
        {
          v13 = v10;
        }

        if (internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->videoPreviewHistogramMetadataObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->appClipCodeObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->textRegionObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->sceneClassificationObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->headObjectTypesAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary);
          internal = self->_internal;
        }

        if (internal->humanHandObjectTypeAvailable && v13 == 0)
        {
          v13 = objc_msgSend_objectForKeyedSubscript_(metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary);
        }

        if (v13)
        {
          [array addObject:?];
        }
      }

      v7 = [types countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }

  return array;
}

id __69__AVCaptureMetadataOutput_metadataIdentifiersForMetadataObjectTypes___block_invoke()
{
  v0 = *MEMORY[0x1E69877B0];
  v30[0] = @"face";
  v30[1] = @"humanBody";
  v1 = *MEMORY[0x1E69877B8];
  v31[0] = v0;
  v31[1] = v1;
  v30[2] = @"humanFullBody";
  v30[3] = @"catBody";
  v2 = *MEMORY[0x1E69877A0];
  v31[2] = @"mdta/com.apple.quicktime.detected-human-full-body";
  v31[3] = v2;
  v3 = *MEMORY[0x1E69877A8];
  v30[4] = @"dogBody";
  v30[5] = @"salientObject";
  v4 = *MEMORY[0x1E69877C0];
  v31[4] = v3;
  v31[5] = v4;
  v30[6] = @"catHead";
  v30[7] = @"dogHead";
  v31[6] = @"mdta/com.apple.quicktime.detected-cat-head";
  v31[7] = @"mdta/com.apple.quicktime.detected-dog-head";
  v30[8] = @"org.gs1.UPC-E";
  v30[9] = @"org.iso.Code39";
  v31[8] = @"mdta/com.apple.quicktime.detected-machine-readable-code.UPCE";
  v31[9] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39";
  v30[10] = @"org.iso.Code39Mod43";
  v30[11] = @"org.gs1.EAN-13";
  v31[10] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39Checksum";
  v31[11] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN13";
  v30[12] = @"org.gs1.EAN-8";
  v30[13] = @"com.intermec.Code93";
  v31[12] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN8";
  v31[13] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code93";
  v30[14] = @"org.iso.Code128";
  v30[15] = @"org.iso.QRCode";
  v31[14] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code128";
  v31[15] = @"mdta/com.apple.quicktime.detected-machine-readable-code.QR";
  v30[16] = @"org.iso.PDF417";
  v30[17] = @"org.iso.Aztec";
  v31[16] = @"mdta/com.apple.quicktime.detected-machine-readable-code.PDF417";
  v31[17] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Aztec";
  v30[18] = @"org.iso.DataMatrix";
  v30[19] = @"org.ansi.Interleaved2of5";
  v31[18] = @"mdta/com.apple.quicktime.detected-machine-readable-code.DataMatrix";
  v31[19] = @"mdta/com.apple.quicktime.detected-machine-readable-code.I2of5";
  v30[20] = @"org.gs1.ITF14";
  v30[21] = @"Codabar";
  v31[20] = @"mdta/com.apple.quicktime.detected-machine-readable-code.ITF14";
  v31[21] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Codabar";
  v30[22] = @"org.gs1.GS1DataBar";
  v30[23] = @"org.gs1.GS1DataBarExpanded";
  v31[22] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBar";
  v31[23] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarExpanded";
  v30[24] = @"org.gs1.GS1DataBarLimited";
  v30[25] = @"org.iso.MicroQR";
  v31[24] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarLimited";
  v31[25] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroQR";
  v30[26] = @"org.iso.MicroPDF417";
  v30[27] = @"EyeReliefStatus";
  v31[26] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroPDF417";
  v31[27] = @"mdta/com.apple.quicktime.eye-relief-status";
  v30[28] = @"FaceIDReadiness";
  v30[29] = @"MotionToWake";
  v31[28] = @"mdta/com.apple.quicktime.faceid-readiness";
  v31[29] = @"mdta/com.apple.quicktime.motion-to-wake";
  metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:30];
  v5 = metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary;
  v28 = @"trackedFaces";
  v29 = *MEMORY[0x1E69629E8];
  metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v6 = metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary;
  v26 = @"offlineVideoStabilizationMotion";
  v27 = *MEMORY[0x1E69629D8];
  metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v7 = metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary;
  v24 = @"videoPreviewHistogram";
  v25 = @"mdta/com.apple.quicktime.video-preview-histogram";
  metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v8 = metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary;
  v22 = @"com.apple.AppClipCode";
  v23 = @"mdta/com.apple.quicktime.detected-machine-readable-code.AppClipCode";
  metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v9 = metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary;
  v20 = @"textRegion";
  v21 = @"mdta/com.apple.quicktime.detected-text-region";
  metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v10 = metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary;
  v18 = @"sceneClassification";
  v19 = @"mdta/com.apple.quicktime.scene-classification";
  metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v11 = metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary;
  v16[0] = @"humanHead";
  v16[1] = @"catHead";
  v17[0] = @"mdta/com.apple.quicktime.detected-human-head";
  v17[1] = @"mdta/com.apple.quicktime.detected-cat-head";
  v16[2] = @"dogHead";
  v17[2] = @"mdta/com.apple.quicktime.detected-dog-head";
  metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v12 = metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary;
  v14 = @"humanHand";
  v15 = @"mdta/com.apple.quicktime.detected-human-hand";
  metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  return metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary;
}

- (void)setRectOfInterest:(CGRect)rectOfInterest
{
  height = rectOfInterest.size.height;
  width = rectOfInterest.size.width;
  y = rectOfInterest.origin.y;
  x = rectOfInterest.origin.x;
  if (!CGRectEqualToRect(self->_internal->rectOfInterest, rectOfInterest))
  {
    internal = self->_internal;
    internal->rectOfInterest.origin.x = x;
    internal->rectOfInterest.origin.y = y;
    internal->rectOfInterest.size.width = width;
    internal->rectOfInterest.size.height = height;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  if (![objc_msgSend(connection "mediaType")])
  {
    v7 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v7 = 2;
LABEL_5:
    v8 = AVCaptureOutputConnectionFailureReasonString(v7, self, connection);
    result = 0;
    *reason = v8;
    return result;
  }

  return 1;
}

- (BOOL)isFaceTrackingSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E69629E8];

  return [v2 containsObject:v3];
}

- (void)setFaceTrackingMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    if (self->_internal->faceTrackingMetadataObjectTypesAvailable != availableCopy)
    {
      [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
      self->_internal->faceTrackingMetadataObjectTypesAvailable = availableCopy;
      if (!availableCopy)
      {
        [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"trackedFaces"];
      }

      [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (void)setFaceTrackingMaxFaces:(int64_t)faces
{
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingMaxFaces != faces)
    {
      internal->faceTrackingMaxFaces = faces;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setFaceTrackingUsesFaceRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingUsesFaceRecognition != recognitionCopy)
    {
      internal->faceTrackingUsesFaceRecognition = recognitionCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setFaceTrackingPlusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingPlusEnabled != enabledCopy)
    {
      internal->faceTrackingPlusEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setFaceTrackingNetworkFailureThresholdMultiplier:(float)multiplier
{
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingNetworkFailureThresholdMultiplier != multiplier)
    {
      internal->faceTrackingNetworkFailureThresholdMultiplier = multiplier;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setFaceTrackingSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingSuspended != suspendedCopy)
    {
      internal->faceTrackingSuspended = suspendedCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setFaceTrackingFailureFieldOfViewModifier:(float)modifier
{
  if (![(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  v6 = modifier <= 1.0 && modifier >= 0.0;
  if (modifier != -1.0 && !v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
LABEL_12:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v9, v10))
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return;
  }

  internal = self->_internal;
  if (internal->faceTrackingFailureFieldOfViewModifier != modifier)
  {
    internal->faceTrackingFailureFieldOfViewModifier = modifier;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)isAttentionDetectionSupported
{
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];

  return [sourceDevice isAttentionDetectionSupported];
}

- (void)setAttentionDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureMetadataOutput *)self isAttentionDetectionSupported])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->attentionDetectionEnabled != enabledCopy)
    {
      internal->attentionDetectionEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setPeriocularForFaceIDReadinessEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(NSArray *)[(AVCaptureMetadataOutput *)self availableMetadataObjectTypes] containsObject:@"FaceIDReadiness"])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->periocularForFaceIDReadinessEnabled != enabledCopy)
    {
      internal->periocularForFaceIDReadinessEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setAttentionForFaceIDReadinessRequired:(BOOL)required
{
  requiredCopy = required;
  if (required && ![(NSArray *)[(AVCaptureMetadataOutput *)self availableMetadataObjectTypes] containsObject:@"FaceIDReadiness"])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->attentionForFaceIDReadinessRequired != requiredCopy)
    {
      internal->attentionForFaceIDReadinessRequired = requiredCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (BOOL)isFaceOcclusionDetectionSupported
{
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];

  return [sourceDevice isFaceOcclusionDetectionSupported];
}

- (void)setFaceOcclusionDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureMetadataOutput *)self isFaceOcclusionDetectionSupported])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->faceOcclusionDetectionEnabled != enabledCopy)
    {
      internal->faceOcclusionDetectionEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (id)supportedMetadataObjectTypesForFrameRateControl
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataIdentifiersForFrameRateControl"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (void)setTargetFrameRate:(float)rate forMetadataObjectType:(id)type
{
  if ([-[AVCaptureMetadataOutput supportedMetadataObjectTypesForFrameRateControl](self "supportedMetadataObjectTypesForFrameRateControl")])
  {
    targetFrameRateByMetadataObjectType = self->_internal->targetFrameRateByMetadataObjectType;
    if (targetFrameRateByMetadataObjectType)
    {
      dictionary = [(NSDictionary *)targetFrameRateByMetadataObjectType mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = dictionary;
    if (rate <= 0.0)
    {
      v13 = 0;
    }

    else
    {
      *&v9 = rate;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    }

    [(NSDictionary *)v12 setObject:v13 forKeyedSubscript:type];
    v14 = self->_internal->targetFrameRateByMetadataObjectType;
    if (v12 != v14 && ![(NSDictionary *)v14 isEqualToDictionary:v12])
    {

      self->_internal->targetFrameRateByMetadataObjectType = [(NSDictionary *)v12 copy];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v10, v11))
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }
}

- (BOOL)isOfflineVideoStabilizationMotionMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E69629D8];

  return [v2 containsObject:v3];
}

- (void)setOfflineVideoStabilizationMotionMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if ([(AVCaptureMetadataOutput *)self isOfflineVideoStabilizationMotionMetadataSupported])
  {
    if (self->_internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable != availableCopy)
    {
      [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
      self->_internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable = availableCopy;
      if (!availableCopy)
      {
        [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"offlineVideoStabilizationMotion"];
      }

      [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (void)setVideoPreviewHistogramMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isVideoPreviewHistogramMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->videoPreviewHistogramMetadataObjectTypesAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->videoPreviewHistogramMetadataObjectTypesAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"videoPreviewHistogram"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setAppClipCodeMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isAppClipCodeMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->appClipCodeObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->appClipCodeObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"com.apple.AppClipCode"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setTextRegionMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isTextRegionMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->textRegionObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->textRegionObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"textRegion"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (BOOL)isSceneClassificationMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991488];

  return [v2 containsObject:v3];
}

- (void)setSceneClassificationMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isSceneClassificationMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->sceneClassificationObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->sceneClassificationObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"sceneClassification"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setHeadMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isHeadMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->headObjectTypesAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->headObjectTypesAvailable = availableCopy;
    if (!availableCopy)
    {
      v7[0] = @"humanHead";
      v7[1] = @"catHead";
      v7[2] = @"dogHead";
      -[AVCaptureMetadataOutput _removeMetadataObjectTypesFromMetadataObjectTypes:](self, "_removeMetadataObjectTypesFromMetadataObjectTypes:", [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3]);
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (BOOL)isHumanHandMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991468];

  return [v2 containsObject:v3];
}

- (void)setHumanHandMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isHumanHandMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->humanHandObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->humanHandObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"humanHand"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata
{
  internal = self->_internal;
  if (internal->emitsEmptyObjectDetectionMetadata != metadata)
  {
    internal->emitsEmptyObjectDetectionMetadata = metadata;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)isSynchronizationEnabled
{
  selfCopy = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(selfCopy) = selfCopy->_internal->synchronizationEnabledByClient;
  objc_sync_exit(internal);
  return selfCopy;
}

- (void)setSynchronizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v6->synchronizationEnabledByClient == enabledCopy)
  {
    objc_sync_exit(internal);

    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
  }

  else
  {
    v6->synchronizationEnabledByClient = enabledCopy;
    objc_sync_exit(internal);
    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
    if (!enabledCopy)
    {

      [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
    }
  }
}

- (unint64_t)maxSynchronizationFrameDelay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  maxSynchronizationFrameDelay = self->_internal->maxSynchronizationFrameDelay;
  objc_sync_exit(internal);
  return maxSynchronizationFrameDelay;
}

- (void)setMaxSynchronizationFrameDelay:(unint64_t)delay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->maxSynchronizationFrameDelay = delay;

  objc_sync_exit(internal);
}

+ (id)_metadataConstantValueToName:(id)name
{
  if (_metadataConstantValueToName__sMetadataConstantToMetadataNameDictionaryOnceToken != -1)
  {
    +[AVCaptureMetadataOutput _metadataConstantValueToName:];
  }

  result = objc_msgSend_objectForKeyedSubscript_(_metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary);
  if (!result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not mapped! Please file a radar against %s", name, FigCaptureGetFrameworkRadarComponentName()];
  }

  return result;
}

id __56__AVCaptureMetadataOutput__metadataConstantValueToName___block_invoke()
{
  v1[0] = @"face";
  v1[1] = @"humanHead";
  v2[0] = @"AVMetadataObjectTypeFace";
  v2[1] = @"AVMetadataObjectTypeHumanHead";
  v1[2] = @"humanBody";
  v1[3] = @"humanFullBody";
  v2[2] = @"AVMetadataObjectTypeHumanBody";
  v2[3] = @"AVMetadataObjectTypeHumanFullBody";
  v1[4] = @"humanHand";
  v1[5] = @"dogHead";
  v2[4] = @"AVMetadataObjectTypeHumanHand";
  v2[5] = @"AVMetadataObjectTypeDogHead";
  v1[6] = @"dogBody";
  v1[7] = @"catHead";
  v2[6] = @"AVMetadataObjectTypeDogBody";
  v2[7] = @"AVMetadataObjectTypeCatHead";
  v1[8] = @"catBody";
  v1[9] = @"salientObject";
  v2[8] = @"AVMetadataObjectTypeCatBody";
  v2[9] = @"AVMetadataObjectTypeSalientObject";
  v1[10] = @"saliencyHeatMap";
  v1[11] = @"trackedFaces";
  v2[10] = @"AVMetadataObjectTypeSaliencyHeatMap";
  v2[11] = @"AVMetadataObjectTypeTrackedFaces";
  v1[12] = @"org.gs1.UPC-E";
  v1[13] = @"org.iso.Code39";
  v2[12] = @"AVMetadataObjectTypeUPCECode";
  v2[13] = @"AVMetadataObjectTypeCode39Code";
  v1[14] = @"org.iso.Code39Mod43";
  v1[15] = @"org.gs1.EAN-13";
  v2[14] = @"AVMetadataObjectTypeCode39Mod43Code";
  v2[15] = @"AVMetadataObjectTypeEAN13Code";
  v1[16] = @"org.gs1.EAN-8";
  v1[17] = @"com.intermec.Code93";
  v2[16] = @"AVMetadataObjectTypeEAN8Code";
  v2[17] = @"AVMetadataObjectTypeCode93Code";
  v1[18] = @"org.iso.Code128";
  v1[19] = @"org.iso.QRCode";
  v2[18] = @"AVMetadataObjectTypeCode128Code";
  v2[19] = @"AVMetadataObjectTypeQRCode";
  v1[20] = @"org.iso.PDF417";
  v1[21] = @"org.iso.Aztec";
  v2[20] = @"AVMetadataObjectTypePDF417Code";
  v2[21] = @"AVMetadataObjectTypeAztecCode";
  v1[22] = @"org.iso.DataMatrix";
  v1[23] = @"org.ansi.Interleaved2of5";
  v2[22] = @"AVMetadataObjectTypeDataMatrixCode";
  v2[23] = @"AVMetadataObjectTypeInterleaved2of5Code";
  v1[24] = @"org.gs1.ITF14";
  v1[25] = @"offlineVideoStabilizationMotion";
  v2[24] = @"AVMetadataObjectTypeITF14Code";
  v2[25] = @"AVMetadataObjectTypeOfflineVideoStabilizationMotion";
  v1[26] = @"videoPreviewHistogram";
  v1[27] = @"com.apple.AppClipCode";
  v2[26] = @"AVMetadataObjectTypeVideoPreviewHistogram";
  v2[27] = @"AVMetadataObjectTypeAppClipCode";
  v1[28] = @"textRegion";
  v1[29] = @"sceneClassification";
  v2[28] = @"AVMetadataObjectTypeTextRegion";
  v2[29] = @"AVMetadataObjectTypeSceneClassification";
  _metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:30];
  return _metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary;
}

- (void)_removeMetadataObjectTypeFromMetadataObjectTypes:(id)types
{
  internal = self->_internal;
  objc_sync_enter(internal);
  metadataObjectTypes = self->_internal->metadataObjectTypes;
  if ([(NSArray *)metadataObjectTypes containsObject:types])
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:metadataObjectTypes];
    [(NSArray *)v7 removeObject:types];
    self->_internal->metadataObjectTypes = v7;
  }

  objc_sync_exit(internal);
}

- (void)_removeMetadataObjectTypesFromMetadataObjectTypes:(id)types
{
  internal = self->_internal;
  objc_sync_enter(internal);
  metadataObjectTypes = self->_internal->metadataObjectTypes;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:metadataObjectTypes];
  [(NSArray *)v7 removeObjectsInArray:types];
  v8 = [(NSArray *)v7 count];
  if (v8 != [(NSArray *)metadataObjectTypes count])
  {
    self->_internal->metadataObjectTypes = v7;
  }

  objc_sync_exit(internal);
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session];
  v6.receiver = self;
  v6.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend_objectForKeyedSubscript_(payload a2])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = objc_msgSend_objectForKeyedSubscript_(payload);

      [(AVCaptureMetadataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(payload);

      [(AVCaptureMetadataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue
{
  v5 = self->_internal->weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", queue, [MessageReceiver copy]);
}

void __46__AVCaptureMetadataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [*(v7[2] + 8) releaseRemoteQueueReceiver];
    }

    else if (!a2)
    {
      [v7 _handleRemoteQueueOperation:a3];
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation
{
  if (operation->var0 == 3)
  {
    [(AVCaptureMetadataOutput *)self _processSampleBuffer:operation->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)queue
{
  v5 = self->_internal->weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVCaptureMetadataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", queue, [v6 copy]);
}

void __45__AVCaptureMetadataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    v8 = *(a2 + 4);
    [v5 _handleLocalQueueMessage:&v7];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message
{
  if (message->var0 == 3)
  {
    [(AVCaptureMetadataOutput *)self _processSampleBuffer:*(&message->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v6 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](v5 "inputPorts")];
  v202 = self->_internal->metadataObjectTypes;
  objc_sync_exit(internal);
  if (!-[AVCaptureConnection isLive](v5, "isLive") || ![-[AVCaptureOutput session](self "session")] || (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) != 0)
  {
    goto LABEL_248;
  }

  array = [MEMORY[0x1E695DF70] array];
  sourcesFromFrontFacingCamera = [(AVCaptureConnection *)v5 sourcesFromFrontFacingCamera];
  v8 = v5;
  v9 = sourcesFromFrontFacingCamera;
  v195 = v8;
  LOBYTE(v10) = 0;
  if (AVCapturePlatformMountsCamerasInLandscapeOrientation(sourcesFromFrontFacingCamera, [(AVCaptureConnection *)v8 sourcesFromExternalCamera]) && v9)
  {
    v10 = FigCaptureCameraRequires180DegreesRotation() ^ 1;
  }

  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_msgSend(objc_msgSend(v6 "device")];
  }

  else
  {
    v11 = 0;
  }

  bufferCopy6 = buffer;
  v13 = CMGetAttachment(buffer, *MEMORY[0x1E6990D10], 0);
  v14 = MEMORY[0x1E6960C70];
  if (!v13)
  {
    goto LABEL_157;
  }

  v15 = v13;
  v192 = v11;
  v193 = v10;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  a = *v14;
  b_high = *(v14 + 12);
  b_low = *(v14 + 8);
  c = *(v14 + 16);
  v287 = 0u;
  v288 = 0u;
  v289 = 0u;
  v290 = 0u;
  v214 = [v15 countByEnumeratingWithState:&v287 objects:&v293 count:16];
  if (!v214)
  {
    v210 = b_high;
    v71 = 1;
    goto LABEL_128;
  }

  array2 = 0;
  v213 = *v288;
  v212 = *MEMORY[0x1E6990E98];
  v206 = *MEMORY[0x1E6990E90];
  v205 = *MEMORY[0x1E6990EA0];
  v204 = *MEMORY[0x1E6990E70];
  v203 = *MEMORY[0x1E6990E80];
  v200 = *MEMORY[0x1E6990EB8];
  v198 = *MEMORY[0x1E6990EB0];
  v196 = *MEMORY[0x1E6990E78];
  v194 = *MEMORY[0x1E6990E88];
  v191 = *MEMORY[0x1E6990EA8];
  v207 = v15;
  v208 = v17;
  do
  {
    v20 = 0;
    do
    {
      if (*v288 != v213)
      {
        objc_enumerationMutation(v15);
      }

      v216 = v20;
      v21 = *(*(&v287 + 1) + 8 * v20);
      v22 = objc_msgSend_objectForKeyedSubscript_(v15);
      v23 = objc_msgSend_objectForKeyedSubscript_(v22);
      v24 = objc_msgSend_objectForKeyedSubscript_(v15);
      v25 = objc_msgSend_objectForKeyedSubscript_(v24);
      if (v23)
      {
        memset(&v228, 0, 24);
        [v23 longLongValue];
        v26 = FigHostTimeToNanoseconds();
        CMTimeMake(&v228, v26, 1000000000);
        if ((b_high & 1) == 0 || (*&time1.a = *&v228.a, time1.c = v228.c, time2.a = a, *&time2.b = __PAIR64__(b_high, b_low), time2.c = c, CMTimeCompare(&time1, &time2) < 0))
        {
          a = v228.a;
          b_high = HIDWORD(v228.b);
          b_low = LODWORD(v228.b);
          c = v228.c;
        }
      }

      if (![v21 isEqualToString:v212])
      {
        if ([v21 isEqualToString:v206])
        {
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v275 = 0u;
          v33 = [v25 countByEnumeratingWithState:&v275 objects:&v274 count:16];
          if (!v33)
          {
            v32 = @"humanBody";
            goto LABEL_119;
          }

          v34 = v33;
          v35 = b_high;
          v36 = *v276;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v276 != v36)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataHumanBodyObject humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanBodyObject, "humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v275 + 1) + 8 * i), v6, v23)}];
            }

            v34 = [v25 countByEnumeratingWithState:&v275 objects:&v274 count:16];
          }

          while (v34);
          v32 = @"humanBody";
        }

        else if ([v21 isEqualToString:v205])
        {
          v273 = 0u;
          v272 = 0u;
          v271 = 0u;
          v270 = 0u;
          v38 = [v25 countByEnumeratingWithState:&v270 objects:v269 count:16];
          if (!v38)
          {
            v32 = @"humanFullBody";
            goto LABEL_119;
          }

          v39 = v38;
          v35 = b_high;
          v40 = *v271;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v271 != v40)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataHumanFullBodyObject humanFullBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanFullBodyObject, "humanFullBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v270 + 1) + 8 * j), v6, v23)}];
            }

            v39 = [v25 countByEnumeratingWithState:&v270 objects:v269 count:16];
          }

          while (v39);
          v32 = @"humanFullBody";
        }

        else if ([v21 isEqualToString:v204])
        {
          v268 = 0u;
          v267 = 0u;
          v266 = 0u;
          v265 = 0u;
          v42 = [v25 countByEnumeratingWithState:&v265 objects:v264 count:16];
          if (!v42)
          {
            v32 = @"catBody";
            goto LABEL_119;
          }

          v43 = v42;
          v35 = b_high;
          v44 = *v266;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v266 != v44)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataCatBodyObject catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataCatBodyObject, "catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v265 + 1) + 8 * k), v6, v23)}];
            }

            v43 = [v25 countByEnumeratingWithState:&v265 objects:v264 count:16];
          }

          while (v43);
          v32 = @"catBody";
        }

        else if ([v21 isEqualToString:v203])
        {
          v263 = 0u;
          v262 = 0u;
          v261 = 0u;
          v260 = 0u;
          v46 = [v25 countByEnumeratingWithState:&v260 objects:v259 count:16];
          if (!v46)
          {
            v32 = @"dogBody";
            goto LABEL_119;
          }

          v47 = v46;
          v35 = b_high;
          v48 = *v261;
          do
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v261 != v48)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataDogBodyObject dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataDogBodyObject, "dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v260 + 1) + 8 * m), v6, v23)}];
            }

            v47 = [v25 countByEnumeratingWithState:&v260 objects:v259 count:16];
          }

          while (v47);
          v32 = @"dogBody";
        }

        else if ([v21 isEqualToString:v200])
        {
          v258 = 0u;
          v257 = 0u;
          v256 = 0u;
          v255 = 0u;
          v50 = [v25 countByEnumeratingWithState:&v255 objects:v254 count:16];
          if (!v50)
          {
            v32 = @"salientObject";
            goto LABEL_119;
          }

          v51 = v50;
          v35 = b_high;
          v52 = *v256;
          do
          {
            for (n = 0; n != v51; ++n)
            {
              if (*v256 != v52)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataSalientObject salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataSalientObject, "salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v255 + 1) + 8 * n), v6, v23)}];
            }

            v51 = [v25 countByEnumeratingWithState:&v255 objects:v254 count:16];
          }

          while (v51);
          v32 = @"salientObject";
        }

        else if ([v21 isEqualToString:v198])
        {
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v250 = 0u;
          v54 = [v25 countByEnumeratingWithState:&v250 objects:v249 count:16];
          if (!v54)
          {
            v32 = @"humanHead";
            goto LABEL_119;
          }

          v55 = v54;
          v35 = b_high;
          v56 = *v251;
          do
          {
            for (ii = 0; ii != v55; ++ii)
            {
              if (*v251 != v56)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataHumanHeadObject humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanHeadObject, "humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v250 + 1) + 8 * ii), v6, v23)}];
            }

            v55 = [v25 countByEnumeratingWithState:&v250 objects:v249 count:16];
          }

          while (v55);
          v32 = @"humanHead";
        }

        else if ([v21 isEqualToString:v196])
        {
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v245 = 0u;
          v58 = [v25 countByEnumeratingWithState:&v245 objects:v244 count:16];
          if (!v58)
          {
            v32 = @"catHead";
            goto LABEL_119;
          }

          v59 = v58;
          v35 = b_high;
          v60 = *v246;
          do
          {
            for (jj = 0; jj != v59; ++jj)
            {
              if (*v246 != v60)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataCatHeadObject catHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataCatHeadObject, "catHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v245 + 1) + 8 * jj), v6, v23)}];
            }

            v59 = [v25 countByEnumeratingWithState:&v245 objects:v244 count:16];
          }

          while (v59);
          v32 = @"catHead";
        }

        else if ([v21 isEqualToString:v194])
        {
          v243 = 0u;
          v242 = 0u;
          v241 = 0u;
          v240 = 0u;
          v62 = [v25 countByEnumeratingWithState:&v240 objects:v239 count:16];
          if (!v62)
          {
            v32 = @"dogHead";
            goto LABEL_119;
          }

          v63 = v62;
          v35 = b_high;
          v64 = *v241;
          do
          {
            for (kk = 0; kk != v63; ++kk)
            {
              if (*v241 != v64)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataDogHeadObject dogHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataDogHeadObject, "dogHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v240 + 1) + 8 * kk), v6, v23)}];
            }

            v63 = [v25 countByEnumeratingWithState:&v240 objects:v239 count:16];
          }

          while (v63);
          v32 = @"dogHead";
        }

        else
        {
          if (![v21 isEqualToString:v191])
          {
            goto LABEL_120;
          }

          v238 = 0u;
          v237 = 0u;
          v236 = 0u;
          v235 = 0u;
          v66 = [v25 countByEnumeratingWithState:&v235 objects:v234 count:16];
          if (!v66)
          {
            v32 = @"humanHand";
            goto LABEL_119;
          }

          v67 = v66;
          v35 = b_high;
          v68 = *v236;
          do
          {
            for (mm = 0; mm != v67; ++mm)
            {
              if (*v236 != v68)
              {
                objc_enumerationMutation(v25);
              }

              [v16 addObject:{+[AVMetadataHumanHandObject humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanHandObject, "humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v235 + 1) + 8 * mm), v6, v23)}];
            }

            v67 = [v25 countByEnumeratingWithState:&v235 objects:v234 count:16];
          }

          while (v67);
          v32 = @"humanHand";
        }

        b_high = v35;
        v17 = v208;
LABEL_118:
        v15 = v207;
        goto LABEL_119;
      }

      array2 = [MEMORY[0x1E695DF70] array];
      v283 = 0u;
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v27 = [v25 countByEnumeratingWithState:&v283 objects:&v279 count:16];
      if (v27)
      {
        v28 = v27;
        v209 = b_high;
        v29 = *v284;
        do
        {
          for (nn = 0; nn != v28; ++nn)
          {
            if (*v284 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = [AVMetadataFaceObject faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:*(*(&v283 + 1) + 8 * nn) input:v6 timeStamp:v23];
            [v16 addObject:v31];
            [array2 addObject:v31];
          }

          v28 = [v25 countByEnumeratingWithState:&v283 objects:&v279 count:16];
        }

        while (v28);
        v32 = @"face";
        v17 = v208;
        b_high = v209;
        goto LABEL_118;
      }

      v32 = @"face";
LABEL_119:
      [v17 addObject:v32];
LABEL_120:
      v20 = v216 + 1;
    }

    while (v216 + 1 != v214);
    v70 = [v15 countByEnumeratingWithState:&v287 objects:&v293 count:16];
    v214 = v70;
  }

  while (v70);
  v210 = b_high;
  v71 = array2 == 0;
  bufferCopy6 = buffer;
LABEL_128:
  v72 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D18], 0);
  if (v72)
  {
    v73 = v72;
    if ([v72 intValue])
    {
      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      v74 = [v16 countByEnumeratingWithState:&v230 objects:v229 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v231;
        do
        {
          for (i1 = 0; i1 != v75; ++i1)
          {
            if (*v231 != v76)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v230 + 1) + 8 * i1) setDetectionSource:{objc_msgSend(v73, "intValue")}];
          }

          v75 = [v16 countByEnumeratingWithState:&v230 objects:v229 count:16];
        }

        while (v75);
      }
    }
  }

  if ((v193 | v192))
  {
    v78 = FigCaptureFrontCameraRotationAngle();
    array3 = [MEMORY[0x1E695DF70] array];
    v81 = *MEMORY[0x1E695EFD0];
    v80 = *(MEMORY[0x1E695EFD0] + 16);
    *&v228.a = *MEMORY[0x1E695EFD0];
    *&v228.c = v80;
    v82 = *(MEMORY[0x1E695EFD0] + 32);
    *&v228.tx = v82;
    if (v78 == 90)
    {
      *&time1.a = xmmword_1A92AB9F0;
      time1.c = 1.0;
      time1.d = 0.0;
      time1.tx = 0.0;
    }

    else
    {
      if (v78)
      {
        if (v78 == -90)
        {
          *&time1.b = xmmword_1A92AB9D0;
          *&time1.d = xmmword_1A92AB9E0;
          time1.a = 0.0;
          time1.ty = 0.0;
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      time1.a = -1.0;
      time1.b = 0.0;
      *&time1.d = xmmword_1A92AB9C0;
      time1.c = 0.0;
    }

    time1.ty = 1.0;
LABEL_145:
    *&time2.a = v81;
    *&time2.c = v80;
    *&time2.tx = v82;
    CGAffineTransformConcat(&v228, &time2, &time1);
LABEL_146:
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v83 = [v16 countByEnumeratingWithState:&v222 objects:v221 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v223;
      do
      {
        for (i2 = 0; i2 != v84; ++i2)
        {
          if (*v223 != v85)
          {
            objc_enumerationMutation(v16);
          }

          originalMetadataObject = [*(*(&v222 + 1) + 8 * i2) originalMetadataObject];
          time1 = v228;
          [array3 addObject:{+[AVMetadataObject derivedMetadataObjectFromMetadataObject:withTransform:isVideoMirrored:rollAdjustment:](AVMetadataObject, "derivedMetadataObjectFromMetadataObject:withTransform:isVideoMirrored:rollAdjustment:", originalMetadataObject, &time1, 0, (v78 + 180))}];
        }

        v84 = [v16 countByEnumeratingWithState:&v222 objects:v221 count:16];
      }

      while (v84);
    }

    v16 = array3;
  }

  bufferCopy6 = buffer;
  v88 = [MEMORY[0x1E695DFD8] setWithObjects:{@"face", @"humanBody", @"humanFullBody", @"catBody", @"dogBody", @"salientObject", @"humanHead", @"catHead", @"dogHead", @"humanHand", 0}];
  v89 = [MEMORY[0x1E695DFA8] setWithArray:v202];
  [v89 intersectSet:v88];
  v228.a = a;
  *&v228.b = __PAIR64__(v210, b_low);
  v228.c = c;
  v90 = [AVMetadataObjectCollection collectionWithTime:&v228 metadataObjectTypes:v17 handledMetadataObjectTypes:v89 metadataObjects:v16];

  if (v90)
  {
    [array addObject:v90];
  }

  if (!v71)
  {
    goto LABEL_173;
  }

LABEL_157:
  previousTwoCMTimesByDetectorType = selfCopy->_internal->previousTwoCMTimesByDetectorType;
  if (!CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D38], 0))
  {
    goto LABEL_173;
  }

  v92 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D30], 0);
  v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v279 = 0u;
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v94 = [v92 countByEnumeratingWithState:&v279 objects:&v293 count:16];
  if (!v94)
  {
    memset(&v274, 0, sizeof(v274));
LABEL_170:
    avcmdo_nextTimeForDetector(previousTwoCMTimesByDetectorType, @"AVMetadataDetectorLegacyFaces", &v274);
    goto LABEL_171;
  }

  v95 = v94;
  v217 = previousTwoCMTimesByDetectorType;
  v96 = 0;
  v97 = *v280;
  do
  {
    for (i3 = 0; i3 != v95; ++i3)
    {
      if (*v280 != v97)
      {
        objc_enumerationMutation(v92);
      }

      v99 = *(*(&v279 + 1) + 8 * i3);
      v100 = objc_msgSend_objectForKeyedSubscript_(v99);
      if (!v96)
      {
        v96 = v100;
      }

      [v93 addObject:{+[AVMetadataFaceObject faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:input:timeStamp:](AVMetadataFaceObject, "faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:input:timeStamp:", v99, v6, v100)}];
    }

    v95 = [v92 countByEnumeratingWithState:&v279 objects:&v293 count:16];
  }

  while (v95);
  memset(&v274, 0, sizeof(v274));
  previousTwoCMTimesByDetectorType = v217;
  if (!v96)
  {
    goto LABEL_170;
  }

  [v96 longLongValue];
  v101 = FigHostTimeToNanoseconds();
  CMTimeMake(&v274, v101, 1000000000);
  v269[0] = v274;
  avcmdo_addCMTimeToHistoryForDetector(v217, v269, @"AVMetadataDetectorLegacyFaces");
LABEL_171:
  bufferCopy6 = buffer;
  v102 = [MEMORY[0x1E695DFD8] setWithObject:@"face"];
  v269[0] = v274;
  v103 = [AVMetadataObjectCollection collectionWithTime:v269 metadataObjectTypes:v102 handledMetadataObjectTypes:v102 metadataObjects:v93];

  if (v103)
  {
    [array addObject:v103];
  }

LABEL_173:
  v104 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D78], 0);
  v105 = 0x1E695D000uLL;
  if (v104)
  {
    v106 = v104;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy6);
    v107 = [MEMORY[0x1E695DFD8] setWithObject:@"trackedFaces"];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v274.value = [AVMetadataTrackedFacesObject trackedFacesWithTime:&v279 faceTrackingDictionary:v106 input:v6];
    v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v109 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v107 handledMetadataObjectTypes:v107 metadataObjects:v108];
    if (v109)
    {
      [array addObject:v109];
    }
  }

  v110 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D50], 0);
  if (v110)
  {
    v111 = v110;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy6);
    v112 = [MEMORY[0x1E695DFD8] setWithObject:@"offlineVideoStabilizationMotion"];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v274.value = [AVMetadataOfflineVideoStabilizationMotionObject offlineVideoStabilizationMotionObjectWithTime:&v279 motionDictionary:v111 input:v6];
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v114 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v112 handledMetadataObjectTypes:v112 metadataObjects:v113];
    if (v114)
    {
      [array addObject:v114];
    }
  }

  v115 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D20], 0);
  if (v115)
  {
    v116 = v115;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy6);
    v117 = [MEMORY[0x1E695DFD8] setWithObject:@"EyeReliefStatus"];
    intValue = [objc_msgSend_objectForKeyedSubscript_(v116) intValue];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    bufferCopy6 = buffer;
    v274.value = [AVMetadataEyeReliefStatusObject eyeReliefStatusObjectWithEyeReliefStatus:intValue input:v6 time:&v279 optionalInfoDict:v116];
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v120 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v117 handledMetadataObjectTypes:v117 metadataObjects:v119];
    if (v120)
    {
      [array addObject:v120];
    }
  }

  v121 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D28], 0);
  if (v121)
  {
    v122 = v121;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy6);
    v123 = [MEMORY[0x1E695DFD8] setWithObject:@"FaceIDReadiness"];
    v124 = objc_msgSend_objectForKeyedSubscript_(v122);
    v125 = objc_msgSend_objectForKeyedSubscript_(v122);
    v126 = objc_msgSend_objectForKeyedSubscript_(v122);
    bOOLValue = [v124 BOOLValue];
    intValue2 = [v125 intValue];
    intValue3 = [v126 intValue];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v130 = bOOLValue;
    bufferCopy6 = buffer;
    v274.value = [AVMetadataFaceIDReadinessObject faceIDReadinessObjectWithReady:v130 coachingStatus:intValue2 userEngagementStatus:intValue3 input:v6 time:&v279];
    v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v132 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v123 handledMetadataObjectTypes:v123 metadataObjects:v131];
    v133 = selfCopy;
    if (v132)
    {
      [array addObject:v132];
    }
  }

  else
  {
    v133 = selfCopy;
  }

  v134 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D48], 0);
  if (v134)
  {
    v135 = v134;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy6);
    v136 = [MEMORY[0x1E695DFD8] setWithObject:@"MotionToWake"];
    intValue4 = [objc_msgSend_objectForKeyedSubscript_(v135) intValue];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v274.value = [AVMetadataMotionToWakeObject motionToWakeObjectWithDetectedMotion:intValue4 input:v6 time:&v279];
    v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v139 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v136 handledMetadataObjectTypes:v136 metadataObjects:v138];
    if (v139)
    {
      [array addObject:v139];
    }
  }

  v215 = v133->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990CF0], 0))
  {
    v269[0].value = *MEMORY[0x1E6960C70];
    flags = *(MEMORY[0x1E6960C70] + 12);
    v269[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    v218 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v142 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v143 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990CE8], 0);
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v144 = v143;
    v145 = [v143 countByEnumeratingWithState:&v279 objects:&v293 count:16];
    if (v145)
    {
      v146 = v145;
      v147 = *v280;
      do
      {
        for (i4 = 0; i4 != v146; ++i4)
        {
          if (*v280 != v147)
          {
            objc_enumerationMutation(v144);
          }

          v149 = [AVMetadataMachineReadableCodeObject machineReadableCodeObjectWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:*(*(&v279 + 1) + 8 * i4) input:v6];
          v150 = v149;
          if ((flags & 1) == 0)
          {
            if (v149)
            {
              objc_msgSend_time(v149);
              flags = v274.flags;
              epoch = v274.epoch;
            }

            else
            {
              epoch = 0;
              flags = 0;
              memset(&v274, 0, sizeof(v274));
            }

            v269[0].value = v274.value;
            v269[0].timescale = v274.timescale;
            v274.flags = flags;
            v274.epoch = epoch;
            avcmdo_addCMTimeToHistoryForDetector(v215, &v274, @"AVMetadataDetectorBarcodes");
          }

          [v218 addObject:v150];
          [v142 addObject:{-[AVMetadataObject type](v150, "type")}];
        }

        v146 = [v144 countByEnumeratingWithState:&v279 objects:&v293 count:16];
      }

      while (v146);
    }

    if ((flags & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v215, @"AVMetadataDetectorBarcodes", &v274);
      v269[0].value = v274.value;
      flags = v274.flags;
      v269[0].timescale = v274.timescale;
      epoch = v274.epoch;
    }

    v151 = [MEMORY[0x1E695DFD8] setWithObjects:{@"org.gs1.UPC-E", @"org.iso.Code39", @"org.iso.Code39Mod43", @"org.gs1.EAN-13", @"org.gs1.EAN-8", @"com.intermec.Code93", @"org.iso.Code128", @"org.iso.PDF417", @"org.iso.QRCode", @"org.iso.Aztec", @"org.ansi.Interleaved2of5", @"org.gs1.ITF14", @"org.iso.DataMatrix", @"Codabar", @"org.gs1.GS1DataBar", @"org.gs1.GS1DataBarExpanded", @"org.gs1.GS1DataBarLimited", @"org.iso.MicroQR", @"org.iso.MicroPDF417", 0}];
    v152 = [MEMORY[0x1E695DFA8] setWithArray:v202];
    [v152 intersectSet:v151];
    v274.value = v269[0].value;
    v274.timescale = v269[0].timescale;
    v274.flags = flags;
    v274.epoch = epoch;
    v153 = [AVMetadataObjectCollection collectionWithTime:&v274 metadataObjectTypes:v142 handledMetadataObjectTypes:v152 metadataObjects:v218];

    v133 = selfCopy;
    v105 = 0x1E695D000uLL;
    if (v153)
    {
      [array addObject:v153];
    }
  }

  bufferCopy10 = buffer;
  v155 = CMGetAttachment(buffer, *MEMORY[0x1E6990D80], 0);
  if (v155)
  {
    v156 = v155;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, buffer);
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v157 = [AVMetadataVideoPreviewHistogramObject videoPreviewHistogramObjectWithLumaHistogramData:v156 input:v6 time:&v279];
    v158 = [MEMORY[0x1E695DFD8] setWithObject:@"videoPreviewHistogram"];
    v274.value = v157;
    v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    bufferCopy10 = buffer;
    v160 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v158 handledMetadataObjectTypes:v158 metadataObjects:v159];
    if (v160)
    {
      [array addObject:v160];
    }
  }

  v219 = v133->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy10, *MEMORY[0x1E698F8C0], 0))
  {
    v269[0].value = *MEMORY[0x1E6960C70];
    v161 = *(MEMORY[0x1E6960C70] + 12);
    v269[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    v162 = *(MEMORY[0x1E6960C70] + 16);
    v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v164 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E698F8B8], 0);
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v165 = [v164 countByEnumeratingWithState:&v279 objects:&v293 count:16];
    if (v165)
    {
      v166 = v165;
      v167 = *v280;
      do
      {
        for (i5 = 0; i5 != v166; ++i5)
        {
          if (*v280 != v167)
          {
            objc_enumerationMutation(v164);
          }

          v169 = [AVMetadataMachineReadableCodeObject machineReadableCodeObjectWithAppClipCodeDictionary:*(*(&v279 + 1) + 8 * i5) input:v6];
          if (v169)
          {
            v170 = v169;
            if ((v161 & 1) == 0)
            {
              objc_msgSend_time(v169);
              v269[0].value = v274.value;
              v161 = v274.flags;
              v269[0].timescale = v274.timescale;
              v162 = v274.epoch;
              avcmdo_addCMTimeToHistoryForDetector(v219, &v274, @"AVMetadataDetectorAppClipCodes");
            }

            [v163 addObject:v170];
          }
        }

        v166 = [v164 countByEnumeratingWithState:&v279 objects:&v293 count:16];
      }

      while (v166);
    }

    if ((v161 & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v219, @"AVMetadataDetectorAppClipCodes", &v274);
      v269[0].value = v274.value;
      v161 = v274.flags;
      v269[0].timescale = v274.timescale;
      v162 = v274.epoch;
    }

    v171 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.AppClipCode"];
    v274.value = v269[0].value;
    v274.timescale = v269[0].timescale;
    v274.flags = v161;
    v274.epoch = v162;
    v172 = [AVMetadataObjectCollection collectionWithTime:&v274 metadataObjectTypes:v171 handledMetadataObjectTypes:v171 metadataObjects:v163];

    v133 = selfCopy;
    bufferCopy10 = buffer;
    v105 = 0x1E695D000;
    if (v172)
    {
      [array addObject:v172];
    }
  }

  v220 = v133->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D70], 0))
  {
    v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v269[0].value = *MEMORY[0x1E6960C70];
    v174 = *(MEMORY[0x1E6960C70] + 12);
    v269[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    v175 = *(MEMORY[0x1E6960C70] + 16);
    v176 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D68], 0);
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v177 = [v176 countByEnumeratingWithState:&v279 objects:&v293 count:16];
    if (v177)
    {
      v178 = v177;
      v179 = *v280;
      do
      {
        for (i6 = 0; i6 != v178; ++i6)
        {
          if (*v280 != v179)
          {
            objc_enumerationMutation(v176);
          }

          v181 = [AVMetadataTextRegionObject textRegionObjectWithDictionary:*(*(&v279 + 1) + 8 * i6) input:v6];
          if (v181)
          {
            v182 = v181;
            [v173 addObject:v181];
            if ((v174 & 1) == 0)
            {
              objc_msgSend_time(v182);
              v269[0].value = v274.value;
              v174 = v274.flags;
              v269[0].timescale = v274.timescale;
              v175 = v274.epoch;
              avcmdo_addCMTimeToHistoryForDetector(v220, &v274, @"AVMetadataDetectorTextRegions");
            }
          }
        }

        v178 = [v176 countByEnumeratingWithState:&v279 objects:&v293 count:16];
      }

      while (v178);
    }

    if ((v174 & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v220, @"AVMetadataDetectorTextRegions", &v274);
      v269[0].value = v274.value;
      v174 = v274.flags;
      v269[0].timescale = v274.timescale;
      v175 = v274.epoch;
    }

    v183 = [MEMORY[0x1E695DFD8] setWithObject:@"textRegion"];
    v274.value = v269[0].value;
    v274.timescale = v269[0].timescale;
    v274.flags = v174;
    v274.epoch = v175;
    v184 = [AVMetadataObjectCollection collectionWithTime:&v274 metadataObjectTypes:v183 handledMetadataObjectTypes:v183 metadataObjects:v173];

    v133 = selfCopy;
    bufferCopy10 = buffer;
    v105 = 0x1E695D000uLL;
    if (v184)
    {
      [array addObject:v184];
    }
  }

  v185 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D60], 0);
  if (v185)
  {
    v186 = v185;
    memset(&v293, 0, sizeof(v293));
    CMSampleBufferGetPresentationTimeStamp(&v293, bufferCopy10);
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v187 = [AVMetadataSceneClassificationObject sceneClassificationObjectWithConfidences:v186 input:v6 time:&v279];
    v188 = [MEMORY[0x1E695DFD8] setWithObject:@"sceneClassification"];
    v274.value = v187;
    v189 = [*(v105 + 3784) arrayWithObjects:&v274 count:1];
    v279 = *&v293.value;
    *&v280 = v293.epoch;
    v190 = [AVMetadataObjectCollection collectionWithTime:&v279 metadataObjectTypes:v188 handledMetadataObjectTypes:v188 metadataObjects:v189];
    v5 = v195;
    if (v190)
    {
      [array addObject:v190];
    }
  }

  else
  {
    v5 = v195;
  }

  if ([array count])
  {
    if (v133->_internal->synchronizationEnabled)
    {
      [(AVCaptureMetadataOutput *)v133 _processSynchronizationWithCollections:array withCorrespondingMetadataObjectTypes:[(AVCaptureMetadataOutput *)v133 metadataObjectTypesForMetadataIdentifiers:CMGetAttachment(buffer, *MEMORY[0x1E6990C78], 0)]];
    }

    else
    {
      [(AVCaptureMetadataOutput *)v133 _emitCollections:array];
    }
  }

LABEL_248:
}

- (void)_processSynchronizationWithCollections:(id)collections withCorrespondingMetadataObjectTypes:(id)types
{
  if (self->_internal->synchronizationEnabled && [collections count])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    synchronizedMetadataCollectionsQueue = self->_internal->synchronizedMetadataCollectionsQueue;
    if (!synchronizedMetadataCollectionsQueue)
    {
      self->_internal->synchronizedMetadataCollectionsQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      synchronizedMetadataCollectionsQueue = self->_internal->synchronizedMetadataCollectionsQueue;
    }

    v9 = synchronizedMetadataCollectionsQueue;
    objc_sync_exit(internal);
    if ([types count])
    {
      v10 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypesSupportingZeroFrameDelaySynchronization](self, "metadataObjectTypesSupportingZeroFrameDelaySynchronization")}];
      [v10 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", types)}];
    }

    else
    {
      v10 = 0;
    }

    v21 = 0uLL;
    v11 = [collections objectAtIndexedSubscript:0];
    if (v11)
    {
      objc_msgSend_time(v11);
    }

    else
    {
      v21 = 0uLL;
    }

    v12 = [(NSMutableArray *)v9 count];
    if ([(NSMutableArray *)v9 count])
    {
      v19 = v10;
      v13 = 0;
      while (1)
      {
        v14 = [(NSMutableArray *)v9 objectAtIndexedSubscript:v13, v19];
        v15 = v14;
        if (v14)
        {
          objc_msgSend_time(v14);
          v16 = (v20.flags & 0x1F) == 3;
        }

        else
        {
          v16 = 0;
          memset(&v20, 0, sizeof(v20));
        }

        if (v16 || (BYTE12(v21) & 0x1F) == 3)
        {
          memset(&time1, 0, sizeof(time1));
          lhs = v20;
          *&rhs.value = v21;
          rhs.epoch = 0;
          CMTimeSubtract(&time, &lhs, &rhs);
          CMTimeAbsoluteValue(&time1, &time);
          CMTimeMake(&time, 1, 1000000000);
          lhs = time1;
          if (CMTimeCompare(&lhs, &time) <= 0)
          {
            break;
          }
        }

        time1 = v20;
        *&time.value = v21;
        time.epoch = 0;
        if (!CMTimeCompare(&time1, &time))
        {
          break;
        }

        if (v15)
        {
          objc_msgSend_time(v15);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        *&time.value = v21;
        time.epoch = 0;
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          v12 = v13;
LABEL_29:
          v10 = v19;
          goto LABEL_30;
        }

        if (++v13 >= [(NSMutableArray *)v9 count])
        {
          goto LABEL_29;
        }
      }

      [v15 skipMetadataObjectTypes:v19];
      [v15 addCollections:collections];
      if ([v15 readyToEmit])
      {
        [(AVCaptureMetadataOutput *)self _emitSyncedCollections:v15];
        [(NSMutableArray *)v9 removeObject:v15];
      }
    }

    else
    {
LABEL_30:
      if (v12 != -1)
      {
        v17 = [[AVCaptureSynchronizedMetadataCollections alloc] initWithMetadataCollections:collections expectedMetadataObjectTypes:[(AVCaptureMetadataOutput *)self metadataObjectTypes]];
        v18 = [(AVCaptureMetadataOutput *)self _newEmitTimerForSynchronizedMetadataCollections:v17];
        [(AVCaptureSynchronizedMetadataCollections *)v17 setEmitTimer:v18];

        [(AVCaptureSynchronizedMetadataCollections *)v17 skipMetadataObjectTypes:v10];
        if ([(AVCaptureSynchronizedMetadataCollections *)v17 readyToEmit])
        {
          [(AVCaptureMetadataOutput *)self _emitSyncedCollections:v17];
        }

        else
        {
          [(NSMutableArray *)v9 insertObject:v17 atIndex:v12];
        }

        if ([(NSMutableArray *)v9 count]> self->_internal->maxSynchronizationFrameDelay)
        {
          [(AVCaptureMetadataOutput *)self _emitSyncedCollections:[(NSMutableArray *)v9 objectAtIndexedSubscript:0]];
          [(NSMutableArray *)v9 removeObjectAtIndex:0];
        }
      }
    }
  }
}

- (id)_newEmitTimerForSynchronizedMetadataCollections:(id)collections
{
  internal = self->_internal;
  if (!internal->maxSynchronizationFrameDelay)
  {
    return 0;
  }

  activeCallbackQueue = [(AVCaptureDataOutputDelegateCallbackHelper *)internal->delegateCallbackHelper activeCallbackQueue];
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, activeCallbackQueue);
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];
  if (sourceDevice)
  {
    objc_msgSend_activeVideoMaxFrameDuration(sourceDevice);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time) * self->_internal->maxSynchronizationFrameDelay;
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(v7, v10, 0xFFFFFFFFFFFFFFFFLL, (v9 * 0.1 * 1000000000.0));
  objc_initWeak(&time, collections);
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__AVCaptureMetadataOutput__newEmitTimerForSynchronizedMetadataCollections___block_invoke;
  v12[3] = &unk_1E7875D90;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &time);
  dispatch_source_set_event_handler(v7, v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_destroyWeak(&time);
  return v7;
}

id __75__AVCaptureMetadataOutput__newEmitTimerForSynchronizedMetadataCollections___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  result = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v4 = result;
    if (result)
    {
      [Weak _emitSyncedCollections:result];
      v5 = Weak[2];
      objc_sync_enter(v5);
      [*(Weak[2] + 136) removeObject:v4];

      return objc_sync_exit(v5);
    }
  }

  return result;
}

- (void)_emitSyncedCollections:(id)collections
{
  [collections setEmitTimer:0];
  metadataCollections = [collections metadataCollections];

  [(AVCaptureMetadataOutput *)self _emitCollections:metadataCollections];
}

- (void)_emitCollections:(id)collections
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  objc_sync_exit(internal);
  if (-[AVCaptureConnection isLive](v6, "isLive") && [-[AVCaptureOutput session](self "session")])
  {
    [(AVCaptureMetadataOutput *)self _emitCollections:collections, v6, &self->_internal];
  }
}

- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue
{
  if (AVCaptureIsRunningInMediaserverd(self, a2))
  {
    queueCopy = 0;
  }

  else
  {
    queueCopy = queue;
  }

  v10 = 0;
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setDelegateOverride:override delegateOverrideCallbackQueue:queueCopy exceptionReason:&v10])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v8, v9))
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (uint64_t)_emitCollections:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [objc_msgSend(a1 "session")];
  if ((result & 1) == 0)
  {
    v9 = [*(*a4 + 8) activeDelegate];
    if (objc_opt_respondsToSelector())
    {

      return [v9 captureOutput:a1 didOutputMetadataObjectCollections:a2 fromConnection:a3];
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = avcmdo_allMetadataObjectsInCollections(a2);
      v11 = avcmdo_allMetadataObjectTypesInCollections(a2);

      return [v9 captureOutput:a1 didOutputMetadataObjects:v10 forMetadataObjectTypes:v11 fromConnection:a3];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v12 = avcmdo_allMetadataObjectsInCollections(a2);

        return [v9 captureOutput:a1 didOutputMetadataObjects:v12 fromConnection:a3];
      }
    }
  }

  return result;
}

@end