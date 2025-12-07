@interface CSNovDetectorResult
- (CSNovDetectorResult)initWithResult:(id)result;
- (NSDictionary)dictionary;
@end

@implementation CSNovDetectorResult

- (NSDictionary)dictionary
{
  v14[7] = *MEMORY[0x1E69E9840];
  v13[0] = @"samples_fed";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sampleFed];
  v14[0] = v3;
  v13[1] = @"best_phrase";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestPhrase];
  v14[1] = v4;
  v13[2] = @"best_start";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestStart];
  v14[2] = v5;
  v13[3] = @"best_end";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bestEnd];
  v14[3] = v6;
  v13[4] = @"best_score";
  *&v7 = self->_bestScore;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v14[4] = v8;
  v13[5] = @"early_warning";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_earlyWarning];
  v14[5] = v9;
  v13[6] = @"is_rescoring";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRescoring];
  v14[6] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v11;
}

- (CSNovDetectorResult)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = CSNovDetectorResult;
  v5 = [(CSNovDetectorResult *)&v8 init];
  if (v5)
  {
    v5->_sampleFed = [resultCopy sampleFed];
    v5->_bestPhrase = [resultCopy bestPhrase];
    v5->_bestStart = [resultCopy bestStart];
    v5->_bestEnd = [resultCopy bestEnd];
    [resultCopy bestScore];
    v5->_bestScore = v6;
    v5->_earlyWarning = [resultCopy earlyWarning];
  }

  return v5;
}

@end