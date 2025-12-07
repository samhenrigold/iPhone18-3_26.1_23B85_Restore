@interface ARCoachingSessionCache
- (ARCoachingSessionCache)init;
- (BOOL)hasAnyPlane:(id)plane;
- (BOOL)hasHorizontalPlane:(id)plane;
- (BOOL)hasVerticalPlane:(id)plane;
- (void)anchorsAdded:(id)added;
- (void)anchorsRemoved:(id)removed;
- (void)clear;
- (void)initializePlaneCache:(id)cache;
- (void)removeFromPlaneCache:(id)cache;
- (void)sessionChanged;
- (void)updatePlaneCache:(id)cache;
@end

@implementation ARCoachingSessionCache

- (ARCoachingSessionCache)init
{
  v5.receiver = self;
  v5.super_class = ARCoachingSessionCache;
  v2 = [(ARCoachingSessionCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ARCoachingSessionCache *)v2 clear];
  }

  return v3;
}

- (void)clear
{
  self->_planeCount = 0;
  self->_horizontalPlaneCount = 0;
  self->_planeCacheInitialized = 0;
  self->_verticalPlaneCount = 0;
}

- (void)anchorsAdded:(id)added
{
  if (self->_planeCacheInitialized)
  {
    [(ARCoachingSessionCache *)self updatePlaneCache:added];
  }
}

- (void)anchorsRemoved:(id)removed
{
  if (self->_planeCacheInitialized)
  {
    [(ARCoachingSessionCache *)self removeFromPlaneCache:removed];
  }
}

- (void)sessionChanged
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Clearing cached anchors info after session change", &v6, 0x16u);
  }

  [(ARCoachingSessionCache *)self clear];
}

- (BOOL)hasAnyPlane:(id)plane
{
  v15 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  v5 = planeCopy;
  if (planeCopy)
  {
    if (!self->_planeCacheInitialized)
    {
      v6 = _ARLogCoaching(planeCopy);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v11 = 138543618;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for any planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v5];
    }

    v9 = self->_planeCount > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasHorizontalPlane:(id)plane
{
  v15 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  v5 = planeCopy;
  if (planeCopy)
  {
    if (!self->_planeCacheInitialized)
    {
      v6 = _ARLogCoaching(planeCopy);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v11 = 138543618;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for horizontal planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v5];
    }

    v9 = self->_horizontalPlaneCount > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasVerticalPlane:(id)plane
{
  v15 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  v5 = planeCopy;
  if (planeCopy)
  {
    if (!self->_planeCacheInitialized)
    {
      v6 = _ARLogCoaching(planeCopy);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v11 = 138543618;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for vertical planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v5];
    }

    v9 = self->_verticalPlaneCount > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initializePlaneCache:(id)cache
{
  anchors = [cache anchors];
  [(ARCoachingSessionCache *)self updatePlaneCache:anchors];

  self->_planeCacheInitialized = 1;
}

- (void)updatePlaneCache:(id)cache
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ARCoachingSessionCache_updatePlaneCache___block_invoke;
  v3[3] = &unk_278BCD3C8;
  v3[4] = self;
  ARCoachingEnumeratePlaneAnchors(cache, v3);
}

void *__43__ARCoachingSessionCache_updatePlaneCache___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(a1 + 32) + 8);
  result = [a2 alignment];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  ++*(*(a1 + 32) + v4);
  return result;
}

- (void)removeFromPlaneCache:(id)cache
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ARCoachingSessionCache_removeFromPlaneCache___block_invoke;
  v3[3] = &unk_278BCD3C8;
  v3[4] = self;
  ARCoachingEnumeratePlaneAnchors(cache, v3);
}

void *__47__ARCoachingSessionCache_removeFromPlaneCache___block_invoke(uint64_t a1, void *a2)
{
  --*(*(a1 + 32) + 8);
  result = [a2 alignment];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  --*(*(a1 + 32) + v4);
  return result;
}

@end