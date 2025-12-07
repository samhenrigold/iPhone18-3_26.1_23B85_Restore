@interface LPAnimatedImageTranscoder
+ (id)encodeQueue;
- (LPAnimatedImageTranscoder)initWithAnimatedImage:(id)image;
- (void)_transcodeWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)encodeNextFrame;
- (void)encodeUntilNotReadyForMoreMediaData;
- (void)failed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeReadyForDataObserverIfNeeded;
- (void)transcodeWithCompletionHandler:(id)handler;
@end

@implementation LPAnimatedImageTranscoder

- (LPAnimatedImageTranscoder)initWithAnimatedImage:(id)image
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = LPAnimatedImageTranscoder;
  v6 = [(LPAnimatedImageTranscoder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceImage, image);
    v7->_loggingID = ++initWithAnimatedImage__nextLoggingID;
    v8 = v7;
  }

  return v7;
}

+ (id)encodeQueue
{
  if (encodeQueue_onceToken != -1)
  {
    +[LPAnimatedImageTranscoder encodeQueue];
  }

  v3 = encodeQueue_encodeQueue;

  return v3;
}

void __40__LPAnimatedImageTranscoder_encodeQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.AnimatedImageTranscoder", v2);
  v1 = encodeQueue_encodeQueue;
  encodeQueue_encodeQueue = v0;
}

- (void)transcodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[LPAnimatedImageTranscoder encodeQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__LPAnimatedImageTranscoder_transcodeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7A356A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)_transcodeWithCompletionHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  data = [(LPImage *)self->_sourceImage data];
  self->_imageSource = CGImageSourceCreateWithData(data, MEMORY[0x1E695E0F8]);

  Count = CGImageSourceGetCount(self->_imageSource);
  self->_frameCount = Count;
  v9 = LPLogChannelTranscoding(Count, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    frameCount = self->_frameCount;
    data2 = [(LPImage *)self->_sourceImage data];
    *buf = 67109632;
    *&buf[4] = loggingID;
    *&buf[8] = 2048;
    *&buf[10] = frameCount;
    *&buf[18] = 2048;
    *&buf[20] = [data2 length];
    _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: beginning transcoding for image (frameCount=%zu, size=%zd)", buf, 0x1Cu);
  }

  if (self->_frameCount > 1)
  {
    v22 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, 0, 0);
    v23 = MEMORY[0x1E695DFF8];
    v24 = NSTemporaryDirectory();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v27 = [v24 stringByAppendingPathComponent:uUIDString];
    v28 = [v27 stringByAppendingPathExtension:@"mp4"];
    v29 = [v23 fileURLWithPath:v28];
    outputURL = self->_outputURL;
    self->_outputURL = v29;

    v31 = [(__CFDictionary *)v22 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    unsignedLongValue = [v31 unsignedLongValue];

    v33 = [(__CFDictionary *)v22 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    unsignedLongValue2 = [v33 unsignedLongValue];

    if (unsignedLongValue && unsignedLongValue2)
    {
      v37 = objc_alloc(MEMORY[0x1E6987ED8]);
      v38 = [v37 initWithURL:self->_outputURL fileType:*MEMORY[0x1E69874B8] error:0];
      writer = self->_writer;
      self->_writer = v38;

      v40 = delayTimeFromImageProperties(v22);
      v41 = *MEMORY[0x1E6987CB0];
      v78[0] = *MEMORY[0x1E6987CE8];
      v42 = *MEMORY[0x1E6987E08];
      v77[0] = v41;
      v77[1] = v42;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue];
      v44 = unsignedLongValue2;
      v78[1] = v43;
      v77[2] = *MEMORY[0x1E6987D70];
      v45 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue2];
      v78[2] = v45;
      v77[3] = *MEMORY[0x1E6987D30];
      v75 = *MEMORY[0x1E6987C60];
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue * v44 * 32.0 * (1.0 / v40) * 0.0175];
      v76 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v78[3] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4];

      v49 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v48];
      input = self->_input;
      self->_input = v49;

      v51 = *MEMORY[0x1E6966028];
      v73[0] = *MEMORY[0x1E6966130];
      v73[1] = v51;
      v74[0] = &unk_1F2483668;
      v74[1] = MEMORY[0x1E695E118];
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      v53 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:self->_input sourcePixelBufferAttributes:v52];
      adaptor = self->_adaptor;
      self->_adaptor = v53;

      [(AVAssetWriter *)self->_writer addInput:self->_input];
      startWriting = [(AVAssetWriter *)self->_writer startWriting];
      if (startWriting)
      {
        v57 = self->_writer;
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [(AVAssetWriter *)v57 startSessionAtSourceTime:buf];
        assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
        [assetWriterInput addObserver:self forKeyPath:@"readyForMoreMediaData" options:5 context:readyForDataKVOContext];

        self->_hasReadyForDataObserver = 1;
        [(LPAnimatedImageTranscoder *)self encodeUntilNotReadyForMoreMediaData];
      }

      else
      {
        v66 = LPLogChannelTranscoding(startWriting, v56);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v66, v67, v68, v69, v70, v71, v72];
        }

        [(LPAnimatedImageTranscoder *)self failed];
      }
    }

    else
    {
      v59 = LPLogChannelTranscoding(v35, v36);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v59, v60, v61, v62, v63, v64, v65];
      }

      [(LPAnimatedImageTranscoder *)self failed];
    }
  }

  else
  {
    v15 = LPLogChannelTranscoding(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v15, v16, v17, v18, v19, v20, v21];
    }

    [(LPAnimatedImageTranscoder *)self failed];
  }
}

