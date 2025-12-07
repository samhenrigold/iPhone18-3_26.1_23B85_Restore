@interface JFXDepthDataMediaReader
- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange;
- (BOOL)beginReading;
- (BOOL)beginReadingAtTimeRange:(id *)range;
- (BOOL)isScrubbing;
- (JFXDepthDataMediaReader)initWithVideoTrackReader:(id)reader;
- (NSError)error;
- (NSString)name;
- (id)JFX_cachedDepthDataForTime:(id *)time;
- (id)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(id)sample;
- (id)JFX_readDepthDataForTime:(id *)time;
- (id)depthDataForTime:(id *)time;
- (id)videoSampleForTime:(id *)time;
- (int64_t)status;
- (unint64_t)signPostID;
- (void)setIsScrubbing:(BOOL)scrubbing;
@end

@implementation JFXDepthDataMediaReader

- (JFXDepthDataMediaReader)initWithVideoTrackReader:(id)reader
{
  readerCopy = reader;
  v19.receiver = self;
  v19.super_class = JFXDepthDataMediaReader;
  v6 = [(JFXDepthDataMediaReader *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reader, reader);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UNSPECIFIED, 0);

    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"com.apple.%@", v12];

    v14 = dispatch_queue_create([v13 UTF8String], v9);
    synchronizationQueue = v7->_synchronizationQueue;
    v7->_synchronizationQueue = v14;

    v16 = objc_opt_new();
    depthDecompressor = v7->_depthDecompressor;
    v7->_depthDecompressor = v16;
  }

  return v7;
}

- (id)depthDataForTime:(id *)time
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = JFXMediaDataReaderIntervalSignpostCategory(self, a2);
  signPostID = [(JFXDepthDataMediaReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signPostID;
    if (os_signpost_enabled(v5))
    {
      v17 = *time;
      Seconds = CMTimeGetSeconds(&v17);
      LODWORD(v17.var0) = 138412546;
      *(&v17.var0 + 4) = self;
      LOWORD(v17.var2) = 2048;
      *(&v17.var2 + 2) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "depthDataForTime", "%@ time %f", &v17, 0x16u);
    }
  }

  v17 = *time;
  v9 = [(JFXDepthDataMediaReader *)self JFX_readDepthDataForTime:&v17];
  v11 = v9;
  if (v9)
  {
    v9 = [(JFXDepthDataMediaReader *)self setCachedDepthData:v9];
  }

  v12 = JFXMediaDataReaderIntervalSignpostCategory(v9, v10);
  signPostID2 = [(JFXDepthDataMediaReader *)self signPostID];
  if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = signPostID2;
    if (os_signpost_enabled(v12))
    {
      v17 = *time;
      v15 = CMTimeGetSeconds(&v17);
      LODWORD(v17.var0) = 134217984;
      *(&v17.var0 + 4) = v15;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v12, OS_SIGNPOST_INTERVAL_END, v14, "depthDataForTime", "time %f", &v17, 0xCu);
    }
  }

  return v11;
}

