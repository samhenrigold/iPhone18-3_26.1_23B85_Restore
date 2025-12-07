@interface CMAudioAccessoryUsageManager
+ (BOOL)isAvailable;
- (CMAudioAccessoryUsageManager)init;
- (void)_connect;
- (void)_disconnect;
- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)dealloc;
- (void)requestAudioAccessoryUsageUpdatesWithHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation CMAudioAccessoryUsageManager

+ (BOOL)isAvailable
{
  sub_19B421798();

  return sub_19B43B6EC();
}

- (CMAudioAccessoryUsageManager)init
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager init", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[HeadphoneUsage] CMAudioAccessoryUsageManager init", v10, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager init]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v9.receiver = self;
  v9.super_class = CMAudioAccessoryUsageManager;
  v7 = [(CMAudioAccessoryUsageManager *)&v9 init];
  if (v7)
  {
    *(v7 + 2) = dispatch_queue_create("com.apple.CoreMotion.CMAudioAccessoryUsage", 0);
    sub_19B42C54C(v7 + 1, 0);
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager dealloc", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v12[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[HeadphoneUsage] CMAudioAccessoryUsageManager dealloc", v12, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager dealloc]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  dispatch_queue_set_specific(self->_dispatchQueue, &unk_1EAFE38BC, &unk_1EAFE38BC, 0);
  if (dispatch_get_specific(&unk_1EAFE38BC) == &unk_1EAFE38BC)
  {
    objc_msgSend__disconnect(self, v7, v8);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5B7F5C;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  dispatch_release(self->_dispatchQueue);
  self->_dispatchQueue = 0;
  v10.receiver = self;
  v10.super_class = CMAudioAccessoryUsageManager;
  [(CMAudioAccessoryUsageManager *)&v10 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager setDelegate", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v11[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[HeadphoneUsage] CMAudioAccessoryUsageManager setDelegate", v11, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager setDelegate:]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5B816C;
  block[3] = &unk_1E7532A00;
  block[4] = self;
  block[5] = delegate;
  dispatch_async(dispatchQueue, block);
}

- (void)_connect
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_locationConnection.__ptr_)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v7 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - connecting", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      LOWORD(location) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[HeadphoneUsage] CMAudioAccessoryUsageManager - connecting", &location, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    operator new();
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - requested connection, but already registered", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    LOWORD(location) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[HeadphoneUsage] CMAudioAccessoryUsageManager - requested connection, but already registered", &location, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v53 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager handleMessage", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v49[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[HeadphoneUsage] CMAudioAccessoryUsageManager handleMessage", v49, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = CLConnectionMessage::name(*var0);
  if ((*(v9 + 23) & 0x80000000) == 0 || *(v9 + 8) != 52 || memcmp(*v9, "kCLConnectionMessageAudioAccessoryUsageMetricsUpdate", 0x34uLL))
  {
    goto LABEL_16;
  }

  objc_loadWeak(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v23 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to didReceiveUsageMetrics, refuse message.", buf, 2u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v49[0] = 0;
      LODWORD(v45) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to didReceiveUsageMetrics, refuse message.", v49, v45);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v25);
      goto LABEL_44;
    }

    return;
  }

  Dictionary = CLConnectionMessage::getDictionary(*var0);
  if (Dictionary)
  {
    v21 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v18, v19);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_19B5B9640;
    v47[3] = &unk_1E7532A00;
    v47[4] = self;
    v47[5] = Dictionary;
    objc_msgSend_addOperationWithBlock_(v21, v22, v47);
LABEL_16:
    v10 = CLConnectionMessage::name(*var0);
    if (*(v10 + 23) < 0 && *(v10 + 8) == 51 && !memcmp(*v10, "kCLConnectionMessageAudioAccessoryUsageMetricsError", 0x33uLL))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v11 = *var0;
        v12 = objc_opt_class();
        ObjectOfClass = CLConnectionMessage::getObjectOfClass(v11, v12);
        v16 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v14, v15);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = sub_19B5B9680;
        v46[3] = &unk_1E7532A00;
        v46[4] = self;
        v46[5] = ObjectOfClass;
        objc_msgSend_addOperationWithBlock_(v16, v17, v46);
        return;
      }

      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v27 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred, refuse message.", buf, 2u);
      }

      v28 = sub_19B420058();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
        }

        v49[0] = 0;
        LODWORD(v45) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred, refuse message.", v49, v45);
        v26 = v29;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v29);
LABEL_44:
        if (v26 != buf)
        {
          free(v26);
        }

        return;
      }
    }

    return;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v30 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Error, nil dictionary received.", buf, 2u);
  }

  v31 = sub_19B420058();
  if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v49[0] = 0;
    LODWORD(v45) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Error, nil dictionary received.", v49, v45);
    v33 = v32;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v32);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  objc_loadWeak(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v50 = *MEMORY[0x1E696A578];
    v51 = @"No data received from callback.";
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v34, &v51, &v50, 1);
    v40 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v39, 112, v38);
    v43 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v41, v42);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_19B5B9600;
    v48[3] = &unk_1E7532A00;
    v48[4] = self;
    v48[5] = v40;
    objc_msgSend_addOperationWithBlock_(v43, v44, v48);
    return;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v35 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred.", buf, 2u);
  }

  v36 = sub_19B420058();
  if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v49[0] = 0;
    LODWORD(v45) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred.", v49, v45);
    v26 = v37;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v37);
    goto LABEL_44;
  }
}

- (void)_disconnect
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager _disconnect", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    LOWORD(v8[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[HeadphoneUsage] CMAudioAccessoryUsageManager _disconnect", v8, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _disconnect]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = @"kCLConnectionMessageSubscribeKey";
  v10 = MEMORY[0x1E695E110];
  v8[3] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v10, &v9, 1);
  sub_19B5B9C88();
}

- (void)requestAudioAccessoryUsageUpdatesWithHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if ((objc_msgSend_isAvailable(v4, v5, v6) & 1) == 0)
  {
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"CMAudioAccessoryUsageManager not available on this platform";
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v21, &v20, 1);
    v15 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v14, 109, v13);
LABEL_8:
    (*(handler + 2))(handler, v15);
    return;
  }

  v8 = objc_opt_class();
  if (!objc_msgSend_isAuthorized(v8, v9, v10))
  {
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Necessary entitlement missing: 'com.apple.bluetooth.system'.";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, &v19, &v18, 1);
    v15 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v17, 110, v16);
    goto LABEL_8;
  }

  v12 = *(handler + 2);

  v12(handler, 0);
}

@end