- (void)failed
{
  self->_stopEncoding = 1;
  [(LPAnimatedImageTranscoder *)self removeReadyForDataObserverIfNeeded];
  if (self->_completionHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__LPAnimatedImageTranscoder_failed__block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (readyForDataKVOContext == context)
  {
    v13 = +[LPAnimatedImageTranscoder encodeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__LPAnimatedImageTranscoder_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(v13, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = LPAnimatedImageTranscoder;
    [(LPAnimatedImageTranscoder *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)removeReadyForDataObserverIfNeeded
{
  if (self->_hasReadyForDataObserver)
  {
    assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
    [assetWriterInput removeObserver:self forKeyPath:@"readyForMoreMediaData" context:readyForDataKVOContext];
  }

  self->_hasReadyForDataObserver = 0;
}

- (void)encodeUntilNotReadyForMoreMediaData
{
  while (!self->_stopEncoding)
  {
    assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
    isReadyForMoreMediaData = [assetWriterInput isReadyForMoreMediaData];

    if (!isReadyForMoreMediaData)
    {
      break;
    }

    [(LPAnimatedImageTranscoder *)self encodeNextFrame];
  }
}

- (void)encodeNextFrame
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_1AE886000, v0, v1, "LPAnimatedImageTranscoder<%d>: failed, could not decode frame %zu", v2, v3);
}

void __44__LPAnimatedImageTranscoder_encodeNextFrame__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  CFRelease(*(*(a1 + 32) + 24));
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(LPVideoProperties);
    v3 = [*(*(a1 + 32) + 8) properties];
    v4 = [v3 accessibilityText];
    [(LPVisualMediaProperties *)v2 setAccessibilityText:v4];

    v5 = [*(*(a1 + 32) + 32) _lp_fileSize];
    v7 = v5;
    if (v5 <= 0xA00000)
    {
      v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(a1 + 32) + 32)];
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      [v11 removeItemAtURL:*(*(a1 + 32) + 32) error:0];

      v12 = [[LPVideo alloc] initWithData:v10 MIMEType:@"video/mp4" properties:v2];
      v14 = LPLogChannelTranscoding(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 32) + 92);
        *buf = 67109376;
        v20 = v15;
        v21 = 2048;
        v22 = v7;
        _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: finished transcoding (size=%llu)", buf, 0x12u);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__LPAnimatedImageTranscoder_encodeNextFrame__block_invoke_23;
      v17[3] = &unk_1E7A35478;
      v17[4] = *(a1 + 32);
      v18 = v12;
      v16 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], v17);
    }

    else
    {
      v8 = LPLogChannelTranscoding(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 92);
        *buf = 67109376;
        v20 = v9;
        v21 = 2048;
        v22 = v7;
        _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: failed, output file is too big (size=%llu)", buf, 0x12u);
      }

      [*(a1 + 32) failed];
    }
  }
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LPLogChannelTranscoding(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v5[0] = 67109120;
    v5[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v3, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: explicitly canceled", v5, 8u);
  }

  [(LPAnimatedImageTranscoder *)self failed];
}

- (void)_transcodeWithCompletionHandler:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *(a1 + 92);
  OUTLINED_FUNCTION_3_0(&dword_1AE886000, a2, a3, "LPAnimatedImageTranscoder<%d>: failed, first frame has empty size", a5, a6, a7, a8, v8);
}

- (void)_transcodeWithCompletionHandler:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *(a1 + 92);
  OUTLINED_FUNCTION_3_0(&dword_1AE886000, a2, a3, "LPAnimatedImageTranscoder<%d>: failed, could not start AVAssetWriter", a5, a6, a7, a8, v8);
}

- (void)_transcodeWithCompletionHandler:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *(a1 + 92);
  OUTLINED_FUNCTION_3_0(&dword_1AE886000, a2, a3, "LPAnimatedImageTranscoder<%d>: failed, not enough frames", a5, a6, a7, a8, v8);
}

@end