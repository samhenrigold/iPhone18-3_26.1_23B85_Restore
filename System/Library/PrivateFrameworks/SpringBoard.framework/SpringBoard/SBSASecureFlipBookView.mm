@interface SBSASecureFlipBookView
- (BOOL)transitionToState:(id)state completion:(id)completion;
- (CGRect)_flipBookUserInfoFrame;
- (CGRect)nominalFrame;
- (NSString)state;
- (SBSASecureFlipBookView)initWithSecureFlipBookName:(id)name;
- (SBSASecureFlipBookView)initWithSecureFlipBookNameAndFallbacks:(id)fallbacks;
- (double)_lastTargetTimestamp;
- (id)_flipBookUserInfo;
- (id)_flipBookUserInfoComponentName;
- (id)_flipBookUserInfoInitialStateName;
- (id)_flipBookUserInfoSecureSequenceMap;
- (int64_t)_flipBookUserInfoComponentCount;
- (int64_t)_flipBookUserInfoComponentIndex;
- (void)_tick:(id)_tick;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBSASecureFlipBookView

- (SBSASecureFlipBookView)initWithSecureFlipBookName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = MEMORY[0x277CBEA60];
  nameCopy2 = name;
  v6 = [v4 arrayWithObjects:&nameCopy count:1];

  v7 = [(SBSASecureFlipBookView *)self initWithSecureFlipBookNameAndFallbacks:v6, nameCopy, v10];
  return v7;
}

- (SBSASecureFlipBookView)initWithSecureFlipBookNameAndFallbacks:(id)fallbacks
{
  v52 = *MEMORY[0x277D85DE8];
  fallbacksCopy = fallbacks;
  v44.receiver = self;
  v44.super_class = SBSASecureFlipBookView;
  v5 = [(SBSASecureFlipBookView *)&v44 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    firstObject = [fallbacksCopy firstObject];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = fallbacksCopy;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v39 = firstObject;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [MEMORY[0x277CD9F88] secureFlipBookWithType:v12];
          secureFlipBookLayer = v5->_secureFlipBookLayer;
          v5->_secureFlipBookLayer = v13;

          if (v5->_secureFlipBookLayer)
          {
            firstObject2 = [v7 firstObject];
            v16 = [v12 isEqualToString:firstObject2];
            v17 = v16;
            v18 = SBLogSystemApertureSecureFlipBookElements(v16);
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              if (v19)
              {
                *buf = 134218242;
                v46 = v5;
                v47 = 2114;
                v48 = firstObject2;
                _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> Loaded flipbook named: %{public}@", buf, 0x16u);
              }

              firstObject = v39;
            }

            else
            {
              if (v19)
              {
                *buf = 134218498;
                v46 = v5;
                v47 = 2114;
                v48 = firstObject2;
                v49 = 2114;
                v50 = v12;
                _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> Unable to load flipbook named: %{public}@; Loaded fallback instead: %{public}@", buf, 0x20u);
              }

              firstObject = v12;
              v18 = v39;
            }

            goto LABEL_20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      firstObject = v39;
    }

LABEL_20:

    objc_storeStrong(&v5->_flipBookName, firstObject);
    v5->_lastTargetTimestamp = 0.0;
    v5->_lastTargetTimestampValid = 0;
    if (v5->_secureFlipBookLayer)
    {
      layer = [(SBSASecureFlipBookView *)v5 layer];
      [layer addSublayer:v5->_secureFlipBookLayer];

      [(CASecureFlipBookLayer *)v5->_secureFlipBookLayer addObserver:v5 forKeyPath:@"currentState" options:1 context:0];
      v22 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v5 selector:sel__tick_];
      displayLink = v5->_displayLink;
      v5->_displayLink = v22;

      v24 = [(CADisplayLink *)v5->_displayLink setPaused:1];
      v25 = v5->_displayLink;
      v27 = SBScreenMaximumFramesPerSecond(v24, v26);
      v30 = SBScreenMaximumFramesPerSecond(v28, v29);
      v33 = SBScreenMaximumFramesPerSecond(v31, v32);
      v53 = CAFrameRateRangeMake(v27, v30, v33);
      [(CADisplayLink *)v25 setPreferredFrameRateRange:*&v53.minimum, *&v53.maximum, *&v53.preferred];
      [(CADisplayLink *)v5->_displayLink setHighFrameRateReason:40];
      v34 = v5->_displayLink;
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [(CADisplayLink *)v34 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
    }

    else
    {
      currentRunLoop = SBLogSystemApertureSecureFlipBookElements(v20);
      if (os_log_type_enabled(currentRunLoop, OS_LOG_TYPE_ERROR))
      {
        [(SBSASecureFlipBookView *)v5 initWithSecureFlipBookNameAndFallbacks:firstObject, currentRunLoop];
      }
    }

    [(SBSASecureFlipBookView *)v5 setUserInteractionEnabled:0];
  }

  if (v5->_secureFlipBookLayer)
  {
    v36 = v5;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  return v37;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBSASecureFlipBookView;
  [(SBSASecureFlipBookView *)&v3 dealloc];
}

