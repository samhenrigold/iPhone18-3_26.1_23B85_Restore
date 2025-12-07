@interface SFUSecureFlipBookRecording
+ (id)recordingWithOptions:(id)options;
- (BOOL)appendFlipBookFrameFrom:(id)from bounds:(CGRect)bounds lockHeld:(BOOL)held;
- (BOOL)beginCaptureWithOptions:(id)options;
- (BOOL)endCapture;
- (BOOL)startTransitionTo:(id)to;
- (BOOL)updateContentStreamOptions:(id)options;
- (SFUSecureFlipBookRecording)initWithOptions:(id)options;
- (id).cxx_construct;
- (id)generateSecureAsset:(id *)asset;
- (void)dealloc;
- (void)endCapture;
- (void)sanitizeFrames;
- (void)setFallbackIndicatorRect:(CGRect)rect;
- (void)streamCallbackFrom:(id)from with:(id)with;
@end

@implementation SFUSecureFlipBookRecording

+ (id)recordingWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"recordingName"];
  if ([v5 length])
  {
    v6 = [[self alloc] initWithOptions:optionsCopy];
  }

  else
  {
    v7 = os_log_get(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SFUSecureFlipBookRecording recordingWithOptions:];
    }

    v6 = 0;
  }

  return v6;
}

- (SFUSecureFlipBookRecording)initWithOptions:(id)options
{
  optionsCopy = options;
  if (MEMORY[0x26D6A5730]("[SFUSecureFlipBookRecording initWithOptions:]"))
  {
    v5 = [optionsCopy objectForKeyedSubscript:@"recordingName"];
    v6 = *(self + 1);
    *(self + 1) = v5;

    v7 = [optionsCopy objectForKeyedSubscript:@"recordingVerbose"];
    *(self + 300) = v7 != 0;

    v8 = *(MEMORY[0x277CBF398] + 16);
    *(self + 10) = *MEMORY[0x277CBF398];
    *(self + 11) = v8;
    v9 = [optionsCopy objectForKeyedSubscript:@"fallbackIndicatorFrame"];
    v10 = v9;
    if (v9)
    {
      [v9 getValue:location size:32];
      v11 = v42;
      *(self + 10) = *location;
      *(self + 11) = v11;
    }

    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    [mainDisplay bounds];
    v14 = v13;
    v16 = v15;
    v17 = [optionsCopy objectForKeyedSubscript:@"recordingExtent"];
    v18 = v17;
    if (v17)
    {
      [v17 getValue:location size:16];
      v14 = location[0];
      v16 = location[1];
    }

    v19 = [optionsCopy objectForKeyedSubscript:@"queueDepth"];
    v20 = v19;
    if (v19)
    {
      unsignedIntValue = [v19 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 6;
    }

    displayId = [mainDisplay displayId];
    v40.receiver = self;
    v40.super_class = SFUSecureFlipBookRecording;
    self = [(SFUSecureFlipBookRecording *)&v40 init];
    if (self)
    {
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v25 = dispatch_queue_create("FlipBookRecorderStreamQueue", v24);
      v26 = *(self + 5);
      *(self + 5) = v25;

      v27 = dispatch_queue_create("FlipBookRecorderCopyQueue", v24);
      v28 = *(self + 6);
      *(self + 6) = v27;

      v29 = objc_opt_new();
      [v29 setPixelFormat:1111970369];
      [v29 setFrameSize:{*&v14, *&v16}];
      [v29 setQueueDepth:unsignedIntValue];
      [v29 setTargetDisplayId:displayId];
      [v29 setMinimumFrameTime:0.00833333333];
      [mainDisplay bounds];
      [v29 setSourceRect:?];
      [mainDisplay bounds];
      [v29 setDestinationRect:?];
      [v29 setAlwaysScaleToFit:1];
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__SFUSecureFlipBookRecording_initWithOptions___block_invoke;
      aBlock[3] = &unk_279D42558;
      objc_copyWeak(&v39, location);
      v30 = _Block_copy(aBlock);
      v31 = [MEMORY[0x277CD9E28] contentStreamWithOptions:v29 queue:*(self + 5) handler:v30 error:0];
      if (v31)
      {
        v32 = [MEMORY[0x277CD9E48] displayLinkWithDisplay:mainDisplay target:objc_opt_class() selector:sel_linkCallback_];
        v33 = *(self + 4);
        *(self + 4) = v32;

        v34 = *(self + 4);
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [v34 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

        v43 = CAFrameRateRangeMake(120.0, 120.0, 120.0);
        [*(self + 4) setPreferredFrameRateRange:{*&v43.minimum, *&v43.maximum, *&v43.preferred}];
        [*(self + 4) setHighFrameRateReason:3211265];
        objc_storeStrong(self + 2, v29);
        objc_storeStrong(self + 3, v31);
        selfCopy = self;
      }

      else
      {
        v36 = os_log_get(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SFUSecureFlipBookRecording initWithOptions:];
        }

        selfCopy = 0;
      }

      objc_destroyWeak(&v39);
      objc_destroyWeak(location);
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __46__SFUSecureFlipBookRecording_initWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained streamCallbackFrom:v6 with:v5];
}

- (void)dealloc
{
  std::mutex::lock(self + 3);
  if (*(self + 36))
  {
    __assert_rtn("[SFUSecureFlipBookRecording dealloc]", "SFUSecureFlipBookRecorder.mm", 424, "!_current_capture");
  }

  [*(self + 3) stop:0];
  [*(self + 4) invalidate];
  std::mutex::unlock(self + 3);
  v3.receiver = self;
  v3.super_class = SFUSecureFlipBookRecording;
  [(SFUSecureFlipBookRecording *)&v3 dealloc];
}

- (BOOL)updateContentStreamOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"captureContextList"];
  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
    v7 = [*(self + 7) isEqualToSet:v6];
    if ((v7 & 1) == 0)
    {
      [*(self + 3) setIncludedContexts:v6 error:0];
      v8 = *(self + 7);
      *(self + 7) = v6;
      v6 = v8;
    }

    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"captureLayerBounds"];
  RenderId = CALayerGetRenderId();
  if ([*(self + 2) trackedLayer] != RenderId)
  {
    [*(self + 2) setTrackedLayer:RenderId];
    v9 = 1;
  }

  return v9;
}

- (BOOL)beginCaptureWithOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"captureFromState"];
  std::string::basic_string[abi:ne200100]<0>(&__str, [v5 UTF8String]);

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"captureFlags"];
    [v8 unsignedIntValue];

    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
    v13 = [optionsCopy objectForKeyedSubscript:@"captureBounds"];
    v14 = v13;
    x = v9;
    y = v10;
    width = v11;
    height = v12;
    if (v13)
    {
      [v13 getValue:&buf size:32];
      v34 = CGRectIntegral(buf);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }

    v19 = [optionsCopy objectForKeyedSubscript:@"captureLayerBounds"];
    if (CALayerGetRenderId() || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, v20 = validate_capture_bounds(v35), (v20 & 1) != 0))
    {
      if (!-[SFUSecureFlipBookRecording updateContentStreamOptions:](self, "updateContentStreamOptions:", optionsCopy) || (dispatch_sync(*(self + 5), &__block_literal_global), v21 = [*(self + 3) updateOptions:*(self + 2) error:0], (v21 & 1) != 0))
      {
        std::mutex::lock(self + 3);
        if (*(self + 36))
        {
          v23 = os_log_get(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        else if ([*(self + 7) count])
        {
          v24 = [*(self + 3) start:0];
          if (v24)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v25 = [optionsCopy objectForKeyedSubscript:@"captureToState"];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
              std::string::__assign_external(&__p, [v26 UTF8String]);
            }

            operator new();
          }

          v23 = os_log_get(v24);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        else
        {
          v23 = os_log_get(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        std::mutex::unlock(self + 3);
        goto LABEL_27;
      }

      v28 = os_log_get(v21);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording beginCaptureWithOptions:];
      }
    }

    else
    {
      v28 = os_log_get(v20);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording beginCaptureWithOptions:];
      }
    }

    goto LABEL_27;
  }

  v19 = os_log_get(v6);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SFUSecureFlipBookRecording beginCaptureWithOptions:];
  }

LABEL_27:

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 0;
}

