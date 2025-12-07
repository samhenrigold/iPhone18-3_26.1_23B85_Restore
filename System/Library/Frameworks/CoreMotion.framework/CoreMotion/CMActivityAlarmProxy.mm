@interface CMActivityAlarmProxy
+ (id)sharedInstance;
- (CMActivityAlarmProxy)init;
- (void)dealloc;
- (void)listenForActivityAlarm:(id)alarm;
- (void)stopListeningForActivityAlarm:(id)alarm;
@end

@implementation CMActivityAlarmProxy

- (CMActivityAlarmProxy)init
{
  v4.receiver = self;
  v4.super_class = CMActivityAlarmProxy;
  v2 = [(CMActivityAlarmProxy *)&v4 init];
  if (v2)
  {
    v2->fAlarmCounter = 0;
    v2->fAlarmAvailable = 0;
    v2->fReplyQueue = dispatch_queue_create("com.apple.CoreMotion.CMActivityAlarmProxyPrivateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  objc_sync_enter(self);
  dispatch_release(self->fReplyQueue);
  self->fReplyQueue = 0;

  self->fAlarms = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
  v4.receiver = self;
  v4.super_class = CMActivityAlarmProxy;
  [(CMActivityAlarmProxy *)&v4 dealloc];
  objc_sync_exit(self);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75B438;
  block[3] = &unk_1E7532988;
  block[4] = self;
  if (qword_1ED71D760 != -1)
  {
    dispatch_once(&qword_1ED71D760, block);
  }

  return qword_1ED71D768;
}

- (void)listenForActivityAlarm:(id)alarm
{
  buf[205] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (objc_msgSend_activityAlarmAvailable(self, v5, v6))
  {
    fAlarms = self->fAlarms;
    v9 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, self->fAlarmCounter);
    objc_msgSend_setObject_forKey_(fAlarms, v10, alarm, v9);
    sub_19B431640(buf);
    LODWORD(v20) = objc_msgSend_trigger(alarm, v11, v12);
    objc_msgSend_duration(alarm, v13, v14);
    v21 = v15;
    sub_19B6E74A8(&self->fAlarmCounter, &v20, &v21, buf);
    LOBYTE(v21) = 1;
    sub_19B5EE5B0(buf, "kCLConnectionMessageSubscribeKey", &v21);
    v20 = buf[1];
    sub_19B6F3270();
  }

  if (qword_1EAFE2858 != -1)
  {
    dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
  }

  v16 = qword_1EAFE2878;
  if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Was not able to listen for alarm.  Activity alarms are not available for this system.", buf, 2u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    LOWORD(v21) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2878, 0, "#Warning Was not able to listen for alarm.  Activity alarms are not available for this system.", &v21, 2);
    v19 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityAlarmProxy listenForActivityAlarm:]", "CoreLocation: %s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  objc_sync_exit(self);
}

- (void)stopListeningForActivityAlarm:(id)alarm
{
  v50 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  fAlarms = self->fAlarms;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(fAlarms, v6, &v41, v49, 16);
  if (v8)
  {
    v9 = *v42;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(fAlarms);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_objectForKeyedSubscript_(self->fAlarms, v7, v11) == alarm)
        {
          v13 = v11;
          if (v13)
          {
            objc_msgSend_removeObjectForKey_(self->fAlarms, v12, v13);
            sub_19B431640(&buf);
            LODWORD(v39) = objc_msgSend_intValue(v13, v14, v15);
            v40 = objc_msgSend_trigger(alarm, v16, v17);
            objc_msgSend_duration(alarm, v18, v19);
            v45 = v20;
            sub_19B6E74A8(&v39, &v40, &v45, &buf);
            LOBYTE(v45) = 0;
            sub_19B5EE5B0(&buf, "kCLConnectionMessageSubscribeKey", &v45);
            v39 = v48[0];
            sub_19B6F3270();
          }

          goto LABEL_12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(fAlarms, v7, &v41, v49, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  if (qword_1EAFE2858 != -1)
  {
    dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
  }

  v21 = qword_1EAFE2878;
  if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_msgSend_trigger(alarm, v22, v23);
    objc_msgSend_duration(alarm, v25, v26);
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v24;
    LOWORD(v48[0]) = 2048;
    *(v48 + 2) = v27;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "#Warning Cannot unsubscribe from activity alarm (Trigger:%d, Duration:%f).  This alarm is not being listened for.", &buf, 0x12u);
  }

  v28 = sub_19B420058();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    v31 = qword_1EAFE2878;
    v32 = objc_msgSend_trigger(alarm, v29, v30);
    objc_msgSend_duration(alarm, v33, v34);
    LODWORD(v45) = 67109376;
    HIDWORD(v45) = v32;
    v46[0] = 2048;
    *&v46[1] = v35;
    LODWORD(v38) = 18;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v31, 0, "#Warning Cannot unsubscribe from activity alarm (Trigger:%d, Duration:%f).  This alarm is not being listened for.", &v45, v38);
    v37 = v36;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityAlarmProxy stopListeningForActivityAlarm:]", "CoreLocation: %s\n", v36);
    if (v37 != &buf)
    {
      free(v37);
    }
  }

  objc_sync_exit(self);
}

@end