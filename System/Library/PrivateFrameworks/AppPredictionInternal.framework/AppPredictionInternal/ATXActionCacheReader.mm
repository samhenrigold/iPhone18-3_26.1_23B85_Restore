@interface ATXActionCacheReader
+ (unordered_map<NSString)getActionKeyToPredictionItemMapFromChunk:()ATXNSStringHash;
+ (void)_getActionKeyToPredictionItemMapFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
+ (void)_getExtraPredictionsFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
+ (void)_getIndexToPredictionItemMapWithChunk:(id)chunk withPredictionCount:(int64_t)count map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
- (ATXActionCacheReader)initWithChunks:(id)chunks;
- (ATXActionCacheReader)initWithData:(id)data;
- (ATXPredictionItem)predictionItemForAction:(SEL)action;
- (id).cxx_construct;
- (unordered_map<ATXAction)_getActionToIndexMap;
- (void)enumerateActionsAndPredictionItemsForConsumerSubtype:(unsigned __int8)subtype limit:(unint64_t)limit block:(id)block;
- (void)enumerateExtraPredictionItemsWithBlock:(id)block;
- (void)failAndLog:(id)log;
@end

@implementation ATXActionCacheReader

- (ATXActionCacheReader)initWithChunks:(id)chunks
{
  v15 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v13.receiver = self;
  v13.super_class = ATXActionCacheReader;
  v5 = [(ATXActionCacheClientReader *)&v13 initWithChunks:chunksCopy];
  if (v5)
  {
    v6 = [chunksCopy count];
    chunkCount = [(ATXActionCacheClientReader *)v5 chunkCount];
    if (v6 == chunkCount)
    {
      v8 = objc_autoreleasePoolPush();
      objc_msgSend__getActionToIndexMap(v5);
      std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__move_assign(&v5->_actionToIndexMap, buf);
      std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::~__hash_table(buf);
      v9 = [chunksCopy objectAtIndexedSubscript:2];
      [ATXActionCacheReader _getIndexToPredictionItemMapWithChunk:v9 withPredictionCount:v5->_actionToIndexMap.__table_.__size_ map:&v5->_predictionItems abGroup:&v5->_abGroup assetVersion:&v5->_assetVersion];

      v10 = [chunksCopy objectAtIndexedSubscript:3];
      [ATXActionCacheReader _getExtraPredictionsFromChunk:v10 map:&v5->_extraPredictionItems abGroup:0 assetVersion:0];

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v11 = __atxlog_handle_default(chunkCount);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        -[ATXActionCacheReader initWithChunks:].cold.1(buf, [chunksCopy count], -[ATXActionCacheClientReader chunkCount](v5, "chunkCount"), v11);
      }
    }
  }

  return v5;
}

- (ATXActionCacheReader)initWithData:(id)data
{
  v4 = ATXCacheFileSplitChunks();
  v5 = [(ATXActionCacheReader *)self initWithChunks:v4];

  return v5;
}

- (ATXPredictionItem)predictionItemForAction:(SEL)action
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = a4;
  v6 = std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::find<ATXAction * {__strong}>(&self->_actionToIndexMap.__table_.__bucket_list_.__ptr_, &v20);
  if (v6)
  {
    v7 = *(v6 + 6);
    begin = self->_predictionItems.__begin_;
    if (0x13A524387AC82261 * ((self->_predictionItems.__end_ - begin) >> 3) <= v7)
    {
      v13 = __atxlog_handle_default(v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [(ATXActionCacheReader *)v15 predictionItemForAction:buf, v13];
      }

      v16.i32[1] = -1059153344;
      *v16.i32 = -31337.0;
      retstr->key = 0;
      retstr->score = -31337.0;
      *&retstr->isMediumConfidenceForBlendingLayer = 0;
      v17 = vdupq_lane_s32(v16, 0);
      for (i = 16; i != 3328; i += 16)
      {
        *(&retstr->key + i) = v17;
      }
    }

    else
    {
      p_key = &begin[v7].key;
      retstr->key = *p_key;
      memcpy(&retstr->actionHash, p_key + 1, 0xCFEuLL);
    }
  }

  else
  {
    [(ATXActionCacheReader *)self failAndLog:v20];
    v10.i32[1] = -1059153344;
    *v10.i32 = -31337.0;
    retstr->key = 0;
    retstr->score = -31337.0;
    *&retstr->isMediumConfidenceForBlendingLayer = 0;
    v11 = vdupq_lane_s32(v10, 0);
    for (j = 16; j != 3328; j += 16)
    {
      *(&retstr->key + j) = v11;
    }
  }

  return result;
}