- (BOOL)startTransitionTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  std::mutex::lock(self + 3);
  v6 = *(self + 36);
  if (!v6)
  {
LABEL_6:
    std::mutex::unlock(self + 3);
    v8 = 0;
    goto LABEL_26;
  }

  if (*(v6 + 168) == 1)
  {
    v7 = os_log_get(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SFUSecureFlipBookRecording startTransitionTo:];
    }

    goto LABEL_6;
  }

  v9 = *(v6 + 64);
  v10 = *(v6 + 72);
  if (v10 == v9)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    v6 = *(self + 36);
  }

  *(v6 + 168) = 1;
  std::string::__assign_external((*(self + 36) + 40), [toCopy UTF8String]);
  v12 = CACurrentMediaTime();
  v13 = ((v10 - v9) >> 1) - 1;
  v14 = *(self + 36);
  *v14 = v12;
  if (v10 == v9)
  {
    v13 = 0;
  }

  *(v14 + 164) = v13;
  if (*(self + 300))
  {
    v15 = os_log_get(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(self + 36);
      v17 = v16 + 2;
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }

      v18 = v16 + 5;
      if (*(v16 + 63) < 0)
      {
        v18 = *v18;
      }

      v19 = *v16;
      v22 = 136315650;
      v23 = v17;
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      _os_log_impl(&dword_26C632000, v15, OS_LOG_TYPE_DEFAULT, "Begin transition from %s -> %s for target time %f", &v22, 0x20u);
    }
  }

  if (v9 != v10)
  {
    v20 = v9;
    do
    {
      FlipBookFramePool::free(self + 8, *v20++);
    }

    while (v20 != v10);
  }

  std::mutex::unlock(self + 3);
  if (v9)
  {
    operator delete(v9);
  }

  v8 = 1;
LABEL_26:

  return v8;
}

- (BOOL)appendFlipBookFrameFrom:(id)from bounds:(CGRect)bounds lockHeld:(BOOL)held
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v60 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  [fromCopy surface];
  v11 = CGImageCreateFromIOSurface();
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v12 = CGImageCreateWithImageInRect(v11, v61);
  BytesPerRow = CGImageGetBytesPerRow(v12);
  v48 = CGImageGetHeight(v12);
  v14 = CGImageGetWidth(v12);
  v15 = CGImageGetHeight(v12);
  v16 = CGImageGetBytesPerRow(v12);
  CGImageGetBitsPerComponent(v12);
  std::vector<unsigned char>::vector[abi:ne200100](&src_buffer, v16 * v15);
  v47 = BytesPerRow;
  std::vector<unsigned char>::vector[abi:ne200100](&dst_buffer, v16 * v15);
  if (v16 * v15)
  {
    if (CGImageGetData() != v15)
    {
      __assert_rtn("compress_cgimage", "SFUSecureFlipBookRecorder.mm", 615, "sub_row == height");
    }

    v17 = rgba_swizzle_from_cgimage(v12);
    v18 = dst_buffer;
    v19 = src_buffer;
    if (v15)
    {
      v20 = 0;
      v21 = HIBYTE(v17);
      v22 = v17;
      v23 = BYTE1(v17);
      v24 = BYTE2(v17);
      v25 = 4 * v14;
      v26 = &dst_buffer[v24];
      v27 = &dst_buffer[v23];
      v28 = &dst_buffer[v22];
      v29 = &dst_buffer[v21];
      do
      {
        if (v25)
        {
          for (i = 0; i < v25; i += 4)
          {
            v31 = &v19[i];
            *v31 = v26[i];
            v31[1] = v27[i];
            v31[2] = v28[i];
            v31[3] = v29[i];
          }
        }

        ++v20;
        v26 += v16;
        v27 += v16;
        v28 += v16;
        v19 += v16;
        v29 += v16;
      }

      while (v20 != v15);
      v18 = dst_buffer;
      v19 = src_buffer;
    }

    v32 = compression_encode_buffer(v18, v16 * v15, v19, v16 * v15, 0, COMPRESSION_LZFSE);
    v33 = v32;
    if (!v32)
    {
      v34 = os_log_get(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v55 = v14;
        v56 = 1024;
        v57 = v15;
        v58 = 1024;
        v59 = v16;
        _os_log_error_impl(&dword_26C632000, v34, OS_LOG_TYPE_ERROR, "Failed to compress image of size %ux%u Bpr:%u", buf, 0x14u);
      }
    }

    if (v33 <= v51 - dst_buffer)
    {
      if (v33 < v51 - dst_buffer)
      {
        v51 = &dst_buffer[v33];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&dst_buffer, v33 - (v51 - dst_buffer));
    }
  }

  if (src_buffer)
  {
    v53 = src_buffer;
    operator delete(src_buffer);
  }

  CGImageRelease(v11);
  CGImageRelease(v12);
  v35 = dst_buffer;
  if (dst_buffer == v51)
  {
    v37 = 0;
    if (!dst_buffer)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  src_buffer = self + 192;
  LOBYTE(v53) = 0;
  if (!held)
  {
    std::unique_lock<std::mutex>::lock[abi:ne200100](&src_buffer);
  }

  v36 = *(self + 36);
  v37 = v36 != 0;
  if (v36)
  {
    *buf = FlipBookFramePool::alloc(self + 8, v51 - dst_buffer);
    v38 = *(self + 32) + 96 * *buf;
    if ((*(v38 - 96) & 1) == 0)
    {
      __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
    }

    memcpy(*(v38 - 24), dst_buffer, v51 - dst_buffer);
    *(v38 - 88) = *(*(self + 36) + 88);
    *(v38 - 72) = width;
    *(v38 - 64) = height;
    v39 = *(self + 36);
    *(v38 - 12) = (x - *(v39 + 88));
    *(v38 - 10) = (y - *(v39 + 96));
    *(v38 - 32) = v47;
    *(v38 - 40) = v48 * v47;
    *(v38 - 8) = *(v39 + 160);
    updateTime = [fromCopy updateTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording appendFlipBookFrameFrom:bounds:lockHeld:];
    }

    *(v38 - 56) = *&host_time_to_time(unsigned long long)::time_scale * updateTime;
    displayTime = [fromCopy displayTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording appendFlipBookFrameFrom:bounds:lockHeld:];
    }

    *(v38 - 48) = *&host_time_to_time(unsigned long long)::time_scale * displayTime;
    v42 = *(self + 74) + 1;
    *(self + 74) = v42;
    *(v38 - 16) = v42;
    *(self + 38) += *(v38 - 36);
    v43 = *(self + 36);
    v44 = *(v43 + 64);
    v45 = *(v43 + 72);
    std::vector<FlipBookFrameHandle>::push_back[abi:ne200100]((v43 + 64), buf);
    if (v44 == v45)
    {
      std::condition_variable::notify_all((*(self + 36) + 176));
    }
  }

  if (v53 == 1)
  {
    std::mutex::unlock(src_buffer);
  }

  v35 = dst_buffer;
  if (dst_buffer)
  {
LABEL_34:
    v51 = v35;
    operator delete(v35);
  }

LABEL_35:

  return v37;
}

- (void)streamCallbackFrom:(id)from with:(id)with
{
  v78 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  withCopy = with;
  if ([withCopy surface])
  {
    updateTime = [withCopy updateTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording streamCallbackFrom:with:];
    }

    v9 = *&host_time_to_time(unsigned long long)::time_scale;
    std::mutex::lock(self + 3);
    v11 = *(self + 36);
    if (v11)
    {
      v13 = *(v11 + 64);
      v12 = *(v11 + 72);
      if (v13 == v12)
      {
        v15 = 0.0;
      }

      else
      {
        v14 = *(self + 32) + 96 * *(v12 - 2);
        if ((*(v14 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v15 = *(v14 - 56);
      }

      v18 = v9 * updateTime;
      if (withCopy)
      {
        if (*(self + 300))
        {
          surface = [withCopy surface];
          if (surface)
          {
            v19 = os_log_get(surface);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(self + 36);
              v22 = *(v20 + 64);
              v21 = *(v20 + 72);
              displayTime = [withCopy displayTime];
              if (host_time_to_time(unsigned long long)::once[0] != -1)
              {
                [SFUSecureFlipBookRecording streamCallbackFrom:with:];
              }

              v24 = *(self + 74);
              *buf = 67110400;
              v67 = (v21 - v22) >> 1;
              v68 = 2048;
              v69 = v18;
              v70 = 2048;
              v71 = v18 - v15;
              v72 = 2048;
              v73 = *&host_time_to_time(unsigned long long)::time_scale * displayTime;
              v74 = 1024;
              v75 = v24 + 1;
              v76 = 1024;
              status = [withCopy status];
              _os_log_impl(&dword_26C632000, v19, OS_LOG_TYPE_DEFAULT, "Got frame %u for t=%f - delta t=%f  display t=%f (potential render_id %u) - status %u", buf, 0x32u);
            }

            v25 = *(self + 39);
            v26 = *(self + 40);
            surface = [withCopy surfaceId];
            if (v25 != v26)
            {
              while (*v25 != surface)
              {
                if (++v25 == v26)
                {
                  v25 = v26;
                  break;
                }
              }
            }

            if (v25 == *(self + 40))
            {
              surface = [withCopy surfaceId];
              v28 = *(self + 40);
              v27 = *(self + 41);
              if (v28 >= v27)
              {
                v30 = *(self + 39);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
                v36 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v35)
                {
                  v36 = v33;
                }

                if (v36)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(self + 312, v36);
                }

                v37 = (v28 - v30) >> 2;
                v38 = (4 * v32);
                v39 = (4 * v32 - 4 * v37);
                *v38 = surface;
                v29 = v38 + 1;
                memcpy(v39, v30, v31);
                surface = *(self + 39);
                *(self + 39) = v39;
                *(self + 40) = v29;
                *(self + 41) = 0;
                if (surface)
                {
                  operator delete(surface);
                }
              }

              else
              {
                *v28 = surface;
                v29 = v28 + 4;
              }

              *(self + 40) = v29;
            }
          }
        }
      }

      v40 = *(self + 36);
      v41 = *(v40 + 8);
      v42 = v41 <= 0.0 || v18 <= v41;
      if (v42 || *(v40 + 64) == *(v40 + 72))
      {
        if (CGRectIsNull(*(v40 + 88)))
        {
          [withCopy contentRect];
          if (!CGRectIsEmpty(v79))
          {
            [withCopy contentRect];
            v44 = *(self + 36);
            v44[11] = v45;
            v44[12] = v46;
            v44[13] = v47;
            v44[14] = v48;
          }
        }

        v49 = *(self + 36);
        if (v49[19])
        {
          [withCopy contentRect];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
        }

        else
        {
          v51 = v49[11];
          v53 = v49[12];
          v55 = v49[13];
          v57 = v49[14];
        }

        v58 = *(self + 6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__SFUSecureFlipBookRecording_streamCallbackFrom_with___block_invoke;
        block[3] = &unk_279D425A0;
        block[4] = self;
        v60 = withCopy;
        v62 = v51;
        v63 = v53;
        v64 = v55;
        v65 = v57;
        v61 = fromCopy;
        dispatch_async(v58, block);
      }

      else
      {
        if (*(self + 300) == 1)
        {
          v43 = os_log_get(surface);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording streamCallbackFrom:with:];
          }
        }

        [*(self + 3) releaseSurfaceWithId:objc_msgSend(withCopy error:{"surfaceId"), 0}];
      }
    }

    else
    {
      if (*(self + 300) == 1)
      {
        v17 = os_log_get(surface);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26C632000, v17, OS_LOG_TYPE_DEFAULT, "frame received after capture scope", buf, 2u);
        }
      }

      [fromCopy releaseSurfaceWithId:objc_msgSend(withCopy error:{"surfaceId"), 0}];
    }

    std::mutex::unlock(self + 3);
  }

  else
  {
    v16 = os_log_get(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      -[SFUSecureFlipBookRecording streamCallbackFrom:with:].cold.4(buf, [withCopy status], v16);
    }
  }
}