- (id)JFX_cachedDepthDataForTime:(id *)time
{
  v29 = *MEMORY[0x277D85DE8];
  cachedDepthData = [(JFXDepthDataMediaReader *)self cachedDepthData];
  v6 = cachedDepthData;
  if (cachedDepthData && (objc_msgSend_timeRange(cachedDepthData), time = *time, CMTimeRangeContainsTime(&range, &time)))
  {
    v7 = JFXLog_DebugMediaDataReader();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v11 = JFXLog_DebugMediaDataReader();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *&range.start.value = *&time->var0;
        range.start.epoch = time->var3;
        Seconds = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v6);
        *&range.start.value = v25;
        range.start.epoch = v26;
        v21 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v6);
        CMTimeRangeGetEnd(&time, &range);
        v22 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = self;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = Seconds;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v21;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v22;
        _os_log_debug_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEBUG, "%@ cached data found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v12 = JFXMediaDataReaderEventSignpostPointCategory(v9, v10);
    signPostID = [(JFXDepthDataMediaReader *)self signPostID];
    if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signPostID;
      if (os_signpost_enabled(v12))
      {
        *&range.start.value = *&time->var0;
        range.start.epoch = time->var3;
        v15 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v6);
        *&range.start.value = v23;
        range.start.epoch = v24;
        v16 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v6);
        CMTimeRangeGetEnd(&time, &range);
        v17 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = self;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = v15;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v16;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v17;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v12, OS_SIGNPOST_EVENT, v14, "depthDataFoundInCache", "%@ found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)JFX_readDepthDataForTime:(id *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__JFXDepthDataMediaReader_JFX_readDepthDataForTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(synchronizationQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __52__JFXDepthDataMediaReader_JFX_readDepthDataForTime___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v19[0] = *(a1 + 48);
  v3 = [v2 JFX_cachedDepthDataForTime:v19];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) reader];
    v19[0] = *(a1 + 48);
    v7 = [v6 videoSampleForTime:v19];

    if (v7)
    {
      v8 = [v7 sampleBufferRef];
      if (CMGetAttachment(v8, *MEMORY[0x277CC06D8], 0) != *MEMORY[0x277CBED28])
      {
        v9 = [*(a1 + 32) JFX_decompressAVDepthDataFromVideoTrackReaderSample:v7];
        if (v9)
        {
          v10 = [JFXMediaReaderDepthData alloc];
          objc_msgSend_timeRange(v7);
          v11 = [(JFXMediaReaderDepthData *)v10 initWithAVDepthData:v9 timeRange:v19];
          v12 = *(*(a1 + 40) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }

        goto LABEL_9;
      }

      v9 = JFXLog_DebugMediaDataReader();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_9:

        return;
      }

      v17 = *(a1 + 32);
      v19[0] = *(a1 + 48);
      Seconds = CMTimeGetSeconds(v19);
      LODWORD(v19[0].value) = 138412546;
      *(&v19[0].value + 4) = v17;
      LOWORD(v19[0].flags) = 2048;
      *(&v19[0].flags + 2) = Seconds;
      v16 = "%@ empty frame found at time %f";
    }

    else
    {
      v9 = JFXLog_DebugMediaDataReader();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      v14 = *(a1 + 32);
      v19[0] = *(a1 + 48);
      v15 = CMTimeGetSeconds(v19);
      LODWORD(v19[0].value) = 138412546;
      *(&v19[0].value + 4) = v14;
      LOWORD(v19[0].flags) = 2048;
      *(&v19[0].flags + 2) = v15;
      v16 = "%@ could not read video sample at time %f";
    }

    _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, v16, v19, 0x16u);
    goto LABEL_9;
  }
}

- (id)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(id)sample
{
  v43 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  v8 = JFXMediaDataReaderIntervalSignpostCategory(v6, v7);
  signPostID = [(JFXDepthDataMediaReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signPostID;
    if (os_signpost_enabled(v8))
    {
      if (sampleCopy)
      {
        objc_msgSend_timeRange(sampleCopy);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
      }

      *&time.value = v36;
      time.epoch = v37;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "decompressAVDepthData", "%@ time %f", &time, 0x16u);
    }
  }

  depthDecompressor = [(JFXDepthDataMediaReader *)self depthDecompressor];
  v35 = 0;
  v13 = [depthDecompressor decompressAVDepthData:objc_msgSend(sampleCopy error:{"sampleBufferRef"), &v35}];
  v14 = v35;

  if (sampleCopy)
  {
    objc_msgSend_timeRange(sampleCopy);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  *&time.value = v32;
  time.epoch = v33;
  v15 = CMTimeGetSeconds(&time);
  depthDecompressor2 = [(JFXDepthDataMediaReader *)self depthDecompressor];
  depthCodecType = [depthDecompressor2 depthCodecType];

  if (!depthCodecType)
  {
    v18 = JFXLog_mediaDataReader();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(JFXDepthDataMediaReader *)self JFX_decompressAVDepthDataFromVideoTrackReaderSample:v18, v15];
    }
  }

  v19 = JFXLog_DebugMediaDataReader();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (!v13 || v14)
  {
    if (v20)
    {
      v30[0] = HIBYTE(depthCodecType);
      v30[1] = BYTE2(depthCodecType);
      v30[2] = BYTE1(depthCodecType);
      v30[3] = depthCodecType;
      v30[4] = 0;
      LODWORD(time.value) = 138413058;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = v14;
      HIWORD(time.epoch) = 2048;
      v40 = v15;
      v41 = 2080;
      v42 = v30;
      v21 = "%@ depth data decompression failed with error %@ for time %f, type detected %s";
      v22 = v19;
      v23 = 42;
      goto LABEL_26;
    }
  }

  else if (v20)
  {
    v31[0] = HIBYTE(depthCodecType);
    v31[1] = BYTE2(depthCodecType);
    v31[2] = BYTE1(depthCodecType);
    v31[3] = depthCodecType;
    v31[4] = 0;
    LODWORD(time.value) = 138412802;
    *(&time.value + 4) = self;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v15;
    HIWORD(time.epoch) = 2080;
    v40 = COERCE_DOUBLE(v31);
    v21 = "%@ depth data decompression succeeded for time %f, type detected %s";
    v22 = v19;
    v23 = 32;
LABEL_26:
    _os_log_debug_impl(&dword_242A3B000, v22, OS_LOG_TYPE_DEBUG, v21, &time, v23);
  }

  v26 = JFXMediaDataReaderIntervalSignpostCategory(v24, v25);
  signPostID2 = [(JFXDepthDataMediaReader *)self signPostID];
  if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = signPostID2;
    if (os_signpost_enabled(v26))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v26, OS_SIGNPOST_INTERVAL_END, v28, "decompressAVDepthData", &unk_242B66C87, &time, 2u);
    }
  }

  return v13;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5010000000;
  v13 = "";
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__JFXDepthDataMediaReader_readableTimeRange__block_invoke;
  v9[3] = &unk_278D79C60;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(synchronizationQueue, v9);

  v6 = v11;
  v7 = *(v11 + 3);
  *&retstr->var0.var0 = *(v11 + 2);
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = *(v6 + 4);
  _Block_object_dispose(&v10, 8);
  return result;
}

