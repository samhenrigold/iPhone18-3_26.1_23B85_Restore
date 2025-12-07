@interface AVCapturePhotoOutput
+ ($2825F4736939C4A6D3AD43837233062D)maxLivePhotoMovieDimensions;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (BOOL)isBayerRAWPixelFormat:(OSType)pixelFormat;
+ (NSData)DNGPhotoDataRepresentationForRawSampleBuffer:(CMSampleBufferRef)rawSampleBuffer previewPhotoSampleBuffer:(CMSampleBufferRef)previewPhotoSampleBuffer;
+ (NSData)JPEGPhotoDataRepresentationForJPEGSampleBuffer:(CMSampleBufferRef)JPEGSampleBuffer previewPhotoSampleBuffer:(CMSampleBufferRef)previewPhotoSampleBuffer;
+ (__CFDictionary)_copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
+ (id)validMetadataTopLevelCGImagePropertiesKeys;
+ (void)initialize;
- (AVCapturePhotoOutput)init;
- (AVCapturePhotoOutputCaptureReadiness)captureReadiness;
- (AVCapturePhotoSettings)photoSettingsForSceneMonitoring;
- (BOOL)_HEVCAndHEIFAreAvailableForSourceDevice:(id)device;
- (BOOL)_isStillImageStabilizationSupported;
- (BOOL)_requestUsesWaitingForCaptureReadiness:(id)readiness;
- (BOOL)_requestUsesWaitingForProcessingReadiness:(id)readiness;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (BOOL)isEV0PhotoDeliverySupported;
- (BOOL)isFlashScene;
- (BOOL)isHDRScene;
- (BOOL)isMultiCamClientCompositingSupported;
- (BOOL)isStillImageStabilizationScene;
- (BOOL)maxPhotoDimensionsAreHighResolution;
- (NSArray)availableLivePhotoVideoCodecTypes;
- (NSArray)availablePhotoCodecTypes;
- (NSArray)availablePhotoFileTypes;
- (NSArray)availablePhotoPixelFormatTypes;
- (NSArray)availableRawPhotoCodecTypes;
- (NSArray)availableRawPhotoFileTypes;
- (NSArray)availableSemanticSegmentationMatteTypes;
- (NSArray)enabledSemanticSegmentationMatteTypes;
- (NSArray)preparedPhotoSettingsArray;
- (NSArray)supportedFlashModes;
- (NSArray)supportedPhotoCodecTypesForFileType:(AVFileType)fileType;
- (NSArray)supportedPhotoPixelFormatTypesForFileType:(AVFileType)fileType;
- (NSArray)supportedRawPhotoPixelFormatTypesForFileType:(AVFileType)fileType;
- (NSUInteger)maxBracketedCapturePhotoCount;
- (id)_avErrorUserInfoDictionaryForError:(int)error movieRequest:(id)request payload:(id)payload isSpatialOverCaptureMovie:(BOOL)movie;
- (id)_avErrorUserInfoDictionaryForError:(int)error photoRequest:(id)request payload:(id)payload isOriginalMovie:(BOOL)movie;
- (id)_errorForFigCaptureSessionNotificationPayloadErrorStatus:(int)status userInfo:(id)info;
- (id)_figCaptureIrisPreparedSettingsForRequest:(id)request;
- (id)_figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:(id)settings captureRequestIdentifier:(id)identifier delegate:(id)delegate connections:(id)connections;
- (id)_figCaptureMovieFileRecordingSettingsForAVMomentCaptureMovieRecordingSettings:(id)settings momentCaptureSettings:(id)captureSettings delegate:(id)delegate connections:(id)connections;
- (id)_movieRequestForUniqueID:(int64_t)d;
- (id)_photoRequestForUniqueID:(int64_t)d;
- (id)_sanitizedSettingsForSettings:(id)settings;
- (id)addConnection:(id)connection error:(id *)error;
- (id)connectionMediaTypes;
- (id)deferredSettingsForCapturingPhotoWithSettings:(id)settings;
- (id)digitalFlashExposureTimes;
- (id)exifFocalLengthsByZoomFactor;
- (id)figCaptureIrisPreparedSettings;
- (id)supportedDigitalFlashModes;
- (id)supportedHDRModes;
- (id)supportedRawPhotoCodecTypesForRawPhotoPixelFormatType:(unsigned int)type fileType:(id)fileType;
- (int)_invokeClientCompositingCallbackForSettingsID:(int64_t)d compositingData:(id)data;
- (int64_t)digitalFlashStatus;
- (unsigned)_internalRawFormatFromRawFormat:(unsigned int)format;
- (void)_addObserversForConnectionDevice:(id)device;
- (void)_addReadinessCoordinator:(id)coordinator;
- (void)_decrementObserverCountForKeyPath:(id)path;
- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forMovieRequest:(id)request withError:(id)error cleanupRequest:(BOOL)cleanupRequest;
- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forPhotoRequest:(id)request withError:(id)error cleanupRequest:(BOOL)cleanupRequest;
- (void)_dispatchFailureCallbacksForMovieRecordingSettings:(id)settings momentCaptureSettings:(id)captureSettings toDelegate:(id)delegate withError:(id)error;
- (void)_dispatchFailureCallbacksForPhotoSettings:(id)settings toDelegate:(id)delegate withError:(id)error;
- (void)_handleDidBeginRecordingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidCaptureStillImageNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishCaptureNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishMovieCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishRecordingIrisMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishRecordingVideoNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidFinishWritingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleDidRecordIrisMovieNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handlePotentiallyFinalPhotoRequestCallbackWithPayload:(id)payload forRequest:(id)request;
- (void)_handlePreparationCompleteNotificationWithPayload:(id)payload settingsID:(int64_t)d;
- (void)_handleReadyForResponsiveRequestWithPayload:(id)payload forRequest:(id)request;
- (void)_handleStillImageCompleteNotification:(id)notification withPayload:(id)payload forRequest:(id)request;
- (void)_handleWillBeginCaptureBeforeResolvingSettingsNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleWillBeginCaptureNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleWillCaptureStillImageNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_incrementObserverCountForKeyPath:(id)path;
- (void)_removeObserversForConnectionDevice:(id)device;
- (void)_removeReadinessCoordinator:(id)coordinator;
- (void)_resetLivePhotoCaptureSuspended;
- (void)_resetLivePhotoMovieProcessingSuspended;
- (void)_resetTimeLapseCaptureRate;
- (void)_setDigitalFlashScene:(id)scene fireStatusKVO:(BOOL)o fireExposureTimesKVO:(BOOL)vO;
- (void)_setHighResolutionCaptureEnabled:(BOOL)enabled bumpChangeSeedOut:(BOOL *)out;
- (void)_setIsFlashScene:(BOOL)scene firingKVO:(BOOL)o;
- (void)_setIsHDRScene:(BOOL)scene firingKVO:(BOOL)o;
- (void)_setIsStillImageStabilizationScene:(BOOL)scene firingKVO:(BOOL)o;
- (void)_setMaxPhotoDimensions:(id)dimensions bumpChangeSeedOut:(BOOL *)out;
- (void)_setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled;
- (void)_updateAppleProRAWSupportedForDevice:(id)device;
- (void)_updateAutoRedReductionSupportedForSourceDevice:(id)device;
- (void)_updateAvailableLivePhotoVideoCodecTypesForSourceDevice:(id)device;
- (void)_updateAvailablePhotoCodecTypesForSourceDevice:(id)device;
- (void)_updateAvailablePhotoFileTypesForSourceDevice:(id)device;
- (void)_updateAvailablePhotoPixelFormatTypesForSourceDevice:(id)device;
- (void)_updateAvailableRawPhotoFileTypesForSourceDevice:(id)device;
- (void)_updateAvailableRawPhotoPixelFormatTypesForSourceDevice:(id)device;
- (void)_updateCameraCalibrationDataDeliverySupportedForSourceDevice:(id)device;
- (void)_updateCameraSensorOrientationCompensationSupportedForDevice:(id)device;
- (void)_updateCaptureReadiness;
- (void)_updateCaptureReadinessStateForCompletedRequest:(id)request;
- (void)_updateConstantColorSupportedForSourceDevice:(id)device;
- (void)_updateContentAwareDistortionCorrectionSupportedForDevice:(id)device;
- (void)_updateDeferredProcessingSupportedForSourceDevice:(id)device;
- (void)_updateDepthDataDeliverySupportedForSourceDevice:(id)device;
- (void)_updateFocusPixelBlurScoreSupportedForDevice:(id)device;
- (void)_updateLensStabilizationDuringBracketedCaptureSupportedForSourceDevice:(id)device;
- (void)_updateLivePhotoCaptureSupportedForSourceDevice:(id)device;
- (void)_updateLivePhotoMovieDimensionsForSourceDevice:(id)device;
- (void)_updateMaxBracketedCapturePhotoCountForSourceDevice:(id)device;
- (void)_updateMaxPhotoDimensionsForDevice:(id)device;
- (void)_updateMovieRecordingSupportedForSourceDevice:(id)device;
- (void)_updateOfflineVISSupportedForSourceDevice:(id)device;
- (void)_updatePreviewQualityAdjustedPhotoFilterRenderingSupportedForDevice:(id)device;
- (void)_updateProcessedPhotoZoomWithoutUpscalingSupportedForSourceDevice:(id)device;
- (void)_updateSceneMonitoringForSourceDevice:(id)device;
- (void)_updateSemanticStyleRenderingSupportedForDevice:(id)device;
- (void)_updateSpatialOverCaptureSupportedForSourceDevice:(id)device;
- (void)_updateSpatialPhotoCaptureSupportedForDevice:(id)device;
- (void)_updateStillImageStabilizationSupportedForSourceDevice:(id)device;
- (void)_updateSupportedDigitalFlashModesForSourceDevice:(id)device;
- (void)_updateSupportedFlashModesForSourceDevice:(id)device;
- (void)_updateSupportedHDRModesForSourceDevice:(id)device;
- (void)_updateSupportedPropertiesForSourceDevice:(id)device;
- (void)_updateTimeLapseCaptureRate;
- (void)_updateVirtualDeviceConstituentPhotoDeliveryAndDualCameraDualPhotoDeliverySupportedForSourceDevice:(id)device;
- (void)_updateVirtualDeviceFusionSupportedForSourceDevice:(id)device;
- (void)_updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:(id)device;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)beginMomentCaptureWithSettings:(id)settings delegate:(id)delegate;
- (void)cancelMomentCaptureWithUniqueID:(int64_t)d;
- (void)capturePhotoWithSettings:(AVCapturePhotoSettings *)settings delegate:(id)delegate;
- (void)commitCaptureWithSettings:(id)settings delegate:(id)delegate;
- (void)commitMomentCaptureToPhotoWithUniqueID:(int64_t)d;
- (void)commitMomentCaptureWithUniqueID:(int64_t)d toMovieRecordingWithSettings:(id)settings delegate:(id)delegate;
- (void)commitMomentCaptureWithUniqueID:(int64_t)d toPhotoCaptureWithSettings:(id)settings delegate:(id)delegate;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)endCaptureWithUniqueID:(int64_t)d;
- (void)endMomentCaptureWithUniqueID:(int64_t)d;
- (void)handleBackgroundBlurActiveChangedForDevice:(id)device;
- (void)handleBackgroundReplacementActiveChangedForDevice:(id)device;
- (void)handleChangedActiveFormat:(id)format forDevice:(id)device;
- (void)handleStudioLightingActiveChangedForDevice:(id)device;
- (void)initiateCaptureWithSettings:(id)settings;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeConnection:(id)connection;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setAppleProRAWEnabled:(BOOL)appleProRAWEnabled;
- (void)setAutoDeferredPhotoDeliveryEnabled:(BOOL)autoDeferredPhotoDeliveryEnabled;
- (void)setCameraSensorOrientationCompensationEnabled:(BOOL)enabled;
- (void)setConstantColorClippingRecoveryEnabled:(BOOL)enabled;
- (void)setConstantColorEnabled:(BOOL)enabled;
- (void)setConstantColorSaturationBoostEnabled:(BOOL)enabled;
- (void)setContentAwareDistortionCorrectionEnabled:(BOOL)contentAwareDistortionCorrectionEnabled;
- (void)setDepthDataDeliveryEnabled:(BOOL)depthDataDeliveryEnabled;
- (void)setDigitalFlashCaptureEnabled:(BOOL)enabled;
- (void)setDualCameraDualPhotoDeliveryEnabled:(BOOL)dualCameraDualPhotoDeliveryEnabled;
- (void)setEnabledSemanticSegmentationMatteTypes:(NSArray *)enabledSemanticSegmentationMatteTypes;
- (void)setExifFocalLengthsByZoomFactor:(id)factor;
- (void)setFastCapturePrioritizationEnabled:(BOOL)fastCapturePrioritizationEnabled;
- (void)setFigCaptureSessionSectionProperty:(__CFString *)property withHostTime:(id *)time;
- (void)setFigCaptureSessionSectionProperty:(__CFString *)property withValue:(void *)value;
- (void)setFilterRenderingEnabled:(BOOL)enabled;
- (void)setFocusPixelBlurScoreEnabled:(BOOL)enabled;
- (void)setHighResolutionCaptureEnabled:(BOOL)highResolutionCaptureEnabled;
- (void)setLivePhotoAutoTrimmingEnabled:(BOOL)livePhotoAutoTrimmingEnabled;
- (void)setLivePhotoCaptureEnabled:(BOOL)livePhotoCaptureEnabled;
- (void)setLivePhotoCaptureSuspended:(BOOL)livePhotoCaptureSuspended;
- (void)setLivePhotoMovieProcessingSuspended:(BOOL)suspended;
- (void)setMaxPhotoDimensions:(CMVideoDimensions)maxPhotoDimensions;
- (void)setMaxPhotoQualityPrioritization:(AVCapturePhotoQualityPrioritization)maxPhotoQualityPrioritization;
- (void)setMovieRecordingEnabled:(BOOL)enabled;
- (void)setMultiCamClientCompositingEnabled:(BOOL)enabled;
- (void)setMultiCamClientCompositingPrimaryConnection:(id)connection secondaryConnection:(id)secondaryConnection;
- (void)setOptimizesImagesForOfflineVideoStabilization:(BOOL)stabilization;
- (void)setPhotoSettingsForSceneMonitoring:(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring;
- (void)setPortraitEffectsMatteDeliveryEnabled:(BOOL)portraitEffectsMatteDeliveryEnabled;
- (void)setPreparedPhotoSettingsArray:(NSArray *)preparedPhotoSettingsArray completionHandler:(void *)completionHandler;
- (void)setPreservesLivePhotoCaptureSuspendedOnSessionStop:(BOOL)preservesLivePhotoCaptureSuspendedOnSessionStop;
- (void)setPreviewQualityAdjustedPhotoFilterRenderingEnabled:(BOOL)enabled;
- (void)setResponsiveCaptureEnabled:(BOOL)responsiveCaptureEnabled;
- (void)setSemanticStyleRenderingEnabled:(BOOL)enabled;
- (void)setSession:(id)session;
- (void)setSpatialOverCaptureEnabled:(BOOL)enabled;
- (void)setSpatialPhotoCaptureEnabled:(BOOL)enabled;
- (void)setTimeLapseCaptureRate:(float)rate;
- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled;
- (void)setUltraHighResolutionZeroShutterLagSupportEnabled:(BOOL)enabled;
- (void)setVideoCaptureEnabled:(BOOL)enabled;
- (void)setVirtualDeviceConstituentPhotoDeliveryEnabled:(BOOL)virtualDeviceConstituentPhotoDeliveryEnabled;
- (void)setZeroShutterLagEnabled:(BOOL)zeroShutterLagEnabled;
- (void)userInitiatedCaptureRequestAtTime:(unint64_t)time;
@end

@implementation AVCapturePhotoOutput

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    v2 = MGCopyAnswer();
    sIsForcedShutterSoundRegion = v2 == *MEMORY[0x1E695E4D0];
    if (v2)
    {
      CFRelease(v2);
    }

    AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce(v2, v3);
  }
}

- (AVCapturePhotoOutput)init
{
  v12.receiver = self;
  v12.super_class = AVCapturePhotoOutput;
  initSubclass = [(AVCaptureOutput *)&v12 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCapturePhotoOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      [(AVCaptureOutput *)initSubclass setDeferredStartEnabled:AVCaptureSessionIsDeferredStartSupported()];
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
      initSubclass->_internal->sceneDetectionObserversDispatchQueue = dispatch_queue_create("com.apple.avfoundation.photooutput.observed_scene_detection_queue", 0);
      initSubclass->_internal->requestsLock = FigSimpleMutexCreate();
      initSubclass->_internal->photoRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
      initSubclass->_internal->movieRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
      initSubclass->_internal->readinessCoordinators = objc_alloc_init(MEMORY[0x1E695DF70]);
      internal = initSubclass->_internal;
      CMTimeMakeWithSeconds(&v11, 3.0, 1000);
      internal->livePhotoMovieDuration = v11;
      v5 = initSubclass->_internal;
      CMTimeMake(&v11, 1, 30);
      v5->livePhotoMovieVideoFrameDuration = v11;
      initSubclass->_internal->availablePhotoPixelFormatTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->availablePhotoCodecTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->availableRawPhotoPixelFormatTypes = objc_alloc_init(MEMORY[0x1E695DF20]);
      initSubclass->_internal->availablePhotoFileTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->availableRawPhotoCodecTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->availableRawPhotoFileTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->availableLivePhotoVideoCodecTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->supportedHDRModes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F1CEA1F0, 0}];
      initSubclass->_internal->supportedFlashModes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F1CEA1F0, 0}];
      initSubclass->_internal->availableSemanticSegmentationTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->enabledSemanticSegmentationTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
      initSubclass->_internal->maxPhotoQualityPrioritization = 2;
      initSubclass->_internal->timeLapseCaptureRate = 2.0;
      initSubclass->_internal->timeLapseCaptureRateNeedsUpdate = 1;
      initSubclass->_internal->supportedDigitalFlashModes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F1CEA1F0, 0}];
      initSubclass->_internal->digitalFlashStatus = -1;
      initSubclass->_internal->digitalFlashExposureTimes = objc_alloc_init(MEMORY[0x1E695DF20]);
      v6 = +[AVCapturePhotoSettings photoSettings];
      v7 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      if (([v7 isEqualToString:0x1F1CBF648] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", 0x1F1CC2068) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", 0x1F1CBF668))
      {
        [(AVCapturePhotoSettings *)v6 setHDRMode:2];
      }

      v10 = v6;
      v8 = +[AVCapturePreparedPhotoSettingsArrayRequest preparedPhotoSettingsArrayRequestWithArray:completionHandler:](AVCapturePreparedPhotoSettingsArrayRequest, "preparedPhotoSettingsArrayRequestWithArray:completionHandler:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1], 0);
      initSubclass->_internal->prepareRequests = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      if (sIsForcedShutterSoundRegion == 1)
      {
        initSubclass->_internal->beginEndIrisMovieCaptureHostTimeQueue = dispatch_queue_create("avcapturephotooutput-begin-end-iris-movie-capture-host-time-queue", 0);
        initSubclass->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup = dispatch_group_create();
      }

      initSubclass->_internal->greenTeaLogger = ct_green_tea_logger_create();
      initSubclass->_internal->zeroShutterLagAutomaticallyEnabled = AVGestaltGetBoolAnswer(@"AVGQCaptureZeroShutterLagAutomaticallyEnabled");
      initSubclass->_internal->captureReadiness = 1;
      initSubclass->_internal->cameraSensorOrientationCompensationAutomaticallyEnabled = 1;
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
}

+ ($2825F4736939C4A6D3AD43837233062D)maxLivePhotoMovieDimensions
{
  if (FigCapturePlatformIdentifier() > 5 || [&unk_1F1CEA5F0 containsObject:FigCaptureGetModelSpecificName()])
  {
    return 0x5A000000780;
  }

  else
  {
    return 0x438000005A0;
  }
}

+ (id)validMetadataTopLevelCGImagePropertiesKeys
{
  v2 = *MEMORY[0x1E696D9B0];
  v15[0] = *MEMORY[0x1E696DF28];
  v15[1] = v2;
  v3 = *MEMORY[0x1E696DD90];
  v15[2] = *MEMORY[0x1E696DEB0];
  v15[3] = v3;
  v4 = *MEMORY[0x1E696D808];
  v15[4] = *MEMORY[0x1E696DBF0];
  v15[5] = v4;
  v5 = *MEMORY[0x1E6990C70];
  v15[6] = *MEMORY[0x1E696DE30];
  v15[7] = v5;
  v6 = *MEMORY[0x1E6960498];
  v15[8] = *MEMORY[0x1E6990D08];
  v15[9] = v6;
  v7 = *MEMORY[0x1E696D320];
  v15[10] = *MEMORY[0x1E69604A0];
  v15[11] = v7;
  v8 = *MEMORY[0x1E696DEC8];
  v15[12] = *MEMORY[0x1E696DB60];
  v15[13] = v8;
  v9 = *MEMORY[0x1E696D880];
  v15[14] = *MEMORY[0x1E696DED8];
  v15[15] = v9;
  v10 = *MEMORY[0x1E696DE78];
  v15[16] = *MEMORY[0x1E696D888];
  v15[17] = v10;
  v11 = *MEMORY[0x1E696DDF8];
  v15[18] = *MEMORY[0x1E696DDF0];
  v15[19] = v11;
  v12 = *MEMORY[0x1E696D448];
  v15[20] = *MEMORY[0x1E696DD50];
  v15[21] = v12;
  v13 = *MEMORY[0x1E696D8B0];
  v15[22] = *MEMORY[0x1E696DEF0];
  v15[23] = v13;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:24];
}

- (NSArray)supportedFlashModes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  internal = self->_internal;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCapturePhotoOutput_supportedFlashModes__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)supportedHDRModes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  internal = self->_internal;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AVCapturePhotoOutput_supportedHDRModes__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_isStillImageStabilizationSupported
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  internal = self->_internal;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__AVCapturePhotoOutput__isStillImageStabilizationSupported__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)supportedDigitalFlashModes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  internal = self->_internal;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVCapturePhotoOutput_supportedDigitalFlashModes__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __43__AVCapturePhotoOutput_supportedFlashModes__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 16) + 112);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __41__AVCapturePhotoOutput_supportedHDRModes__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 16) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __50__AVCapturePhotoOutput_supportedDigitalFlashModes__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 16) + 120);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)availableSemanticSegmentationMatteTypes
{
  v2 = self->_internal->availableSemanticSegmentationTypes;

  return v2;
}

- (id)figCaptureIrisPreparedSettings
{
  FigSimpleMutexLock();
  v3 = [(AVCapturePhotoOutput *)self _figCaptureIrisPreparedSettingsForRequest:[(NSMutableArray *)self->_internal->prepareRequests lastObject]];
  FigSimpleMutexUnlock();
  return v3;
}

- (BOOL)maxPhotoDimensionsAreHighResolution
{
  v3 = [objc_msgSend(-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "defaultPhotoDimensionsWithHighResolutionCaptureEnabled:", 1}];
  internal = self->_internal;
  width = internal->maxPhotoDimensions.width;
  v6 = width >= v3 && internal->maxPhotoDimensions.height >= SHIDWORD(v3);
  v7 = width >= SHIDWORD(v3) && internal->maxPhotoDimensions.height >= v3;
  return v6 || v7;
}

- (BOOL)isMultiCamClientCompositingSupported
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ");
  if (BoolAnswer)
  {
    [(AVCaptureOutput *)self session];
    objc_opt_class();
    LOBYTE(BoolAnswer) = objc_opt_isKindOfClass();
  }

  return BoolAnswer & 1;
}

- (AVCapturePhotoSettings)photoSettingsForSceneMonitoring
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  internal = self->_internal;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVCapturePhotoOutput_photoSettingsForSceneMonitoring__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSArray)enabledSemanticSegmentationMatteTypes
{
  v2 = self->_internal->enabledSemanticSegmentationTypes;

  return v2;
}

- (id)exifFocalLengthsByZoomFactor
{
  v2 = [(NSDictionary *)self->_internal->exifFocalLengthsByZoomFactor copy];

  return v2;
}

- (id)digitalFlashExposureTimes
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVCapturePhotoOutput_digitalFlashExposureTimes__block_invoke;
  block[3] = &unk_1E7870978;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v21;
  block[7] = &v17;
  block[8] = &v13;
  dispatch_sync(sceneDetectionObserversDispatchQueue, block);
  if (v14[3] && v22[3])
  {
    if (*(v18 + 6))
    {
      _digitalFlashExposureTimes = v26[5];
    }

    else
    {
      sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];

      _digitalFlashExposureTimes = [sourceDevice _digitalFlashExposureTimes];
      v26[5] = _digitalFlashExposureTimes;
    }

    if ([_digitalFlashExposureTimes count])
    {
      v10[0] = &unk_1F1CEA220;
      v7 = MEMORY[0x1E696AD98];
      [objc_msgSend_objectForKeyedSubscript_(v26[5]) doubleValue];
      v10[1] = &unk_1F1CEA238;
      v11[0] = [v7 numberWithDouble:?];
      v8 = MEMORY[0x1E696AD98];
      [objc_msgSend_objectForKeyedSubscript_(v26[5]) doubleValue];
      v11[1] = [v8 numberWithDouble:?];
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {

    v5 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v5;
}

void *__49__AVCapturePhotoOutput_digitalFlashExposureTimes__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = *(*(a1[4] + 16) + 312);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 16) + 296);
  *(*(a1[7] + 8) + 24) = *(*(a1[4] + 16) + 304);
  result = [*(*(a1[4] + 16) + 320) digitalFlashMode];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

- (int64_t)digitalFlashStatus
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVCapturePhotoOutput_digitalFlashStatus__block_invoke;
  v6[3] = &unk_1E78701D0;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  if (v8[3])
  {
    if (*(v12 + 6))
    {
      v4 = v16[3];
    }

    else
    {
      v4 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "_digitalFlashStatus"}];
      v16[3] = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v4;
}

void *__42__AVCapturePhotoOutput_digitalFlashStatus__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 16) + 296);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 16) + 288);
  result = [*(*(a1[4] + 16) + 320) digitalFlashMode];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)_updateCaptureReadiness
{
  FigSimpleMutexLock();
  internal = self->_internal;
  *(v29 + 13) = internal->readinessState.inflightUniqueIDWaitingForProcessing;
  v4 = *(&internal->readinessState.inflightNonOverlappingCaptureUniqueID + 3);
  v28 = *(&internal->readinessState.responsiveCaptureEnabled + 1);
  v29[0] = v4;
  sessionIsRunning = internal->readinessState.sessionIsRunning;
  autoDeferredPhotoDeliveryEnabled = internal->autoDeferredPhotoDeliveryEnabled;
  responsiveCaptureEnabled = internal->responsiveCaptureEnabled;
  v23 = sessionIsRunning;
  v24 = autoDeferredPhotoDeliveryEnabled;
  v25 = responsiveCaptureEnabled;
  v26 = v28;
  *v27 = *(&internal->readinessState.inflightNonOverlappingCaptureUniqueID + 3);
  *&v27[13] = internal->readinessState.inflightUniqueIDWaitingForProcessing;
  v8 = [AVCapturePhotoOutputReadinessCoordinator _captureReadinessFromReadinessState:&v23];
  v9 = self->_internal;
  captureReadiness = v9->captureReadiness;
  v17 = v8;
  v10 = [(NSMutableArray *)v9->readinessCoordinators copy];
  FigSimpleMutexUnlock();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v23 = sessionIsRunning;
        v24 = autoDeferredPhotoDeliveryEnabled;
        v25 = responsiveCaptureEnabled;
        v26 = v28;
        *v27 = v29[0];
        *&v27[13] = *(v29 + 13);
        [v15 _photoOutputDidUpdateCaptureReadinessState:&v23];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v12);
  }

  if (v17 != captureReadiness)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"captureReadiness"];
    FigSimpleMutexLock();
    self->_internal->captureReadiness = v17;
    FigSimpleMutexUnlock();
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"captureReadiness"];
  }
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    while ([(NSMutableArray *)self->_internal->readinessCoordinators count])
    {
      [(AVCapturePhotoOutput *)self _removeReadinessCoordinator:[(NSMutableArray *)self->_internal->readinessCoordinators lastObject]];
    }

    if (sIsForcedShutterSoundRegion == 1)
    {
      beginEndIrisMovieCaptureHostTimeDispatchGroup = self->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
      v5 = dispatch_time(0, 5000000000);
      dispatch_group_wait(beginEndIrisMovieCaptureHostTimeDispatchGroup, v5);
    }

    FigSimpleMutexDestroy();

    ct_green_tea_logger_destroy();
  }

  v6.receiver = self;
  v6.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v6 dealloc];
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  [(AVCapturePhotoOutput *)self _incrementObserverCountForKeyPath:path];
  v11.receiver = self;
  v11.super_class = AVCapturePhotoOutput;
  [(AVCapturePhotoOutput *)&v11 addObserver:observer forKeyPath:path options:options context:context];
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  [(AVCapturePhotoOutput *)self _decrementObserverCountForKeyPath:path];
  v7.receiver = self;
  v7.super_class = AVCapturePhotoOutput;
  [(AVCapturePhotoOutput *)&v7 removeObserver:observer forKeyPath:path];
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([key isEqualToString:@"highResolutionCaptureEnabled"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"maxPhotoDimensions"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AVCapturePhotoOutput;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, key);
}

- (void)capturePhotoWithSettings:(AVCapturePhotoSettings *)settings delegate:(id)delegate
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31 = 0;
  if (!delegate)
  {
    v17 = @"Nil delegate";
LABEL_20:
    v31 = v17;
LABEL_14:
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v15, v16))
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
    goto LABEL_16;
  }

  v8 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) == 0)
  {
    v17 = @"No active and enabled video connection";
    goto LABEL_20;
  }

  if ([(AVCapturePhotoSettings *)settings isAutoSpatialOverCaptureEnabled])
  {
    v17 = @"autoSpatialOverCaptureEnabled is not supported through this interface. Use beginMomentCapture...";
    goto LABEL_20;
  }

  if (!self->_internal->optimizesImagesForOfflineVideoStabilization)
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    v10 = CTGreenTeaOsLogHandle;
    if (CTGreenTeaOsLogHandle)
    {
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A917C000, v10, OS_LOG_TYPE_INFO, "Take a photo", buf, 2u);
      }
    }
  }

  v11 = [(AVCapturePhotoSettings *)settings copy];
  if (po_photoSettingsAreValid(v11, delegate, self, v8, &v31))
  {
    if (sIsForcedShutterSoundRegion == 1)
    {
      beginEndIrisMovieCaptureHostTimeDispatchGroup = self->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
      v13 = dispatch_time(0, 2000000000);
      dispatch_group_wait(beginEndIrisMovieCaptureHostTimeDispatchGroup, v13);
    }

    self->_internal->lastSettingsUniqueID = [v11 uniqueID];
    v14 = -[AVCapturePhotoOutput _figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:](self, "_figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:", v11, [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")], delegate, -[AVCaptureOutput connections](self, "connections"));
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __58__AVCapturePhotoOutput_capturePhotoWithSettings_delegate___block_invoke;
    v24 = &unk_1E7876038;
    v28 = v14;
    v29 = &v32;
    v25 = v11;
    selfCopy = self;
    v27 = delegate;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:&v21];
    v19 = *MEMORY[0x1E6987418];
    v20 = &unk_1F1CEA208;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    if ((v33[3] & 1) == 0)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v18, v19, v20, v21, v22, v23);
      [(AVCapturePhotoOutput *)self _dispatchFailureCallbacksForPhotoSettings:settings toDelegate:delegate withError:AVLocalizedError()];
    }
  }

  if (v31)
  {
    goto LABEL_14;
  }

LABEL_16:
  _Block_object_dispose(&v32, 8);
}

uint64_t __58__AVCapturePhotoOutput_capturePhotoWithSettings_delegate___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 64) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(*(*(v3 + 40) + 16) + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = [AVCapturePhotoRequest requestWithDelegate:*(v3 + 48) settings:*(v3 + 32) lensStabilizationSupported:v4 & 1];
    FigSimpleMutexLock();
    [*(*(*(v3 + 40) + 16) + 336) addObject:v5];
    ++*(*(*(v3 + 40) + 16) + 460);
    *(*(*(v3 + 40) + 16) + 464) = [*(v3 + 56) settingsID];
    if (![AVCapturePhotoOutputReadinessCoordinator _isOverlappingCaptureSupportedForPhotoSettings:*(v3 + 32) autoDeferredPhotoDeliveryEnabled:*(*(*(v3 + 40) + 16) + 433) responsiveCaptureEnabled:*(*(*(v3 + 40) + 16) + 440)])
    {
      *(*(*(v3 + 40) + 16) + 472) = [*(v3 + 56) settingsID];
    }

    FigSimpleMutexUnlock();
    [*(v3 + 40) _updateCaptureReadiness];
    v6 = [*(v3 + 40) sinkID];
    v7 = *(v3 + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v8)
    {

      return v8(a2, v6, v7);
    }

    else
    {
      v9 = *MEMORY[0x1E698FC40];
      v10 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (NSArray)preparedPhotoSettingsArray
{
  FigSimpleMutexLock();
  lastObject = [(NSMutableArray *)self->_internal->prepareRequests lastObject];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:objc_msgSend(lastObject copyItems:{"photoSettingsArray"), 1}];
  FigSimpleMutexUnlock();
  return v4;
}

- (void)setPreparedPhotoSettingsArray:(NSArray *)preparedPhotoSettingsArray completionHandler:(void *)completionHandler
{
  if (preparedPhotoSettingsArray)
  {
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(NSArray *)preparedPhotoSettingsArray countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(preparedPhotoSettingsArray);
          }

          if (!po_photoSettingsAreValid(*(*(&v23 + 1) + 8 * v10), 0, 0, 0, &v27))
          {
            v16 = MEMORY[0x1E695DF30];
            v17 = *MEMORY[0x1E695D940];
            goto LABEL_19;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)preparedPhotoSettingsArray countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = [AVCapturePreparedPhotoSettingsArrayRequest preparedPhotoSettingsArrayRequestWithArray:preparedPhotoSettingsArray completionHandler:completionHandler];
    v12 = [-[AVCaptureOutput session](self "session")];
    if (!completionHandler)
    {
      if (v12)
      {
        figCaptureIrisPreparedSettings = [(AVCapturePhotoOutput *)self figCaptureIrisPreparedSettings];
        v14 = [(AVCapturePhotoOutput *)self _figCaptureIrisPreparedSettingsForRequest:v11];
        [v14 setSettingsID:{objc_msgSend(figCaptureIrisPreparedSettings, "settingsID")}];
        if ([v14 isEqual:figCaptureIrisPreparedSettings])
        {
          -[AVCapturePreparedPhotoSettingsArrayRequest _setRequestID:](v11, "_setRequestID:", [figCaptureIrisPreparedSettings settingsID]);
        }
      }
    }

    FigSimpleMutexLock();
    v15 = [-[NSMutableArray lastObject](self->_internal->prepareRequests "lastObject")];
    [(NSMutableArray *)self->_internal->prepareRequests addObject:v11];
    FigSimpleMutexUnlock();
    if ([-[AVCaptureOutput session](self "session")])
    {
      if (v15 >= 1)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __72__AVCapturePhotoOutput_setPreparedPhotoSettingsArray_completionHandler___block_invoke;
        v21[3] = &unk_1E786ECD0;
        v21[4] = self;
        v21[5] = v15;
        [(AVCaptureOutput *)self performBlockOnSessionNotifyingThread:v21];
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__AVCapturePhotoOutput_setPreparedPhotoSettingsArray_completionHandler___block_invoke_2;
      v20[3] = &unk_1E7876060;
      v20[4] = self;
      v20[5] = v11;
      v20[6] = v15;
      [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v20];
    }
  }

  else
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
LABEL_19:
    v18 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v18, v19))
    {
      objc_exception_throw(v18);
    }

    NSLog(&cfstr_SuppressingExc.isa, v18);
  }
}

