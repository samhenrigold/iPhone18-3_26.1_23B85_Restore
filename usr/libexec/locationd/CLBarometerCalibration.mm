@interface CLBarometerCalibration
- (BOOL)isInVisit;
- (void)alertElevationAlertClientsOnChange;
@end

@implementation CLBarometerCalibration

- (BOOL)isInVisit
{
  Current = CFAbsoluteTimeGetCurrent();
  lastVisitStateLoggingTime = self->_lastVisitStateLoggingTime;
  if (lastVisitStateLoggingTime == 1.79769313e308 || vabdd_f64(Current, lastVisitStateLoggingTime) > 300.0)
  {
    if (qword_1025D4410 != -1)
    {
      sub_1019CB3A8();
    }

    v5 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      inVisit = self->_inVisit;
      v8[0] = 67109376;
      v8[1] = inVisit;
      v9 = 2048;
      v10 = Current;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#altimeter,current visit state,inVisit,%d,now,%.3f", v8, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019CC500(self->CLIntersiloService_opaque, Current);
    }

    self->_lastVisitStateLoggingTime = Current;
  }

  return self->_inVisit;
}

- (void)alertElevationAlertClientsOnChange
{
  thresholdManager = self->_thresholdManager;
  if (thresholdManager)
  {
    objc_msgSend_getElevationThresholdProxyMap(thresholdManager, a2);
    v3 = v17;
    if (v17 == v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v17 = 0;
    v18[0] = 0;
    v18[1] = 0;
  }

  HIDWORD(v4) = 0;
  v16 = 134218496;
  do
  {
    if (*(v3 + 56) == 1)
    {
      v5 = *(v3 + 6);
      v6 = v3[8];
      *&v4 = v6;
      [v5 onElevationThresold:*(v3 + 41) direction:v4];
      if (qword_1025D4410 != -1)
      {
        sub_1019CB984();
      }

      v7 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v3 + 41);
        *buf = v16;
        v26 = v6;
        v27 = 2048;
        v28 = v5;
        v29 = 1024;
        v30 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "threshold,%f,client,%p,above,%d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019CBB90(buf);
        v12 = *(v3 + 41);
        v19 = v16;
        v20 = v6;
        v21 = 2048;
        v22 = v5;
        v23 = 1024;
        v24 = v12;
        LODWORD(v15) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "threshold,%f,client,%p,above,%d", COERCE_DOUBLE(&v19), v15, v16);
        v14 = v13;
        sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibration alertElevationAlertClientsOnChange]", "%s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    v9 = *(v3 + 1);
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = *(v3 + 2);
        v11 = *v10 == v3;
        v3 = v10;
      }

      while (!v11);
    }

    v3 = v10;
  }

  while (v10 != v18);
LABEL_3:
  sub_1003C93BC(&v17, v18[0]);
}

@end