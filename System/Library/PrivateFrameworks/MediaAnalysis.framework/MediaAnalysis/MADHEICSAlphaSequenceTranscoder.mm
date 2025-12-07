@interface MADHEICSAlphaSequenceTranscoder
- (MADHEICSAlphaSequenceTranscoder)initWithSequenceData:(id)data maxDimension:(unint64_t)dimension qualityValue:(double)value;
- (id).cxx_construct;
- (id)run;
- (int)_addFrameToSequence:(int64_t)sequence basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts;
- (int)_decodeFrameIndex:(unint64_t)index basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts;
- (int)_setupTranscode;
- (int)_transcode;
@end

@implementation MADHEICSAlphaSequenceTranscoder

- (MADHEICSAlphaSequenceTranscoder)initWithSequenceData:(id)data maxDimension:(unint64_t)dimension qualityValue:(double)value
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = MADHEICSAlphaSequenceTranscoder;
  v10 = [(MADHEICSAlphaSequenceTranscoder *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceData, data);
    v11->_maxDimension = dimension;
    v11->_qualityValue = value;
  }

  return v11;
}

- (int)_setupTranscode
{
  v24[2] = *MEMORY[0x1E69E9840];
  p_source = &self->_source;
  value = self->_source.value_;
  if (value)
  {
    CFRelease(value);
    p_source->value_ = 0;
  }

  Container = CMPhotoDecompressionSessionCreate();
  if (Container)
  {
    return Container;
  }

  v6 = self->_sourceContainer.value_;
  if (v6)
  {
    CFRelease(v6);
    self->_sourceContainer.value_ = 0;
  }

  Container = CMPhotoDecompressionSessionCreateContainer();
  if (Container)
  {
    return Container;
  }

  v7 = self->_sequenceContainer.value_;
  if (v7)
  {
    CFRelease(v7);
    self->_sequenceContainer.value_ = 0;
  }

  Container = CMPhotoDecompressionContainerCreateSequenceContainer();
  if (Container)
  {
    return Container;
  }

  v8 = self->_compressionSession.value_;
  if (v8)
  {
    CFRelease(v8);
    self->_compressionSession.value_ = 0;
  }

  Container = CMPhotoCompressionSessionCreate();
  if (Container)
  {
    return Container;
  }

  v11 = *MEMORY[0x1E6991860];
  v23[0] = *MEMORY[0x1E6991870];
  v23[1] = v11;
  v24[0] = &unk_1F49BC0A0;
  v24[1] = &unk_1F49BC0B8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  started = CMPhotoCompressionSessionOpenEmptyContainer();
  if (!started)
  {
    started = CMPhotoCompressionSessionStartImageSequence();
    if (!started)
    {
      started = CMPhotoDecompressionContainerGetImageCount();
      if (!started)
      {
        theDict = 0;
        started = CMPhotoDecompressionContainerCreateDictionaryDescription();
        if (!started)
        {
          v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6991A88]);
          frameProperties = self->_frameProperties;
          self->_frameProperties = v13;

          if (self->_frameProperties)
          {
            v15 = dispatch_group_create();
            encodeGroup = self->_encodeGroup;
            self->_encodeGroup = v15;

            v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v18 = dispatch_queue_create("heics.encode", v17);
            encodeQueue = self->_encodeQueue;
            self->_encodeQueue = v18;

            v20 = dispatch_semaphore_create(2);
            encodeSemaphore = self->_encodeSemaphore;
            self->_encodeSemaphore = v20;

            started = 0;
          }

          else
          {
            started = -18;
          }
        }

        CF<__CVBuffer *>::~CF(&theDict);
      }
    }
  }

  return started;
}