id *__72__AVCapturePhotoOutput_setPreparedPhotoSettingsArray_completionHandler___block_invoke_2(id *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v4 = [result[4] _figCaptureIrisPreparedSettingsForRequest:result[5]];
    v5 = [v2[4] sinkID];
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (*(v6 + 96))
    {
      v7 = *(v6 + 104);

      return v7(a2, v5, v4);
    }

    else
    {
      v11 = *MEMORY[0x1E698FC40];
      v12 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  else
  {
    v8 = result[6];
    if (v8 >= 1)
    {
      v9 = result[4];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72__AVCapturePhotoOutput_setPreparedPhotoSettingsArray_completionHandler___block_invoke_3;
      v10[3] = &unk_1E786ECD0;
      v10[4] = v9;
      v10[5] = v8;
      return [v9 performBlockOnSessionNotifyingThread:v10];
    }
  }

  return result;
}

- (NSArray)availablePhotoPixelFormatTypes
{
  v2 = self->_internal->availablePhotoPixelFormatTypes;

  return v2;
}

- (NSArray)availablePhotoCodecTypes
{
  v2 = self->_internal->availablePhotoCodecTypes;

  return v2;
}

+ (BOOL)isBayerRAWPixelFormat:(OSType)pixelFormat
{
  result = 1;
  if (pixelFormat <= 1734505011)
  {
    if (pixelFormat == 1650943796)
    {
      return result;
    }

    v4 = 1651519798;
    goto LABEL_7;
  }

  if (pixelFormat != 1734505012 && pixelFormat != 1735549492)
  {
    v4 = 1919379252;
LABEL_7:
    if (pixelFormat != v4)
    {
      return 0;
    }
  }

  return result;
}

- (void)setAppleProRAWEnabled:(BOOL)appleProRAWEnabled
{
  v3 = appleProRAWEnabled;
  if (appleProRAWEnabled && ![(AVCapturePhotoOutput *)self isAppleProRAWSupported])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v7, v8))
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else
  {
    internal = self->_internal;
    if (internal->appleProRAWEnabled != v3)
    {
      internal->appleProRAWEnabled = v3;
      sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
      [(AVCapturePhotoOutput *)self _updateAvailableRawPhotoPixelFormatTypesForSourceDevice:sourceDevice];
      [(AVCapturePhotoOutput *)self _updateAvailableRawPhotoFileTypesForSourceDevice:sourceDevice];
      [(AVCapturePhotoOutput *)self _updateVirtualDeviceConstituentPhotoDeliveryAndDualCameraDualPhotoDeliverySupportedForSourceDevice:sourceDevice];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (NSArray)availablePhotoFileTypes
{
  v2 = self->_internal->availablePhotoFileTypes;

  return v2;
}

- (NSArray)availableRawPhotoFileTypes
{
  v2 = self->_internal->availableRawPhotoFileTypes;

  return v2;
}

- (NSArray)availableRawPhotoCodecTypes
{
  if (AVGestaltGetBoolAnswer(@"AVGQLBZEVZETJU77LU4MEZH4LWJ54M"))
  {
    v7[0] = *MEMORY[0x1E6987D00];
    v7[1] = AVStringForOSType();
    v2 = MEMORY[0x1E695DEC8];
    v3 = v7;
    v4 = 2;
  }

  else
  {
    v6 = *MEMORY[0x1E6987D00];
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v6;
    v4 = 1;
  }

  return [v2 arrayWithObjects:v3 count:v4];
}

- (id)supportedRawPhotoCodecTypesForRawPhotoPixelFormatType:(unsigned int)type fileType:(id)fileType
{
  v4 = *&type;
  if (![(NSArray *)[(AVCapturePhotoOutput *)self availableRawPhotoFileTypes] containsObject:fileType])
  {
    return MEMORY[0x1E695E0F0];
  }

  if (![AVCapturePhotoOutput isAppleProRAWPixelFormat:v4])
  {
    if ([AVCapturePhotoOutput isBayerRAWPixelFormat:v4])
    {
      v7 = *MEMORY[0x1E6987D00];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    }

    return MEMORY[0x1E695E0F0];
  }

  return [(AVCapturePhotoOutput *)self availableRawPhotoCodecTypes];
}

- (NSArray)supportedPhotoPixelFormatTypesForFileType:(AVFileType)fileType
{
  if (![(NSArray *)[(AVCapturePhotoOutput *)self availablePhotoFileTypes] containsObject:fileType]|| ![(NSString *)fileType isEqualToString:*MEMORY[0x1E69874C8]])
  {
    return MEMORY[0x1E695E0F0];
  }

  return [(AVCapturePhotoOutput *)self availablePhotoPixelFormatTypes];
}

- (NSArray)supportedPhotoCodecTypesForFileType:(AVFileType)fileType
{
  if ([(NSArray *)[(AVCapturePhotoOutput *)self availablePhotoFileTypes] containsObject:fileType])
  {
    if ([(NSString *)fileType isEqualToString:*MEMORY[0x1E69874B0]])
    {
      v9 = *MEMORY[0x1E6987D00];
      v4 = &v9;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{1, v6, v7, v8, v9}];
    }

    if ([(NSString *)fileType isEqualToString:*MEMORY[0x1E69874A0]])
    {
      v8 = *MEMORY[0x1E6987CF0];
      v4 = &v8;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{1, v6, v7, v8, v9}];
    }

    if ([(NSString *)fileType isEqualToString:*MEMORY[0x1E69874A8]])
    {
      v7 = *MEMORY[0x1E6987CF0];
      v4 = &v7;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{1, v6, v7, v8, v9}];
    }

    if ([(NSString *)fileType isEqualToString:*MEMORY[0x1E6987490]])
    {
      v6 = *MEMORY[0x1E6987D00];
      v4 = &v6;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{1, v6, v7, v8, v9}];
    }
  }

  return MEMORY[0x1E695E0F0];
}

- (NSArray)supportedRawPhotoPixelFormatTypesForFileType:(AVFileType)fileType
{
  if (![(NSArray *)[(AVCapturePhotoOutput *)self availableRawPhotoFileTypes] containsObject:fileType])
  {
    return MEMORY[0x1E695E0F0];
  }

  return [(AVCapturePhotoOutput *)self availableRawPhotoPixelFormatTypes];
}

- (void)setMaxPhotoQualityPrioritization:(AVCapturePhotoQualityPrioritization)maxPhotoQualityPrioritization
{
  if ((maxPhotoQualityPrioritization - 1) >= 3)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, maxPhotoQualityPrioritization}];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    internal = self->_internal;
    if (internal->maxPhotoQualityPrioritization != maxPhotoQualityPrioritization)
    {
      internal->maxPhotoQualityPrioritization = maxPhotoQualityPrioritization;
      [(AVCapturePhotoOutput *)self _updateSemanticStyleRenderingSupportedForDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];
      [(AVCaptureOutput *)self bumpChangeSeed];
      internal = self->_internal;
    }

    internal->maxPhotoQualityPrioritizationHasBeenSetByClient = 1;
  }
}

- (void)setFastCapturePrioritizationEnabled:(BOOL)fastCapturePrioritizationEnabled
{
  internal = self->_internal;
  if (fastCapturePrioritizationEnabled && !internal->fastCapturePrioritizationSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->fastCapturePrioritizationEnabled != fastCapturePrioritizationEnabled)
  {
    internal->fastCapturePrioritizationEnabled = fastCapturePrioritizationEnabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)isEV0PhotoDeliverySupported
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  internal = self->_internal;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVCapturePhotoOutput_isEV0PhotoDeliverySupported__block_invoke;
  v6[3] = &unk_1E7870040;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isHDRScene
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AVCapturePhotoOutput_isHDRScene__block_invoke;
  v6[3] = &unk_1E78701D0;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  if (v8[3])
  {
    if (*(v12 + 6))
    {
      v4 = *(v16 + 24);
    }

    else
    {
      v4 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "_isHighDynamicRangeScene"}];
      *(v16 + 24) = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v4 & 1;
}

void *__34__AVCapturePhotoOutput_isHDRScene__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 16) + 285);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 16) + 276);
  result = [*(*(a1[4] + 16) + 320) HDRMode];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)isStillImageStabilizationScene
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVCapturePhotoOutput_isStillImageStabilizationScene__block_invoke;
  v6[3] = &unk_1E78701D0;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  if (*(v8 + 24))
  {
    if (*(v12 + 6))
    {
      v4 = *(v16 + 24);
    }

    else
    {
      v4 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "_isStillImageStabilizationScene"}];
      *(v16 + 24) = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v4 & 1;
}

void *__54__AVCapturePhotoOutput_isStillImageStabilizationScene__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 16) + 286);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 16) + 280);
  result = [*(*(a1[4] + 16) + 320) isAutoStillImageStabilizationEnabled];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)isFlashScene
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AVCapturePhotoOutput_isFlashScene__block_invoke;
  v6[3] = &unk_1E78701D0;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
  if (v8[3])
  {
    if (*(v12 + 6))
    {
      v4 = *(v16 + 24);
    }

    else
    {
      v4 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "_isFlashScene"}];
      *(v16 + 24) = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v4 & 1;
}

void *__36__AVCapturePhotoOutput_isFlashScene__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 16) + 284);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 16) + 272);
  result = [*(*(a1[4] + 16) + 320) flashMode];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)setDigitalFlashCaptureEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && [-[AVCapturePhotoOutput supportedDigitalFlashModes](self "supportedDigitalFlashModes")] <= 1)
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
    if (internal->digitalFlashCaptureEnabled != enabledCopy)
    {
      internal->digitalFlashCaptureEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setVirtualDeviceConstituentPhotoDeliveryEnabled:(BOOL)virtualDeviceConstituentPhotoDeliveryEnabled
{
  v3 = virtualDeviceConstituentPhotoDeliveryEnabled;
  if (virtualDeviceConstituentPhotoDeliveryEnabled && ![(AVCapturePhotoOutput *)self isVirtualDeviceConstituentPhotoDeliverySupported])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v8, v9))
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else
  {
    internal = self->_internal;
    if (internal->virtualDeviceConstituentPhotoDeliveryEnabled != v3)
    {
      if (internal->dualCameraDualPhotoDeliverySupported)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];
        internal = self->_internal;
      }

      internal->virtualDeviceConstituentPhotoDeliveryEnabled = v3;
      v6 = self->_internal;
      if (v6->dualCameraDualPhotoDeliverySupported)
      {
        v6->dualCameraDualPhotoDeliveryEnabled = v3;
      }

      sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
      [(AVCapturePhotoOutput *)self _updateCameraCalibrationDataDeliverySupportedForSourceDevice:sourceDevice];
      if (self->_internal->dualCameraDualPhotoDeliverySupported)
      {
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];
      }

      [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:sourceDevice];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setDualCameraDualPhotoDeliveryEnabled:(BOOL)dualCameraDualPhotoDeliveryEnabled
{
  v3 = dualCameraDualPhotoDeliveryEnabled;
  if (dualCameraDualPhotoDeliveryEnabled && ![(AVCapturePhotoOutput *)self isDualCameraDualPhotoDeliverySupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->dualCameraDualPhotoDeliveryEnabled != v3)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabled"];
    self->_internal->dualCameraDualPhotoDeliveryEnabled = v3;
    self->_internal->virtualDeviceConstituentPhotoDeliveryEnabled = v3;
    [(AVCapturePhotoOutput *)self _updateCameraCalibrationDataDeliverySupportedForSourceDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabled"];

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setAutoDeferredPhotoDeliveryEnabled:(BOOL)autoDeferredPhotoDeliveryEnabled
{
  v3 = autoDeferredPhotoDeliveryEnabled;
  if (autoDeferredPhotoDeliveryEnabled && ![(AVCapturePhotoOutput *)self isAutoDeferredPhotoDeliverySupported])
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
    if (internal->autoDeferredPhotoDeliveryEnabled != v3)
    {
      internal->autoDeferredPhotoDeliveryEnabled = v3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setMultiCamClientCompositingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCapturePhotoOutput *)self isMultiCamClientCompositingSupported])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  else
  {
    [(AVCaptureOutput *)self session];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(AVCapturePhotoOutput *)self isMultiCamClientCompositingEnabled]!= enabledCopy)
      {
        self->_internal->multiCamClientCompositingEnabled = enabledCopy;
        if (!enabledCopy)
        {

          self->_internal->multiCamClientCompositingPrimaryConnection = 0;
        }

        [(AVCaptureOutput *)self bumpChangeSeed];
      }

      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v7, v8))
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (void)setMultiCamClientCompositingPrimaryConnection:(id)connection secondaryConnection:(id)secondaryConnection
{
  if (connection | secondaryConnection && ![(AVCapturePhotoOutput *)self isMultiCamClientCompositingSupported])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
  }

  else if ([(AVCapturePhotoOutput *)self isMultiCamClientCompositingEnabled])
  {
    if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection])
    {
      if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:secondaryConnection])
      {
        mediaType = [connection mediaType];
        v8 = *MEMORY[0x1E6987608];
        if ([mediaType isEqual:*MEMORY[0x1E6987608]])
        {
          if ([objc_msgSend(secondaryConnection "mediaType")])
          {
            if ([(AVCapturePhotoOutput *)self multiCamClientCompositingPrimaryConnection]!= connection)
            {

              self->_internal->multiCamClientCompositingPrimaryConnection = connection;
              -[AVCapturePhotoOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [connection sourceDevice]);

              [(AVCaptureOutput *)self bumpChangeSeed];
            }

            return;
          }

          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
        }

        else
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
        }
      }

      else
      {
        v9 = MEMORY[0x1E695DF30];
        v10 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
  }

  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v11, v12))
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

- (int)_invokeClientCompositingCallbackForSettingsID:(int64_t)d compositingData:(id)data
{
  v6 = [(AVCapturePhotoOutput *)self _photoRequestForUniqueID:d];
  delegateStorage = [v6 delegateStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__AVCapturePhotoOutput__invokeClientCompositingCallbackForSettingsID_compositingData___block_invoke;
  v9[3] = &unk_1E786FBA0;
  v9[4] = self;
  v9[5] = v6;
  v9[6] = data;
  [delegateStorage invokeDelegateCallbackWithBlock:v9 synchronouslyIfDelegateQueueIsQueue:{objc_msgSend(objc_msgSend(v6, "delegateStorage"), "delegateQueue")}];
  return 0;
}

uint64_t __86__AVCapturePhotoOutput__invokeClientCompositingCallbackForSettingsID_compositingData___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) resolvedSettings];
    v6 = *(a1 + 48);

    return [a2 captureOutput:v4 readyForClientCompositingForResolvedSettings:v5 compositingData:v6];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v14 = 0;
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) resolvedSettings];
      ImageBuffer = CMSampleBufferGetImageBuffer([*(a1 + 48) primarySampleBuffer]);
      CMSampleBufferGetPresentationTimeStamp(&v13, [*(a1 + 48) primarySampleBuffer]);
      v11 = CMSampleBufferGetImageBuffer([*(a1 + 48) secondarySampleBuffer]);
      CMSampleBufferGetPresentationTimeStamp(&v12, [*(a1 + 48) secondarySampleBuffer]);
      [a2 captureOutput:v8 readyForClientCompositingForResolvedSettings:v9 primaryPixelBuffer:ImageBuffer primaryPTS:&v13 secondaryPixelBuffer:v11 secondaryPTS:&v12 outputPixelBuffer:CMSampleBufferGetImageBuffer(objc_msgSend(*(a1 + 48) compositeMetadata:{"outputSampleBuffer")), &v14}];
      return [*(a1 + 48) setCompositingMetadata:v14];
    }
  }

  return result;
}

- (void)setFocusPixelBlurScoreEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->focusPixelFocusBlurScoreSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->focusPixelFocusBlurScoreEnabled != enabled)
  {
    internal->focusPixelFocusBlurScoreEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setPreviewQualityAdjustedPhotoFilterRenderingEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->previewQualityAdjustedPhotoFilterRenderingSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->previewQualityAdjustedPhotoFilterRenderingEnabled != enabled)
  {
    internal->previewQualityAdjustedPhotoFilterRenderingEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setSemanticStyleRenderingEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->semanticStyleRenderingSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->semanticStyleRenderingEnabled != enabled)
  {
    internal->semanticStyleRenderingEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setExifFocalLengthsByZoomFactor:(id)factor
{
  exifFocalLengthsByZoomFactor = self->_internal->exifFocalLengthsByZoomFactor;
  if (exifFocalLengthsByZoomFactor != factor)
  {

    self->_internal->exifFocalLengthsByZoomFactor = [factor copy];

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setPhotoSettingsForSceneMonitoring:(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring
{
  if (photoSettingsForSceneMonitoring && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v13, v14))
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }

  else
  {
    hDRMode = [(AVCapturePhotoSettings *)self->_internal->photoSettingsForSceneMonitoring HDRMode];
    hDRMode2 = [(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring HDRMode];
    flashMode = [(AVCapturePhotoSettings *)self->_internal->photoSettingsForSceneMonitoring flashMode];
    flashMode2 = [(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring flashMode];
    photoQualityPrioritization = [(AVCapturePhotoSettings *)self->_internal->photoSettingsForSceneMonitoring photoQualityPrioritization];
    photoQualityPrioritization2 = [(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring photoQualityPrioritization];
    digitalFlashMode = [(AVCapturePhotoSettings *)self->_internal->photoSettingsForSceneMonitoring digitalFlashMode];
    digitalFlashMode2 = [(AVCapturePhotoSettings *)photoSettingsForSceneMonitoring digitalFlashMode];
    if (hDRMode != hDRMode2)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isHDRScene"];
    }

    if (flashMode != flashMode2)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isFlashScene"];
    }

    if (photoQualityPrioritization != photoQualityPrioritization2)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isStillImageStabilizationScene"];
    }

    if (digitalFlashMode != digitalFlashMode2)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"digitalFlashStatus"];
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"digitalFlashExposureTimes"];
    }

    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AVCapturePhotoOutput_setPhotoSettingsForSceneMonitoring___block_invoke;
    block[3] = &unk_1E786EAA8;
    block[4] = self;
    block[5] = photoSettingsForSceneMonitoring;
    dispatch_sync(sceneDetectionObserversDispatchQueue, block);
    if (hDRMode != hDRMode2)
    {
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isHDRScene"];
    }

    if (flashMode != flashMode2)
    {
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isFlashScene"];
    }

    if (photoQualityPrioritization != photoQualityPrioritization2)
    {
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isStillImageStabilizationScene"];
    }

    if (digitalFlashMode != digitalFlashMode2)
    {
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"digitalFlashExposureTimes"];
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"digitalFlashStatus"];
    }

    [(AVCapturePhotoOutput *)self _updateSceneMonitoringForSourceDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];
  }
}

void *__59__AVCapturePhotoOutput_setPhotoSettingsForSceneMonitoring___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 16) + 320) = result;
  return result;
}

- (void)_setHighResolutionCaptureEnabled:(BOOL)enabled bumpChangeSeedOut:(BOOL *)out
{
  if (self->_internal->highResolutionCaptureEnabled != enabled)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"highResolutionCaptureEnabled", out];
    self->_internal->highResolutionCaptureEnabled = enabled;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"highResolutionCaptureEnabled"];
  }
}

- (void)setHighResolutionCaptureEnabled:(BOOL)highResolutionCaptureEnabled
{
  if (self->_internal->highResolutionCaptureEnabled != highResolutionCaptureEnabled)
  {
    v9 = v3;
    v10 = v4;
    v5 = highResolutionCaptureEnabled;
    v8 = 0;
    [AVCapturePhotoOutput _setHighResolutionCaptureEnabled:"_setHighResolutionCaptureEnabled:bumpChangeSeedOut:" bumpChangeSeedOut:?];
    v7 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"}];
    if (v7)
    {
      -[AVCapturePhotoOutput _setMaxPhotoDimensions:bumpChangeSeedOut:](self, "_setMaxPhotoDimensions:bumpChangeSeedOut:", [v7 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:v5], &v8);
    }

    if (v8 == 1)
    {
      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)_setMaxPhotoDimensions:(id)dimensions bumpChangeSeedOut:(BOOL *)out
{
  var0 = dimensions.var0;
  var1 = dimensions.var1;
  if (*&self->_internal->maxPhotoDimensions != dimensions)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"maxPhotoDimensions"];
    internal = self->_internal;
    internal->maxPhotoDimensions.width = var0;
    internal->maxPhotoDimensions.height = var1;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"maxPhotoDimensions"];
    if (out)
    {
      *out = 1;
    }
  }
}

- (void)setMaxPhotoDimensions:(CMVideoDimensions)maxPhotoDimensions
{
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
  activeFormat = [sourceDevice activeFormat];
  if (activeFormat)
  {
    if ([activeFormat validateMaxPhotoDimensions:maxPhotoDimensions privateDimensionsEnabled:self->_internal->privatePhotoDimensionsEnabled])
    {
      v11 = 0;
      [(AVCapturePhotoOutput *)self _setMaxPhotoDimensions:maxPhotoDimensions bumpChangeSeedOut:&v11];
      [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:sourceDevice];
      [(AVCapturePhotoOutput *)self _setHighResolutionCaptureEnabled:[(AVCapturePhotoOutput *)self maxPhotoDimensionsAreHighResolution] bumpChangeSeedOut:&v11];
      if (v11 == 1)
      {
        [(AVCaptureOutput *)self bumpChangeSeed];
      }

      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v9, v10))
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (NSUInteger)maxBracketedCapturePhotoCount
{
  FigSimpleMutexLock();
  maxBracketedCapturePhotoCount = self->_internal->maxBracketedCapturePhotoCount;
  FigSimpleMutexUnlock();
  return maxBracketedCapturePhotoCount;
}

- (void)setLivePhotoCaptureEnabled:(BOOL)livePhotoCaptureEnabled
{
  v3 = livePhotoCaptureEnabled;
  if (livePhotoCaptureEnabled && ![(AVCapturePhotoOutput *)self isLivePhotoCaptureSupported])
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
    if (internal->livePhotoCaptureEnabled != v3)
    {
      internal->livePhotoCaptureEnabled = v3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setLivePhotoCaptureSuspended:(BOOL)livePhotoCaptureSuspended
{
  v3 = livePhotoCaptureSuspended;
  memset(&v19, 0, sizeof(v19));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v19, HostTimeClock);
  if (dword_1ED806900)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v3)
  {
    v7 = MEMORY[0x1E698FB90];
LABEL_7:
    self->_internal->livePhotoCaptureSuspended = v3;
    v8 = *v7;
    if (*v7)
    {
      if (sIsForcedShutterSoundRegion == 1)
      {
        internal = self->_internal;
        beginEndIrisMovieCaptureHostTimeQueue = internal->beginEndIrisMovieCaptureHostTimeQueue;
        beginEndIrisMovieCaptureHostTimeDispatchGroup = internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__AVCapturePhotoOutput_setLivePhotoCaptureSuspended___block_invoke;
        block[3] = &unk_1E786ECD0;
        block[4] = self;
        block[5] = v8;
        dispatch_group_async(beginEndIrisMovieCaptureHostTimeDispatchGroup, beginEndIrisMovieCaptureHostTimeQueue, block);
      }

      else
      {
        v14 = CMClockGetHostTimeClock();
        CMClockGetTime(&time, v14);
        [(AVCapturePhotoOutput *)self setFigCaptureSessionSectionProperty:v8 withHostTime:&time];
      }
    }

    return;
  }

  if ([(AVCapturePhotoOutput *)self isLivePhotoCaptureEnabled])
  {
    v7 = MEMORY[0x1E698FB98];
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v12, v13))
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
}

uint64_t __53__AVCapturePhotoOutput_setLivePhotoCaptureSuspended___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v5, HostTimeClock);
  return [v1 setFigCaptureSessionSectionProperty:v2 withHostTime:&v5];
}

- (void)setPreservesLivePhotoCaptureSuspendedOnSessionStop:(BOOL)preservesLivePhotoCaptureSuspendedOnSessionStop
{
  v3 = preservesLivePhotoCaptureSuspendedOnSessionStop;
  memset(&v8, 0, sizeof(v8));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v8, HostTimeClock);
  if (v3 && ![(AVCapturePhotoOutput *)self isLivePhotoCaptureSupported])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6, v8.value, *&v8.timescale, v8.epoch);
  }

  else
  {
    self->_internal->preservesLivePhotoCaptureSuspendedOnSessionStop = v3;
    -[AVCapturePhotoOutput setFigCaptureSessionSectionProperty:withValue:](self, "setFigCaptureSessionSectionProperty:withValue:", *MEMORY[0x1E698FBA8], [MEMORY[0x1E696AD98] numberWithBool:v3]);
  }
}

- (void)setLivePhotoAutoTrimmingEnabled:(BOOL)livePhotoAutoTrimmingEnabled
{
  internal = self->_internal;
  if (livePhotoAutoTrimmingEnabled && !internal->livePhotoCaptureSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->livePhotoAutoTrimmingEnabled != livePhotoAutoTrimmingEnabled)
  {
    internal->livePhotoAutoTrimmingEnabled = livePhotoAutoTrimmingEnabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (NSArray)availableLivePhotoVideoCodecTypes
{
  v2 = self->_internal->availableLivePhotoVideoCodecTypes;

  return v2;
}

- (void)setLivePhotoMovieProcessingSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  if (suspended && ![(AVCapturePhotoOutput *)self isLivePhotoCaptureEnabled])
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
    if (internal->livePhotoMovieProcessingSuspended != suspendedCopy)
    {
      internal->livePhotoMovieProcessingSuspended = suspendedCopy;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__AVCapturePhotoOutput_setLivePhotoMovieProcessingSuspended___block_invoke;
      v8[3] = &unk_1E786EF58;
      v8[4] = self;
      v9 = suspendedCopy;
      [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v8];
    }
  }
}

void *__61__AVCapturePhotoOutput_setLivePhotoMovieProcessingSuspended___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (!a2)
  {
    goto LABEL_5;
  }

  v5 = [result sinkID];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7 || (result = v7(a2, v5, *MEMORY[0x1E698FBA0], v6), result))
  {
    result = *(a1 + 32);
LABEL_5:
    *(result[2] + 257) = 0;
  }

  return result;
}

- (void)setDepthDataDeliveryEnabled:(BOOL)depthDataDeliveryEnabled
{
  internal = self->_internal;
  if (depthDataDeliveryEnabled && !internal->depthDataDeliverySupported)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else if (internal->depthDataDeliveryEnabled != depthDataDeliveryEnabled)
  {
    internal->depthDataDeliveryEnabled = depthDataDeliveryEnabled;
    sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
    [(AVCapturePhotoOutput *)self _updateContentAwareDistortionCorrectionSupportedForDevice:sourceDevice];
    [(AVCapturePhotoOutput *)self _updateAppleProRAWSupportedForDevice:sourceDevice];
    [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:sourceDevice];
    [(AVCapturePhotoOutput *)self _updateVirtualDeviceConstituentPhotoDeliveryAndDualCameraDualPhotoDeliverySupportedForSourceDevice:sourceDevice];

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setPortraitEffectsMatteDeliveryEnabled:(BOOL)portraitEffectsMatteDeliveryEnabled
{
  internal = self->_internal;
  if (portraitEffectsMatteDeliveryEnabled && !internal->portraitEffectsMatteDeliverySupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->portraitEffectsMatteDeliveryEnabled != portraitEffectsMatteDeliveryEnabled)
  {
    internal->portraitEffectsMatteDeliveryEnabled = portraitEffectsMatteDeliveryEnabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setEnabledSemanticSegmentationMatteTypes:(NSArray *)enabledSemanticSegmentationMatteTypes
{
  if (!enabledSemanticSegmentationMatteTypes)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v11;
    v10 = v12;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E695DFA8] setWithArray:?];
  [v5 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[AVCapturePhotoOutput availableSemanticSegmentationMatteTypes](self, "availableSemanticSegmentationMatteTypes"))}];
  if ([v5 count])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v16 = v5;
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v6;
    v10 = v7;
LABEL_5:
    v13 = [v9 exceptionWithName:v10 reason:v8 userInfo:{0, v16}];
    if (AVCaptureShouldThrowForAPIViolations(v13, v14))
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
    return;
  }

  v15 = [MEMORY[0x1E695DFD8] setWithArray:self->_internal->enabledSemanticSegmentationTypes];
  if (([v15 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", enabledSemanticSegmentationMatteTypes)}] & 1) == 0)
  {

    self->_internal->enabledSemanticSegmentationTypes = [(NSArray *)enabledSemanticSegmentationMatteTypes copy];

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

+ (NSData)JPEGPhotoDataRepresentationForJPEGSampleBuffer:(CMSampleBufferRef)JPEGSampleBuffer previewPhotoSampleBuffer:(CMSampleBufferRef)previewPhotoSampleBuffer
{
  blockBufferOut = 0;
  if (!JPEGSampleBuffer)
  {
    EXIFJPEGData = 0;
LABEL_17:
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v16, v17))
    {
      objc_exception_throw(v16);
    }

    NSLog(&cfstr_SuppressingExc.isa, v16);
    return EXIFJPEGData;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(JPEGSampleBuffer);
  if (CMFormatDescriptionGetMediaSubType(FormatDescription) == 1785750887)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(JPEGSampleBuffer);
    if (DataBuffer)
    {
      v9 = *MEMORY[0x1E695E480];
      if (CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut) || (totalLengthOut = 0, dataPointerOut = 0, CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, &totalLengthOut, &dataPointerOut)))
      {
        PreviewJPEGRepresentationForSampleBuffer = 0;
        EXIFJPEGData = 0;
      }

      else
      {
        v10 = CFDataCreateWithBytesNoCopy(v9, dataPointerOut, totalLengthOut, *MEMORY[0x1E695E498]);
        v11 = [self _copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:JPEGSampleBuffer];
        if (previewPhotoSampleBuffer)
        {
          PreviewJPEGRepresentationForSampleBuffer = po_createPreviewJPEGRepresentationForSampleBuffer(previewPhotoSampleBuffer, &unk_1F1CEA250);
        }

        else
        {
          PreviewJPEGRepresentationForSampleBuffer = 0;
        }

        EXIFJPEGData = CGImageCreateEXIFJPEGData();
        v14 = EXIFJPEGData;
        if (v11)
        {
          CFRelease(v11);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
      PreviewJPEGRepresentationForSampleBuffer = 0;
      EXIFJPEGData = 0;
    }
  }

  else
  {
    v15 = 0;
    PreviewJPEGRepresentationForSampleBuffer = 0;
    EXIFJPEGData = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  return EXIFJPEGData;
}

+ (NSData)DNGPhotoDataRepresentationForRawSampleBuffer:(CMSampleBufferRef)rawSampleBuffer previewPhotoSampleBuffer:(CMSampleBufferRef)previewPhotoSampleBuffer
{
  if (rawSampleBuffer)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(rawSampleBuffer);
    MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
    if ([&unk_1F1CEA5D8 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", MediaSubType)}])
    {
      if (CMSampleBufferGetImageBuffer(rawSampleBuffer))
      {
        if (previewPhotoSampleBuffer)
        {
          PreviewJPEGRepresentationForSampleBuffer = po_createPreviewJPEGRepresentationForSampleBuffer(previewPhotoSampleBuffer, 0);
        }

        else
        {
          PreviewJPEGRepresentationForSampleBuffer = 0;
        }

        v10 = [self _copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:rawSampleBuffer];
        CMPhotoDNGCreateDNGFromRAWPixelBuffer();
        if (v10)
        {
          CFRelease(v10);
        }

        return 0;
      }
    }

    else if ([AVCapturePhotoOutput DNGPhotoDataRepresentationForRawSampleBuffer:&v14 previewPhotoSampleBuffer:?])
    {
      return 0;
    }
  }

  v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v12, v13))
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
  return 0;
}

- (void)setContentAwareDistortionCorrectionEnabled:(BOOL)contentAwareDistortionCorrectionEnabled
{
  v3 = contentAwareDistortionCorrectionEnabled;
  if (contentAwareDistortionCorrectionEnabled && ![(AVCapturePhotoOutput *)self isContentAwareDistortionCorrectionSupported])
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
    if (internal->contentAwareDistortionCorrectionEnabled != v3)
    {
      internal->contentAwareDistortionCorrectionEnabled = v3;
      [(AVCapturePhotoOutput *)self _updateCameraCalibrationDataDeliverySupportedForSourceDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setResponsiveCaptureEnabled:(BOOL)responsiveCaptureEnabled
{
  v3 = responsiveCaptureEnabled;
  if (responsiveCaptureEnabled && ![(AVCapturePhotoOutput *)self isResponsiveCaptureSupported])
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
    if (internal->responsiveCaptureEnabled != v3)
    {
      internal->responsiveCaptureEnabled = v3;
      [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setZeroShutterLagEnabled:(BOOL)zeroShutterLagEnabled
{
  v3 = zeroShutterLagEnabled;
  if (zeroShutterLagEnabled && ![(AVCapturePhotoOutput *)self isZeroShutterLagSupported])
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
    self->_internal->zeroShutterLagAutomaticallyEnabled = 0;
    internal = self->_internal;
    if (internal->zeroShutterLagEnabled != v3)
    {
      internal->zeroShutterLagEnabled = v3;
      [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setUltraHighResolutionZeroShutterLagSupportEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCapturePhotoOutput *)self isUltraHighResolutionZeroShutterLagSupported])
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
    if (internal->ultraHighResolutionZeroShutterLagSupportEnabled != enabledCopy)
    {
      internal->ultraHighResolutionZeroShutterLagSupportEnabled = enabledCopy;
      [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:[(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice]];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCapturePhotoOutput *)self isUltraHighResolutionZeroShutterLagSupportEnabled])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {

    [(AVCapturePhotoOutput *)self _setUltraHighResolutionZeroShutterLagEnabled:enabledCopy];
  }
}

- (void)_setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (internal->ultraHighResolutionZeroShutterLagEnabled != enabled)
  {
    enabledCopy = enabled;
    internal->ultraHighResolutionZeroShutterLagEnabled = enabled;
    sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];

    [sourceDevice setUltraHighResolutionZeroShutterLagEnabled:enabledCopy];
  }
}

- (AVCapturePhotoOutputCaptureReadiness)captureReadiness
{
  FigSimpleMutexLock();
  captureReadiness = self->_internal->captureReadiness;
  FigSimpleMutexUnlock();
  return captureReadiness;
}

- (void)_updateCaptureReadinessStateForCompletedRequest:(id)request
{
  FigSimpleMutexLock();
  --self->_internal->readinessState.numberOfPhotoCapturesInflight;
  internal = self->_internal;
  if (internal->readinessState.inflightNonOverlappingCaptureUniqueID)
  {
    v6 = [objc_msgSend(request "resolvedSettings")];
    internal = self->_internal;
    if (v6 >= internal->readinessState.inflightNonOverlappingCaptureUniqueID)
    {
      internal->readinessState.inflightNonOverlappingCaptureUniqueID = 0;
      internal = self->_internal;
    }
  }

  if (internal->readinessState.inflightUniqueIDWaitingForCapture)
  {
    v7 = [objc_msgSend(request "resolvedSettings")];
    internal = self->_internal;
    if (v7 >= internal->readinessState.inflightUniqueIDWaitingForCapture)
    {
      internal->readinessState.inflightUniqueIDWaitingForCapture = 0;
      internal = self->_internal;
    }
  }

  if (internal->readinessState.inflightUniqueIDWaitingForProcessing)
  {
    v8 = [objc_msgSend(request "resolvedSettings")];
    v9 = self->_internal;
    if (v8 >= v9->readinessState.inflightUniqueIDWaitingForProcessing)
    {
      v9->readinessState.inflightUniqueIDWaitingForProcessing = 0;
    }
  }

  FigSimpleMutexUnlock();

  [(AVCapturePhotoOutput *)self _updateCaptureReadiness];
}

- (BOOL)_requestUsesWaitingForCaptureReadiness:(id)readiness
{
  if (!readiness)
  {
    return 0;
  }

  unresolvedSettings = [readiness unresolvedSettings];
  resolvedSettings = [readiness resolvedSettings];
  if ([unresolvedSettings digitalFlashMode] > 0)
  {
    return 1;
  }

  return [resolvedSettings isFlashEnabled];
}

- (BOOL)_requestUsesWaitingForProcessingReadiness:(id)readiness
{
  if (readiness)
  {
    unresolvedSettings = [readiness unresolvedSettings];
    if ([unresolvedSettings digitalFlashMode] <= 0 && (v5 = objc_msgSend(unresolvedSettings, "maxPhotoDimensions"), ((objc_msgSend(unresolvedSettings, "maxPhotoDimensions") >> 32) * v5) <= 47999999) && ((internal = self->_internal, internal->autoDeferredPhotoDeliveryEnabled) || internal->responsiveCaptureEnabled || objc_msgSend(unresolvedSettings, "photoQualityPrioritization") != 3))
    {
      isFilterRenderingEnabled = [(AVCapturePhotoOutput *)self isFilterRenderingEnabled];
      if (isFilterRenderingEnabled)
      {

        LOBYTE(isFilterRenderingEnabled) = [unresolvedSettings isDepthDataDeliveryEnabled];
      }
    }

    else
    {
      LOBYTE(isFilterRenderingEnabled) = 1;
    }
  }

  else
  {
    LOBYTE(isFilterRenderingEnabled) = 0;
  }

  return isFilterRenderingEnabled;
}

- (void)_addReadinessCoordinator:(id)coordinator
{
  FigSimpleMutexLock();
  [(NSMutableArray *)self->_internal->readinessCoordinators addObject:coordinator];
  internal = self->_internal;
  v6 = *&internal->readinessState.inflightNonOverlappingCaptureUniqueID;
  v7[0] = *&internal->readinessState.sessionIsRunning;
  v7[1] = v6;
  inflightUniqueIDWaitingForProcessing = internal->readinessState.inflightUniqueIDWaitingForProcessing;
  [coordinator _photoOutputDidUpdateCaptureReadinessState:v7];
  FigSimpleMutexUnlock();
}

- (void)_removeReadinessCoordinator:(id)coordinator
{
  FigSimpleMutexLock();
  [(NSMutableArray *)self->_internal->readinessCoordinators removeObjectIdenticalTo:coordinator];

  FigSimpleMutexUnlock();
}

- (void)setOptimizesImagesForOfflineVideoStabilization:(BOOL)stabilization
{
  internal = self->_internal;
  if (!stabilization)
  {
    if (!internal->optimizesImagesForOfflineVideoStabilization)
    {
      return;
    }

    internal->optimizesImagesForOfflineVideoStabilization = 0;
    goto LABEL_7;
  }

  if (internal->imageOptimizationForOfflineVideoStabilizationSupported)
  {
    if (internal->optimizesImagesForOfflineVideoStabilization == stabilization)
    {
      return;
    }

    internal->optimizesImagesForOfflineVideoStabilization = stabilization;
    [(AVCapturePhotoOutput *)self optimizedImageDimensionsForOfflineStabilization];
    CMVideoFormatDescriptionGetDimensions([objc_msgSend(-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "formatDescription"}]);
LABEL_7:

    [(AVCaptureOutput *)self bumpChangeSeed];
    return;
  }

  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v5, v6))
  {
    objc_exception_throw(v5);
  }

  NSLog(&cfstr_SuppressingExc.isa, v5);
}

- (void)setTimeLapseCaptureRate:(float)rate
{
  internal = self->_internal;
  timeLapseCaptureRate = internal->timeLapseCaptureRate;
  if (timeLapseCaptureRate != rate || timeLapseCaptureRate == 2.0 && internal->timeLapseCaptureRateNeedsUpdate)
  {
    internal->timeLapseCaptureRate = rate;
    self->_internal->timeLapseCaptureRateNeedsUpdate = 1;
    [(AVCapturePhotoOutput *)self _updateTimeLapseCaptureRate];
  }
}

- (void)_updateTimeLapseCaptureRate
{
  if (self->_internal->timeLapseCaptureRateNeedsUpdate)
  {
    sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
    if (sourceDevice)
    {
      *&v4 = self->_internal->timeLapseCaptureRate;
      [sourceDevice setTimeLapseCaptureRate:v4];
      self->_internal->timeLapseCaptureRateNeedsUpdate = 0;
    }
  }
}

- (void)_resetTimeLapseCaptureRate
{
  self->_internal->timeLapseCaptureRateNeedsUpdate = 1;
  if (self->_internal->timeLapseCaptureRate != 2.0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"timeLapseCaptureRate"];
    self->_internal->timeLapseCaptureRate = 2.0;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"timeLapseCaptureRate"];
  }
}

