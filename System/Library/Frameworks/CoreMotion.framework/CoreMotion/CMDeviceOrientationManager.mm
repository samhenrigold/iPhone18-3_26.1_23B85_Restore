@interface CMDeviceOrientationManager
+ (void)initialize;
- (CMDeviceOrientationManager)init;
- (id)deviceOrientationBlocking;
- (id)initPrivate;
- (id)stringForOrientation:(int)orientation;
- (void)dealloc;
- (void)deallocPrivate;
- (void)onDeviceOrientation:(const Sample *)orientation;
- (void)onMotionPreferencesUpdated;
- (void)onNotification:(id)notification;
- (void)setDeviceOrientationCallbackModePrivate:(int)private;
- (void)signalAndReleaseSemaphoreIfNecessaryPrivate;
- (void)startDeviceOrientationUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceOrientationUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopDeviceOrientationUpdates;
- (void)stopDeviceOrientationUpdatesPrivate;
- (void)updateAggregateDictionaryPrivate;
@end

@implementation CMDeviceOrientationManager

- (id)deviceOrientationBlocking
{
  v67 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v3 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Received deviceOrientationBlocking", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    LOWORD(v54) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 1, "Received deviceOrientationBlocking", &v54, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  kdebug_trace();
  internal = self->_internal;
  if ((internal[13] & 0x80000000) == 0)
  {
    v10 = [CMDeviceOrientation alloc];
    v11 = internal[13];
    Current = CFAbsoluteTimeGetCurrent();
    return objc_msgSend_initWithOrientation_andTimestamp_(v10, v13, v11, Current);
  }

  if (objc_msgSend_orientationNotificationsDisabled(self, v7, v8))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v15 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Notifications disabled", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v54) = 0;
      LODWORD(v52) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 17, "Notifications disabled", &v54, v52);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v19 = [CMDeviceOrientation alloc];
    return objc_msgSend_initWithOrientation_andTimestamp_(v19, v20, 0, 0.0);
  }

  if ((sub_19B421620() & 0x80) != 0)
  {
    v25 = sub_19B4484E8();
    v26 = COERCE_DOUBLE(sub_19B448530(v25, 0));
    v28 = v27;
    os_unfair_lock_lock(internal + 2);
    *(internal + 8) = v26;
    *(internal + 9) = v28;
    os_unfair_lock_unlock(internal + 2);
    v29 = [CMDeviceOrientation alloc];
    return objc_msgSend_initWithOrientation_andTimestamp_(v29, v30, v28, v26);
  }

  os_unfair_lock_lock(internal + 2);
  v21 = *(internal + 8);
  v22 = internal[18];
  os_unfair_lock_unlock(internal + 2);
  if (v22)
  {
    v23 = [CMDeviceOrientation alloc];
    return objc_msgSend_initWithOrientation_andTimestamp_(v23, v24, v22, v21);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3052000000;
  v57 = sub_19B428AEC;
  v58 = sub_19B429070;
  v59 = 0;
  v33 = sub_19B420D84();
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_19B71FC2C;
  v53[3] = &unk_1E75338E8;
  v53[4] = internal;
  v53[5] = &v54;
  sub_19B420C9C(v33, v53);
  if (v55[5])
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v34 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEFAULT, "Waiting for the first orientation to come in", buf, 2u);
    }

    v35 = sub_19B420058();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v60[0]) = 0;
      LODWORD(v52) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Waiting for the first orientation to come in", v60, v52);
      v37 = v36;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    v38 = v55[5];
    v39 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v38, v39))
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v40 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "Orientation blocking: timeout exceeded!", buf, 2u);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
        }

        LOWORD(v60[0]) = 0;
        LODWORD(v52) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 16, "Orientation blocking: timeout exceeded!", v60, v52);
        v43 = v42;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    dispatch_release(v55[5]);
    v55[5] = 0;
  }

  os_unfair_lock_lock(internal + 2);
  v44 = *(internal + 8);
  v45 = internal[18];
  os_unfair_lock_unlock(internal + 2);
  kdebug_trace();
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v46 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v64 = v45;
    v65 = 2050;
    v66 = v44;
    _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_DEFAULT, "Got latest sample: %{public}d @ %{public}f", buf, 0x12u);
  }

  v47 = sub_19B420058();
  if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v60[0] = 67240448;
    v60[1] = v45;
    v61 = 2050;
    v62 = v44;
    LODWORD(v52) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Got latest sample: %{public}d @ %{public}f", v60, v52);
    v49 = v48;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v48);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  if (v44 <= 0.0)
  {
    v31 = 0;
  }

  else
  {
    v50 = [CMDeviceOrientation alloc];
    v31 = objc_msgSend_initWithOrientation_andTimestamp_(v50, v51, v45, v44);
  }

  _Block_object_dispose(&v54, 8);
  return v31;
}