__n128 __44__JFXDepthDataMediaReader_readableTimeRange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = v2;
  if (v2)
  {
    objc_msgSend_readableTimeRange(v2);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v4 = *(*(a1 + 40) + 8);
  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v8;

  return result;
}

- (BOOL)isScrubbing
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__JFXDepthDataMediaReader_isScrubbing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(synchronizationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __38__JFXDepthDataMediaReader_isScrubbing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScrubbing];
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__JFXDepthDataMediaReader_setIsScrubbing___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  scrubbingCopy = scrubbing;
  dispatch_async(synchronizationQueue, v6);
}

void __42__JFXDepthDataMediaReader_setIsScrubbing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reader];
  [v2 setIsScrubbing:v1];
}

- (int64_t)status
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 2;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__JFXDepthDataMediaReader_status__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__JFXDepthDataMediaReader_status__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 status];
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__JFXDepthDataMediaReader_error__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__JFXDepthDataMediaReader_error__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = [v2 error];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) lastDecodeError];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    MEMORY[0x2821F96F8](v6, v8);
  }
}

- (BOOL)beginReadingAtTimeRange:(id *)range
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__JFXDepthDataMediaReader_beginReadingAtTimeRange___block_invoke;
  v8[3] = &unk_278D7A030;
  v8[4] = self;
  v8[5] = &v12;
  v6 = *&range->var0.var3;
  v9 = *&range->var0.var0;
  v10 = v6;
  v11 = *&range->var1.var1;
  dispatch_sync(synchronizationQueue, v8);

  LOBYTE(range) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return range;
}

void __51__JFXDepthDataMediaReader_beginReadingAtTimeRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v3;
  v4[2] = *(a1 + 80);
  *(*(*(a1 + 40) + 8) + 24) = [v2 beginReadingAtTimeRange:v4];
}

- (BOOL)beginReading
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__JFXDepthDataMediaReader_beginReading__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(synchronizationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __39__JFXDepthDataMediaReader_beginReading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 beginReading];
}

- (NSString)name
{
  reader = [(JFXDepthDataMediaReader *)self reader];
  name = [reader name];

  return name;
}

- (unint64_t)signPostID
{
  reader = [(JFXDepthDataMediaReader *)self reader];
  signPostID = [reader signPostID];

  return signPostID;
}

- (id)videoSampleForTime:(id *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  synchronizationQueue = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__JFXDepthDataMediaReader_videoSampleForTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(synchronizationQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __46__JFXDepthDataMediaReader_videoSampleForTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v3 = [v2 videoSampleForTime:&v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "%@ found data with invalid depth data at time %f", &v3, 0x16u);
}

@end