@interface JFXARMetadataMediaReader
+ (void)initialize;
- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange;
- (BOOL)beginReading;
- (BOOL)beginReadingAtTimeRange:(id *)range;
- (BOOL)isScrubbing;
- (JFXARMetadataMediaReader)initWithMetadataReader:(id)reader;
- (NSError)error;
- (NSString)name;
- (id)JFX_ARMetadataFromMetadataReaderItem:(id)item;
- (id)arMetadataItemForTime:(id *)time;
- (id)metadataForTime:(id *)time;
- (int64_t)status;
- (unint64_t)signPostID;
- (void)setIsScrubbing:(BOOL)scrubbing;
@end

@implementation JFXARMetadataMediaReader

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[JFXARMetadataMediaReader initialize];
  }
}

uint64_t __38__JFXARMetadataMediaReader_initialize__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = s_JFXARMetadataClassName;
  s_JFXARMetadataClassName = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

- (JFXARMetadataMediaReader)initWithMetadataReader:(id)reader
{
  readerCopy = reader;
  v17.receiver = self;
  v17.super_class = JFXARMetadataMediaReader;
  v6 = [(JFXARMetadataMediaReader *)&v17 init];
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
  }

  return v7;
}

- (id)arMetadataItemForTime:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = JFXMediaDataReaderIntervalSignpostCategory(self, a2);
  signPostID = [(JFXARMetadataMediaReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signPostID;
    if (os_signpost_enabled(v5))
    {
      time = *time;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "arMetadataItemForTime", "%@ time %f", &time, 0x16u);
    }
  }

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__JFXARMetadataMediaReader_arMetadataItemForTime___block_invoke;
  block[3] = &unk_278D7A008;
  v18 = *&time->var0;
  var3 = time->var3;
  block[4] = self;
  block[5] = &time;
  dispatch_sync(synchronizationQueue, block);

  v12 = JFXMediaDataReaderIntervalSignpostCategory(v10, v11);
  signPostID2 = [(JFXARMetadataMediaReader *)self signPostID];
  if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_242A3B000, v12, OS_SIGNPOST_INTERVAL_END, signPostID2, "arMetadataItemForTime", &unk_242B66C87, v16, 2u);
  }

  v14 = *(*&time.timescale + 40);
  _Block_object_dispose(&time, 8);

  return v14;
}