uint64_t __54__SFUSecureFlipBookRecording_streamCallbackFrom_with___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFlipBookFrameFrom:*(a1 + 40) bounds:0 lockHeld:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) surfaceId];

  return [v2 releaseSurfaceWithId:v3 error:0];
}

- (void)sanitizeFrames
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(self + 36);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3 != *(v2 + 72))
    {
      selfCopy = self;
      v5 = 0;
      v6 = 0;
      v46 = 0uLL;
      v47 = 0;
      do
      {
        v7 = *(selfCopy + 32) + 96 * *(v3 + 2 * v6);
        if ((*(v7 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v8 = *(v7 - 56);
        v9 = *(selfCopy + 36);
        if (v8 >= *v9 && v8 <= v9[1])
        {
          self = validate_capture_bounds(*(v7 - 88));
          v3 = *(v2 + 64);
          if (self)
          {
            std::vector<FlipBookFrameHandle>::push_back[abi:ne200100](&v46, (v3 + v5));
            v3 = *(v2 + 64);
          }
        }

        ++v6;
        v10 = *(v2 + 72);
        v5 += 2;
      }

      while (v6 < (v10 - v3) >> 1);
      v11 = v46;
      if (v46 == *(&v46 + 1))
      {
        if (v10 == v3)
        {
          v17 = 0;
          v19 = INFINITY;
        }

        else
        {
          LODWORD(v17) = 0;
          v18 = 0;
          v19 = INFINITY;
          do
          {
            v20 = *(selfCopy + 32) + 96 * *(v3 + 2 * v18);
            if ((*(v20 - 96) & 1) == 0)
            {
              __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
            }

            v21 = vabdd_f64(*(v20 - 56), **(selfCopy + 36));
            if (v21 >= v19)
            {
              v17 = v17;
            }

            else
            {
              v19 = v21;
              v17 = v18;
            }

            ++v18;
          }

          while ((v10 - v3) >> 1 != v18);
        }

        v22 = os_log_get(self);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(selfCopy + 36);
          v24 = (v23 + 16);
          if (*(v23 + 39) < 0)
          {
            v24 = *v24;
          }

          v25 = (v23 + 40);
          if (*(v23 + 63) < 0)
          {
            v25 = *v25;
          }

          *buf = 136315650;
          v49 = v24;
          v50 = 2080;
          v51 = v25;
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&dword_26C632000, v22, OS_LOG_TYPE_DEFAULT, "Sanitizing frames lead to empty capture for %s -> %s. Assuming single frame state with frame delta_t = %g", buf, 0x20u);
        }

        std::vector<FlipBookFrameHandle>::push_back[abi:ne200100](&v46, (*(v2 + 64) + 2 * v17));
        if ((validate_capture_bounds(*(*(selfCopy + 36) + 88)) & 1) == 0)
        {
          v26 = *(selfCopy + 32) + 96 * *(*(v2 + 64) + 2 * v17);
          if ((*(v26 - 96) & 1) == 0)
          {
            __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
          }

          v27 = validate_capture_bounds(*(v26 - 88));
          v28 = *(selfCopy + 36);
          if (v27)
          {
            v29 = *(v26 - 88);
            *(v28 + 104) = *(v26 - 72);
            *(v28 + 88) = v29;
            v30 = os_log_get(v27);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = *(v26 - 88);
              v32 = *(v26 - 80);
              v33 = *(v26 - 72);
              v34 = *(v26 - 64);
              *buf = 134218752;
              v49 = v31;
              v50 = 2048;
              v51 = v32;
              v52 = 2048;
              v53 = v33;
              v54 = 2048;
              v55 = v34;
              _os_log_impl(&dword_26C632000, v30, OS_LOG_TYPE_DEFAULT, "Using capture bounds infered from guessed frame [%g %g %g %g]", buf, 0x2Au);
            }
          }

          else
          {
            *(v28 + 88) = *(v28 + 120);
            *(v28 + 104) = *(v28 + 136);
            v30 = os_log_get(v27);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *(v28 + 120);
              v36 = *(v28 + 128);
              v37 = *(v28 + 136);
              v38 = *(v28 + 144);
              *buf = 134218752;
              v49 = v35;
              v50 = 2048;
              v51 = v36;
              v52 = 2048;
              v53 = v37;
              v54 = 2048;
              v55 = v38;
              _os_log_impl(&dword_26C632000, v30, OS_LOG_TYPE_DEFAULT, "Invalid capture bounds from frame, falling back to explicit capture bounds [%g %g %g %g]", buf, 0x2Au);
            }
          }
        }
      }

      else if (*(&v46 + 1) - v46 >= 3uLL)
      {
        v12 = *(selfCopy + 32);
        v13 = v12 + 96 * *v46;
        if ((*(v13 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v14 = (v46 + 2);
        v15 = v12 + 96 * *(v46 + 2);
        if ((*(v15 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        if (*(v15 - 56) - *(v13 - 56) < 0.004)
        {
          v16 = *(&v46 + 1) - v14;
          if (*(&v46 + 1) != v14)
          {
            memmove(v46, v14, *(&v46 + 1) - v14);
          }

          *(&v46 + 1) = v11 + v16;
        }
      }

      v39 = *(v2 + 64);
      v40 = *(v2 + 72);
      while (v39 != v40)
      {
        v41 = *v39;
        v42 = v46;
        if (v46 != *(&v46 + 1))
        {
          while (*v42 != v41)
          {
            if (++v42 == *(&v46 + 1))
            {
              goto LABEL_49;
            }
          }
        }

        if (v42 == *(&v46 + 1))
        {
LABEL_49:
          FlipBookFramePool::free(selfCopy + 8, v41);
        }

        ++v39;
      }

      v43 = *(selfCopy + 36);
      v44 = *(v43 + 64);
      *(v43 + 64) = v46;
      v45 = *(v43 + 80);
      *(v43 + 80) = v47;
      *&v46 = v44;
      v47 = v45;
      if (v44)
      {
        *(&v46 + 1) = v44;
        operator delete(v44);
      }
    }
  }
}

- (BOOL)endCapture
{
  v65 = *MEMORY[0x277D85DE8];
  __lk.__m_ = (self + 192);
  __lk.__owns_ = 1;
  std::mutex::lock(self + 3);
  v3 = *(self + 36);
  if (!v3)
  {
LABEL_78:
    std::mutex::unlock(__lk.__m_);
    return v3 != 0;
  }

  v5 = CACurrentMediaTime();
  v6 = *(self + 36);
  *(v6 + 8) = v5;
  if ((*(v6 + 63) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 48))
    {
      goto LABEL_7;
    }
  }

  else if (*(v6 + 63))
  {
    goto LABEL_7;
  }

  v4 = std::string::operator=((v6 + 40), (v6 + 16));
  v6 = *(self + 36);
LABEL_7:
  v7 = v6;
  if (*(self + 300) == 1)
  {
    v8 = os_log_get(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(self + 36);
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }

      v11 = (v9 + 40);
      if (*(v9 + 63) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&dword_26C632000, v8, OS_LOG_TYPE_DEFAULT, "Ending Capture for %s -> %s", buf, 0x16u);
    }

    v7 = *(self + 36);
  }

  v12 = (v6 + 16);
  v13 = (v6 + 40);
  if (*(v7 + 64) == *(v7 + 72))
  {
    v56 = (v6 + 16);
    v57 = (v6 + 40);
    v58 = v3;
    while (1)
    {
      v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v16.__d_.__rep_ = 5000000000;
      if (v15.__d_.__rep_)
      {
        if (v15.__d_.__rep_ >= 1)
        {
          if (v15.__d_.__rep_ <= 0x20C49BA5E353F7)
          {
LABEL_22:
            if (v15.__d_.__rep_ < 0x20C49BA59708B8)
            {
              v16.__d_.__rep_ = 1000 * v15.__d_.__rep_ + 5000000000;
              goto LABEL_25;
            }
          }

          v16.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_25;
        }

        v16.__d_.__rep_ = 0x800000012A05F200;
        if (v15.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          goto LABEL_22;
        }
      }

LABEL_25:
      std::condition_variable::__do_timed_wait((v7 + 176), &__lk, v16);
      v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v18 = v17.__d_.__rep_ - v14.__d_.__rep_;
      v7 = *(self + 36);
      if (*(v7 + 64) != *(v7 + 72) || v18 > 0x12A05F1FFLL)
      {
        v13 = (v6 + 40);
        v12 = (v6 + 16);
        if (v18 > 0x12A05F1FFLL)
        {
          v20 = os_log_get(v17.__d_.__rep_);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v6 + 16;
            if (*(v6 + 39) < 0)
            {
              v21 = *v56;
            }

            v22 = v6 + 40;
            if (*(v6 + 63) < 0)
            {
              v22 = *v57;
            }

            *buf = 136315394;
            *&buf[4] = v21;
            *&buf[12] = 2080;
            *&buf[14] = v22;
            _os_log_impl(&dword_26C632000, v20, OS_LOG_TYPE_DEFAULT, "Timed out waiting to receive frames for %s -> %s", buf, 0x16u);
          }
        }

        break;
      }
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    dispatch_sync(*(self + 6), &__block_literal_global_77);
    std::unique_lock<std::mutex>::lock[abi:ne200100](&__lk);
    [(SFUSecureFlipBookRecording *)self sanitizeFrames];
    v23 = *(self + 36);
    v25 = *(v23 + 64);
    v24 = *(v23 + 72);
    v26 = validate_capture_bounds(*(v23 + 88));
    if (v26)
    {
      if (v24 != v25)
      {
        *buf = v12;
        v27 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(self + 8, v12, &std::piecewise_construct, buf, &v60);
        *buf = v13;
        v28 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v27 + 5, v13, &std::piecewise_construct, buf, &v60);
        v29 = *(v6 + 39);
        if (v29 >= 0)
        {
          v30 = *(v6 + 39);
        }

        else
        {
          v30 = *(v6 + 24);
        }

        v31 = *(v6 + 63);
        v32 = v31;
        if ((v31 & 0x80u) != 0)
        {
          v31 = *(v6 + 48);
        }

        if (v30 == v31)
        {
          v33 = v29 >= 0 ? v12 : *v12;
          v34 = v32 >= 0 ? v13 : *v13;
          v35 = memcmp(v33, v34, v30);
          if (!v35 && v28[5] != v28[6])
          {
            v36 = os_log_get(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [(SFUSecureFlipBookRecording *)(v6 + 39) endCapture];
            }
          }
        }

        v37 = *(self + 36);
        v38 = *(v37 + 164);
        if (v38 >= 0x10000)
        {
          v39 = *(v6 + 39);
          if (v39 >= 0)
          {
            v40 = *(v6 + 39);
          }

          else
          {
            v40 = *(v6 + 24);
          }

          v41 = *(v6 + 63);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v6 + 48);
          }

          if (v40 == v41 && (v39 >= 0 ? (v43 = v12) : (v43 = *v12), v42 >= 0 ? (v44 = v13) : (v44 = *v13), !memcmp(v43, v44, v40)))
          {
            v38 = ((*(v37 + 72) - *(v37 + 64)) >> 1) - 1;
          }

          else
          {
            v38 = -2;
          }

          *(v37 + 164) = v38;
        }

        *buf = v38;
        v45 = *(v37 + 64);
        v46 = *(v37 + 72);
        *&buf[8] = v45;
        *&buf[16] = v46;
        v47 = *(v37 + 80);
        v62 = v47;
        *(v37 + 72) = 0;
        *(v37 + 80) = 0;
        *(v37 + 64) = 0;
        v48 = v28[6];
        if (v48 >= v28[7])
        {
          v51 = std::vector<FlipBookTransitionPoint>::__emplace_back_slow_path<FlipBookTransitionPoint>(v28 + 5, buf);
          v52 = *&buf[8];
          v28[6] = v51;
          if (v52)
          {
            *&buf[16] = v52;
            operator delete(v52);
          }
        }

        else
        {
          *v48 = v38;
          *(v48 + 8) = v45;
          *(v48 + 16) = v46;
          *(v48 + 24) = v47;
          v28[6] = v48 + 32;
        }
      }
    }

    else
    {
      v49 = os_log_get(v26);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v53 = *(self + 36);
        if (*(v6 + 39) < 0)
        {
          v12 = *v12;
        }

        v55 = *(v53 + 104);
        v54 = *(v53 + 112);
        if (*(v6 + 63) < 0)
        {
          v13 = *v13;
        }

        *buf = 134218754;
        *&buf[4] = v55;
        *&buf[12] = 2048;
        *&buf[14] = v54;
        *&buf[22] = 2080;
        v62 = v12;
        v63 = 2080;
        v64 = v13;
        _os_log_error_impl(&dword_26C632000, v49, OS_LOG_TYPE_ERROR, "Invalid capture size %gx%g for %s->%s", buf, 0x2Au);
      }
    }

    [*(self + 3) stop:{0, v56, v57, v58}];
    std::unique_ptr<CurrentCapture>::reset[abi:ne200100](self + 36, 0);
    ++*(self + 74);
    if (!__lk.__owns_)
    {
      return v3 != 0;
    }

    goto LABEL_78;
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
  return result;
}

