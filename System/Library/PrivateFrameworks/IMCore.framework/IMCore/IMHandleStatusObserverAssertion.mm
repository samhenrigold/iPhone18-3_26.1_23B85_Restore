@interface IMHandleStatusObserverAssertion
- (IMHandle)handle;
- (IMHandleStatusObserverAssertion)initWithHandle:(id)handle;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IMHandleStatusObserverAssertion

- (IMHandleStatusObserverAssertion)initWithHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = IMHandleStatusObserverAssertion;
  v5 = [(IMHandleStatusObserverAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handle, handleCopy);
    v6->_valid = 1;
  }

  return v6;
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      handle = [(IMHandleStatusObserverAssertion *)self handle];
      v5 = [handle ID];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Status observer %p for handle %@ is being invalidated", &v7, 0x16u);
    }
  }

  v6 = +[IMHandleStatusManager sharedInstance];
  [v6 invalidateObserver:self];

  self->_valid = 0;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      handle = [(IMHandleStatusObserverAssertion *)self handle];
      v5 = [handle ID];
      *buf = 134218242;
      selfCopy2 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Status observer %p for handle %@ is being deallocated", buf, 0x16u);
    }
  }

  if (self->_valid)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Status observer %p being dealloced without having been invalidated, this is likely a bug", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8356954;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    if (qword_1EB2E90F0 != -1)
    {
      dispatch_once(&qword_1EB2E90F0, block);
    }
  }

  v7.receiver = self;
  v7.super_class = IMHandleStatusObserverAssertion;
  [(IMHandleStatusObserverAssertion *)&v7 dealloc];
}

- (IMHandle)handle
{
  WeakRetained = objc_loadWeakRetained(&self->_handle);

  return WeakRetained;
}

@end