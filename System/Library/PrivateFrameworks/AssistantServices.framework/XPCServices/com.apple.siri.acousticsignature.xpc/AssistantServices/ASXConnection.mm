@interface ASXConnection
- (id)_extractor;
- (void)appendAcousticData:(id)data sampleCount:(int)count sampleRate:(int)rate;
- (void)getSignature:(id)signature;
- (void)reset;
- (void)setSampleRate:(int)rate;
@end

@implementation ASXConnection

- (void)reset
{
  _extractor = [(ASXConnection *)self _extractor];
  [_extractor reset];
}

- (void)getSignature:(id)signature
{
  signatureCopy = signature;
  _extractor = [(ASXConnection *)self _extractor];
  currentSignature = [_extractor currentSignature];

  if (signatureCopy)
  {
    signatureCopy[2](signatureCopy, currentSignature);
  }
}

- (void)appendAcousticData:(id)data sampleCount:(int)count sampleRate:(int)rate
{
  v5 = *&rate;
  v6 = *&count;
  dataCopy = data;
  _extractor = [(ASXConnection *)self _extractor];
  if (v5 >= 1)
  {
    [_extractor setSampleRate:v5];
  }

  _extractor2 = [(ASXConnection *)self _extractor];
  [_extractor2 appendAcousticData:dataCopy sampleCount:v6];
}

- (void)setSampleRate:(int)rate
{
  v3 = *&rate;
  _extractor = [(ASXConnection *)self _extractor];
  [_extractor setSampleRate:v3];
}

- (id)_extractor
{
  extractor = self->_extractor;
  if (!extractor)
  {
    v4 = objc_alloc_init(ASXExtractor);
    v5 = self->_extractor;
    self->_extractor = v4;

    extractor = self->_extractor;
  }

  return extractor;
}

@end