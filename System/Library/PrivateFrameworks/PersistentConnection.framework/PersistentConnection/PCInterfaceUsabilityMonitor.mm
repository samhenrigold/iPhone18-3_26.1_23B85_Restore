@interface PCInterfaceUsabilityMonitor
+ (BOOL)isPathUltraConstrained:(id)constrained;
+ (id)stringForLinkQuality:(int)quality;
- (BOOL)_createLinkQualityMonitor:(BOOL)monitor;
- (BOOL)_isInterfaceHistoricallyUsable;
- (BOOL)_isInterfaceUsable;
- (BOOL)isBadLinkQuality;
- (BOOL)isInternetReachable;
- (BOOL)isPoorLinkQuality;
- (NSString)linkQualityString;
- (PCInterfaceUsabilityMonitor)init;
- (PCInterfaceUsabilityMonitor)initWithInterfaceIdentifier:(int64_t)identifier delegateQueue:(id)queue;
- (PCInterfaceUsabilityMonitorDelegate)delegate;
- (id)currentInterfaceName;
- (int)linkQuality;
- (int64_t)interfaceConstraint;
- (int64_t)interfaceIdentifier;
- (void)_callDelegateWithBlock:(id)block;
- (void)_createPathEvaluator;
- (void)_dynamicStoreCallback:(id)callback;
- (void)_dynamicStoreCallbackForKeys:(id)keys;
- (void)_flushStaleTransitions;
- (void)_pathUpdate:(id)update;
- (void)_processLinkQualityUpdateWithChangedKey:(id)key updatedLinkQuality:(int)quality;
- (void)_unscheduleLinkQualityMonitor;
- (void)_unschedulePathEvaluator;
- (void)_updateOffTransitionsForLinkQualityChange;
- (void)_updatePathParameters;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setThresholdOffTransitionCount:(unint64_t)count;
- (void)setTrackUsability:(BOOL)usability;
- (void)setTrackedTimeInterval:(double)interval;
@end

@implementation PCInterfaceUsabilityMonitor

- (int)linkQuality
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  linkQuality = self->_linkQuality;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return linkQuality;
}

- (BOOL)_isInterfaceUsable
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = self->_isPathSatisfied && self->_linkQuality != -2;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return v3;
}

- (int64_t)interfaceConstraint
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = self->_interfaceConstraint != 0;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return v3;
}

void __51__PCInterfaceUsabilityMonitor__createPathEvaluator__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _pathUpdate:v5];
  }
}

- (BOOL)isInternetReachable
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  isPathSatisfied = self->_isPathSatisfied;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return isPathSatisfied;
}

- (PCInterfaceUsabilityMonitor)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PCInterfaceUsabilityMonitor.m" lineNumber:28 description:@"Must specify an interface identifier for PCInterfaceUsabilityMonitor"];

  return self;
}

- (PCInterfaceUsabilityMonitor)initWithInterfaceIdentifier:(int64_t)identifier delegateQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = PCInterfaceUsabilityMonitor;
  v8 = [(PCInterfaceUsabilityMonitor *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (identifier > 1)
    {

      v9 = 0;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
      recursiveLock = v9->_recursiveLock;
      v9->_recursiveLock = v10;

      objc_storeStrong(&v9->_delegateQueue, queue);
      v9->_interfaceIdentifier = identifier;
      v9->_linkQuality = -1;
      v9->_isPathSatisfied = 0;
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.PersistentConnection.PCInterfaceUsabilityMonitor-SCDynamicStore", v12);
      scQueue = v9->_scQueue;
      v9->_scQueue = v13;

      [(PCInterfaceUsabilityMonitor *)v9 _updatePathParameters];
    }
  }

  return v9;
}

- (void)dealloc
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_dynamicStore)
  {
    [(PCInterfaceUsabilityMonitor *)self _unscheduleLinkQualityMonitor];
  }

  if (self->_evaluator)
  {
    [(PCInterfaceUsabilityMonitor *)self _unschedulePathEvaluator];
  }

  lqKey = self->_lqKey;
  if (lqKey)
  {
    CFRelease(lqKey);
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
  v4.receiver = self;
  v4.super_class = PCInterfaceUsabilityMonitor;
  [(PCInterfaceUsabilityMonitor *)&v4 dealloc];
}