- (int)_decodeFrameIndex:(unint64_t)index basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts
{
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = VCPSignPostLog(self);
  v10 = os_signpost_id_generate(v9);

  v12 = VCPSignPostLog(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADHEICSTranscode_DecodeFrame", "", &buf, 2u);
  }

  v14 = [(NSArray *)self->_frameProperties objectAtIndexedSubscript:index];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E6991A98]];
  v16 = v15;
  if (v15)
  {
    CMTimeMakeFromDictionary(&buf, v15);
    *pts = buf;
    v17 = MEMORY[0x1E695DF90];
    v18 = *MEMORY[0x1E6991AE8];
    v50 = *MEMORY[0x1E6991AE8];
    v51[0] = &unk_1F49BC0D0;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v46 = [v17 dictionaryWithDictionary:v19];

    v21 = VCPSignPostLog(v20);
    v22 = os_signpost_id_generate(v21);

    v24 = VCPSignPostLog(v23);
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADHEICSTranscode_DecodeBaseImage", "", &buf, 2u);
    }

    ImageForIndex = CMPhotoDecompressionContainerCreateImageForIndex();
    v27 = ImageForIndex;
    if (!ImageForIndex)
    {
      v28 = VCPSignPostLog(ImageForIndex);
      v29 = v28;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v22, "MADHEICSTranscode_DecodeBaseImage", "", &buf, 2u);
      }

      v30 = MEMORY[0x1E695DF90];
      v48 = v18;
      v49 = &unk_1F49BC0E8;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v32 = [v30 dictionaryWithDictionary:v31];

      v34 = VCPSignPostLog(v33);
      v35 = os_signpost_id_generate(v34);

      v37 = VCPSignPostLog(v36);
      v38 = v37;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MADHEICSTranscode_DecodeAlphaImage", "", &buf, 2u);
      }

      AuxiliaryImageForIndex = CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex();
      v27 = AuxiliaryImageForIndex;
      if (!AuxiliaryImageForIndex)
      {
        v40 = VCPSignPostLog(AuxiliaryImageForIndex);
        v41 = v40;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_END, v35, "MADHEICSTranscode_DecodeAlphaImage", "", &buf, 2u);
        }

        v43 = VCPSignPostLog(v42);
        v44 = v43;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_END, v10, "MADHEICSTranscode_DecodeFrame", "", &buf, 2u);
        }
      }
    }
  }

  else
  {
    v27 = -18;
  }

  return v27;
}

- (int)_addFrameToSequence:(int64_t)sequence basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts
{
  v52[6] = *MEMORY[0x1E69E9840];
  v8 = VCPSignPostLog(self);
  spid = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADHEICSTranscode_EncodeFrame", "", buf, 2u);
  }

  v12 = MEMORY[0x1E695DF90];
  v13 = *MEMORY[0x1E6991978];
  v51[0] = *MEMORY[0x1E69918D0];
  v51[1] = v13;
  v52[0] = &unk_1F49BC100;
  v52[1] = &unk_1F49BC118;
  v51[2] = *MEMORY[0x1E6991970];
  v49 = *MEMORY[0x1E6991B90];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_qualityValue];
  v50 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v52[2] = v15;
  v51[3] = *MEMORY[0x1E6991940];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxDimension];
  v17 = *MEMORY[0x1E69919B8];
  v52[3] = v16;
  v52[4] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E69918A0];
  v51[4] = v17;
  v51[5] = v18;
  v52[5] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:6];
  v20 = [v12 dictionaryWithDictionary:v19];

  v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v20];
  v22 = VCPSignPostLog([v21 setObject:&unk_1F49BC130 forKeyedSubscript:*MEMORY[0x1E6991918]]);
  v23 = os_signpost_id_generate(v22);

  v25 = VCPSignPostLog(v24);
  v26 = v25;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADHEICSTranscode_EncodeBaseImage", "", buf, 2u);
  }

  *buf = *&pts->var0;
  var3 = pts->var3;
  v48 = 0;
  v27 = CMPhotoCompressionSessionAddImageToSequence();
  v28 = v27;
  if (!v27)
  {
    v29 = VCPSignPostLog(v27);
    v30 = v29;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v23, "MADHEICSTranscode_EncodeBaseImage", "", buf, 2u);
    }

    v32 = VCPSignPostLog(v31);
    v33 = os_signpost_id_generate(v32);

    v35 = VCPSignPostLog(v34);
    v36 = v35;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "MADHEICSTranscode_EncodeAlphaImage", "", buf, 2u);
    }

    *buf = 0;
    v37 = CMPhotoCompressionSessionAddAuxiliaryImage();
    v28 = v37;
    if (!v37)
    {
      v38 = VCPSignPostLog(v37);
      v39 = v38;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *v45 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v33, "MADHEICSTranscode_EncodeAlphaImage", "", v45, 2u);
      }

      v41 = VCPSignPostLog(v40);
      v42 = v41;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *v45 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, spid, "MADHEICSTranscode_EncodeFrame", "", v45, 2u);
      }
    }
  }

  return v28;
}

