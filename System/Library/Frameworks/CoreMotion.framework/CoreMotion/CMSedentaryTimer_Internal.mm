@interface CMSedentaryTimer_Internal
- (BOOL)_isActive;
- (CMSedentaryTimer_Internal)init;
- (void)_handleAlarmDataResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler;
- (void)_handleStartStopTimerResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler;
- (void)_registerForAlarmsWithHandler:(id)handler;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSedentaryTimer_Internal

- (CMSedentaryTimer_Internal)init
{
  v4.receiver = self;
  v4.super_class = CMSedentaryTimer_Internal;
  v2 = [(CMSedentaryTimer_Internal *)&v4 init];
  if (v2)
  {
    v2->fClientQueue = dispatch_queue_create("com.apple.CoreMotion.CMSedentaryTimer.client", 0);
    v2->fDaemonQueue = dispatch_queue_create("com.apple.CoreMotion.CMSedentaryTimer.daemon", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fClientQueue);
  dispatch_release(self->fDaemonQueue);
  v3.receiver = self;
  v3.super_class = CMSedentaryTimer_Internal;
  [(CMSedentaryTimer_Internal *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    MEMORY[0x19EAE71C0](fLocationdConnection, a2);

    JUMPOUT(0x19EAE76F0);
  }
}

- (BOOL)_isActive
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _isActive.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v12[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _isActive.", v12, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _isActive]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  fDaemonQueue = self->fDaemonQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5CDF54;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fDaemonQueue, block);
  return objc_msgSend_isTimerArmed(self, v8, v9);
}

- (void)_handleStartStopTimerResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler
{
  var1 = response.var1;
  var0 = response.var0;
  v58 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v11)) != 0)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    if (v14)
    {
      fClientQueue = self->fClientQueue;
      v49 = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = sub_19B5CEE34;
      v52 = &unk_1E7532B68;
      v53 = v14;
      v54 = var1;
      v16 = &v49;
    }

    else
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v22 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error start / stop response.", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v56[0] = 0;
        LODWORD(v43) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "SedentaryAlarm,Error start / stop response.", v56, v43);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      fClientQueue = self->fClientQueue;
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = sub_19B5CF058;
      v47 = &unk_1E7532B40;
      v48 = var1;
      v16 = &v44;
    }

    dispatch_async(fClientQueue, v16);
    if (objc_msgSend_intValue(v14, v26, v27) == 100)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v28 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse CMErrorNULL.", buf, 2u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v56[0] = 0;
        LODWORD(v43) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse CMErrorNULL.", v56, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        v31 = v30;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = CLConnectionMessage::name(*var0);
      if (*(v32 + 23) < 0 && *(v32 + 8) == 39 && !memcmp(*v32, "kCLConnectionMessageSedentaryTimerStart", 0x27uLL))
      {
        objc_msgSend_setTimerArmed_(self, v33, 1);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v40 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is armed.", buf, 2u);
        }

        v41 = sub_19B420058();
        if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v56[0] = 0;
          LODWORD(v43) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is armed.", v56, v43);
          v39 = v42;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v42);
          goto LABEL_71;
        }
      }

      else
      {
        v34 = CLConnectionMessage::name(*var0);
        if (*(v34 + 23) < 0 && *(v34 + 8) == 38 && !memcmp(*v34, "kCLConnectionMessageSedentaryTimerStop", 0x26uLL))
        {
          objc_msgSend_setTimerArmed_(self, v35, 0);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v36 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is not armed.", buf, 2u);
          }

          v37 = sub_19B420058();
          if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
            }

            v56[0] = 0;
            LODWORD(v43) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is not armed.", v56, v43);
            v39 = v38;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v38);
LABEL_71:
            if (v39 != buf)
            {
              free(v39);
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse dispatching handler.", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v56[0] = 0;
      LODWORD(v43) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse dispatching handler.", v56, v43);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v21 = self->fClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5CEC4C;
    block[3] = &unk_1E7532B40;
    block[4] = var1;
    dispatch_async(v21, block);
  }
}

- (void)_handleAlarmDataResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler
{
  var1 = response.var1;
  var0 = response.var0;
  v46 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v13)) != 0)
  {
    v16 = DictionaryOfClasses;
    v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
    v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMSedentaryTimerAlarmData");
    if (v17)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v20 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error.", buf, 2u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v44[0] = 0;
        LODWORD(v39) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error.", v44, v39);
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      fClientQueue = self->fClientQueue;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_19B5CFA20;
      v42[3] = &unk_1E7532B68;
      v42[4] = v17;
      v42[5] = var1;
      v25 = v42;
    }

    else
    {
      v30 = v19;
      if (v19)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v31 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray.", buf, 2u);
        }

        v32 = sub_19B420058();
        if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v44[0] = 0;
          LODWORD(v39) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray.", v44, v39);
          v34 = v33;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v33);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        fClientQueue = self->fClientQueue;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = sub_19B5CFD8C;
        v41[3] = &unk_1E7532B90;
        v41[4] = v30;
        v41[5] = var1;
        v25 = v41;
      }

      else
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v35 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error parsing alarm data.", buf, 2u);
        }

        v36 = sub_19B420058();
        if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v44[0] = 0;
          LODWORD(v39) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "SedentaryAlarm,Error parsing alarm data.", v44, v39);
          v38 = v37;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v37);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        fClientQueue = self->fClientQueue;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = sub_19B5CFF50;
        v40[3] = &unk_1E7532B40;
        v40[4] = var1;
        v25 = v40;
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v26 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response dispatching handler.", buf, 2u);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v44[0] = 0;
      LODWORD(v39) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response dispatching handler.", v44, v39);
      v29 = v28;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v28);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    fClientQueue = self->fClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5CF834;
    block[3] = &unk_1E7532B40;
    block[4] = var1;
    v25 = block;
  }

  dispatch_async(fClientQueue, v25);
}

- (void)_registerForAlarmsWithHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler.", v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _registerForAlarmsWithHandler:]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_19B428B50(buf, "kCLConnectionMessageSedentaryTimerAlarm");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(*buf);
  }
}

@end