- (id)currentInterfaceName
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  lastInterface = self->_lastInterface;
  if (lastInterface)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_get_name(lastInterface)];
  }

  else
  {
    v4 = 0;
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v4;
}

- (void)_updateOffTransitionsForLinkQualityChange
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_trackUsability)
  {
    if (self->_linkQuality == -2)
    {
      offTransitions = self->_offTransitions;
      if (!offTransitions)
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v5 = self->_offTransitions;
        self->_offTransitions = v4;

        offTransitions = self->_offTransitions;
      }

      date = [MEMORY[0x277CBEAA8] date];
      [(NSMutableArray *)offTransitions insertObject:date atIndex:0];
    }

    [(PCInterfaceUsabilityMonitor *)self _flushStaleTransitions];
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)_flushStaleTransitions
{
  v3 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_trackUsability)
  {
    thresholdOffTransitionCount = self->_thresholdOffTransitionCount;
    v5 = [(NSMutableArray *)self->_offTransitions count];
    if (thresholdOffTransitionCount >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = thresholdOffTransitionCount;
    }

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_thresholdOffTransitionCount];
    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v9 = [(NSMutableArray *)self->_offTransitions objectAtIndex:v8];
        [v9 timeIntervalSinceNow];
        if (self->_trackedTimeInterval <= -v10)
        {
          break;
        }

        [(NSMutableArray *)v7 addObject:v9];

        if (v6 == ++v8)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    offTransitions = self->_offTransitions;
    self->_offTransitions = v7;
    v13 = v7;

    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

  else
  {
    v11 = self->_offTransitions;
    self->_offTransitions = 0;

    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)setTrackUsability:(BOOL)usability
{
  usabilityCopy = usability;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_trackUsability != usabilityCopy)
  {
    self->_trackUsability = usabilityCopy;
    if (usabilityCopy)
    {
      if (!self->_thresholdOffTransitionCount)
      {
        self->_thresholdOffTransitionCount = 2;
      }

      if (self->_trackedTimeInterval == 0.0)
      {
        self->_trackedTimeInterval = 600.0;
      }
    }

    [(PCInterfaceUsabilityMonitor *)self _flushStaleTransitions];
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)setThresholdOffTransitionCount:(unint64_t)count
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_thresholdOffTransitionCount != count)
  {
    self->_thresholdOffTransitionCount = count;
    [(PCInterfaceUsabilityMonitor *)self _flushStaleTransitions];
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)setTrackedTimeInterval:(double)interval
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_trackedTimeInterval != interval)
  {
    self->_trackedTimeInterval = interval;
    [(PCInterfaceUsabilityMonitor *)self _flushStaleTransitions];
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (BOOL)_isInterfaceHistoricallyUsable
{
  _isInterfaceUsable = [(PCInterfaceUsabilityMonitor *)self _isInterfaceUsable];
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_trackUsability)
  {
    [(PCInterfaceUsabilityMonitor *)self _flushStaleTransitions];
    if (_isInterfaceUsable)
    {
      LOBYTE(_isInterfaceUsable) = [(NSMutableArray *)self->_offTransitions count]< self->_thresholdOffTransitionCount;
    }
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return _isInterfaceUsable;
}

- (NSString)linkQualityString
{
  linkQuality = [(PCInterfaceUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor stringForLinkQuality:linkQuality];
}

- (BOOL)isPoorLinkQuality
{
  v3 = objc_opt_class();
  linkQuality = [(PCInterfaceUsabilityMonitor *)self linkQuality];

  return [v3 isPoorLinkQuality:linkQuality];
}

- (BOOL)isBadLinkQuality
{
  v3 = objc_opt_class();
  linkQuality = [(PCInterfaceUsabilityMonitor *)self linkQuality];

  return [v3 isBadLinkQuality:linkQuality];
}

- (int64_t)interfaceIdentifier
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  interfaceIdentifier = self->_interfaceIdentifier;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return interfaceIdentifier;
}

- (PCInterfaceUsabilityMonitorDelegate)delegate
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  object = [(CUTWeakReference *)self->_delegateReference object];
  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return object;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_recursiveLock lock];
  delegateReference = self->_delegateReference;
  self->_delegateReference = 0;

  if (delegateCopy)
  {
    v6 = [MEMORY[0x277CFB990] weakRefWithObject:delegateCopy];
    v7 = self->_delegateReference;
    self->_delegateReference = v6;
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
  objc_autoreleasePoolPop(v4);
}