- (void)setFilterRenderingEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (internal->filterRenderingEnabled != enabled)
  {
    internal->filterRenderingEnabled = enabled;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)userInitiatedCaptureRequestAtTime:(unint64_t)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__AVCapturePhotoOutput_userInitiatedCaptureRequestAtTime___block_invoke;
  v3[3] = &unk_1E786F288;
  v3[4] = self;
  v3[5] = time;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v3];
}

uint64_t __58__AVCapturePhotoOutput_userInitiatedCaptureRequestAtTime___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v3 + 40)];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FBB0];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (void)setMovieRecordingEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled)
  {
    if (internal->videoCaptureEnabled)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
LABEL_10:
      v6 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations(v6, v7))
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
      return;
    }

    if (!internal->movieRecordingSupported)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      goto LABEL_10;
    }
  }

  if (internal->movieRecordingEnabled != enabled)
  {
    internal->movieRecordingEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setSpatialOverCaptureEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->spatialOverCaptureSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->spatialOverCaptureEnabled != enabled)
  {
    internal->spatialOverCaptureEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)beginMomentCaptureWithSettings:(id)settings delegate:(id)delegate
{
  v20 = 0;
  if (!self->_internal->movieRecordingEnabled)
  {
    v18 = @"movieRecordingEnabled must be YES in order to begin moment capture";
LABEL_31:
    v20 = v18;
LABEL_21:
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v16, v17))
    {
      objc_exception_throw(v16);
    }

    NSLog(&cfstr_SuppressingExc.isa, v16);
    return;
  }

  if (!settings)
  {
    v18 = @"Nil momentCaptureSettings";
    goto LABEL_31;
  }

  if ([settings uniqueID] <= self->_internal->lastMomentSettingsUniqueID)
  {
    v18 = @"momentCaptureSettings may not be re-used";
    goto LABEL_31;
  }

  v7 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([settings torchMode] && (objc_msgSend(-[AVCaptureConnection sourceDevice](v7, "sourceDevice"), "isTorchModeSupported:", objc_msgSend(settings, "torchMode")) & 1) == 0)
  {
    v18 = @"torchMode is unsupported in this configuration";
    goto LABEL_31;
  }

  isAutoSpatialOverCaptureEnabled = [settings isAutoSpatialOverCaptureEnabled];
  internal = self->_internal;
  if (isAutoSpatialOverCaptureEnabled && !internal->spatialOverCaptureEnabled)
  {
    v18 = @"spatialOverCaptureEnabled must be YES on the AVCapturePhotoOutput in order to begin a moment capture with autoSpatialOverCaptureEnabled set to YES";
    goto LABEL_31;
  }

  if (internal->momentCaptureInFlight)
  {
    v18 = @"Can't begin a new moment capture when you've already got a moment capture in flight";
    goto LABEL_31;
  }

  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) == 0)
  {
    v18 = @"No active and enabled video connection";
    goto LABEL_31;
  }

  if (![settings photoSettings] || po_photoSettingsAreValid(objc_msgSend(settings, "photoSettings"), delegate, self, v7, &v20))
  {
    self->_internal->momentCaptureInFlight = [settings copy];
    self->_internal->momentPhotoCaptureDelegateInFlight = delegate;
    self->_internal->momentCaptureRequestIdentifierInFlight = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    self->_internal->lastMomentSettingsUniqueID = [settings uniqueID];
    if ([settings photoSettings])
    {
      v10 = -[AVCapturePhotoOutput _figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:](self, "_figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:", [settings photoSettings], self->_internal->momentCaptureRequestIdentifierInFlight, delegate, -[AVCaptureOutput connections](self, "connections"));
      v11 = [objc_alloc(MEMORY[0x1E698F840]) initWithStillImageSettings:v10];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E698F840]) initWithSettingsID:objc_msgSend(settings captureRequestIdentifier:"uniqueID") userInitiatedCaptureTime:{self->_internal->momentCaptureRequestIdentifierInFlight, objc_msgSend(settings, "userInitiatedCaptureTime")}];
      [v11 setFlashMode:{objc_msgSend(settings, "flashMode")}];
      [v11 setAutoRedEyeReductionEnabled:{objc_msgSend(settings, "isAutoRedEyeReductionEnabled")}];
      [v11 setDigitalFlashMode:{objc_msgSend(settings, "digitalFlashMode")}];
      photoQualityPrioritization = [settings photoQualityPrioritization];
      maxPhotoQualityPrioritization = self->_internal->maxPhotoQualityPrioritization;
      if (photoQualityPrioritization < maxPhotoQualityPrioritization)
      {
        maxPhotoQualityPrioritization = [settings photoQualityPrioritization];
      }

      [v11 setQualityPrioritization:maxPhotoQualityPrioritization];
      [v11 setClientQualityPrioritization:{objc_msgSend(settings, "photoQualityPrioritization")}];
      [v11 setHDRMode:{objc_msgSend(settings, "HDRMode")}];
      [v11 setAutoOriginalPhotoDeliveryEnabled:{objc_msgSend(settings, "isAutoOriginalPhotoDeliveryEnabled")}];
      [v11 setAutoSpatialOverCaptureEnabled:{objc_msgSend(settings, "isAutoSpatialOverCaptureEnabled")}];
      [v11 setAutoDeferredProcessingEnabled:{-[AVCapturePhotoOutput isAutoDeferredPhotoDeliveryEnabled](self, "isAutoDeferredPhotoDeliveryEnabled")}];
      [v11 setRawOutputFormat:-[AVCapturePhotoOutput _internalRawFormatFromRawFormat:](self, "_internalRawFormatFromRawFormat:", objc_msgSend(settings, "rawOutputFormat"))];
      maxPhotoDimensions = [settings maxPhotoDimensions];
      [objc_msgSend(objc_msgSend(-[AVCaptureConnection sourceDevice](v7 "sourceDevice")];
      if (AVCaptureIsSensorMountedInPortraitOrientation(v15))
      {
        maxPhotoDimensions = AVCaptureFlippedDimensions(maxPhotoDimensions);
      }

      [v11 setOutputWidth:maxPhotoDimensions];
      [v11 setOutputHeight:HIDWORD(maxPhotoDimensions)];
      [v11 setDepthDataDeliveryEnabled:{objc_msgSend(settings, "isDepthDataDeliveryEnabled")}];
    }

    [v11 setTorchMode:{objc_msgSend(settings, "torchMode")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__AVCapturePhotoOutput_beginMomentCaptureWithSettings_delegate___block_invoke;
    v19[3] = &unk_1E786EFA8;
    v19[4] = self;
    v19[5] = v11;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v19];
  }

  if (v20)
  {
    goto LABEL_21;
  }
}

uint64_t __64__AVCapturePhotoOutput_beginMomentCaptureWithSettings_delegate___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v6)
    {

      return v6(a2, v4, v5);
    }

    else
    {
      v7 = *MEMORY[0x1E698FC40];
      v8 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)commitMomentCaptureToPhotoWithUniqueID:(int64_t)d
{
  internal = self->_internal;
  momentCaptureInFlight = internal->momentCaptureInFlight;
  if (momentCaptureInFlight && internal->momentPhotoCaptureDelegateInFlight)
  {
    [(AVCapturePhotoOutput *)self commitMomentCaptureWithUniqueID:d toPhotoCaptureWithSettings:[(AVMomentCaptureSettings *)momentCaptureInFlight photoSettings] delegate:self->_internal->momentPhotoCaptureDelegateInFlight];

    self->_internal->momentPhotoCaptureDelegateInFlight = 0;
  }

  else
  {
    [(AVCapturePhotoOutput *)self commitMomentCaptureToPhotoWithUniqueID:a2];
  }
}

- (void)commitMomentCaptureWithUniqueID:(int64_t)d toPhotoCaptureWithSettings:(id)settings delegate:(id)delegate
{
  v39 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (!settings)
  {
    v21 = @"Nil photoSettings";
LABEL_24:
    v39 = v21;
LABEL_16:
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v19, v20))
    {
      objc_exception_throw(v19);
    }

    NSLog(&cfstr_SuppressingExc.isa, v19);
    goto LABEL_18;
  }

  if (!delegate)
  {
    v21 = @"Nil delegate";
    goto LABEL_24;
  }

  internal = self->_internal;
  if (!internal->momentCaptureInFlight)
  {
    v21 = @"You must call beginMomentCaptureWithSettings: first";
    goto LABEL_24;
  }

  lastMomentSettingsUniqueID = internal->lastMomentSettingsUniqueID;
  if (lastMomentSettingsUniqueID != [settings uniqueID])
  {
    v21 = @"MomentCapture and PhotoSettings uniqueID mismatch";
    goto LABEL_24;
  }

  v11 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) == 0)
  {
    v21 = @"No active and enabled video connection";
    goto LABEL_24;
  }

  self->_internal->momentCaptureInFlight = 0;
  v12 = self->_internal->momentCaptureRequestIdentifierInFlight;
  self->_internal->momentCaptureRequestIdentifierInFlight = 0;
  if (!self->_internal->optimizesImagesForOfflineVideoStabilization)
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    v14 = CTGreenTeaOsLogHandle;
    if (CTGreenTeaOsLogHandle)
    {
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A917C000, v14, OS_LOG_TYPE_INFO, "Take a photo", buf, 2u);
      }
    }
  }

  v15 = [settings copy];
  if (po_photoSettingsAreValid(v15, delegate, self, v11, &v39))
  {
    if (sIsForcedShutterSoundRegion == 1)
    {
      beginEndIrisMovieCaptureHostTimeDispatchGroup = self->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
      v17 = dispatch_time(0, 2000000000);
      dispatch_group_wait(beginEndIrisMovieCaptureHostTimeDispatchGroup, v17);
    }

    self->_internal->lastSettingsUniqueID = [v15 uniqueID];
    v18 = [(AVCapturePhotoOutput *)self _figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:v15 captureRequestIdentifier:v12 delegate:delegate connections:[(AVCaptureOutput *)self connections]];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __92__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toPhotoCaptureWithSettings_delegate___block_invoke;
    v28 = &unk_1E7876038;
    v32 = v18;
    v33 = &v35;
    v29 = v15;
    selfCopy = self;
    delegateCopy = delegate;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:&v25];
    v23 = *MEMORY[0x1E6987418];
    v24 = &unk_1F1CEA208;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    if ((v36[3] & 1) == 0)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v22, v23, v24, v25, v26, v27);
      [(AVCapturePhotoOutput *)self _dispatchFailureCallbacksForPhotoSettings:settings toDelegate:delegate withError:AVLocalizedError()];
    }
  }

  if (v39)
  {
    goto LABEL_16;
  }

LABEL_18:
  _Block_object_dispose(&v35, 8);
}

uint64_t __92__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toPhotoCaptureWithSettings_delegate___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 64) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(*(*(v3 + 40) + 16) + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = [AVCapturePhotoRequest requestWithDelegate:*(v3 + 48) settings:*(v3 + 32) lensStabilizationSupported:v4 & 1];
    FigSimpleMutexLock();
    [*(*(*(v3 + 40) + 16) + 336) addObject:v5];
    FigSimpleMutexUnlock();
    v6 = [*(v3 + 40) sinkID];
    v7 = *(v3 + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {

      return v8(a2, v6, v7);
    }

    else
    {
      v9 = *MEMORY[0x1E698FC40];
      v10 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)commitMomentCaptureWithUniqueID:(int64_t)d toMovieRecordingWithSettings:(id)settings delegate:(id)delegate
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (!settings)
  {
    goto LABEL_28;
  }

  if (!delegate)
  {
    goto LABEL_28;
  }

  internal = self->_internal;
  if (!internal->momentCaptureInFlight)
  {
    goto LABEL_28;
  }

  lastMomentSettingsUniqueID = internal->lastMomentSettingsUniqueID;
  if (lastMomentSettingsUniqueID != [settings uniqueID])
  {
    goto LABEL_28;
  }

  v11 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (![-[AVCaptureOutput liveConnections](self "liveConnections")])
  {
    goto LABEL_28;
  }

  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  v13 = CTGreenTeaOsLogHandle;
  if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A917C000, v13, OS_LOG_TYPE_INFO, "Record a video", buf, 2u);
  }

  if (v14 = [settings copy], (v15 = v14) != 0) && ((v16 = self->_internal) == 0 || objc_msgSend(v14, "uniqueID") == v16->lastMomentSettingsUniqueID && -[NSArray containsObject:](v16->availableLivePhotoVideoCodecTypes, "containsObject:", objc_msgSend(v15, "videoCodecType"))) && objc_msgSend(v15, "movieFileURL") && objc_msgSend(objc_msgSend(v15, "movieFileURL"), "isFileURL") && ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector()) && (!objc_msgSend(v15, "isAutoSpatialOverCaptureEnabled") || (!v11 || objc_msgSend(-[AVCaptureConnection sourceDevice](v11, "sourceDevice"), "isSpatialOverCaptureEnabled")) && objc_msgSend(v15, "spatialOverCaptureMovieFileURL") && objc_msgSend(objc_msgSend(v15, "spatialOverCaptureMovieFileURL"), "isFileURL")))
  {
    if (sIsForcedShutterSoundRegion == 1)
    {
      beginEndIrisMovieCaptureHostTimeDispatchGroup = self->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
      v18 = dispatch_time(0, 2000000000);
      dispatch_group_wait(beginEndIrisMovieCaptureHostTimeDispatchGroup, v18);
      beginEndIrisMovieCaptureHostTimeQueue = self->_internal->beginEndIrisMovieCaptureHostTimeQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke;
      block[3] = &unk_1E786FEE0;
      block[4] = self;
      block[5] = &v39;
      dispatch_sync(beginEndIrisMovieCaptureHostTimeQueue, block);
      v20 = self->_internal->beginEndIrisMovieCaptureHostTimeDispatchGroup;
      v21 = dispatch_time(0, 2000000000);
      if (dispatch_group_wait(v20, v21))
      {
        v40[3] = mach_absolute_time();
      }
    }

    self->_internal->lastSettingsUniqueID = [v15 uniqueID];
    v22 = self->_internal->momentCaptureInFlight;
    self->_internal->momentCaptureInFlight = 0;

    self->_internal->momentPhotoCaptureDelegateInFlight = 0;
    self->_internal->momentCaptureRequestIdentifierInFlight = 0;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke_3;
    v30 = &unk_1E7876088;
    selfCopy = self;
    v32 = v15;
    v33 = v22;
    delegateCopy = delegate;
    v35 = &v43;
    v36 = &v39;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:&v27];
    v25 = *MEMORY[0x1E6987418];
    v26 = &unk_1F1CEA208;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    if ((v44[3] & 1) == 0)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v25, v26, v27, v28, v29, v30);
      [(AVCapturePhotoOutput *)self _dispatchFailureCallbacksForMovieRecordingSettings:settings momentCaptureSettings:v22 toDelegate:delegate withError:AVLocalizedError()];
    }
  }

  else
  {
LABEL_28:
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v23, v24))
    {
      objc_exception_throw(v23);
    }

    NSLog(&cfstr_SuppressingExc.isa, v23);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

void __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(*(a1 + 32) + 16) + 368));
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB98];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v7, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v7];
  inCompletionBlock[0] = MEMORY[0x1E69E9820];
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke_2;
  inCompletionBlock[3] = &unk_1E786FEE0;
  v6 = *(a1 + 32);
  AudioServicesPlaySystemSoundWithCompletion(0x45Du, inCompletionBlock);
}

void __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB90];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v5, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v5];
  *(*(*(a1 + 40) + 8) + 24) = mach_absolute_time();
  dispatch_group_leave(*(*(*(a1 + 32) + 16) + 368));
}

uint64_t __94__AVCapturePhotoOutput_commitMomentCaptureWithUniqueID_toMovieRecordingWithSettings_delegate___block_invoke_3(uint64_t result, uint64_t a2)
{
  *(*(*(result + 64) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    v3 = result;
    v4 = [*(result + 32) _figCaptureMovieFileRecordingSettingsForAVMomentCaptureMovieRecordingSettings:*(result + 40) momentCaptureSettings:*(result + 48) delegate:*(result + 56) connections:{objc_msgSend(*(result + 32), "connections")}];
    v5 = v4;
    if (*(*(*(v3 + 72) + 8) + 24))
    {
      [v4 setMovieStartTimeOverride:?];
    }

    v6 = [AVMomentCaptureMovieRequest requestWithDelegate:*(v3 + 56) movieRecordingSettings:*(v3 + 40) momentSettings:*(v3 + 48)];
    FigSimpleMutexLock();
    [*(*(*(v3 + 32) + 16) + 352) addObject:v6];
    FigSimpleMutexUnlock();
    v7 = [*(v3 + 32) sinkID];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v8)
    {

      return v8(a2, v7, v5);
    }

    else
    {
      v9 = *MEMORY[0x1E698FC40];
      v10 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)cancelMomentCaptureWithUniqueID:(int64_t)d
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) != 0 && (internal = self->_internal, internal->lastMomentSettingsUniqueID == d) && (momentCaptureInFlight = internal->momentCaptureInFlight) != 0)
  {

    self->_internal->momentCaptureInFlight = 0;
    self->_internal->momentPhotoCaptureDelegateInFlight = 0;

    self->_internal->momentCaptureRequestIdentifierInFlight = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AVCapturePhotoOutput_cancelMomentCaptureWithUniqueID___block_invoke;
    v9[3] = &unk_1E786ECF8;
    v9[4] = self;
    v9[5] = v10;
    v9[6] = d;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v9];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v7, v8))
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  _Block_object_dispose(v10, 8);
}

uint64_t __56__AVCapturePhotoOutput_cancelMomentCaptureWithUniqueID___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 40) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v6)
    {

      return v6(a2, v4, v5);
    }

    else
    {
      v7 = *MEMORY[0x1E698FC40];
      v8 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)endMomentCaptureWithUniqueID:(int64_t)d
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) != 0 && (internal = self->_internal, !internal->momentCaptureInFlight) && internal->lastMomentSettingsUniqueID == d)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__AVCapturePhotoOutput_endMomentCaptureWithUniqueID___block_invoke;
    v8[3] = &unk_1E786ECF8;
    v8[4] = self;
    v8[5] = v9;
    v8[6] = d;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v8];
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

  _Block_object_dispose(v9, 8);
}

uint64_t __53__AVCapturePhotoOutput_endMomentCaptureWithUniqueID___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 40) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v6)
    {

      return v6(a2, v4, v5);
    }

    else
    {
      v7 = *MEMORY[0x1E698FC40];
      v8 = &unk_1F1CEA370;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)setVideoCaptureEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && internal->movieRecordingEnabled)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->videoCaptureEnabled != enabled)
  {
    internal->videoCaptureEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)initiateCaptureWithSettings:(id)settings
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__AVCapturePhotoOutput_initiateCaptureWithSettings___block_invoke;
  v3[3] = &unk_1E786EFA8;
  v3[4] = self;
  v3[5] = settings;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v3];
}

uint64_t __52__AVCapturePhotoOutput_initiateCaptureWithSettings___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:objc_msgSend_timestamp(*(v3 + 40))];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FBB0];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (void)commitCaptureWithSettings:(id)settings delegate:(id)delegate
{
  if ([settings videoFileURL])
  {
    self->_internal->resumeLivePhotoMovieCaptureAfterVideoCaptureEnds = ![(AVCapturePhotoOutput *)self isLivePhotoCaptureSuspended];
    if ([(AVCapturePhotoOutput *)self isLivePhotoCaptureSuspended])
    {
      [(AVCapturePhotoOutput *)self setLivePhotoCaptureSuspended:0];
    }

    [settings setTurboModeEnabled:1];
    [settings setLivePhotoMovieFileURL:{objc_msgSend(settings, "videoFileURL")}];
    if (objc_msgSend_objectForKeyedSubscript_([settings videoFormat]))
    {
      [settings setLivePhotoVideoCodecType:{objc_msgSend_objectForKeyedSubscript_(objc_msgSend(settings, "videoFormat"))}];
    }

    [settings setLivePhotoMovieMetadata:{objc_msgSend(settings, "videoFileMetadata")}];
  }

  [(AVCapturePhotoOutput *)self capturePhotoWithSettings:settings delegate:delegate];
}

- (void)endCaptureWithUniqueID:(int64_t)d
{
  [(AVCapturePhotoOutput *)self setLivePhotoCaptureSuspended:1];
  if (self->_internal->resumeLivePhotoMovieCaptureAfterVideoCaptureEnds)
  {

    [(AVCapturePhotoOutput *)self setLivePhotoCaptureSuspended:0];
  }
}

- (id)deferredSettingsForCapturingPhotoWithSettings:(id)settings
{
  v4 = -[AVCapturePhotoOutput _figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:](self, "_figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:", settings, [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")], 0, -[AVCaptureOutput connections](self, "connections"));
  [v4 setDepthDataDeliveryEnabled:self->_internal->depthDataDeliveryEnabled];
  [v4 setEmbedsDepthDataInImage:{objc_msgSend(v4, "depthDataDeliveryEnabled")}];
  [v4 setPortraitEffectsMatteDeliveryEnabled:self->_internal->portraitEffectsMatteDeliveryEnabled];
  [v4 setEmbedsPortraitEffectsMatteInImage:{objc_msgSend(v4, "portraitEffectsMatteDeliveryEnabled")}];
  [v4 setEnabledSemanticSegmentationMatteURNs:{AVSemanticSegmentationCMPhotoURNsForMatteTypes(-[AVCapturePhotoOutput enabledSemanticSegmentationMatteTypes](self, "enabledSemanticSegmentationMatteTypes"))}];
  [v4 setEmbedsSemanticSegmentationMattesInImage:{objc_msgSend(objc_msgSend(v4, "enabledSemanticSegmentationMatteURNs"), "count") != 0}];
  v5 = -[AVCaptureDeferredPhotoSettings _initWithCaptureSettings:serializedProcessingSettings:]([AVCaptureDeferredPhotoSettings alloc], "_initWithCaptureSettings:serializedProcessingSettings:", v4, [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "serializedProcessingSettings"}]);

  return v5;
}

- (void)setConstantColorEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->constantColorSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->constantColorEnabled != enabled)
  {
    internal->constantColorEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setConstantColorClippingRecoveryEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->constantColorSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->constantColorClippingRecoveryEnabled != enabled)
  {
    internal->constantColorClippingRecoveryEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setConstantColorSaturationBoostEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->constantColorSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->constantColorSaturationBoostEnabled != enabled)
  {
    internal->constantColorSaturationBoostEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setSpatialPhotoCaptureEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->spatialPhotoCaptureSupported)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v4, v5))
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (internal->spatialPhotoCaptureEnabled != enabled)
  {
    internal->spatialPhotoCaptureEnabled = enabled;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setCameraSensorOrientationCompensationEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->cameraSensorOrientationCompensationSupported)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    internal->cameraSensorOrientationCompensationAutomaticallyEnabled = 0;
    v4 = self->_internal;
    if (v4->cameraSensorOrientationCompensationEnabled != enabled)
    {
      v4->cameraSensorOrientationCompensationEnabled = enabled;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setSession:(id)session
{
  v5.receiver = self;
  v5.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v5 setSession:?];
  if (!self->_internal->maxPhotoQualityPrioritizationHasBeenSetByClient)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (self->_internal->maxPhotoQualityPrioritization != v4)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"maxPhotoQualityPrioritization"];
      self->_internal->maxPhotoQualityPrioritization = v4;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"maxPhotoQualityPrioritization"];
    }
  }
}

- (id)connectionMediaTypes
{
  if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined(self, a2))
  {
    v5 = *MEMORY[0x1E6987608];
    v2 = &v5;
  }

  else
  {
    v4 = *MEMORY[0x1E6987608];
    v2 = &v4;
  }

  v2[1] = *MEMORY[0x1E69875A0];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:?];
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  mediaType = [connection mediaType];
  v8 = *MEMORY[0x1E6987608];
  v9 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
  v10 = MEMORY[0x1E69875A0];
  if ((v9 & 1) == 0 && ([mediaType isEqualToString:*MEMORY[0x1E69875A0]] & 1) == 0)
  {
    v28 = [mediaType isEqualToString:*MEMORY[0x1E69875D0]];
    if (!v28 || !AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined(v28, v29))
    {
      v18 = 1;
      goto LABEL_34;
    }
  }

  if ([mediaType isEqualToString:v8])
  {
    v38 = 0u;
    v39 = 0u;
    v11 = [(AVCapturePhotoOutput *)self isMultiCamClientCompositingEnabled]? 2 : 1;
    v40 = 0uLL;
    v41 = 0uLL;
    connections = [(AVCaptureOutput *)self connections];
    v13 = [(NSArray *)connections countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      reasonCopy = reason;
      v15 = 0;
      v16 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(connections);
          }

          v15 += [objc_msgSend(*(*(&v38 + 1) + 8 * i) "mediaType")];
        }

        v14 = [(NSArray *)connections countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v14);
      reason = reasonCopy;
      if (v15 == v11)
      {
LABEL_17:
        v18 = 2;
LABEL_34:
        v30 = AVCaptureOutputConnectionFailureReasonString(v18, self, connection);
        result = 0;
        *reason = v30;
        return result;
      }
    }
  }

  if ([mediaType isEqualToString:*v10])
  {
    if ([(AVCaptureOutput *)self connectionWithMediaType:mediaType])
    {
      goto LABEL_17;
    }

    return 1;
  }

  v19 = *MEMORY[0x1E69875D0];
  if (![mediaType isEqualToString:*MEMORY[0x1E69875D0]])
  {
    return 1;
  }

  v20 = [objc_msgSend(connection "inputPorts")];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  connections2 = [(AVCaptureOutput *)self connections];
  v22 = [(NSArray *)connections2 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v22)
  {
    return 1;
  }

  v23 = v22;
  v24 = *v34;
  while (2)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*v34 != v24)
      {
        objc_enumerationMutation(connections2);
      }

      v26 = *(*(&v33 + 1) + 8 * j);
      if ([objc_msgSend(v26 "mediaType")] && (objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v26, "inputPorts"), "firstObject"), "input"), "isEqual:", objc_msgSend(v20, "input")) & 1) == 0)
      {
        v18 = 3;
        goto LABEL_34;
      }
    }

    v23 = [(NSArray *)connections2 countByEnumeratingWithState:&v33 objects:v32 count:16];
    result = 1;
    if (v23)
    {
      continue;
    }

    return result;
  }
}

- (id)addConnection:(id)connection error:(id *)error
{
  mediaType = [connection mediaType];
  v8 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:mediaType];
  v15.receiver = self;
  v15.super_class = AVCapturePhotoOutput;
  v9 = [(AVCaptureOutput *)&v15 addConnection:connection error:error];
  if (v9)
  {
    if ([mediaType isEqual:*MEMORY[0x1E6987608]])
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      [(AVCapturePhotoOutput *)self _addObserversForConnectionDevice:v9];
      session = [(AVCaptureOutput *)self session];
      [session addObserver:self forKeyPath:@"sessionPreset" options:0 context:AVCapturePhotoOutputSessionPresetChangedContext];
      session2 = [(AVCaptureOutput *)self session];
      [session2 addObserver:self forKeyPath:@"outputs" options:0 context:AVCapturePhotoOutputSessionOutputsChangedContext];
      session3 = [(AVCaptureOutput *)self session];
      [session3 addObserver:self forKeyPath:@"running" options:5 context:AVCapturePhotoOutputSessionIsRunningChangedContext];
      self->_internal->timeLapseCaptureRateNeedsUpdate = 1;
      -[AVCapturePhotoOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [v9 sourceDevice]);
    }
  }

  return v9;
}

- (void)removeConnection:(id)connection
{
  mediaType = [connection mediaType];
  v6 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:mediaType];
  if (connection && (multiCamClientCompositingPrimaryConnection = self->_internal->multiCamClientCompositingPrimaryConnection, multiCamClientCompositingPrimaryConnection == connection))
  {

    self->_internal->multiCamClientCompositingPrimaryConnection = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = self;
  v16.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v16 removeConnection:connection];
  v9 = [mediaType isEqual:*MEMORY[0x1E6987608]];
  if (v6 == connection)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [(AVCapturePhotoOutput *)self _removeObserversForConnectionDevice:connection];
    v12 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:mediaType];
    if (v12)
    {
      [(AVCapturePhotoOutput *)self _addObserversForConnectionDevice:v12];
    }

    else
    {
      session = [(AVCaptureOutput *)self session];
      [session removeObserver:self forKeyPath:@"outputs" context:AVCapturePhotoOutputSessionOutputsChangedContext];
      session2 = [(AVCaptureOutput *)self session];
      [session2 removeObserver:self forKeyPath:@"sessionPreset" context:AVCapturePhotoOutputSessionPresetChangedContext];
      session3 = [(AVCaptureOutput *)self session];
      [session3 removeObserver:self forKeyPath:@"running" context:AVCapturePhotoOutputSessionIsRunningChangedContext];
    }

    -[AVCapturePhotoOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [v12 sourceDevice]);
  }
}

- (void)_addObserversForConnectionDevice:(id)device
{
  sourceDevice = [device sourceDevice];
  [sourceDevice addObserver:self forKeyPath:@"flashSceneDetectedForPhotoOutput" options:7 context:AVCapturePhotoOutputDeviceFlashSceneDetectedForPhotoOutputChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"HDRSceneDetectedForPhotoOutput" options:7 context:AVCapturePhotoOutputDeviceHDRSceneDetectedForPhotoOutputChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"isStillImageStabilizationScene" options:7 context:AVCapturePhotoOutputDeviceStillImageStabilizationSceneChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"digitalFlashSceneForPhotoOutput" options:7 context:AVCapturePhotoOutputDeviceDigitalFlashSceneForPhotoOutputChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"videoHDREnabled" options:0 context:AVCapturePhotoOutputDeviceVideoHDREnabledChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"spatialOverCaptureEnabled" options:0 context:AVCapturePhotoOutputDeviceSpatialOverCaptureEnabledChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"geometricDistortionCorrectionEnabled" options:3 context:AVCapturePhotoOutputDeviceGDCEnabledChangedContext];
  [sourceDevice addObserver:self forKeyPath:@"imageControlMode" options:15 context:AVCapturePhotoOutputDeviceImageControlModeChangedContext];
  v5 = AVCapturePhotoOutputDeviceDynamicAspectRatioChangedContext;

  [sourceDevice addObserver:self forKeyPath:@"dynamicAspectRatio" options:0 context:v5];
}

- (void)_removeObserversForConnectionDevice:(id)device
{
  sourceDevice = [device sourceDevice];
  [sourceDevice removeObserver:self forKeyPath:@"imageControlMode" context:AVCapturePhotoOutputDeviceImageControlModeChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"geometricDistortionCorrectionEnabled" context:AVCapturePhotoOutputDeviceGDCEnabledChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"spatialOverCaptureEnabled" context:AVCapturePhotoOutputDeviceSpatialOverCaptureEnabledChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"videoHDREnabled" context:AVCapturePhotoOutputDeviceVideoHDREnabledChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"digitalFlashSceneForPhotoOutput" context:AVCapturePhotoOutputDeviceDigitalFlashSceneForPhotoOutputChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"isStillImageStabilizationScene" context:AVCapturePhotoOutputDeviceStillImageStabilizationSceneChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"HDRSceneDetectedForPhotoOutput" context:AVCapturePhotoOutputDeviceHDRSceneDetectedForPhotoOutputChangedContext];
  [sourceDevice removeObserver:self forKeyPath:@"flashSceneDetectedForPhotoOutput" context:AVCapturePhotoOutputDeviceFlashSceneDetectedForPhotoOutputChangedContext];
  v5 = AVCapturePhotoOutputDeviceDynamicAspectRatioChangedContext;

  [sourceDevice removeObserver:self forKeyPath:@"dynamicAspectRatio" context:v5];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB58] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB80] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB78] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB88] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB28] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB70] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB60] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB08] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB40] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB30] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB48] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB50] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB18] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB38] object:session flags:0];
  [v5 addListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB68] object:session flags:0];
  v6.receiver = self;
  v6.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v6 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB58] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB80] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB78] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB88] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB28] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB70] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB60] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB08] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB40] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB30] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB48] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB50] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB18] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB38] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:po_notificationHandler name:*MEMORY[0x1E698FB68] object:session];
  [(AVCapturePhotoOutput *)self _resetTimeLapseCaptureRate];
  [(AVCapturePhotoOutput *)self _resetLivePhotoMovieProcessingSuspended];
  [(AVCapturePhotoOutput *)self _resetLivePhotoCaptureSuspended];
  v6.receiver = self;
  v6.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  FigSimpleMutexLock();
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->photoRequests];
  [(NSMutableArray *)self->_internal->photoRequests removeAllObjects];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->movieRequests];
  [(NSMutableArray *)self->_internal->movieRequests removeAllObjects];
  FigSimpleMutexUnlock();
  v7 = *MEMORY[0x1E6987418];
  v33[0] = *MEMORY[0x1E6987420];
  v6 = v33[0];
  v33[1] = v7;
  v34[0] = MEMORY[0x1E695E110];
  v34[1] = &unk_1F1CEA2C8;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v8 = AVLocalizedErrorWithUnderlyingOSStatus();
  v31[0] = v6;
  v31[1] = v7;
  v32[0] = MEMORY[0x1E695E118];
  v32[1] = &unk_1F1CEA2C8;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v9 = AVLocalizedErrorWithUnderlyingOSStatus();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v4);
        }

        [(AVCapturePhotoOutput *)self _dispatchFailureCallbacks:2147549183 forPhotoRequest:*(*(&v27 + 1) + 8 * i) withError:v8 cleanupRequest:0];
      }

      v11 = [v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [objc_msgSend(v18 "resolvedSettings")];
        v20 = v8;
        if (v19)
        {
          if (FigConsolidateMovieFragments())
          {
            v20 = v8;
          }

          else
          {
            v20 = v9;
          }
        }

        [(AVCapturePhotoOutput *)self _dispatchFailureCallbacks:63 forMovieRequest:v18 withError:v20 cleanupRequest:0];
      }

      v15 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v15);
  }
}

- (void)handleChangedActiveFormat:(id)format forDevice:(id)device
{
  [(AVCapturePhotoOutput *)self _updateSupportedPropertiesForSourceDevice:device];
  v7.receiver = self;
  v7.super_class = AVCapturePhotoOutput;
  [(AVCaptureOutput *)&v7 handleChangedActiveFormat:format forDevice:device];
}

- (void)handleBackgroundBlurActiveChangedForDevice:(id)device
{
  [(AVCapturePhotoOutput *)self _updateMaxBracketedCapturePhotoCountForSourceDevice:?];

  [(AVCapturePhotoOutput *)self _updateDepthDataDeliverySupportedForSourceDevice:device];
}

- (void)handleStudioLightingActiveChangedForDevice:(id)device
{
  [(AVCapturePhotoOutput *)self _updateMaxBracketedCapturePhotoCountForSourceDevice:?];

  [(AVCapturePhotoOutput *)self _updateDepthDataDeliverySupportedForSourceDevice:device];
}

