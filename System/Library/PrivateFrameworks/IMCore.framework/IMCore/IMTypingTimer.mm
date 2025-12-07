@interface IMTypingTimer
- (BOOL)isValid;
- (IMTypingTimer)initWithHandle:(id)handle beginDate:(id)date timeoutInterval:(double)interval delegate:(id)delegate;
- (IMTypingTimerDelegate)delegate;
- (void)invalidate;
- (void)timerCallback;
- (void)triggerTimeout;
@end

@implementation IMTypingTimer

- (IMTypingTimer)initWithHandle:(id)handle beginDate:(id)date timeoutInterval:(double)interval delegate:(id)delegate
{
  handleCopy = handle;
  dateCopy = date;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = IMTypingTimer;
  v14 = [(IMTypingTimer *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_handle, handle);
    objc_storeStrong(&v15->_beginDate, date);
    v15->_timeoutInterval = interval;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    if (+[IMTypingTimer shouldAdjustTimeoutIntervalForBeginDate]&& v15->_beginDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      v17 = date;
      if (date)
      {
        [date timeIntervalSinceReferenceDate];
        v19 = v18;
        [(NSDate *)v15->_beginDate timeIntervalSinceReferenceDate];
        interval = interval - (v19 - v20);
      }
    }

    if (interval <= 0.0)
    {
      [(IMTypingTimer *)v15 triggerTimeout];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v15 target:sel_timerCallback selector:0 userInfo:0 repeats:interval];
      timer = v15->_timer;
      v15->_timer = v21;

      [(NSTimer *)v15->_timer setTolerance:5.0];
    }
  }

  return v15;
}

- (void)timerCallback
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(IMTypingTimer *)self isValid])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        handle = [(IMTypingTimer *)self handle];
        v5 = 138412290;
        v6 = handle;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Timer callback was called for valid typing timeout with handle %@", &v5, 0xCu);
      }
    }

    [(IMTypingTimer *)self invalidate];
    [(IMTypingTimer *)self triggerTimeout];
  }
}

- (void)triggerTimeout
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      handle = [(IMTypingTimer *)self handle];
      v6 = 138412290;
      v7 = handle;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Triggering typing timeout for handle %@", &v6, 0xCu);
    }
  }

  delegate = [(IMTypingTimer *)self delegate];
  [delegate typingTimeoutDidTriggerWithTimer:self];
}

- (void)invalidate
{
  timer = [(IMTypingTimer *)self timer];
  [timer invalidate];

  MEMORY[0x1EEE66B58](self, sel_setTimer_);
}

- (BOOL)isValid
{
  timer = [(IMTypingTimer *)self timer];
  isValid = [timer isValid];

  return isValid;
}

- (IMTypingTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end