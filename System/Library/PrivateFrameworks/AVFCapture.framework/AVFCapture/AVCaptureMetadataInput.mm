@interface AVCaptureMetadataInput
+ (AVCaptureMetadataInput)metadataInputWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock;
- (AVCaptureMetadataInput)initWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock;
- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)metadata error:(NSError *)outError;
- (id)ports;
- (void)dealloc;
@end

@implementation AVCaptureMetadataInput

+ (AVCaptureMetadataInput)metadataInputWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock
{
  v4 = [objc_alloc(objc_opt_class()) initWithFormatDescription:desc clock:clock];

  return v4;
}

- (AVCaptureMetadataInput)initWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock
{
  if (!desc)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_7;
  }

  if (!clock)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_7;
  }

  if (AVCaptureMetadataObjectsOnly())
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E696A790];
LABEL_7:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations(v10, v11))
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return 0;
  }

  v17.receiver = self;
  v17.super_class = AVCaptureMetadataInput;
  initSubclass = [(AVCaptureInput *)&v17 initSubclass];
  if (!initSubclass)
  {
    return initSubclass;
  }

  v14 = objc_alloc_init(AVCaptureMetadataInputInternal);
  initSubclass->_internal = v14;
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = objc_opt_class();
    initSubclass->_internal->sourceID = [v15 initWithFormat:@"<%@ %p>", NSStringFromClass(v16), initSubclass];
    initSubclass->_internal->desc = CFRetain(desc);
    initSubclass->_internal->clock = CFRetain(clock);
    return initSubclass;
  }

  return 0;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    desc = v4->desc;
    if (desc)
    {
      CFRelease(desc);
      v4 = self->_internal;
    }

    clock = v4->clock;
    if (clock)
    {
      CFRelease(clock);
      v4 = self->_internal;
    }

    emptyBoxedMetadata = v4->emptyBoxedMetadata;
    if (emptyBoxedMetadata)
    {
      CFRelease(emptyBoxedMetadata);
      v4 = self->_internal;
    }
  }

  v8.receiver = self;
  v8.super_class = AVCaptureMetadataInput;
  [(AVCaptureInput *)&v8 dealloc];
}

- (id)ports
{
  internal = self->_internal;
  metadataPort = internal->metadataPort;
  if (!metadataPort)
  {
    self->_internal->metadataPort = [AVCaptureInputPort portWithInput:self mediaType:*MEMORY[0x1E69875D0] formatDescription:internal->desc enabled:1 sourceDeviceType:0 sourceDevicePosition:0];
    metadataPort = self->_internal->metadataPort;
  }

  v6 = metadataPort;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
}

- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)metadata error:(NSError *)outError
{
  v58 = 0;
  v59[0] = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  if (!metadata)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v9, v11))
    {
      objc_exception_throw(v9);
    }

    goto LABEL_6;
  }

  v6 = v4;
  v8 = metadata;
  objc_msgSend_timeRange(metadata, a2);
  if ((v53 & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v9, v10))
    {
      objc_exception_throw(v9);
    }

LABEL_6:
    NSLog(&cfstr_SuppressingExc.isa, v9);
    v12 = 0;
    goto LABEL_41;
  }

  items = [(AVTimedMetadataGroup *)v8 items];
  v14 = items;
  if (!items || ![(NSArray *)items count])
  {
    internal = self->_internal;
    emptyBoxedMetadata = internal->emptyBoxedMetadata;
    p_emptyBoxedMetadata = &internal->emptyBoxedMetadata;
    BlockBuffer = emptyBoxedMetadata;
    if (!emptyBoxedMetadata)
    {
      v27 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, p_emptyBoxedMetadata);
      *(v55 + 6) = v27;
      if (v27)
      {
        LODWORD(blockBufferOut) = v27;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut, v4, sampleSizeArray, v35, v37, v38, v39, v40);
        goto LABEL_32;
      }

      dataPointerOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(self->_internal->emptyBoxedMetadata, 0, 0, 0, &dataPointerOut);
      *(v55 + 6) = DataPointer;
      if (DataPointer)
      {
        LODWORD(blockBufferOut) = DataPointer;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut, v4, sampleSizeArray, v35, v37, v38, v39, v40);
        goto LABEL_32;
      }

      *dataPointerOut = 0x8000000;
      BlockBuffer = self->_internal->emptyBoxedMetadata;
    }