- (void)_callDelegateWithBlock:(id)block
{
  blockCopy = block;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = self->_delegateReference;
  v6 = self->_delegateQueue;
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__PCInterfaceUsabilityMonitor__callDelegateWithBlock___block_invoke;
    v8[3] = &unk_279A1A090;
    v9 = v5;
    v10 = blockCopy;
    dispatch_async(v6, v8);
  }
}

void __54__PCInterfaceUsabilityMonitor__callDelegateWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_unschedulePathEvaluator
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - _unschedulePathEvaluatorOnIvarQueue", &v5, 0xCu);
  }

  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_evaluator)
  {
    nw_path_evaluator_cancel();
    evaluator = self->_evaluator;
    self->_evaluator = 0;
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
}

- (void)_createPathEvaluator
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_evaluator)
  {
    recursiveLock = self->_recursiveLock;

    [(NSRecursiveLock *)recursiveLock unlock];
  }

  else
  {
    objc_initWeak(&location, self);
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    evaluator = self->_evaluator;
    self->_evaluator = evaluator_for_endpoint;

    v7 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v8, &location);
    nw_path_evaluator_set_update_handler();
    v6 = nw_path_evaluator_copy_path();
    [(NSRecursiveLock *)self->_recursiveLock unlock:v7];
    [(PCInterfaceUsabilityMonitor *)self _pathUpdate:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

+ (BOOL)isPathUltraConstrained:(id)constrained
{
  v19 = *MEMORY[0x277D85DE8];
  constrainedCopy = constrained;
  v5 = MEMORY[0x25F8B2210]();
  v6 = [objc_alloc(MEMORY[0x277CC3650]) initAgentDataFromInternetPath:constrainedCopy];

  dataPlanTier = [v6 dataPlanTier];
  if (dataPlanTier < 4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    selfCopy = self;
    v13 = 1024;
    v14 = dataPlanTier;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ InterfaceUsabilityMonitor: Plan tier %d, path is ultra constrained %{BOOL}d, isUltraConstrained %{BOOL}d", &v11, 0x1Eu);
  }

  return v8;
}

- (void)_pathUpdate:(id)update
{
  v67 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  status = nw_path_get_status(updateCopy);
  v6 = status == nw_path_status_satisfied;
  v7 = nw_path_copy_interface();
  if (v7)
  {
    v8 = nw_interface_copy_delegate_interface();
  }

  else
  {
    v8 = 0;
  }

  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (_os_feature_enabled_impl() && (v9 = self->_interfaceConstraint, v10 = [objc_opt_class() isPathUltraConstrained:updateCopy], self->_interfaceConstraint = v10, v9 != v10))
  {
    v11 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      interfaceIdentifier = self->_interfaceIdentifier;
      v13 = @"unknown";
      if (interfaceIdentifier == 1)
      {
        v13 = @"WWAN";
      }

      if (interfaceIdentifier)
      {
        v14 = v13;
      }

      else
      {
        v14 = @"NonCellular";
      }

      v15 = v14;
      interfaceConstraint = self->_interfaceConstraint;
      *buf = 138544130;
      selfCopy4 = self;
      v61 = 2114;
      v62 = v15;
      v63 = 2048;
      v64 = v9;
      v65 = 2048;
      *v66 = interfaceConstraint;
      _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ InterfaceUsabilityMonitor [%{public}@]: Interface constraint changed. Old constraint: %ld; New constraint: %ld;", buf, 0x2Au);
    }

    v56 = 1;
  }

  else
  {
    v56 = 0;
  }

  p_lastInterface = &self->_lastInterface;
  v18 = MEMORY[0x25F8B2140](v7, self->_lastInterface);
  if ((v18 & 1) == 0)
  {
    v19 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v53 = status == nw_path_status_satisfied;
      v20 = self->_interfaceIdentifier;
      v21 = @"unknown";
      if (v20 == 1)
      {
        v21 = @"WWAN";
      }

      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = @"NonCellular";
      }

      v23 = v22;
      lastInterface = self->_lastInterface;
      if (lastInterface)
      {
        name = nw_interface_get_name(lastInterface);
        if (*p_lastInterface)
        {
          index = nw_interface_get_index(*p_lastInterface);
        }

        else
        {
          index = 0;
        }
      }

      else
      {
        index = 0;
        name = "<none>";
      }

      v51 = status;
      if (v7)
      {
        v26 = nw_interface_get_name(v7);
        v27 = nw_interface_get_index(v7);
      }

      else
      {
        v27 = 0;
        v26 = "<none>";
      }

      *buf = 138544642;
      selfCopy4 = self;
      v61 = 2114;
      v62 = v23;
      v63 = 2080;
      v64 = name;
      v65 = 1024;
      *v66 = index;
      *&v66[4] = 2080;
      *&v66[6] = v26;
      *&v66[14] = 1024;
      *&v66[16] = v27;
      _os_log_impl(&dword_25E3EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ InterfaceUsabilityMonitor [%{public}@]: current interface changed from %s (%u) to %s (%u)", buf, 0x36u);

      status = v51;
      v6 = v53;
    }

    objc_storeStrong(&self->_lastInterface, v7);
  }

  p_lastDelegateInterface = &self->_lastDelegateInterface;
  if (MEMORY[0x25F8B2140](v8, self->_lastDelegateInterface))
  {
    v29 = v18 ^ 1;
  }

  else
  {
    v30 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v6;
      v31 = self->_interfaceIdentifier;
      v32 = @"unknown";
      if (v31 == 1)
      {
        v32 = @"WWAN";
      }

      if (v31)
      {
        v33 = v32;
      }

      else
      {
        v33 = @"NonCellular";
      }

      v34 = v33;
      lastDelegateInterface = self->_lastDelegateInterface;
      if (lastDelegateInterface)
      {
        v36 = nw_interface_get_name(lastDelegateInterface);
        if (*p_lastDelegateInterface)
        {
          v37 = nw_interface_get_index(*p_lastDelegateInterface);
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v36 = "<none>";
      }

      v52 = status;
      if (v8)
      {
        v38 = nw_interface_get_name(v8);
        v39 = nw_interface_get_index(v8);
      }

      else
      {
        v39 = 0;
        v38 = "<none>";
      }

      *buf = 138544642;
      selfCopy4 = self;
      v61 = 2114;
      v62 = v34;
      v63 = 2080;
      v64 = v36;
      v65 = 1024;
      *v66 = v37;
      *&v66[4] = 2080;
      *&v66[6] = v38;
      *&v66[14] = 1024;
      *&v66[16] = v39;
      _os_log_impl(&dword_25E3EF000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ InterfaceUsabilityMonitor [%{public}@]: current delegate interface changed from %s (%u) to %s (%u)", buf, 0x36u);

      status = v52;
      v6 = v54;
    }

    objc_storeStrong(&self->_lastDelegateInterface, v8);
    v29 = 1;
  }

  isPathSatisfied = self->_isPathSatisfied;
  if (isPathSatisfied != v6)
  {
    v41 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_interfaceIdentifier;
      v43 = @"unknown";
      if (v42 == 1)
      {
        v43 = @"WWAN";
      }

      if (v42)
      {
        v44 = v43;
      }

      else
      {
        v44 = @"NonCellular";
      }

      v45 = v44;
      v55 = v8;
      v46 = v6;
      if (self->_isPathSatisfied)
      {
        v47 = "satisfied";
      }

      else
      {
        v47 = "unsatisfied";
      }

      if (status == nw_path_status_satisfied)
      {
        v48 = "satisfied";
      }

      else
      {
        v48 = "unsatisfied";
      }

      reason_description = nw_path_get_reason_description();
      *buf = 138544386;
      selfCopy4 = self;
      v61 = 2114;
      v62 = v45;
      v63 = 2080;
      v64 = v47;
      v6 = v46;
      v8 = v55;
      v65 = 2080;
      *v66 = v48;
      *&v66[8] = 2080;
      *&v66[10] = reason_description;
      _os_log_impl(&dword_25E3EF000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ InterfaceUsabilityMonitor [%{public}@]: path changed from %s to %s (%s)", buf, 0x34u);
    }

    self->_isPathSatisfied = v6;
  }

  if (!v29 || ([(PCInterfaceUsabilityMonitor *)self _unscheduleLinkQualityMonitor], [(PCInterfaceUsabilityMonitor *)self _createLinkQualityMonitor:1]))
  {
    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

  if (v56)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __43__PCInterfaceUsabilityMonitor__pathUpdate___block_invoke;
    v58[3] = &unk_279A1A0E0;
    v58[4] = self;
    [(PCInterfaceUsabilityMonitor *)self _callDelegateWithBlock:v58];
  }

  if (isPathSatisfied != v6)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __43__PCInterfaceUsabilityMonitor__pathUpdate___block_invoke_2;
    v57[3] = &unk_279A1A0E0;
    v57[4] = self;
    [(PCInterfaceUsabilityMonitor *)self _callDelegateWithBlock:v57];
  }
}

