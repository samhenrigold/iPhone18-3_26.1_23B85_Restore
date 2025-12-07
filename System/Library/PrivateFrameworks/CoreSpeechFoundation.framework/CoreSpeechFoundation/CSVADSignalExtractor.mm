@interface CSVADSignalExtractor
- (BOOL)hasSpeechDetectedFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount;
- (CSVADSignalExtractor)initWithToken:(id)token delegate:(id)delegate;
- (CSVADSignalExtractorDelegate)delegate;
- (void)processBufferSampleWithIndex:(unint64_t)index startSampleCount:(unint64_t)count isSampleRepresentSpeech:(BOOL)speech vadToSpeechRatio:(unint64_t)ratio;
- (void)reset;
@end

@implementation CSVADSignalExtractor

- (CSVADSignalExtractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processBufferSampleWithIndex:(unint64_t)index startSampleCount:(unint64_t)count isSampleRepresentSpeech:(BOOL)speech vadToSpeechRatio:(unint64_t)ratio
{
  v25 = *MEMORY[0x1E69E9840];
  if (!speech || self->_isSpeechDetected)
  {
    if (self->_isSpeechDetected && !speech)
    {
      self->_isSpeechDetected = 0;
      v13 = count + ratio * index;
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "[CSVADSignalExtractor processBufferSampleWithIndex:startSampleCount:isSampleRepresentSpeech:vadToSpeechRatio:]";
        v21 = 2050;
        v22 = v13;
        v23 = 2050;
        countCopy2 = count;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Detected speech end at %{public}llu (startSampleCount = %{public}llu)", &v19, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_delegate);
        [v17 vadSignalExtractor:self didDetectedSpeechEndAtSampleCount:v13];
      }

      v18 = [[CSFRangeUtils alloc] initWithStartPoint:self->_lastSpeechStartSampleCount endPoint:v13];
      [(NSMutableArray *)self->_speechDetectedRanges addObject:v18];
      self->_lastSpeechStartSampleCount = 0;
    }
  }

  else
  {
    *&self->_hasSpeechEverDetected = 257;
    v8 = count + ratio * index;
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[CSVADSignalExtractor processBufferSampleWithIndex:startSampleCount:isSampleRepresentSpeech:vadToSpeechRatio:]";
      v21 = 2050;
      v22 = v8;
      v23 = 2050;
      countCopy2 = count;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Detected speech start at %{public}llu (startSampleCount = %{public}llu)", &v19, 0x20u);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 vadSignalExtractor:self didDetectedSpeechStartAtSampleCount:v8];
    }

    self->_lastSpeechStartSampleCount = v8;
  }
}

- (BOOL)hasSpeechDetectedFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = [[CSFRangeUtils alloc] initWithStartPoint:count endPoint:sampleCount];
  if (!v6)
  {
    goto LABEL_14;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_speechDetectedRanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 hasIntersectionWithRange:{v6, v20}])
        {
          v15 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v12 description];
            v18 = [(CSFRangeUtils *)v6 description];
            *buf = 136315650;
            v25 = "[CSVADSignalExtractor hasSpeechDetectedFromStartSampleCount:toEndSampleCount:]";
            v26 = 2114;
            v27 = v17;
            v28 = 2114;
            v29 = v18;
            _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Intersection detected : cached(%{public}@) vs. input(%{public}@)", buf, 0x20u);
          }

          goto LABEL_18;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  lastSpeechStartSampleCount = self->_lastSpeechStartSampleCount;
  if (lastSpeechStartSampleCount - 1 < sampleCount || !lastSpeechStartSampleCount && ![(NSMutableArray *)self->_speechDetectedRanges count]&& self->_hasSpeechEverDetected)
  {
LABEL_18:
    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  return v14;
}

- (void)reset
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVADSignalExtractor reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  *&self->_hasSpeechEverDetected = 0;
  self->_lastSpeechStartSampleCount = 0;
  [(NSMutableArray *)self->_speechDetectedRanges removeAllObjects];
}

- (CSVADSignalExtractor)initWithToken:(id)token delegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = CSVADSignalExtractor;
  v8 = [(CSVADSignalExtractor *)&v14 init];
  v9 = v8;
  if (v8)
  {
    *&v8->_hasSpeechEverDetected = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    array = [MEMORY[0x1E695DF70] array];
    speechDetectedRanges = v9->_speechDetectedRanges;
    v9->_speechDetectedRanges = array;

    v9->_lastSpeechStartSampleCount = 0;
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[CSVADSignalExtractor initWithToken:delegate:]";
      v17 = 2114;
      v18 = tokenCopy;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@", buf, 0x16u);
    }
  }

  return v9;
}

@end