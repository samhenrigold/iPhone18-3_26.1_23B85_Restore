@interface CSKeywordAnalyzerNDEAPIResult
- (CSKeywordAnalyzerNDEAPIResult)init;
- (CSKeywordAnalyzerNDEAPIResult)initWithBlob:(id)blob isEarlyDetected:(BOOL)detected;
- (NSDictionary)dictionary;
@end

@implementation CSKeywordAnalyzerNDEAPIResult

- (NSDictionary)dictionary
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"samples_fed";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_samplesFed];
  v13[0] = v3;
  v12[1] = @"best_start";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestStart];
  v13[1] = v4;
  v12[2] = @"best_end";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestEnd];
  v13[2] = v5;
  v12[3] = @"best_score";
  *&v6 = self->_bestScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v13[3] = v7;
  v12[4] = @"is_secondchance";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSecondChance];
  v13[4] = v8;
  v12[5] = @"isEarlyDetect";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEarlyDetect];
  v13[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

- (CSKeywordAnalyzerNDEAPIResult)initWithBlob:(id)blob isEarlyDetected:(BOOL)detected
{
  blobCopy = blob;
  v12.receiver = self;
  v12.super_class = CSKeywordAnalyzerNDEAPIResult;
  v7 = [(CSKeywordAnalyzerNDEAPIResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (blobCopy)
    {
      bytes = [blobCopy bytes];
      *&v10 = *bytes;
      *(&v10 + 1) = HIDWORD(*bytes);
      *&v8->_samplesFed = v10;
      v8->_bestEnd = *(bytes + 8);
      v8->_bestScore = *(bytes + 12);
      v8->_isSecondChance = *(bytes + 16);
      v8->_isEarlyDetect = detected;
    }

    else
    {
      v7->_bestScore = -1000000.0;
    }
  }

  return v8;
}

- (CSKeywordAnalyzerNDEAPIResult)init
{
  v3.receiver = self;
  v3.super_class = CSKeywordAnalyzerNDEAPIResult;
  result = [(CSKeywordAnalyzerNDEAPIResult *)&v3 init];
  if (result)
  {
    result->_bestScore = -1000000.0;
  }

  return result;
}

@end