void __43__PCInterfaceUsabilityMonitor__pathUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceConstraintChanged:*(a1 + 32)];
  }
}

void __43__PCInterfaceUsabilityMonitor__pathUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceReachabilityChanged:*(a1 + 32)];
  }
}

- (void)_updatePathParameters
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = MEMORY[0x25F8B2150]([(PCInterfaceUsabilityMonitor *)self _unschedulePathEvaluator]);
  pathParameters = self->_pathParameters;
  self->_pathParameters = v3;

  if (self->_interfaceIdentifier)
  {
    nw_parameters_set_required_interface_type(self->_pathParameters, nw_interface_type_cellular);
    if (_os_feature_enabled_impl())
    {
      nw_parameters_set_allow_ultra_constrained();
    }
  }

  else
  {
    v5 = xpc_array_create(0, 0);
    xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, 2uLL);
    nw_parameters_set_prohibited_interface_types();
  }

  v6 = xpc_array_create(0, 0);
  xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, 0x1389uLL);
  nw_parameters_set_prohibited_interface_subtypes();
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  [(PCInterfaceUsabilityMonitor *)self _createPathEvaluator];
}

- (void)_unscheduleLinkQualityMonitor
{
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    SCDynamicStoreSetDispatchQueue(dynamicStore, 0);
    CFRelease(self->_dynamicStore);
    self->_dynamicStore = 0;
  }

  lqKey = self->_lqKey;
  if (lqKey)
  {
    CFRelease(lqKey);
    self->_lqKey = 0;
  }
}

