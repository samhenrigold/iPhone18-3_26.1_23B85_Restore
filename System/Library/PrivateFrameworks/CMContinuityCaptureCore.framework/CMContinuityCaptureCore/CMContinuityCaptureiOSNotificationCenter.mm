@interface CMContinuityCaptureiOSNotificationCenter
- (BOOL)shouldDisplayNotification:(int64_t)notification;
- (CMContinuityCaptureiOSNotificationCenter)initWithQueue:(id)queue;
- (void)_scheduleNotification:(int64_t)notification data:(id)data;
- (void)scheduleNotification:(int64_t)notification data:(id)data;
@end

@implementation CMContinuityCaptureiOSNotificationCenter

- (void)scheduleNotification:(int64_t)notification data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CMContinuityCaptureiOSNotificationCenter_scheduleNotification_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = notification;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureiOSNotificationCenter_scheduleNotification_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleNotification:? data:?];
    WeakRetained = v2;
  }
}

- (BOOL)shouldDisplayNotification:(int64_t)notification
{
  dispatch_assert_queue_V2(self->_queue);
  if (notification != 12)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 1024;
      notificationCopy = notification;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Unsupported Notification Type for iOS Platform. (Type: %d)", &v7, 0x12u);
    }
  }

  return notification == 12;
}

- (CMContinuityCaptureiOSNotificationCenter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureiOSNotificationCenter;
  v6 = [(CMContinuityCaptureUserNotificationCenter *)&v10 initWithQueue:queueCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)_scheduleNotification:(int64_t)notification data:(id)data
{
  dataCopy = data;
  v6 = [(CMContinuityCaptureiOSNotificationCenter *)self shouldDisplayNotification:?];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!dataCopy || !v6)
  {
    goto LABEL_14;
  }

  v9 = [dataCopy objectForKey:?];

  if (!v9)
  {
    v7 = 0;
    v8 = 0;
LABEL_19:
    v10 = 0;
    goto LABEL_14;
  }

  v8 = [dataCopy objectForKey:?];

  if (!v8)
  {
    v7 = 0;
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v7 = [dataCopy objectForKey:?];

  if (!v7)
  {
    v8 = 0;
    goto LABEL_18;
  }

  dispatch_assert_queue_V2(self->_queue);
  v11 = [dataCopy objectForKeyedSubscript:?];
  [dataCopy objectForKeyedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  v12 = OUTLINED_FUNCTION_0_6();
  v10 = CMContinuityCaptureCreateLocalizedString(v12, v13, v14, v15, v16, v17, v18, v19, *v43);

  v20 = [dataCopy objectForKeyedSubscript:?];
  [dataCopy objectForKeyedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  v21 = OUTLINED_FUNCTION_0_6();
  v9 = CMContinuityCaptureCreateLocalizedString(v21, v22, v23, v24, v25, v26, v27, v28, *v43);

  v29 = [dataCopy objectForKeyedSubscript:?];
  [dataCopy objectForKeyedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  v30 = OUTLINED_FUNCTION_0_6();
  v8 = CMContinuityCaptureCreateLocalizedString(v30, v31, v32, v33, v34, v35, v36, v37, *v43);

  v38 = *MEMORY[0x277CBF198];
  v45 = *MEMORY[0x277CBF188];
  v46 = v38;
  v49 = v10;
  v50 = v9;
  v39 = *MEMORY[0x277CBF1B0];
  v47 = *MEMORY[0x277CBF1E8];
  v48 = v39;
  v51 = v8;
  v52 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v40 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *v43 = 138412290;
    *&v43[4] = v7;
    _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "Displaying UI notification: %@", v43, 0xCu);
  }

  error = 0;
  v41 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 2uLL, &error, v7);
  if (v41 && !error)
  {
    goto LABEL_13;
  }

  v42 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *v43 = 67109376;
    *&v43[4] = error;
    *&v43[8] = 2048;
    *&v43[10] = v41;
    _os_log_error_impl(&dword_242545000, v42, OS_LOG_TYPE_ERROR, "CFUserNotificationCreate gave error %d with notification result %p", v43, 0x12u);
  }

  if (v41)
  {
LABEL_13:
    CFRelease(v41);
  }

LABEL_14:
}

@end