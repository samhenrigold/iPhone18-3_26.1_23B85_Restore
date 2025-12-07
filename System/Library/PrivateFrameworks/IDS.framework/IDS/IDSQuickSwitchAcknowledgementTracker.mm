@interface IDSQuickSwitchAcknowledgementTracker
- (BOOL)isAwaitingAcknowledgement;
- (IDSQuickSwitchAcknowledgementTracker)init;
- (id)awaitAcknowledgementFromServiceDelegate:(id)delegate;
- (id)identifierForServiceDelegate:(id)delegate;
- (void)_accessDelegateIdentifiersInCriticalSectionWithBlock:(id)block;
- (void)dealloc;
- (void)stopAwaitingAcknowledgementFromAllServiceDelegates;
- (void)stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:(id)identifier;
@end

@implementation IDSQuickSwitchAcknowledgementTracker

- (IDSQuickSwitchAcknowledgementTracker)init
{
  if (_IDSRunningInDaemon())
  {
    watchPairing = [MEMORY[0x1E69A6138] watchPairing];
    if (os_log_type_enabled(watchPairing, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, watchPairing);
    }

    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IDSQuickSwitchAcknowledgementTracker;
    v5 = [(IDSQuickSwitchAcknowledgementTracker *)&v9 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      delegateIdentifiers = v5->_delegateIdentifiers;
      v5->_delegateIdentifiers = v6;

      pthread_mutex_init(&v5->_delegateIdentifiersMutex, 0);
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_delegateIdentifiersMutex);
  v3.receiver = self;
  v3.super_class = IDSQuickSwitchAcknowledgementTracker;
  [(IDSQuickSwitchAcknowledgementTracker *)&v3 dealloc];
}

- (BOOL)isAwaitingAcknowledgement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0938C;
  v4[3] = &unk_1E74410B0;
  v4[4] = &v5;
  [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)awaitAcknowledgementFromServiceDelegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  watchPairing = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(watchPairing, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = objc_opt_class();
    v14 = 2080;
    v15 = "[IDSQuickSwitchAcknowledgementTracker awaitAcknowledgementFromServiceDelegate:]";
    v16 = 2112;
    v17 = delegateCopy;
    v6 = v13;
    _os_log_impl(&dword_1959FF000, watchPairing, OS_LOG_TYPE_DEFAULT, "%@ %s  (serviceDelegate: %@)", buf, 0x20u);
  }

  if (delegateCopy)
  {
    v7 = [(IDSQuickSwitchAcknowledgementTracker *)self identifierForServiceDelegate:delegateCopy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A7F514;
    v10[3] = &unk_1E74410D8;
    v8 = v7;
    v11 = v8;
    [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)identifierForServiceDelegate:(id)delegate
{
  v16 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  watchPairing = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(watchPairing, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = objc_opt_class();
    v12 = 2080;
    v13 = "[IDSQuickSwitchAcknowledgementTracker identifierForServiceDelegate:]";
    v14 = 2112;
    v15 = delegateCopy;
    v5 = v11;
    _os_log_impl(&dword_1959FF000, watchPairing, OS_LOG_TYPE_DEFAULT, "%@ %s  (serviceDelegate: %@)", buf, 0x20u);
  }

  if (delegateCopy)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    delegateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%p)", v7, delegateCopy];
  }

  else
  {
    delegateCopy = 0;
  }

  return delegateCopy;
}

- (void)stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  watchPairing = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(watchPairing, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v10 = objc_opt_class();
    v11 = 2080;
    v12 = "[IDSQuickSwitchAcknowledgementTracker stopAwaitingAcknowledgementFromServiceDelegateWithIdentifier:]";
    v13 = 2112;
    v14 = identifierCopy;
    v6 = v10;
    _os_log_impl(&dword_1959FF000, watchPairing, OS_LOG_TYPE_DEFAULT, "%@ %s  (delegateIdentifier: %@)", buf, 0x20u);
  }

  if (identifierCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A7F8E0;
    v7[3] = &unk_1E74410D8;
    v8 = identifierCopy;
    [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:v7];
  }
}

- (void)stopAwaitingAcknowledgementFromAllServiceDelegates
{
  v9 = *MEMORY[0x1E69E9840];
  watchPairing = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(watchPairing, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2080;
    v8 = "[IDSQuickSwitchAcknowledgementTracker stopAwaitingAcknowledgementFromAllServiceDelegates]";
    v4 = v6;
    _os_log_impl(&dword_1959FF000, watchPairing, OS_LOG_TYPE_DEFAULT, "%@ %s", &v5, 0x16u);
  }

  [(IDSQuickSwitchAcknowledgementTracker *)self _accessDelegateIdentifiersInCriticalSectionWithBlock:&unk_1F09E61C0];
}

- (void)_accessDelegateIdentifiersInCriticalSectionWithBlock:(id)block
{
  blockCopy = block;
  pthread_mutex_lock(&self->_delegateIdentifiersMutex);
  blockCopy[2](blockCopy, self->_delegateIdentifiers);

  pthread_mutex_unlock(&self->_delegateIdentifiersMutex);
}

@end