- (void)stopDeviceOrientationUpdates
{
  v21 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v4 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = internal[18];
    v6 = internal[22];
    *buf = 67240448;
    v18 = v5;
    v19 = 1026;
    v20 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping orientation updates, latest %{public}d, last significant %{public}d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v8 = internal[18];
    v9 = internal[22];
    v14[0] = 67240448;
    v14[1] = v8;
    v15 = 1026;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Stopping orientation updates, latest %{public}d, last significant %{public}d", v14, 14);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager stopDeviceOrientationUpdates]", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = sub_19B420D84();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B44988C;
  v13[3] = &unk_1E7532988;
  v13[4] = self;
  sub_19B420C9C(v12, v13);
}

- (void)stopDeviceOrientationUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceOrientationAvailable(self, a2, v2))
  {
    if (internal[2])
    {
      v7 = sub_19B4484E8();
      sub_19B426A14(v7, 0, internal[2]);
      v8 = internal[2];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      internal[2] = 0;
    }

    v9 = internal[4];
    if (v9)
    {

      internal[4] = 0;
    }

    v10 = internal[3];
    if (v10)
    {

      internal[3] = 0;
    }

    objc_msgSend_signalAndReleaseSemaphoreIfNecessaryPrivate(self, v5, v6);
    *(internal + 5) = *(internal + 4);
    v11 = mach_absolute_time();
    *(internal + 8) = sub_19B41E070(v11);
    *(internal + 18) = 0;

    objc_msgSend_updateAggregateDictionaryPrivate(self, v12, v13);
  }
}

- (void)updateAggregateDictionaryPrivate
{
  internal = self->_internal;
  v3 = *(internal + 22);
  if (*(internal + 18) != v3)
  {
    v4 = objc_msgSend_stringForOrientation_(self, a2, *(internal + 22));
    if (MEMORY[0x1EEE83328])
    {
      v6 = (internal[8] - internal[10]);
      if (v3)
      {
        v7 = v4 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && v6 >= 1)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"%@.%@Time", @"com.apple.CoreMotion.DeviceOrientation", v4);
        ADClientAddValueForScalarKey();
      }
    }
  }
}

- (void)signalAndReleaseSemaphoreIfNecessaryPrivate
{
  internal = self->_internal;
  v3 = *(internal + 5);
  if (v3)
  {
    if ((*(internal + 48) & 1) == 0)
    {
      dispatch_semaphore_signal(v3);
      *(internal + 48) = 1;
      v3 = *(internal + 5);
    }

    dispatch_release(v3);
    *(internal + 5) = 0;
  }
}

+ (void)initialize
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v3, v4);
    if (objc_msgSend_isMainThread(v5, v6, v7) && (objc_msgSend_isMultiThreaded(MEMORY[0x1E696AF00], v8, v9) & 1) == 0)
    {
      objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x1E696AF00], v10, sel_dummySelector_, self, 0);
    }

    if (!qword_1ED71C900)
    {
      Main = CFRunLoopGetMain();
      sub_19B429D10(Main);
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v12 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Orientation Manager initialized", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Orientation Manager initialized", v16, 2);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMDeviceOrientationManager initialize]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }
}

