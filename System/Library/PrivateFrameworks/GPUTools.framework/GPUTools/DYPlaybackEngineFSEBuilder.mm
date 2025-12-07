@interface DYPlaybackEngineFSEBuilder
- (DYPlaybackEngineFSEBuilder)init;
- (DYPlaybackEngineFSEBuilder)initWithPlaybackEngineCache:(void *)cache;
- (void)performPreVisitActions;
- (void)visitCaptureStore:(id)store;
@end

@implementation DYPlaybackEngineFSEBuilder

- (DYPlaybackEngineFSEBuilder)init
{
  [(DYPlaybackEngineFSEBuilder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYPlaybackEngineFSEBuilder)initWithPlaybackEngineCache:(void *)cache
{
  v6.receiver = self;
  v6.super_class = DYPlaybackEngineFSEBuilder;
  result = [(DYCaptureVisitor *)&v6 init];
  if (result)
  {
    result->_cache = cache;
    v5 = result;
    [(DYInOrderInstructionFilesVisitor *)result setVisitDeltaFiles:1];
    return v5;
  }

  return result;
}

- (void)visitCaptureStore:(id)store
{
  self->_store = store;
  v6.receiver = self;
  v6.super_class = DYPlaybackEngineFSEBuilder;
  [(DYInOrderInstructionFilesVisitor *)&v6 visitCaptureStore:?];
  self->_store = 0;
  cache = self->_cache;
  v5 = *cache;
  if (cache[3] != *cache)
  {
    if (cache[4] != v5)
    {
      return;
    }

LABEL_5:
    cache[4] = cache[1];
    return;
  }

  cache[3] = cache[1];
  if (cache[4] == v5)
  {
    goto LABEL_5;
  }
}

- (void)performPreVisitActions
{
  v3 = [(NSArray *)self->super._initialPhaseFiles count];
  v4 = [(NSArray *)self->super._captureFiles count]+ v3;
  v5 = v4 + [(NSArray *)self->super._deltaFiles count];
  if (v5 > (*(self->_cache + 2) - *self->_cache) >> 3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  cache = self->_cache;
  v7 = *cache;
  cache[3] = *cache;
  cache[4] = v7;
}

@end