- (CGRect)nominalFrame
{
  [(SBSASecureFlipBookView *)self _flipBookUserInfoFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectEqualToRect(v10, *MEMORY[0x277CBF3A0]))
  {
    y = 100.0;
    height = 66.6666667;
    width = 66.6666667;
    x = 100.0;
  }

  v6 = x;
  v7 = y;
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (NSString)state
{
  secureFlipBookLayer = self->_secureFlipBookLayer;
  if (secureFlipBookLayer)
  {
    secureFlipBookLayer = [secureFlipBookLayer currentState];
    v2 = vars8;
  }

  return secureFlipBookLayer;
}

- (BOOL)transitionToState:(id)state completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  v8 = SBLogSystemApertureSecureFlipBookElements(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    componentName = [(SBSASecureFlipBookView *)self componentName];
    *buf = 134218498;
    selfCopy5 = self;
    v35 = 2114;
    v36 = componentName;
    v37 = 2114;
    v38 = stateCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) transitionToState: %{public}@", buf, 0x20u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke;
  v30[3] = &unk_2783AE5A0;
  v30[4] = self;
  v10 = stateCopy;
  v31 = v10;
  v11 = completionCopy;
  v32 = v11;
  v12 = MEMORY[0x223D6F7F0](v30);
  secureFlipBookLayer = self->_secureFlipBookLayer;
  if (!secureFlipBookLayer)
  {
    v21 = SBLogSystemApertureSecureFlipBookElements(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      componentName2 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218242;
      selfCopy5 = self;
      v35 = 2114;
      v36 = componentName2;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) Secure FlipBook Layer Unavailable", buf, 0x16u);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke_15;
    v28[3] = &unk_2783A9348;
    v29 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v28);
    v20 = v29;
    goto LABEL_14;
  }

  v14 = [(CASecureFlipBookLayer *)secureFlipBookLayer canTransitionToState:v10];
  if (!v14)
  {
    v24 = SBLogSystemApertureSecureFlipBookElements(v14);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      componentName3 = [(SBSASecureFlipBookView *)self componentName];
      currentState = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer currentState];
      *buf = 134218754;
      selfCopy5 = self;
      v35 = 2114;
      v36 = componentName3;
      v37 = 2114;
      v38 = currentState;
      v39 = 2114;
      v40 = v10;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) unable to transition from state: %{public}@ to state: %{public}@", buf, 0x2Au);

LABEL_19:
    }

LABEL_20:

    v12[2](v12, 0);
    v23 = 0;
    goto LABEL_21;
  }

  v15 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer transitionToState:v10];
  if (!v15)
  {
    v24 = SBLogSystemApertureSecureFlipBookElements(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      componentName3 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218498;
      selfCopy5 = self;
      v35 = 2114;
      v36 = componentName3;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) unexpectedly failed to transition to state: %{public}@ ", buf, 0x20u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (self->_stateTransitionCompletionBlock)
  {
    v16 = SBLogSystemApertureSecureFlipBookElements(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      componentName4 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218242;
      selfCopy5 = self;
      v35 = 2114;
      v36 = componentName4;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) requested another transition before ticking, calling saved completion block", buf, 0x16u);
    }

    (*(self->_stateTransitionCompletionBlock + 2))();
    stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
    self->_stateTransitionCompletionBlock = 0;
  }

  v19 = [v12 copy];
  v20 = self->_stateTransitionCompletionBlock;
  self->_stateTransitionCompletionBlock = v19;
LABEL_14:

  v23 = 1;
LABEL_21:

  return v23;
}

