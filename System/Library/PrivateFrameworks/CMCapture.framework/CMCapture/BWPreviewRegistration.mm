@interface BWPreviewRegistration
- (BWPreviewRegistration)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor registrationType:(int)registrationType metalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts;
- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCameraPortType:(id)type narrowerPixelBufferDimensions:(id)dimensions widerToNarrowerCameraScale:(double)scale;
- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale;
- (void)allocateResourcesAsynchronouslyWithVideoFormat:(id)format;
- (void)cleanupResources;
- (void)dealloc;
- (void)registerWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale isMacroScene:(BOOL)scene macroTransitionType:(int)type completionHandler:(id)handler;
@end

@implementation BWPreviewRegistration

- (BWPreviewRegistration)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor registrationType:(int)registrationType metalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts
{
  v17.receiver = self;
  v17.super_class = BWPreviewRegistration;
  v12 = [(BWPreviewRegistration *)&v17 init];
  if (!v12)
  {
    return v12;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v14 = dispatch_queue_create("com.apple.bwgraph.preview.registration", v13);
  v12->_registrationQueue = v14;
  if (!v14)
  {
    [BWPreviewRegistration initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:];
LABEL_10:

    return 0;
  }

  if (registrationType == 1)
  {
    v12->_excludeStaticComponentFromAlignmentShifts = shifts;
    v12->_registrationProvider = [[BWAdaptiveCorrectionPreviewRegistrationProvider alloc] initWithCameraInfoByPortType:type excludeStaticComponentFromAlignmentShifts:v12->_excludeStaticComponentFromAlignmentShifts];
    v12->_previewRegistrationType = 1;
    v12->_metalCommandQueue = queue;
    registrationProvider = v12->_registrationProvider;
  }

  else
  {
    registrationProvider = [[BWVisionPreviewRegistrationProvider alloc] initWithCameraInfoByPortType:type sensorBinningFactor:factor];
    v12->_registrationProvider = registrationProvider;
    v12->_previewRegistrationType = 0;
  }

  if (!registrationProvider)
  {
    [BWPreviewRegistration initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:];
    goto LABEL_10;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPreviewRegistration;
  [(BWPreviewRegistration *)&v3 dealloc];
}

- (void)allocateResourcesAsynchronouslyWithVideoFormat:(id)format
{
  registrationQueue = self->_registrationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = format;
  dispatch_async(registrationQueue, v4);
}

void __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), *(*(a1 + 32) + 32)}];
    if (!v4)
    {
      __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = 0;
  }

  [*(*(a1 + 32) + 16) allocateResourcesWithVideoFormat:*(a1 + 40) metalContext:v4];

  if (*v3 == 1)
  {

    kdebug_trace();
  }
}

- (void)cleanupResources
{
  registrationQueue = self->_registrationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BWPreviewRegistration_cleanupResources__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(registrationQueue, block);
}

- (void)registerWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale isMacroScene:(BOOL)scene macroTransitionType:(int)type completionHandler:(id)handler
{
  sampleBufferOut = 0;
  v18 = 0;
  BWCMSampleBufferCreateCopyIncludingMetadata(camera, &sampleBufferOut);
  BWCMSampleBufferCreateCopyIncludingMetadata(narrowerCamera, &v18);
  registrationQueue = self->_registrationQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __138__BWPreviewRegistration_registerWiderCamera_narrowerCamera_widerToNarrowerCameraScale_isMacroScene_macroTransitionType_completionHandler___block_invoke;
  v15[3] = &unk_1E79905A0;
  v15[6] = sampleBufferOut;
  v15[7] = v18;
  *&v15[8] = scale;
  sceneCopy = scene;
  typeCopy = type;
  v15[4] = self;
  v15[5] = handler;
  dispatch_async(registrationQueue, v15);
}

void __138__BWPreviewRegistration_registerWiderCamera_narrowerCamera_widerToNarrowerCameraScale_isMacroScene_macroTransitionType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    objc_msgSend_registerWiderCamera_narrowerCamera_widerToNarrowerCameraScale_isMacroScene_macroTransitionType_(v5, *(a1 + 64));
    v4 = *(a1 + 32);
  }

  if ((*(v4 + 40) & 1) == 0)
  {
    v6 = [CMGetAttachment(*(a1 + 48) *off_1E798A3C8];
    isEqualToString = objc_msgSend_isEqualToString_(v6);
    if (isEqualToString)
    {
      v8 = 0.05;
    }

    else
    {
      v8 = 0.042;
    }

    if (isEqualToString)
    {
      v9 = 0.05;
    }

    else
    {
      v9 = 0.01;
    }

    v10 = *(a1 + 72);
    if (*(a1 + 76))
    {
      if (!v10)
      {
        v11 = 1.5;
LABEL_18:
        v8 = v8 * v11;
        v9 = v9 * v11;
LABEL_19:
        ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 48));
        Width = CVPixelBufferGetWidth(ImageBuffer);
        v14 = round(v8 * Width);
        v15 = round(v9 * Width);
        v16 = &v24;
        v17 = 3;
        do
        {
          if (*v16 == 1 && (fabs(*(v16 + 1)) > v14 || fabs(*(v16 + 2)) > v15))
          {
            *v16 = 0;
          }

          v16 = (v16 + 24);
          --v17;
        }

        while (v17);
        goto LABEL_25;
      }
    }

    else if (!v10)
    {
      goto LABEL_19;
    }

    v11 = 1.5;
    if (*(*(a1 + 32) + 24) == 1)
    {
      v11 = 2.5;
    }

    goto LABEL_18;
  }

LABEL_25:
  v18 = *(a1 + 48);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    CFRelease(v19);
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22[2] = v26;
    v22[3] = v27;
    v23 = v28;
    v22[0] = v24;
    v22[1] = v25;
    v21(v20, v22);
  }

  objc_autoreleasePoolPop(v2);
}

- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(BWPreviewRegistrationProvider *)self->_registrationProvider computeCameraShiftForWiderCamera:camera narrowerCamera:narrowerCamera widerToNarrowerCameraScale:scale];
  v11 = v10;
  v13 = v12;
  if (*v9 == 1)
  {
    kdebug_trace();
  }

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCameraPortType:(id)type narrowerPixelBufferDimensions:(id)dimensions widerToNarrowerCameraScale:(double)scale
{
  if (objc_opt_respondsToSelector())
  {
    [(BWPreviewRegistrationProvider *)self->_registrationProvider computeApproximateCorrectionForWiderCamera:camera narrowerCameraPortType:*off_1E798A0D8 narrowerPixelBufferDimensions:dimensions widerToNarrowerCameraScale:scale];
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v11;
  result.x = v10;
  return result;
}

@end