- (void)handleBackgroundReplacementActiveChangedForDevice:(id)device
{
  [(AVCapturePhotoOutput *)self _updateMaxBracketedCapturePhotoCountForSourceDevice:?];

  [(AVCapturePhotoOutput *)self _updateDepthDataDeliverySupportedForSourceDevice:device];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  if (AVCapturePhotoOutputDeviceVideoHDREnabledChangedContext == context)
  {
    v9 = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608] sourceDevice:object];

    [(AVCapturePhotoOutput *)selfCopy _updateSupportedHDRModesForSourceDevice:v9];
    return;
  }

  if (AVCapturePhotoOutputSessionOutputsChangedContext == context || AVCapturePhotoOutputSessionPresetChangedContext == context)
  {
    v8 = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608] sourceDevice:object];
    [(AVCapturePhotoOutput *)selfCopy _updateLivePhotoCaptureSupportedForSourceDevice:v8];
    [(AVCapturePhotoOutput *)selfCopy _updateLivePhotoMovieDimensionsForSourceDevice:v8];
    [(AVCapturePhotoOutput *)selfCopy _updateAvailableLivePhotoVideoCodecTypesForSourceDevice:v8];
    [(AVCapturePhotoOutput *)selfCopy _updateAvailableRawPhotoPixelFormatTypesForSourceDevice:v8];

    [(AVCapturePhotoOutput *)selfCopy _updateAvailableRawPhotoFileTypesForSourceDevice:v8];
    return;
  }

  if (AVCapturePhotoOutputSessionIsRunningChangedContext == context)
  {
    v12 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    FigSimpleMutexLock();
    internal = selfCopy->_internal;
    if (internal->readinessState.sessionIsRunning == v12)
    {

      FigSimpleMutexUnlock();
    }

    else
    {
      internal->readinessState.sessionIsRunning = v12;
      FigSimpleMutexUnlock();

      [(AVCapturePhotoOutput *)selfCopy _updateCaptureReadiness];
    }

    return;
  }

  if (AVCapturePhotoOutputDeviceFlashSceneDetectedForPhotoOutputChangedContext == context)
  {
    v14 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    bOOLValue = [objc_msgSend_objectForKeyedSubscript_(change) BOOLValue];
    if (v14 == bOOLValue)
    {
      return;
    }

    v16 = bOOLValue;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v17 = selfCopy->_internal;
    v54 = 0;
    sceneDetectionObserversDispatchQueue = v17->sceneDetectionObserversDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__AVCapturePhotoOutput_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7870040;
    block[4] = selfCopy;
    block[5] = &v51;
    dispatch_sync(sceneDetectionObserversDispatchQueue, block);
    [(AVCapturePhotoOutput *)selfCopy _setIsFlashScene:v16 firingKVO:*(v52 + 24)];
    goto LABEL_42;
  }

  if (AVCapturePhotoOutputDeviceHDRSceneDetectedForPhotoOutputChangedContext == context)
  {
    v19 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    bOOLValue2 = [objc_msgSend_objectForKeyedSubscript_(change) BOOLValue];
    if (v19 == bOOLValue2)
    {
      return;
    }

    v21 = bOOLValue2;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v22 = selfCopy->_internal;
    v54 = 0;
    v23 = v22->sceneDetectionObserversDispatchQueue;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __71__AVCapturePhotoOutput_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v49[3] = &unk_1E7870040;
    v49[4] = selfCopy;
    v49[5] = &v51;
    dispatch_sync(v23, v49);
    [(AVCapturePhotoOutput *)selfCopy _setIsHDRScene:v21 firingKVO:*(v52 + 24)];
    goto LABEL_42;
  }

  if (AVCapturePhotoOutputDeviceStillImageStabilizationSceneChangedContext == context)
  {
    v24 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    bOOLValue3 = [objc_msgSend_objectForKeyedSubscript_(change) BOOLValue];
    if (v24 == bOOLValue3)
    {
      return;
    }

    v26 = bOOLValue3;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v27 = selfCopy->_internal;
    v54 = 0;
    v28 = v27->sceneDetectionObserversDispatchQueue;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __71__AVCapturePhotoOutput_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v48[3] = &unk_1E7870040;
    v48[4] = selfCopy;
    v48[5] = &v51;
    dispatch_sync(v28, v48);
    [(AVCapturePhotoOutput *)selfCopy _setIsStillImageStabilizationScene:v26 firingKVO:*(v52 + 24)];
    goto LABEL_42;
  }

  if (AVCapturePhotoOutputDeviceDigitalFlashSceneForPhotoOutputChangedContext == context)
  {
    v29 = objc_msgSend_objectForKeyedSubscript_(change, a2, *MEMORY[0x1E696A500], object);
    v30 = objc_msgSend_objectForKeyedSubscript_(change);
    intValue = [objc_msgSend_objectForKeyedSubscript_(v29) intValue];
    v32 = objc_msgSend_objectForKeyedSubscript_(v29);
    intValue2 = [objc_msgSend_objectForKeyedSubscript_(v30) intValue];
    v34 = [v32 isEqualToDictionary:objc_msgSend_objectForKeyedSubscript_(v30)] ^ 1;
    if (intValue == intValue2 && !v34)
    {
      return;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v35 = selfCopy->_internal->sceneDetectionObserversDispatchQueue;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __71__AVCapturePhotoOutput_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
    v43[3] = &unk_1E7870568;
    v43[4] = selfCopy;
    v43[5] = &v51;
    v43[6] = &v44;
    dispatch_sync(v35, v43);
    if (intValue == intValue2)
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v52 + 24);
    }

    [(AVCapturePhotoOutput *)selfCopy _setDigitalFlashScene:v30 fireStatusKVO:v36 fireExposureTimesKVO:v45[3] & v34 & 1];
    _Block_object_dispose(&v44, 8);
LABEL_42:
    _Block_object_dispose(&v51, 8);
    return;
  }

  if (AVCapturePhotoOutputDeviceImageControlModeChangedContext == context)
  {
    v37 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    intValue3 = [objc_msgSend_objectForKeyedSubscript_(change) intValue];
    intValue4 = [objc_msgSend_objectForKeyedSubscript_(change) intValue];
    if (intValue3 == 5)
    {
      v40 = v37;
    }

    else
    {
      v40 = 0;
    }

    if ((v40 & 1) != 0 || intValue4 == 6)
    {

      [(AVCapturePhotoOutput *)selfCopy _updateTimeLapseCaptureRate];
    }
  }

  else
  {
    if (AVCapturePhotoOutputDeviceSpatialOverCaptureEnabledChangedContext == context)
    {
      objectCopy = object;
LABEL_53:

      [(AVCapturePhotoOutput *)self _updateLivePhotoMovieDimensionsForSourceDevice:objectCopy];
      return;
    }

    if (AVCapturePhotoOutputDeviceGDCEnabledChangedContext != context)
    {
      if (AVCapturePhotoOutputDeviceDynamicAspectRatioChangedContext != context)
      {
        return;
      }

      objectCopy = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608] sourceDevice];
      self = selfCopy;
      goto LABEL_53;
    }

    v41 = [objc_msgSend_objectForKeyedSubscript_(change a2];
    if (v41 != [objc_msgSend_objectForKeyedSubscript_(change) BOOLValue])
    {
      sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)selfCopy connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];

      [(AVCapturePhotoOutput *)selfCopy _updateCameraCalibrationDataDeliverySupportedForSourceDevice:sourceDevice];
    }
  }
}

void *__71__AVCapturePhotoOutput_observeValueForKeyPath_ofObject_change_context___block_invoke_4(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 16) + 288) > 0;
  *(*(result[6] + 8) + 24) = *(*(result[4] + 16) + 304) > 0;
  return result;
}

- (void)_updateSupportedPropertiesForSourceDevice:(id)device
{
  deviceType = [device deviceType];
  internal = self->_internal;
  sourceDeviceType = internal->sourceDeviceType;
  internal->sourceDeviceType = deviceType;

  [(AVCapturePhotoOutput *)self _updateAvailablePhotoPixelFormatTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAvailablePhotoCodecTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAvailableRawPhotoPixelFormatTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAvailablePhotoFileTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAvailableRawPhotoFileTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAutoRedReductionSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateStillImageStabilizationSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateVirtualDeviceFusionSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateVirtualDeviceConstituentPhotoDeliveryAndDualCameraDualPhotoDeliverySupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateSupportedHDRModesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateSupportedFlashModesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateSupportedDigitalFlashModesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateMaxBracketedCapturePhotoCountForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateLensStabilizationDuringBracketedCaptureSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateLivePhotoCaptureSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateLivePhotoMovieDimensionsForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateAvailableLivePhotoVideoCodecTypesForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateOfflineVISSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateSceneMonitoringForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateDepthDataDeliverySupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateConstantColorSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateMovieRecordingSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateSpatialOverCaptureSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateDeferredProcessingSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateProcessedPhotoZoomWithoutUpscalingSupportedForSourceDevice:device];
  [(AVCapturePhotoOutput *)self _updateFocusPixelBlurScoreSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updatePreviewQualityAdjustedPhotoFilterRenderingSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateContentAwareDistortionCorrectionSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateAppleProRAWSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateHighPhotoQualitySupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateSemanticStyleRenderingSupportedForDevice:device];
  [(AVCapturePhotoOutput *)self _updateMaxPhotoDimensionsForDevice:device];
  [(AVCapturePhotoOutput *)self _updateSpatialPhotoCaptureSupportedForDevice:device];

  [(AVCapturePhotoOutput *)self _updateCameraSensorOrientationCompensationSupportedForDevice:device];
}

- (void)_updateAvailablePhotoPixelFormatTypesForSourceDevice:(id)device
{
  array = [MEMORY[0x1E695DF70] array];
  if (device)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType([objc_msgSend(device "activeFormat")]);
    if ((MediaSubType & 0xFFFFFFFD) == 0x78343230)
    {
      [array addObjectsFromArray:&unk_1F1CEA608];
    }

    else
    {
      v7 = MediaSubType;
      [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", MediaSubType)}];
      if (v7 == 875704422)
      {
        v8 = 875704438;
      }

      else
      {
        v8 = 875704422;
      }

      [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}];
    }

    [array addObject:&unk_1F1CEA310];
  }

  if (([array isEqual:self->_internal->availablePhotoPixelFormatTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availablePhotoPixelFormatTypes"];

    self->_internal->availablePhotoPixelFormatTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availablePhotoPixelFormatTypes"];
  }
}

- (void)_updateAvailablePhotoCodecTypesForSourceDevice:(id)device
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (device)
  {
    [array addObject:*MEMORY[0x1E6987D00]];
    if ([(AVCapturePhotoOutput *)self _HEVCAndHEIFAreAvailableForSourceDevice:device])
    {
      [v6 addObject:*MEMORY[0x1E6987CF0]];
    }
  }

  if (([v6 isEqual:self->_internal->availablePhotoCodecTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availablePhotoCodecTypes"];

    self->_internal->availablePhotoCodecTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availablePhotoCodecTypes"];
  }
}

- (void)_updateAvailableRawPhotoPixelFormatTypesForSourceDevice:(id)device
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [objc_msgSend(device "activeFormat")];
  if ([objc_msgSend(-[AVCaptureOutput session](self "session")])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [dictionary setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v6)}];
  }

  if (-[AVCapturePhotoOutput isAppleProRAWEnabled](self, "isAppleProRAWEnabled") && [objc_msgSend(device "activeFormat")])
  {
    v9 = [objc_msgSend(device "activeFormat")];
    v10 = [objc_msgSend(device "activeFormat")];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
    [dictionary setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10)}];
  }

  if (([dictionary isEqual:self->_internal->availableRawPhotoPixelFormatTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availableRawPhotoPixelFormatTypes"];

    self->_internal->availableRawPhotoPixelFormatTypes = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availableRawPhotoPixelFormatTypes"];
  }
}

- (unsigned)_internalRawFormatFromRawFormat:(unsigned int)format
{
  availableRawPhotoPixelFormatTypes = self->_internal->availableRawPhotoPixelFormatTypes;
  [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&format];
  v4 = objc_msgSend_objectForKeyedSubscript_(availableRawPhotoPixelFormatTypes);

  return [v4 intValue];
}

- (void)_updateAvailablePhotoFileTypesForSourceDevice:(id)device
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:*MEMORY[0x1E69874B0]];
  if ([(AVCapturePhotoOutput *)self _HEVCAndHEIFAreAvailableForSourceDevice:device])
  {
    [array addObject:*MEMORY[0x1E69874A0]];
  }

  [array addObject:*MEMORY[0x1E69874C8]];
  if ([device isDICOMSupported])
  {
    [array addObject:*MEMORY[0x1E6987490]];
  }

  if (([array isEqual:self->_internal->availablePhotoFileTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availablePhotoFileTypes"];

    self->_internal->availablePhotoFileTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availablePhotoFileTypes"];
  }
}

- (BOOL)_HEVCAndHEIFAreAvailableForSourceDevice:(id)device
{
  result = 0;
  if ([device isHEIFSupported])
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([objc_msgSend(device "activeFormat")]);
    [objc_msgSend(objc_msgSend(objc_msgSend(device "activeFormat")];
    v6 = v5;
    if (([objc_msgSend(device "activeFormat")] & 1) != 0 || v6 * (Dimensions.height * Dimensions.width) * 0.0625 * 0.0625 <= 1000000.0)
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateAutoRedReductionSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->autoRedEyeReductionSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"autoRedEyeReductionSupported"];
    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__AVCapturePhotoOutput__updateAutoRedReductionSupportedForSourceDevice___block_invoke;
    v7[3] = &unk_1E786EE40;
    v7[4] = self;
    v8 = v5;
    dispatch_sync(sceneDetectionObserversDispatchQueue, v7);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"autoRedEyeReductionSupported"];
  }
}

- (void)_updateAvailableRawPhotoFileTypesForSourceDevice:(id)device
{
  if ([(NSDictionary *)self->_internal->availableRawPhotoPixelFormatTypes count])
  {
    v5 = *MEMORY[0x1E6987498];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  if (([v4 isEqual:self->_internal->availableRawPhotoFileTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availableRawPhotoFileTypes"];

    self->_internal->availableRawPhotoFileTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availableRawPhotoFileTypes"];
  }
}

- (void)_updateStillImageStabilizationSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->stillImageStabilizationSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"stillImageStabilizationSupported"];
    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__AVCapturePhotoOutput__updateStillImageStabilizationSupportedForSourceDevice___block_invoke;
    v7[3] = &unk_1E786EE40;
    v7[4] = self;
    v8 = v5;
    dispatch_sync(sceneDetectionObserversDispatchQueue, v7);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"stillImageStabilizationSupported"];
  }
}

- (void)_updateVirtualDeviceFusionSupportedForSourceDevice:(id)device
{
  if ([device isVirtualDevice])
  {
    v5 = [objc_msgSend(device "activeFormat")];
  }

  else
  {
    v5 = 0;
  }

  if (self->_internal->virtualDeviceFusionSupported != v5)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"virtualDeviceFusionSupported"];
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"dualCameraFusionSupported"];
    self->_internal->virtualDeviceFusionSupported = v5;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"dualCameraFusionSupported"];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"virtualDeviceFusionSupported"];
  }
}

- (void)_updateVirtualDeviceConstituentPhotoDeliveryAndDualCameraDualPhotoDeliverySupportedForSourceDevice:(id)device
{
  v5 = [objc_msgSend(device "constituentDevices")];
  v6 = [objc_msgSend(objc_msgSend(device "activeFormat")];
  internal = self->_internal;
  if (internal->spatialPhotoCaptureEnabled)
  {
    v8 = 1;
  }

  else
  {
    depthDataDeliveryEnabled = internal->depthDataDeliveryEnabled;
    if (v5 > 2)
    {
      v8 = depthDataDeliveryEnabled;
    }

    else
    {
      v8 = 0;
    }
  }

  if ([device isVirtualDevice] && !((objc_msgSend(objc_msgSend(device, "constituentDevices"), "count") < 2) | v8 & 1) && ((objc_msgSend(objc_msgSend(device, "activeFormat"), "isStillImageDisparitySupported") & 1) != 0 || objc_msgSend(device, "isConstituentPhotoCalibrationDataSupported")))
  {
    v10 = (self->_internal->appleProRAWEnabled | v6) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 1;
  if (self->_internal->virtualDeviceConstituentPhotoDeliverySupported == (v10 & 1))
  {
    if ((v10 & 1) == 0)
    {
LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"virtualDeviceConstituentPhotoDeliverySupported"];
    self->_internal->virtualDeviceConstituentPhotoDeliverySupported = v11;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"virtualDeviceConstituentPhotoDeliverySupported"];
    if (!v11)
    {
      if (self->_internal->virtualDeviceConstituentPhotoDeliveryEnabled)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabled"];
        self->_internal->virtualDeviceConstituentPhotoDeliveryEnabled = 0;
        [(AVCapturePhotoOutput *)self _updateCameraCalibrationDataDeliverySupportedForSourceDevice:device];
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabled"];
      }

      goto LABEL_19;
    }
  }

  v12 = [device deviceType] == @"AVCaptureDeviceTypeBuiltInDualCamera";
LABEL_20:
  if (self->_internal->dualCameraDualPhotoDeliverySupported != v12)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"dualCameraDualPhotoDeliverySupported"];
    self->_internal->dualCameraDualPhotoDeliverySupported = v12;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"dualCameraDualPhotoDeliverySupported"];
    if (!v12 && self->_internal->dualCameraDualPhotoDeliveryEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];
      self->_internal->dualCameraDualPhotoDeliveryEnabled = 0;

      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];
    }
  }
}

- (void)_updateCameraCalibrationDataDeliverySupportedForSourceDevice:(id)device
{
  v5 = self->_internal->virtualDeviceConstituentPhotoDeliveryEnabled && ([device isGeometricDistortionCorrectionEnabled] & 1) == 0 && !self->_internal->contentAwareDistortionCorrectionEnabled;
  if ([objc_msgSend(device "constituentDevices")] == 2)
  {
    v6 = [objc_msgSend(device "activeFormat")];
  }

  else
  {
    v6 = 1;
  }

  v7 = v5 & v6 & 1;
  if (self->_internal->cameraCalibrationDataDeliverySupported != v7)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"cameraCalibrationDataDeliverySupported"];
    self->_internal->cameraCalibrationDataDeliverySupported = v7;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"cameraCalibrationDataDeliverySupported"];
  }
}

- (void)_updateSupportedHDRModesForSourceDevice:(id)device
{
  v5 = [objc_msgSend(device "activeFormat")];
  if (![objc_msgSend(device "activeFormat")] || (v6 = &unk_1F1CEA620, objc_msgSend(device, "isVideoHDREnabled")) && v5 != 2)
  {
    v6 = &unk_1F1CEA638;
  }

  if (([v6 isEqual:self->_internal->supportedHDRModes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"supportedHDRModes"];
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"HDRSupported"];
    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AVCapturePhotoOutput__updateSupportedHDRModesForSourceDevice___block_invoke;
    block[3] = &unk_1E786EAA8;
    block[4] = self;
    block[5] = v6;
    dispatch_sync(sceneDetectionObserversDispatchQueue, block);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"HDRSupported"];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"supportedHDRModes"];
  }

  v8 = [objc_msgSend(objc_msgSend(device "activeFormat")];
  if (self->_internal->EV0PhotoDeliverySupported != v8)
  {
    v9 = v8;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"EV0PhotoDeliverySupported"];
    v10 = self->_internal->sceneDetectionObserversDispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__AVCapturePhotoOutput__updateSupportedHDRModesForSourceDevice___block_invoke_2;
    v11[3] = &unk_1E786EE40;
    v11[4] = self;
    v12 = v9;
    dispatch_sync(v10, v11);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"EV0PhotoDeliverySupported"];
  }
}

void *__64__AVCapturePhotoOutput__updateSupportedHDRModesForSourceDevice___block_invoke(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 40)];
  *(*(*(a1 + 32) + 16) + 96) = result;
  return result;
}

- (void)_updateSupportedFlashModesForSourceDevice:(id)device
{
  if ([device hasFlash])
  {
    v4 = &unk_1F1CEA650;
  }

  else
  {
    v4 = &unk_1F1CEA668;
  }

  if (([v4 isEqual:self->_internal->supportedFlashModes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"supportedFlashModes"];
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"flashSupported"];
    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__AVCapturePhotoOutput__updateSupportedFlashModesForSourceDevice___block_invoke;
    v6[3] = &unk_1E786EAA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"flashSupported"];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"supportedFlashModes"];
  }
}

id __66__AVCapturePhotoOutput__updateSupportedFlashModesForSourceDevice___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 16) + 112) = result;
  return result;
}

- (void)_updateSupportedDigitalFlashModesForSourceDevice:(id)device
{
  if ([objc_msgSend(device "activeFormat")])
  {
    v4 = &unk_1F1CEA680;
  }

  else
  {
    v4 = &unk_1F1CEA698;
  }

  if (([v4 isEqual:self->_internal->supportedDigitalFlashModes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"supportedDigitalFlashModes"];
    sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__AVCapturePhotoOutput__updateSupportedDigitalFlashModesForSourceDevice___block_invoke;
    v6[3] = &unk_1E786EAA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(sceneDetectionObserversDispatchQueue, v6);
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"supportedDigitalFlashModes"];
    if ([v4 count] <= 1 && self->_internal->digitalFlashCaptureEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"digitalFlashCaptureEnabled"];
      self->_internal->digitalFlashCaptureEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"digitalFlashCaptureEnabled"];
    }
  }
}

id __73__AVCapturePhotoOutput__updateSupportedDigitalFlashModesForSourceDevice___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 16) + 120) = result;
  return result;
}

- (void)_updateMaxBracketedCapturePhotoCountForSourceDevice:(id)device
{
  activeFormat = [device activeFormat];
  [(AVCaptureOutput *)self session];
  objc_opt_class();
  v6 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0 && activeFormat)
  {
    sourceDeviceInput = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDeviceInput];
    if ([device isCenterStageActive])
    {
      isCenterStageAllowed = [sourceDeviceInput isCenterStageAllowed];
    }

    else
    {
      isCenterStageAllowed = 0;
    }

    if ([device isBackgroundBlurActive])
    {
      isBackgroundBlurAllowed = [sourceDeviceInput isBackgroundBlurAllowed];
    }

    else
    {
      isBackgroundBlurAllowed = 0;
    }

    if ([device isStudioLightActive])
    {
      isStudioLightingAllowed = [sourceDeviceInput isStudioLightingAllowed];
    }

    else
    {
      isStudioLightingAllowed = 0;
    }

    isBackgroundReplacementActive = [device isBackgroundReplacementActive];
    if (isBackgroundReplacementActive)
    {
      LOBYTE(isBackgroundReplacementActive) = [sourceDeviceInput isBackgroundReplacementAllowed];
    }

    if (((isCenterStageAllowed | isBackgroundBlurAllowed) | (isStudioLightingAllowed | isBackgroundReplacementActive)))
    {
      v6 = 0;
    }

    else
    {
      v6 = 8;
    }
  }

  FigSimpleMutexLock();
  maxBracketedCapturePhotoCount = self->_internal->maxBracketedCapturePhotoCount;
  FigSimpleMutexUnlock();
  if (v6 != maxBracketedCapturePhotoCount)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"maxBracketedCapturePhotoCount"];
  }

  FigSimpleMutexLock();
  self->_internal->maxBracketedCapturePhotoCount = v6;
  FigSimpleMutexUnlock();
  if (v6 != maxBracketedCapturePhotoCount)
  {

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"maxBracketedCapturePhotoCount"];
  }
}

- (void)_updateLensStabilizationDuringBracketedCaptureSupportedForSourceDevice:(id)device
{
  if ([device isLensStabilizationSupported])
  {
    FigSimpleMutexLock();
    v4 = self->_internal->maxBracketedCapturePhotoCount != 0;
    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = 0;
  }

  if (self->_internal->lensStabilizationDuringBracketedCaptureSupported != v4)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"lensStabilizationDuringBracketedCaptureSupported"];
    self->_internal->lensStabilizationDuringBracketedCaptureSupported = v4;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"lensStabilizationDuringBracketedCaptureSupported"];
  }
}

- (void)_updateLivePhotoCaptureSupportedForSourceDevice:(id)device
{
  if ([objc_msgSend(device "activeFormat")])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [-[AVCaptureOutput session](self "session")];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = 1;
            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
    if ([objc_msgSend(-[AVCaptureOutput session](self "session")])
    {
      if ([objc_msgSend(device "activeFormat")])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [-[AVCaptureOutput session](self "session")];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
LABEL_16:
          v15 = 0;
          while (1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_23;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
              if (v13)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }
      }
    }

    if (v10)
    {
LABEL_23:
      v16 = 0;
      goto LABEL_25;
    }
  }

  v16 = [objc_msgSend(device "activeFormat")];
LABEL_25:
  if (self->_internal->livePhotoCaptureSupported != v16)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoCaptureSupported"];
    self->_internal->livePhotoCaptureSupported = v16;
    self->_internal->videoCaptureSupported = v16;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoCaptureSupported"];
    internal = self->_internal;
    if ((v16 & 1) == 0)
    {
      if (internal->livePhotoCaptureEnabled)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoCaptureEnabled"];
        self->_internal->livePhotoCaptureEnabled = v16;
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoCaptureEnabled"];
        internal = self->_internal;
      }

      if (internal->preservesLivePhotoCaptureSuspendedOnSessionStop)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"preservesLivePhotoCaptureSuspendedOnSessionStop"];
        self->_internal->preservesLivePhotoCaptureSuspendedOnSessionStop = v16;
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"preservesLivePhotoCaptureSuspendedOnSessionStop"];
        internal = self->_internal;
      }
    }

    if (internal->livePhotoAutoTrimmingEnabled != v16)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoAutoTrimmingEnabled"];
      self->_internal->livePhotoAutoTrimmingEnabled = v16;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoAutoTrimmingEnabled"];
    }
  }
}

- (void)_updateLivePhotoMovieDimensionsForSourceDevice:(id)device
{
  activeFormat = [device activeFormat];
  if (!-[AVCapturePhotoOutput isLivePhotoCaptureSupported](self, "isLivePhotoCaptureSupported") || ![activeFormat isIrisSupported])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_24;
  }

  if ([activeFormat figCaptureSourceVideoFormat])
  {
    Dimensions = [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
  }

  width = Dimensions.width;
  v10 = HIDWORD(*&Dimensions);
  maxLivePhotoMovieDimensions = [objc_opt_class() maxLivePhotoMovieDimensions];
  if ([objc_msgSend(activeFormat "supportedDynamicAspectRatios")])
  {
    dynamicAspectRatio = [device dynamicAspectRatio];
    [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
    v14 = AVCaptureConvertDimensionsForAspectRatio(maxLivePhotoMovieDimensions, dynamicAspectRatio, v13);
LABEL_11:
    maxLivePhotoMovieDimensions = v14;
    goto LABEL_12;
  }

  [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  if (AVCaptureIsSensorMountedInPortraitOrientation(v15))
  {
    v14 = AVCaptureFlippedDimensions(maxLivePhotoMovieDimensions);
    goto LABEL_11;
  }

LABEL_12:
  v17 = width < maxLivePhotoMovieDimensions || v10 < SHIDWORD(maxLivePhotoMovieDimensions);
  if (v17)
  {
    v7 = v10;
  }

  else
  {
    v7 = HIDWORD(maxLivePhotoMovieDimensions);
  }

  if (v17)
  {
    v8 = width;
  }

  else
  {
    v8 = maxLivePhotoMovieDimensions;
  }

LABEL_24:
  internal = self->_internal;
  if (internal->livePhotoMovieDimensions.width != v8 || internal->livePhotoMovieDimensions.height != v7)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoMovieDimensions"];
    v19 = self->_internal;
    v19->livePhotoMovieDimensions.width = v8;
    v19->livePhotoMovieDimensions.height = v7;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoMovieDimensions"];
  }
}

- (void)_updateAvailableLivePhotoVideoCodecTypesForSourceDevice:(id)device
{
  activeFormat = [device activeFormat];
  if (-[AVCapturePhotoOutput isLivePhotoCaptureSupported](self, "isLivePhotoCaptureSupported") && [activeFormat isIrisSupported])
  {
    v6 = objc_opt_class();
    internal = self->_internal;
    v8 = *MEMORY[0x1E69874C0];
    v9 = *MEMORY[0x1E6987CF0];
    v11[0] = *MEMORY[0x1E6987CE8];
    v11[1] = v9;
    array = [v6 availableVideoCodecTypesForSourceDevice:device sourceFormat:0 outputDimensions:*&internal->livePhotoMovieDimensions fileType:v8 videoCodecTypesAllowList:objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 2)];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  if (([array isEqual:self->_internal->availableLivePhotoVideoCodecTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availableLivePhotoVideoCodecTypes"];

    self->_internal->availableLivePhotoVideoCodecTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availableLivePhotoVideoCodecTypes"];
  }
}

- (void)_updateOfflineVISSupportedForSourceDevice:(id)device
{
  activeFormat = [device activeFormat];
  v5 = [activeFormat isVideoStabilizationModeSupported:2];
  if (self->_internal->imageOptimizationForOfflineVideoStabilizationSupported != v5)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"imageOptimizationForOfflineVideoStabilizationSupported"];
    self->_internal->imageOptimizationForOfflineVideoStabilizationSupported = v5;
    internal = self->_internal;
    if (!internal->imageOptimizationForOfflineVideoStabilizationSupported && internal->optimizesImagesForOfflineVideoStabilization)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"optimizesImagesForOfflineVideoStabilization"];
      self->_internal->optimizesImagesForOfflineVideoStabilization = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"optimizesImagesForOfflineVideoStabilization"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"imageOptimizationForOfflineVideoStabilizationSupported"];
  }

  if (v5)
  {
    sourcesFromFrontFacingCamera = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourcesFromFrontFacingCamera];
    v8 = MEMORY[0x1E698FA38];
    if (!sourcesFromFrontFacingCamera)
    {
      v8 = MEMORY[0x1E698FA30];
    }

    v9 = *v8;
    Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
    v5 = 4 * llroundf(vcvts_n_f32_s32(((v9 + 1.0) * Dimensions.width), 2uLL));
    v11 = 4 * llroundf(vcvts_n_f32_s32(((v9 + 1.0) * Dimensions.height), 2uLL));
  }

  else
  {
    v11 = 0;
  }

  v12 = self->_internal;
  if (v5 != v12->optimizedImageDimensionsForOfflineStabilization.width || v11 != v12->optimizedImageDimensionsForOfflineStabilization.height)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"optimizedImageDimensionsForOfflineStabilization"];
    v13 = self->_internal;
    v13->optimizedImageDimensionsForOfflineStabilization.width = v5;
    v13->optimizedImageDimensionsForOfflineStabilization.height = v11;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"optimizedImageDimensionsForOfflineStabilization"];
  }
}

- (void)_resetLivePhotoCaptureSuspended
{
  if (self->_internal->livePhotoCaptureSuspended)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoCaptureSuspended"];
    self->_internal->livePhotoCaptureSuspended = 0;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoCaptureSuspended"];
  }
}

- (void)_resetLivePhotoMovieProcessingSuspended
{
  if (self->_internal->livePhotoMovieProcessingSuspended)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"livePhotoMovieProcessingSuspended"];
    self->_internal->livePhotoMovieProcessingSuspended = 0;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"livePhotoMovieProcessingSuspended"];
  }
}

- (void)_updateSceneMonitoringForSourceDevice:(id)device
{
  if (device)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__10;
    internal = self->_internal;
    v18 = __Block_byref_object_dispose__10;
    v19 = 0;
    sceneDetectionObserversDispatchQueue = internal->sceneDetectionObserversDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVCapturePhotoOutput__updateSceneMonitoringForSourceDevice___block_invoke;
    block[3] = &unk_1E7870040;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(sceneDetectionObserversDispatchQueue, block);
    supportedFlashModes = [(AVCapturePhotoOutput *)self supportedFlashModes];
    if (!-[NSArray containsObject:](supportedFlashModes, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15[5], "flashMode")}]))
    {
      [v15[5] setFlashMode:0];
    }

    supportedHDRModes = [(AVCapturePhotoOutput *)self supportedHDRModes];
    if (([supportedHDRModes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v15[5], "HDRMode"))}] & 1) == 0)
    {
      [v15[5] setHDRMode:0];
    }

    if (![(AVCapturePhotoOutput *)self _isStillImageStabilizationSupported]&& !self->_internal->highPhotoQualitySupported)
    {
      [v15[5] setPhotoQualityPrioritization:1];
    }

    supportedDigitalFlashModes = [(AVCapturePhotoOutput *)self supportedDigitalFlashModes];
    if (([supportedDigitalFlashModes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v15[5], "digitalFlashMode"))}] & 1) == 0)
    {
      [v15[5] setDigitalFlashMode:0];
    }

    [device _setPhotoSettingsForSceneMonitoring:v15[5]];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    [(AVCapturePhotoOutput *)self _setIsFlashScene:0 firingKVO:1];
    [(AVCapturePhotoOutput *)self _setIsHDRScene:0 firingKVO:1];
    [(AVCapturePhotoOutput *)self _setIsStillImageStabilizationScene:0 firingKVO:1];
    v10 = *MEMORY[0x1E69908B0];
    v11[0] = *MEMORY[0x1E69908B8];
    v11[1] = v10;
    v12[0] = &unk_1F1CEA328;
    v12[1] = MEMORY[0x1E695E0F8];
    -[AVCapturePhotoOutput _setDigitalFlashScene:fireStatusKVO:fireExposureTimesKVO:](self, "_setDigitalFlashScene:fireStatusKVO:fireExposureTimesKVO:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2], 1, 1);
  }
}

void *__62__AVCapturePhotoOutput__updateSceneMonitoringForSourceDevice___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 16) + 320) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateDepthDataDeliverySupportedForSourceDevice:(id)device
{
  sourceDeviceInput = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDeviceInput];
  v6 = [device isBackgroundBlurActive] && (objc_msgSend(sourceDeviceInput, "isBackgroundBlurAllowed") & 1) != 0 || objc_msgSend(device, "isStudioLightActive") && (objc_msgSend(sourceDeviceInput, "isStudioLightingAllowed") & 1) != 0 || objc_msgSend(device, "isBackgroundReplacementActive") && objc_msgSend(sourceDeviceInput, "isBackgroundReplacementAllowed");
  v7 = [objc_msgSend(device "activeFormat")] & !v6;
  if (self->_internal->depthDataDeliverySupported != v7)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"depthDataDeliverySupported"];
    self->_internal->depthDataDeliverySupported = v7;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"depthDataDeliverySupported"];
    if (!v7 && self->_internal->depthDataDeliveryEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"depthDataDeliveryEnabled"];
      self->_internal->depthDataDeliveryEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"depthDataDeliveryEnabled"];
    }
  }

  v8 = [objc_msgSend(device "activeDepthDataFormat")] & !v6;
  if (self->_internal->portraitEffectsMatteDeliverySupported != v8)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"portraitEffectsMatteDeliverySupported"];
    self->_internal->portraitEffectsMatteDeliverySupported = v8;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"portraitEffectsMatteDeliverySupported"];
    if (!v8 && self->_internal->portraitEffectsMatteDeliveryEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"portraitEffectsMatteDeliveryEnabled"];
      self->_internal->portraitEffectsMatteDeliveryEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"portraitEffectsMatteDeliveryEnabled"];
    }
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:{objc_msgSend(objc_msgSend(device, "activeDepthDataFormat"), "supportedSemanticSegmentationMatteTypes")}];
  if (v6)
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = v9;
  }

  if (([v10 isEqual:self->_internal->availableSemanticSegmentationTypes] & 1) == 0)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"availableSemanticSegmentationTypes"];

    self->_internal->availableSemanticSegmentationTypes = v10;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"availableSemanticSegmentationTypes"];
    if ([(NSArray *)self->_internal->enabledSemanticSegmentationTypes count])
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"enabledSemanticSegmentationTypes"];

      self->_internal->enabledSemanticSegmentationTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);

      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"enabledSemanticSegmentationTypes"];
    }
  }
}

- (void)_updateConstantColorSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(objc_msgSend(device "activeFormat")];
  if (self->_internal->constantColorSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"constantColorSupported"];
    self->_internal->constantColorSupported = v5;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"constantColorSupported"];
    if (!v5)
    {
      internal = self->_internal;
      if (internal->constantColorEnabled)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"constantColorEnabled"];
        self->_internal->constantColorEnabled = 0;
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"constantColorEnabled"];
        internal = self->_internal;
      }

      if (internal->constantColorClippingRecoveryEnabled)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"constantColorClippingRecoveryEnabled"];
        self->_internal->constantColorClippingRecoveryEnabled = 0;
        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"constantColorClippingRecoveryEnabled"];
        internal = self->_internal;
      }

      if (internal->constantColorSaturationBoostEnabled)
      {
        [(AVCapturePhotoOutput *)self willChangeValueForKey:@"constantColorSaturationBoostEnabled"];
        self->_internal->constantColorSaturationBoostEnabled = 0;

        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"constantColorSaturationBoostEnabled"];
      }
    }
  }
}

- (void)_updateMovieRecordingSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->movieRecordingSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"movieRecordingSupported"];
    self->_internal->movieRecordingSupported = v5;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"movieRecordingSupported"];
    if (!v5 && self->_internal->movieRecordingEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"movieRecordingEnabled"];
      self->_internal->movieRecordingEnabled = 0;

      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"movieRecordingEnabled"];
    }
  }
}

- (void)_updateSpatialOverCaptureSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->spatialOverCaptureSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"spatialOverCaptureSupported"];
    self->_internal->spatialOverCaptureSupported = v5;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"spatialOverCaptureSupported"];
    if (!v5 && self->_internal->spatialOverCaptureEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"spatialOverCaptureEnabled"];
      self->_internal->spatialOverCaptureEnabled = 0;

      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"spatialOverCaptureEnabled"];
    }
  }
}

- (void)_updateDeferredProcessingSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->autoDeferredPhotoDeliverySupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"autoDeferredPhotoDeliverySupported"];
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"deferredProcessingSupported"];
    self->_internal->autoDeferredPhotoDeliverySupported = v5;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"deferredProcessingSupported"];
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"autoDeferredPhotoDeliverySupported"];
    if (!v5 && self->_internal->autoDeferredPhotoDeliveryEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"autoDeferredPhotoDeliveryEnabled"];
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"deferredProcessingEnabled"];
      self->_internal->autoDeferredPhotoDeliveryEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"deferredProcessingEnabled"];

      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"autoDeferredPhotoDeliveryEnabled"];
    }
  }
}