LABEL_29:
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    objc_msgSend_timeRange(v8);
    *&sampleTimingArray.duration.value = v44;
    sampleTimingArray.duration.epoch = v45;
    objc_msgSend_timeRange(v8);
    sampleTimingArray.presentationTimeStamp = v43;
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    DataLength = CMBlockBufferGetDataLength(BlockBuffer);
    v29 = CMSampleBufferCreate(*MEMORY[0x1E695E480], BlockBuffer, 1u, 0, 0, self->_internal->desc, 1, 1, &sampleTimingArray, 1, &DataLength, &v58);
    *(v55 + 6) = v29;
    if (v29)
    {
      LODWORD(blockBufferOuta) = v29;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOuta, v6, sampleSizeArraya, v36, v37, v38, v39, v40);
    }

    else
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __57__AVCaptureMetadataInput_appendTimedMetadataGroup_error___block_invoke;
      v41[3] = &unk_1E786ECF8;
      v41[4] = self;
      v41[5] = &v54;
      v41[6] = v58;
      [(AVCaptureInput *)self performFigCaptureSessionOperationSafelyUsingBlock:v41];
      if (*(v55 + 6))
      {
        LODWORD(blockBufferOuta) = *(v55 + 6);
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOuta, v6, sampleSizeArraya, v36, v37, v38, v39, v40);
      }
    }

    goto LABEL_32;
  }

  v15 = FigBoxedMetadataCreateForConstruction();
  v40 = v4;
  *(v55 + 6) = v15;
  if (v15)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v4, sampleSizeArray, v35, v37, v38, v39, v4);
  }

  else
  {
    v38 = v8;
    v39 = outError;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = [(NSArray *)v14 countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v16)
    {
      v17 = *v49;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v48 + 1) + 8 * i);
          [v19 identifier];
          [v19 dataType];
          [v19 locale];
          if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
          {
            value = [v19 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              BoxedMetadataFromFaceObjectAndFormatDescription = AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(value, self->_internal->desc, 0);
              if (BoxedMetadataFromFaceObjectAndFormatDescription)
              {
                *(v55 + 6) = FigBoxedMetadataAppendCFTypedValue();
                CFRelease(BoxedMetadataFromFaceObjectAndFormatDescription);
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                *(v55 + 6) = FigBoxedMetadataAppendCFTypedValue();
              }
            }
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v48 objects:v47 count:16];
      }

      while (v16);
    }

    v22 = FigBoxedMetadataEndConstruction();
    outError = v39;
    v6 = v4;
    v8 = v38;
    *(v55 + 6) = v22;
    if (!v22)
    {
      BlockBuffer = FigBoxedMetadataGetBlockBuffer();
      goto LABEL_29;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v4, sampleSizeArray, v35, v37, v38, v39, v4);
  }

LABEL_32:
  if (outError && *(v55 + 6) && !*outError)
  {
    *outError = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  if (v59[0])
  {
    CFRelease(v59[0]);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  v12 = *(v55 + 6) == 0;
LABEL_41:
  _Block_object_dispose(&v54, 8);
  return v12;
}

uint64_t __57__AVCaptureMetadataInput_appendTimedMetadataGroup_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sourceID];
    v5 = *(v3 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      result = v6(a2, v4, *MEMORY[0x1E698FBC0], v5);
    }

    else
    {
      result = 4294954514;
    }

    *(*(*(v3 + 40) + 8) + 24) = result;
  }

  return result;
}

@end