- (void)setFallbackIndicatorRect:(CGRect)rect
{
  *(self + 20) = *&rect.origin.x;
  *(self + 21) = *&rect.origin.y;
  *(self + 22) = *&rect.size.width;
  *(self + 23) = *&rect.size.height;
}

- (id)generateSecureAsset:(id *)asset
{
  v317 = *MEMORY[0x277D85DE8];
  if (*(self + 300) == 1)
  {
    v3 = os_log_get(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [*(self + 1) UTF8String];
      v5 = *(self + 38);
      v6 = (*(self + 40) - *(self + 39)) >> 2;
      buf.A = 136315650;
      *&buf.B = uTF8String;
      LOWORD(buf.D) = 2048;
      *(&buf.D + 2) = v6;
      HIWORD(buf.Nh) = 2048;
      *buf.data = v5;
      _os_log_impl(&dword_26C632000, v3, OS_LOG_TYPE_DEFAULT, "Exporting Secure Asset '%s'\n  Max Queue Depth used: %zu\n  Max In Flight Footprint: %zu", &buf, 0x20u);
    }
  }

  dispatch_sync(*(self + 6), &__block_literal_global_79);
  std::mutex::lock(self + 3);
  if (*(self + 36))
  {
    v7 = 0;
    goto LABEL_7;
  }

  v9 = *(self + 300);
  memset(&v291, 0, sizeof(v291));
  std::vector<std::string>::reserve(&v291, *(self + 11));
  v287 = 0u;
  *v288 = 0u;
  *&v288[16] = 1065353216;
  v11 = *(self + 10);
  if (v11)
  {
    do
    {
      while (std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(v11 + 5, v11 + 2))
      {
        v10 = std::vector<std::string>::push_back[abi:ne200100](&v291, v11 + 1);
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>::pair[abi:ne200100]<std::string const&,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>,0>(&buf, v11 + 1, v11 + 5);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>(&v287, &buf, &buf);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(buf.data);
      if (SHIBYTE(buf.Nh) < 0)
      {
        operator delete(*&buf.A);
      }

      v12 = *v11;
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(self + 8, v11, &buf);
      v10 = std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>>>>::~unique_ptr[abi:ne200100](&buf);
      v11 = v12;
    }

    while (v12);
  }

LABEL_17:
  if (v9)
  {
    v13 = os_log_get(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      _os_log_impl(&dword_26C632000, v13, OS_LOG_TYPE_DEFAULT, "Final FlipBook has following valid states:\n", &buf, 2u);
    }

    begin = v291.__begin_;
    for (i = v291.__end_; begin != i; ++begin)
    {
      v17 = os_log_get(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = begin;
        if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
        {
          v18 = begin->__r_.__value_.__r.__words[0];
        }

        buf.A = 136315138;
        *&buf.B = v18;
        _os_log_impl(&dword_26C632000, v17, OS_LOG_TYPE_DEFAULT, "  %s\n", &buf, 0xCu);
      }
    }
  }

  memset(&buf, 0, 32);
  buf.data[2] = 1065353216;
  *v311 = 0;
  v313 = 0;
  v314 = 0;
  v312 = 0;
  *__p = 0u;
  v309 = 0u;
  v310 = 1065353216;
  v19 = *v288;
  if (*v288)
  {
    do
    {
      *v306 = v19 + 2;
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&buf, v19 + 2, &std::piecewise_construct, v306, v315);
      resolve_transition(v19 + 2, self + 8, &v287, v311, v20 + 5, __p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(__p);
      v19 = *v19;
    }

    while (v19);
  }

  for (j = *(self + 10); j; j = *j)
  {
    v22 = j[7];
    while (v22)
    {
      v23 = v22 + 2;
      v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(&buf, v22 + 2);
      if (v24)
      {
        std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>::unordered_map(v306, (v24 + 5));
        v25 = v307;
        if (v307)
        {
          do
          {
            v26 = v25[5];
            if (v25[6] - v26 != 32)
            {
              __assert_rtn("resolve_states", "SFUSecureFlipBookRecorder.mm", 1171, "tps_it->second.size() == 1");
            }

            v27 = v22[5];
            if ((v22[6] - v27) >= 0x21)
            {
              v28 = os_log_get(v26);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = v22 + 2;
                if (*(v22 + 39) < 0)
                {
                  v29 = *v23;
                }

                *v315 = 136315138;
                v316 = v29;
                _os_log_error_impl(&dword_26C632000, v28, OS_LOG_TYPE_ERROR, "Transient state %s has multiple transition point. Only the first one will be considered", v315, 0xCu);
              }

              v26 = v25[5];
              v27 = v22[5];
            }

            std::vector<FlipBookFrameHandle>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FlipBookFrameHandle*>,std::__wrap_iter<FlipBookFrameHandle*>>((v26 + 8), *(v26 + 8), *(v27 + 8), *(v27 + 16), (*(v27 + 16) - *(v27 + 8)) >> 1);
            v25 = *v25;
          }

          while (v25);
          for (k = v307; k; k = *k)
          {
            std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<FlipBookTransitionPoint>> const&>(j + 5, k + 2, (k + 2));
          }
        }

        v31 = *v22;
        std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(j + 5, v22, v315);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](v315);
        std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(v306);
        v22 = v31;
      }

      else if (std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(self + 8, v22 + 2))
      {
        v22 = *v22;
      }

      else
      {
        v32 = os_log_get(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          if (*(v22 + 39) < 0)
          {
            v23 = *v23;
          }

          *v306 = 136315138;
          *&v306[4] = v23;
          _os_log_error_impl(&dword_26C632000, v32, OS_LOG_TYPE_ERROR, "Failed to resolve transient state %s", v306, 0xCu);
        }

        v33 = *v22;
        std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(j + 5, v22, v306);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](v306);
        v22 = v33;
      }
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::~__hash_table(&buf);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::~__hash_table(&v287);
  v34 = 7.5;
  if (!CGRectIsNull(*(self + 5)))
  {
    v35 = *(self + 22);
    v34 = (v35 * 0.5);
  }

  v287 = 0uLL;
  *v288 = 0;
  memset(&v288[8], 0, 48);
  v289 = 0;
  v290 = 1065353216;
  FlipBookFramePool::all_frames(self + 8, __p);
  memset(&buf, 0, 32);
  buf.data[2] = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__rehash<true>(&buf, ((__p[1] - __p[0]) >> 1));
  for (m = *(self + 10); m; m = *m)
  {
    for (n = m[7]; n; n = *n)
    {
      v38 = n[5];
      v39 = n[6];
      while (v38 != v39)
      {
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        while (v40 != v41)
        {
          std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::__emplace_unique_key_args<FlipBookFrameHandle,FlipBookFrameHandle const&>(&buf, v40, v40);
          ++v40;
        }

        v38 += 32;
      }
    }
  }

  v42 = __p[0];
  v43 = __p[1];
  if (__p[0] == __p[1])
  {
    v44 = (self + 256);
  }

  else
  {
    v44 = (self + 256);
    while (1)
    {
      *v311 = *v42;
      if (!std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(&buf, v311))
      {
        break;
      }

      if (++v42 == v43)
      {
        v42 = v43;
        goto LABEL_74;
      }
    }

    if (v42 != v43)
    {
      for (ii = v42 + 1; ii != v43; ++ii)
      {
        *v311 = *ii;
        if (std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(&buf, v311))
        {
          *v42++ = *ii;
        }
      }
    }
  }

LABEL_74:
  v45 = __p[1];
  if (v42 != __p[1])
  {
    v45 = v42;
    __p[1] = v42;
  }

  *v311 = v44;
  v46 = 126 - 2 * __clz((v45 - __p[0]) >> 1);
  if (v45 == __p[0])
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>(__p[0], v45, v311, v47, 1);
  std::vector<ExportedFlipBookFrame>::vector[abi:ne200100](v306, (__p[1] - __p[0]) >> 1);
  v48 = *v306;
  if (*v306 != *&v306[8])
  {
    v49 = v44->entries.__begin_ + 96 * *__p[0];
    v50 = *(v49 - 96);
    if (v50 != 1)
    {
      __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 148, "get(h).alive");
    }

    v51 = 0;
    v52 = 0.0;
    v53 = &loc_26C64E000;
    do
    {
      v54 = v44->entries.__begin_ + 96 * *(__p[0] + v51);
      if ((*(v54 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 148, "get(h).alive");
      }

      v55 = 0.008;
      if (*(v54 - 16) - *(v49 - 16) == 1)
      {
        v55 = *(v54 - 48) - *(v49 - 48);
      }

      LODWORD(v53) = v53 & 0xFFFF0000 | *(__p[0] + v51);
      v56 = v48 + 16 * v51;
      *v56 = v53;
      *(v56 + 4) = v52;
      *(v56 + 8) = 0;
      v52 = v52 + v55;
      v51 = v50;
      v48 = *v306;
      ++v50;
      v49 = v54;
    }

    while (v51 < (*&v306[8] - *v306) >> 4);
  }

  std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(&buf);
  v57 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v58 = *v306;
  if (*v306 == *&v306[8])
  {
    v107 = os_log_get(v57);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      [SFUSecureFlipBookRecording generateSecureAsset:];
    }
  }

  else
  {
    v59 = vdupq_n_s64(0x7FF0000000000000uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      v64 = v44->entries.__begin_ + 96 * *v58;
      if ((*(v64 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
      }

      v65 = *(v64 - 88);
      v59 = vbslq_s8(vcgtq_f64(v59, v65), v65, v59);
      v66 = vaddq_f64(v65, *(v64 - 72));
      _Q0 = vbslq_s8(vcgtq_f64(v66, _Q0), v66, _Q0);
      v58 += 8;
    }

    while (v58 != *&v306[8]);
    v67 = vsubq_f64(_Q0, v59);
    v68 = v67.f64[0] + 7;
    v69 = v59;
    v70 = v67;
    if (v68 <= v67.f64[1] + 7)
    {
      v68 = v67.f64[1] + 7;
    }

    v276 = v68 & 0xFFFFFFF8;
    v71 = (v68 & 0xFFFFFFF8);
    v72 = v59.f64[1];
    v283 = v59.f64[0];
    v73 = v71;
    v319 = CGRectIntegral(*v69.f64);
    x = v319.origin.x;
    y = v319.origin.y;
    width = v319.size.width;
    height = v319.size.height;
    v78 = validate_capture_bounds(v319);
    if (v78)
    {
      if (*&v288[8])
      {
        *&v288[16] = *&v288[8];
        operator delete(*&v288[8]);
      }

      *&v288[8] = *v306;
      *&v288[24] = v307;
      v307 = 0;
      memset(v306, 0, sizeof(v306));
      v79 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      v80 = CGBitmapContextCreate(0, width, height, 8uLL, 4 * width, v79, 1u);
      color = CGColorCreateSRGB(0.204, 0.78, 0.349, 1.0);
      CGContextSetFillColorWithColor(v80, color);
      CGContextSetStrokeColorWithColor(v80, color);
      CGContextAddArc(v80, vcvts_n_f32_u32(width, 1uLL), vcvts_n_f32_u32(height, 1uLL), v34, 0.0, 6.28318531, 1);
      CGContextFillPath(v80);
      Image = CGBitmapContextCreateImage(v80);
      scratch_buffer = CGImageGetWidth(Image);
      v82 = CGImageGetHeight(Image);
      BytesPerRow = CGImageGetBytesPerRow(Image);
      CGImageGetBitsPerComponent(Image);
      std::vector<unsigned char>::vector[abi:ne200100](&buf, BytesPerRow * v82);
      cf = v79;
      std::vector<unsigned char>::vector[abi:ne200100](__p, BytesPerRow * v82);
      if (BytesPerRow * v82)
      {
        if (CGImageGetData() != v82)
        {
          __assert_rtn("compress_cgimage", "SFUSecureFlipBookRecorder.mm", 615, "sub_row == height");
        }

        v84 = rgba_swizzle_from_cgimage(Image);
        v86 = __p[0];
        v87 = *&buf.A;
        if (v82)
        {
          v88 = 0;
          v89 = HIBYTE(v84);
          v90 = v84;
          v91 = BYTE1(v84);
          v92 = BYTE2(v84);
          v93 = 4 * scratch_buffer;
          v94 = __p[0] + v89;
          v95 = __p[0] + v92;
          v96 = __p[0] + v91;
          v97 = __p[0] + v90;
          do
          {
            if (v93)
            {
              for (jj = 0; jj < v93; jj += 4)
              {
                v99 = v94[jj];
                v100 = fmaxf(v99 / 255.0, 0.00001);
                LOBYTE(v85) = v95[jj];
                *&v101 = (((LODWORD(v85) / 255.0) / v100) * 255.0) + 0.5;
                v102 = &v87[jj];
                *v102 = *&v101;
                LOBYTE(v101) = v96[jj];
                *&v103 = (((v101 / 255.0) / v100) * 255.0) + 0.5;
                v102[1] = *&v103;
                LOBYTE(v103) = v97[jj];
                v85 = v103 / 255.0;
                v102[2] = (((v85 / v100) * 255.0) + 0.5);
                v102[3] = v99;
              }
            }

            ++v88;
            v94 += BytesPerRow;
            v95 += BytesPerRow;
            v96 += BytesPerRow;
            v87 += BytesPerRow;
            v97 += BytesPerRow;
          }

          while (v88 != v82);
          v86 = __p[0];
          v87 = *&buf.A;
        }

        v104 = compression_encode_buffer(v86, BytesPerRow * v82, v87, BytesPerRow * v82, 0, COMPRESSION_LZFSE);
        v44 = (self + 256);
        v105 = v104;
        if (!v104)
        {
          v106 = os_log_get(v104);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *v311 = 67109632;
            *&v311[4] = scratch_buffer;
            LOWORD(v312) = 1024;
            *(&v312 + 2) = v82;
            HIWORD(v312) = 1024;
            LODWORD(v313) = BytesPerRow;
            _os_log_error_impl(&dword_26C632000, v106, OS_LOG_TYPE_ERROR, "Failed to compress image of size %ux%u Bpr:%u", v311, 0x14u);
          }

          v44 = (self + 256);
        }

        if (v105 <= __p[1] - __p[0])
        {
          if (v105 < __p[1] - __p[0])
          {
            __p[1] = __p[0] + v105;
          }
        }

        else
        {
          std::vector<unsigned char>::__append(__p, v105 - (__p[1] - __p[0]));
        }
      }

      if (*&buf.A)
      {
        *&buf.C = *&buf.A;
        operator delete(*&buf.A);
      }

      v109 = FlipBookFramePool::alloc(v44, LODWORD(__p[1]) - LODWORD(__p[0]));
      v110 = v44->entries.__begin_ + 96 * v109;
      if ((*(v110 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
      }

      memcpy(*(v110 - 24), __p[0], __p[1] - __p[0]);
      *(v110 - 88) = x;
      *(v110 - 80) = y;
      *(v110 - 72) = width;
      *(v110 - 64) = height;
      v111 = CGImageGetBytesPerRow(Image);
      *(v110 - 32) = v111;
      *(v110 - 40) = CGImageGetHeight(Image) * v111;
      *(v110 - 56) = vdupq_n_s64(0x7FF0000000000000uLL);
      *(v110 - 16) = 65534;
      *(v110 - 8) = 5;
      CFRelease(Image);
      CFRelease(color);
      CFRelease(v80);
      CFRelease(cf);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v112 = v109 | 0x7F80000000000000;
      v113 = *&v288[16];
      v114 = (*&v288[16] - *&v288[8]) >> 4;
      *v288 = v114;
      if (*&v288[16] >= *&v288[24])
      {
        v116 = v114 + 1;
        if ((v114 + 1) >> 60)
        {
          std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
        }

        v117 = *&v288[24] - *&v288[8];
        if ((*&v288[24] - *&v288[8]) >> 3 > v116)
        {
          v116 = v117 >> 3;
        }

        if (v117 >= 0x7FFFFFFFFFFFFFF0)
        {
          v118 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v118 = v116;
        }

        if (v118)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ExportedFlipBookFrame>>(&v288[8], v118);
        }

        v119 = (16 * v114);
        *v119 = v112;
        v119[1] = 0;
        v115 = 16 * v114 + 16;
        v120 = 16 * v114 - (*&v288[16] - *&v288[8]);
        memcpy(v119 - (*&v288[16] - *&v288[8]), *&v288[8], *&v288[16] - *&v288[8]);
        v121 = *&v288[8];
        *&v288[8] = v120;
        *&v288[16] = v115;
        *&v288[24] = 0;
        if (v121)
        {
          operator delete(v121);
        }
      }

      else
      {
        **&v288[16] = v112;
        *(v113 + 8) = 0;
        v115 = v113 + 16;
      }

      *&v288[16] = v115;
      v122 = *&v288[8];
      if (v115 == *&v288[8])
      {
        v125 = (v115 - *&v288[8]) >> 4;
      }

      else
      {
        v123 = 0;
        v124 = 1;
        do
        {
          *&buf.A = v122 + 16 * v123;
          *(std::__hash_table<std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::__unordered_map_hasher<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,true>,std::__unordered_map_equal<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::equal_to<FlipBookFrameHandle>,FlipBookFrameHandleHasher,true>,std::allocator<std::__hash_value_type<FlipBookFrameHandle,unsigned int>>>::__emplace_unique_key_args<FlipBookFrameHandle,std::piecewise_construct_t const&,std::tuple<FlipBookFrameHandle const&>,std::tuple<>>(&v288[32], *&buf.A, &std::piecewise_construct, &buf) + 5) = v124 - 1;
          v123 = v124;
          v122 = *&v288[8];
          v125 = (*&v288[16] - *&v288[8]) >> 4;
          v138 = v125 > v124++;
        }

        while (v138);
      }

      v126 = 4 * v276;
      v127 = v126 * v276;
      v264 = v127 + v127 * v125;
      v128 = [MEMORY[0x277CBEB28] dataWithLength:?];
      __src = malloc_type_calloc(1uLL, 0x40000uLL, 0x100004077774924uLL);
      cfa = malloc_type_calloc(1uLL, v127, 0x100004077774924uLL);
      v129 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
      scratch_buffera = malloc_type_malloc(v129, 0x100004077774924uLL);
      v130 = *&v288[8];
      v131 = *&v288[16];
      if (*&v288[16] != *&v288[8])
      {
        v132 = 0;
        v133 = 0;
        v259 = 0;
        v260 = 0;
        v262 = v126 * v276;
        v134 = 0;
        while (1)
        {
          colora = v134;
          v135 = v44->entries.__begin_;
          v136 = v44->entries.__begin_ + 96 * v130[8 * v132];
          if ((*(v136 - 96) & 1) == 0)
          {
            break;
          }

          v137 = *(v136 - 88);
          v138 = v283 > v137 || v69.f64[1] > v69.f64[0];
          if (v138)
          {
            v254 = 1006;
            v256 = "export_frames";
            v255 = "min.x <= frame.rect.origin.x && min.y <= frame.rect.origin.y";
LABEL_292:
            __assert_rtn(v256, "SFUSecureFlipBookRecorder.mm", v254, v255);
          }

          v139 = v128;
          v140 = round(v283 - v137);
          v141 = round(v69.f64[1] - v69.f64[0]);
          v142 = &v130[8 * v132];
          v143 = v130;
          v277 = v133;
          if (v133)
          {
            v143 = v130;
            while (1)
            {
              v144 = (v135 + 96 * *v143);
              if ((*(v144 - 12) & 1) == 0)
              {
                __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
              }

              v145 = *(v136 - 36);
              if (v145 == *(v144 - 9))
              {
                v146 = round(v69.f64[1] - *(v144 - 10));
                _ZF = v140 == round(v283 - *(v144 - 11)) && v141 == v146;
                if (_ZF && !memcmp(*(v136 - 24), *(v144 - 3), v145))
                {
                  break;
                }
              }

              v143 += 8;
              if (v143 == v142)
              {
                goto LABEL_167;
              }
            }
          }

          if (v143 == v142)
          {
LABEL_167:
            v150 = *(v136 - 40);
            v128 = v139;
            if (v150 > 0x40000)
            {
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", 1027, "decomp_buffer_size >= frame.img_size");
            }

            v151 = compression_decode_buffer(__src, v150, *(v136 - 24), *(v136 - 36), scratch_buffera, COMPRESSION_LZFSE);
            v152 = *(v136 - 40);
            if (v151 != v152)
            {
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", 1030, "decomp_size == frame.img_size");
            }

            if (*(v136 - 64) > 0.0)
            {
              LODWORD(v153) = *(v136 - 32);
              v154 = &cfa[(v140 * v153 + v141 * v153)];
              v155 = 1;
              v156 = __src;
              do
              {
                memcpy(v154, v156, v153);
                v154 += v126;
                v153 = *(v136 - 32);
                v156 += v153;
                v157 = v155++;
              }

              while (*(v136 - 64) > v157);
              LODWORD(v152) = *(v136 - 40);
            }

            if (v152 > v262)
            {
              v257 = 1043;
              v258 = "uncompressed_sz <= final_frame_size";
              goto LABEL_297;
            }

            v158 = v139;
            v159 = compression_encode_buffer(colora + [v139 mutableBytes], v264 - colora, cfa, v262, scratch_buffera, COMPRESSION_LZFSE);
            v149 = v159;
            if (!v159)
            {
              v257 = 1049;
              v258 = "compressed_size > 0";
LABEL_297:
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", v257, v258);
            }

            v134 = (colora + v159);
            bzero(cfa, v262);
            v148 = colora;
            v130 = *&v288[8];
            v131 = *&v288[16];
          }

          else
          {
            v148 = *(v143 + 2);
            v149 = *(v143 + 3);
            ++v259;
            v260 += *(v136 - 36);
            v128 = v139;
            v134 = colora;
          }

          v160 = &v130[8 * v132];
          *(v160 + 2) = v148;
          *(v160 + 3) = v149;
          v132 = (v277 + 1);
          v133 = v277 + 1;
          v44 = (self + 256);
          if (v132 >= (v131 - v130) >> 4)
          {
            goto LABEL_179;
          }
        }

        v254 = 144;
        v255 = "get(h).alive";
        v256 = "frame";
        goto LABEL_292;
      }

      v134 = 0;
      v260 = 0;
      v259 = 0;
LABEL_179:
      free(cfa);
      free(scratch_buffera);
      free(__src);
      v162 = os_log_get(v161);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        buf.A = 67109376;
        buf.B = v259;
        LOWORD(buf.C) = 2048;
        *(&buf.C + 2) = v260;
        _os_log_impl(&dword_26C632000, v162, OS_LOG_TYPE_DEFAULT, "Got %u identical frames and saved %zu bytes\n", &buf, 0x12u);
      }

      [v128 setLength:v134];
      v163 = v70.f64[0];
      if (v70.f64[0] < v70.f64[1])
      {
        v163 = v70.f64[1];
      }

      LODWORD(v287) = v163;
      DWORD1(v287) = v126;
      v107 = *(&v287 + 1);
      *(&v287 + 1) = v128;
    }

    else
    {
      v107 = os_log_get(v78);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }
    }
  }

  v164 = *v306;
  if (*v306)
  {
    *&v306[8] = *v306;
    operator delete(*v306);
  }

  if (*&v288[8] != *&v288[16])
  {
    if (v287 >= 0x101)
    {
      v165 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frames bounding box is larger than maximum allowed size %u > %u", v287, 256];
      v166 = os_log_get(v165);
      if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }

      if (asset)
      {
        v167 = MEMORY[0x277CCA9B8];
        v302 = *MEMORY[0x277CCA450];
        v303 = v165;
        v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
        *asset = [v167 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:3 userInfo:v168];
      }

      v7 = 0;
      goto LABEL_281;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v172 = v291.__begin_;
    end = v291.__end_;
    v263 = dictionary;
    if (v291.__begin_ != v291.__end_)
    {
      while (1)
      {
        *&buf.A = v172;
        v173 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(self + 8, v172, &std::piecewise_construct, &buf, v306);
        __srca = v172;
        v174 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(v173 + 5, v172);
        v175 = v174[5];
        v176 = v174 + 5;
        if ((v174[6] - v175) >= 0x21)
        {
          v177 = os_log_get(v174);
          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            [(SFUSecureFlipBookRecording *)__p generateSecureAsset:v172, (__p + 4), v177];
          }

          std::vector<FlipBookTransitionPoint>::resize(v176, 1uLL);
          v175 = *v176;
        }

        v178 = create_ranges_from_frames(&v287, (v175 + 8));
        if ([v178 count] == 2)
        {
          v179 = v178;
        }

        else
        {
          v180 = [v178 objectAtIndexedSubscript:0];
          v301[0] = v180;
          v181 = [v178 objectAtIndexedSubscript:1];
          v301[1] = v181;
          v182 = [MEMORY[0x277CBEA60] arrayWithObjects:v301 count:2];

          v184 = os_log_get(v183);
          if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
          {
            if (SHIBYTE(v172->__r_.__value_.__r.__words[2]) < 0)
            {
              v172 = v172->__r_.__value_.__r.__words[0];
            }

            v209 = [v182 objectAtIndexedSubscript:0];
            v210 = [v182 objectAtIndexedSubscript:1];
            buf.A = 136315650;
            *&buf.B = v172;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v209;
            HIWORD(buf.Nh) = 2112;
            *buf.data = v210;
            _os_log_error_impl(&dword_26C632000, v184, OS_LOG_TYPE_ERROR, "State %s contains indirect self transition. Keeping range %@ %@", &buf, 0x20u);
          }

          v179 = v182;
        }

        v265 = v179;
        v185 = [v179 objectAtIndexedSubscript:0];
        unsignedIntValue = [v185 unsignedIntValue];

        v187 = [v265 objectAtIndexedSubscript:1];
        unsignedIntValue2 = [v187 unsignedIntValue];

        v189 = __srca;
        if (SHIBYTE(__srca->__r_.__value_.__r.__words[2]) < 0)
        {
          v189 = __srca->__r_.__value_.__r.__words[0];
        }

        colorb = [MEMORY[0x277CCACA8] stringWithUTF8String:v189];
        cfb = [MEMORY[0x277CBEB38] dictionary];
        v190 = v173[7];
        if (v190)
        {
          break;
        }

LABEL_243:
        [v263 setObject:cfb forKeyedSubscript:colorb];

        v172 = __srca + 1;
        if (&__srca[1] == end)
        {
          goto LABEL_249;
        }
      }

LABEL_209:
      v191 = v190 + 2;
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(self + 8, v190 + 2))
      {
        __assert_rtn("[SFUSecureFlipBookRecording generateSecureAsset:]", "SFUSecureFlipBookRecorder.mm", 1341, "_states.find(target_state.first) != _states.end()");
      }

      if (*(v190 + 39) < 0)
      {
        v191 = *v191;
      }

      v284 = [MEMORY[0x277CCACA8] stringWithUTF8String:v191];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v193 = dictionary2;
      v195 = v190[5];
      v194 = v190[6];
      while (1)
      {
        if (v195 == v194)
        {
          [cfb setObject:v193 forKeyedSubscript:v284];

          v190 = *v190;
          if (!v190)
          {
            goto LABEL_243;
          }

          goto LABEL_209;
        }

        if (*v195 == -2)
        {
          v196 = unsignedIntValue2;
        }

        else
        {
          v196 = *v195 + unsignedIntValue;
        }

        if (v196 >= 0xFFFF)
        {
          __assert_rtn("[SFUSecureFlipBookRecording generateSecureAsset:]", "SFUSecureFlipBookRecorder.mm", 1352, "abs_jump_frame < UINT16_MAX");
        }

        if (unsignedIntValue <= v196)
        {
          if (v196 <= unsignedIntValue2)
          {
            v198 = 1;
LABEL_232:
            v200 = v196;
            goto LABEL_233;
          }
        }

        else
        {
          v197 = os_log_get(dictionary2);
          if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413058;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v284;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = v196;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = unsignedIntValue;
            _os_log_error_impl(&dword_26C632000, v197, OS_LOG_TYPE_ERROR, "Jump frame for transition %@ -> %@ is before first frame of state %u < %u", &buf, 0x22u);
          }

          if (v196 <= unsignedIntValue2)
          {
            if (unsignedIntValue - v196 > 4)
            {
              goto LABEL_229;
            }

            v198 = 0;
            goto LABEL_232;
          }
        }

        v199 = os_log_get(dictionary2);
        if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
        {
          buf.A = 138413058;
          *&buf.B = colorb;
          LOWORD(buf.D) = 2112;
          *(&buf.D + 2) = v284;
          HIWORD(buf.Nh) = 1024;
          buf.data[0] = v196;
          LOWORD(buf.data[1]) = 1024;
          *(&buf.data[1] + 2) = unsignedIntValue2;
          _os_log_error_impl(&dword_26C632000, v199, OS_LOG_TYPE_ERROR, "Jump frame for transition %@ -> %@ is after last frame of state %u > %u", &buf, 0x22u);
        }

        if (v196 - unsignedIntValue2 >= 5)
        {
LABEL_229:
          v201 = os_log_get(dictionary2);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413314;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v284;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = v196;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = unsignedIntValue;
            HIWORD(buf.data[2]) = 1024;
            buf.data[3] = unsignedIntValue2;
            v202 = v201;
            v203 = "Invalid transition %@ -> %@ : Jump frame %u not contained in state loop [%u %u]";
            v204 = 40;
            goto LABEL_241;
          }