- (void)_updateProcessedPhotoZoomWithoutUpscalingSupportedForSourceDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  if (self->_internal->processedPhotoZoomWithoutUpscalingSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"processedPhotoZoomWithoutUpscalingSupported"];
    self->_internal->processedPhotoZoomWithoutUpscalingSupported = v5;

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"processedPhotoZoomWithoutUpscalingSupported"];
  }
}

- (void)_updateFocusPixelBlurScoreSupportedForDevice:(id)device
{
  v4 = [objc_msgSend(objc_msgSend(device "activeFormat")];
  if (self->_internal->focusPixelFocusBlurScoreSupported != v4)
  {
    v5 = v4;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"focusPixelBlurScoreSupported"];
    self->_internal->focusPixelFocusBlurScoreSupported = v5;
    if (!v5 && self->_internal->focusPixelFocusBlurScoreEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"focusPixelBlurScoreEnabled"];
      self->_internal->focusPixelFocusBlurScoreEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"focusPixelBlurScoreEnabled"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"focusPixelBlurScoreSupported"];
  }
}

- (void)_updatePreviewQualityAdjustedPhotoFilterRenderingSupportedForDevice:(id)device
{
  isPreviewQualityAdjustedPhotoFilterRenderingSupported = [device isPreviewQualityAdjustedPhotoFilterRenderingSupported];
  if (self->_internal->previewQualityAdjustedPhotoFilterRenderingSupported != isPreviewQualityAdjustedPhotoFilterRenderingSupported)
  {
    v5 = isPreviewQualityAdjustedPhotoFilterRenderingSupported;
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"previewQualityAdjustedPhotoFilterRenderingSupported"];
    self->_internal->previewQualityAdjustedPhotoFilterRenderingSupported = v5;
    internal = self->_internal;
    if (!internal->previewQualityAdjustedPhotoFilterRenderingSupported && internal->previewQualityAdjustedPhotoFilterRenderingEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"previewQualityAdjustedPhotoFilterRenderingEnabled"];
      self->_internal->previewQualityAdjustedPhotoFilterRenderingEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"previewQualityAdjustedPhotoFilterRenderingEnabled"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"previewQualityAdjustedPhotoFilterRenderingSupported"];
  }
}

- (void)_updateContentAwareDistortionCorrectionSupportedForDevice:(id)device
{
  if ([objc_msgSend(device "activeFormat")])
  {
    if (self->_internal->depthDataDeliveryEnabled)
    {
      v5 = [objc_msgSend(device "activeFormat")];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if (self->_internal->contentAwareDistortionCorrectionSupported != v5)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"contentAwareDistortionCorrectionSupported"];
    self->_internal->contentAwareDistortionCorrectionSupported = v5;
    internal = self->_internal;
    if (!internal->contentAwareDistortionCorrectionSupported && internal->contentAwareDistortionCorrectionEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"contentAwareDistortionCorrectionEnabled"];
      self->_internal->contentAwareDistortionCorrectionEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"contentAwareDistortionCorrectionEnabled"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"contentAwareDistortionCorrectionSupported"];
  }
}

- (void)_updateAppleProRAWSupportedForDevice:(id)device
{
  if ([objc_msgSend(device "activeFormat")])
  {
    if (self->_internal->depthDataDeliveryEnabled)
    {
      v5 = [objc_msgSend(device "activeFormat")];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if (self->_internal->appleProRAWSupported != v5)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"appleProRAWSupported"];
    self->_internal->appleProRAWSupported = v5;
    internal = self->_internal;
    if (!internal->appleProRAWSupported && internal->appleProRAWEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"appleProRAWEnabled"];
      self->_internal->appleProRAWEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"appleProRAWEnabled"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"appleProRAWSupported"];
  }
}

- (void)_updateZeroShutterLagResponsiveCaptureAndFastCapturePrioritizationSupportedForDevice:(id)device
{
  activeFormat = [device activeFormat];
  if ([activeFormat isZeroShutterLagSupported])
  {
    internal = self->_internal;
    if (!internal->depthDataDeliveryEnabled)
    {
LABEL_5:
      v7 = !internal->virtualDeviceConstituentPhotoDeliveryEnabled;
      goto LABEL_7;
    }

    if ([activeFormat isZeroShutterLagWithDepthSupported])
    {
      internal = self->_internal;
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_7:
  v8 = v7;
  v9 = self->_internal;
  zeroShutterLagSupported = v9->zeroShutterLagSupported;
  zeroShutterLagEnabled = v9->zeroShutterLagEnabled;
  if (v9->zeroShutterLagAutomaticallyEnabled)
  {
    zeroShutterLagEnabled = zeroShutterLagEnabled != v8;
    if ((v8 & 1) == 0)
    {
      v12 = 0;
      v34 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    if (!v9->zeroShutterLagEnabled || v8 == 0)
    {
      v34 = 0;
      goto LABEL_20;
    }

    zeroShutterLagEnabled = 0;
  }

  isUltraHighResolutionZeroShutterLagSupported = [activeFormat isUltraHighResolutionZeroShutterLagSupported];
  v9 = self->_internal;
  if (isUltraHighResolutionZeroShutterLagSupported)
  {
    v34 = [activeFormat maxPhotoDimensionsAreUltraHighResolution:*&v9->maxPhotoDimensions privateDimensionsEnabled:v9->privatePhotoDimensionsEnabled];
    v9 = self->_internal;
  }

  else
  {
    v34 = 0;
  }

  v12 = 1;
LABEL_20:
  v29 = zeroShutterLagEnabled;
  ultraHighResolutionZeroShutterLagSupported = v9->ultraHighResolutionZeroShutterLagSupported;
  if (v9->ultraHighResolutionZeroShutterLagSupportEnabled)
  {
    v15 = v12 & v34;
    v32 = v12 & v34 ^ 1;
    ultraHighResolutionZeroShutterLagEnabled = v9->ultraHighResolutionZeroShutterLagEnabled;
    if (ultraHighResolutionZeroShutterLagEnabled && v15 != 0)
    {
      [device ultraHighResolutionZeroShutterLagEnabled];
      ultraHighResolutionZeroShutterLagEnabled = 0;
      v28 = 1;
      LOBYTE(v15) = 1;
      goto LABEL_30;
    }
  }

  else
  {
    v32 = 0;
    LOBYTE(v15) = 0;
    ultraHighResolutionZeroShutterLagEnabled = v9->ultraHighResolutionZeroShutterLagEnabled;
  }

  if ([device ultraHighResolutionZeroShutterLagEnabled])
  {
    [device setUltraHighResolutionZeroShutterLagEnabled:0];
  }

  v28 = 0;
LABEL_30:
  if ([activeFormat isFastCapturePrioritizationSupported])
  {
    v18 = self->_internal;
    if (!v18->depthDataDeliveryEnabled)
    {
LABEL_34:
      v19 = v18->responsiveCaptureSupported == v12;
      responsiveCaptureEnabled = v18->responsiveCaptureEnabled;
      v21 = v12 & responsiveCaptureEnabled;
      v30 = (v12 ^ 1) & responsiveCaptureEnabled;
      v22 = v12;
      goto LABEL_36;
    }

    if ([device isResponsiveCaptureWithDepthSupported])
    {
      v18 = self->_internal;
      goto LABEL_34;
    }
  }

  v21 = 0;
  v22 = 0;
  v18 = self->_internal;
  v19 = !v18->responsiveCaptureSupported;
  v30 = v18->responsiveCaptureEnabled;
LABEL_36:
  v31 = zeroShutterLagSupported;
  v23 = zeroShutterLagSupported;
  fastCapturePrioritizationSupported = v18->fastCapturePrioritizationSupported;
  v25 = !v19;
  if (fastCapturePrioritizationSupported != v21)
  {
    v25 = 1;
  }

  if (v23 != v8)
  {
    v25 = 1;
  }

  if (ultraHighResolutionZeroShutterLagSupported != v34)
  {
    v25 = 1;
  }

  if ((ultraHighResolutionZeroShutterLagEnabled | v32 | v25))
  {
    if (!v19)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"responsiveCaptureSupported"];
    }

    if (fastCapturePrioritizationSupported != v21)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"fastCapturePrioritizationSupported"];
    }

    if (ultraHighResolutionZeroShutterLagSupported != v34)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"ultraHighResolutionZeroShutterLagSupported"];
    }

    if (v32)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"ultraHighResolutionZeroShutterLagSupportEnabled"];
    }

    if (v31 != v8)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"zeroShutterLagSupported"];
    }

    self->_internal->responsiveCaptureSupported = v22;
    self->_internal->fastCapturePrioritizationSupported = v21;
    self->_internal->ultraHighResolutionZeroShutterLagSupported = v34;
    self->_internal->ultraHighResolutionZeroShutterLagSupportEnabled = v15;
    self->_internal->zeroShutterLagSupported = v8;
    if (v30)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"responsiveCaptureEnabled"];
      self->_internal->responsiveCaptureEnabled = 0;
    }

    v26 = self->_internal;
    if (v26->fastCapturePrioritizationSupported || !v26->fastCapturePrioritizationEnabled)
    {
      v27 = 0;
      if (!ultraHighResolutionZeroShutterLagEnabled)
      {
        goto LABEL_61;
      }
    }

    else
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"fastCapturePrioritizationEnabled"];
      self->_internal->fastCapturePrioritizationEnabled = 0;
      v27 = 1;
      if (!ultraHighResolutionZeroShutterLagEnabled)
      {
LABEL_61:
        if (v29)
        {
          [(AVCapturePhotoOutput *)self willChangeValueForKey:@"zeroShutterLagEnabled"];
          self->_internal->zeroShutterLagEnabled = v12;
          [(AVCapturePhotoOutput *)self didChangeValueForKey:@"zeroShutterLagEnabled"];
          if (!ultraHighResolutionZeroShutterLagEnabled)
          {
LABEL_63:
            if (!v27)
            {
LABEL_65:
              if (v30)
              {
                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"responsiveCaptureEnabled"];
              }

              if (v31 != v8)
              {
                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"zeroShutterLagSupported"];
              }

              if (v32)
              {
                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"ultraHighResolutionZeroShutterLagSupportEnabled"];
              }

              if (ultraHighResolutionZeroShutterLagSupported != v34)
              {
                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"ultraHighResolutionZeroShutterLagSupported"];
              }

              if (fastCapturePrioritizationSupported != v21)
              {
                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"fastCapturePrioritizationSupported"];
              }

              if (!v19)
              {

                [(AVCapturePhotoOutput *)self didChangeValueForKey:@"responsiveCaptureSupported"];
              }

              return;
            }

LABEL_64:
            [(AVCapturePhotoOutput *)self didChangeValueForKey:@"fastCapturePrioritizationEnabled"];
            goto LABEL_65;
          }
        }

        else if (!ultraHighResolutionZeroShutterLagEnabled)
        {
          goto LABEL_63;
        }

        [(AVCapturePhotoOutput *)self didChangeValueForKey:@"ultraHighResolutionZeroShutterLagEnabled"];
        if (!v27)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"ultraHighResolutionZeroShutterLagEnabled"];
    [(AVCapturePhotoOutput *)self _setUltraHighResolutionZeroShutterLagEnabled:v28];
    goto LABEL_61;
  }
}

- (void)_updateSemanticStyleRenderingSupportedForDevice:(id)device
{
  v4 = [objc_msgSend(device "activeFormat")];
  internal = self->_internal;
  if (v4)
  {
    v6 = internal->maxPhotoQualityPrioritization > 1;
  }

  else
  {
    v6 = 0;
  }

  if (internal->semanticStyleRenderingSupported == v6)
  {
    return;
  }

  [(AVCapturePhotoOutput *)self willChangeValueForKey:@"semanticStyleRenderingSupported"];
  self->_internal->semanticStyleRenderingSupported = v6;
  v7 = self->_internal;
  semanticStyleRenderingSupported = v7->semanticStyleRenderingSupported;
  semanticStyleRenderingEnabled = v7->semanticStyleRenderingEnabled;
  if (semanticStyleRenderingSupported)
  {
    if (!semanticStyleRenderingEnabled)
    {
      v10 = 1;
LABEL_10:
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"semanticStyleRenderingEnabled"];
      self->_internal->semanticStyleRenderingEnabled = v10;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"semanticStyleRenderingEnabled"];
    }
  }

  else if (semanticStyleRenderingEnabled)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [(AVCapturePhotoOutput *)self didChangeValueForKey:@"semanticStyleRenderingSupported"];
}

- (void)_updateMaxPhotoDimensionsForDevice:(id)device
{
  if ([device activeFormat])
  {
    v5 = [objc_msgSend(device "activeFormat")];
  }

  else
  {
    v5 = 0;
  }

  [(AVCapturePhotoOutput *)self _setMaxPhotoDimensions:v5 bumpChangeSeedOut:0];
}

- (void)_updateSpatialPhotoCaptureSupportedForDevice:(id)device
{
  if ([objc_msgSend(objc_msgSend(device "activeFormat")])
  {
    BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQMZMLNHBX4MFF5QD4PJWZFEVCEI");
  }

  else
  {
    BoolAnswer = 0;
  }

  if (self->_internal->spatialPhotoCaptureSupported != BoolAnswer)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"spatialPhotoCaptureSupported"];
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"stereoPhotoCaptureSupported"];
    self->_internal->spatialPhotoCaptureSupported = BoolAnswer;
    internal = self->_internal;
    if (!internal->spatialPhotoCaptureSupported && internal->spatialPhotoCaptureEnabled)
    {
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"spatialPhotoCaptureEnabled"];
      [(AVCapturePhotoOutput *)self willChangeValueForKey:@"stereoPhotoCaptureEnabled"];
      self->_internal->spatialPhotoCaptureEnabled = 0;
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"stereoPhotoCaptureEnabled"];
      [(AVCapturePhotoOutput *)self didChangeValueForKey:@"spatialPhotoCaptureEnabled"];
    }

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"stereoPhotoCaptureSupported"];

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"spatialPhotoCaptureSupported"];
  }
}

- (void)_updateCameraSensorOrientationCompensationSupportedForDevice:(id)device
{
  v4 = [objc_msgSend_objectForKeyedSubscript_(objc_msgSend(device "figCaptureSourceAttributes"))];
  v5 = v4 != 0;
  internal = self->_internal;
  cameraSensorOrientationCompensationSupported = internal->cameraSensorOrientationCompensationSupported;
  cameraSensorOrientationCompensationEnabled = internal->cameraSensorOrientationCompensationEnabled;
  cameraSensorOrientationCompensationAutomaticallyEnabled = internal->cameraSensorOrientationCompensationAutomaticallyEnabled;
  if (v4)
  {
    v10 = cameraSensorOrientationCompensationEnabled;
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = cameraSensorOrientationCompensationEnabled;
  }

  v12 = cameraSensorOrientationCompensationEnabled != v5;
  if (cameraSensorOrientationCompensationAutomaticallyEnabled)
  {
    v13 = v4 != 0;
  }

  else
  {
    v13 = v10;
  }

  if (cameraSensorOrientationCompensationAutomaticallyEnabled)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  if (cameraSensorOrientationCompensationSupported != v5)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"cameraSensorOrientationCompensationSupported"];
    self->_internal->cameraSensorOrientationCompensationSupported = v5;
  }

  if (v14)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"cameraSensorOrientationCompensationEnabled"];
    self->_internal->cameraSensorOrientationCompensationEnabled = v13;
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"cameraSensorOrientationCompensationEnabled"];
  }

  if (cameraSensorOrientationCompensationSupported != v5)
  {

    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"cameraSensorOrientationCompensationSupported"];
  }
}

uint64_t __58__AVCapturePhotoOutput__incrementObserverCountForKeyPath___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = 272;
  }

  else if (*(result + 41))
  {
    v1 = 276;
  }

  else if (*(result + 42))
  {
    v1 = 280;
  }

  else if (*(result + 43))
  {
    v1 = 288;
  }

  else
  {
    if (*(result + 44) != 1)
    {
      return result;
    }

    v1 = 304;
  }

  ++*(*(*(result + 32) + 16) + v1);
  return result;
}

uint64_t __58__AVCapturePhotoOutput__decrementObserverCountForKeyPath___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = 272;
  }

  else if (*(result + 41))
  {
    v1 = 276;
  }

  else if (*(result + 42))
  {
    v1 = 280;
  }

  else if (*(result + 43))
  {
    v1 = 288;
  }

  else
  {
    if (*(result + 44) != 1)
    {
      return result;
    }

    v1 = 304;
  }

  --*(*(*(result + 32) + 16) + v1);
  return result;
}

- (void)_setIsFlashScene:(BOOL)scene firingKVO:(BOOL)o
{
  oCopy = o;
  if (o)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isFlashScene"];
  }

  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AVCapturePhotoOutput__setIsFlashScene_firingKVO___block_invoke;
  v8[3] = &unk_1E786EE40;
  v8[4] = self;
  sceneCopy = scene;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v8);
  if (oCopy)
  {
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isFlashScene"];
  }
}

- (void)_setIsHDRScene:(BOOL)scene firingKVO:(BOOL)o
{
  oCopy = o;
  if (o)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isHDRScene"];
  }

  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AVCapturePhotoOutput__setIsHDRScene_firingKVO___block_invoke;
  v8[3] = &unk_1E786EE40;
  v8[4] = self;
  sceneCopy = scene;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v8);
  if (oCopy)
  {
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isHDRScene"];
  }
}

- (void)_setIsStillImageStabilizationScene:(BOOL)scene firingKVO:(BOOL)o
{
  oCopy = o;
  if (o)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"isStillImageStabilizationScene"];
  }

  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__AVCapturePhotoOutput__setIsStillImageStabilizationScene_firingKVO___block_invoke;
  v8[3] = &unk_1E786EE40;
  v8[4] = self;
  sceneCopy = scene;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v8);
  if (oCopy)
  {
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"isStillImageStabilizationScene"];
  }
}

- (void)_setDigitalFlashScene:(id)scene fireStatusKVO:(BOOL)o fireExposureTimesKVO:(BOOL)vO
{
  vOCopy = vO;
  oCopy = o;
  if (o)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"digitalFlashStatus"];
  }

  if (vOCopy)
  {
    [(AVCapturePhotoOutput *)self willChangeValueForKey:@"digitalFlashExposureTimes"];
  }

  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AVCapturePhotoOutput__setDigitalFlashScene_fireStatusKVO_fireExposureTimesKVO___block_invoke;
  v10[3] = &unk_1E786EAA8;
  v10[4] = self;
  v10[5] = scene;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v10);
  if (vOCopy)
  {
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"digitalFlashExposureTimes"];
  }

  if (oCopy)
  {
    [(AVCapturePhotoOutput *)self didChangeValueForKey:@"digitalFlashStatus"];
  }
}

id __81__AVCapturePhotoOutput__setDigitalFlashScene_fireStatusKVO_fireExposureTimesKVO___block_invoke(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 32) + 16) + 296) = [objc_msgSend_objectForKeyedSubscript_(*(a1 + 40) a2];

  result = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40));
  *(*(*(a1 + 32) + 16) + 312) = result;
  return result;
}

- (id)_figCaptureMovieFileRecordingSettingsForAVMomentCaptureMovieRecordingSettings:(id)settings momentCaptureSettings:(id)captureSettings delegate:(id)delegate connections:(id)connections
{
  v10 = objc_alloc_init(MEMORY[0x1E698F7B0]);
  v37 = [MEMORY[0x1E695DFA8] set];
  if (([settings isAutoSpatialOverCaptureEnabled] & 1) == 0)
  {
    [settings setSpatialOverCaptureMovieFileURL:0];
    [settings setSpatialOverCaptureMovieMetadata:0];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = [connections countByEnumeratingWithState:&v44 objects:v43 count:16];
  captureSettingsCopy = captureSettings;
  if (!v11)
  {
    v22 = 0;
LABEL_34:
    [AVCapturePhotoOutput _figCaptureMovieFileRecordingSettingsForAVMomentCaptureMovieRecordingSettings:momentCaptureSettings:delegate:connections:];
    v13 = 0;
    goto LABEL_19;
  }

  v12 = v11;
  selfCopy = self;
  v35 = v10;
  settingsCopy = settings;
  v38 = 0;
  v13 = 0;
  v14 = *v45;
  v15 = *MEMORY[0x1E6987608];
  v16 = *MEMORY[0x1E69875A0];
  v17 = *MEMORY[0x1E69875D0];
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v45 != v14)
      {
        objc_enumerationMutation(connections);
      }

      v19 = *(*(&v44 + 1) + 8 * i);
      v20 = [objc_msgSend(v19 "inputPorts")];
      if ([v19 isEnabled] && objc_msgSend(v20, "isEnabled"))
      {
        mediaType = [v20 mediaType];
        if ([mediaType isEqual:v15])
        {
          v13 = v19;
        }

        else if ([mediaType isEqual:v16])
        {
          v38 = v19;
        }

        else if ([mediaType isEqual:v17])
        {
          [v37 addObject:v19];
        }
      }
    }

    v12 = [connections countByEnumeratingWithState:&v44 objects:v43 count:16];
  }

  while (v12);
  v10 = v35;
  settings = settingsCopy;
  self = selfCopy;
  v22 = v38;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_19:
  [v10 setSettingsID:{objc_msgSend(settings, "uniqueID")}];
  [v10 setIrisRecording:1];
  [v10 setIrisMovieRecording:1];
  [v10 setOutputURL:{objc_msgSend(settings, "movieFileURL")}];
  v23 = *MEMORY[0x1E69874C0];
  [v10 setOutputFileType:*MEMORY[0x1E69874C0]];
  v42 = **&MEMORY[0x1E6960C70];
  [v10 setMaxDuration:&v42];
  [v10 setMaxFileSize:0];
  [v10 setMinFreeDiskSpaceLimit:0];
  livePhotoMovieDimensions = [(AVCapturePhotoOutput *)self livePhotoMovieDimensions];
  v25 = HIDWORD(*&livePhotoMovieDimensions);
  v40[0] = *MEMORY[0x1E6966208];
  v41[0] = [MEMORY[0x1E696AD98] numberWithInt:livePhotoMovieDimensions];
  v40[1] = *MEMORY[0x1E69660B8];
  v41[1] = [MEMORY[0x1E696AD98] numberWithInt:v25];
  LODWORD(v31) = -65536;
  [v10 setVideoSettings:{-[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](self, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v13, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v41, v40, 2), objc_msgSend(settings, "videoCodecType"), v23, 0, 0, v31)}];
  [v10 setVideoMirrored:{objc_msgSend(v13, "isVideoMirrored")}];
  [v13 videoRotationAngle];
  [v10 setVideoRotationDegrees:v26];
  [v10 setRecordVideoOrientationAndMirroringChanges:1];
  [v10 setSendPreviewIOSurface:1];
  [v10 setDebugMetadataSidecarFileEnabled:{objc_msgSend(v13, "isDebugMetadataSidecarFileEnabled")}];
  if (v22)
  {
    LODWORD(v32) = -65536;
    [v10 setAudioSettings:{-[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](self, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v22, 0, 0, *MEMORY[0x1E69874D0], 0, 0, v32)}];
  }

  CMTimeMake(&v39, 1, 1);
  v42 = v39;
  [v10 setMovieFragmentInterval:&v42];
  [v10 setMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(settings, "movieMetadata"))}];
  if ([objc_msgSend(v13 "sourceDevice")] && objc_msgSend(objc_msgSend(objc_msgSend(v13, "sourceDevice"), "constituentDevices"), "count") >= 2)
  {
    if ([objc_msgSend(captureSettingsCopy "bravoCameraSelectionBehaviorForRecording")])
    {
      v27 = 0;
      v28 = 1;
    }

    else if ([objc_msgSend(captureSettingsCopy "bravoCameraSelectionBehaviorForRecording")])
    {
      v27 = 7;
      v28 = 2;
    }

    else
    {
      v29 = [objc_msgSend(captureSettingsCopy "bravoCameraSelectionBehaviorForRecording")];
      v27 = 0;
      v28 = 3;
      if (!v29)
      {
        v28 = 0;
      }
    }

    BYTE3(v42.value) = 0;
    *(&v42.value + 1) = 0;
    LOBYTE(v42.value) = 1;
    *(&v42.value + 4) = v28;
    *&v42.flags = v27;
    [v10 setBravoCameraSelectionConfigurationForRecording:&v42];
  }

  if ([settings isAutoSpatialOverCaptureEnabled])
  {
    [v10 setSpatialOverCaptureMovieURL:{objc_msgSend(settings, "spatialOverCaptureMovieFileURL")}];
    [v10 setSpatialOverCaptureMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(settings, "spatialOverCaptureMovieMetadata"))}];
  }

  return v10;
}

- (id)_figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:(id)settings captureRequestIdentifier:(id)identifier delegate:(id)delegate connections:(id)connections
{
  v9 = [objc_alloc(MEMORY[0x1E698F798]) initWithSettingsID:objc_msgSend(settings captureRequestIdentifier:{"uniqueID"), identifier}];
  v149 = [MEMORY[0x1E695DFA8] set];
  v154 = v9;
  [v9 setClientQualityPrioritization:{objc_msgSend(settings, "photoQualityPrioritization")}];
  selfCopy = self;
  v10 = [(AVCapturePhotoOutput *)self _sanitizedSettingsForSettings:settings];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v11 = [connections countByEnumeratingWithState:&v166 objects:v165 count:16];
  v148 = v10;
  if (!v11)
  {
    v151 = 0;
LABEL_215:
    [AVCapturePhotoOutput _figCaptureIrisStillImageSettingsForAVCapturePhotoSettings:captureRequestIdentifier:delegate:connections:];
    v150 = 0;
    goto LABEL_25;
  }

  v12 = v11;
  v151 = 0;
  v13 = 0;
  v14 = *v167;
  v15 = *MEMORY[0x1E6987608];
  v16 = *MEMORY[0x1E69875A0];
  v17 = *MEMORY[0x1E69875D0];
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v167 != v14)
      {
        objc_enumerationMutation(connections);
      }

      v19 = *(*(&v166 + 1) + 8 * i);
      v20 = [objc_msgSend(v19 "inputPorts")];
      if ([v19 isEnabled] && objc_msgSend(v20, "isEnabled"))
      {
        mediaType = [v20 mediaType];
        if ([mediaType isEqual:v15])
        {
          v22 = v13 == 0;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          if ([(AVCapturePhotoOutput *)selfCopy isMultiCamClientCompositingEnabled]&& [(AVCapturePhotoOutput *)selfCopy multiCamClientCompositingPrimaryConnection])
          {
            if (v19 == [(AVCapturePhotoOutput *)selfCopy multiCamClientCompositingPrimaryConnection])
            {
              v13 = v19;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = v19;
          }
        }

        else if ([mediaType isEqual:v16])
        {
          v151 = v19;
        }

        else if ([mediaType isEqual:v17])
        {
          [v149 addObject:v19];
        }
      }
    }

    v12 = [connections countByEnumeratingWithState:&v166 objects:v165 count:16];
  }

  while (v12);
  v10 = v148;
  v150 = v13;
  if (!v13)
  {
    goto LABEL_215;
  }

