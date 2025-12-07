@interface SXFullscreenVideoPlaybackManager
- (SXFullscreenVideoPlaybackManager)init;
- (id)addCandidate:(id *)result;
- (id)didLayoutForSize:(id *)result;
- (id)didTransitionToSize:(id *)result;
- (id)enterFullscreenIfNeeded;
- (id)removeCandidate:(id *)result;
- (uint64_t)willLayoutAndTransitionToSize:(uint64_t)result;
@end

@implementation SXFullscreenVideoPlaybackManager

- (SXFullscreenVideoPlaybackManager)init
{
  v6.receiver = self;
  v6.super_class = SXFullscreenVideoPlaybackManager;
  v2 = [(SXFullscreenVideoPlaybackManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    candidates = v2->_candidates;
    v2->_candidates = v3;
  }

  return v2;
}

- (id)addCandidate:(id *)result
{
  if (result)
  {
    return [result[2] addObject:a2];
  }

  return result;
}

- (id)removeCandidate:(id *)result
{
  if (result)
  {
    return [result[2] removeObject:a2];
  }

  return result;
}

- (id)enterFullscreenIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    memset(v4, 0, sizeof(v4));
    v2 = result[2];
    if ([v2 countByEnumeratingWithState:v4 objects:v5 count:16])
    {
      v3 = **(&v4[0] + 1);
      if ([**(&v4[0] + 1) canEnterFullscreen])
      {
        [v3 enterFullscreen];
      }
    }

    return [v1[2] removeAllObjects];
  }

  return result;
}

- (uint64_t)willLayoutAndTransitionToSize:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = 257;
  }

  return result;
}

- (id)didTransitionToSize:(id *)result
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1 && (*(result + 9) & 1) == 0)
    {
      result = [(SXFullscreenVideoPlaybackManager *)result enterFullscreenIfNeeded];
    }

    *(v1 + 8) = 0;
  }

  return result;
}

- (id)didLayoutForSize:(id *)result
{
  if (result)
  {
    v1 = result;
    if (*(result + 9) == 1 && (result[1] & 1) == 0)
    {
      result = [(SXFullscreenVideoPlaybackManager *)result enterFullscreenIfNeeded];
    }

    *(v1 + 9) = 0;
  }

  return result;
}

@end