uint64_t __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SBLogSystemApertureSecureFlipBookElements(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [v5 componentName];
    v7 = a1[5];
    v9 = 134218754;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) completed transitionToState: %{public}@. Finished?: %{BOOL}u ", &v9, 0x26u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_secureFlipBookLayer == object)
  {
    if ([path isEqualToString:@"currentState"])
    {
      stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
      if (stateTransitionCompletionBlock)
      {
        stateTransitionCompletionBlock[2](stateTransitionCompletionBlock, 1);
        v8 = self->_stateTransitionCompletionBlock;
        self->_stateTransitionCompletionBlock = 0;
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSASecureFlipBookView;
  [(SBSASecureFlipBookView *)&v3 layoutSubviews];
  [(SBSASecureFlipBookView *)self bounds];
  [(CASecureFlipBookLayer *)self->_secureFlipBookLayer setFrame:?];
}

- (void)willMoveToWindow:(id)window
{
  v15 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v5 = SBLogSystemApertureSecureFlipBookElements(windowCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (windowCopy)
  {
    if (v6)
    {
      componentName = [(SBSASecureFlipBookView *)self componentName];
      v11 = 134218242;
      selfCopy2 = self;
      v13 = 2114;
      v14 = componentName;
      v8 = "[FlipBookView] <%p> (%{public}@) moving to window";
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
    }
  }

  else if (v6)
  {
    componentName = [(SBSASecureFlipBookView *)self componentName];
    v11 = 134218242;
    selfCopy2 = self;
    v13 = 2114;
    v14 = componentName;
    v8 = "[FlipBookView] <%p> (%{public}@) moving out of any window";
    goto LABEL_6;
  }

  [(CADisplayLink *)self->_displayLink setPaused:windowCopy == 0];
  self->_lastTargetTimestampValid = 0;
  if (!windowCopy)
  {
    stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
    if (stateTransitionCompletionBlock)
    {
      stateTransitionCompletionBlock[2](stateTransitionCompletionBlock, 0);
      v10 = self->_stateTransitionCompletionBlock;
      self->_stateTransitionCompletionBlock = 0;
    }
  }
}

- (void)_tick:(id)_tick
{
  [_tick targetTimestamp];
  v5 = v4;
  secureFlipBookLayer = self->_secureFlipBookLayer;
  [(SBSASecureFlipBookView *)self _lastTargetTimestamp];
  [(CASecureFlipBookLayer *)secureFlipBookLayer tick:v5 - v7];

  [(SBSASecureFlipBookView *)self _setLastTargetTimestamp:v5];
}

- (CGRect)_flipBookUserInfoFrame
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v9.origin = *MEMORY[0x277CBF3A0];
  v9.size = v2;
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  v4 = [_flipBookUserInfo valueForKey:@"Component_Frame"];

  CGRectMakeWithDictionaryRepresentation(v4, &v9);
  if (v4)
  {
    CFRelease(v4);
  }

  y = v9.origin.y;
  x = v9.origin.x;
  height = v9.size.height;
  width = v9.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_lastTargetTimestamp
{
  if (self->_lastTargetTimestampValid)
  {
    return self->_lastTargetTimestamp;
  }

  [(CADisplayLink *)self->_displayLink timestamp];
  return result;
}

- (int64_t)_flipBookUserInfoComponentIndex
{
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (_flipBookUserInfo)
  {
    _flipBookUserInfo2 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [_flipBookUserInfo2 valueForKey:@"Component_Index"];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)_flipBookUserInfoComponentCount
{
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (_flipBookUserInfo)
  {
    _flipBookUserInfo2 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [_flipBookUserInfo2 valueForKey:@"Component_Count"];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)_flipBookUserInfoComponentName
{
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (_flipBookUserInfo)
  {
    _flipBookUserInfo2 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [_flipBookUserInfo2 valueForKey:@"Component_Name"];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)_flipBookUserInfoInitialStateName
{
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (_flipBookUserInfo)
  {
    _flipBookUserInfo2 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [_flipBookUserInfo2 valueForKey:@"Initial_State"];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)_flipBookUserInfoSecureSequenceMap
{
  _flipBookUserInfo = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (_flipBookUserInfo)
  {
    _flipBookUserInfo2 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    dictionary = [_flipBookUserInfo2 valueForKey:@"Secure_States_Dict"];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary;
}

- (id)_flipBookUserInfo
{
  if (objc_opt_respondsToSelector())
  {
    userInfo = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer userInfo];
  }

  else
  {
    userInfo = 0;
  }

  return userInfo;
}

- (void)initWithSecureFlipBookNameAndFallbacks:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[FlipBookView] <%p> Unable to load flipbook (or any fallbacks) named: %{public}@", &v3, 0x16u);
}

@end