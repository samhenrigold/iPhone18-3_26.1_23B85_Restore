@interface BLSHPseudoFlipbook
- (BLSHPseudoFlipbook)init;
- (BLSHRenderedFlipbookFrame)frameOnGlass;
- (BLSHRenderedFlipbookFrame)lastRenderedFrame;
- (BOOL)cachesFramesOnExit;
- (BOOL)is1HzFlipbook;
- (BOOL)isPowerSavingEnabled;
- (NSArray)activeFrames;
- (id)cancelAllFramesWithError:(id *)error;
- (unint64_t)memoryUsage;
- (void)collect;
- (void)init;
- (void)invalidate;
- (void)lock_cullExpiredFrames;
- (void)purge;
- (void)renderFrameForPresentation:(id)presentation dateSpecifier:(id)specifier onRenderBegin:(id)begin onRenderComplete:(id)complete;
- (void)set1HzFlipbook:(BOOL)flipbook;
- (void)setCachesFramesOnExit:(BOOL)exit;
- (void)setPowerSavingEnabled:(BOOL)enabled;
@end

@implementation BLSHPseudoFlipbook

- (BLSHPseudoFlipbook)init
{
  v8.receiver = self;
  v8.super_class = BLSHPseudoFlipbook;
  v2 = [(BLSHPseudoFlipbook *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    lock_activeFrames = v3->_lock_activeFrames;
    v3->_lock_activeFrames = array;

    v3->_lock_nextframeID = 1;
    v6 = bls_flipbook_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHPseudoFlipbook *)v3 init];
    }
  }

  return v3;
}

- (BLSHRenderedFlipbookFrame)frameOnGlass
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = mach_continuous_time();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_lock_activeFrames;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 presentationTime] <= v3)
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BLSHRenderedFlipbookFrame)lastRenderedFrame
{
  activeFrames = [(BLSHPseudoFlipbook *)self activeFrames];
  lastObject = [activeFrames lastObject];

  return lastObject;
}

- (NSArray)activeFrames
{
  os_unfair_lock_lock(&self->_lock);
  [(BLSHPseudoFlipbook *)self lock_cullExpiredFrames];
  v3 = [(NSMutableArray *)self->_lock_activeFrames copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)memoryUsage
{
  v15 = *MEMORY[0x277D85DE8];
  activeFrames = [(BLSHPseudoFlipbook *)self activeFrames];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [activeFrames countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(activeFrames);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 memoryUsage];
        }
      }

      v4 = [activeFrames countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPowerSavingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_powerSavingEnabled = self->_lock_powerSavingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_powerSavingEnabled;
}

- (void)setPowerSavingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_powerSavingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)is1HzFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbook = self->_lock_1HzFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_1HzFlipbook;
}

- (void)set1HzFlipbook:(BOOL)flipbook
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_1HzFlipbook = flipbook;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)cachesFramesOnExit
{
  os_unfair_lock_lock(&self->_lock);
  lock_cachesFramesOnExit = self->_lock_cachesFramesOnExit;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cachesFramesOnExit;
}

- (void)setCachesFramesOnExit:(BOOL)exit
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cachesFramesOnExit = exit;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)cancelAllFramesWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v6 = mach_continuous_time();
  lock_activeFrames = self->_lock_activeFrames;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__BLSHPseudoFlipbook_cancelAllFramesWithError___block_invoke;
  v11[3] = &__block_descriptor_40_e44_B32__0___BLSHRenderedFlipbookFrame__8Q16_B24l;
  v11[4] = v6;
  v8 = [(NSMutableArray *)lock_activeFrames indexOfObjectWithOptions:2 passingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_lock_activeFrames objectAtIndex:v8];
  }

  [(NSMutableArray *)self->_lock_activeFrames removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (!error)
  {
    [(BLSHPseudoFlipbook *)a2 cancelAllFramesWithError:?];
  }

  *error = 0;

  return v9;
}

- (void)collect
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[self activeFrames] count] == 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(self);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)purge
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[self activeFrames] count] == 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(self);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_activeFrames removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)lock_cullExpiredFrames
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = mach_continuous_time();
    v3 = *(v1 + 2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__BLSHPseudoFlipbook_lock_cullExpiredFrames__block_invoke;
    v7[3] = &__block_descriptor_40_e44_B32__0___BLSHRenderedFlipbookFrame__8Q16_B24l;
    v7[4] = v2;
    result = [v3 indexOfObjectWithOptions:2 passingTest:v7];
    if (result && result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = result;
      v6 = bls_flipbook_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v9 = v1;
        v10 = 2048;
        v11 = v5;
        _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p culling (%lu) frames", buf, 0x16u);
      }

      return [*(v1 + 2) removeObjectsInRange:{0, v5}];
    }
  }

  return result;
}

- (void)renderFrameForPresentation:(id)presentation dateSpecifier:(id)specifier onRenderBegin:(id)begin onRenderComplete:(id)complete
{
  completeCopy = complete;
  beginCopy = begin;
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  [(BLSHPseudoFlipbook *)self lock_cullExpiredFrames];
  v12 = [BLSHPseudoFlipbookFrame alloc];
  presentationDate = [specifierCopy presentationDate];
  bls_machContinuousTime = [presentationDate bls_machContinuousTime];
  ++self->_lock_nextframeID;
  v15 = [BLSHPseudoFlipbookFrame initWithPresentationTime:v12 frameId:"initWithPresentationTime:frameId:specifier:memoryUsage:" specifier:bls_machContinuousTime memoryUsage:?];

  [(NSMutableArray *)self->_lock_activeFrames addObject:v15];
  os_unfair_lock_unlock(&self->_lock);
  beginCopy[2](beginCopy);

  completeCopy[2](completeCopy, v15, 0);
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  selfCopy = self;
  v4 = 2114;
  selfCopy2 = self;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p created %{public}@", &v2, 0x16u);
}

- (void)cancelAllFramesWithError:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"error != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end