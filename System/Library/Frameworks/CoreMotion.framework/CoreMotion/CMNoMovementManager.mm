@interface CMNoMovementManager
+ (BOOL)isAvailable;
- (CMNoMovementManager)init;
- (void)_connect;
- (void)_disconnect;
- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)dealloc;
- (void)requestLatestStateUpdate;
- (void)setDelegate:(id)delegate;
@end

@implementation CMNoMovementManager

- (CMNoMovementManager)init
{
  v4.receiver = self;
  v4.super_class = CMNoMovementManager;
  v2 = [(CMNoMovementManager *)&v4 init];
  if (v2)
  {
    *(v2 + 2) = dispatch_queue_create("com.apple.CoreMotion.CMNoMovementManager", 0);
    sub_19B42C54C(v2 + 1, 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->fInternalQueue, &unk_1EAFE38B8, &unk_1EAFE38B8, 0);
  if (dispatch_get_specific(&unk_1EAFE38B8) == &unk_1EAFE38B8)
  {
    objc_msgSend__disconnect(self, v3, v4);
  }

  else
  {
    fInternalQueue = self->fInternalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5B67D0;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(fInternalQueue, block);
  }

  dispatch_release(self->fInternalQueue);
  self->fInternalQueue = 0;
  v6.receiver = self;
  v6.super_class = CMNoMovementManager;
  [(CMNoMovementManager *)&v6 dealloc];
}

+ (BOOL)isAvailable
{
  sub_19B421798();
  sub_19B421798();

  return sub_19B43B6EC();
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x1E69E9840];
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5B6A00;
  block[3] = &unk_1E7532A00;
  block[4] = self;
  block[5] = delegate;
  dispatch_async(fInternalQueue, block);
  if (qword_1EAFE2AE8 != -1)
  {
    dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
  }

  v4 = qword_1EAFE2AF0;
  if (os_log_type_enabled(qword_1EAFE2AF0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMNoMovementManager] set delegate", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AE8 != -1)
    {
      dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AF0, 2, "[CMNoMovementManager] set delegate", v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNoMovementManager setDelegate:]", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

- (void)requestLatestStateUpdate
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5B6AE4;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_connect
{
  v3 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->fInternalQueue);
  if (!self->fLocationdConnection.__ptr_)
  {
    operator new();
  }
}

- (void)_disconnect
{
  v6[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->fInternalQueue);
  v5 = @"kCLConnectionMessageSubscribeKey";
  v6[0] = MEMORY[0x1E695E110];
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v6, &v5, 1);
  sub_19B5B79EC(&v3, &v4);
}

- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AE8 != -1)
  {
    dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
  }

  v5 = qword_1EAFE2AF0;
  if (os_log_type_enabled(qword_1EAFE2AF0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CLConnectionMessage::name(*var0);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    *buf = 136315138;
    v27 = v7;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMNoMovementManager] received message, now handling %s", buf, 0xCu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AE8 != -1)
    {
      dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
    }

    v9 = qword_1EAFE2AF0;
    v10 = CLConnectionMessage::name(*var0);
    if (*(v10 + 23) >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *v10;
    }

    v24 = 136315138;
    v25 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CMNoMovementManager] received message, now handling %s", &v24);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNoMovementManager _handleMessage:]", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = CLConnectionMessage::name(*var0);
  if (*(v14 + 23) < 0 && *(v14 + 8) == 43 && !memcmp(*v14, "kCLConnectionMessageCheckInNoMovementUpdate", 0x2BuLL))
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = *var0;
      v16 = objc_opt_class();
      ObjectOfClass = CLConnectionMessage::getObjectOfClass(v15, v16);
      fInternalQueue = self->fInternalQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B5B77F8;
      block[3] = &unk_1E7532A00;
      block[4] = self;
      block[5] = ObjectOfClass;
      dispatch_async(fInternalQueue, block);
    }

    else
    {
      if (qword_1EAFE2AE8 != -1)
      {
        dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
      }

      v19 = qword_1EAFE2AF0;
      if (os_log_type_enabled(qword_1EAFE2AF0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CMNoMovementManager] delegate does not respond to didStateUpdate", buf, 2u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AE8 != -1)
        {
          dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
        }

        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AF0, 16, "[CMNoMovementManager] delegate does not respond to didStateUpdate", &v24, 2);
        v22 = v21;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNoMovementManager _handleMessage:]", "CoreLocation: %s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }
  }
}

@end