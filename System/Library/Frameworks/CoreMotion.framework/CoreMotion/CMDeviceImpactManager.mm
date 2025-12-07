@interface CMDeviceImpactManager
- (CMDeviceImpactManager)init;
- (void)clearDeviceImpactCacheWithCompletion:(id)completion;
- (void)dealloc;
- (void)queryDeviceImpactsWithCompletion:(id)completion;
- (void)simulateHighAccelDeviceImpactWithTimeOffset:(double)offset peakAcceleration:(double)acceleration completion:(id)completion;
- (void)startDeviceImpactUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopDeviceImpactUpdates;
@end

@implementation CMDeviceImpactManager

- (CMDeviceImpactManager)init
{
  v5.receiver = self;
  v5.super_class = CMDeviceImpactManager;
  v2 = [(CMDeviceImpactManager *)&v5 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v2->_queue = dispatch_queue_create("com.apple.CoreMotion.CMDeviceImpactManagerPrivateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  handler = self->_handler;
  if (handler)
  {
    _Block_release(handler);
  }

  dispatch_release(self->_queue);
  sub_19B42C54C(&self->_locationdConnection, 0);
  v4.receiver = self;
  v4.super_class = CMDeviceImpactManager;
  [(CMDeviceImpactManager *)&v4 dealloc];
}

- (void)queryDeviceImpactsWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  if (!completion)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMDeviceImpactManager.mm", 89, @"Invalid parameter not satisfying: %@", @"completion");
  }

  if ((objc_msgSend_isDeviceImpactAvailable(self, a2, completion) & 1) == 0)
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v9 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v10 = qword_1EAFE2B00;
    if (os_signpost_enabled(qword_1EAFE2B00))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.deviceImpactAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceImpact is unavailable", "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v11 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/DeviceImpact/CMDeviceImpactManager.mm", 90, "[CMDeviceImpactManager queryDeviceImpactsWithCompletion:]");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F1C60;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = completion;
  dispatch_async(queue, block);
}

- (void)startDeviceImpactUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (queue)
  {
    if (handler)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMDeviceImpactManager.mm", 111, @"Invalid parameter not satisfying: %@", @"queue");
    if (handler)
    {
      goto LABEL_3;
    }
  }

  v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, queue);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMDeviceImpactManager.mm", 112, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  if ((objc_msgSend_isDeviceImpactAvailable(self, a2, queue) & 1) == 0)
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v13 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v14 = qword_1EAFE2B00;
    if (os_signpost_enabled(qword_1EAFE2B00))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "self.deviceImpactAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceImpact is unavailable", "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v15 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/DeviceImpact/CMDeviceImpactManager.mm", 113, "[CMDeviceImpactManager startDeviceImpactUpdatesToQueue:withHandler:]");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F249C;
  block[3] = &unk_1E7532C80;
  block[5] = queue;
  block[6] = handler;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopDeviceImpactUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isDeviceImpactAvailable(self, a2, v2) & 1) == 0)
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v5 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v6 = qword_1EAFE2B00;
    if (os_signpost_enabled(qword_1EAFE2B00))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "self.deviceImpactAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceImpact is unavailable", "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v7 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/DeviceImpact/CMDeviceImpactManager.mm", 132, "[CMDeviceImpactManager stopDeviceImpactUpdates]");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F28A8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clearDeviceImpactCacheWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isDeviceImpactAvailable(self, a2, completion) & 1) == 0)
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v6 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v7 = qword_1EAFE2B00;
    if (os_signpost_enabled(qword_1EAFE2B00))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.deviceImpactAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceImpact is unavailable", "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v8 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/DeviceImpact/CMDeviceImpactManager.mm", 153, "[CMDeviceImpactManager clearDeviceImpactCacheWithCompletion:]");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F2CB4;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = completion;
  dispatch_async(queue, block);
}

- (void)simulateHighAccelDeviceImpactWithTimeOffset:(double)offset peakAcceleration:(double)acceleration completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isDeviceImpactAvailable(self, a2, completion) & 1) == 0)
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v10 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v11 = qword_1EAFE2B00;
    if (os_signpost_enabled(qword_1EAFE2B00))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "self.deviceImpactAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceImpact is unavailable", "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }
    }

    v12 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "self.deviceImpactAvailable";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:DeviceImpact is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/DeviceImpact/CMDeviceImpactManager.mm", 169, "[CMDeviceImpactManager simulateHighAccelDeviceImpactWithTimeOffset:peakAcceleration:completion:]");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F30A0;
  block[3] = &unk_1E7535118;
  *&block[6] = acceleration;
  *&block[7] = offset;
  block[4] = self;
  block[5] = completion;
  dispatch_async(queue, block);
}

@end