- (void)failAndLog:(id)log
{
  v62 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v47 = logCopy;
  if ([logCopy isEqualToAction:logCopy])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v40 = v5;
  v6 = [logCopy hash];
  if (v6 == [logCopy hash])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v41 = v7;
  bundleId = [logCopy bundleId];
  intent = [logCopy intent];
  _className = [intent _className];
  v10 = _className;
  v11 = @"No intent name";
  if (_className)
  {
    v11 = _className;
  }

  v43 = v11;

  userActivity = [logCopy userActivity];
  activityType = [userActivity activityType];
  v14 = activityType;
  v15 = @"No activity type";
  if (activityType)
  {
    v15 = activityType;
  }

  v44 = v15;

  next = self->_actionToIndexMap.__table_.__first_node_.__next_;
  if (next)
  {
    v17 = @"NO";
    do
    {
      if (!next[2])
      {
        v17 = @"YES";
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v17 = @"NO";
  }

  size = self->_actionToIndexMap.__table_.__size_;
  v18 = [(ATXActionCacheClientReader *)self actionsWithConsumerSubType:22 limit:0x7FFFFFFFLL];
  v38 = [v18 count];

  v19 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:1];
  v37 = [v19 count];

  v20 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:0];
  v36 = [v20 count];

  for (i = self->_actionToIndexMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v23 = __atxlog_handle_default(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(i + 6);
      bundleId2 = [*(i + 2) bundleId];
      intent2 = [logCopy intent];
      _className2 = [intent2 _className];
      v26 = _className2;
      if (_className2)
      {
        v27 = _className2;
      }

      else
      {
        v27 = @"No intent name";
      }

      userActivity2 = [logCopy userActivity];
      activityType2 = [userActivity2 activityType];
      v30 = activityType2;
      if (activityType2)
      {
        v31 = activityType2;
      }

      else
      {
        v31 = @"No activity type";
      }

      v32 = [*(i + 2) isEqual:v47];
      v33 = [*(i + 2) hash];
      *buf = 67110402;
      *v49 = v24;
      *&v49[4] = 2112;
      *&v49[6] = bundleId2;
      *&v49[14] = 2112;
      *&v49[16] = v27;
      *&v49[24] = 2112;
      *&v49[26] = v31;
      *&v49[34] = 1024;
      *&v49[36] = v32;
      *v50 = 2048;
      *&v50[2] = v33;
      _os_log_error_impl(&dword_2263AA000, v23, OS_LOG_TYPE_ERROR, "Action %d in _actionToIndexMap: bundleID: %@, Intent name: %@, activity type: %@, equal to action: %{BOOL}d, hash: %lu", buf, 0x36u);

      logCopy = v47;
    }
  }

  v34 = __atxlog_handle_default(v21);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    v35 = [logCopy hash];
    *buf = 138414850;
    *v49 = v40;
    *&v49[8] = 2112;
    *&v49[10] = v41;
    *&v49[18] = 2112;
    *&v49[20] = bundleId;
    *&v49[28] = 2112;
    *&v49[30] = v43;
    *&v49[38] = 2112;
    *v50 = v44;
    *&v50[8] = 2048;
    v51 = v35;
    v52 = 2048;
    v53 = size;
    v54 = 2112;
    v55 = v17;
    v56 = 2048;
    v57 = v38;
    v58 = 2048;
    v59 = v37;
    v60 = 2048;
    v61 = v36;
    _os_log_fault_impl(&dword_2263AA000, v34, OS_LOG_TYPE_FAULT, "Failed to find action in _secondStage. Self-equality, hash-equality: %@, %@, bundleID: %@, Intent name: %@, activity type: %@, hash: %lu, map items: %lu, nil in map: %@. lock, filtered, unfiltered: %lu %lu %lu", buf, 0x70u);
  }
}

- (void)enumerateExtraPredictionItemsWithBlock:(id)block
{
  blockCopy = block;
  p_extraPredictionItems = &self->_extraPredictionItems;
  begin = self->_extraPredictionItems.__begin_;
  for (i = p_extraPredictionItems->__end_; begin != i; ++begin)
  {
    v7 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, begin);
    objc_autoreleasePoolPop(v7);
  }
}