LABEL_238:

          goto LABEL_239;
        }

        v198 = 0;
        v200 = unsignedIntValue2;
LABEL_233:
        v205 = create_ranges_from_frames(&v287, (v195 + 2));
        if (unsignedIntValue <= v196)
        {
          v206 = v200;
        }

        else
        {
          v206 = unsignedIntValue;
        }

        v207 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v206];
        stringValue = [v207 stringValue];
        [v193 setObject:v205 forKeyedSubscript:stringValue];

        if ((v198 & 1) == 0)
        {
          v201 = os_log_get(dictionary2);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413058;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v284;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = unsignedIntValue;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = unsignedIntValue2;
            v202 = v201;
            v203 = "Jump frame for transition %@ -> %@ was clamped to valid range [%u %u]";
            v204 = 34;
LABEL_241:
            _os_log_error_impl(&dword_26C632000, v202, OS_LOG_TYPE_ERROR, v203, &buf, v204);
          }

          goto LABEL_238;
        }

LABEL_239:
        v195 += 8;
      }
    }

LABEL_249:
    if (MEMORY[0x282229CD0] && (v211 = SILManagerValidateFlipBookTransitions(), (v211 & 1) == 0))
    {
      v252 = os_log_get(v211);
      if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }

      if (!asset)
      {
        v7 = 0;
        goto LABEL_280;
      }

      v253 = MEMORY[0x277CCA9B8];
      v299 = *MEMORY[0x277CCA450];
      v300 = @"Failed to validate some states";
      scratch_bufferb = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
      [v253 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:4 userInfo:scratch_bufferb];
      *asset = v7 = 0;
    }

    else
    {
      scratch_bufferb = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bin", *(self + 1)];
      cfc = [MEMORY[0x277CBEB18] array];
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      colorc = [MEMORY[0x277CBEB38] dictionary];
      [(CGColor *)colorc setObject:*(self + 1) forKeyedSubscript:@"name"];
      [(CGColor *)colorc setObject:&unk_287D274A0 forKeyedSubscript:@"type"];
      [(CGColor *)colorc setObject:&unk_287D274B8 forKeyedSubscript:@"sensorCategory"];
      [(CGColor *)colorc setObject:scratch_bufferb forKeyedSubscript:@"blobName"];
      v212 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v287];
      [(CGColor *)colorc setObject:v212 forKeyedSubscript:@"extent"];

      v213 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v287)];
      [(CGColor *)colorc setObject:v213 forKeyedSubscript:@"Bpr"];

      [(CGColor *)colorc setObject:v263 forKeyedSubscript:@"flipbook"];
      [(CGColor *)colorc setObject:*(self + 19) forKeyedSubscript:@"userInfo"];
      mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
      [mainDisplay bounds];
      v216 = v215;
      v218 = v217;

      array = [MEMORY[0x277CBEB18] array];
      v220 = *&v288[8];
      v219 = *&v288[16];
      while (v220 != v219)
      {
        v221 = MEMORY[0x277CBEB38];
        v297[0] = @"size";
        v222 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v287];
        v298[0] = v222;
        v297[1] = @"time";
        LODWORD(v223) = v220[1];
        v224 = [MEMORY[0x277CCABB0] numberWithFloat:v223];
        v298[1] = v224;
        v297[2] = @"dataOffset";
        v225 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v220[2]];
        v298[2] = v225;
        v297[3] = @"dataSize";
        v226 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v220[3]];
        v298[3] = v226;
        v227 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v298 forKeys:v297 count:4];
        v228 = [v221 dictionaryWithDictionary:v227];

        v229 = *(self + 32) + 96 * *v220;
        if ((*(v229 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        if (*(v229 - 12))
        {
          v230 = [MEMORY[0x277CCABB0] numberWithShort:?];
          [v228 setObject:v230 forKeyedSubscript:@"posOffsetX"];
        }

        if (*(v229 - 10))
        {
          v231 = [MEMORY[0x277CCABB0] numberWithShort:?];
          [v228 setObject:v231 forKeyedSubscript:@"posOffsetY"];
        }

        v232 = *(v229 - 8);
        if (v232)
        {
          [v228 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"startPoint"];
          v232 = *(v229 - 8);
        }

        if ((v232 & 2) != 0)
        {
          [v228 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"insecure"];
          v232 = *(v229 - 8);
        }

        if ((v232 & 4) != 0)
        {
          [v228 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"delayed"];
        }

        [array addObject:v228];

        v220 += 4;
      }

      [(CGColor *)colorc setObject:array forKeyedSubscript:@"frames"];
      [cfc addObject:colorc];
      v233 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(self + 14) - *(self + 13)) >> 5];
      v234 = *(self + 13);
      v235 = *(self + 14);
      while (v234 != v235)
      {
        v236 = create_bounding_box_dictionary_from_cgrect(*v234, 0);
        [v233 addObject:v236];

        ++v234;
      }

      v237 = *(self + 16);
      v238 = *(self + 17);
      while (v237 != v238)
      {
        v239 = create_bounding_box_dictionary_from_cgrect(*v237, 1);
        [v233 addObject:v239];

        ++v237;
      }

      [dictionary3 setObject:v233 forKeyedSubscript:@"boundingBoxes"];
      [dictionary3 setObject:&unk_287D27510 forKeyedSubscript:@"minStaticLocationDuration"];
      v240 = 0.0;
      v241 = 0.0;
      if (!CGRectIsNull(*(self + 5)))
      {
        v240 = *(self + 20) / v216;
        v241 = *(self + 21) / v218;
      }

      v295[0] = @"frame";
      v242 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v288];
      v296[0] = v242;
      v295[1] = @"x";
      v243 = [MEMORY[0x277CCABB0] numberWithDouble:v240];
      v296[1] = v243;
      v295[2] = @"y";
      v244 = [MEMORY[0x277CCABB0] numberWithDouble:v241];
      v296[2] = v244;
      v245 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v296 forKeys:v295 count:3];
      [dictionary3 setObject:v245 forKeyedSubscript:@"fallbackInfo"];

      v246 = [MEMORY[0x277CBEB28] dataWithLength:16];
      CC_MD5_Init(&buf);
      bytes = [*(&v287 + 1) bytes];
      CC_MD5_Update(&buf, bytes, [*(&v287 + 1) length]);
      v248 = v246;
      CC_MD5_Final([v246 bytes], &buf);
      v292[0] = @"indicators";
      v292[1] = @"blobmd5";
      v293[0] = cfc;
      v293[1] = v246;
      v249 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v293 forKeys:v292 count:2];
      v250 = [SFUSecureFlipBookAsset alloc];
      name = [(SFUSecureFlipBookRecording *)self name];
      v7 = [(SFUSecureFlipBookAsset *)v250 initWith:name metadata:v249 constraints:dictionary3 blob:*(&v287 + 1)];
    }