void __50__JFXARMetadataMediaReader_arMetadataItemForTime___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedARMetadata];
  v3 = v2;
  if (v2 && (objc_msgSend_timeRange(v2), time = *(a1 + 48), CMTimeRangeContainsTime(&range, &time)))
  {
    v4 = JFXLog_DebugMediaDataReader();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v8 = JFXLog_DebugMediaDataReader();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 32);
        *&range.start.value = *(a1 + 48);
        range.start.epoch = *(a1 + 64);
        Seconds = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v3);
        *&range.start.value = v47;
        range.start.epoch = v48;
        v43 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v3);
        CMTimeRangeGetEnd(&time, &range);
        v44 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = v41;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = Seconds;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v43;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v44;
        _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "%@ cached data found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v9 = JFXMediaDataReaderEventSignpostPointCategory(v6, v7);
    v10 = [*(a1 + 32) signPostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        v12 = *(a1 + 32);
        *&range.start.value = *(a1 + 48);
        range.start.epoch = *(a1 + 64);
        v13 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v3);
        *&range.start.value = v45;
        range.start.epoch = v46;
        v14 = CMTimeGetSeconds(&range.start);
        objc_msgSend_timeRange(v3);
        CMTimeRangeGetEnd(&time, &range);
        v15 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = v12;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = v13;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v14;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v15;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v9, OS_SIGNPOST_EVENT, v11, "arMetadataFoundInCache", "%@ found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v18 = JFXMediaDataReaderIntervalSignpostCategory(v16, v17);
    v19 = [*(a1 + 32) signPostID];
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        LOWORD(range.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v18, OS_SIGNPOST_INTERVAL_END, v20, "arMetadataItemForTime", &unk_242B66C87, &range, 2u);
      }
    }

    v21 = *(*(a1 + 40) + 8);
    v22 = v3;
    v23 = *(v21 + 40);
    *(v21 + 40) = v22;
  }

  else
  {
    v24 = [*(a1 + 32) reader];
    *&range.start.value = *(a1 + 48);
    range.start.epoch = *(a1 + 64);
    v23 = [v24 metadataForTime:&range];

    if (v23)
    {
      v27 = JFXMediaDataReaderIntervalSignpostCategory(v25, v26);
      v28 = [*(a1 + 32) signPostID];
      if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = v28;
        if (os_signpost_enabled(v27))
        {
          v30 = *(a1 + 32);
          *&range.start.value = *(a1 + 48);
          range.start.epoch = *(a1 + 64);
          v31 = CMTimeGetSeconds(&range.start);
          LODWORD(range.start.value) = 138412546;
          *(&range.start.value + 4) = v30;
          LOWORD(range.start.flags) = 2048;
          *(&range.start.flags + 2) = v31;
          _os_signpost_emit_with_name_impl(&dword_242A3B000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "decodingARMetadata", "%@ for time %f", &range, 0x16u);
        }
      }

      v32 = [*(a1 + 32) JFX_ARMetadataFromMetadataReaderItem:v23];
      v34 = JFXMediaDataReaderIntervalSignpostCategory(v32, v33);
      v35 = [*(a1 + 32) signPostID];
      if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = v35;
        if (os_signpost_enabled(v34))
        {
          LOWORD(range.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_242A3B000, v34, OS_SIGNPOST_INTERVAL_END, v36, "decodingARMetadata", &unk_242B66C87, &range, 2u);
        }
      }

      if (v32)
      {
        v37 = [JFXARMetadataMediaReaderItem alloc];
        objc_msgSend_timeRange(v23);
        v38 = [(JFXARMetadataMediaReaderItem *)v37 initWithARMetadata:v32 timeRange:&range];
        v39 = *(*(a1 + 40) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        [*(a1 + 32) setCachedARMetadata:*(*(*(a1 + 40) + 8) + 40)];
      }
    }
  }
}

- (id)JFX_ARMetadataFromMetadataReaderItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [identifier hasSuffix:s_JFXARMetadataClassName];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = objc_opt_class();
    data = [itemCopy data];
    v13 = 0;
    v10 = [v7 unarchivedObjectOfClass:v8 fromData:data error:&v13];
    v11 = v13;

    if (!v10 || v11)
    {
      [(JFXARMetadataMediaReader *)self setLastDecodeError:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__JFXARMetadataMediaReader_readableTimeRange__block_invoke;
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

__n128 __45__JFXARMetadataMediaReader_readableTimeRange__block_invoke(uint64_t a1)
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
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__JFXARMetadataMediaReader_isScrubbing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(synchronizationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __39__JFXARMetadataMediaReader_isScrubbing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScrubbing];
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__JFXARMetadataMediaReader_setIsScrubbing___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  scrubbingCopy = scrubbing;
  dispatch_async(synchronizationQueue, v6);
}

void __43__JFXARMetadataMediaReader_setIsScrubbing___block_invoke(uint64_t a1)
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
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__JFXARMetadataMediaReader_status__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __34__JFXARMetadataMediaReader_status__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 status];
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__JFXARMetadataMediaReader_error__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__JFXARMetadataMediaReader_error__block_invoke(uint64_t a1)
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
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__JFXARMetadataMediaReader_beginReadingAtTimeRange___block_invoke;
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

void __52__JFXARMetadataMediaReader_beginReadingAtTimeRange___block_invoke(uint64_t a1)
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
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__JFXARMetadataMediaReader_beginReading__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(synchronizationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __40__JFXARMetadataMediaReader_beginReading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 beginReading];
}

- (NSString)name
{
  reader = [(JFXARMetadataMediaReader *)self reader];
  name = [reader name];

  return name;
}

- (unint64_t)signPostID
{
  reader = [(JFXARMetadataMediaReader *)self reader];
  signPostID = [reader signPostID];

  return signPostID;
}

- (id)metadataForTime:(id *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  synchronizationQueue = [(JFXARMetadataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__JFXARMetadataMediaReader_metadataForTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(synchronizationQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __44__JFXARMetadataMediaReader_metadataForTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v3 = [v2 metadataForTime:&v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end