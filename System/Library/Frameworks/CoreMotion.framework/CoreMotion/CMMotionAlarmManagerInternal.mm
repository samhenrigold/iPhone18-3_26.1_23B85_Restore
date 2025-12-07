@interface CMMotionAlarmManagerInternal
+ (id)instance;
- (BOOL)_acknowledgeAlarm:(id)alarm error:(id *)error;
- (BOOL)_registerAlarm:(id)alarm error:(id *)error;
- (BOOL)_unregisterAlarm:(id)alarm error:(id *)error;
- (CMMotionAlarmManagerInternal)init;
- (void)_handleAlarmFire:(id)fire;
- (void)_startListeners;
- (void)_stopListeners;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMMotionAlarmManagerInternal

- (CMMotionAlarmManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMMotionAlarmManagerInternal;
  v2 = [(CMMotionAlarmManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMMotionAlarmManager", 0);
    operator new();
  }

  return 0;
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B679D60;
  block[3] = &unk_1E7532988;
  block[4] = self;
  if (qword_1ED71D300 != -1)
  {
    dispatch_once(&qword_1ED71D300, block);
  }

  return qword_1ED71D308;
}

- (void)dealloc
{
  objc_msgSend__teardown(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMMotionAlarmManagerInternal;
  [(CMMotionAlarmManagerInternal *)&v4 dealloc];
}

- (void)_teardown
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v3 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Tearing down CMMotionAlarmManagerInternal", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 1, "Tearing down CMMotionAlarmManagerInternal", v10, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _teardown]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  objc_msgSend__stopListeners(self, v5, v6);
  dispatch_release(self->fInternalQueue);
  if (self->fLocationdConnection)
  {
    v9 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v9, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;

  self->fAlarms = 0;
}

- (void)_startListeners
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67A030;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopListeners
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67A310;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (BOOL)_registerAlarm:(id)alarm error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (objc_msgSend_manager(alarm, v7, v8) && (v11 = objc_msgSend_manager(alarm, v9, v10), objc_msgSend_delegate(v11, v12, v13)))
  {
    if (alarm && objc_msgSend_name(alarm, v14, v15))
    {
      fAlarms = self->fAlarms;
      v19 = objc_msgSend_name(alarm, v16, v17);
      objc_msgSend_setObject_forKey_(fAlarms, v20, alarm, v19);
      v41 = @"CMMotionAlarmKey";
      alarmCopy = alarm;
      v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &alarmCopy, &v41, 1);
      sub_19B5D379C();
    }

    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v31 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "Unable to register motion alarm. Invalid alarm object.", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v40) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to register motion alarm. Invalid alarm object.", &v40, 2);
      v35 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]", "CoreLocation: %s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Invalid alarm object";
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, &v44, &v43, 1);
      v30 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"CMErrorDomain", 107, v37);
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v22 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Unable to register motion alarm. No delegate assigned.", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v40) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to register motion alarm. No delegate assigned.", &v40, 2);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Missing alarm manager and/or delegate";
      v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v46, &v45, 1);
      v30 = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"CMErrorDomain", 103, v28);
LABEL_32:
      *error = v30;
    }
  }

  objc_sync_exit(self);
  return 0;
}

- (BOOL)_unregisterAlarm:(id)alarm error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (objc_msgSend_manager(alarm, v7, v8) && (v11 = objc_msgSend_manager(alarm, v9, v10), objc_msgSend_delegate(v11, v12, v13)))
  {
    if (alarm && objc_msgSend_name(alarm, v14, v15))
    {
      v30 = @"CMMotionAlarmKey";
      alarmCopy = alarm;
      location = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &alarmCopy, &v30, 1);
      sub_19B67D694();
    }

    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v23 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Unable to unregister motion alarm. Invalid alarm object.", buf, 2u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(location) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to unregister motion alarm. Invalid alarm object.", &location, 2);
      v27 = v26;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]", "CoreLocation: %s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    if (error)
    {
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v25, @"CMErrorDomain", 107, 0);
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v17 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Unable to unregister motion alarm. No delegate assigned.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(location) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to unregister motion alarm. No delegate assigned.", &location, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (error)
    {
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v19, @"CMErrorDomain", 103, 0);
LABEL_32:
      *error = v22;
    }
  }

  objc_sync_exit(self);
  return 0;
}

- (BOOL)_acknowledgeAlarm:(id)alarm error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v8 = objc_msgSend_objectForKey_(self->fAlarms, v7, alarm);
  if (v8)
  {
    objc_initWeak(&location, self);
    v17 = @"CMMotionAlarmKey";
    v18 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v18, &v17, 1);
    sub_19B67D7D8();
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v10 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Unable to acknowledge alarm, alarm does not exist.", buf, 2u);
  }

  v11 = sub_19B420058();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    LOWORD(location) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to acknowledge alarm, alarm does not exist.", &location, 2);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 107, 0);
  }

  objc_sync_exit(self);
  return 0;
}

- (void)_handleAlarmFire:(id)fire
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(fire, a2, @"CMMotionAlarmKey");
  if (v5 && (v8 = v5, objc_msgSend_name(v5, v6, v7)))
  {
    objc_sync_enter(self);
    fAlarms = self->fAlarms;
    v12 = objc_msgSend_name(v8, v10, v11);
    v14 = objc_msgSend_objectForKey_(fAlarms, v13, v12);
    v17 = v14;
    if (v14 && (objc_msgSend_isValid(v14, v15, v16) & 1) != 0)
    {
      objc_msgSend_copyPropertiesFromAlarm_(v17, v18, v8);
      v20 = objc_msgSend_objectForKeyedSubscript_(fire, v19, @"CMErrorMessage");
      if (objc_msgSend_intValue(v20, v21, v22) == 100)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_19B67D210;
        v38[3] = &unk_1E7532988;
        v38[4] = v17;
        v23 = MEMORY[0x1E69E96A0];
        v24 = v38;
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B67D154;
        block[3] = &unk_1E7532A00;
        block[4] = v17;
        block[5] = v20;
        v23 = MEMORY[0x1E69E96A0];
        v24 = block;
      }

      dispatch_async(v23, v24);
    }

    else
    {
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v29 = qword_1EAFE27D8;
      if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = objc_msgSend_name(v8, v30, v31);
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "Unable to fire motion alarm %@. Could not locate valid alarm to fire.", buf, 0xCu);
      }

      v32 = sub_19B420058();
      if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A0 != -1)
        {
          dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
        }

        v35 = qword_1EAFE27D8;
        v40 = 138412290;
        v41 = objc_msgSend_name(v8, v33, v34);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v35, 16, "Unable to fire motion alarm %@. Could not locate valid alarm to fire.", &v40, 12);
        v37 = v36;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _handleAlarmFire:]", "CoreLocation: %s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v25 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Unable to fire motion alarm. Received invalid message response.", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v40) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D8, 16, "Unable to fire motion alarm. Received invalid message response.", &v40, 2);
      v28 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _handleAlarmFire:]", "CoreLocation: %s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }
}

@end