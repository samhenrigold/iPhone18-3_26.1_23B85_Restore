@interface CMContinuityCaptureLockScreenLayoutMonitor
- (CMContinuityCaptureLockScreenLayoutMonitor)init;
- (CMContinuityCaptureLockScreenLayoutMonitorDelegate)delegate;
- (void)_handleLayout:(id)layout;
- (void)dealloc;
@end

@implementation CMContinuityCaptureLockScreenLayoutMonitor

- (CMContinuityCaptureLockScreenLayoutMonitor)init
{
  v14.receiver = self;
  v14.super_class = CMContinuityCaptureLockScreenLayoutMonitor;
  v2 = [(CMContinuityCaptureLockScreenLayoutMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lockScreenInLayout = 0;
    v2->_shieldFrontMostInLayout = 1;
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:?];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke;
    v12 = &unk_278D5CDF8;
    v5 = v3;
    v13 = v5;
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:?];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:?];
    layoutMonitor = v5->_layoutMonitor;
    v5->_layoutMonitor = v6;
  }

  return v3;
}

void __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke_2;
  v6[3] = &unk_278D5C008;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureLockScreenLayoutMonitor;
  [(CMContinuityCaptureLockScreenLayoutMonitor *)&v4 dealloc];
}

- (void)_handleLayout:(id)layout
{
  layoutCopy = layout;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy6 = self;
    v44 = 2112;
    v45[0] = layoutCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ New layout: %@", buf, 0x16u);
  }

  lockScreenInLayout = self->_lockScreenInLayout;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!layoutCopy)
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring nil layout", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v50 = *MEMORY[0x277D0ABC0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if (![layoutCopy displayBacklightLevel])
  {
    self->_lockScreenInLayout = 1;
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring layout with minimum (0) backlight level.", buf, 0xCu);
    }

    goto LABEL_47;
  }

  elements = [layoutCopy elements];
  v9 = [elements bs_firstObjectPassingTest:?];

  if (v9)
  {
    sb_isTransitioning = [v9 sb_isTransitioning];
  }

  else
  {
    sb_isTransitioning = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  elements2 = [layoutCopy elements];
  v11 = [elements2 countByEnumeratingWithState:? objects:? count:?];
  if (!v11)
  {

    v29 = 0;
    self->_lockScreenInLayout = 0;
    level2 = -1;
    level = -1;
    goto LABEL_38;
  }

  v12 = v11;
  v35 = lockScreenInLayout;
  v36 = v9;
  v37 = layoutCopy;
  selfCopy4 = self;
  v13 = 0;
  v14 = *v47;
  level = -1;
  level2 = -1;
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (*v47 != v14)
      {
        objc_enumerationMutation(elements2);
      }

      v16 = *(*(&v46 + 1) + 8 * i);
      identifier = [v16 identifier];
      v18 = [v7 containsObject:?];

      if (v18)
      {
        v19 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [v16 identifier];
          *buf = 138543618;
          selfCopy6 = selfCopy4;
          v44 = 2112;
          v45[0] = identifier2;
          v21 = v19;
          v22 = "%{public}@ Ignoring %@ in layout";
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      identifier3 = [v16 identifier];
      v24 = [identifier3 isEqualToString:?] & sb_isTransitioning;

      if (v24 == 1)
      {
        v19 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [v16 identifier];
          *buf = 138543618;
          selfCopy6 = selfCopy4;
          v44 = 2112;
          v45[0] = identifier2;
          v21 = v19;
          v22 = "%{public}@ Ignoring %@ in layout during shield transition period";
LABEL_23:
          _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
        }

LABEL_24:

        continue;
      }

      if ([v16 level] > level)
      {
        level = [v16 level];
      }

      bundleIdentifier = [v16 bundleIdentifier];
      v26 = [&unk_2854ECD18 containsObject:?];

      if (v26 && [v16 level] > level2)
      {
        level2 = [v16 level];
      }

      identifier4 = [v16 identifier];
      v28 = [identifier4 isEqualToString:?];

      v13 |= v28;
    }

    v12 = [elements2 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v12);

  v29 = v13 & 1;
  self = selfCopy4;
  selfCopy4->_lockScreenInLayout = v29;
  lockScreenInLayout = v35;
  if (level2 == -1)
  {
    level2 = -1;
  }

  else
  {
    selfCopy4->_firstShieldLayoutReceived = 1;
  }

  v9 = v36;
  layoutCopy = v37;
LABEL_38:
  if (self->_firstShieldLayoutReceived)
  {
    v30 = level2 >= level;
    if (self->_shieldFrontMostInLayout != v30 || v29 != lockScreenInLayout)
    {
      self->_shieldFrontMostInLayout = v30;
      v31 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        shieldFrontMostInLayout = self->_shieldFrontMostInLayout;
        v33 = self->_lockScreenInLayout;
        *buf = 138543874;
        selfCopy6 = self;
        v44 = 1024;
        LODWORD(v45[0]) = shieldFrontMostInLayout;
        WORD2(v45[0]) = 1024;
        *(v45 + 6) = v33;
        _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Update layout change, shieldFrontMostInLayout:%d lockScreenInLayout:%d", buf, 0x18u);
      }

      delegate = [(CMContinuityCaptureLockScreenLayoutMonitor *)self delegate];
      [NSObject lockScreenLayoutMonitor:delegate didUpdateLayoutWithShieldFrontMost:"lockScreenLayoutMonitor:didUpdateLayoutWithShieldFrontMost:lockscreenInLayout:" lockscreenInLayout:?];
      goto LABEL_46;
    }
  }

  else
  {
    delegate = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_242545000, delegate, OS_LOG_TYPE_INFO, "%{public}@ Ignoring layout. Haven't received first layout with ShieldUI in it.", buf, 0xCu);
    }

LABEL_46:
  }

LABEL_47:

LABEL_48:
}

void *__60__CMContinuityCaptureLockScreenLayoutMonitor__handleLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [&unk_2854ECD18 containsObject:?];

  return v3;
}

- (CMContinuityCaptureLockScreenLayoutMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end