LABEL_25:
  v23 = v154;
  if ([v10 livePhotoMovieFileURL])
  {
    [v154 setMovieMode:1];
    v24 = objc_alloc_init(MEMORY[0x1E698F7B0]);
    [v24 setSettingsID:{objc_msgSend(v10, "uniqueID")}];
    [v24 setIrisRecording:1];
    [v24 setOutputURL:{objc_msgSend(v10, "livePhotoMovieFileURL")}];
    v25 = *MEMORY[0x1E69874C0];
    [v24 setOutputFileType:*MEMORY[0x1E69874C0]];
    v164 = **&MEMORY[0x1E6960C70];
    [v24 setMaxDuration:&v164];
    [v24 setMaxFileSize:0];
    [v24 setMinFreeDiskSpaceLimit:0];
    livePhotoMovieDimensions = [(AVCapturePhotoOutput *)selfCopy livePhotoMovieDimensions];
    v27 = HIDWORD(livePhotoMovieDimensions);
    v162[0] = *MEMORY[0x1E6966208];
    v163[0] = [MEMORY[0x1E696AD98] numberWithInt:livePhotoMovieDimensions];
    v162[1] = *MEMORY[0x1E69660B8];
    v163[1] = [MEMORY[0x1E696AD98] numberWithInt:v27];
    LODWORD(v146) = -65536;
    [v24 setVideoSettings:{-[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](selfCopy, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v150, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v163, v162, 2), objc_msgSend(v10, "livePhotoVideoCodecType"), v25, 1, 0, v146)}];
    [v24 setVideoMirrored:{objc_msgSend(v150, "isVideoMirrored")}];
    [v150 videoRotationAngle];
    [v24 setVideoRotationDegrees:v28];
    [v24 setRecordVideoOrientationAndMirroringChanges:1];
    isDebugMetadataSidecarFileEnabled = [v150 isDebugMetadataSidecarFileEnabled];
    if (isDebugMetadataSidecarFileEnabled)
    {
      LOBYTE(isDebugMetadataSidecarFileEnabled) = objc_opt_respondsToSelector();
    }

    [v24 setDebugMetadataSidecarFileEnabled:isDebugMetadataSidecarFileEnabled & 1];
    [v24 setMetadataIdentifiersEnabled:objc_opt_respondsToSelector() & 1];
    [v24 setSendPreviewIOSurface:0];
    if (v151)
    {
      LODWORD(v147) = -65536;
      [v24 setAudioSettings:{-[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](selfCopy, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v151, 0, 0, *MEMORY[0x1E69874D0], 1, 0, v147)}];
    }

    CMTimeMake(&v161, 1, 1);
    v164 = v161;
    [v24 setMovieFragmentInterval:&v164];
    [v24 setMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(v10, "livePhotoMovieMetadata"))}];
    if ([v10 isAutoSpatialOverCaptureEnabled])
    {
      [v24 setSpatialOverCaptureMovieURL:{objc_msgSend(v10, "spatialOverCaptureLivePhotoMovieFileURL")}];
      [v24 setSpatialOverCaptureMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(v10, "spatialOverCaptureLivePhotoMovieMetadata"))}];
    }

    v23 = v154;
    [v154 setMovieRecordingSettings:v24];
  }

  [v23 setSettingsProvider:1];
  [v23 setPayloadType:objc_opt_respondsToSelector() & 1];
  [v23 setOutputFormat:objc_msgSend(v10, "formatFourCC")];
  [v23 setOutputFileType:{po_figCaptureStillImageSettingsFileTypeForAVFileType(objc_msgSend(v10, "processedFileType"))}];
  [v23 setRawOutputFormat:-[AVCapturePhotoOutput _internalRawFormatFromRawFormat:](selfCopy, "_internalRawFormatFromRawFormat:", objc_msgSend(v10, "rawPhotoPixelFormatType"))];
  [v23 setRawOutputFileType:{po_figCaptureStillImageSettingsFileTypeForAVFileType(objc_msgSend(v10, "rawFileType"))}];
  sourceDevice = [v150 sourceDevice];
  activeFormat = [sourceDevice activeFormat];
  v160 = 0;
  v32 = po_requestingDefaultHighResStillForAVCapturePhotoSettings(v10, activeFormat, &v160);
  if (v32)
  {
    v33 = 0;
    optimizedImageDimensionsForOfflineStabilization = 0;
  }

  else if (selfCopy->_internal->optimizesImagesForOfflineVideoStabilization)
  {
    optimizedImageDimensionsForOfflineStabilization = [(AVCapturePhotoOutput *)selfCopy optimizedImageDimensionsForOfflineStabilization];
    [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
    if (AVCaptureIsSensorMountedInPortraitOrientation(v35))
    {
      v36 = AVCaptureFlippedDimensions(optimizedImageDimensionsForOfflineStabilization);
      v33 = HIDWORD(v36);
      optimizedImageDimensionsForOfflineStabilization = v36;
    }

    else
    {
      v33 = HIDWORD(optimizedImageDimensionsForOfflineStabilization);
    }
  }

  else
  {
    optimizedImageDimensionsForOfflineStabilization = v160;
    v33 = HIDWORD(v160);
  }

  [v154 setSquareCropEnabled:{objc_msgSend(v10, "isSquareCropEnabled")}];
  [v154 setOutputWidth:optimizedImageDimensionsForOfflineStabilization];
  [v154 setOutputHeight:v33];
  [v154 setOriginalOutputDimensions:{objc_msgSend(v154, "outputDimensions")}];
  [v154 setVtCompressionProperties:{objc_msgSend_objectForKeyedSubscript_(objc_msgSend(v10, "format"))}];
  sourceDevice2 = [(AVCaptureConnection *)[(AVCaptureOutput *)selfCopy connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];
  [v154 setDeferredSourceDeviceType:{objc_msgSend(sourceDevice2, "figCaptureSourceDeviceType")}];
  [v154 setDeferredSourcePosition:{objc_msgSend(sourceDevice2, "figCaptureSourcePosition")}];
  [v154 setDeferredVideoFormatUniqueID:{objc_msgSend(objc_msgSend(objc_msgSend(sourceDevice2, "activeFormat"), "figCaptureSourceVideoFormat"), "uniqueID")}];
  if ([(AVCapturePhotoOutput *)selfCopy isDepthDataDeliverySupported]&& [(AVCapturePhotoOutput *)selfCopy isDepthDataDeliveryEnabled])
  {
    [v154 setDeferredDepthDataFormatUniqueID:{objc_msgSend(objc_msgSend(objc_msgSend(sourceDevice2, "activeDepthDataFormat"), "figCaptureSourceDepthDataFormat"), "uniqueID")}];
  }

  [v154 setOutputMirroring:{objc_msgSend(v150, "isVideoMirrored")}];
  [v150 videoRotationAngle];
  [v154 setOutputRotationDegrees:v38];
  if (v32)
  {
    v39 = HIDWORD(v160);
  }

  else
  {
    v39 = v33;
  }

  if (v32)
  {
    v40 = v160;
  }

  else
  {
    v40 = optimizedImageDimensionsForOfflineStabilization;
  }

  isSquareCropEnabled = [v10 isSquareCropEnabled];
  if (v40 >= v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = v40;
  }

  if (isSquareCropEnabled)
  {
    v43 = v42;
  }

  else
  {
    v43 = v39;
  }

  if (isSquareCropEnabled)
  {
    v44 = v42;
  }

  else
  {
    v44 = v40;
  }

  v45 = AVCaptureAspectRatioForDimensions(v44 | (v43 << 32));
  if (v44 == v43)
  {
    v46 = [v10 isSquareCropEnabled] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  v47 = v45;
  v48 = v44;
  v49 = v154;
  [v154 setPreviewEnabled:{objc_msgSend(v10, "previewFormatFourCC") != 0}];
  v50 = v150;
  if ([v154 previewEnabled])
  {
    [v10 previewCGSize];
    v52 = v51;
    v54 = v53;
    v55 = AVCaptureVideoDimensionsAreValid(v52 | (v54 << 32));
    if (v55)
    {
      v54 = v54;
    }

    else
    {
      v54 = 640;
    }

    if (v55)
    {
      v52 = v52;
    }

    else
    {
      v52 = 852;
    }

    [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
    if (AVCaptureIsSensorMountedInPortraitOrientation(v56))
    {
      v57 = AVCaptureFlippedDimensions(v52 | (v54 << 32));
      v54 = HIDWORD(v57);
      LODWORD(v52) = v57;
    }

    arePreviewPhotoFormatDimensionsLimitedToDisplayDimensions = [v10 arePreviewPhotoFormatDimensionsLimitedToDisplayDimensions];
    v59 = v43;
    v60 = v44;
    if (arePreviewPhotoFormatDimensionsLimitedToDisplayDimensions)
    {
      v61 = AVCaptureMainScreenPixelSize();
      v60 = v62;
      v59 = v61;
    }

    if (v52 >= v60)
    {
      v52 = v60;
    }

    else
    {
      v52 = v52;
    }

    if (v54 >= v59)
    {
      v54 = v59;
    }

    else
    {
      v54 = v54;
    }

    v63 = AVCaptureAspectRatioForDimensions(v52 | (v54 << 32));
    if (vabds_f32(v47, v63) >= 0.01)
    {
      if (v46)
      {
        if (v52 <= v54)
        {
          v66 = v54;
        }

        else
        {
          v66 = v52;
        }

        v67 = vcvtd_n_f64_s32(v66, 1uLL);
        v68 = 2 * llroundf(v67);
        v49 = v154;
        [v154 setPreviewWidth:v68];
        goto LABEL_87;
      }

      v176.size.width = v52;
      v176.size.height = v54;
      v176.origin.x = 0.0;
      v176.origin.y = 0.0;
      v170.width = v44;
      v170.height = v43;
      v173 = AVMakeRectWithAspectRatioInsideRect(v170, v176);
      height = v173.size.height;
      *&v173.origin.x = v173.size.width * 0.5;
      v49 = v154;
      [v154 setPreviewWidth:2 * llroundf(*&v173.origin.x)];
      v65 = height * 0.5;
    }

    else
    {
      v64 = vcvtd_n_f64_s32(v52, 1uLL);
      v49 = v154;
      [v154 setPreviewWidth:2 * llroundf(v64)];
      v65 = vcvtd_n_f64_s32(v54, 1uLL);
    }

    v70 = v65;
    v68 = 2 * llroundf(v70);
LABEL_87:
    [v49 setPreviewHeight:v68];
    [v49 setPreviewFormat:objc_msgSend(v10, "previewFormatFourCC")];
    [v49 setPreviewMirroring:{objc_msgSend(v49, "outputMirroring")}];
    [v49 setPreviewRotationDegrees:{objc_msgSend(v49, "outputRotationDegrees")}];
    v50 = v150;
  }

  [v49 setThumbnailEnabled:{objc_msgSend(v10, "embeddedThumbnailFormatFourCC") != 0}];
  if (![v49 thumbnailEnabled])
  {
    goto LABEL_120;
  }

  [v10 embeddedThumbnailCGSize];
  v72 = v71;
  v74 = v73;
  v75 = v71;
  v76 = v73;
  if (!AVCaptureVideoDimensionsAreValid(v75 | (v76 << 32)) && ([v154 outputFileType] == 1785096550 || objc_msgSend(v154, "outputFileType") == 1953064550))
  {
    v76 = 160;
    LODWORD(v75) = 160;
  }

  [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  if (AVCaptureIsSensorMountedInPortraitOrientation(v77))
  {
    v78 = AVCaptureFlippedDimensions(v75 | (v76 << 32));
    v76 = HIDWORD(v78);
    LODWORD(v75) = v78;
  }

  if ([v154 outputFileType] == 1785096550 || (v79 = objc_msgSend(v154, "outputFileType"), v80 = v43, v81 = v44, v79 == 1953064550))
  {
    v80 = 160;
    v81 = 160;
  }

  v83 = v75 > v81 || v76 > v80;
  if (v83)
  {
    v84 = v80;
  }

  else
  {
    v84 = v76;
  }

  if (v83)
  {
    v85 = v81;
  }

  else
  {
    v85 = v75;
  }

  v86 = AVCaptureAspectRatioForDimensions(v85 | (v84 << 32));
  if (vabds_f32(v47, v86) >= 0.01)
  {
    if (v46)
    {
      if (v85 <= v84)
      {
        v90 = v84;
      }

      else
      {
        v90 = v85;
      }

      v91 = vcvtd_n_f64_s32(v90, 1uLL);
      v92 = 2 * llroundf(v91);
      v88 = v154;
      [v154 setThumbnailWidth:v92];
      goto LABEL_119;
    }

    v177.origin.x = 0.0;
    v177.origin.y = 0.0;
    v171.width = v44;
    v171.height = v43;
    v177.size.width = v72;
    v177.size.height = v74;
    v174 = AVMakeRectWithAspectRatioInsideRect(v171, v177);
    v93 = v174.size.height;
    *&v174.origin.x = v174.size.width * 0.5;
    v88 = v154;
    [v154 setThumbnailWidth:2 * llroundf(*&v174.origin.x)];
    v89 = v93 * 0.5;
  }

  else
  {
    v87 = vcvtd_n_f64_s32(v85, 1uLL);
    v88 = v154;
    [v154 setThumbnailWidth:2 * llroundf(v87)];
    v89 = vcvtd_n_f64_s32(v84, 1uLL);
  }

  v94 = v89;
  v92 = 2 * llroundf(v94);
LABEL_119:
  [v88 setThumbnailHeight:v92];
  [v88 setThumbnailFormat:objc_msgSend(v10, "embeddedThumbnailFormatFourCC")];
  v50 = v150;
LABEL_120:
  if ([v10 rawFileFormat])
  {
    v95 = objc_msgSend_objectForKeyedSubscript_([v10 rawFileFormat]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v154 setRawOutputFileBitDepth:{objc_msgSend(v95, "unsignedIntValue")}];
    }

    if (objc_msgSend_objectForKeyedSubscript_([v10 rawFileFormat]))
    {
      [v154 setRawOutputFileCodec:AVOSTypeForString()];
    }

    v96 = objc_msgSend_objectForKeyedSubscript_([v10 rawFileFormat]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v96 floatValue];
      [v154 setRawOutputFileCodecQuality:?];
    }
  }

  v97 = v154;
  [v154 setRawThumbnailEnabled:{objc_msgSend(v10, "rawEmbeddedThumbnailFormatFourCC") != 0}];
  if ([v154 rawThumbnailEnabled])
  {
    [v10 rawEmbeddedThumbnailCGSize];
    v99 = v98;
    v101 = v100;
    if (!AVCaptureVideoDimensionsAreValid(v99 | (v101 << 32)))
    {
      if ([v154 rawOutputFileType] == 1684956519)
      {
        LODWORD(v99) = 320;
        v101 = 320;
      }

      else
      {
        v101 = v101;
      }
    }

    [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
    if (AVCaptureIsSensorMountedInPortraitOrientation(v102))
    {
      v103 = AVCaptureFlippedDimensions(v99 | (v101 << 32));
      v101 = HIDWORD(v103);
      LODWORD(v99) = v103;
    }

    v105 = v99 > v44 || v101 > v43;
    if (v105)
    {
      v44 = v44;
    }

    else
    {
      v44 = v99;
    }

    if (v105)
    {
      v106 = v43;
    }

    else
    {
      v106 = v101;
    }

    v107 = AVCaptureAspectRatioForDimensions(v44 | (v106 << 32));
    if (vabds_f32(v47, v107) >= 0.01)
    {
      if (v46)
      {
        if (v44 <= v106)
        {
          v110 = v106;
        }

        else
        {
          v110 = v44;
        }

        v111 = vcvtd_n_f64_s32(v110, 1uLL);
        v112 = 2 * llroundf(v111);
        [v154 setRawThumbnailWidth:v112];
        goto LABEL_155;
      }

      v178.size.width = v44;
      v178.size.height = v106;
      v178.origin.x = 0.0;
      v178.origin.y = 0.0;
      v172.width = v48;
      v172.height = v43;
      v175 = AVMakeRectWithAspectRatioInsideRect(v172, v178);
      v113 = v175.size.height;
      *&v175.origin.x = v175.size.width * 0.5;
      [v154 setRawThumbnailWidth:2 * llroundf(*&v175.origin.x)];
      v109 = v113 * 0.5;
    }

    else
    {
      v108 = vcvtd_n_f64_s32(v44, 1uLL);
      [v154 setRawThumbnailWidth:2 * llroundf(v108)];
      v109 = vcvtd_n_f64_s32(v106, 1uLL);
    }

    v114 = v109;
    v112 = 2 * llroundf(v114);
LABEL_155:
    [v154 setRawThumbnailHeight:v112];
    [v154 setRawThumbnailFormat:objc_msgSend(v10, "rawEmbeddedThumbnailFormatFourCC")];
    v50 = v150;
  }

  [v154 setNoiseReductionEnabled:{objc_msgSend(v10, "isTurboModeEnabled") ^ 1}];
  [v154 setBurstQualityCaptureEnabled:{objc_msgSend(v10, "isBurstQualityCaptureEnabled")}];
  [v50 videoScaleAndCropFactor];
  *&v115 = v115;
  [v154 setScaleFactor:v115];
  [v154 setShutterSound:{objc_msgSend(v10, "shutterSound")}];
  [v154 setFlashMode:{objc_msgSend(v10, "flashMode")}];
  [v154 setAutoRedEyeReductionEnabled:{objc_msgSend(v10, "isAutoRedEyeReductionEnabled")}];
  [v154 setDigitalFlashMode:{objc_msgSend(v10, "digitalFlashMode")}];
  [v154 setConstantColorEnabled:{objc_msgSend(v10, "isConstantColorEnabled")}];
  [v154 setConstantColorFallbackPhotoDeliveryEnabled:{objc_msgSend(v10, "isConstantColorFallbackPhotoDeliveryEnabled")}];
  [v154 setAutoStereoPhotoCaptureEnabled:{objc_msgSend(v10, "isAutoSpatialPhotoCaptureEnabled")}];
  [v154 setWideColorMode:2];
  [v154 setProvidesOriginalImage:{objc_msgSend(v10, "isEV0PhotoDeliveryEnabled")}];
  [v154 setHDRMode:{objc_msgSend(v10, "HDRMode")}];
  if ([activeFormat videoHDRFlavor] == 2 && (objc_msgSend(v10, "photoQualityPrioritization") > 1 || objc_msgSend(v10, "HDRMode")))
  {
    if ([sourceDevice isVideoHDREnabled])
    {
      if ([sourceDevice isVideoHDRSuspended])
      {
        v116 = 0;
      }

      else
      {
        v116 = 2;
      }
    }

    else
    {
      v116 = 0;
    }

    [v154 setHDRMode:v116];
  }

  [v154 setDepthDataDeliveryEnabled:{objc_msgSend(v10, "isDepthDataDeliveryEnabled")}];
  [v154 setEmbedsDepthDataInImage:{objc_msgSend(v10, "embedsDepthDataInPhoto")}];
  [v154 setDepthDataFiltered:{objc_msgSend(v10, "isDepthDataFiltered")}];
  [v154 setCameraCalibrationDataDeliveryEnabled:{objc_msgSend(v10, "isCameraCalibrationDataDeliveryEnabled")}];
  [v154 setPortraitEffectsMatteDeliveryEnabled:{objc_msgSend(v10, "isPortraitEffectsMatteDeliveryEnabled")}];
  [v154 setEmbedsPortraitEffectsMatteInImage:{objc_msgSend(v10, "embedsPortraitEffectsMatteInPhoto")}];
  if ([objc_msgSend(v10 "enabledSemanticSegmentationMatteTypes")])
  {
    [v154 setEnabledSemanticSegmentationMatteURNs:{AVSemanticSegmentationCMPhotoURNsForMatteTypes(objc_msgSend(v10, "enabledSemanticSegmentationMatteTypes"))}];
    [v154 setEmbedsSemanticSegmentationMattesInImage:{objc_msgSend(v10, "embedsSemanticSegmentationMattesInPhoto")}];
  }

  if ([v10 isDepthDataDeliveryEnabled] && AVCIFilterArrayContainsPortraitFilters(objc_msgSend(v10, "adjustedPhotoFilters")))
  {
    v117 = [objc_msgSend(objc_msgSend(v50 "inputPorts")];
    [v117 simulatedAperture];
    [v154 setSimulatedAperture:?];
    [v117 portraitLightingEffectStrength];
    [v154 setPortraitLightingEffectStrength:?];
  }

  [v154 setMetadata:{objc_msgSend(v10, "metadata")}];
  [v154 setMetadataForOriginalImage:{objc_msgSend(v10, "metadataForOriginalPhoto")}];
  [v154 setOriginalImageFilters:{objc_msgSend(v10, "photoFilters")}];
  [v154 setProcessedImageFilters:{objc_msgSend(v10, "adjustedPhotoFilters")}];
  if ([v10 isAutoSpatialOverCaptureEnabled])
  {
    [v154 setSpatialOverCaptureMetadata:{objc_msgSend(v10, "spatialOverCaptureMetadata")}];
    if ([v154 providesOriginalImage])
    {
      [v154 setSpatialOverCaptureMetadataForOriginalImage:{objc_msgSend(v10, "spatialOverCaptureMetadataForOriginalPhoto")}];
    }
  }

  if ([v154 providesOriginalImage])
  {
    if ([v10 livePhotoMovieFileURL])
    {
      [v154 setMovieURLForOriginalImage:{objc_msgSend(v10, "livePhotoMovieFileURLForOriginalPhoto")}];
      [v154 setMovieLevelMetadataForOriginalImage:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(v10, "livePhotoMovieMetadataForOriginalPhoto"))}];
      if ([v10 isAutoSpatialOverCaptureEnabled])
      {
        [v154 setSpatialOverCaptureMovieURLForOriginalImage:{objc_msgSend(v10, "spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto")}];
        [v154 setSpatialOverCaptureMovieLevelMetadataForOriginalImage:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(v10, "spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto"))}];
      }
    }
  }

  [v154 setAutoDeferredProcessingEnabled:{-[AVCapturePhotoOutput isAutoDeferredPhotoDeliveryEnabled](selfCopy, "isAutoDeferredPhotoDeliveryEnabled")}];
  [v154 setQualityPrioritization:{objc_msgSend(v10, "photoQualityPrioritization")}];
  if ([v10 isAutoVirtualDeviceFusionEnabled])
  {
    [v154 setBravoImageFusionMode:2];
  }

  [v154 setBravoConstituentImageDeliveryDeviceTypes:{po_deviceArrayToFigCaptureSourceDeviceTypesArray(objc_msgSend(v10, "virtualDeviceConstituentPhotoDeliveryEnabledDevices"))}];
  [v154 setZoomWithoutUpscalingEnabled:{objc_msgSend(v10, "isProcessedPhotoZoomWithoutUpscalingEnabled")}];
  [v154 setAutoIntelligentDistortionCorrectionEnabled:{objc_msgSend(v10, "isAutoContentAwareDistortionCorrectionEnabled")}];
  isConstantColorEnabled = [v10 isConstantColorEnabled];
  semanticStyle = [v10 semanticStyle];
  if ([(AVCapturePhotoOutput *)selfCopy isSemanticStyleRenderingEnabled]&& !semanticStyle)
  {
    if ([v10 isBurstQualityCaptureEnabled])
    {
      goto LABEL_187;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ([v10 photoQualityPrioritization] < 2) | isConstantColorEnabled & 1)
    {
      goto LABEL_187;
    }

    semanticStyle = +[AVSemanticStyle identityStyle];
  }

  if (!((semanticStyle == 0) | isConstantColorEnabled & 1))
  {
    v120 = MEMORY[0x1E698F7C8];
    [semanticStyle toneBias];
    v122 = v121;
    [semanticStyle warmthBias];
    LODWORD(v124) = v123;
    LODWORD(v125) = v122;
    [v154 setSemanticStyle:{objc_msgSend(v120, "semanticStyleWithToneBias:warmthBias:", v125, v124)}];
  }

LABEL_187:
  v153 = sourceDevice;
  IntegerAnswer = AVGestaltGetIntegerAnswer(@"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA");
  if ([objc_msgSend(v154 "semanticStyle")] && (IntegerAnswer - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    [v154 setSemanticStyle:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bracketedSettings = [v148 bracketedSettings];
    [v154 setLensStabilizationDuringBracketEnabled:{objc_msgSend(v148, "isLensStabilizationEnabled")}];
    [bracketedSettings firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v129 = 0;
      v130 = 1;
    }

    else
    {
      [bracketedSettings firstObject];
      objc_opt_class();
      v129 = objc_opt_isKindOfClass();
      v130 = (v129 & 1) != 0 ? 2 : 0;
    }

    [v154 setBracketType:v130 imageCount:{objc_msgSend(bracketedSettings, "count")}];
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v131 = [bracketedSettings countByEnumeratingWithState:&v156 objects:v155 count:16];
    if (v131)
    {
      v132 = v131;
      v133 = 0;
      v134 = *v157;
      do
      {
        v135 = 0;
        v136 = 24 * v133;
        do
        {
          if (*v157 != v134)
          {
            objc_enumerationMutation(bracketedSettings);
          }

          v137 = *(*(&v156 + 1) + 8 * v135);
          if (isKindOfClass)
          {
            exposureDurations = [v97 exposureDurations];
            if (v137)
            {
              objc_msgSend_exposureDuration(v137);
            }

            else
            {
              memset(&v164, 0, sizeof(v164));
            }

            v142 = exposureDurations + v136;
            v143 = *&v164.value;
            *(v142 + 16) = v164.epoch;
            *v142 = v143;
            [v137 ISO];
            v140 = v144;
            v97 = v154;
            iSOs = [v154 ISOs];
          }

          else
          {
            if ((v129 & 1) == 0)
            {
              goto LABEL_209;
            }

            [*(*(&v156 + 1) + 8 * v135) exposureTargetBias];
            v140 = v139;
            iSOs = [v97 exposureTargetBiases];
          }

          *(iSOs + 4 * v133) = v140;
LABEL_209:
          ++v133;
          ++v135;
          v136 += 24;
        }

        while (v132 != v135);
        v132 = [bracketedSettings countByEnumeratingWithState:&v156 objects:v155 count:16];
      }

      while (v132);
    }
  }

  if ([objc_msgSend(v153 "deviceType")])
  {
    [v97 setCmioCompressedFormat:objc_msgSend_objectForKeyedSubscript_(objc_msgSend(v148, "format"))];
    [v97 setCmioHighResolutionPhotoEnabled:{objc_msgSend(v148, "isHighResolutionPhotoEnabled")}];
    [v97 setCmioMaxPhotoDimensionsWidth:{objc_msgSend(v148, "maxPhotoDimensions")}];
    [v97 setCmioMaxPhotoDimensionsHeight:{objc_msgSend(v148, "maxPhotoDimensions") >> 32}];
  }

  [v97 setStillImageUserInitiatedRequestTime:{objc_msgSend(v148, "userInitiatedPhotoRequestTime")}];
  [v97 setDeviceOrientationCorrectionEnabled:{objc_msgSend(v150, "isVideoDeviceOrientationCorrectionEnabled")}];
  return v97;
}

- (id)_figCaptureIrisPreparedSettingsForRequest:(id)request
{
  v5 = objc_alloc_init(MEMORY[0x1E698F788]);
  requestCopy = request;
  [v5 setSettingsID:{objc_msgSend(request, "requestID")}];
  [v5 setOutputHeight:0xFFFFFFFFLL];
  [v5 setOutputWidth:0xFFFFFFFFLL];
  [v5 setQualityPrioritization:1];
  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  availablePhotoCodecTypes = self->_internal->availablePhotoCodecTypes;
  v8 = [(NSArray *)availablePhotoCodecTypes countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(availablePhotoCodecTypes);
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", AVOSTypeForString())}];
      }

      v9 = [(NSArray *)availablePhotoCodecTypes countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v9);
  }

  [array addObjectsFromArray:self->_internal->availablePhotoPixelFormatTypes];
  v33 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [requestCopy photoSettingsArray];
  v12 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = *v37;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [objc_msgSend(v15 "bracketedSettings")];
          if (v16 > [v5 bracketedImageCount])
          {
            v17 = [objc_msgSend(v15 "bracketedSettings")];
            maxBracketedCapturePhotoCount = self->_internal->maxBracketedCapturePhotoCount;
            if (v17 < maxBracketedCapturePhotoCount)
            {
              maxBracketedCapturePhotoCount = [objc_msgSend(v15 "bracketedSettings")];
            }

            [v5 setBracketedImageCount:maxBracketedCapturePhotoCount];
          }
        }

        if ([v15 formatFourCC])
        {
          v19 = [array indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v5, "processedOutputFormat"))}];
          v20 = [array indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v15, "formatFourCC"))}];
          v21 = v19 == 0x7FFFFFFFFFFFFFFFLL ? -1 : v19;
          v22 = v20 == 0x7FFFFFFFFFFFFFFFLL ? -1 : v20;
          if (v22 > v21)
          {
            [v5 setProcessedOutputFormat:objc_msgSend(v15, "formatFourCC")];
          }
        }

        if ([v15 rawPhotoPixelFormatType])
        {
          availableRawPhotoPixelFormatTypes = self->_internal->availableRawPhotoPixelFormatTypes;
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15, "rawPhotoPixelFormatType")}];
          if (objc_msgSend_objectForKeyedSubscript_(availableRawPhotoPixelFormatTypes))
          {
            [v5 setRawOutputFormat:-[AVCapturePhotoOutput _internalRawFormatFromRawFormat:](self, "_internalRawFormatFromRawFormat:", objc_msgSend(v15, "rawPhotoPixelFormatType"))];
          }
        }

        v34 = 0;
        if (po_requestingDefaultHighResStillForAVCapturePhotoSettings(v15, v33, &v34))
        {
          [v5 setOutputHeight:0];
          [v5 setOutputWidth:0];
        }

        else if ([v5 outputWidth] == -1)
        {
          [v5 setOutputWidth:v34];
          [v5 setOutputHeight:HIDWORD(v34)];
        }

        internal = self->_internal;
        if (internal->stillImageStabilizationSupported || internal->highPhotoQualitySupported)
        {
          qualityPrioritization = [v5 qualityPrioritization];
          if (qualityPrioritization <= [v15 photoQualityPrioritization])
          {
            photoQualityPrioritization = [v15 photoQualityPrioritization];
          }

          else
          {
            photoQualityPrioritization = [v5 qualityPrioritization];
          }

          [v5 setQualityPrioritization:photoQualityPrioritization];
        }

        hDRMode = [v15 HDRMode];
        if (hDRMode > [v5 HDRMode] && -[NSArray containsObject:](self->_internal->supportedHDRModes, "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v15, "HDRMode"))))
        {
          [v5 setHDRMode:{objc_msgSend(v15, "HDRMode")}];
        }

        digitalFlashMode = [v15 digitalFlashMode];
        if (digitalFlashMode > [v5 digitalFlashMode] && -[NSArray containsObject:](self->_internal->supportedDigitalFlashModes, "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v15, "digitalFlashMode"))))
        {
          [v5 setDigitalFlashMode:{objc_msgSend(v15, "digitalFlashMode")}];
        }

        if ([objc_msgSend(v15 "virtualDeviceConstituentPhotoDeliveryEnabledDevices")] && self->_internal->virtualDeviceConstituentPhotoDeliverySupported)
        {
          [v5 setBravoConstituentImageDeliveryDeviceTypes:{po_deviceArrayToFigCaptureSourceDeviceTypesArray(objc_msgSend(v15, "virtualDeviceConstituentPhotoDeliveryEnabledDevices"))}];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v13);
  }

  return v5;
}

- (id)_sanitizedSettingsForSettings:(id)settings
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  sceneDetectionObserversDispatchQueue = self->_internal->sceneDetectionObserversDispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AVCapturePhotoOutput__sanitizedSettingsForSettings___block_invoke;
  v15[3] = &unk_1E78760D8;
  v15[4] = self;
  v15[5] = settings;
  v15[6] = &v26;
  v15[7] = &v22;
  v15[8] = &v18;
  v15[9] = v16;
  dispatch_sync(sceneDetectionObserversDispatchQueue, v15);
  if ((v19[3] & 1) == 0 && !self->_internal->highPhotoQualitySupported)
  {
    maxPhotoQualityPrioritization = 1;
    goto LABEL_6;
  }

  photoQualityPrioritization = [settings photoQualityPrioritization];
  maxPhotoQualityPrioritization = self->_internal->maxPhotoQualityPrioritization;
  if (photoQualityPrioritization > maxPhotoQualityPrioritization)
  {
LABEL_6:
    [settings _setPhotoQualityPrioritization:maxPhotoQualityPrioritization];
  }

  sourceDeviceInput = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDeviceInput];
  device = [sourceDeviceInput device];
  if ([device isCenterStageActive])
  {
    isCenterStageAllowed = [sourceDeviceInput isCenterStageAllowed];
  }

  else
  {
    isCenterStageAllowed = 0;
  }

  if ([device isBackgroundBlurActive])
  {
    isBackgroundBlurAllowed = [sourceDeviceInput isBackgroundBlurAllowed];
  }

  else
  {
    isBackgroundBlurAllowed = 0;
  }

  if ([device isStudioLightActive])
  {
    isStudioLightingAllowed = [sourceDeviceInput isStudioLightingAllowed];
  }

  else
  {
    isStudioLightingAllowed = 0;
  }

  isBackgroundReplacementActive = [device isBackgroundReplacementActive];
  if (isBackgroundReplacementActive)
  {
    isBackgroundReplacementActive = [sourceDeviceInput isBackgroundReplacementAllowed];
  }

  if (((isCenterStageAllowed | isBackgroundBlurAllowed | isStudioLightingAllowed) & 1) != 0 || isBackgroundReplacementActive)
  {
    [settings _setPhotoQualityPrioritization:1];
  }

  if (self->_internal->highPhotoQualitySupported && [settings photoQualityPrioritization] == 3 && (AVGestaltGetBoolAnswer(@"AVGQCaptureHighPhotoQualityFrameDropAllowed") & 1) == 0)
  {
    [settings _setPhotoQualityPrioritization:2];
  }

  if (self->_internal->depthDataDeliveryEnabled && [settings photoQualityPrioritization] == 3 && (AVGestaltGetBoolAnswer(@"AVGQCaptureDepthWithDeepFusionSupported") & 1) == 0)
  {
    [settings _setPhotoQualityPrioritization:2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [settings _setPhotoQualityPrioritization:1];
  }

  if (!self->_internal->virtualDeviceFusionSupported)
  {
    [settings setAutoVirtualDeviceFusionEnabled:0];
  }

  if ((v23[3] & 1) == 0)
  {
    [settings setHDRMode:0];
  }

  if ((v27[3] & 1) == 0)
  {
    [settings setFlashMode:0];
  }

  if ([settings flashMode] == 2 && objc_msgSend(settings, "isConstantColorEnabled"))
  {
    [settings setFlashMode:1];
  }

  if (![settings HDRMode])
  {
    [settings setEV0PhotoDeliveryEnabled:0];
  }

  if (AVCIFilterArrayContainsPortraitFilters([settings adjustedPhotoFilters]))
  {
    [settings setAutoVirtualDeviceFusionEnabled:0];
  }

  if ([settings rawPhotoPixelFormatType])
  {
    if (+[AVCapturePhotoOutput isAppleProRAWPixelFormat:](AVCapturePhotoOutput, "isAppleProRAWPixelFormat:", [settings rawPhotoPixelFormatType]))
    {
      [settings setLivePhotoMovieFileURL:0];
      [settings setAutoContentAwareDistortionCorrectionEnabled:0];
      [settings setAutoRedEyeReductionEnabled:0];
      [settings setDepthDataDeliveryEnabled:0];
      [settings setPortraitEffectsMatteDeliveryEnabled:0];
      [settings setEnabledSemanticSegmentationMatteTypes:MEMORY[0x1E695E0F0]];
    }

    else if (![settings formatFourCC])
    {
      [settings setTurboModeEnabled:1];
      [settings setProcessedPhotoZoomWithoutUpscalingEnabled:0];
    }
  }

  if ([objc_msgSend(settings "virtualDeviceConstituentPhotoDeliveryEnabledDevices")])
  {
    [settings setAutoVirtualDeviceFusionEnabled:0];
  }

  if (([settings isDepthDataDeliveryEnabled] & 1) == 0)
  {
    [settings setEmbedsDepthDataInPhoto:0];
    [settings setDepthDataFiltered:0];
  }

  if (([settings isPortraitEffectsMatteDeliveryEnabled] & 1) == 0)
  {
    [settings setEmbedsPortraitEffectsMatteInPhoto:0];
  }

  if (![objc_msgSend(settings "enabledSemanticSegmentationMatteTypes")])
  {
    [settings setEmbedsSemanticSegmentationMattesInPhoto:0];
  }

  if ([objc_msgSend(objc_msgSend(device "activeFormat")])
  {
    [settings setSquareCropEnabled:0];
  }

  if ([settings livePhotoMovieFileURL])
  {
    [settings setSquareCropEnabled:0];
    [settings setShutterSound:0];
  }

  if (![settings livePhotoMovieFileURL])
  {
    [settings setLivePhotoMovieMetadata:0];
    [settings setLivePhotoMovieFileURLForOriginalPhoto:0];
    [settings setLivePhotoMovieMetadataForOriginalPhoto:0];
  }

  if (([settings isEV0PhotoDeliveryEnabled] & 1) == 0)
  {
    [settings setLivePhotoMovieFileURLForOriginalPhoto:0];
    [settings setLivePhotoMovieMetadataForOriginalPhoto:0];
  }

  if ([settings isBurstQualityCaptureEnabled])
  {
    [settings setHDRMode:0];
    [settings _setPhotoQualityPrioritization:1];
    [settings setAutoVirtualDeviceFusionEnabled:0];
    [settings setFlashMode:0];
    [settings setConstantColorEnabled:0];
    [settings setLivePhotoMovieFileURL:0];
  }

  if ([settings digitalFlashMode])
  {
    [settings setShutterSound:1119];
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return settings;
}

void *__54__AVCapturePhotoOutput__sanitizedSettingsForSettings___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 32) + 16) + 112) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "flashMode"))}];
  result = [*(*(*(a1 + 32) + 16) + 96) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "HDRMode"))}];
  *(*(*(a1 + 56) + 8) + 24) = result;
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 32) + 16) + 89);
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 32) + 16) + 432);
  return result;
}

+ (__CFDictionary)_copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = *MEMORY[0x1E695E480];
  v4 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], buffer, 1u);
  v5 = v4;
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"FaceRegions");
    if (Value)
    {
      v7 = Value;
      v8 = *MEMORY[0x1E696D8B0];
      if (!CFDictionaryGetValue(v5, *MEMORY[0x1E696D8B0]))
      {
        Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetValue(Mutable, v8, v7);
          Count = CFDictionaryGetCount(v5);
          MutableCopy = CFDictionaryCreateMutableCopy(v3, Count, v5);
          CFDictionarySetValue(MutableCopy, v8, v10);
          CFRelease(v10);
          CFRelease(v5);
          return MutableCopy;
        }
      }
    }
  }

  return v5;
}

- (void)_dispatchFailureCallbacksForPhotoSettings:(id)settings toDelegate:(id)delegate withError:(id)error
{
  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) != 0 && self->_internal->lensStabilizationDuringBracketedCaptureSupported;
  v10 = [AVCapturePhotoRequest requestWithDelegate:delegate settings:settings lensStabilizationSupported:v9];

  [(AVCapturePhotoOutput *)self _dispatchFailureCallbacks:2147549183 forPhotoRequest:v10 withError:error cleanupRequest:0];
}

- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forPhotoRequest:(id)request withError:(id)error cleanupRequest:(BOOL)cleanupRequest
{
  cleanupRequestCopy = cleanupRequest;
  if (![request resolvedSettings])
  {
    selfCopy = self;
    v10 = [objc_msgSend(request "unresolvedSettings")];
    v11 = [objc_msgSend(request "unresolvedSettings")];
    v12 = [objc_msgSend(request "unresolvedSettings")];
    v52 = cleanupRequestCopy;
    v56 = v10;
    if (v12 == 1)
    {
      v13 = [objc_msgSend(request "unresolvedSettings")];
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 == 1;
    v15 = v11 == 1;
    v16 = [objc_msgSend(request "unresolvedSettings")];
    v17 = [objc_msgSend(request "unresolvedSettings")] != 0;
    v18 = [objc_msgSend(request "expectedPhotoManifest")];
    firedCallbackFlags = [request firedCallbackFlags];
    v20 = [objc_msgSend(request "unresolvedSettings")];
    v21 = *(MEMORY[0x1E6960C98] + 16);
    v80 = *MEMORY[0x1E6960C98];
    v81 = v21;
    v82 = *(MEMORY[0x1E6960C98] + 32);
    LOBYTE(v50) = firedCallbackFlags & 1;
    LOWORD(v49) = 0;
    LOBYTE(v48) = v16;
    HIWORD(v47) = 0;
    BYTE5(v47) = v13;
    *(&v47 + 3) = v14;
    *(&v47 + 1) = v15;
    LOBYTE(v47) = v56;
    LOBYTE(v40) = v17;
    [request setResolvedSettings:{+[AVCaptureResolvedPhotoSettings resolvedSettingsWithUniqueID:photoDimensions:rawPhotoDimensions:previewDimensions:embeddedThumbnailDimensions:rawEmbeddedThumbnailDimensions:livePhotoMovieEnabled:livePhotoMovieDimensions:portraitEffectsMatteDimensions:hairSegmentationMatteDimensions:skinSegmentationMatteDimensions:teethSegmentationMatteDimensions:glassesSegmentationMatteDimensions:spatialOverCapturePhotoDimensions:turboModeEnabled:flashEnabled:redEyeReductionEnabled:HDREnabled:adjustedPhotoFiltersEnabled:EV0PhotoDeliveryEnabled:stillImageStabilizationEnabled:virtualDeviceFusionEnabled:squareCropEnabled:deferredPhotoProxyDimensions:photoProcessingTimeRange:contentAwareDistortionCorrectionEnabled:spatialPhotoCaptureEnabled:photoManifest:digitalFlashUserInterfaceHints:digitalFlashUserInterfaceRGBEstimate:captureBeforeResolvingSettingsEnabled:](AVCaptureResolvedPhotoSettings, "resolvedSettingsWithUniqueID:photoDimensions:rawPhotoDimensions:previewDimensions:embeddedThumbnailDimensions:rawEmbeddedThumbnailDimensions:livePhotoMovieEnabled:livePhotoMovieDimensions:portraitEffectsMatteDimensions:hairSegmentationMatteDimensions:skinSegmentationMatteDimensions:teethSegmentationMatteDimensions:glassesSegmentationMatteDimensions:spatialOverCapturePhotoDimensions:turboModeEnabled:flashEnabled:redEyeReductionEnabled:HDREnabled:adjustedPhotoFiltersEnabled:EV0PhotoDeliveryEnabled:stillImageStabilizationEnabled:virtualDeviceFusionEnabled:squareCropEnabled:deferredPhotoProxyDimensions:photoProcessingTimeRange:contentAwareDistortionCorrectionEnabled:spatialPhotoCaptureEnabled:photoManifest:digitalFlashUserInterfaceHints:digitalFlashUserInterfaceRGBEstimate:captureBeforeResolvingSettingsEnabled:", v20, 0, 0, 0, 0, 0, v40, 0, 0, 0, 0, 0, 0, 0, v47, v48, 0, &v80, v49, v18, 0, 0, v50)}];
    self = selfCopy;
    cleanupRequestCopy = v52;
  }

  resolvedSettings = [request resolvedSettings];
  firedCallbackFlags2 = [request firedCallbackFlags];
  *&v80 = 0;
  *(&v80 + 1) = &v80;
  v81 = 0x2020000000uLL;
  v55 = [objc_msgSend(objc_msgSend(request "unresolvedSettings")];
  [request unresolvedSettings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = [objc_msgSend(request "unresolvedSettings")];
    v53 = cleanupRequestCopy;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    photoManifest = [resolvedSettings photoManifest];
    v24 = [photoManifest countByEnumeratingWithState:&v76 objects:v75 count:16];
    selfCopy2 = self;
    v26 = 0;
    v27 = 0;
    if (v24)
    {
      v28 = *v77;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(photoManifest);
          }

          unsignedIntValue = [*(*(&v76 + 1) + 8 * i) unsignedIntValue];
          v26 += ((unsignedIntValue >> 7) & 1) + ((unsignedIntValue & 0x10000) >> 16);
          if ((unsignedIntValue & 0x10000) == 0)
          {
            ++v27;
          }
        }

        v24 = [photoManifest countByEnumeratingWithState:&v76 objects:v75 count:16];
      }

      while (v24);
    }

    self = selfCopy2;
    if (v55)
    {
      v27 /= v55;
      v26 /= v55;
    }

    cleanupRequestCopy = v53;
    if ([v57 count] != v27 && objc_msgSend(v57, "count") != v26)
    {
      LODWORD(v40) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v51, v41, v42, v43, v44, v45, v46);
    }
  }

  else
  {
    v57 = 0;
  }

  if ((((firedCallbackFlags2 & 2) == 0) & (callbacks >> 1)) != 0)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  if ((((firedCallbackFlags2 & 4) == 0) & (callbacks >> 2)) != 0)
  {
    v31 |= 4u;
  }

  v69 = MEMORY[0x1E69E9820];
  v70 = 3221225472;
  v71 = __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forPhotoRequest_withError_cleanupRequest___block_invoke;
  v72 = &unk_1E786EAA8;
  if ((((firedCallbackFlags2 & 8) == 0) & (callbacks >> 3)) != 0)
  {
    v32 = v31 | 8;
  }

  else
  {
    v32 = v31;
  }

  selfCopy3 = self;
  requestCopy = request;
  if ((callbacks & 0x8000) != 0 && (firedCallbackFlags2 & 0x8000) == 0)
  {
    [(AVCapturePhotoOutput *)self _updateCaptureReadinessStateForCompletedRequest:request];
    v32 |= 0x8000u;
  }

  v62 = MEMORY[0x1E69E9820];
  v63 = 3221225472;
  v64 = __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forPhotoRequest_withError_cleanupRequest___block_invoke_2;
  v65 = &unk_1E786FF08;
  v68 = &v80;
  requestCopy2 = request;
  v67 = resolvedSettings;
  if ((callbacks & 0x10) != 0 && (firedCallbackFlags2 & 0x10) == 0)
  {
    *(*(v68 + 1) + 24) = [request firedPhotoCallbacksCount];
    [requestCopy2 setFiredPhotoCallbacksCount:{objc_msgSend(objc_msgSend(v67, "photoManifest"), "count")}];
    v32 |= 0x10u;
  }

  if ([resolvedSettings livePhotoMovieEnabled] && !objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "videoFileURL"))
  {
    if ([resolvedSettings isEV0PhotoDeliveryEnabled] && objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "livePhotoMovieFileURLForOriginalPhoto"))
    {
      v36 = (((firedCallbackFlags2 & 0x20) == 0) & (callbacks >> 5)) != 0 ? v32 | 0x20 : v32;
      v32 = (((firedCallbackFlags2 & 0x200) == 0) & (callbacks >> 9)) != 0 ? v36 | 0x200 : v36;
      if ([resolvedSettings spatialOverCapturePhotoDimensions] >= 1 && objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto"))
      {
        if ((((firedCallbackFlags2 & 0x40) == 0) & (callbacks >> 6)) != 0)
        {
          v37 = v32 | 0x40;
        }

        else
        {
          v37 = v32;
        }

        if ((((firedCallbackFlags2 & 0x400) == 0) & (callbacks >> 10)) != 0)
        {
          v32 = v37 | 0x400;
        }

        else
        {
          v32 = v37;
        }
      }
    }

    if ((((firedCallbackFlags2 & 0x80) == 0) & (callbacks >> 7)) != 0)
    {
      v38 = v32 | 0x80;
    }

    else
    {
      v38 = v32;
    }

    if ((((firedCallbackFlags2 & 0x800) == 0) & (callbacks >> 11)) != 0)
    {
      v32 = v38 | 0x800;
    }

    else
    {
      v32 = v38;
    }

    if ([resolvedSettings spatialOverCapturePhotoDimensions] >= 1 && objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURL"))
    {
      if ((((firedCallbackFlags2 & 0x100) == 0) & (callbacks >> 8)) != 0)
      {
        v39 = v32 | 0x100;
      }

      else
      {
        v39 = v32;
      }

      if ((((firedCallbackFlags2 & 0x1000) == 0) & (callbacks >> 12)) != 0)
      {
        v32 = v39 | 0x1000;
      }

      else
      {
        v32 = v39;
      }
    }
  }

  if ([objc_msgSend(request "unresolvedSettings")] && (((firedCallbackFlags2 & 0x2000) == 0) & (callbacks >> 13)) != 0)
  {
    v32 |= 0x2000u;
  }

  if ([objc_msgSend(request "unresolvedSettings")] && (((firedCallbackFlags2 & 0x4000) == 0) & (callbacks >> 14)) != 0)
  {
    v32 |= 0x4000u;
  }

  if (firedCallbackFlags2 > -1 && (callbacks & 0x80000000) != 0)
  {
    v34 = v32 | 0x80000000;
  }

  else
  {
    v34 = v32;
  }

  [request setFiredCallbackFlags:{v34 | objc_msgSend(request, "firedCallbackFlags")}];
  delegateStorage = [request delegateStorage];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forPhotoRequest_withError_cleanupRequest___block_invoke_3;
  v60[3] = &unk_1E7876100;
  v61 = v34;
  v60[4] = self;
  v60[5] = resolvedSettings;
  v60[6] = request;
  v60[7] = v57;
  v60[9] = &v80;
  v60[10] = v55;
  v60[8] = error;
  [delegateStorage invokeDelegateCallbackWithBlock:v60];
  if (cleanupRequestCopy)
  {
    FigSimpleMutexLock();
    [(NSMutableArray *)self->_internal->photoRequests removeObject:request];
    FigSimpleMutexUnlock();
  }

  _Block_object_dispose(&v80, 8);
}