+ (id)stringForLinkQuality:(int)quality
{
  v3 = @"off";
  v4 = @"bad";
  v5 = @"good";
  if (quality < 0x33)
  {
    v5 = @"poor";
  }

  if (quality >= 0xB)
  {
    v4 = v5;
  }

  if (quality >= -1)
  {
    v3 = v4;
  }

  if (quality == -1)
  {
    return @"unknown";
  }

  else
  {
    return v3;
  }
}

- (void)_processLinkQualityUpdateWithChangedKey:(id)key updatedLinkQuality:(int)quality
{
  v4 = *&quality;
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  lqKey = self->_lqKey;
  if (lqKey && CFEqual(keyCopy, lqKey) && self->_linkQuality != v4)
  {
    v8 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      interfaceIdentifier = self->_interfaceIdentifier;
      v10 = @"unknown";
      if (interfaceIdentifier == 1)
      {
        v10 = @"WWAN";
      }

      if (interfaceIdentifier)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"NonCellular";
      }

      v12 = v11;
      lastInterface = self->_lastInterface;
      v14 = [PCInterfaceUsabilityMonitor stringForLinkQuality:self->_linkQuality];
      v15 = [PCInterfaceUsabilityMonitor stringForLinkQuality:v4];
      *buf = 138544642;
      selfCopy = self;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = lastInterface;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      v29 = 1024;
      v30 = v4;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Interface Manager: %{public}@(%{public}@) LinkQuality changed from %{public}@ to %{public}@ (%d)", buf, 0x3Au);
    }

    linkQuality = self->_linkQuality;
    self->_linkQuality = v4;
    [(PCInterfaceUsabilityMonitor *)self _updateOffTransitionsForLinkQualityChange];
    [(NSRecursiveLock *)self->_recursiveLock unlock];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__PCInterfaceUsabilityMonitor__processLinkQualityUpdateWithChangedKey_updatedLinkQuality___block_invoke;
    v17[3] = &unk_279A1A108;
    v17[4] = self;
    v18 = linkQuality;
    [(PCInterfaceUsabilityMonitor *)self _callDelegateWithBlock:v17];
  }

  else
  {
    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }
}

void __90__PCInterfaceUsabilityMonitor__processLinkQualityUpdateWithChangedKey_updatedLinkQuality___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceLinkQualityChanged:*(a1 + 32) previousLinkQuality:*(a1 + 40)];
  }
}