LABEL_280:
    v165 = v263;
    goto LABEL_281;
  }

  v169 = os_log_get(v164);
  if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
  {
    [SFUSecureFlipBookRecording generateSecureAsset:];
  }

  if (asset)
  {
    v170 = MEMORY[0x277CCA9B8];
    v304 = *MEMORY[0x277CCA450];
    v305 = @"Empty frames";
    v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
    [v170 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:2 userInfo:?];
    *asset = v7 = 0;
LABEL_281:

    goto LABEL_282;
  }

  v7 = 0;
LABEL_282:
  std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(&v288[32]);
  if (*&v288[8])
  {
    *&v288[16] = *&v288[8];
    operator delete(*&v288[8]);
  }

  *&buf.A = &v291;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
LABEL_7:
  std::mutex::unlock(self + 3);

  return v7;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 24) = 850045863;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 31) = 0;
  FlipBookFramePool::FlipBookFramePool(self + 8);
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

+ (void)recordingWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamCallbackFrom:(os_log_t)log with:.cold.4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "Got error ? status : %u", buf, 8u);
}

- (void)endCapture
{
  v5 = *MEMORY[0x277D85DE8];
  if (*self < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "Duplicate capture for state %s", &v3, 0xCu);
}

- (void)generateSecureAsset:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateSecureAsset:(uint64_t *)a3 .cold.3(uint8_t *buf, uint64_t **a2, uint64_t ***a3, os_log_t log)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  *buf = 136315138;
  *a3 = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "State %s has more than 1 self transition. Dropping all others", buf, 0xCu);
}

- (void)generateSecureAsset:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end