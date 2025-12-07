@interface _LTServerEndpointerFeatures
- (_LTServerEndpointerFeatures)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTServerEndpointerFeatures

- (_LTServerEndpointerFeatures)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _LTServerEndpointerFeatures;
  v5 = [(_LTServerEndpointerFeatures *)&v15 init];
  if (v5)
  {
    v5->_wordCount = [coderCopy decodeIntegerForKey:@"wordCount"];
    v5->_trailingSilenceDuration = [coderCopy decodeIntegerForKey:@"trailingSilenceDuration"];
    [coderCopy decodeDoubleForKey:@"eosLikelihood"];
    v5->_eosLikelihood = v6;
    v7 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"pauseCounts"];
    pauseCounts = v5->_pauseCounts;
    v5->_pauseCounts = v10;

    objc_storeStrong(&v5->_pauseCounts, v10);
    [coderCopy decodeDoubleForKey:@"silencePosterior"];
    v5->_silencePosterior = v12;
    v5->_processedAudioDurationInMilliseconds = [coderCopy decodeIntegerForKey:@"processedAudioDurationInMilliseconds"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  wordCount = self->_wordCount;
  coderCopy = coder;
  [coderCopy encodeInteger:wordCount forKey:@"wordCount"];
  [coderCopy encodeInteger:self->_trailingSilenceDuration forKey:@"trailingSilenceDuration"];
  [coderCopy encodeDouble:@"eosLikelihood" forKey:self->_eosLikelihood];
  [coderCopy encodeObject:self->_pauseCounts forKey:@"pauseCounts"];
  [coderCopy encodeDouble:@"silencePosterior" forKey:self->_silencePosterior];
  [coderCopy encodeInteger:self->_processedAudioDurationInMilliseconds forKey:@"processedAudioDurationInMilliseconds"];
}

@end