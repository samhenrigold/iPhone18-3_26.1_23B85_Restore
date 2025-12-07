@interface MNNavigationState
- (BOOL)requiresLocationAccess;
- (BOOL)respondsToSelector:(SEL)selector;
- (MNNavigationState)initWithStateManager:(id)manager;
- (MNNavigationStateManager)stateManager;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)type;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MNNavigationState

- (MNNavigationStateManager)stateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MNNavigationState;
  return [(MNNavigationState *)&v6 respondsToSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:?])
  {
    _navigation_methodSignatureForEmptyMethod = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MNNavigationState;
    _navigation_methodSignatureForEmptyMethod = [(MNNavigationState *)&v7 methodSignatureForSelector:selector];
  }

  return _navigation_methodSignatureForEmptyMethod;
}

- (void)forwardInvocation:(id)invocation
{
  v11 = *MEMORY[0x1E69E9840];
  selector = [invocation selector];
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:selector])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(selector);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = objc_opt_class();
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%@ is not supported by state %@", &v7, 0x16u);
    }
  }

  else
  {

    [(MNNavigationState *)self doesNotRecognizeSelector:selector];
  }
}

- (void)dealloc
{
  if ([(MNNavigationState *)self requiresHighMemoryThreshold])
  {
    v3 = +[MNXPCTransactionManager sharedInstance];
    [v3 removeHighMemoryThresholdRequest:self afterDelay:3.0];
  }

  v4.receiver = self;
  v4.super_class = MNNavigationState;
  [(MNNavigationState *)&v4 dealloc];
}

- (MNNavigationState)initWithStateManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = MNNavigationState;
  v5 = [(MNNavigationState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_1D328D390;
    objc_storeWeak(v5 + 3, managerCopy);
    if ([(MNNavigationState *)v6 requiresHighMemoryThreshold])
    {
      v7 = +[MNXPCTransactionManager sharedInstance];
      [v7 addHighMemoryThresholdRequest:v6];
    }

    v8 = v6;
  }

  return v6;
}

- (BOOL)requiresLocationAccess
{
  desiredLocationProviderType = [(MNNavigationState *)self desiredLocationProviderType];
  if (desiredLocationProviderType != 1)
  {
    LOBYTE(desiredLocationProviderType) = [(MNNavigationState *)self desiredLocationProviderType]== 2;
  }

  return desiredLocationProviderType;
}

- (unint64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "[MNNavigationState type]";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Navigation/NavigationState/MNNavigationState.m";
    v8 = 1024;
    v9 = 27;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v4, 0x1Cu);
  }

  return -1;
}

@end