uint64_t __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forPhotoRequest_withError_cleanupRequest___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) firedPhotoCallbacksCount];
  v2 = [objc_msgSend(*(a1 + 40) "photoManifest")];
  v3 = *(a1 + 32);

  return [v3 setFiredPhotoCallbacksCount:v2];
}

unint64_t __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forPhotoRequest_withError_cleanupRequest___block_invoke_3(unint64_t result, void *a2)
{
  v3 = result;
  if ((*(result + 88) & 2) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) willBeginCaptureForResolvedSettings:*(v3 + 40)];
    }
  }

  if ((*(v3 + 88) & 4) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) willCapturePhotoForResolvedSettings:*(v3 + 40)];
    }
  }

  if ((*(v3 + 88) & 8) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didCapturePhotoForResolvedSettings:*(v3 + 40)];
    }
  }

  if ((*(v3 + 89) & 0x80) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) readyForResponsiveRequestAfterResolvedSettings:*(v3 + 40)];
    }
  }

  if ((*(v3 + 88) & 0x10) != 0)
  {
    v4 = *(*(*(v3 + 72) + 8) + 24);
    result = [*(v3 + 48) expectedPhotoCount];
    if (v4 < result)
    {
      v5 = MEMORY[0x1E6960C70];
      do
      {
        v6 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v3 + 48) "resolvedSettings")];
        if (*(v3 + 56))
        {
          v7 = v4;
          if ([objc_msgSend(*(v3 + 48) "unresolvedSettings")])
          {
            v7 = v4 >> ([objc_msgSend(*(v3 + 48) "unresolvedSettings")] != 0);
          }

          v8 = *(v3 + 80);
          if (v8)
          {
            v7 /= v8;
          }

          v9 = [*(v3 + 56) objectAtIndexedSubscript:v7];
          v10 = v7 + 1;
        }

        else
        {
          v9 = 0;
          v10 = 0;
        }

        ++v4;
        if ([*(v3 + 48) photoCallbackFlavor])
        {
          if ([*(v3 + 48) photoCallbackFlavor] == 1)
          {
            v11 = *(v3 + 32);
            v12 = *(v3 + 40);
            v13 = *(v3 + 64);
            if ((v6 & 0x10080) != 0)
            {
              [a2 captureOutput:v11 didFinishProcessingRawPhotoSampleBuffer:0 previewPhotoSampleBuffer:0 resolvedSettings:v12 bracketSettings:v9 error:v13];
            }

            else
            {
              [a2 captureOutput:v11 didFinishProcessingPhotoSampleBuffer:0 previewPhotoSampleBuffer:0 resolvedSettings:v12 bracketSettings:v9 error:v13];
            }
          }
        }

        else
        {
          v14 = po_metadataWithMakerNoteProcessingFlags(v6);
          if ([*(v3 + 40) deferredPhotoProxyDimensions])
          {
            v15 = [AVCaptureDeferredPhotoProxy alloc];
            v64 = *v5;
            v65 = *(v5 + 2);
            v16 = [(AVCaptureDeferredPhotoProxy *)v15 initWithApplicationIdentifier:0 captureRequestIdentifier:0 photoIdentifier:0 timestamp:&v64 expectedPhotoProcessingFlags:v6];
            [a2 captureOutput:*(v3 + 32) didFinishCapturingDeferredPhotoProxy:v16 error:*(v3 + 64)];
          }

          else
          {
            v17 = [AVCapturePhoto alloc];
            v18 = *(v3 + 48);
            v19 = *(*(*(v3 + 32) + 16) + 376);
            v64 = *v5;
            v65 = *(v5 + 2);
            LODWORD(v61) = v6;
            v16 = [(AVCapturePhoto *)v17 initWithTimestamp:&v64 photoSurface:0 photoSurfaceSize:0 processedFileType:0 previewPhotoSurface:0 embeddedThumbnailSourceSurface:0 photoLibraryThumbnails:0 metadata:v14 depthDataSurface:0 depthMetadataDictionary:0 portraitEffectsMatteSurface:0 portraitEffectsMatteMetadataDictionary:0 hairSegmentationMatteSurface:0 hairSegmentationMatteMetadataDictionary:0 skinSegmentationMatteSurface:0 skinSegmentationMatteMetadataDictionary:0 teethSegmentationMatteSurface:0 teethSegmentationMatteMetadataDictionary:0 glassesSegmentationMatteSurface:0 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:v18 bracketSettings:v9 sequenceCount:v10 photoCount:v4 expectedPhotoProcessingFlags:v61 sourceDeviceType:v19];
            [a2 captureOutput:*(v3 + 32) didFinishProcessingPhoto:v16 error:*(v3 + 64)];
          }
        }

        result = [*(v3 + 48) expectedPhotoCount];
      }

      while (v4 < result);
    }
  }

  if ((*(v3 + 89) & 0x20) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didFinishProcessingPhotoFileAtURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:"unresolvedSettings") error:{"HEICSFileURL"), *(v3 + 40), *(v3 + 64)}];
    }
  }

  if ((*(v3 + 88) & 0x20) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingLivePhotoMovieForEventualFileAtURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "livePhotoMovieFileURLForOriginalPhoto"), *(v3 + 40)}];
    }
  }

  if ((*(v3 + 88) & 0x40) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingLivePhotoMovieForEventualFileAtURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto"), *(v3 + 40)}];
    }
  }

  if ((*(v3 + 88) & 0x80) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingLivePhotoMovieForEventualFileAtURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "livePhotoMovieFileURL"), *(v3 + 40)}];
    }
  }

  if (*(v3 + 89))
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingLivePhotoMovieForEventualFileAtURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURL"), *(v3 + 40)}];
    }
  }

  if ((*(v3 + 89) & 2) != 0)
  {
    if ([*(v3 + 48) delegateSupportsMetadataIdentifiersCallback])
    {
      v20 = *(v3 + 32);
      v21 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v22 = *(v3 + 40);
      v23 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      result = [a2 captureOutput:v20 didFinishProcessingLivePhotoToMovieFileAtURL:v21 duration:&v64 photoDisplayTime:&v62 metadataIdentifiers:MEMORY[0x1E695E0F8] resolvedSettings:v22 error:v23];
    }

    else
    {
      v24 = [*(v3 + 48) delegateSupportsDebugMetadataSidecarFile];
      v25 = *(v3 + 32);
      v26 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v27 = *(v3 + 40);
      v28 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      if (v24)
      {
        result = [a2 captureOutput:v25 didFinishProcessingLivePhotoToMovieFileAtURL:v26 debugMetadataSidecarFileURL:0 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v27 error:v28];
      }

      else
      {
        result = [a2 captureOutput:v25 didFinishProcessingLivePhotoToMovieFileAtURL:v26 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v27 error:v28];
      }
    }
  }

  if ((*(v3 + 89) & 4) != 0)
  {
    if ([*(v3 + 48) delegateSupportsMetadataIdentifiersCallback])
    {
      v29 = *(v3 + 32);
      v30 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v31 = *(v3 + 40);
      v32 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      result = [a2 captureOutput:v29 didFinishProcessingLivePhotoToMovieFileAtURL:v30 duration:&v64 photoDisplayTime:&v62 metadataIdentifiers:MEMORY[0x1E695E0F8] resolvedSettings:v31 error:v32];
    }

    else
    {
      v33 = [*(v3 + 48) delegateSupportsDebugMetadataSidecarFile];
      v34 = *(v3 + 32);
      v35 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v36 = *(v3 + 40);
      v37 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      if (v33)
      {
        result = [a2 captureOutput:v34 didFinishProcessingLivePhotoToMovieFileAtURL:v35 debugMetadataSidecarFileURL:0 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v36 error:v37];
      }

      else
      {
        result = [a2 captureOutput:v34 didFinishProcessingLivePhotoToMovieFileAtURL:v35 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v36 error:v37];
      }
    }
  }

  if ((*(v3 + 89) & 8) != 0)
  {
    if ([*(v3 + 48) delegateSupportsMetadataIdentifiersCallback])
    {
      v38 = *(v3 + 32);
      v39 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v40 = *(v3 + 40);
      v41 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      result = [a2 captureOutput:v38 didFinishProcessingLivePhotoToMovieFileAtURL:v39 duration:&v64 photoDisplayTime:&v62 metadataIdentifiers:MEMORY[0x1E695E0F8] resolvedSettings:v40 error:v41];
    }

    else
    {
      v42 = [*(v3 + 48) delegateSupportsDebugMetadataSidecarFile];
      v43 = *(v3 + 32);
      v44 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v45 = *(v3 + 40);
      v46 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      if (v42)
      {
        result = [a2 captureOutput:v43 didFinishProcessingLivePhotoToMovieFileAtURL:v44 debugMetadataSidecarFileURL:0 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v45 error:v46];
      }

      else
      {
        result = [a2 captureOutput:v43 didFinishProcessingLivePhotoToMovieFileAtURL:v44 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v45 error:v46];
      }
    }
  }

  if ((*(v3 + 89) & 0x10) != 0)
  {
    if ([*(v3 + 48) delegateSupportsMetadataIdentifiersCallback])
    {
      v47 = *(v3 + 32);
      v48 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v49 = *(v3 + 40);
      v50 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      result = [a2 captureOutput:v47 didFinishProcessingLivePhotoToMovieFileAtURL:v48 duration:&v64 photoDisplayTime:&v62 metadataIdentifiers:MEMORY[0x1E695E0F8] resolvedSettings:v49 error:v50];
    }

    else
    {
      v51 = [*(v3 + 48) delegateSupportsDebugMetadataSidecarFile];
      v52 = *(v3 + 32);
      v53 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v54 = *(v3 + 40);
      v55 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      v62 = v64;
      v63 = v65;
      if (v51)
      {
        result = [a2 captureOutput:v52 didFinishProcessingLivePhotoToMovieFileAtURL:v53 debugMetadataSidecarFileURL:0 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v54 error:v55];
      }

      else
      {
        result = [a2 captureOutput:v52 didFinishProcessingLivePhotoToMovieFileAtURL:v53 duration:&v64 photoDisplayTime:&v62 resolvedSettings:v54 error:v55];
      }
    }
  }

  v56 = *(v3 + 88);
  if ((v56 & 0x4000) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v57 = *(v3 + 32);
      v58 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
      v59 = *(v3 + 40);
      v60 = *(v3 + 64);
      v64 = *MEMORY[0x1E6960C70];
      v65 = *(MEMORY[0x1E6960C70] + 16);
      result = [a2 captureOutput:v57 didFinishProcessingVideoFileAtURL:v58 resolvedSettings:v59 previewPixelBuffer:0 recordedDuration:&v64 error:v60];
    }

    v56 = *(v3 + 88);
  }

  if (v56 < 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [a2 captureOutput:*(v3 + 32) didFinishCaptureForResolvedSettings:*(v3 + 40) error:*(v3 + 64)];
    }
  }

  return result;
}

- (id)_photoRequestForUniqueID:(int64_t)d
{
  FigSimpleMutexLock();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  photoRequests = self->_internal->photoRequests;
  v6 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(photoRequests);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v10 "unresolvedSettings")] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v11;
}

- (void)_dispatchFailureCallbacksForMovieRecordingSettings:(id)settings momentCaptureSettings:(id)captureSettings toDelegate:(id)delegate withError:(id)error
{
  v8 = [AVMomentCaptureMovieRequest requestWithDelegate:delegate movieRecordingSettings:settings momentSettings:captureSettings];

  [(AVCapturePhotoOutput *)self _dispatchFailureCallbacks:63 forMovieRequest:v8 withError:error cleanupRequest:0];
}

- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forMovieRequest:(id)request withError:(id)error cleanupRequest:(BOOL)cleanupRequest
{
  cleanupRequestCopy = cleanupRequest;
  if (![request resolvedSettings])
  {
    [request setResolvedSettings:{+[AVMomentCaptureMovieRecordingResolvedSettings movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:](AVMomentCaptureMovieRecordingResolvedSettings, "movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:", objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "uniqueID"), objc_msgSend(objc_msgSend(request, "momentCaptureSettings"), "torchMode") == 1, objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "movieFileURL"), 0, 0)}];
  }

  resolvedSettings = [request resolvedSettings];
  firedCallbackFlags = [request firedCallbackFlags];
  v13 = firedCallbackFlags;
  v14 = callbacks & ((firedCallbackFlags & 1) == 0);
  if ((((firedCallbackFlags & 2) == 0) & (callbacks >> 1)) != 0)
  {
    v14 |= 2u;
  }

  if ((((firedCallbackFlags & 8) == 0) & (callbacks >> 3)) != 0)
  {
    v14 |= 8u;
  }

  if ((((firedCallbackFlags & 0x20) == 0) & (callbacks >> 5)) != 0)
  {
    v15 = v14 | 0x20;
  }

  else
  {
    v15 = v14;
  }

  spatialOverCaptureURL = [resolvedSettings spatialOverCaptureURL];
  if ((((v13 & 4) == 0) & (callbacks >> 2)) != 0)
  {
    v17 = v15 | 4;
  }

  else
  {
    v17 = v15;
  }

  if ((((v13 & 0x10) == 0) & (callbacks >> 4)) != 0)
  {
    v17 |= 0x10u;
  }

  if (spatialOverCaptureURL)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | v18}];
  delegateStorage = [request delegateStorage];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forMovieRequest_withError_cleanupRequest___block_invoke;
  v20[3] = &unk_1E7876128;
  v21 = v18;
  v20[4] = self;
  v20[5] = resolvedSettings;
  v20[6] = request;
  v20[7] = error;
  [delegateStorage invokeDelegateCallbackWithBlock:v20];
  if (cleanupRequestCopy)
  {
    FigSimpleMutexLock();
    [(NSMutableArray *)self->_internal->movieRequests removeObject:request];
    FigSimpleMutexUnlock();
  }
}

uint64_t __91__AVCapturePhotoOutput__dispatchFailureCallbacks_forMovieRequest_withError_cleanupRequest___block_invoke(uint64_t result, void *a2)
{
  v3 = result;
  if (*(result + 64))
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(v3 + 32) didBeginMovieCaptureForResolvedSettings:*(v3 + 40)];
    }
  }

  if ((*(v3 + 64) & 2) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (![*(v3 + 48) movie])
      {
        [*(v3 + 48) setMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(v3 + 48), "resolvedSettings"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "movieFileURL"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "movieMetadata"))}];
      }

      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingMovie:{objc_msgSend(*(v3 + 48), "movie")}];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        result = [a2 captureOutput:*(v3 + 32) didFinishRecordingMovieFileAtEventualURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "movieFileURL"), *(v3 + 40)}];
      }
    }
  }

  if ((*(v3 + 64) & 4) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (![*(v3 + 48) spatialOverCaptureMovie])
      {
        [*(v3 + 48) setSpatialOverCaptureMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(v3 + 48), "resolvedSettings"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "spatialOverCaptureMovieFileURL"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "spatialOverCaptureMovieMetadata"))}];
      }

      result = [a2 captureOutput:*(v3 + 32) didFinishRecordingMovie:{objc_msgSend(*(v3 + 48), "spatialOverCaptureMovie")}];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        result = [a2 captureOutput:*(v3 + 32) didFinishRecordingMovieFileAtEventualURL:objc_msgSend(objc_msgSend(*(v3 + 48) resolvedSettings:{"unresolvedSettings"), "spatialOverCaptureMovieFileURL"), *(v3 + 40)}];
      }
    }
  }

  if ((*(v3 + 64) & 8) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (![*(v3 + 48) movie])
      {
        [*(v3 + 48) setMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(v3 + 48), "resolvedSettings"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "movieFileURL"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "movieMetadata"))}];
      }

      result = [a2 captureOutput:*(v3 + 32) didFinishWritingMovie:objc_msgSend(*(v3 + 48) error:{"movie"), *(v3 + 56)}];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v4 = *(v3 + 32);
        v5 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
        v6 = *(v3 + 40);
        v7 = *(v3 + 56);
        v12 = *MEMORY[0x1E6960C70];
        v13 = *(MEMORY[0x1E6960C70] + 16);
        result = [a2 captureOutput:v4 didFinishWritingMovieFileAtURL:v5 debugMetadataSidecarFileURL:0 previewPixelBuffer:0 duration:&v12 resolvedSettings:v6 error:v7];
      }
    }
  }

  if ((*(v3 + 64) & 0x10) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (![*(v3 + 48) spatialOverCaptureMovie])
      {
        [*(v3 + 48) setSpatialOverCaptureMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(v3 + 48), "resolvedSettings"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "spatialOverCaptureMovieFileURL"), objc_msgSend(objc_msgSend(*(v3 + 48), "unresolvedSettings"), "spatialOverCaptureMovieMetadata"))}];
      }

      result = [a2 captureOutput:*(v3 + 32) didFinishWritingMovie:objc_msgSend(*(v3 + 48) error:{"spatialOverCaptureMovie"), *(v3 + 56)}];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v8 = *(v3 + 32);
        v9 = [objc_msgSend(*(v3 + 48) "unresolvedSettings")];
        v10 = *(v3 + 40);
        v11 = *(v3 + 56);
        v12 = *MEMORY[0x1E6960C70];
        v13 = *(MEMORY[0x1E6960C70] + 16);
        result = [a2 captureOutput:v8 didFinishWritingMovieFileAtURL:v9 debugMetadataSidecarFileURL:0 previewPixelBuffer:0 duration:&v12 resolvedSettings:v10 error:v11];
      }
    }
  }

  if ((*(v3 + 64) & 0x20) != 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [a2 captureOutput:*(v3 + 32) didFinishMovieCaptureForResolvedSettings:*(v3 + 40) error:*(v3 + 56)];
    }
  }

  return result;
}

- (id)_movieRequestForUniqueID:(int64_t)d
{
  FigSimpleMutexLock();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  movieRequests = self->_internal->movieRequests;
  v6 = [(NSMutableArray *)movieRequests countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(movieRequests);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v10 "unresolvedSettings")] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)movieRequests countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v11;
}

- (void)_handlePreparationCompleteNotificationWithPayload:(id)payload settingsID:(int64_t)d
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (v7)
  {
    v28 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:0];
  }

  else
  {
    v28 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  FigSimpleMutexLock();
  lastObject = [(NSMutableArray *)self->_internal->prepareRequests lastObject];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  prepareRequests = self->_internal->prepareRequests;
  v12 = [(NSMutableArray *)prepareRequests countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v27 = v7;
    v14 = *v36;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(prepareRequests);
      }

      v16 = *(*(&v35 + 1) + 8 * v15);
      if ([v16 requestID] >= d)
      {
        break;
      }

      [array addObject:v16];
      if (v16 != lastObject)
      {
        [array2 addObject:v16];
      }

      if (v13 == ++v15)
      {
        v13 = [(NSMutableArray *)prepareRequests countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    if ([v16 requestID] != d)
    {
LABEL_20:
      v17 = 0;
      LODWORD(v7) = v27;
      self = selfCopy;
      goto LABEL_21;
    }

    v17 = v16;
    self = selfCopy;
    if (v16 != lastObject)
    {
      [array2 addObject:v16];
    }

    LODWORD(v7) = v27;
  }

  else
  {
    v17 = 0;
  }

LABEL_21:
  [(NSMutableArray *)self->_internal->prepareRequests removeObjectsInArray:array2];
  FigSimpleMutexUnlock();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = [array countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(array);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        if (([v22 isCompleted] & 1) == 0)
        {
          if ([v22 completionHandler])
          {
            completionHandler = [v22 completionHandler];
            (*(completionHandler + 16))(completionHandler, 0, 0);
          }

          [v22 setCompleted:1];
        }
      }

      v19 = [array countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v19);
  }

  if (([v17 isCompleted] & 1) == 0)
  {
    if ([v17 completionHandler])
    {
      completionHandler2 = [v17 completionHandler];
      if (v7)
      {
        v25 = 0;
      }

      else
      {
        v25 = [array2 containsObject:v17] ^ 1;
      }

      (*(completionHandler2 + 16))(completionHandler2, v25, v28);
    }

    [v17 setCompleted:1];
  }

  [array2 count];
}

- (id)_errorForFigCaptureSessionNotificationPayloadErrorStatus:(int)status userInfo:(id)info
{
  if (!status)
  {
    return 0;
  }

  if (status == -15541)
  {
    return AVLocalizedError();
  }

  return AVLocalizedErrorWithUnderlyingOSStatus();
}

- (void)_handleWillBeginCaptureBeforeResolvingSettingsNotificationWithPayload:(id)payload forRequest:(id)request
{
  if (![request resolvedSettings])
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 1}];
    delegateStorage = [request delegateStorage];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __105__AVCapturePhotoOutput__handleWillBeginCaptureBeforeResolvingSettingsNotificationWithPayload_forRequest___block_invoke;
    v7[3] = &unk_1E786FC18;
    v7[4] = self;
    v7[5] = request;
    [delegateStorage invokeDelegateCallbackWithBlock:v7];
  }
}

uint64_t __105__AVCapturePhotoOutput__handleWillBeginCaptureBeforeResolvingSettingsNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [objc_msgSend(*(a1 + 40) "unresolvedSettings")];

    return [a2 captureOutput:v5 willBeginCaptureBeforeResolvingSettingsForUniqueID:v6];
  }

  return result;
}

- (void)_handleWillBeginCaptureNotificationWithPayload:(id)payload forRequest:(id)request
{
  v60 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  intValue = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if ([objc_msgSend(request "unresolvedSettings")])
  {
    intValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
    v62 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue] << 32;
  }

  else
  {
    intValue2 = 0;
    v62 = 0;
  }

  intValue3 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue4 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue5 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue6 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue7 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue8 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue9 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue10 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  v51 = intValue9;
  v50 = intValue10;
  v9 = intValue9 >= 1 && intValue10 > 0 || [objc_msgSend(request "unresolvedSettings")] != 0;
  v55 = v9;
  intValue11 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue12 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue13 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue14 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue15 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue16 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue17 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue18 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue19 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue20 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue21 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue22 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (objc_msgSend_objectForKeyedSubscript_(payload))
  {
    v38 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v38) = 0;
  }

  selfCopy = self;
  bOOLValue = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue3 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue4 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue5 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue6 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue7 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue8 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  v10 = *(MEMORY[0x1E6960C98] + 16);
  *&v68.start.value = *MEMORY[0x1E6960C98];
  *&v68.start.epoch = v10;
  *&v68.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v11 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v11)
  {
    CMTimeRangeMakeFromDictionary(&v68, v11);
  }

  HIDWORD(v28) = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  bOOLValue9 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  v13 = objc_msgSend_objectForKeyedSubscript_(payload);
  intValue23 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue24 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue25 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (intValue25 && !v13)
  {
    v13 = [objc_msgSend(request "expectedPhotoManifest")];
  }

  firedCallbackFlags = [request firedCallbackFlags];
  unsignedIntegerValue = [objc_msgSend_objectForKeyedSubscript_(payload) unsignedIntegerValue];
  v19 = objc_msgSend_objectForKeyedSubscript_(payload);
  v20 = [objc_msgSend(request "unresolvedSettings")];
  v67 = v68;
  LOBYTE(v28) = firedCallbackFlags & 1;
  BYTE1(v27) = bOOLValue9;
  LOBYTE(v27) = BYTE4(v28);
  LOBYTE(v26) = bOOLValue7;
  HIBYTE(v25) = bOOLValue8;
  BYTE6(v25) = bOOLValue6;
  BYTE5(v25) = bOOLValue5;
  BYTE4(v25) = bOOLValue4;
  BYTE3(v25) = bOOLValue3;
  BYTE2(v25) = bOOLValue2;
  BYTE1(v25) = bOOLValue;
  LOBYTE(v25) = v38;
  LOBYTE(v24) = v55;
  v21 = [AVCaptureResolvedPhotoSettings resolvedSettingsWithUniqueID:"resolvedSettingsWithUniqueID:photoDimensions:rawPhotoDimensions:previewDimensions:embeddedThumbnailDimensions:rawEmbeddedThumbnailDimensions:livePhotoMovieEnabled:livePhotoMovieDimensions:portraitEffectsMatteDimensions:hairSegmentationMatteDimensions:skinSegmentationMatteDimensions:teethSegmentationMatteDimensions:glassesSegmentationMatteDimensions:spatialOverCapturePhotoDimensions:turboModeEnabled:flashEnabled:redEyeReductionEnabled:HDREnabled:adjustedPhotoFiltersEnabled:EV0PhotoDeliveryEnabled:stillImageStabilizationEnabled:virtualDeviceFusionEnabled:squareCropEnabled:deferredPhotoProxyDimensions:photoProcessingTimeRange:contentAwareDistortionCorrectionEnabled:spatialPhotoCaptureEnabled:photoManifest:digitalFlashUserInterfaceHints:digitalFlashUserInterfaceRGBEstimate:captureBeforeResolvingSettingsEnabled:" photoDimensions:v20 rawPhotoDimensions:v60 | (intValue << 32) previewDimensions:intValue7 | (intValue8 << 32) embeddedThumbnailDimensions:intValue2 | v62 rawEmbeddedThumbnailDimensions:intValue3 | (intValue4 << 32) livePhotoMovieEnabled:intValue5 | (intValue6 << 32) livePhotoMovieDimensions:v24 portraitEffectsMatteDimensions:v51 | (v50 << 32) hairSegmentationMatteDimensions:intValue11 | (intValue12 << 32) skinSegmentationMatteDimensions:intValue13 | (intValue14 << 32) teethSegmentationMatteDimensions:intValue15 | (intValue16 << 32) glassesSegmentationMatteDimensions:intValue17 | (intValue18 << 32) spatialOverCapturePhotoDimensions:intValue19 | (intValue20 << 32) turboModeEnabled:intValue21 | (intValue22 << 32) flashEnabled:v25 redEyeReductionEnabled:v26 HDREnabled:intValue23 | (intValue24 << 32) adjustedPhotoFiltersEnabled:&v67 EV0PhotoDeliveryEnabled:v27 stillImageStabilizationEnabled:v13 virtualDeviceFusionEnabled:unsignedIntegerValue squareCropEnabled:v19 deferredPhotoProxyDimensions:v28 photoProcessingTimeRange:? contentAwareDistortionCorrectionEnabled:? spatialPhotoCaptureEnabled:? photoManifest:? digitalFlashUserInterfaceHints:? digitalFlashUserInterfaceRGBEstimate:? captureBeforeResolvingSettingsEnabled:?];
  [request setResolvedSettings:v21];
  FigSimpleMutexLock();
  v22 = [(AVCapturePhotoOutput *)selfCopy _requestUsesWaitingForCaptureReadiness:request];
  if (v22)
  {
    selfCopy->_internal->readinessState.inflightUniqueIDWaitingForCapture = [objc_msgSend(request "unresolvedSettings")];
  }

  if ([(AVCapturePhotoOutput *)selfCopy _requestUsesWaitingForProcessingReadiness:request])
  {
    selfCopy->_internal->readinessState.inflightUniqueIDWaitingForProcessing = [objc_msgSend(request "unresolvedSettings")];
    FigSimpleMutexUnlock();
  }

  else
  {
    FigSimpleMutexUnlock();
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  [(AVCapturePhotoOutput *)selfCopy _updateCaptureReadiness];
LABEL_22:
  if (intValue25)
  {
    v65 = *MEMORY[0x1E6987418];
    v66 = &unk_1F1CEA208;
    -[AVCapturePhotoOutput _dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:](selfCopy, "_dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:", 2147549183, request, -[AVCapturePhotoOutput _errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:](selfCopy, "_errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:", intValue25, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1]), 1);
  }

  else
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 2}];
    delegateStorage = [request delegateStorage];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __82__AVCapturePhotoOutput__handleWillBeginCaptureNotificationWithPayload_forRequest___block_invoke;
    v64[3] = &unk_1E786FC18;
    v64[4] = selfCopy;
    v64[5] = v21;
    [delegateStorage invokeDelegateCallbackWithBlock:v64];
  }
}

uint64_t __82__AVCapturePhotoOutput__handleWillBeginCaptureNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 captureOutput:v5 willBeginCaptureForResolvedSettings:v6];
  }

  return result;
}

- (void)_handleWillCaptureStillImageNotificationWithPayload:(id)payload forRequest:(id)request
{
  if (sIsForcedShutterSoundRegion)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_msgSend(request "unresolvedSettings")];
  }

  v8 = [objc_msgSend(request "unresolvedSettings")];
  if (v8)
  {
    AVCaptureStillImageOutputPlayShutterSound(self, v8, v7);
  }

  intValue = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (intValue)
  {
    v12 = *MEMORY[0x1E6987418];
    v13 = &unk_1F1CEA340;
    -[AVCapturePhotoOutput _dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:](self, "_dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:", 2147549183, request, -[AVCapturePhotoOutput _errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:](self, "_errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:", intValue, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1]), 1);
  }

  else
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 4}];
    delegateStorage = [request delegateStorage];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__AVCapturePhotoOutput__handleWillCaptureStillImageNotificationWithPayload_forRequest___block_invoke;
    v11[3] = &unk_1E786FC18;
    v11[4] = self;
    v11[5] = request;
    [delegateStorage invokeDelegateCallbackWithBlock:v11];
  }
}

uint64_t __87__AVCapturePhotoOutput__handleWillCaptureStillImageNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) resolvedSettings];

    return [a2 captureOutput:v5 willCapturePhotoForResolvedSettings:v6];
  }

  return result;
}

- (void)_handleDidCaptureStillImageNotificationWithPayload:(id)payload forRequest:(id)request
{
  v6 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  FigSimpleMutexLock();
  if (self->_internal->readinessState.inflightUniqueIDWaitingForCapture && (v7 = [objc_msgSend(request "resolvedSettings")], internal = self->_internal, v7 >= internal->readinessState.inflightUniqueIDWaitingForCapture))
  {
    internal->readinessState.inflightUniqueIDWaitingForCapture = 0;
    FigSimpleMutexUnlock();
    [(AVCapturePhotoOutput *)self _updateCaptureReadiness];
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    if (v6)
    {
LABEL_4:
      v11 = *MEMORY[0x1E6987418];
      v12 = &unk_1F1CEA340;
      -[AVCapturePhotoOutput _dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:](self, "_dispatchFailureCallbacks:forPhotoRequest:withError:cleanupRequest:", 2147549183, request, -[AVCapturePhotoOutput _errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:](self, "_errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:", v6, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1]), 1);
      return;
    }
  }

  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 8}];
  delegateStorage = [request delegateStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__AVCapturePhotoOutput__handleDidCaptureStillImageNotificationWithPayload_forRequest___block_invoke;
  v10[3] = &unk_1E786FC18;
  v10[4] = self;
  v10[5] = request;
  [delegateStorage invokeDelegateCallbackWithBlock:v10];
}

uint64_t __86__AVCapturePhotoOutput__handleDidCaptureStillImageNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) resolvedSettings];

    return [a2 captureOutput:v5 didCapturePhotoForResolvedSettings:v6];
  }

  return result;
}

- (void)_handleReadyForResponsiveRequestWithPayload:(id)payload forRequest:(id)request
{
  if (([request firedCallbackFlags] & 0x8000) == 0)
  {
    [(AVCapturePhotoOutput *)self _updateCaptureReadinessStateForCompletedRequest:request];
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x8000}];
    delegateStorage = [request delegateStorage];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__AVCapturePhotoOutput__handleReadyForResponsiveRequestWithPayload_forRequest___block_invoke;
    v8[3] = &unk_1E786FC18;
    v8[4] = self;
    v8[5] = request;
    [delegateStorage invokeDelegateCallbackWithBlock:v8];
    [(AVCapturePhotoOutput *)self _handlePotentiallyFinalPhotoRequestCallbackWithPayload:payload forRequest:request];
  }
}

uint64_t __79__AVCapturePhotoOutput__handleReadyForResponsiveRequestWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) resolvedSettings];

    return [a2 captureOutput:v5 readyForResponsiveRequestAfterResolvedSettings:v6];
  }

  return result;
}