- (CMDeviceOrientationManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428AEC;
  v11 = sub_19B429070;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B71E7C4;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = CMDeviceOrientationManager;
  v2 = [(CMDeviceOrientationManager *)&v7 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMDeviceOrientationManagerInternal);
    objc_msgSend_onMotionPreferencesUpdated(v2, v3, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_19B71E888, @"com.apple.backboardd.loggingchanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428AEC;
  v6[4] = sub_19B429070;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B71E9FC;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMDeviceOrientationManager;
  [(CMDeviceOrientationManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  internal = self->_internal;
  v4 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.backboardd.loggingchanged", 0);
  if (internal[56] == 1)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v6, v7);
    objc_msgSend_removeObserver_(v8, v9, self);
  }

  objc_msgSend_stopDeviceOrientationUpdatesPrivate(self, v6, v7);

  objc_autoreleasePoolPop(v4);
}

- (void)onMotionPreferencesUpdated
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v4 = sub_19B420D84();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_19B432FD8(v5, "OrientationCallbackMode", internal + 13, 0xFFFFFFFFLL);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  if ((v7 & 1) == 0)
  {
    *(internal + 13) = -1;
  }

  v8 = sub_19B420D84();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_19B438CCC(v9, "EnableOrientationNotification", internal + 56, 0xFFFFFFFFLL);
  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  if (v13)
  {
    if (internal[56])
    {
      v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v11, v12);
      objc_msgSend_addObserver_selector_name_object_suspensionBehavior_(v14, v15, self, sel_onNotification_, @"CMSetDeviceOrientationNotification", 0, 4);
      goto LABEL_16;
    }
  }

  else
  {
    internal[56] = 0;
  }

  v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v11, v12);
  objc_msgSend_removeObserver_(v16, v17, self);
LABEL_16:
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v18 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(internal + 13);
    v20 = internal[56];
    *buf = 67240448;
    v30 = v19;
    v31 = 1026;
    v32 = v20;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "OrientationCallbackMode,%{public}d,EnableOrientationNotification,%{public}d", buf, 0xEu);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v22 = *(internal + 13);
    v23 = internal[56];
    v26[0] = 67240448;
    v26[1] = v22;
    v27 = 1026;
    v28 = v23;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "OrientationCallbackMode,%{public}d,EnableOrientationNotification,%{public}d", v26, 14);
    v25 = v24;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onMotionPreferencesUpdated]", "CoreLocation: %s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }
}

- (void)onNotification:(id)notification
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B71EE18;
  v6[3] = &unk_1E7532A00;
  v6[4] = notification;
  v6[5] = self;
  sub_19B420C9C(v5, v6);
}

- (void)startDeviceOrientationUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v8 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = internal[13];
    v10 = *(internal + 56);
    *buf = 67240448;
    v22 = v9;
    v23 = 1026;
    v24 = v10;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Starting orientation updates, callback mode %{public}d, enable %{public}d", buf, 0xEu);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v12 = internal[13];
    v13 = *(internal + 56);
    v18[0] = 67240448;
    v18[1] = v12;
    v19 = 1026;
    v20 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Starting orientation updates, callback mode %{public}d, enable %{public}d", v18, 14);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager startDeviceOrientationUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  kdebug_trace();
  v16 = sub_19B420D84();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B71F2F4;
  v17[3] = &unk_1E7532C08;
  v17[4] = self;
  v17[5] = queue;
  v17[6] = handler;
  sub_19B420C9C(v16, v17);
}