- (void)enumerateActionsAndPredictionItemsForConsumerSubtype:(unsigned __int8)subtype limit:(unint64_t)limit block:(id)block
{
  subtypeCopy = subtype;
  blockCopy = block;
  if (subtypeCopy == 22)
  {
    v9 = [(ATXActionCacheClientReader *)self actionsWithLimit:limit shouldFilterRestrictedAppsAndRecentEngagements:0];
    v10 = [(ATXActionCacheClientReader *)self lockscreenPredictionIndicesUpToLimit:limit];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke;
    v15[3] = &unk_27859C0C8;
    v11 = v9;
    v16 = v11;
    selfCopy = self;
    v18 = blockCopy;
    [v10 enumerateIndexesUsingBlock:v15];
  }

  else
  {
    v11 = [(ATXActionCacheClientReader *)self actionsWithConsumerSubType:subtypeCopy limit:limit];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke_29;
    v12[3] = &unk_27859C0F0;
    v12[4] = self;
    v13 = blockCopy;
    v14 = subtypeCopy;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

void __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke(uint64_t a1, unint64_t a2)
{
  v12[417] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v5 = v4;
  v6 = *(*(a1 + 40) + 64);
  if (0x13A524387AC82261 * ((*(*(a1 + 40) + 72) - v6) >> 3) <= a2)
  {
    v8 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 0x13A524387AC82261 * ((*(*(a1 + 40) + 72) - *(*(a1 + 40) + 64)) >> 3);
      LODWORD(v12[0]) = 138412802;
      *(v12 + 4) = v10;
      WORD2(v12[1]) = 2048;
      *(&v12[1] + 6) = a2;
      HIWORD(v12[2]) = 2048;
      v12[3] = v11;
      _os_log_fault_impl(&dword_2263AA000, v8, OS_LOG_TYPE_FAULT, "%@ - lockscreen prediction index (%lu) is out of range of _predictionItems (%li)", v12, 0x20u);
    }
  }

  else
  {
    v7 = (v6 + 3336 * a2);
    v12[0] = *v7;
    memcpy(&v12[1], v7 + 1, 0xCFEuLL);
    (*(*(a1 + 48) + 16))();
  }
}

void __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke_29(uint64_t a1, void *a2, unint64_t a3)
{
  v14[417] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 64);
  if (0x13A524387AC82261 * ((*(*(a1 + 32) + 72) - v7) >> 3) <= a3)
  {
    v9 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 48)];
      v13 = 0x13A524387AC82261 * ((*(*(a1 + 32) + 72) - *(*(a1 + 32) + 64)) >> 3);
      LODWORD(v14[0]) = 138413058;
      *(v14 + 4) = v11;
      WORD2(v14[1]) = 2112;
      *(&v14[1] + 6) = v12;
      HIWORD(v14[2]) = 2048;
      v14[3] = a3;
      LOWORD(v14[4]) = 2048;
      *(&v14[4] + 2) = v13;
      _os_log_fault_impl(&dword_2263AA000, v9, OS_LOG_TYPE_FAULT, "%@ - %@ prediction index (%lu) is out of range of _predictionItems (%li)", v14, 0x2Au);
    }
  }

  else
  {
    v8 = (v7 + 3336 * a3);
    v14[0] = *v8;
    memcpy(&v14[1], v8 + 1, 0xCFEuLL);
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)_getExtraPredictionsFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  v10 = *map;
  for (i = *(map + 1); i != v10; *i)
  {
    i -= 417;
  }

  *(map + 1) = v10;
  v12 = [MEMORY[0x277CEB558] stringKeyWithData:chunkCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__ATXActionCacheReader__getExtraPredictionsFromChunk_map_abGroup_assetVersion___block_invoke;
  v15[3] = &__block_descriptor_40_e39_v52__0_B8__NSString_16Q24f32r_f36B44B48l;
  v15[4] = map;
  [v12 enumerateApps:v15];
  if (group)
  {
    abGroup = [v12 abGroup];
    v14 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v12 assetVersion];
  }
}

void __79__ATXActionCacheReader__getExtraPredictionsFromChunk_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, const void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = *(a1 + 32);
  v12 = v10;
  memcpy(__dst, a6, sizeof(__dst));
  v14 = v11[1];
  v13 = v11[2];
  if (v14 >= v13)
  {
    v16 = 0x13A524387AC82261 * ((v14 - *v11) >> 3);
    if ((v16 + 1) > 0x13A524387AC822)
    {
      std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
    }

    v17 = 0x13A524387AC82261 * ((v13 - *v11) >> 3);
    v18 = 2 * v17;
    if (2 * v17 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x9D2921C3D6411)
    {
      v19 = 0x13A524387AC822;
    }

    else
    {
      v19 = v18;
    }

    v21[4] = v11;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(v11, v19);
    }

    v20 = 3336 * v16;
    v21[0] = 0;
    v21[1] = v20;
    v21[3] = 0;
    *v20 = v12;
    *(v20 + 8) = a5;
    memcpy((v20 + 16), __dst, 0xCF0uLL);
    *(v20 + 3328) = a2;
    *(v20 + 3332) = 0;
    v21[2] = v20 + 3336;
    std::vector<ATXPredictionItem>::__swap_out_circular_buffer(v11, v21);
    v15 = v11[1];
    std::__split_buffer<ATXPredictionItem>::~__split_buffer(v21);
  }

  else
  {
    *v14 = v12;
    *(v14 + 8) = a5;
    memcpy((v14 + 16), __dst, 0xCF0uLL);
    *(v14 + 3328) = a2;
    *(v14 + 3332) = 0;
    v15 = v14 + 3336;
  }

  v11[1] = v15;
}