- (void)_handleStillImageCompleteNotification:(id)notification withPayload:(id)payload forRequest:(id)request
{
  v9 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  v83 = *MEMORY[0x1E6987418];
  v84 = &unk_1F1CEA340;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  if (v9)
  {
    v11 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v9 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([objc_msgSend(request "unresolvedSettings")])
  {
    v12 = [objc_msgSend(request "unresolvedSettings")] != 0;
  }

  else
  {
    v12 = 0;
  }

  firedPhotoCallbacksCount = [request firedPhotoCallbacksCount];
  if (firedPhotoCallbacksCount == [request expectedPhotoCount])
  {
    return;
  }

  [request setFiredPhotoCallbacksCount:{objc_msgSend(request, "firedPhotoCallbacksCount") + 1}];
  firedPhotoCallbacksCount2 = [request firedPhotoCallbacksCount];
  if (firedPhotoCallbacksCount2 == [request expectedPhotoCount])
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x10}];
    if ([objc_msgSend(request "unresolvedSettings")])
    {
      AVCaptureStillImageOutputPlayShutterSound(self, 1122, 0);
    }
  }

  firedPhotoCallbacksCount3 = [request firedPhotoCallbacksCount];
  v16 = firedPhotoCallbacksCount3 - 1;
  v17 = [objc_msgSend(objc_msgSend(objc_msgSend(request "resolvedSettings")];
  if (![request photoCallbackFlavor])
  {
    v75 = objc_msgSend_objectForKeyedSubscript_(payload);
    unsignedIntegerValue = [objc_msgSend_objectForKeyedSubscript_(payload) unsignedIntegerValue];
    v21 = objc_msgSend_objectForKeyedSubscript_(payload);
    if (v21)
    {
      previewSurface = v21;
      [request setPreviewSurface:?];
    }

    else
    {
      previewSurface = [request previewSurface];
    }

    v26 = objc_msgSend_objectForKeyedSubscript_(payload);
    if (v26)
    {
      thumbnailSurface = v26;
      [request setThumbnailSurface:v26];
    }

    else
    {
      thumbnailSurface = [request thumbnailSurface];
    }

    v71 = objc_msgSend_objectForKeyedSubscript_(payload);
    unsignedIntegerValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) unsignedIntegerValue];
    unsignedIntValue = [objc_msgSend_objectForKeyedSubscript_(payload) unsignedIntValue];
    intValue = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
    v76 = objc_msgSend_objectForKeyedSubscript_(payload);
    v82 = **&MEMORY[0x1E6960C70];
    v27 = objc_msgSend_objectForKeyedSubscript_(payload);
    if (v27)
    {
      CMTimeMakeFromDictionary(&v82, v27);
    }

    unsignedIntValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) unsignedIntValue];
    intValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
    v66 = objc_msgSend_objectForKeyedSubscript_(payload);
    v65 = objc_msgSend_objectForKeyedSubscript_(payload);
    v64 = objc_msgSend_objectForKeyedSubscript_(payload);
    v62 = objc_msgSend_objectForKeyedSubscript_(payload);
    v60 = objc_msgSend_objectForKeyedSubscript_(payload);
    v59 = objc_msgSend_objectForKeyedSubscript_(payload);
    v58 = objc_msgSend_objectForKeyedSubscript_(payload);
    v57 = objc_msgSend_objectForKeyedSubscript_(payload);
    v56 = objc_msgSend_objectForKeyedSubscript_(payload);
    v55 = objc_msgSend_objectForKeyedSubscript_(payload);
    v54 = objc_msgSend_objectForKeyedSubscript_(payload);
    v53 = objc_msgSend_objectForKeyedSubscript_(payload);
    v52 = objc_msgSend_objectForKeyedSubscript_(payload);
    v51 = objc_msgSend_objectForKeyedSubscript_(payload);
    if (!v75 || !unsignedIntegerValue)
    {
      v28 = !unsignedIntegerValue2 || v71 == 0;
      if (v28 && !v11)
      {
        v11 = AVLocalizedError();
      }
    }

    if (!v76)
    {
      v76 = po_metadataWithMakerNoteProcessingFlags(v17);
    }

    [request unresolvedSettings];
    objc_opt_class();
    v73 = firedPhotoCallbacksCount3;
    if (objc_opt_isKindOfClass())
    {
      v29 = objc_msgSend_objectForKeyedSubscript_(v76);
      v30 = objc_msgSend_objectForKeyedSubscript_(v29);
      if (v30)
      {
        integerValue = [v30 integerValue];
        v32 = integerValue - 1;
      }

      else
      {
        v34 = [objc_msgSend(objc_msgSend(request "unresolvedSettings")];
        if (v34)
        {
          v16 /= v34;
        }

        v32 = v16 >> v12;
        integerValue = v32 + 1;
      }

      v33 = [objc_msgSend(objc_msgSend(request "unresolvedSettings")];
    }

    else
    {
      integerValue = 0;
      v33 = 0;
    }

    v35 = v17;
    if ([notification isEqualToString:*MEMORY[0x1E698FB08]])
    {
      v36 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      v37 = objc_msgSend_objectForKeyedSubscript_(payload);
      v38 = objc_msgSend_objectForKeyedSubscript_(payload);
      v39 = +[AVCapturePhoto AVFileTypeFromFigCaptureStillImageSettingsFileType:codec:unresolvedSettings:](AVCapturePhoto, "AVFileTypeFromFigCaptureStillImageSettingsFileType:codec:unresolvedSettings:", intValue, unsignedIntValue, [request unresolvedSettings]);
      v40 = [AVCaptureDeferredPhotoProxy alloc];
      sourceDeviceType = self->_internal->sourceDeviceType;
      v81 = v82;
      LODWORD(v49) = v35;
      v42 = [(AVCaptureDeferredPhotoProxy *)v40 initWithTimestamp:&v81 proxySurface:v71 proxySurfaceSize:unsignedIntegerValue2 proxyFileType:v39 previewPhotoSurface:previewSurface metadata:v76 captureRequest:request sequenceCount:integerValue photoCount:v73 applicationIdentifier:v36 captureRequestIdentifier:v37 photoIdentifier:v38 expectedPhotoProcessingFlags:v49 sourceDeviceType:sourceDeviceType];
      delegateStorage = [request delegateStorage];
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke_2;
      v79[3] = &unk_1E786FBA0;
      v79[4] = self;
      v79[5] = v42;
      v79[6] = v11;
      v25 = v79;
    }

    else
    {
      v43 = +[AVCapturePhoto AVFileTypeFromFigCaptureStillImageSettingsFileType:codec:unresolvedSettings:](AVCapturePhoto, "AVFileTypeFromFigCaptureStillImageSettingsFileType:codec:unresolvedSettings:", intValue2, unsignedIntValue2, [request unresolvedSettings]);
      v44 = [AVCapturePhoto alloc];
      v45 = self->_internal->sourceDeviceType;
      v81 = v82;
      LODWORD(v50) = v17;
      v46 = [(AVCapturePhoto *)v44 initWithTimestamp:&v81 photoSurface:v75 photoSurfaceSize:unsignedIntegerValue processedFileType:v43 previewPhotoSurface:previewSurface embeddedThumbnailSourceSurface:thumbnailSurface photoLibraryThumbnails:0 metadata:v76 depthDataSurface:v66 depthMetadataDictionary:v65 portraitEffectsMatteSurface:v64 portraitEffectsMatteMetadataDictionary:v62 hairSegmentationMatteSurface:v60 hairSegmentationMatteMetadataDictionary:v59 skinSegmentationMatteSurface:v58 skinSegmentationMatteMetadataDictionary:v57 teethSegmentationMatteSurface:v56 teethSegmentationMatteMetadataDictionary:v55 glassesSegmentationMatteSurface:v54 glassesSegmentationMatteMetadataDictionary:v53 constantColorConfidenceMapSurface:v52 constantColorMetadataDictionary:v51 captureRequest:request bracketSettings:v33 sequenceCount:integerValue photoCount:v73 expectedPhotoProcessingFlags:v50 sourceDeviceType:v45];
      delegateStorage = [request delegateStorage];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke;
      v80[3] = &unk_1E786FBA0;
      v80[4] = self;
      v80[5] = v46;
      v80[6] = v11;
      v25 = v80;
    }

    goto LABEL_57;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(payload);
  v19 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v19)
  {
    previewSampleBuffer = v19;
    [request setPreviewSampleBuffer:v19];
  }

  else
  {
    previewSampleBuffer = [request previewSampleBuffer];
  }

  if (!(v18 | v11))
  {
    v11 = AVLocalizedError();
  }

  v22 = CMGetAttachment(v18, *MEMORY[0x1E696DE30], 0);
  if (v22)
  {
    LODWORD(v17) = [objc_msgSend_objectForKeyedSubscript_(v22) unsignedIntValue];
  }

  [request unresolvedSettings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [objc_msgSend(objc_msgSend(request "unresolvedSettings")];
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v23 = 0;
  if (v18)
  {
LABEL_25:
    CFRetain(v18);
  }

LABEL_26:
  if (previewSampleBuffer)
  {
    CFRetain(previewSampleBuffer);
  }

  delegateStorage = [request delegateStorage];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke_3;
  v77[3] = &unk_1E7876150;
  v78 = v17;
  v77[8] = v18;
  v77[9] = previewSampleBuffer;
  v77[4] = self;
  v77[5] = request;
  v77[6] = v23;
  v77[7] = v11;
  v25 = v77;
LABEL_57:
  [delegateStorage invokeDelegateCallbackWithBlock:v25];
  firedPhotoCallbacksCount4 = [request firedPhotoCallbacksCount];
  if (firedPhotoCallbacksCount4 == [request expectedPhotoCount])
  {
    [request setPreviewSurface:0];
    [request setPreviewSampleBuffer:0];
    [request setThumbnailSurface:0];
  }

  [(AVCapturePhotoOutput *)self _handlePotentiallyFinalPhotoRequestCallbackWithPayload:payload forRequest:request];
  if (v11)
  {
    firedPhotoCallbacksCount5 = [request firedPhotoCallbacksCount];
    if (firedPhotoCallbacksCount5 == [request expectedPhotoCount] && po_allLivePhotoCallbacksHaveFinishedRecordingForRequest(request))
    {
      [(AVCapturePhotoOutput *)self _dispatchFailureCallbacks:2147549183 forPhotoRequest:request withError:v11 cleanupRequest:1];
    }
  }
}

void __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke(void *a1, void *a2)
{
  [a2 captureOutput:a1[4] didFinishProcessingPhoto:a1[5] error:a1[6]];
  v3 = a1[5];
}

void __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke_2(void *a1, void *a2)
{
  [a2 captureOutput:a1[4] didFinishCapturingDeferredPhotoProxy:a1[5] error:a1[6]];
  v3 = a1[5];
}

void __85__AVCapturePhotoOutput__handleStillImageCompleteNotification_withPayload_forRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80) & 0x10080;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) resolvedSettings];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v4)
  {
    [a2 captureOutput:v7 didFinishProcessingRawPhotoSampleBuffer:v5 previewPhotoSampleBuffer:v6 resolvedSettings:v8 bracketSettings:v9 error:v10];
  }

  else
  {
    [a2 captureOutput:v7 didFinishProcessingPhotoSampleBuffer:v5 previewPhotoSampleBuffer:v6 resolvedSettings:v8 bracketSettings:v9 error:v10];
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {

    CFRelease(v12);
  }
}

- (void)_handleDidRecordIrisMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  v6 = [objc_msgSend(request resolvedSettings] && objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "livePhotoMovieFileURLForOriginalPhoto") && (objc_msgSend(request, "firedCallbackFlags") & 0x20) == 0;
  v7 = [objc_msgSend(request "resolvedSettings")];
  array = [MEMORY[0x1E695DF70] array];
  firedCallbackFlags = [request firedCallbackFlags];
  if (v6)
  {
    [request setFiredCallbackFlags:firedCallbackFlags | 0x20u];
    [array addObject:{objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "livePhotoMovieFileURLForOriginalPhoto")}];
    if (v7 >= 1 && [objc_msgSend(request "unresolvedSettings")])
    {
      [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x40}];
      [array addObject:{objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto")}];
    }
  }

  else
  {
    [request setFiredCallbackFlags:firedCallbackFlags | 0x80u];
    [array addObject:{objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "livePhotoMovieFileURL")}];
    if (v7 >= 1 && [objc_msgSend(request "unresolvedSettings")])
    {
      [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x100}];
      [array addObject:{objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURL")}];
    }

    if (sIsForcedShutterSoundRegion == 1)
    {
      FigSimpleMutexLock();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      photoRequests = self->_internal->photoRequests;
      v11 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(photoRequests);
            }

            if (!po_allLivePhotoCallbacksHaveFinishedRecordingForRequest(*(*(&v20 + 1) + 8 * i)))
            {
              FigSimpleMutexUnlock();
              goto LABEL_23;
            }
          }

          v12 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      FigSimpleMutexUnlock();
      beginEndIrisMovieCaptureHostTimeQueue = self->_internal->beginEndIrisMovieCaptureHostTimeQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke;
      block[3] = &unk_1E786EC08;
      block[4] = self;
      dispatch_async(beginEndIrisMovieCaptureHostTimeQueue, block);
    }
  }

LABEL_23:
  delegateStorage = [request delegateStorage];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke_3;
  v17[3] = &unk_1E786FBA0;
  v17[4] = array;
  v17[5] = self;
  v17[6] = request;
  [delegateStorage invokeDelegateCallbackWithBlock:v17];
}

void __84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(*(a1 + 32) + 16) + 368));
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB98];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v6, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke_2;
  v5[3] = &unk_1E786EC08;
  v5[4] = *(a1 + 32);
  AudioServicesPlaySystemSoundWithCompletion(0x45Eu, v5);
}

void __84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB90];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v5, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v5];
  dispatch_group_leave(*(*(*(a1 + 32) + 16) + 368));
}

void *__84__AVCapturePhotoOutput__handleDidRecordIrisMovieNotificationWithPayload_forRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [a2 captureOutput:*(a1 + 40) didFinishRecordingLivePhotoMovieForEventualFileAtURL:v9 resolvedSettings:{objc_msgSend(*(a1 + 48), "resolvedSettings")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (void)_handlePotentiallyFinalPhotoRequestCallbackWithPayload:(id)payload forRequest:(id)request
{
  firedPhotoCallbacksCount = [request firedPhotoCallbacksCount];
  if (firedPhotoCallbacksCount == [request expectedPhotoCount])
  {
    if (![objc_msgSend(request "resolvedSettings")])
    {
      goto LABEL_16;
    }

    v8 = [objc_msgSend(request "resolvedSettings")];
    v9 = [objc_msgSend(request "resolvedSettings")];
    v10 = [objc_msgSend(request "unresolvedSettings")];
    v11 = v10 != 0;
    if (v8)
    {
      v12 = v10;
      v13 = [objc_msgSend(request "unresolvedSettings")];
      v14 = v12 ? 2 : 1;
      if (v13)
      {
        v11 = v14;
      }
    }

    if (v9)
    {
      if ([objc_msgSend(request "unresolvedSettings")])
      {
        ++v11;
      }

      if (v8 && [objc_msgSend(request "unresolvedSettings")])
      {
        ++v11;
      }
    }

    v15 = ([request firedCallbackFlags] >> 11) & 1;
    v16 = (([request firedCallbackFlags] >> 9) & 1) + v15;
    v17 = ([request firedCallbackFlags] >> 12) & 1;
    if (v16 + v17 + (([request firedCallbackFlags] >> 10) & 1) == v11)
    {
LABEL_16:
      if (([request firedCallbackFlags] & 0x8000) != 0)
      {

        [(AVCapturePhotoOutput *)self _handleDidFinishCaptureNotificationWithPayload:payload forRequest:request];
      }
    }
  }
}

- (void)_handleDidFinishRecordingIrisMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  memset(&v27, 0, sizeof(v27));
  v8 = objc_msgSend_objectForKeyedSubscript_(payload);
  CMTimeMakeFromDictionary(&v27, v8);
  memset(&v26, 0, sizeof(v26));
  v9 = objc_msgSend_objectForKeyedSubscript_(payload);
  CMTimeMakeFromDictionary(&v26, v9);
  bOOLValue = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  v11 = [objc_msgSend(request "resolvedSettings")] >= 1 && objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "spatialOverCaptureLivePhotoMovieFileURL") != 0;
  v12 = bOOLValue & v11;
  bOOLValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  if ([objc_msgSend(request "resolvedSettings")] && ((objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "livePhotoMovieFileURLForOriginalPhoto") != 0) & bOOLValue2) == 1)
  {
    unresolvedSettings = [request unresolvedSettings];
    if (v12)
    {
      spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto = [unresolvedSettings spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto];
      v16 = 1;
      v17 = 1024;
    }

    else
    {
      spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto = [unresolvedSettings livePhotoMovieFileURLForOriginalPhoto];
      v16 = 1;
      v17 = 512;
    }
  }

  else
  {
    unresolvedSettings2 = [request unresolvedSettings];
    if (v12)
    {
      spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto = [unresolvedSettings2 spatialOverCaptureLivePhotoMovieFileURL];
      v16 = 0;
      v17 = 4096;
    }

    else
    {
      spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto = [unresolvedSettings2 livePhotoMovieFileURL];
      v16 = 0;
      v17 = 2048;
    }
  }

  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | v17}];
  if (v7)
  {
    v19 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:[(AVCapturePhotoOutput *)self _avErrorUserInfoDictionaryForError:v7 photoRequest:request payload:payload isOriginalMovie:v16]];
  }

  else
  {
    v19 = 0;
  }

  delegateStorage = [request delegateStorage];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__AVCapturePhotoOutput__handleDidFinishRecordingIrisMovieNotificationWithPayload_forRequest___block_invoke;
  v21[3] = &unk_1E7876178;
  v24 = v16;
  v25 = v12;
  v21[4] = request;
  v21[5] = payload;
  v21[6] = self;
  v21[7] = spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto;
  v22 = v27;
  v23 = v26;
  v21[8] = v19;
  [delegateStorage invokeDelegateCallbackWithBlock:v21];
  [(AVCapturePhotoOutput *)self _handlePotentiallyFinalPhotoRequestCallbackWithPayload:payload forRequest:request];
}

uint64_t __93__AVCapturePhotoOutput__handleDidFinishRecordingIrisMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) delegateSupportsMetadataIdentifiersCallback])
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40));
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F8];
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) resolvedSettings];
    v9 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    v21 = *(a1 + 96);
    v22 = *(a1 + 112);
    return [a2 captureOutput:v6 didFinishProcessingLivePhotoToMovieFileAtURL:v7 duration:&v23 photoDisplayTime:&v21 metadataIdentifiers:v5 resolvedSettings:v8 error:v9];
  }

  else if ([*(a1 + 32) delegateSupportsDebugMetadataSidecarFile])
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40));
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    }

    else
    {
      v12 = 0;
    }

    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = [*(a1 + 32) resolvedSettings];
    v20 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    v21 = *(a1 + 96);
    v22 = *(a1 + 112);
    return [a2 captureOutput:v17 didFinishProcessingLivePhotoToMovieFileAtURL:v18 debugMetadataSidecarFileURL:v12 duration:&v23 photoDisplayTime:&v21 resolvedSettings:v19 error:v20];
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = [*(a1 + 32) resolvedSettings];
    v16 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    v21 = *(a1 + 96);
    v22 = *(a1 + 112);
    return [a2 captureOutput:v13 didFinishProcessingLivePhotoToMovieFileAtURL:v14 duration:&v23 photoDisplayTime:&v21 resolvedSettings:v15 error:v16];
  }
}

- (void)_handleDidFinishRecordingVideoNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  memset(&v14, 0, sizeof(v14));
  v8 = objc_msgSend_objectForKeyedSubscript_(payload);
  CMTimeMakeFromDictionary(&v14, v8);
  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x4000}];
  v9 = [objc_msgSend(request "unresolvedSettings")];
  if (v7)
  {
    v10 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:[(AVCapturePhotoOutput *)self _avErrorUserInfoDictionaryForError:v7 photoRequest:request payload:payload isOriginalMovie:0]];
  }

  else
  {
    v10 = 0;
  }

  delegateStorage = [request delegateStorage];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__AVCapturePhotoOutput__handleDidFinishRecordingVideoNotificationWithPayload_forRequest___block_invoke;
  v12[3] = &unk_1E78761A0;
  v12[4] = self;
  v12[5] = v9;
  v12[7] = v10;
  v12[8] = 0;
  v13 = v14;
  v12[6] = request;
  [delegateStorage invokeDelegateCallbackWithBlock:v12];
  if (([request firedCallbackFlags] & 0x2010) != 0)
  {
    [(AVCapturePhotoOutput *)self _handleDidFinishCaptureNotificationWithPayload:payload forRequest:request];
  }
}

uint64_t __89__AVCapturePhotoOutput__handleDidFinishRecordingVideoNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) resolvedSettings];
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return [a2 captureOutput:v4 didFinishProcessingVideoFileAtURL:v5 resolvedSettings:v6 previewPixelBuffer:v7 recordedDuration:&v10 error:v8];
}

- (void)setFigCaptureSessionSectionProperty:(__CFString *)property withHostTime:(id *)time
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AVCapturePhotoOutput_setFigCaptureSessionSectionProperty_withHostTime___block_invoke;
  v4[3] = &unk_1E78761C8;
  v5 = *time;
  v4[4] = self;
  v4[5] = property;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v4];
}

void __73__AVCapturePhotoOutput_setFigCaptureSessionSectionProperty_withHostTime___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    v9 = *(a1 + 48);
    v5 = CMTimeCopyAsDictionary(&v9, v4);
    v6 = [*(a1 + 32) sinkID];
    v7 = *(a1 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(a2, v6, v7, v5);
    }

    CFRelease(v5);
  }
}

- (void)setFigCaptureSessionSectionProperty:(__CFString *)property withValue:(void *)value
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AVCapturePhotoOutput_setFigCaptureSessionSectionProperty_withValue___block_invoke;
  v4[3] = &unk_1E78761F0;
  v4[4] = self;
  v4[5] = property;
  v4[6] = value;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v4];
}

uint64_t __70__AVCapturePhotoOutput_setFigCaptureSessionSectionProperty_withValue___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v9 = *(v8 + 8);
    if (v9)
    {

      return v9(a2, v4, v5, v6);
    }
  }

  return result;
}

- (id)_avErrorUserInfoDictionaryForError:(int)error photoRequest:(id)request payload:(id)payload isOriginalMovie:(BOOL)movie
{
  movieCopy = movie;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v11)
  {
    [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E6987420]];
  }

  [dictionary setObject:&unk_1F1CEA358 forKeyedSubscript:*MEMORY[0x1E6987418]];
  if (error == -16411)
  {
    v12 = [objc_msgSend(request "unresolvedSettings")];
    unresolvedSettings = [request unresolvedSettings];
    if (v12)
    {
      videoFileURL = [unresolvedSettings videoFileURL];
    }

    else if (movieCopy)
    {
      videoFileURL = [unresolvedSettings livePhotoMovieFileURLForOriginalPhoto];
    }

    else
    {
      videoFileURL = [unresolvedSettings livePhotoMovieFileURL];
    }

    if (videoFileURL)
    {
      [dictionary setObject:videoFileURL forKeyedSubscript:*MEMORY[0x1E696A998]];
    }
  }

  return dictionary;
}

- (id)_avErrorUserInfoDictionaryForError:(int)error movieRequest:(id)request payload:(id)payload isSpatialOverCaptureMovie:(BOOL)movie
{
  movieCopy = movie;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v11)
  {
    [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E6987420]];
  }

  [dictionary setObject:&unk_1F1CEA358 forKeyedSubscript:*MEMORY[0x1E6987418]];
  if (error == -16411)
  {
    unresolvedSettings = [request unresolvedSettings];
    if (movieCopy)
    {
      spatialOverCaptureMovieFileURL = [unresolvedSettings spatialOverCaptureMovieFileURL];
    }

    else
    {
      spatialOverCaptureMovieFileURL = [unresolvedSettings movieFileURL];
    }

    if (spatialOverCaptureMovieFileURL)
    {
      [dictionary setObject:spatialOverCaptureMovieFileURL forKeyedSubscript:*MEMORY[0x1E696A998]];
    }
  }

  return dictionary;
}

- (void)_handleDidFinishCaptureNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (v7)
  {
    v8 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexLock();
  [(NSMutableArray *)self->_internal->photoRequests removeObject:request];
  FigSimpleMutexUnlock();
  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x80000000}];
  delegateStorage = [request delegateStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__AVCapturePhotoOutput__handleDidFinishCaptureNotificationWithPayload_forRequest___block_invoke;
  v10[3] = &unk_1E786FBA0;
  v10[4] = self;
  v10[5] = request;
  v10[6] = v8;
  [delegateStorage invokeDelegateCallbackWithBlock:v10];
}

uint64_t __82__AVCapturePhotoOutput__handleDidFinishCaptureNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) resolvedSettings];
    v7 = *(a1 + 48);

    return [a2 captureOutput:v5 didFinishCaptureForResolvedSettings:v6 error:v7];
  }

  return result;
}

- (void)_handleDidBeginRecordingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  bOOLValue = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  intValue = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  intValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if ([objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue])
  {
    v11 = [objc_msgSend(request "unresolvedSettings")];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[AVMomentCaptureMovieRecordingResolvedSettings movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:](AVMomentCaptureMovieRecordingResolvedSettings, "movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:", [objc_msgSend(request "unresolvedSettings")], bOOLValue, objc_msgSend(objc_msgSend(request, "unresolvedSettings"), "movieFileURL"), v11, intValue | (intValue2 << 32));
  [request setResolvedSettings:v12];
  if (v7)
  {
    v15 = *MEMORY[0x1E6987418];
    v16 = &unk_1F1CEA208;
    -[AVCapturePhotoOutput _dispatchFailureCallbacks:forMovieRequest:withError:cleanupRequest:](self, "_dispatchFailureCallbacks:forMovieRequest:withError:cleanupRequest:", 63, request, -[AVCapturePhotoOutput _errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:](self, "_errorForFigCaptureSessionNotificationPayloadErrorStatus:userInfo:", v7, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1]), 1);
  }

  else
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 1}];
    delegateStorage = [request delegateStorage];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__AVCapturePhotoOutput__handleDidBeginRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke;
    v14[3] = &unk_1E786FC18;
    v14[4] = self;
    v14[5] = v12;
    [delegateStorage invokeDelegateCallbackWithBlock:v14];
  }
}

uint64_t __101__AVCapturePhotoOutput__handleDidBeginRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 captureOutput:v5 didBeginMovieCaptureForResolvedSettings:v6];
  }

  return result;
}

- (void)_handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  resolvedSettings = [objc_msgSend(request resolvedSettings];
  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 2}];
  if (resolvedSettings)
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 4}];
  }

  if (sIsForcedShutterSoundRegion == 1)
  {
    FigSimpleMutexLock();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    photoRequests = self->_internal->photoRequests;
    v8 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(photoRequests);
          }

          if (!po_allLivePhotoCallbacksHaveFinishedRecordingForRequest(*(*(&v18 + 1) + 8 * i)))
          {
            FigSimpleMutexUnlock();
            goto LABEL_14;
          }
        }

        v9 = [(NSMutableArray *)photoRequests countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    FigSimpleMutexUnlock();
    beginEndIrisMovieCaptureHostTimeQueue = self->_internal->beginEndIrisMovieCaptureHostTimeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = self;
    dispatch_async(beginEndIrisMovieCaptureHostTimeQueue, block);
  }

LABEL_14:
  delegateStorage = [request delegateStorage];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke_3;
  v14[3] = &unk_1E7876218;
  v14[4] = request;
  v14[5] = self;
  v15 = resolvedSettings != 0;
  [delegateStorage invokeDelegateCallbackWithBlock:v14];
}

void __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(*(a1 + 32) + 16) + 368));
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB98];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v6, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke_2;
  v5[3] = &unk_1E786EC08;
  v5[4] = *(a1 + 32);
  AudioServicesPlaySystemSoundWithCompletion(0x45Eu, v5);
}

void __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E698FB90];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v5, HostTimeClock);
  [v2 setFigCaptureSessionSectionProperty:v3 withHostTime:&v5];
  dispatch_group_leave(*(*(*(a1 + 32) + 16) + 368));
}

uint64_t __102__AVCapturePhotoOutput__handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke_3(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    if (![*(a1 + 32) movie])
    {
      [*(a1 + 32) setMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(a1 + 32), "resolvedSettings"), objc_msgSend(objc_msgSend(*(a1 + 32), "resolvedSettings"), "movieURL"), objc_msgSend(objc_msgSend(*(a1 + 32), "unresolvedSettings"), "movieMetadata"))}];
    }

    result = [a2 captureOutput:*(a1 + 40) didFinishRecordingMovie:{objc_msgSend(*(a1 + 32), "movie")}];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a2 captureOutput:*(a1 + 40) didFinishRecordingMovieFileAtEventualURL:objc_msgSend(objc_msgSend(*(a1 + 32) resolvedSettings:{"resolvedSettings"), "movieURL"), objc_msgSend(*(a1 + 32), "resolvedSettings")}];
    }
  }

  if (*(a1 + 48) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      if (![*(a1 + 32) spatialOverCaptureMovie])
      {
        [*(a1 + 32) setSpatialOverCaptureMovie:{+[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", objc_msgSend(*(a1 + 32), "resolvedSettings"), objc_msgSend(objc_msgSend(*(a1 + 32), "resolvedSettings"), "spatialOverCaptureURL"), objc_msgSend(objc_msgSend(*(a1 + 32), "unresolvedSettings"), "spatialOverCaptureMovieMetadata"))}];
      }

      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) spatialOverCaptureMovie];

      return [a2 captureOutput:v5 didFinishRecordingMovie:v6];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v7 = *(a1 + 40);
        v8 = [objc_msgSend(*(a1 + 32) "resolvedSettings")];
        v9 = [*(a1 + 32) resolvedSettings];

        return [a2 captureOutput:v7 didFinishRecordingMovieFileAtEventualURL:v8 resolvedSettings:v9];
      }
    }
  }

  return result;
}

- (void)_handleDidFinishWritingMomentCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  memset(&v26, 0, sizeof(v26));
  v8 = objc_msgSend_objectForKeyedSubscript_(payload);
  CMTimeMakeFromDictionary(&v26, v8);
  bOOLValue = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
  v10 = bOOLValue;
  if (bOOLValue && [objc_msgSend(request "resolvedSettings")])
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x10}];
    v11 = [objc_msgSend(request "resolvedSettings")];
    v12 = 1;
    v13 = 1;
  }

  else
  {
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 8}];
    v11 = [objc_msgSend(request "resolvedSettings")];
    v12 = 0;
    v13 = 0;
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v14)
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  }

  else
  {
    v15 = 0;
  }

  pixelBufferOut = 0;
  v16 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v16)
  {
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v16, 0, &pixelBufferOut);
  }

  if (v7)
  {
    v17 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:[(AVCapturePhotoOutput *)self _avErrorUserInfoDictionaryForError:v7 movieRequest:request payload:payload isSpatialOverCaptureMovie:v12]];
  }

  else
  {
    v17 = 0;
  }

  delegateStorage = [request delegateStorage];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__AVCapturePhotoOutput__handleDidFinishWritingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke;
  v21[3] = &unk_1E7876240;
  v23 = v13;
  v24 = v10;
  v21[4] = request;
  v21[5] = v11;
  v22 = v26;
  v21[6] = v15;
  v21[7] = self;
  v21[8] = v17;
  v21[9] = pixelBufferOut;
  [delegateStorage invokeDelegateCallbackWithBlock:v21];
  v19 = ([request firedCallbackFlags] >> 3) & 1;
  v20 = (([request firedCallbackFlags] >> 4) & 1) + v19;
  if ([request expectedMovieCount] == v20)
  {
    [(AVCapturePhotoOutput *)self _handleDidFinishMovieCaptureMovieNotificationWithPayload:payload forRequest:request];
  }
}

void __100__AVCapturePhotoOutput__handleDidFinishWritingMomentCaptureMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    if (*(a1 + 105) == 1)
    {
      v5 = [v4 spatialOverCaptureMovie];
    }

    else
    {
      v5 = [v4 movie];
    }

    v12 = v5;
    if (!v5)
    {
      v13 = *(a1 + 105);
      v14 = [*(a1 + 32) unresolvedSettings];
      if (v13 == 1)
      {
        v15 = [v14 spatialOverCaptureMovieMetadata];
      }

      else
      {
        v15 = [v14 movieMetadata];
      }

      v12 = +[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", [*(a1 + 32) resolvedSettings], *(a1 + 40), v15);
    }

    v18 = *(a1 + 80);
    v19 = *(a1 + 96);
    [(AVMomentCaptureMovie *)v12 _setDuration:&v18];
    [(AVMomentCaptureMovie *)v12 _setPreviewPixelBuffer:*(a1 + 72)];
    [(AVMomentCaptureMovie *)v12 _setDebugMetadataSidecarFileURL:*(a1 + 48)];
    [a2 captureOutput:*(a1 + 56) didFinishWritingMovie:v12 error:*(a1 + 64)];
    v16 = *(a1 + 32);
    if (*(a1 + 105) == 1)
    {
      [v16 setSpatialOverCaptureMovie:0];
    }

    else
    {
      [v16 setMovie:0];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) resolvedSettings];
    v11 = *(a1 + 64);
    v18 = *(a1 + 80);
    v19 = *(a1 + 96);
    [a2 captureOutput:v6 didFinishWritingMovieFileAtURL:v9 debugMetadataSidecarFileURL:v7 previewPixelBuffer:v8 duration:&v18 resolvedSettings:v10 error:v11];
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    CFRelease(v17);
  }
}

- (void)_handleDidFinishMovieCaptureMovieNotificationWithPayload:(id)payload forRequest:(id)request
{
  v7 = [objc_msgSend_objectForKeyedSubscript_(payload a2];
  [objc_msgSend_objectForKeyedSubscript_(payload) intValue];
  if (v7)
  {
    v8 = [(AVCapturePhotoOutput *)self _errorForFigCaptureSessionNotificationPayloadErrorStatus:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexLock();
  [(NSMutableArray *)self->_internal->movieRequests removeObject:request];
  FigSimpleMutexUnlock();
  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 0x20}];
  delegateStorage = [request delegateStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__AVCapturePhotoOutput__handleDidFinishMovieCaptureMovieNotificationWithPayload_forRequest___block_invoke;
  v10[3] = &unk_1E786FBA0;
  v10[4] = self;
  v10[5] = request;
  v10[6] = v8;
  [delegateStorage invokeDelegateCallbackWithBlock:v10];
}

uint64_t __92__AVCapturePhotoOutput__handleDidFinishMovieCaptureMovieNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) resolvedSettings];
    v7 = *(a1 + 48);

    return [a2 captureOutput:v5 didFinishMovieCaptureForResolvedSettings:v6 error:v7];
  }

  return result;
}

- (void)_incrementObserverCountForKeyPath:(id)path
{
  v4 = [path isEqualToString:@"isFlashScene"];
  v5 = [path isEqualToString:@"isHDRScene"];
  v6 = [path isEqualToString:@"isStillImageStabilizationScene"];
  v7 = [path isEqualToString:@"digitalFlashStatus"];
  v8 = [path isEqualToString:@"digitalFlashExposureTimes"];
  if ((v4 & 1) != 0 || (v5 & 1) != 0 || (v6 & 1) != 0 || (v7 & 1) != 0 || v8)
  {
    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_3_6(v9, v10, v11, 3221225472, __58__AVCapturePhotoOutput__incrementObserverCountForKeyPath___block_invoke, &unk_1E78760B0, v12, v13[0], v13[1], v13[2], v13[3], v13[4]);
  }
}

- (void)_decrementObserverCountForKeyPath:(id)path
{
  v4 = [path isEqualToString:@"isFlashScene"];
  v5 = [path isEqualToString:@"isHDRScene"];
  v6 = [path isEqualToString:@"isStillImageStabilizationScene"];
  v7 = [path isEqualToString:@"digitalFlashStatus"];
  v8 = [path isEqualToString:@"digitalFlashExposureTimes"];
  if ((v4 & 1) != 0 || (v5 & 1) != 0 || (v6 & 1) != 0 || (v7 & 1) != 0 || v8)
  {
    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_3_6(v9, v10, v11, 3221225472, __58__AVCapturePhotoOutput__decrementObserverCountForKeyPath___block_invoke, &unk_1E78760B0, v12, v13[0], v13[1], v13[2], v13[3], v13[4]);
  }
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend_objectForKeyedSubscript_(payload a2])
  {
    longLongValue = [objc_msgSend_objectForKeyedSubscript_(payload) longLongValue];
    if ([notification isEqualToString:*MEMORY[0x1E698FB58]])
    {
      v8 = OUTLINED_FUNCTION_2_7();

      [v8 _handlePreparationCompleteNotificationWithPayload:? settingsID:?];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FB50]])
    {

      [(AVCapturePhotoOutput *)self _resetLivePhotoMovieProcessingSuspended];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FB48]])
    {

      [(AVCapturePhotoOutput *)self _resetLivePhotoCaptureSuspended];
    }

    else
    {
      v9 = [(AVCapturePhotoOutput *)self _photoRequestForUniqueID:longLongValue];
      v10 = [(AVCapturePhotoOutput *)self _movieRequestForUniqueID:longLongValue];
      if (v9 | v10)
      {
        if (v9)
        {
          if ([notification isEqualToString:*MEMORY[0x1E698FB80]])
          {
            v11 = OUTLINED_FUNCTION_0_11();

            [v11 _handleWillBeginCaptureBeforeResolvingSettingsNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB78]])
          {
            v13 = OUTLINED_FUNCTION_0_11();

            [v13 _handleWillBeginCaptureNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB88]])
          {
            v14 = OUTLINED_FUNCTION_0_11();

            [v14 _handleWillCaptureStillImageNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB28]])
          {
            v16 = OUTLINED_FUNCTION_0_11();

            [v16 _handleDidCaptureStillImageNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB68]])
          {
            v18 = OUTLINED_FUNCTION_0_11();

            [v18 _handleReadyForResponsiveRequestWithPayload:? forRequest:?];
          }

          else if (([notification isEqualToString:*MEMORY[0x1E698FB70]] & 1) != 0 || (objc_msgSend(notification, "isEqualToString:", *MEMORY[0x1E698FB60]) & 1) != 0 || objc_msgSend(notification, "isEqualToString:", *MEMORY[0x1E698FB08]))
          {

            [(AVCapturePhotoOutput *)self _handleStillImageCompleteNotification:notification withPayload:payload forRequest:v9];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB40]])
          {
            if (![objc_msgSend(v9 "unresolvedSettings")])
            {
              v19 = OUTLINED_FUNCTION_0_11();

              [v19 _handleDidRecordIrisMovieNotificationWithPayload:? forRequest:?];
            }
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB30]])
          {
            if ([objc_msgSend(v9 "unresolvedSettings")])
            {
              v20 = OUTLINED_FUNCTION_0_11();

              [v20 _handleDidFinishRecordingVideoNotificationWithPayload:? forRequest:?];
            }

            else
            {
              v21 = OUTLINED_FUNCTION_0_11();

              [v21 _handleDidFinishRecordingIrisMovieNotificationWithPayload:? forRequest:?];
            }
          }
        }

        else if (v10)
        {
          if ([notification isEqualToString:*MEMORY[0x1E698FB18]])
          {
            v12 = OUTLINED_FUNCTION_2_7();

            [v12 _handleDidBeginRecordingMomentCaptureMovieNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB40]])
          {
            v15 = OUTLINED_FUNCTION_2_7();

            [v15 _handleDidFinishRecordingMomentCaptureMovieNotificationWithPayload:? forRequest:?];
          }

          else if ([notification isEqualToString:*MEMORY[0x1E698FB38]])
          {
            v17 = OUTLINED_FUNCTION_2_7();

            [v17 _handleDidFinishWritingMomentCaptureMovieNotificationWithPayload:? forRequest:?];
          }
        }
      }
    }
  }
}

+ (BOOL)DNGPhotoDataRepresentationForRawSampleBuffer:(uint64_t)a1 previewPhotoSampleBuffer:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized raw format %@", AVStringForOSType()];
  *a2 = v3;
  return v3 == 0;
}

- (void)commitMomentCaptureToPhotoWithUniqueID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v2, v3))
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
}

@end