- (void)_dynamicStoreCallback:(id)callback
{
  v32 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [callbackCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    key = *MEMORY[0x277CE16B0];
    v8 = 0x279A19000uLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(callbackCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = SCDynamicStoreCopyValue(self->_dynamicStore, v10);
        usabilityMonitor = [*(v8 + 2760) usabilityMonitor];
        if (os_log_type_enabled(usabilityMonitor, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy = self;
          v27 = 2114;
          v28 = v10;
          v29 = 2114;
          v30 = v11;
          _os_log_impl(&dword_25E3EF000, usabilityMonitor, OS_LOG_TYPE_DEFAULT, "%{public}@ _dynamicStoreCallback - processing changedKey %{public}@ linkQualityInfo %{public}@.", buf, 0x20u);
        }

        if (v11)
        {
          v13 = CFGetTypeID(v11);
          if (v13 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v11, key);
            if (Value)
            {
              v15 = Value;
              v16 = v8;
              v17 = callbackCopy;
              v18 = CFGetTypeID(Value);
              v19 = v18 == CFNumberGetTypeID();
              callbackCopy = v17;
              v8 = v16;
              if (v19)
              {
                *buf = 0;
                CFNumberGetValue(v15, kCFNumberIntType, buf);
                [(PCInterfaceUsabilityMonitor *)self _processLinkQualityUpdateWithChangedKey:v10 updatedLinkQuality:*buf];
              }
            }
          }

          CFRelease(v11);
        }
      }

      v6 = [callbackCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)_dynamicStoreCallbackForKeys:(id)keys
{
  keysCopy = keys;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_dynamicStore)
  {
    [(PCInterfaceUsabilityMonitor *)self _dynamicStoreCallback:keysCopy];
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
}

- (BOOL)_createLinkQualityMonitor:(BOOL)monitor
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  lastDelegateInterface = self->_lastDelegateInterface;
  if (lastDelegateInterface)
  {
    v7 = lastDelegateInterface;
  }

  else
  {
    v7 = self->_lastInterface;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (!self->_dynamicStore)
  {
    if (!monitor)
    {
      [(NSRecursiveLock *)self->_recursiveLock lock];
      if (self->_dynamicStore)
      {
        monitor = 1;
        goto LABEL_19;
      }
    }

    self->_linkQuality = -1;
    v8 = [MEMORY[0x277CFB990] weakRefWithObject:self];
    context.version = 0;
    context.info = v8;
    context.retain = MEMORY[0x277CBE558];
    context.release = MEMORY[0x277CBE550];
    context.copyDescription = 0;
    v9 = *MEMORY[0x277CBECE8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    self->_dynamicStore = SCDynamicStoreCreate(v9, v11, _dynamicStoreCallback, &context);

    dynamicStore = self->_dynamicStore;
    if (dynamicStore)
    {
      if (SCDynamicStoreSetDispatchQueue(dynamicStore, self->_scQueue))
      {
        Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_get_name(v7)];
        self->_lqKey = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v9, *MEMORY[0x277CE1648], v14, *MEMORY[0x277CE16B0]);
        v15 = +[PCLog usabilityMonitor];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          lqKey = self->_lqKey;
          *buf = 138543874;
          selfCopy = self;
          v21 = 2114;
          v22 = v7;
          v23 = 2114;
          v24 = lqKey;
          _os_log_impl(&dword_25E3EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Interface manager: creating monitor for interface: %{public}@ LinkQuality key: %{public}@", buf, 0x20u);
        }

        CFArrayAppendValue(Mutable, self->_lqKey);
        SCDynamicStoreSetNotificationKeys(self->_dynamicStore, Mutable, 0);
        [(NSRecursiveLock *)self->_recursiveLock unlock];
        [(PCInterfaceUsabilityMonitor *)self _dynamicStoreCallbackForKeys:Mutable];
        CFRelease(Mutable);
        monitor = 0;
        goto LABEL_18;
      }

      v14 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PCInterfaceUsabilityMonitor _createLinkQualityMonitor:v14];
      }
    }

    else
    {
      v14 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PCInterfaceUsabilityMonitor _createLinkQualityMonitor:v14];
      }
    }

    monitor = 1;
LABEL_18:
  }

LABEL_19:

  objc_autoreleasePoolPop(v5);
  return monitor;
}

@end