- (void)startDeviceOrientationUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceOrientationAvailable(self, a2, queue))
  {
    v8 = internal[4];
    if (v8 != queue)
    {

      internal[4] = queue;
    }

    v9 = internal[3];
    if (v9 != handler)
    {

      internal[3] = objc_msgSend_copy(handler, v10, v11);
    }

    if (!internal[2])
    {
      operator new();
    }

    objc_initWeak(&location, self);
    v12 = sub_19B420D84();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B71F504;
    v13[3] = &unk_1E7533528;
    objc_copyWeak(&v14, &location);
    v13[4] = internal;
    sub_19B421668(v12, v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)setDeviceOrientationCallbackModePrivate:(int)private
{
  *(self->_internal + 13) = private;
  v4 = sub_19B420D84();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  privateCopy = private;
  sub_19B5EF4EC(v5, "OrientationCallbackMode", &privateCopy);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

- (void)onDeviceOrientation:(const Sample *)orientation
{
  v63 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_orientationNotificationsDisabled(self, a2, orientation))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v5 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Notifications disabled", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v51) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Notifications disabled", &v51, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    internal = self->_internal;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v10 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_stringForOrientation_(self, v11, internal[18]);
      v14 = objc_msgSend_stringForOrientation_(self, v13, LODWORD(orientation->acceleration.x));
      timestamp = orientation->timestamp;
      *buf = 138543874;
      v58 = v12;
      v59 = 2114;
      v60 = v14;
      v61 = 2050;
      v62 = timestamp;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Received orientation. (%{public}@ to %{public}@) Timestamp %{public}f", buf, 0x20u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v18 = off_1ED71C7C0;
      v19 = objc_msgSend_stringForOrientation_(self, v17, internal[18]);
      v21 = objc_msgSend_stringForOrientation_(self, v20, LODWORD(orientation->acceleration.x));
      v22 = orientation->timestamp;
      v51 = 138543874;
      v52 = v19;
      v53 = 2114;
      v54 = v21;
      v55 = 2050;
      v56 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 0, "Received orientation. (%{public}@ to %{public}@) Timestamp %{public}f", &v51, 32);
      v24 = v23;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    *(internal + 5) = *(internal + 4);
    os_unfair_lock_lock(internal + 2);
    *(internal + 4) = *&orientation->timestamp;
    os_unfair_lock_unlock(internal + 2);
    p_acceleration = &orientation->acceleration;
    kdebug_trace();
    if ((internal[12] & 1) == 0)
    {
      dispatch_semaphore_signal(*(internal + 5));
      *(internal + 48) = 1;
    }

    if (*(internal + 4) && *(internal + 3))
    {
      objc_msgSend_updateAggregateDictionaryPrivate(self, v26, v27);
      v28 = objc_autoreleasePoolPush();
      v30 = (internal + 13);
      v29 = internal[13];
      v31 = [CMDeviceOrientation alloc];
      if (v29 == -1)
      {
        v33 = &orientation->acceleration;
      }

      else
      {
        v33 = (internal + 13);
      }

      v34 = objc_msgSend_initWithOrientation_andTimestamp_(v31, v32, LODWORD(v33->x), orientation->timestamp);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v35 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_msgSend_stringForOrientation_(self, v36, LODWORD(p_acceleration->x));
        v38 = *v30;
        *buf = 138543618;
        v58 = v37;
        v59 = 1026;
        LODWORD(v60) = v38;
        _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "Updating client handler: Orientation %{public}@, Callback mode: %{public}d", buf, 0x12u);
      }

      v39 = sub_19B420058();
      if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
        }

        v42 = off_1ED71C7C0;
        v43 = objc_msgSend_stringForOrientation_(self, v41, LODWORD(p_acceleration->x));
        v44 = *v30;
        v51 = 138543618;
        v52 = v43;
        v53 = 1026;
        LODWORD(v54) = v44;
        LODWORD(v49) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v42, 0, "Updating client handler: Orientation %{public}@, Callback mode: %{public}d", &v51, v49);
        v46 = v45;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v45);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v48 = *(internal + 3);
      v47 = *(internal + 4);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_19B71FC14;
      v50[3] = &unk_1E7532B90;
      v50[4] = v34;
      v50[5] = v48;
      objc_msgSend_addOperationWithBlock_(v47, v40, v50);

      objc_autoreleasePoolPop(v28);
    }
  }
}

- (id)stringForOrientation:(int)orientation
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = sub_19B449494(orientation);

  return objc_msgSend_stringWithUTF8String_(v3, v4, v5);
}

@end