+ (unordered_map<NSString)getActionKeyToPredictionItemMapFromChunk:()ATXNSStringHash
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  return [ATXActionCacheReader _getActionKeyToPredictionItemMapFromChunk:a4 map:retstr abGroup:0 assetVersion:0];
}

+ (void)_getActionKeyToPredictionItemMapFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::clear(map);
  v10 = [MEMORY[0x277CEB558] stringKeyWithData:chunkCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ATXActionCacheReader__getActionKeyToPredictionItemMapFromChunk_map_abGroup_assetVersion___block_invoke;
  v13[3] = &__block_descriptor_40_e39_v52__0_B8__NSString_16Q24f32r_f36B44B48l;
  v13[4] = map;
  [v10 enumerateApps:v13];
  if (group)
  {
    abGroup = [v10 abGroup];
    v12 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v10 assetVersion];
  }
}

void __91__ATXActionCacheReader__getActionKeyToPredictionItemMapFromChunk_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, void *a5, const void *a6)
{
  v15 = a4;
  v10 = *(a1 + 32);
  v11[0] = v15;
  v11[1] = a5;
  v13 = a2;
  v14 = 0;
  memcpy(v12, a6, sizeof(v12));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,ATXPredictionItem>(v10, &v15, &v15, v11);
}

+ (void)_getIndexToPredictionItemMapWithChunk:(id)chunk withPredictionCount:(int64_t)count map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  std::vector<ATXPredictionItem>::resize(map, count);
  v13 = [MEMORY[0x277CEB558] numberKeyWithData:chunkCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__ATXActionCacheReader__getIndexToPredictionItemMapWithChunk_withPredictionCount_map_abGroup_assetVersion___block_invoke;
  v16[3] = &__block_descriptor_56_e39_v52__0_B8__NSNumber_16Q24f32r_f36B44B48l;
  v16[4] = count;
  v16[5] = map;
  v16[6] = self;
  [v13 enumerateApps:v16];
  if (group)
  {
    abGroup = [v13 abGroup];
    v15 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v13 assetVersion];
  }
}

void __107__ATXActionCacheReader__getIndexToPredictionItemMapWithChunk_withPredictionCount_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, const void *a6, char a7, char a8)
{
  v24[415] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = [v14 integerValue];
  v16 = v15;
  if (v15 >= *(a1 + 32) || v15 >= (0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3)))
  {
    v20 = __atxlog_handle_default(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = NSStringFromClass(*(a1 + 48));
      v22 = *(a1 + 32);
      v23 = 0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3);
      LODWORD(v24[0]) = 138413058;
      *(v24 + 4) = v21;
      WORD2(v24[1]) = 2048;
      *(&v24[1] + 6) = v22;
      HIWORD(v24[2]) = 2048;
      v24[3] = v16;
      LOWORD(v24[4]) = 2048;
      *(&v24[4] + 2) = v23;
      _os_log_fault_impl(&dword_2263AA000, v20, OS_LOG_TYPE_FAULT, "%@ - feedback data shouldn't have data which isn't included in the prediction set. (count: %li, index: %li, map size: %li)", v24, 0x2Au);
    }
  }

  else
  {
    memcpy(v24, a6, 0xCF0uLL);
    v17 = **(a1 + 40);
    if (0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - v17) >> 3) <= v16)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v18 = v17 + 3336 * v16;
    v19 = *v18;
    *v18 = &stru_2839A6058;

    *(v18 + 8) = a5;
    memcpy((v18 + 16), v24, 0xCF0uLL);
    *(v18 + 3328) = a2;
    *(v18 + 3332) = a7;
    *(v18 + 3333) = a8;
  }
}

- (unordered_map<ATXAction)_getActionToIndexMap
{
  v16 = *MEMORY[0x277D85DE8];
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:0];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        predictedItem = [*(*(&v10 + 1) + 8 * v7) predictedItem];
        std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__emplace_unique_key_args<ATXAction * {__strong},ATXAction * {__strong},long &>(retstr, &predictedItem, &predictedItem, &v14);

        ++v14;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 14) = 1065353216;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

- (void)initWithChunks:(uint64_t)a3 .cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "We were passed data with %lu chunks but expected %lu", buf, 0x16u);
}

- (void)predictionItemForAction:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%@ - Index return from _actionToIndexMap is out of range of _secondStage.", buf, 0xCu);
}

@end