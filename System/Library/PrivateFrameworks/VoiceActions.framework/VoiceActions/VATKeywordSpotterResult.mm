@interface VATKeywordSpotterResult
- (VATKeywordSpotterResult)initWithKeyword:(id)keyword cost:(float)cost threshold:(float)threshold start:(int)start end:(int)end duration:(int)duration;
- (id)toJSON;
@end

@implementation VATKeywordSpotterResult

- (id)toJSON
{
  v34[6] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v34[0] = self->_keywordText;
  v33[0] = @"keyword";
  v33[1] = @"threshold";
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", self->_threshold];
  v34[1] = v4;
  v33[2] = @"cost";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", self->_cost];
  v34[2] = v5;
  v33[3] = @"start";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_start];
  v34[3] = v6;
  v33[4] = @"end";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_end];
  v34[4] = v7;
  v33[5] = @"duration";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_duration];
  v34[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];
  v10 = [v3 dictionaryWithDictionary:v9];

  if (!self->__isNbestEntry)
  {
    if (self->_audioFileURL)
    {
      v31[0] = @"audioStart";
      v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioStart];
      v32[0] = v11;
      v31[1] = @"audioEnd";
      v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioEnd];
      v32[1] = v12;
      v31[2] = @"audioDuration";
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", *&self->_audioDuration];
      v32[2] = v13;
      v31[3] = @"audioFileURL";
      audioFileURL = self->_audioFileURL;
      if (audioFileURL)
      {
        path = [(NSURL *)self->_audioFileURL path];
      }

      else
      {
        path = &stru_2881908A8;
      }

      v32[3] = path;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
      if (audioFileURL)
      {
      }

      [v10 addEntriesFromDictionary:v16];
    }

    secondPassDuration = self->_secondPassDuration;
    if (secondPassDuration > 0.0)
    {
      if (self->_secondPassResult)
      {
        secondPassResult = self->_secondPassResult;
      }

      else
      {
        secondPassResult = @"<nil>";
      }

      v29[0] = @"secondPassResult";
      v29[1] = @"secondPassDuration";
      v30[0] = secondPassResult;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", *&secondPassDuration];
      v30[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

      [v10 addEntriesFromDictionary:v20];
    }
  }

  v26 = 0;
  v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:11 error:&v26];
  v22 = v26;
  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
  }

  else
  {
    v24 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v22;
      _os_log_error_impl(&dword_2721E4000, v24, OS_LOG_TYPE_ERROR, "Error serializing VATKeywordSpotterResult: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (VATKeywordSpotterResult)initWithKeyword:(id)keyword cost:(float)cost threshold:(float)threshold start:(int)start end:(int)end duration:(int)duration
{
  keywordCopy = keyword;
  v19.receiver = self;
  v19.super_class = VATKeywordSpotterResult;
  v16 = [(VATKeywordSpotterResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_keywordText, keyword);
    v17->_threshold = threshold;
    v17->_cost = cost;
    v17->_start = start;
    v17->_end = end;
    v17->_duration = duration;
  }

  return v17;
}

@end