- (int)_transcode
{
  v3 = VCPSignPostLog(self);
  v4 = os_signpost_id_generate(v3);

  v6 = VCPSignPostLog(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADHEICSTranscode_Transcode", "", buf, 2u);
  }

  _setupTranscode = [(MADHEICSAlphaSequenceTranscoder *)self _setupTranscode];
  if (_setupTranscode)
  {
    return _setupTranscode;
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  if (self->_frameCount <= 0)
  {
    dispatch_group_wait(self->_encodeGroup, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_22;
  }

  v9 = 0;
  do
  {
    v10 = objc_autoreleasePoolPush();
    v23 = 0;
    cf = 0;
    _setupTranscode = [(MADHEICSAlphaSequenceTranscoder *)self _decodeFrameIndex:v9 basePixelBuffer:&cf alphaPixelBuffer:&v23 pts:v25];
    if (_setupTranscode)
    {
      goto LABEL_10;
    }

    dispatch_semaphore_wait(self->_encodeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v28 + 6))
    {
      dispatch_semaphore_signal(self->_encodeSemaphore);
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    encodeGroup = self->_encodeGroup;
    encodeQueue = self->_encodeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __45__MADHEICSAlphaSequenceTranscoder__transcode__block_invoke;
    block[3] = &unk_1F4968E88;
    block[4] = self;
    block[5] = buf;
    v19 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v20 = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    v21 = *v25;
    v22 = v26;
    dispatch_group_async(encodeGroup, encodeQueue, block);
    CF<__CVBuffer *>::~CF(&v20);
    CF<__CVBuffer *>::~CF(&v19);
    v11 = 1;
LABEL_11:
    CF<__CVBuffer *>::~CF(&v23);
    CF<__CVBuffer *>::~CF(&cf);
    objc_autoreleasePoolPop(v10);
    if ((v11 & 1) == 0)
    {
      break;
    }

    ++v9;
  }

  while (v9 < self->_frameCount);
  dispatch_group_wait(self->_encodeGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!_setupTranscode)
  {
LABEL_22:
    _setupTranscode = *(v28 + 6);
    if (!_setupTranscode)
    {
      v14 = CMPhotoCompressionSessionEndImageSequence();
      _setupTranscode = v14;
      if (!v14)
      {
        v15 = VCPSignPostLog(v14);
        v16 = v15;
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          *v25 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v4, "MADHEICSTranscode_Transcode", "", v25, 2u);
        }
      }
    }
  }

  _Block_object_dispose(buf, 8);
  return _setupTranscode;
}

intptr_t __45__MADHEICSAlphaSequenceTranscoder__transcode__block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = *(a1 + 32);
    v3 = v2[9];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    *(*(*(a1 + 40) + 8) + 24) = [v2 _addFrameToSequence:v3 basePixelBuffer:v4 alphaPixelBuffer:v5 pts:&v7];
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 104));
}

- (id)run
{
  if ([(MADHEICSAlphaSequenceTranscoder *)self _transcode])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to transcode HEIC sequence", buf, 2u);
    }
  }

  else
  {
    cf = 0;
    if (CMPhotoCompressionSessionCloseContainerAndCopyBacking() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to copy HEIC sequence data", v3, 2u);
    }

    CF<__CVBuffer *>::~CF(&cf);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end