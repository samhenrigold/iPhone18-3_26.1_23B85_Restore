void sub_19B6D7D4C(uint64_t a1)
{
  sub_19B6DB848(a1);
  v2 = *(a1 + 192);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 192));
    *(a1 + 192) = 0;
  }

  v3 = mach_absolute_time();
  v4 = sub_19B41E070(v3) - *a1;
  if (*(a1 + 80) >= 0.00001 && v4 >= 5.0)
  {
    v6 = 68;
    if (*(a1 + 96))
    {
      v6 = 64;
    }

    sub_19B74FB58(*(a1 + v6));
    AnalyticsSendEventLazy();
  }

  *(a1 + 80) = 0;
}

void sub_19B6D7E9C(uint64_t a1, int a2, int a3, double a4)
{
  v8 = *(a1 + 80);
  if (v8 != a4 && v8 > 0.00001)
  {
    sub_19B6D7D4C(a1);
  }

  *(a1 + 80) = a4;
  *(a1 + 88) = a3;
  v9 = mach_absolute_time();
  *a1 = sub_19B41E070(v9);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v10 = *(a1 + 80);
  *(a1 + 48) = v10;
  *(a1 + 56) = v10;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  *(a1 + 116) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = a2;
  *(a1 + 98) = 0;
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  *(a1 + 96) = !sub_19B74FBF4(qword_1ED71D420);
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  *(a1 + 97) = (sub_19B74FC3C(qword_1ED71D420) & 6) == 4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_19B7BC360;
  *(a1 + 168) = 0;
  if (!*(a1 + 192))
  {
    context.version = 0;
    context.info = a1;
    memset(&context.retain, 0, 24);
    *(a1 + 192) = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B6DB7C4, &context);
    sub_19B420D84();
    CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 192), *MEMORY[0x1E695E8D0]);
  }

  *(a1 + 184) = 0x3FF0000000000000;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 176) = Current;
  CFRunLoopTimerSetNextFireDate(*(a1 + 192), Current + *(a1 + 184));
}

double sub_19B6D8074(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    *(a1 + 296) = *a3;
    goto LABEL_5;
  }

  if (!a2)
  {
    *(a1 + 288) = *a3;
LABEL_5:
    sub_19B6D7464(a1);
    return *a3;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v6 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Unrecognized interval notification %{public}d", buf, 8u);
  }

  v7 = sub_19B420058();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || (result = 0.0, *(v7 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v10[0] = 67240192;
    v10[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryDeviceMotion] Unrecognized interval notification %{public}d", v10, 8);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }

    return 0.0;
  }

  return result;
}

BOOL sub_19B6D8268(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    sub_19B750AC4(result);
    result = sub_19B74FBF4(v3);
    *(v3 + 304) = result;
  }

  return result;
}

uint64_t sub_19B6D82A0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = sub_19B74FBF4(a1);
  v3 = *(a1 + 304);
  result = sub_19B74FBF4(a1);
  if (v3 != result)
  {
    v5 = (a1 + 304);
    *(a1 + 304) = v2;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_19B74FBA4(*v5);
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] sending accessory status to clients: %{public}@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v9 = qword_1ED71C7C8;
      v10 = sub_19B74FBA4(*v5);
      v14 = 138543362;
      v15 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[AccessoryDeviceMotion] sending accessory status to clients: %{public}@", &v14, 12);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::sendAccessoryStatus()", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = mach_absolute_time();
    sub_19B41E070(v13);
    return sub_19B41DF08(a1, 3, a1 + 304, 4);
  }

  return result;
}

void sub_19B6D84C4(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  sub_19B750848(a1, a2);
  if (!a2)
  {
LABEL_4:
    *(a1 + 308) = sub_19B74FC3C(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v4 = (a1 + 308);
    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_19B74FB80(*v4);
      *buf = 138543362;
      v40 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Received InEar status update from AudioAccessoryInterface - %{public}@", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v8 = qword_1ED71C7C8;
      v9 = sub_19B74FB80(*v4);
      LODWORD(v38) = 138543362;
      *(&v38 + 4) = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 0, "[AccessoryDeviceMotion] Received InEar status update from AudioAccessoryInterface - %{public}@", &v38, 12);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onAudioAccessoryInterfaceCallback(CLAudioAccessoryInterface::Event)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    (*(*a1 + 48))(a1);
    v12 = *(a1 + 308);
    if (v12 <= 5 && ((1 << v12) & 0x34) != 0)
    {
      v13 = a1 + 80;
      v14 = 4;
    }

    else
    {
      v13 = a1 + 80;
      v14 = 5;
    }

    sub_19B79A0E8(v13, v14, buf);
    v24 = mach_absolute_time();
    sub_19B41E070(v24);
    sub_19B41DF08(a1, 4, a1 + 308, 4);
    if (!*(a1 + 48))
    {
      *(a1 + 29) = 0;
    }

    return;
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return;
    }

    goto LABEL_4;
  }

  v15 = sub_19B7851B0();
  sub_19B787E50(v15, a1);
  sub_19B4238F4(*(a1 + 32), rint(0.0));
  v16 = *(a1 + 96);
  if (v16 == 2)
  {
    v25 = sub_19B7851B0();
    sub_19B787D50(v25, a1, 0);
    (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
    v26 = *(a1 + 280);
    v27 = rint(v26 * 1000000.0);
    if (v26 < 0.0)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    sub_19B4238F4(*(a1 + 32), v28);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v29 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during Streaming. Resetting...", buf, 2u);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] USB Mode change during Streaming. Resetting...", &v38, 2, v38);
      goto LABEL_69;
    }
  }

  else if (v16 == 1)
  {
    v17 = sub_19B7851B0();
    sub_19B787D50(v17, a1, 1);
    (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
    v18 = *(a1 + 280);
    v19 = rint(v18 * 1000000.0);
    if (v18 < 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    sub_19B4238F4(*(a1 + 32), v20);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v21 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during Spatial Audio. Resetting...", buf, 2u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] USB Mode change during Spatial Audio. Resetting...", &v38, 2, v38);
LABEL_69:
      v37 = v23;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onAudioAccessoryInterfaceCallback(CLAudioAccessoryInterface::Event)", "CoreLocation: %s\n", v23);
      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v31 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 96);
      if (v32 > 3)
      {
        v33 = @"?";
      }

      else
      {
        v33 = off_1E75345E8[v32];
      }

      *buf = 138543362;
      v40 = v33;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during %{public}@. Skipping...", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v35 = *(a1 + 96);
      if (v35 > 3)
      {
        v36 = @"?";
      }

      else
      {
        v36 = off_1E75345E8[v35];
      }

      LODWORD(v38) = 138543362;
      *(&v38 + 4) = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] USB Mode change during %{public}@. Skipping...", &v38, 12, v38);
      goto LABEL_69;
    }
  }
}

void sub_19B6D8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v231 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v8 = IntegerValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return;
  }

  v9 = IntegerValue;
  v10 = (*(**(a1 + 32) + 24))(*(a1 + 32), @"Transport");
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"Virtual");

  if (isEqualToString)
  {
    return;
  }

  *&v175 = 0;
  *(&v175 + 1) = 0x3F80000000000000;
  WORD2(v178) = 0;
  *(&v178 + 1) = 0;
  *&v179 = 0;
  TimeStamp = IOHIDEventGetTimeStamp();
  *(&v179 + 1) = sub_19B41E070(TimeStamp);
  memset(&v180[12], 0, 70);
  v174 = 0;
  v14 = sub_19B7953F8(a4, &v174);
  v15 = v14;
  *&v180[32] = v14;
  v16.i32[1] = HIDWORD(v179);
  *&v179 = *(&v179 + 1);
  if (v174 == 1 && v14)
  {
    if (*(a1 + 336) < 0.00001)
    {
      *(a1 + 336) = *(&v179 + 1);
    }

    v17 = sub_19B7851B0();
    v19 = sub_19B787F84(v17, v15, v18);
    v20 = v19;
    if (v19)
    {
      v21 = sub_19B41E070(v19);
      if (vabdd_f64(*(&v179 + 1), v21) < 3600.0)
      {
        *&v180[40] = *(&v179 + 1) - v21;
        *&v179 = v21;
        *&v180[28] = *(a1 + 272);
        if (*(&v179 + 1) - v21 <= 0.100000001)
        {
          if (*(&v179 + 1) - v21 <= 0.0)
          {
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v48 = qword_1ED71C7C8;
            if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
            {
              v49 = *&v180[32];
              v50 = IOHIDEventGetTimeStamp();
              *buf = 134349824;
              *&buf[4] = v49;
              *&buf[12] = 2050;
              *&buf[14] = v50;
              *&buf[22] = 2050;
              *&buf[24] = v20;
              *&buf[32] = 2050;
              *&buf[34] = (*&v180[40] * 1000000000.0);
              _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Zero or Negative TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
            }

            v51 = sub_19B420058();
            if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
            {
              goto LABEL_62;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v52 = qword_1ED71C7C8;
            v53 = *&v180[32];
            v54 = IOHIDEventGetTimeStamp();
            v182 = 134349824;
            *&v183[0] = v53;
            WORD4(v183[0]) = 2050;
            *(v183 + 10) = v54;
            WORD1(v183[1]) = 2050;
            *(&v183[1] + 4) = v20;
            WORD6(v183[1]) = 2050;
            *(&v183[1] + 14) = (*&v180[40] * 1000000000.0);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v52, 16, "[AccessoryDeviceMotion] Zero or Negative TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", &v182, 42);
            v29 = v55;
            sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v55);
          }

          else
          {
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v40 = qword_1ED71C7C8;
            if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
            {
              v41 = *&v180[32];
              v42 = IOHIDEventGetTimeStamp();
              *buf = 134349824;
              *&buf[4] = v41;
              *&buf[12] = 2050;
              *&buf[14] = v42;
              *&buf[22] = 2050;
              *&buf[24] = v20;
              *&buf[32] = 2050;
              *&buf[34] = (*&v180[40] * 1000000000.0);
              _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEBUG, "[AccessoryDeviceMotion] W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
            }

            v43 = sub_19B420058();
            if (*(v43 + 160) <= 1 && *(v43 + 164) <= 1 && *(v43 + 168) <= 1 && !*(v43 + 152))
            {
              goto LABEL_62;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v44 = qword_1ED71C7C8;
            v45 = *&v180[32];
            v46 = IOHIDEventGetTimeStamp();
            v182 = 134349824;
            *&v183[0] = v45;
            WORD4(v183[0]) = 2050;
            *(v183 + 10) = v46;
            WORD1(v183[1]) = 2050;
            *(&v183[1] + 4) = v20;
            WORD6(v183[1]) = 2050;
            *(&v183[1] + 14) = (*&v180[40] * 1000000000.0);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v44, 2, "[AccessoryDeviceMotion] W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", &v182, 42);
            v29 = v47;
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v47);
          }
        }

        else
        {
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v22 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            v173 = *&v180[32];
            v23 = IOHIDEventGetTimeStamp();
            *buf = 134349824;
            *&buf[4] = v173;
            *&buf[12] = 2050;
            *&buf[14] = v23;
            *&buf[22] = 2050;
            *&buf[24] = v20;
            *&buf[32] = 2050;
            *&buf[34] = (*&v180[40] * 1000000000.0);
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] High TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
          }

          v24 = sub_19B420058();
          if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
          {
            goto LABEL_62;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v25 = qword_1ED71C7C8;
          v26 = *&v180[32];
          v27 = IOHIDEventGetTimeStamp();
          v182 = 134349824;
          *&v183[0] = v26;
          WORD4(v183[0]) = 2050;
          *(v183 + 10) = v27;
          WORD1(v183[1]) = 2050;
          *(&v183[1] + 4) = v20;
          WORD6(v183[1]) = 2050;
          *(&v183[1] + 14) = (*&v180[40] * 1000000000.0);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v25, 16, "[AccessoryDeviceMotion] High TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", &v182, 42);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v28);
        }

        if (v29 != buf)
        {
          free(v29);
        }

LABEL_62:
        v56 = *(&v179 + 1);
        v16.i64[0] = *&v180[40];
        ++*(a1 + 428);
        if (*(a1 + 344) < 0.00001)
        {
          *(a1 + 344) = v56;
        }

        v57 = *(a1 + 352);
        if (v57 >= 0.00001)
        {
          v58 = *(a1 + 360);
          v59 = *(a1 + 368);
          if (v58 > *v16.i64)
          {
            v58 = *v16.i64;
          }

          if (v59 < *v16.i64)
          {
            v59 = *v16.i64;
          }

          *(a1 + 360) = v58;
          *(a1 + 368) = v59;
        }

        else
        {
          *(a1 + 360) = v16.i64[0];
          *(a1 + 368) = v16.i64[0];
        }

        *(a1 + 352) = *v16.i64 + v57;
        if (*v16.i64 > 0.100000001)
        {
          ++*(a1 + 436);
        }

        goto LABEL_73;
      }

      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v31 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v32 = *&v180[32];
        v33 = IOHIDEventGetTimeStamp();
        *buf = 134349824;
        *&buf[4] = v32;
        *&buf[12] = 2050;
        *&buf[14] = v33;
        *&buf[22] = 2050;
        *&buf[24] = v20;
        *&buf[32] = 2050;
        *&buf[34] = (*&v180[40] * 1000000000.0);
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Abnormal TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
      }

      v34 = sub_19B420058();
      if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v35 = qword_1ED71C7C8;
        v36 = *&v180[32];
        v37 = IOHIDEventGetTimeStamp();
        v182 = 134349824;
        *&v183[0] = v36;
        WORD4(v183[0]) = 2050;
        *(v183 + 10) = v37;
        WORD1(v183[1]) = 2050;
        *(&v183[1] + 4) = v20;
        WORD6(v183[1]) = 2050;
        *(&v183[1] + 14) = (*&v180[40] * 1000000000.0);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v35, 16, "[AccessoryDeviceMotion] Abnormal TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", &v182, 42);
        v39 = v38;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }
    }

    else
    {
      v16.i64[0] = *(a1 + 344);
      if (*v16.i64 > 0.00001)
      {
        ++*(a1 + 432);
      }
    }
  }

  else if ((v174 & 1) == 0)
  {
    *&v180[28] = *(a1 + 272);
    v30 = mach_absolute_time();
    *v16.i64 = sub_19B41E070(v30);
    *(&v179 + 1) = v16.i64[0];
  }

LABEL_73:
  v60 = *DataValue;
  if ((v60 < 4 || v9 != 47) && (v60 != 3 || v9 != 49))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v71 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      *&buf[4] = v9;
      *&buf[12] = 1026;
      *&buf[14] = v60;
      _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Invalid accessory device motion packet size %{public}ld and version %{public}d", buf, 0x12u);
    }

    v72 = sub_19B420058();
    if ((*(v72 + 160) & 0x80000000) != 0 && (*(v72 + 164) & 0x80000000) != 0 && (*(v72 + 168) & 0x80000000) != 0 && !*(v72 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v182 = 134349312;
    *&v183[0] = v9;
    WORD4(v183[0]) = 1026;
    *(v183 + 10) = v60;
    LODWORD(v172) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryDeviceMotion] Invalid accessory device motion packet size %{public}ld and version %{public}d", &v182, v172);
    v74 = v73;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v73);
LABEL_222:
    if (v74 != buf)
    {
      free(v74);
    }

    return;
  }

  *&v180[20] = *(DataValue + 45);
  if ((*(DataValue + 1) & 0x80) != 0)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v67 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v67, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Invalid IMU error on accessory", buf, 2u);
    }

    v68 = sub_19B420058();
    if ((*(v68 + 160) & 0x80000000) == 0 || (*(v68 + 164) & 0x80000000) == 0 || (*(v68 + 168) & 0x80000000) == 0 || *(v68 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      LOWORD(v182) = 0;
      LODWORD(v172) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] Invalid IMU error on accessory", &v182, v172);
      v70 = v69;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v69);
      if (v70 != buf)
      {
        free(v70);
      }
    }

    *(a1 + 427) = 1;
    return;
  }

  *(&v178 + 1) = *(DataValue + 3);
  v61 = *(DataValue + 13) / 32767.0;
  v62 = *(DataValue + 15) / 32767.0;
  *buf = *(DataValue + 11) / 32767.0;
  *&buf[4] = v61;
  v16.f32[0] = sqrtf(fmaxf(((1.0 - (*buf * *buf)) - (v61 * v61)) - (v62 * v62), 0.0));
  *&buf[8] = v62;
  *&buf[12] = v16.i32[0];
  sub_19B41E130(buf, v16);
  v175 = *buf;
  v63 = vcvts_n_f32_s32(*(DataValue + 33), 0xAuLL);
  *(&v177 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 31), 0xAuLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 29), 0xAuLL)));
  *&v178 = v63;
  v64 = vcvts_n_f32_s32(*(DataValue + 21), 9uLL);
  *&v176 = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 19), 9uLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 17), 9uLL)));
  *(&v176 + 2) = v64;
  if (v60 < 5)
  {
    *&v180[61] = 0;
    *&v75 = vcvts_n_f32_u32(*(DataValue + 25), 0x17uLL);
    *&v76 = vcvts_n_f32_u32(*(DataValue + 27), 0x17uLL);
    HIDWORD(v176) = vcvts_n_f32_u32(*(DataValue + 23), 0x17uLL);
    *&v177 = __PAIR64__(v76, v75);
  }

  else
  {
    HIDWORD(v176) = vcvts_n_f32_u32(*(DataValue + 23), 0x17uLL);
    LODWORD(v177) = HIDWORD(v176);
    DWORD1(v177) = HIDWORD(v176);
    if (v60 == 5)
    {
      v65 = 0;
      v66 = 0;
    }

    else
    {
      v66 = DataValue[25];
      v65 = 1;
    }

    v180[62] = v65;
    v180[61] = v66;
    if (DataValue[26] || DataValue[27] || (LOBYTE(v77) = DataValue[28], v77))
    {
      v77 = (*(DataValue + 1) >> 9) & 1;
    }

    v180[60] = v77;
    *&v180[48] = DataValue[26] / 127.0;
    *&v180[52] = DataValue[27] / 127.0;
    *&v180[56] = DataValue[28] / 127.0;
  }

  v78 = vcvts_n_f32_s32(*(DataValue + 37), 0xAuLL);
  v79 = vcvts_n_f32_s32(*(DataValue + 39), 0xAuLL);
  *v180 = vcvts_n_f32_s32(*(DataValue + 35), 0xAuLL);
  *&v180[4] = v78;
  *&v180[8] = v79;
  *&v180[12] = *(DataValue + 41);
  v80 = *(DataValue + 1);
  v81 = (v80 >> 14) & 2;
  if ((v80 & 0x4000) != 0)
  {
    v81 = 1;
  }

  *&v180[16] = v81;
  WORD2(v178) = v80 & 0x3FFF;
  v180[63] = (*(a1 + 308) < 6u) & (0x34u >> *(a1 + 308));
  *v195 = 0;
  v181 = 0.0;
  v202 = 0.0;
  if (sub_19B5E44E4(v195, &v181, &v202))
  {
    *&v180[64] = v181 - (*v195 - *&v179);
    *&v180[72] = v202 - (*v195 - *&v179);
  }

  else
  {
    *&v180[64] = 0;
    *&v180[72] = 0;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v82 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = *(&v178 + 1);
      _os_log_impl(&dword_19B41C000, v82, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] CLCommonSyncGetTimes failed for currSensorTime,%{public}.llu", buf, 0xCu);
    }

    v83 = sub_19B420058();
    if ((*(v83 + 160) & 0x80000000) == 0 || (*(v83 + 164) & 0x80000000) == 0 || (*(v83 + 168) & 0x80000000) == 0 || *(v83 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v182 = 134349056;
      *&v183[0] = *(&v178 + 1);
      LODWORD(v172) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] CLCommonSyncGetTimes failed for currSensorTime,%{public}.llu", &v182, v172);
      v85 = v84;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v84);
      if (v85 != buf)
      {
        free(v85);
      }
    }
  }

  v180[80] = *(a1 + 308) != 5;
  v180[81] = 0;
  v86 = *(&v178 + 1);
  v87 = *&v180[20];
  v88 = *&v180[28];
  v89 = WORD2(v178);
  v90 = *&v180[40];
  *(a1 + 460) = *&v180[20];
  *(a1 + 464) = v86;
  *(a1 + 456) = v88;
  *(a1 + 462) = v89;
  *(a1 + 472) = v60;
  ++*(a1 + 448);
  if (v88)
  {
    ++*(a1 + 452);
    v91 = *(a1 + 488);
    if (v91 > v90)
    {
      v91 = v90;
    }

    *(a1 + 480) = v90 + *(a1 + 480);
    *(a1 + 488) = v91;
    if (*(a1 + 496) >= v90)
    {
      v90 = *(a1 + 496);
    }

    *(a1 + 496) = v90;
  }

  v92 = *(a1 + 212);
  v93 = *(a1 + 204);
  if (v88 && v88 == v92 && v87 > v93)
  {
    v94.f64[1] = *(a1 + 384);
    v94.f64[0] = (*&v179 - *(a1 + 168)) / (v87 - v93);
    v95.f64[0] = *(a1 + 376);
    v95.f64[1] = v94.f64[0];
    *(a1 + 376) = vbslq_s8(vcgtq_f64(v95, v94), vdupq_lane_s64(*&v94.f64[0], 0), *(a1 + 376));
  }

  if (v87 && v87 == v93)
  {
    ++*(a1 + 444);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v96 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      v97 = *(a1 + 204);
      v98 = *(a1 + 160);
      *buf = 67240960;
      *&buf[4] = v97;
      *&buf[8] = 2050;
      *&buf[10] = v98;
      *&buf[18] = 1026;
      *&buf[20] = *&v180[20];
      *&buf[24] = 2050;
      *&buf[26] = *(&v178 + 1);
      _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received duplicate packets: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
    }

    v99 = sub_19B420058();
    if ((*(v99 + 160) & 0x80000000) == 0 || (*(v99 + 164) & 0x80000000) == 0 || (*(v99 + 168) & 0x80000000) == 0 || *(v99 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v100 = *(a1 + 204);
      v101 = *(a1 + 160);
      v182 = 67240960;
      LODWORD(v183[0]) = v100;
      WORD2(v183[0]) = 2050;
      *(v183 + 6) = v101;
      HIWORD(v183[0]) = 1026;
      LODWORD(v183[1]) = *&v180[20];
      WORD2(v183[1]) = 2050;
      *(&v183[1] + 6) = *(&v178 + 1);
      LODWORD(v172) = 34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] Received duplicate packets: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", &v182, v172);
      v103 = v102;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v102);
LABEL_171:
      if (v103 != buf)
      {
        free(v103);
      }
    }
  }

  else if (v87 < 3 || v87 >= v93)
  {
    if (v86 < 0xC351 || v86 >= *(a1 + 160))
    {
      if (v88 && v92 && *&v179 < *(a1 + 168))
      {
        ++*(a1 + 440);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v140 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          v141 = *(a1 + 204);
          v142 = *(a1 + 168);
          *buf = 67240960;
          *&buf[4] = v141;
          *&buf[8] = 2050;
          *&buf[10] = v142;
          *&buf[18] = 1026;
          *&buf[20] = *&v180[20];
          *&buf[24] = 2050;
          *&buf[26] = v179;
          _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] TimeSynced timestamp went backward: lastSeq,%{public}d,lastTimestamp,%{public}.3f,currSeq,%{public}d,currTimestamp,%{public}.3f", buf, 0x22u);
        }

        v143 = sub_19B420058();
        if ((*(v143 + 160) & 0x80000000) == 0 || (*(v143 + 164) & 0x80000000) == 0 || (*(v143 + 168) & 0x80000000) == 0 || *(v143 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v144 = *(a1 + 204);
          v145 = *(a1 + 168);
          v182 = 67240960;
          LODWORD(v183[0]) = v144;
          WORD2(v183[0]) = 2050;
          *(v183 + 6) = v145;
          HIWORD(v183[0]) = 1026;
          LODWORD(v183[1]) = *&v180[20];
          WORD2(v183[1]) = 2050;
          *(&v183[1] + 6) = v179;
          LODWORD(v172) = 34;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] TimeSynced timestamp went backward: lastSeq,%{public}d,lastTimestamp,%{public}.3f,currSeq,%{public}d,currTimestamp,%{public}.3f", &v182, v172);
          v103 = v146;
          sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v146);
          goto LABEL_171;
        }
      }
    }

    else
    {
      ++*(a1 + 440);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v111 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v112 = *(a1 + 204);
        v113 = *(a1 + 160);
        *buf = 67240960;
        *&buf[4] = v112;
        *&buf[8] = 2050;
        *&buf[10] = v113;
        *&buf[18] = 1026;
        *&buf[20] = *&v180[20];
        *&buf[24] = 2050;
        *&buf[26] = *(&v178 + 1);
        _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received backward W2 GTB timestamp: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
      }

      v114 = sub_19B420058();
      if ((*(v114 + 160) & 0x80000000) == 0 || (*(v114 + 164) & 0x80000000) == 0 || (*(v114 + 168) & 0x80000000) == 0 || *(v114 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v115 = *(a1 + 204);
        v116 = *(a1 + 160);
        v182 = 67240960;
        LODWORD(v183[0]) = v115;
        WORD2(v183[0]) = 2050;
        *(v183 + 6) = v116;
        HIWORD(v183[0]) = 1026;
        LODWORD(v183[1]) = *&v180[20];
        WORD2(v183[1]) = 2050;
        *(&v183[1] + 6) = *(&v178 + 1);
        LODWORD(v172) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] Received backward W2 GTB timestamp: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", &v182, v172);
        v103 = v117;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v117);
        goto LABEL_171;
      }
    }
  }

  else
  {
    ++*(a1 + 440);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v104 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      v105 = *(a1 + 204);
      v106 = *(a1 + 160);
      *buf = 67240960;
      *&buf[4] = v105;
      *&buf[8] = 2050;
      *&buf[10] = v106;
      *&buf[18] = 1026;
      *&buf[20] = *&v180[20];
      *&buf[24] = 2050;
      *&buf[26] = *(&v178 + 1);
      _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received backward sequence number: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
    }

    v107 = sub_19B420058();
    if ((*(v107 + 160) & 0x80000000) == 0 || (*(v107 + 164) & 0x80000000) == 0 || (*(v107 + 168) & 0x80000000) == 0 || *(v107 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v108 = *(a1 + 204);
      v109 = *(a1 + 160);
      v182 = 67240960;
      LODWORD(v183[0]) = v108;
      WORD2(v183[0]) = 2050;
      *(v183 + 6) = v109;
      HIWORD(v183[0]) = 1026;
      LODWORD(v183[1]) = *&v180[20];
      WORD2(v183[1]) = 2050;
      *(&v183[1] + 6) = *(&v178 + 1);
      LODWORD(v172) = 34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryDeviceMotion] Received backward sequence number: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", &v182, v172);
      v103 = v110;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v110);
      goto LABEL_171;
    }
  }

  v118 = *&v180[16];
  *(a1 + 216) = *&v180[32];
  v119 = *&v180[64];
  *(a1 + 232) = *&v180[48];
  *(a1 + 248) = v119;
  v120 = v177;
  *(a1 + 152) = v178;
  v121 = *v180;
  *(a1 + 168) = v179;
  *(a1 + 184) = v121;
  *(a1 + 200) = v118;
  v122 = v176;
  *(a1 + 104) = v175;
  *(a1 + 120) = v122;
  *(a1 + 264) = *&v180[80];
  *(a1 + 136) = v120;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v123 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 67241216;
    *&buf[4] = *&v180[20];
    *&buf[8] = 2050;
    *&buf[10] = *(&v178 + 1);
    *&buf[18] = 2050;
    *&buf[20] = v179;
    *&buf[28] = 1026;
    *&buf[30] = *&v180[28];
    *&buf[34] = 2050;
    *&buf[36] = *&v180[40];
    _os_log_impl(&dword_19B41C000, v123, OS_LOG_TYPE_INFO, "[AccessoryDeviceMotion] seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,TimeSyncStatus,%{public}u,latency,%{public}20.20f", buf, 0x2Cu);
  }

  v124 = sub_19B420058();
  if (*(v124 + 160) > 1 || *(v124 + 164) > 1 || *(v124 + 168) > 1 || *(v124 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v182 = 67241216;
    LODWORD(v183[0]) = *&v180[20];
    WORD2(v183[0]) = 2050;
    *(v183 + 6) = *(&v178 + 1);
    HIWORD(v183[0]) = 2050;
    *&v183[1] = v179;
    WORD4(v183[1]) = 1026;
    *(&v183[1] + 10) = *&v180[28];
    HIWORD(v183[1]) = 2050;
    *&v183[2] = *&v180[40];
    LODWORD(v172) = 44;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryDeviceMotion] seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,TimeSyncStatus,%{public}u,latency,%{public}20.20f", &v182, v172);
    v126 = v125;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v125);
    if (v126 != buf)
    {
      free(v126);
    }
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v127 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134353664;
    *&buf[4] = *&v175;
    *&buf[12] = 2050;
    *&buf[14] = *(&v175 + 1);
    *&buf[22] = 2050;
    *&buf[24] = *(&v175 + 2);
    *&buf[32] = 2050;
    *&buf[34] = *(&v175 + 3);
    *&buf[42] = 2050;
    *&buf[44] = *&v176;
    *&buf[52] = 2050;
    v204 = *(&v176 + 1);
    v205 = 2050;
    v206 = *(&v176 + 2);
    v207 = 2050;
    v208 = *(&v176 + 3);
    v209 = 2050;
    v210 = *&v177;
    v211 = 2050;
    v212 = *(&v177 + 1);
    v213 = 2050;
    v214 = *(&v177 + 2);
    v215 = 2050;
    v216 = *(&v177 + 3);
    v217 = 2050;
    v218 = *&v178;
    v219 = 2050;
    v220 = *v180;
    v221 = 2050;
    v222 = *&v180[4];
    v223 = 2050;
    v224 = *&v180[8];
    v225 = 1026;
    v226 = WORD2(v178);
    v227 = 2050;
    v228 = *&v180[12];
    v229 = 1026;
    v230 = *&v180[16];
    _os_log_impl(&dword_19B41C000, v127, OS_LOG_TYPE_DEBUG, "[AccessoryDeviceMotion] q.x,%{public}20.20f,q.y,%{public}20.20f,q.z,%{public}20.20f,q.w,%{public}20.20f,rotationRate.x,%{public}20.20f,rotationRate.y,%{public}20.20f,rotationRate.z,%{public}20.20f,variance.x,%{public}20.20f,variance.y,%{public}20.20f,variance.z,%{public}20.20f,userAccel.x,%{public}20.20f,userAccel.y,%{public}20.20f,userAccel.z,%{public}20.20f,filteredAccel.x,%{public}20.20f,filteredAccel.y,%{public}20.20f,filteredAccel.z,%{public}20.20f,status,%{public}04x,quiescentNoise,%{public}20.20f,quiescentMode,%{public}d", buf, 0xB8u);
  }

  v128 = sub_19B420058();
  if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v182 = 134353664;
    *v183 = *&v175;
    WORD4(v183[0]) = 2050;
    *(v183 + 10) = *(&v175 + 1);
    WORD1(v183[1]) = 2050;
    *(&v183[1] + 4) = *(&v175 + 2);
    WORD6(v183[1]) = 2050;
    *(&v183[1] + 14) = *(&v175 + 3);
    WORD3(v183[2]) = 2050;
    *(&v183[2] + 1) = *&v176;
    LOWORD(v184[0]) = 2050;
    *(v184 + 2) = *(&v176 + 1);
    HIWORD(v184[2]) = 2050;
    *&v184[3] = *(&v176 + 2);
    LOWORD(v184[5]) = 2050;
    *(&v184[5] + 2) = *(&v176 + 3);
    HIWORD(v184[7]) = 2050;
    *&v184[8] = *&v177;
    LOWORD(v184[10]) = 2050;
    *(&v184[10] + 2) = *(&v177 + 1);
    HIWORD(v184[12]) = 2050;
    *v185 = *(&v177 + 2);
    *&v185[8] = 2050;
    *&v185[10] = *(&v177 + 3);
    *&v185[18] = 2050;
    *v186 = *&v178;
    LOWORD(v186[2]) = 2050;
    *(&v186[2] + 2) = *v180;
    HIWORD(v186[4]) = 2050;
    *&v186[5] = *&v180[4];
    v187 = 2050;
    v188 = *&v180[8];
    v189 = 1026;
    v190 = WORD2(v178);
    v191 = 2050;
    v192 = *&v180[12];
    v193 = 1026;
    v194 = *&v180[16];
    LODWORD(v172) = 184;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryDeviceMotion] q.x,%{public}20.20f,q.y,%{public}20.20f,q.z,%{public}20.20f,q.w,%{public}20.20f,rotationRate.x,%{public}20.20f,rotationRate.y,%{public}20.20f,rotationRate.z,%{public}20.20f,variance.x,%{public}20.20f,variance.y,%{public}20.20f,variance.z,%{public}20.20f,userAccel.x,%{public}20.20f,userAccel.y,%{public}20.20f,userAccel.z,%{public}20.20f,filteredAccel.x,%{public}20.20f,filteredAccel.y,%{public}20.20f,filteredAccel.z,%{public}20.20f,status,%{public}04x,quiescentNoise,%{public}20.20f,quiescentMode,%{public}d", &v182, v172);
    v130 = v129;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v129);
    if (v130 != buf)
    {
      free(v130);
    }
  }

  v181 = *&v179;
  if (*(a1 + 29))
  {
    goto LABEL_198;
  }

  v183[0] = xmmword_19B7BC41E;
  memset(&v183[1], 0, 32);
  *v184 = unk_19B7BC44E;
  *&v184[4] = xmmword_19B7BC45E;
  *(a1 + 29) = 1;
  v182 = 0;
  memset(&v184[8], 0, 20);
  v185[0] = 0;
  *&v185[4] = 0;
  *&v185[12] = 0x3F80000000000000;
  *&v186[1] = 0;
  v186[3] = 0;
  v186[4] = 1065353216;
  if (!sub_19B74FCD0(a1, &v182))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v137 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Service not found!", buf, 2u);
    }

    v138 = sub_19B420058();
    if ((*(v138 + 160) & 0x80000000) != 0 && (*(v138 + 164) & 0x80000000) != 0 && (*(v138 + 168) & 0x80000000) != 0 && !*(v138 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    *v195 = 0;
    LODWORD(v172) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryDeviceMotion] Service not found!", v195, v172);
    v74 = v139;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v139);
    goto LABEL_222;
  }

  v131 = sub_19B43EE18(*(a1 + 32));
  if (sub_19B7960E8(&v202, v131, @"H2HTransformation", 8))
  {
    LOBYTE(v186[0]) = 1;
    *buf = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*&v202)), vdupq_n_s32(0x38000100u));
    sub_19B41E130(buf, *buf);
    *&v186[1] = *buf;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v132 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      *&buf[4] = *&v186[1];
      *&buf[12] = 2050;
      *&buf[14] = *&v186[2];
      *&buf[22] = 2050;
      *&buf[24] = *&v186[3];
      *&buf[32] = 2050;
      *&buf[34] = *&v186[4];
      _os_log_impl(&dword_19B41C000, v132, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Received headset to head transformation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", buf, 0x2Au);
    }

    v133 = sub_19B420058();
    if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || *(v133 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      *v195 = 134349824;
      *&v195[4] = *&v186[1];
      v196 = 2050;
      v197 = *&v186[2];
      v198 = 2050;
      v199[0] = *&v186[3];
      LOWORD(v199[1]) = 2050;
      *(&v199[1] + 2) = *&v186[4];
      LODWORD(v172) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Received headset to head transformation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", v195, v172);
      v136 = v135;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v135);
LABEL_249:
      if (v136 != buf)
      {
        free(v136);
      }
    }
  }

  else
  {
    LOBYTE(v186[0]) = 0;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v147 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v147, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Warning! Headset to Head transformation is not available from the accessory.", buf, 2u);
    }

    v148 = sub_19B420058();
    if (*(v148 + 160) > 1 || *(v148 + 164) > 1 || *(v148 + 168) > 1 || *(v148 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      *v195 = 0;
      LODWORD(v172) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Warning! Headset to Head transformation is not available from the accessory.", v195, v172);
      v136 = v149;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v149);
      goto LABEL_249;
    }
  }

  if (LOBYTE(v186[0]) != 1)
  {
    v157 = v184[12];
    v158 = v182;
    if ((atomic_load_explicit(&qword_1ED71D430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D430))
    {
      xmmword_1ED71D490 = xmmword_19B7B7E30;
      sub_19B41E130(&xmmword_1ED71D490, xmmword_19B7B7E30);
      __cxa_guard_release(&qword_1ED71D430);
    }

    if ((atomic_load_explicit(&qword_1ED71D438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D438))
    {
      xmmword_1ED71D4A0 = xmmword_19B7BC370;
      sub_19B41E130(&xmmword_1ED71D4A0, xmmword_19B7BC370);
      __cxa_guard_release(&qword_1ED71D438);
    }

    if ((atomic_load_explicit(&qword_1ED71D440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D440))
    {
      xmmword_1ED71D4B0 = xmmword_19B7BC380;
      sub_19B41E130(&xmmword_1ED71D4B0, xmmword_19B7BC380);
      __cxa_guard_release(&qword_1ED71D440);
    }

    if ((atomic_load_explicit(&qword_1ED71D448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D448))
    {
      xmmword_1ED71D4C0 = xmmword_19B7BC390;
      sub_19B41E130(&xmmword_1ED71D4C0, xmmword_19B7BC390);
      __cxa_guard_release(&qword_1ED71D448);
    }

    if ((atomic_load_explicit(&qword_1ED71D450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D450))
    {
      xmmword_1ED71D4D0 = xmmword_19B7BC3A0;
      sub_19B41E130(&xmmword_1ED71D4D0, xmmword_19B7BC3A0);
      __cxa_guard_release(&qword_1ED71D450);
    }

    if ((atomic_load_explicit(&qword_1ED71D458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D458))
    {
      xmmword_1ED71D4E0 = xmmword_19B7BC3B0;
      sub_19B41E130(&xmmword_1ED71D4E0, xmmword_19B7BC3B0);
      __cxa_guard_release(&qword_1ED71D458);
    }

    if ((atomic_load_explicit(&qword_1ED71D460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D460))
    {
      xmmword_1ED71D4F0 = xmmword_19B7BC3C0;
      sub_19B41E130(&xmmword_1ED71D4F0, xmmword_19B7BC3C0);
      __cxa_guard_release(&qword_1ED71D460);
    }

    if ((atomic_load_explicit(&qword_1ED71D468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D468))
    {
      xmmword_1ED71D500 = xmmword_19B7BC3D0;
      sub_19B41E130(&xmmword_1ED71D500, xmmword_19B7BC3D0);
      __cxa_guard_release(&qword_1ED71D468);
    }

    if ((atomic_load_explicit(&qword_1ED71D470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D470))
    {
      xmmword_1ED71D510 = xmmword_19B7BC370;
      sub_19B41E130(&xmmword_1ED71D510, xmmword_19B7BC370);
      __cxa_guard_release(&qword_1ED71D470);
    }

    if ((atomic_load_explicit(&qword_1ED71D478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D478))
    {
      xmmword_1ED71D520 = xmmword_19B7BC380;
      sub_19B41E130(&xmmword_1ED71D520, xmmword_19B7BC380);
      __cxa_guard_release(&qword_1ED71D478);
    }

    if ((atomic_load_explicit(&qword_1ED71D480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D480))
    {
      xmmword_1ED71D530 = xmmword_19B7BC3E0;
      sub_19B41E130(&xmmword_1ED71D530, xmmword_19B7BC3E0);
      __cxa_guard_release(&qword_1ED71D480);
    }

    v159 = &xmmword_1ED71D490;
    if (v157 > 3)
    {
      if (v157 == 4)
      {
        v159 = &xmmword_1ED71D4F0;
      }

      else
      {
        if (v157 != 5)
        {
          if (v157 == 6)
          {
            v159 = &xmmword_1ED71D530;
          }

          goto LABEL_301;
        }

        v159 = &xmmword_1ED71D510;
      }

      goto LABEL_299;
    }

    if (v157 != 1)
    {
      if (v157 == 2)
      {
        v159 = &xmmword_1ED71D4C0;
      }

      else if (v157 == 3)
      {
        v159 = &xmmword_1ED71D4D0;
        goto LABEL_299;
      }

LABEL_301:
      *&v185[4] = *v159;
      goto LABEL_302;
    }

    v159 = &xmmword_1ED71D4A0;
LABEL_299:
    if (v158 != 2)
    {
      ++v159;
    }

    goto LABEL_301;
  }

  if ((atomic_load_explicit(&qword_1ED71D488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D488))
  {
    xmmword_1ED71D540 = xmmword_19B7BC3F0;
    sub_19B41E130(&xmmword_1ED71D540, xmmword_19B7BC3F0);
    __cxa_guard_release(&qword_1ED71D488);
  }

  *&v185[4] = sub_19B66BF70(&v186[1], &xmmword_1ED71D540, v134);
  *&v185[8] = v150;
  *&v185[12] = v151;
  *&v185[16] = v152;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v153 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = *&v185[4];
    *&buf[12] = 2050;
    *&buf[14] = *&v185[8];
    *&buf[22] = 2050;
    *&buf[24] = *&v185[12];
    *&buf[32] = 2050;
    *&buf[34] = *&v185[16];
    _os_log_impl(&dword_19B41C000, v153, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Derived device frame orientation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", buf, 0x2Au);
  }

  v154 = sub_19B420058();
  if (*(v154 + 160) > 1 || *(v154 + 164) > 1 || *(v154 + 168) > 1 || *(v154 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    *v195 = 134349824;
    *&v195[4] = *&v185[4];
    v196 = 2050;
    v197 = *&v185[8];
    v198 = 2050;
    v199[0] = *&v185[12];
    LOWORD(v199[1]) = 2050;
    *(&v199[1] + 2) = *&v185[16];
    LODWORD(v172) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Derived device frame orientation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", v195, v172);
    v156 = v155;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v155);
    if (v156 != buf)
    {
      free(v156);
    }
  }

LABEL_302:
  v160 = v184[12];
  v161 = v182;
  if (v184[12] > 0xAu)
  {
    v162 = 0;
  }

  else
  {
    v162 = 1;
    if (((1 << SLOBYTE(v184[12])) & 0x7BB) != 0)
    {
      if (v182 == 2)
      {
        v162 = 1;
      }

      else
      {
        v162 = 2;
      }
    }
  }

  *(a1 + 312) = v162;
  *(a1 + 392) = v160;
  *(a1 + 400) = v161;
  *(a1 + 426) = 1;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v163 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v164 = sub_19B74FB58(v184[12]);
    v165 = sub_19B74FBD0(*(a1 + 312));
    *buf = 138479107;
    *&buf[4] = v164;
    *&buf[12] = 2114;
    *&buf[14] = v165;
    *&buf[22] = 1026;
    *&buf[24] = v182;
    *&buf[28] = 2081;
    *&buf[30] = v183;
    *&buf[38] = 2081;
    *&buf[40] = &v184[4];
    *&buf[48] = 1026;
    *&buf[50] = v184[12];
    _os_log_impl(&dword_19B41C000, v163, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] config,%{private}@,location,%{public}@,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x36u);
  }

  v166 = sub_19B420058();
  if (*(v166 + 160) > 1 || *(v166 + 164) > 1 || *(v166 + 168) > 1 || *(v166 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v167 = qword_1ED71C7C8;
    v168 = sub_19B74FB58(v184[12]);
    *&v169 = COERCE_DOUBLE(sub_19B74FBD0(*(a1 + 312)));
    *v195 = 138479107;
    *&v195[4] = v168;
    v196 = 2114;
    v197 = *&v169;
    v198 = 1026;
    LODWORD(v199[0]) = v182;
    WORD2(v199[0]) = 2081;
    *(v199 + 6) = v183;
    HIWORD(v199[1]) = 2081;
    *&v199[2] = &v184[4];
    v200 = 1026;
    v201 = v184[12];
    LODWORD(v172) = 54;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v167, 0, "[AccessoryDeviceMotion] config,%{private}@,location,%{public}@,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", v195, v172);
    v171 = v170;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v170);
    if (v171 != buf)
    {
      free(v171);
    }
  }

  sub_19B41DF08(a1, 2, &v182, 144);
  if (*(a1 + 29))
  {
LABEL_198:
    *&v180[24] = *(a1 + 312);
    sub_19B41DF08(a1, 0, &v175, 168);
    sub_19B41DF08(a1, 1, &v175, 168);
  }
}

void sub_19B6DB7C4(uint64_t a1, uint64_t a2)
{
  sub_19B6DB848(a2);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 144) = 0;
  *(a2 + 136) = 0;
  *(a2 + 152) = xmmword_19B7BC360;
  *(a2 + 168) = 0;
  v3 = *(a2 + 184);
  if (v3 < 5.0)
  {
    *(a2 + 184) = v3 + 1.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a2 + 176) = Current;
  v5 = *(a2 + 192);
  v6 = Current + *(a2 + 184);

  CFRunLoopTimerSetNextFireDate(v5, v6);
}

void sub_19B6DB848(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 124);
  if (v3)
  {
    v4 = *(a1 + 152) / v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(a1 + 176);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v6 = Current - v5;
  v7 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 120);
    v9 = *(a1 + 124);
    v10 = *(a1 + 160);
    v11 = *(a1 + 168);
    v12 = *(a1 + 128);
    v13 = *(a1 + 132);
    v14 = *(a1 + 136);
    v15 = *(a1 + 134);
    v16 = *(a1 + 144);
    *buf = 134351616;
    v52 = v6;
    v53 = 1026;
    v54 = v8;
    v55 = 1026;
    v56 = v9;
    v57 = 2050;
    v58 = v4;
    v59 = 2050;
    v60 = v10;
    v61 = 2050;
    v62 = v11;
    v63 = 1026;
    v64 = v12;
    v65 = 1026;
    v66 = v13;
    v67 = 2050;
    v68 = v14;
    v69 = 1026;
    v70 = v15;
    v71 = 1026;
    v72 = v16;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Duration,%{public}.3f,Samples,%{public}u,TimeSyncedSamples,%{public}u,MeanLatency,%{public}.6f,MinLatency,%{public}.6f,MaxLatency,%{public}.6f,TimeSyncStatus,%{public}u,Seq,%{public}u,SensorTime,%{public}llu,Status,0x%{public}04x,Version,%{public}d", buf, 0x58u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v18 = *(a1 + 120);
    v19 = *(a1 + 124);
    v20 = *(a1 + 160);
    v21 = *(a1 + 168);
    v22 = *(a1 + 128);
    v23 = *(a1 + 132);
    v24 = *(a1 + 136);
    v25 = *(a1 + 134);
    v26 = *(a1 + 144);
    v29 = 134351616;
    v30 = v6;
    v31 = 1026;
    v32 = v18;
    v33 = 1026;
    v34 = v19;
    v35 = 2050;
    v36 = v4;
    v37 = 2050;
    v38 = v20;
    v39 = 2050;
    v40 = v21;
    v41 = 1026;
    v42 = v22;
    v43 = 1026;
    v44 = v23;
    v45 = 2050;
    v46 = v24;
    v47 = 1026;
    v48 = v25;
    v49 = 1026;
    v50 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Duration,%{public}.3f,Samples,%{public}u,TimeSyncedSamples,%{public}u,MeanLatency,%{public}.6f,MinLatency,%{public}.6f,MaxLatency,%{public}.6f,TimeSyncStatus,%{public}u,Seq,%{public}u,SensorTime,%{public}llu,Status,0x%{public}04x,Version,%{public}d", &v29, 88);
    v28 = v27;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::Tracker::logSensorStatistics() const", "CoreLocation: %s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }
}

uint64_t sub_19B6DBB34(uint64_t a1, const char *a2)
{
  v49[21] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v48[0] = @"precisionType";
  v4 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *(v3 + 88));
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = @"unknown";
  }

  v49[0] = v4;
  v49[1] = v6;
  v48[1] = @"accessoryHardwareModel";
  v48[2] = @"accessoryBudLocation";
  v49[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(v3 + 72));
  v48[3] = @"headTrackingClientMode";
  v49[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v3 + 92));
  v48[4] = @"sessionDuration";
  v49[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, *(a1 + 48));
  v48[5] = @"delayBTClock";
  v49[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, *(a1 + 56));
  v48[6] = @"delayTimeSync";
  v49[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v12, v13, *(a1 + 64));
  v48[7] = @"timeSyncedSamplesPerSecond";
  v49[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, *(v3 + 100) / *(a1 + 48));
  v48[8] = @"timeSyncInvalidated";
  v49[8] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v16, *(v3 + 104) != 0);
  v48[9] = @"highLatencySamplesPerMinute";
  v49[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, (*(v3 + 108) * 60.0) / *(a1 + 48));
  v48[10] = @"backwardSamplesPerMinute";
  v49[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, (*(v3 + 112) * 60.0) / *(a1 + 48));
  v48[11] = @"repeatedSamplesPerMinute";
  v49[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v21, v22, (*(v3 + 116) * 60.0) / *(a1 + 48));
  v48[12] = @"minLatency";
  v49[12] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *(v3 + 32));
  v48[13] = @"maxLatency";
  v49[13] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, *(v3 + 40));
  v48[14] = @"averageLatency";
  v49[14] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v27, v28, *(a1 + 72));
  v48[15] = @"minInterval";
  v49[15] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, *(v3 + 48));
  v48[16] = @"maxInterval";
  v49[16] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, v32, *(v3 + 56));
  v48[17] = @"isAccessoryServiceValid";
  v49[17] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v33, *(v3 + 96));
  v48[18] = @"hasValidConfig";
  v49[18] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v34, *(v3 + 98));
  v48[19] = @"isBothBudsInEar";
  v49[19] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v35, *(v3 + 97));
  v48[20] = @"isIMUInvalid";
  v49[20] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v36, *(v3 + 99));
  v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v49, v48, 21);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v39 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v47 = v38;
    _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v40 = sub_19B420058();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v44 = 138477827;
    v45 = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[AccessoryDeviceMotion] Sending analytics: \n%{private}@", &v44, 12);
    v42 = v41;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::Tracker::stop()_block_invoke", "CoreLocation: %s\n", v41);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  return v38;
}

os_log_t sub_19B6DBFD4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B6DC004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

uint64_t sub_19B6DC030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

uint64_t sub_19B6DC08C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

os_log_t sub_19B6DC484()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t *sub_19B6DC4B4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B4C50B4(result, a4);
  }

  return result;
}

void sub_19B6DC514(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B6DD30C(void *a1)
{
  a1[32] = &unk_1F0E32728;
  sub_19B42A568(a1 + 35);
  a1[22] = &unk_1F0E32728;
  sub_19B42A568(a1 + 25);
  a1[11] = &unk_1F0E32728;
  sub_19B42A568(a1 + 14);
  a1[2] = &unk_1F0E32728;
  sub_19B42A568(a1 + 5);
  return a1;
}

void sub_19B6DD3D0(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, unsigned int a5, unsigned int a6, unsigned int a7, _DWORD *a8, char a9)
{
  v50 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  *(a1 + 4) = *a3;
  *(a1 + 12) = *a4;
  *(a1 + 8) = 0;
  *(a1 + 24) = a5;
  sub_19B43FA98((a1 + 16));
  *(a1 + 96) = a6;
  sub_19B43FA98((a1 + 88));
  *(a1 + 160) = a7 / a5;
  *(a1 + 168) = *a8;
  *(a1 + 184) = a6;
  sub_19B43FA98((a1 + 176));
  *(a1 + 248) = a9;
  if (a9)
  {
    v14 = vcvtad_u64_f64(*a1 * 0.25);
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 264) = v14;
  sub_19B43FA98((a1 + 256));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
  }

  v15 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a1;
    v17 = *(a1 + 4);
    v18 = *(a1 + 12);
    v19 = *(a1 + 160);
    v20 = *(a1 + 168);
    *buf = 134219008;
    v41 = v16;
    v42 = 2048;
    v43 = v17;
    v44 = 2048;
    v45 = v18;
    v46 = 1024;
    v47 = v19;
    v48 = 2048;
    v49 = v20;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "sample rate (%.3f) observation rate (%.3f) observation threshold (%.3f) deviation count threshold (%d) standard deviation threshold (%.3f)", buf, 0x30u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
    }

    v22 = *a1;
    v23 = *(a1 + 4);
    v24 = *(a1 + 12);
    v25 = *(a1 + 160);
    v26 = *(a1 + 168);
    v30 = 134219008;
    v31 = v22;
    v32 = 2048;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    v36 = 1024;
    v37 = v25;
    v38 = 2048;
    v39 = v26;
    LODWORD(v29) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "sample rate (%.3f) observation rate (%.3f) observation threshold (%.3f) deviation count threshold (%d) standard deviation threshold (%.3f)", COERCE_DOUBLE(&v30), v29);
    v28 = v27;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLThreshold::init(const float &, const float &, const float &, const unsigned int, const unsigned int, const unsigned int, const float &, const BOOL)", "CoreLocation: %s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }
}

uint64_t sub_19B6DD6C8(uint64_t a1, float *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  ++*(a1 + 8);
  if (*(a1 + 248) == 1 && *(a1 + 320) < *(a1 + 264))
  {
    sub_19B4200DC(a1 + 256, a2);
  }

  sub_19B4200DC(a1 + 16, a2);
  if (*(a1 + 8) % *(a1 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 80);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *(a1 + 32) / v4;
  }

  *buf = v6;
  sub_19B4200DC(a1 + 88, buf);
  v7 = *(a1 + 152);
  if (v7)
  {
    v5 = *(a1 + 104) / v7;
  }

  *(&v37 + 1) = (*a2 - v5) * (*a2 - v5);
  sub_19B4200DC(a1 + 176, &v37 + 1);
  if (*(a1 + 8) % (*a1 / *(a1 + 4)))
  {
    return 0;
  }

  v9 = *(a1 + 152);
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v11 = *(a1 + 104) / v9;
  }

  v12 = *(a1 + 320);
  if (v12)
  {
    v10 = *(a1 + 272) / v12;
  }

  v13 = vabds_f32(v11, v10);
  v14 = *(a1 + 240);
  if (v14)
  {
    v15 = *(a1 + 192) / v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = *(a1 + 164);
  if (v13 <= *(a1 + 12))
  {
    if (!v16)
    {
      return 0;
    }

    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  result = 0;
  v18 = v17 + v16;
  *(a1 + 164) = v18;
  if (v18 > *(a1 + 160) && sqrtf(v15) != 0.0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
    }

    v19 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 320);
      if (v20)
      {
        v21 = (*(a1 + 272) / v20);
      }

      else
      {
        v21 = 0.0;
      }

      v22 = *(a1 + 12);
      v23 = *a2;
      v24 = *(a1 + 240);
      if (v24)
      {
        v25 = *(a1 + 192) / v24;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = *(a1 + 164);
      *buf = 134219008;
      v49 = v22;
      v50 = 2048;
      v51 = v23;
      v52 = 2048;
      v53 = v21;
      v54 = 2048;
      v55 = sqrtf(fabsf(v25));
      v56 = 1024;
      v57 = v26;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "threshold (%f) was exceeded with observed value (%f) and base value (%f) and standard deviation (%f) and count of (%d)", buf, 0x30u);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
      }

      v28 = *(a1 + 320);
      if (v28)
      {
        v29 = (*(a1 + 272) / v28);
      }

      else
      {
        v29 = 0.0;
      }

      v30 = *(a1 + 12);
      v31 = *a2;
      v32 = *(a1 + 240);
      if (v32)
      {
        v33 = *(a1 + 192) / v32;
      }

      else
      {
        v33 = 0.0;
      }

      v34 = *(a1 + 164);
      v38 = 134219008;
      v39 = v30;
      v40 = 2048;
      v41 = v31;
      v42 = 2048;
      v43 = v29;
      v44 = 2048;
      v45 = sqrtf(fabsf(v33));
      v46 = 1024;
      v47 = v34;
      LODWORD(v37) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "threshold (%f) was exceeded with observed value (%f) and base value (%f) and standard deviation (%f) and count of (%d)", COERCE_DOUBLE(&v38), v37);
      v36 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLThreshold::update(const float &)", "CoreLocation: %s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    return 1;
  }

  return result;
}

void sub_19B6DDB14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 320);
    if (v3)
    {
      v4 = *(a1 + 272) / v3;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = v4;
    *(a1 + 8) = 0;
    sub_19B43FA98((a1 + 16));
    sub_19B43FA98((a1 + 88));
    *(a1 + 164) = 0;
    sub_19B43FA98((a1 + 176));
    sub_19B6DDBD0(a1, &v5);
  }

  else
  {
    *(a1 + 8) = 0;
    sub_19B43FA98((a1 + 16));
    sub_19B43FA98((a1 + 88));
    *(a1 + 164) = 0;
    sub_19B43FA98((a1 + 176));

    sub_19B43FA98((a1 + 256));
  }
}

float sub_19B6DDBD0(void *a1, float *a2)
{
  sub_19B43FA98(a1 + 32);
  while (a1[40] < a1[33])
  {
    result = sub_19B4200DC((a1 + 32), a2);
  }

  return result;
}

uint64_t sub_19B6DDEC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5, float a6)
{
  v40 = *MEMORY[0x1E69E9840];
  *a1 = -1082130432;
  *(a1 + 4) = 0;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  *(a1 + 16) = 5;
  *(a1 + 24) = &unk_1F0E32728;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_1F0E32CE8;
  *(a1 + 104) = a3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = &unk_1F0E32728;
  *(a1 + 192) = a2;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 256) = a4;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
  }

  v10 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    *buf = 134219008;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = a3;
    v38 = 1024;
    v39 = a4;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd), coverAttached (%d)", buf, 0x30u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 12);
    v20 = 134219008;
    v21 = v14;
    v22 = 2048;
    v23 = v15;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    LODWORD(v19) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd), coverAttached (%d)", COERCE_DOUBLE(&v20), v19, &unk_1F0E32CE8, &unk_1F0E32728);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLCompassAccuracy::CLCompassAccuracy(const float, const float, const size_t, const size_t, const BOOL)", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  return a1;
}

void sub_19B6DE1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[23] = v14;
  sub_19B42A568(v12 + 26);
  v12[12] = a11;
  sub_19B42A568(v13);
  v12[3] = a12;
  sub_19B42A568(v12 + 6);
  _Unwind_Resume(a1);
}

void *sub_19B6DE210(void *a1)
{
  *a1 = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 5);
  return a1;
}

void *sub_19B6DE254(void *a1)
{
  a1[23] = &unk_1F0E32728;
  sub_19B42A568(a1 + 26);
  a1[12] = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 17);
  a1[3] = &unk_1F0E32728;
  sub_19B42A568(a1 + 6);
  return a1;
}

void sub_19B6DE2F0(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v33 = *MEMORY[0x1E69E9840];
  *a1 = -1082130432;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 32) = a2;
  sub_19B43FA98((a1 + 24));
  *(a1 + 104) = a3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
  }

  v8 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 12);
    *buf = 134218752;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = a3;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd)", buf, 0x2Au);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v17 = 134218752;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = a3;
    LODWORD(v16) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd)", COERCE_DOUBLE(&v17), v16);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassAccuracy::init(const float, const float, const size_t, const size_t)", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }
}

float sub_19B6DE53C(uint64_t a1, float a2, float a3)
{
  v9 = a3;
  if (*(a1 + 4) == 1)
  {
    v8 = (a2 - *(a1 + 8)) * (a2 - *(a1 + 8));
    sub_19B4200DC(a1 + 24, &v8);
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = *(a1 + 40) / v4;
    }

    else
    {
      v5 = 0.0;
    }

    v7 = v5;
    sub_19B6DE5C8(a1 + 96, &v7);
  }

  return sub_19B4200DC(a1 + 184, &v9);
}

void sub_19B6DE5C8(uint64_t a1, float *a2)
{
  sub_19B420408((a1 + 40), a2);
  v4 = *(a1 + 80);
  if (v4 > *(a1 + 8))
  {
    ++*(a1 + 72);
    *(a1 + 80) = v4 - 1;
    sub_19B420490(a1 + 40, 1);
  }

  if (*a2 <= *(a1 + 16))
  {
    v5 = *(a1 + 24) + 1;
    *(a1 + 24) = v5;
    if (v5 >= *(a1 + 8))
    {

      sub_19B6DE9DC(a1);
    }
  }

  else
  {
    *(a1 + 16) = *a2;
    *(a1 + 24) = 0;
  }
}

float sub_19B6DE674(uint64_t a1)
{
  sub_19B43FA98((a1 + 24));
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  *(a1 + 176) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 152);
      v2 = (*(a1 + 144) + 8);
      *(a1 + 144) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 168) = v6;
  }

  result = *(a1 + 128);
  *(a1 + 112) = result;
  *(a1 + 120) = 0;
  return result;
}

float sub_19B6DE704(uint64_t a1, int a2, __n128 a3, __n128 a4)
{
  if (a2 < 1)
  {
    return *a1;
  }

  v5 = *(a1 + 16) - a2;
  if (v5 > 4)
  {
    v6 = 40.0;
  }

  else
  {
    v6 = flt_19B7BC498[v5];
  }

  if (*(a1 + 4) == 1)
  {
    a3.n128_f32[0] = sub_19B6DE818(a1);
    if (*(a1 + 8) >= 70.0)
    {
      a4.n128_f32[0] = v6 + 10.0;
    }

    else
    {
      a4.n128_f32[0] = v6;
    }

    if (a3.n128_f32[0] < a4.n128_f32[0])
    {
      v6 = a4.n128_f32[0];
    }

    else
    {
      v6 = a3.n128_f32[0];
    }
  }

  if (*(a1 + 256) == 1)
  {
    v7 = v6 + sub_19B6DE8CC(a1, a3, a4);
    v6 = -1.0;
    if (v7 > 0.0)
    {
      v6 = 10.0;
      if (v7 > 10.0)
      {
        v6 = 15.0;
        if (v7 > 15.0)
        {
          v6 = 20.0;
          if (v7 > 20.0)
          {
            v6 = 25.0;
            if (v7 > 25.0)
            {
              v6 = 30.0;
              if (v7 > 30.0)
              {
                if (v7 <= 35.0)
                {
                  return 35.0;
                }

                else
                {
                  return 40.0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

float sub_19B6DE818(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sqrtf(*(a1 + 112)) / sqrt(v1);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = v2 * *(a1 + 12);
  result = 10.0;
  if (v3 >= 15.0)
  {
    result = 15.0;
    if (v3 >= 30.0)
    {
      result = 20.0;
      if (v3 >= 45.0)
      {
        result = 25.0;
        if (v3 >= 60.0)
        {
          result = 30.0;
          if (v3 >= 75.0)
          {
            if (v3 >= 90.0)
            {
              return 40.0;
            }

            else
            {
              return 35.0;
            }
          }
        }
      }
    }
  }

  return result;
}

float sub_19B6DE8CC(uint64_t result, __n128 a2, __n128 a3)
{
  v3 = *(result + 192);
  if (v3 && (v4 = *(result + 248), v4 >= v3))
  {
    return sub_19B6DE8FC(*(result + 200) / v4, 5.0);
  }

  else
  {
    return 0.0;
  }
}

float sub_19B6DE8FC(float a1, float a2)
{
  if (a2 > a1)
  {
    return 180.0;
  }

  v5 = -a2 / a1;
  v6 = acosf(v5);
  v7 = sinf(v6);
  return fabsf(atan2f(v7 * a2, a1 + (a2 * v5))) * 57.2957795;
}

void sub_19B6DE978(void *a1)
{
  *a1 = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 5);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6DE9DC(uint64_t result)
{
  v1 = *(result + 72);
  v2 = *(result + 48);
  v3 = *(result + 56);
  v4 = (v2 + 8 * (v1 >> 10));
  if (v3 == v2)
  {
    v6 = 0;
    v5 = *(result + 72) & 0x3FFLL;
  }

  else
  {
    v5 = *(result + 72) & 0x3FFLL;
    v6 = *v4 + 4 * v5;
  }

  v7 = *(result + 32);
  *(result + 16) = v7;
  v8 = *(result + 80);
  *(result + 24) = v8 - 1;
  v9 = v8 + v1;
  v10 = (v2 + 8 * (v9 >> 10));
  v11 = v9 & 0x3FF;
  v12 = v4;
LABEL_5:
  v13 = v6;
  while (1)
  {
    v14 = v3 == v2 ? 0 : *v10 + 4 * v11;
    v15 = v13 < v14 && v12 == v10;
    if (v12 >= v10 && !v15)
    {
      return result;
    }

    v16 = *v13;
    if (*v13 > v7)
    {
      *(result + 16) = v16;
      if (v3 == v2)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v4 + 4 * v5;
      }

      if (v13 == v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = ((v12 - v4) << 7) + ((v6 - *v12) >> 2) - ((v17 - *v4) >> 2);
      }

      *(result + 24) = v18;
      v7 = v16;
    }

    ++v13;
    v6 += 4;
    if (*v12 + 4096 == v6)
    {
      v19 = *(v12 + 1);
      v12 += 8;
      v6 = v19;
      goto LABEL_5;
    }
  }
}

uint64_t sub_19B6DEAF0(float *a1, float *a2, float *a3)
{
  v4 = a2[4];
  v5 = fabsf(v4);
  v6 = a2[2];
  if (v5 <= fabsf(v6))
  {
    v7 = 1;
    v8 = 0.0;
  }

  else
  {
    v7 = v5 <= fabsf(a2[3]);
    if (v4 <= 0.0)
    {
      v7 = 1;
    }

    v8 = 0.0625;
    if (v7)
    {
      v8 = 0.0;
    }
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = sqrtf(((v10 * v10) + (v9 * v9)) + (v11 * v11));
  if (v12 > 0.0)
  {
    v9 = v9 / v12;
    v10 = v10 / v12;
    v11 = v11 / v12;
  }

  v13 = (v10 + (v9 * 0.0)) + (v11 * 0.0);
  v14 = v10 * 0.0;
  v15 = ((v10 * 0.0) - v9) + (v11 * 0.0);
  v16 = v11 + (v14 + (v9 * 0.0));
  v17 = a2[3];
  v18 = sqrtf(((v17 * v17) + (v6 * v6)) + (v4 * v4));
  if (v18 > 0.0)
  {
    v6 = v6 / v18;
    v17 = v17 / v18;
    v4 = v4 / v18;
  }

  v19 = (v17 + (v6 * 0.0)) + (v4 * 0.0);
  v20 = v17 * 0.0;
  v21 = ((v17 * 0.0) - v6) + (v4 * 0.0);
  v22 = v4 + (v20 + (v6 * 0.0));
  v23 = (v15 * v22) - (v16 * v21);
  v24 = (v16 * v19) - (v13 * v22);
  v25 = (v13 * v21) - (v15 * v19);
  v26 = sqrtf(((v24 * v24) + (v23 * v23)) + (v25 * v25));
  if (v26 > 0.0)
  {
    v23 = v23 / v26;
    v24 = v24 / v26;
    v25 = v25 / v26;
  }

  v27 = -v22;
  v28 = (v21 * v25) - (v22 * v24);
  v29 = (v22 * v23) - (v19 * v25);
  v30 = (v19 * v24) - (v21 * v23);
  v31 = sqrtf(((v29 * v29) + (v28 * v28)) + (v30 * v30));
  if (v31 > 0.0)
  {
    v28 = v28 / v31;
    v29 = v29 / v31;
    v30 = v30 / v31;
  }

  v32 = sqrtf(((v21 * v21) + (v19 * v19)) + (v22 * v22));
  if (v32 <= 0.0)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 / v32;
  }

  if (!v7)
  {
    v39 = ((v29 * 0.0) + (v28 * v8)) + (v30 * 0.0);
    v40 = ((v24 * 0.0) + (v23 * v8)) + (v25 * 0.0);
    if (v39 != 0.0 || v40 != 0.0)
    {
      v38 = atan2f(-v40, v39) * 57.2957795;
      if (v38 >= 0.0)
      {
          ;
        }

        goto LABEL_43;
      }

        ;
      }

      goto LABEL_37;
    }

    return 0;
  }

  if (v30 != 0.0 || (v34 = 0.0, v25 != 0.0))
  {
    v34 = atan2f(v25, v30);
  }

  v35 = __sincosf_stret(v34);
  if (((v25 * v35.__sinval) + (v35.__cosval * v30)) == 0.0 && v33 == 0.0)
  {
    return 0;
  }

  v36 = (v24 * v35.__cosval) - (v35.__sinval * v29);
  v37 = (v23 * v35.__cosval) - (v35.__sinval * v28);
  if (v36 == 0.0 && v37 == 0.0)
  {
    return 0;
  }

  v38 = (-atan2f(v37, v36) - v34) * 57.2957795;
  if (v38 >= 0.0)
  {
      ;
    }

    goto LABEL_43;
  }

    ;
  }

LABEL_37:
  v38 = v38 + 360.0;
LABEL_43:
  *a3 = v38;
  return 1;
}

uint64_t sub_19B6DEE64()
{
  result = sub_19B421620();
  if ((result & 0x200) != 0)
  {
    operator new();
  }

  return result;
}

void *sub_19B6DEF28(void *a1)
{
  *a1 = &unk_1F0E32C38;
  a1[4] = &unk_1F0E32C98;
  v2 = a1[8];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B6DEFB0(void *a1)
{
  sub_19B6DEF28(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6DEFE8(uint64_t a1)
{
  sub_19B6DEF28((a1 - 32));

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6DF024@<D0>(void *a1@<X8>)
{
  v4 = 0;
  v3 = 0.0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  if (sub_19B6E7800(qword_1EAFE3A60, &v4, &v3))
  {
    result = v3;
    *a1 = *&v3;
    *(a1 + 8) = v4;
  }

  return result;
}

uint64_t sub_19B6DF0AC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v2 = qword_1EAFE3A60;

  return sub_19B6E8350(v2, a1);
}

void sub_19B6DF11C()
{
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v1 = qword_1EAFE3A60;

  sub_19B6E89E0(v1);
}

void sub_19B6DF170(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v11 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v6 = *(a2 + 1);
    v9[0] = 67240192;
    v9[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 1, "pong,%{public}u", v9, 8);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::visitPong(const CMEclipseReport::Pong *)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B6DF340(uint64_t a1, __int128 *a2)
{
  v8 = 0;
  v4 = *(a1 + 48);
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  LODWORD(v8) = *(a2 + 12);
  return sub_19B41DF08(a1, 1, &v4, 64);
}

uint64_t sub_19B6DF398(uint64_t a1, __int128 *a2)
{
  v8 = 0;
  v4 = *(a1 + 16);
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  LODWORD(v8) = *(a2 + 12);
  return sub_19B41DF08(a1 - 32, 1, &v4, 64);
}

uint64_t sub_19B6DF3F8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 48);
  LOWORD(v4) = *(a2 + 1);
  return sub_19B4455DC(a1, 2, &v3, 16);
}

os_log_t sub_19B6DF440()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void sub_19B6DF494(uint64_t a1, double *a2, char a3, int a4)
{
  v5 = *a2;
  *a1 = *a2;
  *&v5 = 1.0 / v5;
  *(a1 + 8) = LODWORD(v5);
  v6 = (a1 + 8);
  *(a1 + 12) = 0;
  *(a1 + 13) = a3;
  *(a1 + 14) = 0;
  *(a1 + 22) = 0u;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = &unk_1F0E33E90;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F0E33E90;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_19B6DDEC0(a1 + 112, 10, 30, a4, 61.056, 2.0);
  *(a1 + 376) = 0xF00000000;
  *(a1 + 384) = 15;
  v7 = *v6;
  v8 = *v6;
  v9 = vcvtad_u64_f64(v8 * 0.125);
  *(a1 + 392) = &unk_1F0E32BF8;
  *(a1 + 400) = v9;
  *(a1 + 408) = &unk_1F0E32728;
  *(a1 + 416) = v9;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_1F0E32728;
  *(a1 + 488) = v9;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = &unk_1F0E32728;
  *(a1 + 560) = v9;
  *(a1 + 612) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 628) = 0xBF8000003F000000;
  *(a1 + 636) = -1082130432;
  *(a1 + 640) = &unk_1F0E33978;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 728) = &unk_1F0E33978;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 792) = a1 + 800;
  v10 = vcvtad_u64_f64(v8 * 0.05);
  *(a1 + 816) = &unk_1F0E32BF8;
  *(a1 + 824) = v10;
  *(a1 + 832) = &unk_1F0E32728;
  *(a1 + 840) = v10;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 904) = &unk_1F0E32728;
  *(a1 + 912) = v10;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 976) = &unk_1F0E32728;
  *(a1 + 984) = v10;
  *(a1 + 1040) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1048) = &unk_1F0E32BF8;
  *(a1 + 1056) = v10;
  *(a1 + 1064) = &unk_1F0E32728;
  *(a1 + 1072) = v10;
  *(a1 + 1128) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1136) = &unk_1F0E32728;
  *(a1 + 1144) = v10;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1208) = &unk_1F0E32728;
  *(a1 + 1216) = v10;
  *(a1 + 1272) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1280) = &unk_1F0E33E90;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = &unk_1F0E33E90;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = &unk_1F0E33E90;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1424) = 0xBFF0000000000000;
  v11 = vcvtad_u64_f64(v8 * 0.5);
  *(a1 + 1432) = &unk_1F0E32728;
  *(a1 + 1440) = v11;
  *(a1 + 1496) = 0;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1504) = &unk_1F0E32728;
  *(a1 + 1512) = v11;
  *(a1 + 1568) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1576) = &unk_1F0E32728;
  *(a1 + 1584) = vcvtas_u32_f32(v7);
  *(a1 + 1656) = 0;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1664) = &unk_1F0E32728;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1736) = &unk_1F0E32728;
  *(a1 + 1804) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1824) = &unk_1F0E32728;
  *(a1 + 1896) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1904) = &unk_1F0E32728;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1992) = &unk_1F0E32728;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 2064) = &unk_1F0E32728;
  *(a1 + 2132) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2152) = &unk_1F0E32728;
  *(a1 + 2224) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2232) = &unk_1F0E32728;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2312) = &unk_1F0E32728;
  *(a1 + 2320) = vcvtad_u64_f64(v8 * 0.2);
  *(a1 + 2376) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2328) = 0u;
  __asm { FMOV            V8.2S, #-1.0 }

  *(a1 + 2384) = -_D8;
  if (*(a1 + 13) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_19B6E0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v25)
  {
    sub_19B41FFEC(v25);
    if (!v24)
    {
LABEL_3:
      if (!v23)
      {
LABEL_8:
        v22[289] = a11;
        sub_19B42A568(v22 + 292);
        sub_19B6DD30C(v22 + 247);
        sub_19B6DD30C(v22 + 206);
        v22[197] = a12;
        sub_19B42A568(v22 + 200);
        v22[188] = a13;
        sub_19B42A568(v22 + 191);
        v22[179] = a14;
        sub_19B42A568(v22 + 182);
        sub_19B42AC20(a15);
        sub_19B42AC20(a16);
        sub_19B6E0EC4(a22);
        sub_19B42AC20(a17);
        sub_19B6DE254(v22 + 14);
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_19B41FFEC(v23);
      goto LABEL_8;
    }
  }

  else if (!v24)
  {
    goto LABEL_3;
  }

  sub_19B41FFEC(v24);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_19B6E0EC4(uint64_t a1)
{
  *(a1 + 104) = &unk_1F0E33978;
  sub_19B654634(a1 + 168, *(a1 + 176));
  sub_19B6E3228(a1 + 120);
  *(a1 + 16) = &unk_1F0E33978;
  sub_19B654634(a1 + 80, *(a1 + 88));
  sub_19B6E3228(a1 + 32);
  return a1;
}

void *sub_19B6E0F50(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    (*(*v2 + 8))(v2);
    a1[13] = 0;
  }

  a1[289] = &unk_1F0E32728;
  sub_19B42A568(a1 + 292);
  sub_19B6DD30C(a1 + 247);
  sub_19B6DD30C(a1 + 206);
  a1[197] = &unk_1F0E32728;
  sub_19B42A568(a1 + 200);
  a1[188] = &unk_1F0E32728;
  sub_19B42A568(a1 + 191);
  a1[179] = &unk_1F0E32728;
  sub_19B42A568(a1 + 182);
  sub_19B42AC20(a1 + 131);
  sub_19B42AC20(a1 + 102);
  sub_19B6E0EC4((a1 + 78));
  sub_19B42AC20(a1 + 49);
  sub_19B6DE254(a1 + 14);
  return a1;
}

BOOL sub_19B6E107C(float32x2_t *a1, uint64_t *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v59 = &unk_1F0E33E90;
  v60 = *a2;
  v61 = *(a2 + 2);
  v3 = a1[48].i32[0];
  if (v3)
  {
    a1[48].i32[0] = v3 - 1;
    if (v3 == 1)
    {
      a1[47].i32[0] = 0;
    }

    return v3 == 0;
  }

  sub_19B4200DC(&a1[51], &v60);
  sub_19B4200DC(&a1[60], &v60 + 1);
  sub_19B4200DC(&a1[69], &v61);
  v4 = a1[59];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a1[53].f32[0] / v4;
  }

  v7 = a1[68];
  if (v7)
  {
    v5 = a1[62].f32[0] / v7;
  }

  v8 = a1[77];
  if (v8)
  {
    v9 = a1[71].f32[0] / v8;
  }

  else
  {
    v9 = 0.0;
  }

  a1[161].f32[0] = v6;
  a1[161].f32[1] = v5;
  a1[162].f32[0] = v9;
  a1[164].f32[0] = v6;
  a1[164].f32[1] = v5;
  a1[165].f32[0] = v9;
  a1[167].f32[0] = v6;
  a1[167].f32[1] = v5;
  a1[168].f32[0] = v9;
  if (a1[1].i8[5] == 1)
  {
    *buf = sqrtf(((a1[7].f32[1] * a1[7].f32[1]) + (a1[7].f32[0] * a1[7].f32[0])) + (a1[8].f32[0] * a1[8].f32[0]));
    sub_19B4200DC(&a1[197], buf);
    v10.n128_f32[0] = sub_19B4200DC(&a1[289], buf);
  }

  else
  {
    *buf = sqrtf(((a1[10].f32[1] * a1[10].f32[1]) + (a1[10].f32[0] * a1[10].f32[0])) + (a1[11].f32[0] * a1[11].f32[0]));
    sub_19B4200DC(&a1[179], buf);
    v11 = a1[187];
    if (v11)
    {
      v12 = a1[181].f32[0] / v11;
    }

    else
    {
      v12 = 0.0;
    }

    v62 = (*buf - v12) * (*buf - v12);
    v10.n128_f32[0] = sub_19B4200DC(&a1[188], &v62);
  }

  if (a1[1].i8[6] == 1)
  {
    v13 = a1[169];
    a1[161] = vsub_f32(a1[161], v13);
    v14 = a1[170].f32[0];
    a1[162].f32[0] = a1[162].f32[0] - v14;
    a1[164] = vsub_f32(a1[164], v13);
    a1[165].f32[0] = a1[165].f32[0] - v14;
    return v3 == 0;
  }

  v16 = a1 + 13;
  v15 = a1[13];
  *buf = 0xBFF0000000000000;
  (*(**&v15 + 32))(v15, &v59, a1 + 2, buf, v10);
  ++a1[47].i32[0];
  (*(**v16 + 48))(*v16, a1 + 169, &a1[170] + 1);
  (*(**v16 + 56))(*v16, a1 + 160, a1 + 163, a1 + 2);
  (*(**v16 + 64))(*v16, a1 + 166, a1 + 2);
  if (!(*(**&a1[13] + 72))())
  {
    goto LABEL_70;
  }

  if (a1[1].i8[5] == 1 && a1[170].i32[1] < 4)
  {
    v17 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
    if (v17 > 500.0)
    {
LABEL_51:
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v34 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v35 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
        *buf = 134217984;
        *&buf[4] = v35;
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_INFO, "magnitude max threshold exceeded (%+.3f), resetting calibration", buf, 0xCu);
      }

      v36 = sub_19B420058();
      if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v37 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
        v62 = 3.852e-34;
        v63 = v37;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "magnitude max threshold exceeded (%+.3f), resetting calibration", COERCE_DOUBLE(&v62));
        v39 = v38;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      (*(**&a1[13] + 24))(*&a1[13]);
      a1[48].i32[0] = a1[47].i32[1];
      v33 = -1065353216;
LABEL_64:
      a1[14].i32[0] = v33;
      goto LABEL_70;
    }

LABEL_65:
    *buf = v17;
    sub_19B6DD6C8(&a1[206], buf);
    if (a1[1].i8[5] == 1)
    {
      if (!sub_19B6E2A48(a1))
      {
        goto LABEL_70;
      }
    }

    else if (!sub_19B6E29D8(a1))
    {
      goto LABEL_70;
    }

    v40 = sub_19B6CFA04(&a1[160], &a1[9]) * -57.2957795 + 90.0;
    *buf = v40;
    sub_19B6DD6C8(&a1[247], buf);
    goto LABEL_70;
  }

  v17 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
  if (v17 >= 250.0 || v17 > 500.0)
  {
    goto LABEL_51;
  }

  if (a1[1].i8[5])
  {
    goto LABEL_65;
  }

  *buf = v17;
  if (sub_19B6DD6C8(&a1[206], buf))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
    }

    v19 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v20 = a1[225];
      v21 = 0.0;
      v22 = 0.0;
      if (v20)
      {
        v22 = (a1[219].f32[0] / v20);
      }

      v23 = a1[207].f32[1];
      v24 = a1[246];
      if (v24)
      {
        v21 = (a1[240].f32[0] / v24);
      }

      *buf = 134218496;
      *&buf[4] = v23;
      v69 = 2048;
      v70 = v22;
      v71 = 2048;
      v72 = v21;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "magnitude threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", buf, 0x20u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v26 = 0.0;
      v27 = 0.0;
      v28 = a1[225];
      if (v28)
      {
        v27 = (a1[219].f32[0] / v28);
      }

      v29 = a1[207].f32[1];
      v30 = a1[246];
      if (v30)
      {
        v26 = (a1[240].f32[0] / v30);
      }

      v62 = 3.8522e-34;
      v63 = v29;
      v64 = 2048;
      v65 = v27;
      v66 = 2048;
      v67 = v26;
      LODWORD(v57) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "magnitude threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", COERCE_DOUBLE(&v62), v57, v58);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    (*(**&a1[13] + 24))(*&a1[13]);
    a1[48].i32[0] = a1[47].i32[1];
    v33 = -1073741824;
    goto LABEL_64;
  }

  if (a1[1].i8[5] == 1)
  {
    if (!sub_19B6E2A48(a1))
    {
      goto LABEL_70;
    }
  }

  else if (!sub_19B6E29D8(a1))
  {
    goto LABEL_70;
  }

  v42 = sub_19B6CFA04(&a1[160], &a1[9]) * -57.2957795 + 90.0;
  *buf = v42;
  if (sub_19B6DD6C8(&a1[247], buf) && (*(**&a1[13] + 80))(*&a1[13]))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
    }

    v43 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v44 = a1[266];
      v45 = 0.0;
      v46 = 0.0;
      if (v44)
      {
        v46 = (a1[260].f32[0] / v44);
      }

      v47 = a1[248].f32[1];
      v48 = a1[287];
      if (v48)
      {
        v45 = (a1[281].f32[0] / v48);
      }

      *buf = 134218496;
      *&buf[4] = v47;
      v69 = 2048;
      v70 = v46;
      v71 = 2048;
      v72 = v45;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_INFO, "inclination threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", buf, 0x20u);
    }

    v49 = sub_19B420058();
    if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v50 = 0.0;
      v51 = 0.0;
      v52 = a1[266];
      if (v52)
      {
        v51 = (a1[260].f32[0] / v52);
      }

      v53 = a1[248].f32[1];
      v54 = a1[287];
      if (v54)
      {
        v50 = (a1[281].f32[0] / v54);
      }

      v62 = 3.8522e-34;
      v63 = v53;
      v64 = 2048;
      v65 = v51;
      v66 = 2048;
      v67 = v50;
      LODWORD(v57) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "inclination threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", COERCE_DOUBLE(&v62), v57, v58);
      v56 = v55;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    (*(**&a1[13] + 24))(*&a1[13]);
    a1[48].i32[0] = a1[47].i32[1];
    v33 = -1069547520;
    goto LABEL_64;
  }

LABEL_70:
  if ((*(**&a1[13] + 88))(*&a1[13]))
  {
    sub_19B6DDB14(&a1[206], 0);
    sub_19B6DDB14(&a1[247], 0);
  }

  return v3 == 0;
}

float sub_19B6E1C04(uint64_t a1, double *a2)
{
  v2 = (a1 + 1368);
  if (a2[7] == -1.0)
  {
    *(a1 + 1416) = 0;
    *(a1 + 1384) = 0u;
    *(a1 + 1400) = 0u;
    *v2 = 0u;
    *(a1 + 1424) = 0xBFF0000000000000;
    *(a1 + 116) = 0;
    return sub_19B6DE674(a1 + 112);
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 3);
    *(a1 + 1400) = *(a2 + 2);
    *(a1 + 1416) = v5;
    *v2 = v3;
    *(a1 + 1384) = v4;
    *(a1 + 116) = 1;
    *&v3 = a2[6];
    sub_19B6DE2F0(a1 + 112, 10, 30, *&v3, 2.0);
  }

  return result;
}

BOOL sub_19B6E1C70(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v19[0] = 0x3F8000003F800000;
  v17.i64[0] = 0;
  v17.i64[1] = 0x3F80000000000000;
  v15 = sub_19B66C3CC(v19, &v17, v18, v9, v10, v11, v12, v13, v14, a4, a5, a6, a7, a8, 1065353216, 0);
  if (v15)
  {
    *a3 = sub_19B66D564(v17.f32);
  }

  return v15;
}

uint64_t sub_19B6E1D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v129 = *MEMORY[0x1E69E9840];
  HIDWORD(v80) = 0;
  v77 = &unk_1F0E33E90;
  v78 = *(a1 + 1312);
  LODWORD(v79) = *(a1 + 1320);
  if (*(a1 + 13) == 1 && a1 + 1328 != &v77)
  {
    v78 = *(a1 + 1336);
    LODWORD(v79) = *(a1 + 1344);
  }

  v11 = sub_19B6E1C70(&v77, (a1 + 72), &v80 + 1, a4, a5, a6, a7, a8);
  v12 = *(&v80 + 1);
  v14 = *(&v80 + 1) >= 0.0 && *(&v80 + 1) < 360.0;
  v15 = v11 & v14;
  if (v15 == 1)
  {
    *&v16 = *(a1 + 1288);
    DWORD2(v16) = *(a1 + 1296);
    HIDWORD(v16) = *(a1 + 1312);
    *a2 = v16;
    LODWORD(v16) = *(a1 + 1316);
    v17 = *(a1 + 1320);
    *(a2 + 48) = sqrtf(((*&v16 * *&v16) + (*(&v16 + 3) * *(&v16 + 3))) + (v17 * v17));
    *(a2 + 16) = v16;
    *(a2 + 20) = v17;
    *(a2 + 40) = *(a1 + 1364);
    *(a2 + 44) = 0;
    v75 = -57.2957795;
    v18 = sub_19B6CFA04((a1 + 1304), (a1 + 72)) * -57.2957795 + 90.0;
    *(a2 + 52) = v18;
    v19 = *(a2 + 48);
    v20 = v18 * 0.0174532925;
    *(a2 + 56) = v19 * cosf(v20);
    *(a2 + 64) = *(a1 + 40);
    *(a2 + 72) = *(a1 + 16);
    *(a2 + 88) = *(a1 + 32);
    if ((*(a1 + 13) & 1) == 0)
    {
      v28 = v12 * 0.0174532925;
      v29 = __sincosf_stret(v28);
      *buf = v29.__cosval;
      sinval = v29.__sinval;
      sub_19B6E2C3C(a1 + 640, buf);
    }

    *(&v76 + 1) = v12;
    sub_19B6E1C70((a1 + 1280), (a1 + 72), &v76 + 1, v21, v22, v23, v24, v25);
    v26 = *(&v76 + 1);
    if (*(a1 + 2304) == 1)
    {
      v27 = *(a1 + 2384);
    }

    else
    {
      *(a1 + 2304) = 1;
      v27 = v26;
    }

    v30 = v12;
    if (vabds_f32(v27, v12) > 270.0)
    {
      v30 = dbl_19B7BC5A0[(v27 - v12) > 0.0] + v12;
    }

    *(&v71 + 1) = v27 - v12;
    v31 = v27 - v26;
    v32 = v26;
    if (vabds_f32(v27, v26) > 270.0)
    {
      v26 = dbl_19B7BC5A0[v31 > 0.0] + v32;
    }

    *&v71 = v31;
    v74 = v32;
    v33 = *(a1 + 2376);
    v34 = 0.0;
    v35 = 0.0;
    if (v33 >= 2)
    {
      v36 = (v33 * *(a1 + 2332)) - (*(a1 + 2328) * *(a1 + 2328));
      v35 = v36 / ((v33 - 1) * v33);
      if (v36 < 0.0)
      {
        v35 = 0.0;
      }
    }

    v37 = *(a1 + 1640);
    if (v37)
    {
      v34 = *(a1 + 1592) / v37;
    }

    v38 = (v34 + -0.06) * 0.55 / 2.94000006 + 0.1;
    v39 = fmaxf(fminf(v38, 0.65), 0.1);
    *(&v73 + 1) = v35;
    v72 = v34;
    if (v35 >= 0.0015 || v34 >= 6.28318531)
    {
      v41 = *(a1 + 2388) * 0.15 + 0.734964973;
      *(a1 + 2388) = v41;
    }

    else
    {
      *(&v70 + 1) = v26;
      v40 = v30;
      v41 = 1.0 - expf(v34 * -0.2);
      *(a1 + 2388) = v41;
      if (v34 <= 1.0)
      {
        v30 = v40;
        v26 = *(&v70 + 1);
        if (v34 < 0.06)
        {
          *(a1 + 2388) = 1011052224;
          v41 = 0.011928;
        }
      }

      else
      {
        v41 = 1.0 - expf(v34 * (v34 * -0.2));
        *(a1 + 2388) = v41;
        v30 = v40;
        v26 = *(&v70 + 1);
      }
    }

    v42 = v30;
    v43 = (v26 * v39) + (1.0 - v39) * v30;
    v44 = (v41 * v43) + ((1.0 - v41) * v27);
    if (v44 >= 0.0)
    {
        ;
      }
    }

    else
    {
        ;
      }

      v44 = v44 + 360.0;
    }

    *(a1 + 2384) = v44;
    if (*(a1 + 12) == 1)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v45 = v44 - v27;
      v46 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 2384);
        v48 = *(a1 + 2388);
        *buf = 134220800;
        v106 = v12;
        v107 = 2048;
        v108 = v74;
        v109 = 2048;
        v110 = *(&v71 + 1);
        v111 = 2048;
        v112 = *&v71;
        v113 = 2048;
        v114 = v42;
        v115 = 2048;
        v116 = v26;
        v117 = 2048;
        v118 = v47;
        v119 = 2048;
        v120 = v48;
        v121 = 2048;
        v122 = v39;
        v123 = 2048;
        v124 = *(&v73 + 1);
        v125 = 2048;
        v126 = v72;
        v127 = 2048;
        v128 = v45;
        _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_DEBUG, "rawHeading, %.3f, gyroHeading, %.3f, deltaRaw, %.3f, deltaGyro, %.3f, rawHeadingU, %.3f, gyroHeadingU, %.3f, filteredHeading, %.3f, alpha, %.3f, gamma, %.3f, rotVar, %.5f, rotMag, %.3f, deltaFiltered, %.3f", buf, 0x7Au);
      }

      v49 = sub_19B420058();
      if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v50 = *(a1 + 2384);
        v51 = *(a1 + 2388);
        sinval = 3.8533e-34;
        v82 = v12;
        v83 = 2048;
        v84 = v74;
        v85 = 2048;
        v86 = *(&v71 + 1);
        v87 = 2048;
        v88 = *&v71;
        v89 = 2048;
        v90 = v42;
        v91 = 2048;
        v92 = v26;
        v93 = 2048;
        v94 = v50;
        v95 = 2048;
        v96 = v51;
        v97 = 2048;
        v98 = v39;
        v99 = 2048;
        v100 = *(&v73 + 1);
        v101 = 2048;
        v102 = v72;
        v103 = 2048;
        v104 = v45;
        LODWORD(v70) = 122;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "rawHeading, %.3f, gyroHeading, %.3f, deltaRaw, %.3f, deltaGyro, %.3f, rawHeadingU, %.3f, gyroHeadingU, %.3f, filteredHeading, %.3f, alpha, %.3f, gamma, %.3f, rotVar, %.5f, rotMag, %.3f, deltaFiltered, %.3f", COERCE_DOUBLE(&sinval), v70, v71, v72, v73, v74, -57.2957795, v76, *&v77, v78, v79, v80);
        v53 = v52;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLCompassCalculator::getCompassData(CLMotionTypeCompass &)", "CoreLocation: %s\n", v52);
        if (v53 != buf)
        {
          free(v53);
        }
      }
    }

    v54 = *(a1 + 2384);
    if ((v54 >= 360.0 || v54 < 0.0) && *(a1 + 12) == 1)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v55 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v56 = *(a1 + 2384);
        *buf = 134217984;
        v106 = v56;
        _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_INFO, "#Warning Heading  %.2f, is not in bound [0 360]", buf, 0xCu);
      }

      v57 = sub_19B420058();
      if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v58 = *(a1 + 2384);
        sinval = 3.852e-34;
        v82 = v58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "#Warning Heading  %.2f, is not in bound [0 360]", COERCE_DOUBLE(&sinval));
        v60 = v59;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLCompassCalculator::getCompassData(CLMotionTypeCompass &)", "CoreLocation: %s\n", v59);
        if (v60 != buf)
        {
          free(v60);
        }
      }
    }

    if (*(a1 + 13) == 1)
    {
      if (!sub_19B6E2A48(a1))
      {
        goto LABEL_73;
      }
    }

    else if (!sub_19B6E29D8(a1))
    {
      goto LABEL_73;
    }

    if (((*(**(a1 + 104) + 72))(*(a1 + 104)) & 1) != 0 || *(a1 + 15) == 1)
    {
      v63 = sub_19B6CFA04((a1 + 1280), (a1 + 72)) * v75 + 90.0;
      v64 = sqrtf(((*(a1 + 1292) * *(a1 + 1292)) + (*(a1 + 1288) * *(a1 + 1288))) + (*(a1 + 1296) * *(a1 + 1296)));
      v65 = v63 * 3.14159265 / 180.0;
      v66 = cosf(v65);
      sub_19B6DE53C(a1 + 112, v63, v64 * v66);
    }

LABEL_73:
    v67 = *(a1 + 2384);
    *(a2 + 24) = v67;
    v62.n128_u64[0] = *(a1 + 1424);
    if (v62.n128_f64[0] == -1.0)
    {
      v61.n128_u32[0] = -1.0;
LABEL_81:
      *(a2 + 28) = v61.n128_u32[0];
      v68 = *(a1 + 1364);
      if (v68 || (*(a1 + 15) & 1) == 0)
      {
        v61.n128_u32[0] = 20.0;
        if (*(a1 + 14))
        {
LABEL_86:
          *(a2 + 32) = v61.n128_u32[0];
          if (*(a1 + 13) == 1 && *(*(a1 + 104) + 184) == 1)
          {
            *(a2 + 32) = v61.n128_f32[0] + 1.0;
          }

          return v15;
        }
      }

      else
      {
        v68 = 1;
      }

      v61.n128_f32[0] = sub_19B6DE704(a1 + 112, v68, v61, v62);
      goto LABEL_86;
    }

    v61.n128_f64[0] = *(a1 + 1408) + v67;
    v62.n128_u64[0] = 0x4076800000000000;
    if (v61.n128_f64[0] >= 360.0)
    {
      v62.n128_u64[0] = 0xC076800000000000;
    }

    else if (v61.n128_f64[0] >= 0.0)
    {
      goto LABEL_80;
    }

    v61.n128_f64[0] = v61.n128_f64[0] + v62.n128_f64[0];
LABEL_80:
    v61.n128_f32[0] = v61.n128_f64[0];
    goto LABEL_81;
  }

  return v15;
}

BOOL sub_19B6E29D8(uint64_t a1)
{
  result = 0;
  v3 = sqrtf(((*(a1 + 84) * *(a1 + 84)) + (*(a1 + 80) * *(a1 + 80))) + (*(a1 + 88) * *(a1 + 88)));
  if (v3 < 1.2 && v3 > 0.8)
  {
    v4 = *(a1 + 1568);
    return !v4 || (*(a1 + 1520) / v4) < 0.09;
  }

  return result;
}

BOOL sub_19B6E2A48(uint64_t a1)
{
  if (sqrtf(((*(a1 + 60) * *(a1 + 60)) + (*(a1 + 56) * *(a1 + 56))) + (*(a1 + 64) * *(a1 + 64))) > 4.71238911)
  {
    return 0;
  }

  v1 = *(a1 + 1640);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 1592);
  if ((v2 / v1) > 3.1416)
  {
    return 0;
  }

  if (v1 != 1 && (v4 = (v1 * *(a1 + 1596)) - (v2 * v2), v4 >= 0.0))
  {
    return (v4 / ((v1 - 1) * v1)) <= 0.64;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_19B6E2AE4(uint64_t a1)
{
  *a1 = &unk_1F0E33978;
  sub_19B654634(a1 + 64, *(a1 + 72));
  sub_19B6E3228(a1 + 16);
  return a1;
}

void sub_19B6E2B38(uint64_t a1)
{
  *a1 = &unk_1F0E33978;
  sub_19B654634(a1 + 64, *(a1 + 72));
  sub_19B6E3228(a1 + 16);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6E2BAC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[6] = v6;
  }

  v8 = a1[9];
  v7 = a1 + 9;
  sub_19B654634((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void sub_19B6E31FC(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B6E3228(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float sub_19B6E32F4(uint64_t a1, float *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = vcvtd_n_f64_u64(v2, 1uLL);
    v4 = vcvtms_s32_f32(v3);
    v5 = *(a1 + 64);
    if (v4 < 1)
    {
      v8 = *(a1 + 64);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }
    }

    result = v8[7];
    *a2 = result;
  }

  return result;
}

void sub_19B6E3368(_DWORD *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (a1[78] >= 1)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
      }

      v2 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
      {
        v3 = a1[78];
        *buf = 67240192;
        v14 = v3;
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CMMotionContextSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", buf, 8u);
      }

      v4 = sub_19B420058();
      if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
        }

        v5 = a1[78];
        v12[0] = 67240192;
        v12[1] = v5;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", v12, 8);
        v7 = v6;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMotionContextSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }

    AnalyticsSendEventLazy();
    ++a1[78];
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
    }

    v8 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CMMotionContextSessionAnalyticsTracker] Trying to send analytics but there are no recorded DistractedViewing events, not sending.", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
      }

      LOWORD(v12[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSessionAnalyticsTracker] Trying to send analytics but there are no recorded DistractedViewing events, not sending.", v12, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMotionContextSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

void *sub_19B6E36EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v179[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v178[0] = @"trackingClientMode";
  v179[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(v3 + 79));
  v178[1] = @"distractedViewingCount";
  v179[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, *v3);
  v178[2] = @"pdrTnbTrackingDisabledViaWalkingCount";
  v179[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v3 + 1));
  v178[3] = @"pdrTnbTrackingDisabledViaSitToStandWithWalkingCount";
  v179[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, *(v3 + 2));
  v178[4] = @"pdrTnbTrackingReEnabledViaTouchCount";
  v179[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, *(v3 + 3));
  v178[5] = @"pdrTnbTrackingReEnabledViaPickUpCount";
  v179[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, *(v3 + 4));
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v179, v178, 6);
  objc_msgSend_setDictionary_(v4, v13, v12);
  v16 = v3[3];
  if (v16 != 1.79769313e308)
  {
    *&v16 = v16;
    v17 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v18, v17, @"minPdrTnbDisplacementMeters");
    v21 = *(v3 + 12);
    if (v21 < 1)
    {
      v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, 0.0);
    }

    else
    {
      v22 = v3[5] / v21;
      *&v22 = v22;
      v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, v22);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v24, v23, @"avgPdrTnbDisplacementMeters");
    v25 = v3[4];
    *&v25 = v25;
    v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v26, v27, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v29, v28, @"maxPdrTnbDisplacementMeters");
  }

  v30 = v3[7];
  if (v30 != 1.79769313e308)
  {
    *&v30 = v30;
    v31 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v30);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v32, v31, @"minPdrDistanceTravelledMeters");
    v35 = *(v3 + 20);
    if (v35 < 1)
    {
      v37 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v33, v34, 0.0);
    }

    else
    {
      v36 = v3[9] / v35;
      *&v36 = v36;
      v37 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v33, v34, v36);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v38, v37, @"avgPdrDistanceTravelledMeters");
    v39 = v3[8];
    *&v39 = v39;
    v42 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v40, v41, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v43, v42, @"maxPdrDistanceTravelledMeters");
  }

  v44 = v3[11];
  if (v44 != 1.79769313e308)
  {
    *&v44 = v44;
    v45 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v46, v45, @"minPdrTnbLoopClosure");
    v49 = *(v3 + 28);
    if (v49 < 1)
    {
      v51 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, 0.0);
    }

    else
    {
      v50 = v3[13] / v49;
      *&v50 = v50;
      v51 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, v50);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v52, v51, @"avgPdrTnbLoopClosure");
    v53 = v3[12];
    *&v53 = v53;
    v56 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v54, v55, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v57, v56, @"maxPdrTnbLoopClosure");
  }

  v58 = v3[15];
  if (v58 != 1.79769313e308)
  {
    *&v58 = v58;
    v59 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v58);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v60, v59, @"minPdrTnbHeadingDiffDegs");
    v63 = *(v3 + 36);
    if (v63 < 1)
    {
      v65 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, 0.0);
    }

    else
    {
      v64 = v3[17] / v63;
      *&v64 = v64;
      v65 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, v64);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v66, v65, @"avgPdrTnbHeadingDiffDegs");
    v67 = v3[16];
    *&v67 = v67;
    v70 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v68, v69, v67);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v71, v70, @"maxPdrTnbHeadingDiffDegs");
  }

  v72 = v3[19];
  if (v72 != 1.79769313e308)
  {
    *&v72 = v72;
    v73 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v72);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v74, v73, @"minPdrTnbNumSteps");
    v77 = *(v3 + 44);
    if (v77 < 1)
    {
      v79 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v75, v76, 0.0);
    }

    else
    {
      v78 = v3[21] / v77;
      *&v78 = v78;
      v79 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v75, v76, v78);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v80, v79, @"avgPdrTnbNumSteps");
    v81 = v3[20];
    *&v81 = v81;
    v84 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v82, v83, v81);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v85, v84, @"maxPdrTnbNumSteps");
  }

  v86 = v3[23];
  if (v86 != 1.79769313e308)
  {
    *&v86 = v86;
    v87 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v86);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v88, v87, @"minPdrTnbStepCadence");
    v91 = *(v3 + 52);
    if (v91 < 1)
    {
      v93 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, 0.0);
    }

    else
    {
      v92 = v3[25] / v91;
      *&v92 = v92;
      v93 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, v92);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v94, v93, @"avgPdrTnbStepCadence");
    v95 = v3[24];
    *&v95 = v95;
    v98 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v96, v97, v95);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v99, v98, @"maxPdrTnbStepCadence");
  }

  v100 = v3[27];
  if (v100 != 1.79769313e308)
  {
    *&v100 = v100;
    v101 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v100);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v102, v101, @"minPdrTnbSpeedMetersPerSecond");
    v105 = *(v3 + 60);
    if (v105 < 1)
    {
      v107 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v103, v104, 0.0);
    }

    else
    {
      v106 = v3[29] / v105;
      *&v106 = v106;
      v107 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v103, v104, v106);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v108, v107, @"avgPdrTnbSpeedMetersPerSecond");
    v109 = v3[28];
    *&v109 = v109;
    v112 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v110, v111, v109);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v113, v112, @"maxPdrTnbSpeedMetersPerSecond");
  }

  v114 = v3[31];
  if (v114 != 1.79769313e308)
  {
    *&v114 = v114;
    v115 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v114);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v116, v115, @"minDistractedViewingDurationSeconds");
    v119 = *(v3 + 68);
    if (v119 < 1)
    {
      v121 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v117, v118, 0.0);
    }

    else
    {
      v120 = v3[33] / v119;
      *&v120 = v120;
      v121 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v117, v118, v120);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v122, v121, @"avgDistractedViewingDurationSeconds");
    v123 = v3[32];
    *&v123 = v123;
    v126 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v124, v125, v123);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v127, v126, @"maxDistractedViewingDurationSeconds");
  }

  v128 = v3[35];
  if (v128 != 1.79769313e308)
  {
    *&v128 = v128;
    v129 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v128);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v130, v129, @"minDistractedViewingAuxSampleIntervalSeconds");
    v133 = *(v3 + 76);
    if (v133 < 1)
    {
      v135 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v131, v132, 0.0);
    }

    else
    {
      v134 = v3[37] / v133;
      *&v134 = v134;
      v135 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v131, v132, v134);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v136, v135, @"avgDistractedViewingAuxSampleIntervalSeconds");
    v137 = v3[36];
    *&v137 = v137;
    v140 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v138, v139, v137);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v141, v140, @"maxDistractedViewingAuxSampleIntervalSeconds");
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = objc_msgSend_allKeys(v4, v14, v15);
  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v142, &v165, v177, 16);
  if (v143)
  {
    v144 = v143;
    v145 = *v166;
    do
    {
      v146 = 0;
      do
      {
        if (*v166 != v145)
        {
          objc_enumerationMutation(obj);
        }

        v147 = *(*(&v165 + 1) + 8 * v146);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
        }

        v148 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
        {
          v150 = objc_msgSend_objectForKey_(v4, v149, v147);
          *buf = 138478083;
          v174 = v147;
          v175 = 2113;
          v176 = v150;
          _os_log_impl(&dword_19B41C000, v148, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSessionAnalyticsTracker] %{private}@ -> %{private}@", buf, 0x16u);
        }

        v151 = sub_19B420058();
        if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
          }

          v154 = qword_1EAFE2A60;
          v155 = objc_msgSend_objectForKey_(v4, v153, v147);
          v169 = 138478083;
          v170 = v147;
          v171 = 2113;
          v172 = v155;
          LODWORD(v163) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v154, 0, "[CMMotionContextSessionAnalyticsTracker] %{private}@ -> %{private}@", &v169, v163);
          v157 = v156;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMotionContextSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v156);
          if (v157 != buf)
          {
            free(v157);
          }
        }

        ++v146;
      }

      while (v144 != v146);
      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v152, &v165, v177, 16);
    }

    while (v144);
  }

  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
  }

  v158 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v158, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSessionAnalyticsTracker] sent payload.", buf, 2u);
  }

  v159 = sub_19B420058();
  if (*(v159 + 160) > 1 || *(v159 + 164) > 1 || *(v159 + 168) > 1 || *(v159 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
    }

    LOWORD(v169) = 0;
    LODWORD(v163) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSessionAnalyticsTracker] sent payload.", &v169, v163);
    v161 = v160;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMotionContextSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v160);
    if (v161 != buf)
    {
      free(v161);
    }
  }

  return v4;
}

os_log_t sub_19B6E4104()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B6E4210(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6E4240(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2B28 != -1)
  {
    dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
  }

  v8 = qword_1EAFE2B30;
  if (os_log_type_enabled(qword_1EAFE2B30, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v14 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B28 != -1)
    {
      dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
    }

    v12[0] = 67240192;
    v12[1] = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B30, 17, "Failed with CMError code %{public}d", v12, 8);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSensorMonitorSimulatorProxy initWithSensorMonitorTests]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B6E45D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

CLConnectionMessage *sub_19B6E4600(uint64_t a1, CLConnectionMessage **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  result = *a2;
  if (*a2)
  {
    result = CLConnectionMessage::getDictionary(result);
    if (result)
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(result, v4, @"CMErrorMessage");
      if (v5)
      {
        v6 = v5;
        if (qword_1EAFE2B28 != -1)
        {
          dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
        }

        v7 = qword_1EAFE2B30;
        if (os_log_type_enabled(qword_1EAFE2B30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Error in simulateMotionSensorData: %@", buf, 0xCu);
        }

        v8 = sub_19B420058();
        if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2B28 != -1)
          {
            dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
          }

          v17 = 138412290;
          v18 = v6;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B30, 16, "Error in simulateMotionSensorData: %@", &v17, 12);
          v12 = v11;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSensorMonitorSimulatorProxy _simulateMotionSensorDataForType:payload:withHandler:]_block_invoke", "CoreLocation: %s\n", v11);
          if (v12 != buf)
          {
            free(v12);
          }
        }

        v13 = MEMORY[0x1E696ABC0];
        v14 = objc_msgSend_intValue(v6, v9, v10);
        objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"CMErrorDomain", v14, 0);
        return (*(*(a1 + 32) + 16))();
      }

      else
      {
        v16 = *(*(a1 + 32) + 16);

        return v16();
      }
    }
  }

  return result;
}

uint64_t sub_19B6E4A6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sensorMonitorSimulatorProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 56);

  return MEMORY[0x1EEE66B58](v4, sel__simulateMotionSensorDataForType_payload_withHandler_, v5);
}

os_log_t sub_19B6E4AB4()
{
  result = os_log_create("com.apple.locationd.Core", "SensorKit");
  qword_1EAFE2B30 = result;
  return result;
}

float sub_19B6E4AE4(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28920);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 2;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28920);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 2>::operator[](const size_t) const [T = float, N = 2]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

void sub_19B6E4CDC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3F80000000000000;
  *(a1 + 24) = 0;
  *(a1 + 28) = 2143289344;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_19B73C2F0(a1 + 72);
  *(a1 + 256) = 0x7FF8000000000000;
  *(a1 + 264) = 0;
  *(a1 + 268) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x600000000;
  *(a1 + 328) = 1;
  *(a1 + 348) = 0;
  *(a1 + 340) = 0;
  *(a1 + 356) = 0x600000000;
  *(a1 + 388) = 1;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0x600000000;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 232) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 460) = 0;
  *(a1 + 468) = 0;
  sub_19B73CD04(a1 + 72);
}

void sub_19B6E4F30(_Unwind_Exception *exception_object)
{
  v4 = 0;
  v5 = v2 + 480;
  while (1)
  {
    v6 = *(v5 + v4);
    *(v5 + v4) = 0;
    if (v6)
    {
      MEMORY[0x19EAE76F0](v6, v1);
    }

    v4 -= 8;
    if (v4 == -16)
    {
      v7 = *(v2 + 464);
      *(v2 + 464) = 0;
      if (v7)
      {
        MEMORY[0x19EAE76F0](v7, v1);
      }

      v8 = 0;
      v9 = v2 + 248;
      while (1)
      {
        v10 = *(v9 + v8);
        *(v9 + v8) = 0;
        if (v10)
        {
          MEMORY[0x19EAE76F0](v10, v1);
        }

        v8 -= 8;
        if (v8 == -16)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void sub_19B6E4FB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v137 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    if (*a2 - *(a1 + 216) <= 1.5)
    {
      v8 = *a2 - *(a1 + 216);
    }

    else
    {
      v8 = 1.5;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
    }

    v9 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 3.852e-34;
      v127 = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] Time since last step, %.2f\n", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
      }

      v114 = 134217984;
      v115 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMDoTEstimator] Time since last step, %.2f\n", COERCE_DOUBLE(&v114));
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrEstimatorOnHead::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const, BOOL)", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *v13.i64 = sub_19B73CB1C(a1 + 72, *(a3 + 8));
    v14.f32[0] = sub_19B66BFF4((a2 + 32), v13);
    *buf = v14.f32[0];
    v127 = COERCE_DOUBLE(__PAIR64__(v16, v15));
    *v128 = v17;
    v113[0] = sub_19B66BF70(buf, (a1 + 8), v14);
    v113[1] = v18;
    v113[2] = v19;
    v113[3] = v20;
    v21 = sub_19B66C1A4(v113, 0.0, 0.0, 1.0);
    v23 = atan2f(v22, v21);
    v26 = __sincosf_stret(v23);
    *&v25 = v26.__cosval;
    *&v24 = v26.__sinval;
    v27 = 0;
    v109 = v24;
    v110 = v25;
    v112 = __PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval));
    v28 = 1;
    v29 = 1;
    do
    {
      v30 = v28;
      v31 = *(a1 + 472 + 8 * v27);
      v32 = sub_19B6E4AE4(&v112, v27);
      v33 = sub_19B5BE1A8(v31, v32);
      v28 = 0;
      v29 &= v33;
      v27 = 1;
    }

    while ((v30 & 1) != 0);
    if (v29)
    {
      cosval = *(*(a1 + 472) + 4 * *(*(a1 + 472) + 8) + 16);
      sinval = *(*(a1 + 480) + 4 * *(*(a1 + 480) + 8) + 16);
    }

    else
    {
      sinval = v26.__sinval;
      cosval = v26.__cosval;
    }

    v41 = sqrtf((sinval * sinval) + (cosval * cosval));
    v34.f32[0] = cosval / v41;
    *(a1 + 60) = v34.i32[0];
    *(a1 + 64) = sinval / v41;
    if (a4)
    {
      *buf = sub_19B66BFF4((a2 + 32), v34);
      v127 = COERCE_DOUBLE(__PAIR64__(v43, v42));
      *v128 = v44;
      v45 = sub_19B66C1A4(buf, -*(a2 + 20), -*(a2 + 24), -*(a2 + 28));
      v46 = 0;
      *v111 = v45;
      v111[1] = v47;
      v111[2] = v48;
      v49 = 0.0;
      do
      {
        v49 = v49 + (*&v111[v46] * *&v111[v46]);
        ++v46;
      }

      while (v46 != 3);
      if (sqrtf(v49) > 0.02)
      {
        v50.i32[0] = v110;
        *(a1 + 28) = v23;
        *(a1 + 32) = v110;
        v51 = 0.0;
        *(a1 + 36) = v109;
        if (v8 > 0.0)
        {
          v50.i32[1] = v109;
          *(a1 + 40) = vadd_f32(vmul_f32(v50, vdup_n_s32(0x3F49DB23u)), *(a1 + 40));
          *(a1 + 48) = *(a1 + 48) + 0.0;
          v51 = 0.7885 / v8;
        }

        *(a1 + 52) = v51;
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
        }

        v52 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v53 = 0;
          v54 = 0.0;
          do
          {
            v54 = v54 + (*&v111[v53] * *&v111[v53]);
            ++v53;
          }

          while (v53 != 3);
          *buf = 3.852e-34;
          v127 = sqrtf(v54);
          _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] DoG: userAccelNorm, %f\n", buf, 0xCu);
        }

        v55 = sub_19B420058();
        if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
          }

          v56 = 0;
          v57 = 0.0;
          do
          {
            v57 = v57 + (*&v111[v56] * *&v111[v56]);
            ++v56;
          }

          while (v56 != 3);
          v114 = 134217984;
          v115 = sqrtf(v57);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMDoTEstimator] DoG: userAccelNorm, %f\n", COERCE_DOUBLE(&v114));
          v59 = v58;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::directionOfGaze(const CMVector3d &, float, double)", "CoreLocation: %s\n", v58);
          if (v59 != buf)
          {
            free(v59);
          }
        }
      }
    }

    else
    {
      v60 = sub_19B73C524(a1 + 72, *a1);
      v62 = v61;
      v63 = *a2;
      v64 = atan2f(*(a1 + 64), *(a1 + 60));
      v65 = *a1;
      v66 = *(*a1 + 68);
      v67 = *(*a1 + 56);
      if (sub_19B5BE1A8(*(a1 + 464), v67))
      {
        v67 = *(*(a1 + 464) + 4 * *(*(a1 + 464) + 8) + 16);
      }

      if (v66)
      {
        v68 = v62;
        if (*(a1 + 264) == 1)
        {
          v69 = *(a1 + 60);
          *(a1 + 32) = v69;
          v70 = v69;
        }

        else
        {
          if (sub_19B73CFB0(a1 + 256))
          {
            *(a1 + 280) = 0;
            *(a1 + 288) = 0;
            *(a1 + 296) = 0;
            *(a1 + 268) = 1;
            *(a1 + 356) = 0;
            *(a1 + 348) = 0;
            *(a1 + 340) = 0;
            *(a1 + 328) = 1;
            *(a1 + 400) = 0;
            *(a1 + 408) = 0;
            *(a1 + 416) = 0;
            *(a1 + 388) = 1;
            *(a1 + 256) = 0x7FF8000000000000;
            *(a1 + 456) = 0;
          }

          if (v62 >= 0.5)
          {
            *buf = v62 * *&v60;
            *&v127 = v62 * *(&v60 + 1);
            v70.f32[0] = sub_19B73CDFC(a1 + 72, buf);
            *(a1 + 32) = v70.i32[0];
            *(a1 + 36) = v78;
            v70.i32[1] = v78;
          }

          else
          {
            v75 = vmul_f32(*(a1 + 60), vdup_n_s32(0x3F19999Au));
            v76.f32[0] = sub_19B73CDFC(a1 + 72, (a1 + 60));
            v76.i32[1] = v77;
            v70 = vadd_f32(v75, vmul_f32(v76, vdup_n_s32(0x3ECCCCCCu)));
            *(a1 + 32) = v70;
          }
        }

        if (*(a1 + 56) == 1)
        {
          v79 = 0.7885;
        }

        else
        {
          v80 = 0;
          v81 = v65[15];
          v82 = v65[16];
          v83 = v81 * v65[11];
          v84 = v65[14];
          *&v85 = ((v81 * v65[12]) + (v82 * v65[6])) * v84;
          *&v86 = ((v81 * v65[13]) + (v82 * v65[7])) * v84;
          *buf = (v83 + (v82 * v65[5])) * v84;
          v127 = COERCE_DOUBLE(__PAIR64__(v86, v85));
          v87 = v67 * 24.896;
          do
          {
            v88 = v80 + 1;
            v89 = flt_19B7BC5F4[v80 + 1];
            v87 = v87 + (v89 * sub_19B5D6144(buf, v80));
            v80 = v88;
          }

          while (v88 != 3);
          *(a1 + 52) = v87;
          v79 = *(*a1 + 80) * (v87 * v68);
          v70 = *(a1 + 32);
        }

        *(a1 + 40) = vadd_f32(vmul_n_f32(v70, v79), *(a1 + 40));
        *(a1 + 48) = *(a1 + 48) + 0.0;
        v90 = atan2f(*(&v60 + 1), *&v60);
        v91 = *(a1 + 28);
        v92 = (v91 - v64) + floor(((v91 - v64) + 3.14159265) / 6.28318531) * -6.28318531;
        v93 = (v90 - v91) + floor(((v90 - v91) + 3.14159265) / 6.28318531) * -6.28318531;
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
        }

        v94 = v92;
        v95 = v93;
        v96 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v97 = *(a1 + 40);
          v98 = *(a1 + 44);
          v99 = (*(a1 + 28) * 57.296);
          *buf = 3.8526e-34;
          v127 = v97;
          *v128 = 2048;
          *&v128[2] = v98;
          v129 = 2048;
          v130 = (v94 * 57.296);
          v131 = 2048;
          v132 = v99;
          v133 = 2048;
          v134 = (v64 * 57.296);
          v135 = 2048;
          v136 = (v95 * 57.296);
          _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] position [%f, %f], gazeDiffDot, %.2f, dot %.2f, gaze, %.2f, swayDelta, %.2f\n", buf, 0x3Eu);
        }

        v100 = sub_19B420058();
        if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
          }

          v101 = *(a1 + 40);
          v102 = *(a1 + 44);
          v103 = (*(a1 + 28) * 57.296);
          v114 = 134219264;
          v115 = v101;
          v116 = 2048;
          v117 = v102;
          v118 = 2048;
          v119 = (v94 * 57.296);
          v120 = 2048;
          v121 = v103;
          v122 = 2048;
          v123 = (v64 * 57.296);
          v124 = 2048;
          v125 = (v95 * 57.296);
          LODWORD(v108) = 62;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMDoTEstimator] position [%f, %f], gazeDiffDot, %.2f, dot %.2f, gaze, %.2f, swayDelta, %.2f\n", COERCE_DOUBLE(&v114), v108, *&v109, *(&v109 + 1), *&v110, *(&v110 + 1));
          v105 = v104;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::printDebugInfo(float, float) const", "CoreLocation: %s\n", v104);
          if (v105 != buf)
          {
            free(v105);
          }
        }

        v74 = *(a1 + 32);
      }

      else
      {
        v71 = vmul_f32(*(a1 + 60), vdup_n_s32(0x3F19999Au));
        v72.f32[0] = sub_19B73CDFC(a1 + 72, (a1 + 60));
        v72.i32[1] = v73;
        v74 = vadd_f32(v71, vmul_f32(v72, vdup_n_s32(0x3ECCCCCCu)));
        *(a1 + 32) = v74;
        *(a1 + 52) = 0;
      }

      v106 = atan2f(v74.f32[1], v74.f32[0]);
      *(a1 + 28) = v106;
      v107 = 0.0;
      if (v63 - *(a1 + 216) < 1.5)
      {
        v107 = 1.0;
      }

      sub_19B73CEB8((a1 + 256), v107, v64, v106, v63);
    }
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
    }

    v37 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "[CMDoTEstimator] HeadSet Orientation is not set!", buf, 2u);
    }

    v38 = sub_19B420058();
    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
      }

      LOWORD(v114) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMDoTEstimator] HeadSet Orientation is not set!", &v114, 2);
      v40 = v39;
      sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrEstimatorOnHead::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const, BOOL)", "CoreLocation: %s\n", v39);
      if (v40 != buf)
      {
        free(v40);
      }
    }
  }
}

os_log_t sub_19B6E5C24()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B6E5C6C(uint64_t a1, double *a2)
{
  v3 = *a2;
  *(a1 + 8) = *a2;
  *&v3 = 1.0 / v3;
  *(a1 + 16) = LODWORD(v3);
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  bzero((a1 + 56), 0x2D8uLL);
  *(a1 + 822) = 0;
  *(a1 + 818) = 0;
}

void sub_19B6E5CD0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 0;
  v1 = a1 + 56;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 776) = 0;
  *(a1 + 60) = 0;
  sub_19B45B7E4(a1 + 62);
  sub_19B45C958(v1 + 208, 0, 0, 0, v1, *(v1 + 720));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "compass calibrator has been reset", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v6[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "compass calibrator has been reset", v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::reset()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

void sub_19B6E5EB0(uint64_t a1, float *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  sub_19B45B8F8((a2[2] / 0.3 * 5.0), (a2[3] / 0.3 * 5.0), (a2[4] / 0.3 * 5.0), a1 + 62, (a1 + 254));
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0;
  if (sub_19B45CD04(0, 0, 0, (a1 + 264), a1 + 62, *(a1 + 254), 0, 1, a1 + 56, (a1 + 776), a1 + 784) >= 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 660);
      v5 = *(a1 + 798);
      v6 = *(a1 + 796);
      v7 = *(a1 + 800);
      v8 = *(a1 + 802);
      v9 = *(a1 + 786);
      v10 = *(a1 + 804);
      v11 = *(a1 + 806);
      v12 = *(a1 + 808);
      v13 = *(a1 + 792);
      v14 = *(a1 + 784);
      v15 = *(a1 + 810);
      v16 = *(a1 + 812);
      v17 = *(a1 + 814);
      v18 = *(a1 + 790);
      v19 = *(a1 + 788);
      v20 = *(a1 + 794);
      v21 = *(a1 + 816);
      *buf = 136319746;
      v84 = "Compass-DOE";
      v85 = 1024;
      v86 = v4;
      v87 = 1024;
      v88 = v5;
      v89 = 1024;
      v90 = v6;
      v91 = 1024;
      v92 = v7;
      v93 = 1024;
      v94 = v8;
      v95 = 1024;
      v96 = v9;
      v97 = 1024;
      v98 = v10;
      v99 = 1024;
      v100 = v11;
      v101 = 1024;
      v102 = v12;
      v103 = 1024;
      v104 = v13;
      v105 = 1024;
      v106 = v14;
      v107 = 1024;
      v108 = v15;
      v109 = 1024;
      v110 = v16;
      v111 = 1024;
      v112 = v17;
      v113 = 1024;
      v114 = v18;
      v115 = 1024;
      v116 = v19;
      v117 = 1024;
      v118 = v20;
      v119 = 1024;
      v120 = v21;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Type,%s,radius,%d,hrmin,%d,hrmax,%d,hrvar,%d,rvar,%d,m,%d,ovar,%d,%d,%d,hovar,%d,n,%d,vvar,%d,%d,%d,hvarA,%d,hvar,%d,hdistpl,%d,dvar,%d,", buf, 0x78u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
      }

      v23 = *(a1 + 660);
      v24 = *(a1 + 798);
      v25 = *(a1 + 796);
      v26 = *(a1 + 800);
      v27 = *(a1 + 802);
      v28 = *(a1 + 786);
      v29 = *(a1 + 804);
      v30 = *(a1 + 806);
      v31 = *(a1 + 808);
      v32 = *(a1 + 792);
      v33 = *(a1 + 784);
      v34 = *(a1 + 810);
      v35 = *(a1 + 812);
      v36 = *(a1 + 814);
      v37 = *(a1 + 790);
      v38 = *(a1 + 788);
      v39 = *(a1 + 794);
      v40 = *(a1 + 816);
      v45 = 136319746;
      v46 = "Compass-DOE";
      v47 = 1024;
      v48 = v23;
      v49 = 1024;
      v50 = v24;
      v51 = 1024;
      v52 = v25;
      v53 = 1024;
      v54 = v26;
      v55 = 1024;
      v56 = v27;
      v57 = 1024;
      v58 = v28;
      v59 = 1024;
      v60 = v29;
      v61 = 1024;
      v62 = v30;
      v63 = 1024;
      v64 = v31;
      v65 = 1024;
      v66 = v32;
      v67 = 1024;
      v68 = v33;
      v69 = 1024;
      v70 = v34;
      v71 = 1024;
      v72 = v35;
      v73 = 1024;
      v74 = v36;
      v75 = 1024;
      v76 = v37;
      v77 = 1024;
      v78 = v38;
      v79 = 1024;
      v80 = v39;
      v81 = 1024;
      v82 = v40;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Type,%s,radius,%d,hrmin,%d,hrmax,%d,hrvar,%d,rvar,%d,m,%d,ovar,%d,%d,%d,hovar,%d,n,%d,vvar,%d,%d,%d,hvarA,%d,hvar,%d,hdistpl,%d,dvar,%d,", &v45, 120, v43, v44);
      v42 = v41;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v41);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  *(a1 + 20) = *(a1 + 776);
}

void sub_19B6E62F0(uint64_t a1, float *a2, int *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  *(a1 + 56) = (a2[2] / 0.3 * 5.0);
  v6 = a1 + 56;
  *(a1 + 776) = v5;
  *(a1 + 20) = v5;
  *(a1 + 58) = (a2[3] / 0.3 * 5.0);
  *(a1 + 60) = (a2[4] / 0.3 * 5.0);
  sub_19B45B7E4(a1 + 62);
  sub_19B45C958(v6 + 208, 0, 0, 0, v6, *(v6 + 720));
  *(v6 - 28) = *(v6 + 720);
  *(v6 + 762) = *v6;
  *(v6 + 766) = *(v6 + 4);
  *(v6 - 32) = 1;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = *a3;
    *buf = 134218752;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    v34 = 1024;
    v35 = v11;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "compass calibrator has been set with offsets (%+.3f/%+.3f/%+.3f) and calibration level (%d)", buf, 0x26u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = *a3;
    v20 = 134218752;
    v21 = v13;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    v26 = 1024;
    v27 = v16;
    LODWORD(v19) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "compass calibrator has been set with offsets (%+.3f/%+.3f/%+.3f) and calibration level (%d)", COERCE_DOUBLE(&v20), v19);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

uint64_t sub_19B6E65DC(uint64_t result, float *a2, _DWORD *a3)
{
  v3 = *(result + 776);
  *a3 = v3;
  v4 = *(result + 56);
  *(result + 20) = v3;
  v5 = (v4 / 5.0) * 0.3;
  *a2 = v5;
  v6 = (*(result + 58) / 5.0) * 0.3;
  a2[1] = v6;
  v7 = (*(result + 60) / 5.0) * 0.3;
  a2[2] = v7;
  v8 = *(result + 28);
  if (v8 == v3 && *(result + 818) == *(result + 56) && *(result + 820) == *(result + 58) && *(result + 822) == *(result + 60))
  {
    *(result + 25) = 0;
  }

  else
  {
    *(result + 26) = v8 <= v3;
    *(result + 24) = 256;
    *(result + 28) = v3;
    *(result + 818) = *(result + 56);
    *(result + 822) = *(result + 60);
  }

  return result;
}

float32_t sub_19B6E66C0(__int16 *a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = (a1[30] / 5.0) * 0.3;
  v4 = a2[2].f32[0] - v3;
  v5.i32[0] = a1[28];
  v5.i32[1] = a1[29];
  __asm { FMOV            V3.2S, #5.0 }

  v11 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(v5), _D3)), vdupq_n_s64(0x3FD3333333333333uLL)));
  a2[1] = vsub_f32(a2[1], v11);
  a2[2].f32[0] = v4;
  result = a3[2].f32[0] - v3;
  a3[1] = vsub_f32(a3[1], v11);
  a3[2].f32[0] = result;
  return result;
}

void sub_19B6E68B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v14)
  {
    sub_19B41FFEC(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (v15)
  {
    sub_19B41FFEC(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E70CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v12);
  _Unwind_Resume(a1);
}

void sub_19B6E715C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E71CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E72D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E7374(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6E738C(uint64_t a1, uint64_t a2)
{
  if (!sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataXKey", a1, 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataYKey", (a1 + 8), 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataZKey", (a1 + 16), 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataMagnitudeKey", (a1 + 24), 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataHorizontalKey", (a1 + 32), 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataDeclinationKey", (a1 + 40), 0xFFFFFFFFLL) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataInclinationKey", (a1 + 48), 0xFFFFFFFFLL))
  {
    return 0;
  }

  return sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataTimestampKey", (a1 + 56), 0xFFFFFFFFLL);
}

BOOL sub_19B6E74A8(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  sub_19B5EF4EC(a4, "kCMActivityAlarmId", a1);
  sub_19B5EF4EC(a4, "kCMActivityAlarmTrigger", a2);

  return sub_19B5EFAF4(a4, "kCMActivityAlarmDuration", a3);
}

uint64_t sub_19B6E7520(_DWORD *a1, _DWORD *a2, void *a3, uint64_t a4)
{
  if (!sub_19B432FD8(a4, "kCMActivityAlarmId", a1, 0xFFFFFFFFLL) || !sub_19B432FD8(a4, "kCMActivityAlarmTrigger", a2, 0xFFFFFFFFLL))
  {
    return 0;
  }

  return sub_19B43D468(a4, "kCMActivityAlarmDuration", a3, 0xFFFFFFFFLL);
}

uint64_t sub_19B6E75C0(UInt8 *a1, uint64_t a2)
{
  cf = 0;
  if (sub_19B5EB694(a2, "kCMPressureBiasId", &cf, 0xFFFFFFFFLL))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDataGetTypeID())
  {
    return 0;
  }

  v5 = cf;
  if (CFDataGetLength(cf) < 0x1D)
  {
    return 0;
  }

  v8.location = 0;
  v8.length = 29;
  CFDataGetBytes(v5, v8, a1);
  return 1;
}

uint64_t sub_19B6E7774()
{
  result = sub_19B421620();
  if ((result & 0x200) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B6E7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6E78D8;
  v9[3] = &unk_1E7534F68;
  v9[6] = a3;
  v9[7] = a2;
  v9[4] = &v10;
  v9[5] = a1;
  sub_19B420C9C(v6, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_19B6E78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6E78D8(const char **a1)
{
  v1 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if ((sub_19B421620() & 0x200) != 0)
  {
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v30 = off_1EAFE2828;
    v2 = "assert";
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      *&v45[14] = 2082;
      *&v45[16] = "assert";
      v46 = 2081;
      v47 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v31 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      *&v45[14] = 2082;
      *&v45[16] = "assert";
      v46 = 2081;
      v47 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v1 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      *&v45[14] = 2082;
      *&v45[16] = "assert";
      v46 = 2081;
      v47 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Eclipse/CLSPUEclipseClient.mm", 59, "querySuppressionBlocking_block_invoke");
  }

  dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
LABEL_3:
  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Sending query command.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    *v34 = 0;
    LODWORD(v32) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "[CLSPUEclipseClient] Sending query command.", v34, v32);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v35 = 5;
  memset(v34, 0, sizeof(v34));
  v33 = 37;
  v7 = sub_19B44CF80(*(v2 + 3), &v35, 1, v34, &v33);
  if (v7)
  {
    v8 = v7;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v9 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v8);
      *buf = 136446466;
      *v45 = v10;
      *&v45[8] = 1026;
      *&v45[10] = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Query failed: %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v12 = off_1EAFE2828;
      v13 = mach_error_string(v8);
      v36 = 136446466;
      v37 = v13;
      v38 = 1026;
      LODWORD(v39) = v8;
      LODWORD(v32) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 16, "[CLSPUEclipseClient] Query failed: %{public}s (0x%{public}x)", &v36, v32);
LABEL_70:
      v29 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v14);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  else if (v33 == 37)
  {
    if (v34[1] == 1)
    {
      if (*&v34[10])
      {
        *v1[6] = *&v34[10] * 0.000001;
        *v1[7] = v34[19];
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        v15 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *v1[6];
          v17 = *v1[7];
          *buf = 134349824;
          *v45 = v16;
          *&v45[8] = 2050;
          *&v45[10] = *&v34[2] * 0.000001;
          *&v45[18] = 1026;
          *&v45[20] = v17;
          v46 = 1026;
          LODWORD(v47) = v34[20];
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Query reply: timestamp,%{public}f, replyTimestamp,%{public}f, suppress,%{public}d, awake,%{public}d", buf, 0x22u);
        }

        v18 = sub_19B420058();
        if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
          }

          v19 = *v1[6];
          v20 = *v1[7];
          v36 = 134349824;
          v37 = v19;
          v38 = 2050;
          v39 = *&v34[2] * 0.000001;
          v40 = 1026;
          v41 = v20;
          v42 = 1026;
          v43 = v34[20];
          LODWORD(v32) = 34;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "[CLSPUEclipseClient] Query reply: timestamp,%{public}f, replyTimestamp,%{public}f, suppress,%{public}d, awake,%{public}d", &v36, v32);
          v22 = v21;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        *(*(v1[4] + 1) + 24) = 1;
      }

      else
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        v27 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] No suppression event available yet.", buf, 2u);
        }

        v28 = sub_19B420058();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
          }

          LOWORD(v36) = 0;
          LODWORD(v32) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "[CLSPUEclipseClient] No suppression event available yet.", &v36, v32);
          goto LABEL_70;
        }
      }
    }

    else
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v25 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Service not running.", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        LOWORD(v36) = 0;
        LODWORD(v32) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "[CLSPUEclipseClient] Service not running.", &v36, v32);
        goto LABEL_70;
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v23 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v45 = v33;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v36 = 134349056;
      v37 = v33;
      LODWORD(v32) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", &v36, v32);
      goto LABEL_70;
    }
  }
}

uint64_t sub_19B6E8350(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6E8424;
  v7[3] = &unk_1E7533420;
  v7[5] = a1;
  v7[6] = a2;
  v7[4] = &v8;
  sub_19B420C9C(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_19B6E840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6E8424(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if ((sub_19B421620() & 0x200) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v19 = off_1EAFE2828;
    v5 = "assert";
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v20 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v4 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Eclipse/CLSPUEclipseClient.mm", 107, "queryStaticPoseBlocking_block_invoke");
LABEL_42:
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
LABEL_4:
    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v7 = mach_error_string(v4);
      *buf = 136446466;
      *v32 = v7;
      *&v32[8] = 1026;
      *&v32[10] = v4;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] QueryStaticPose failed: %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (*(v5 + 256) != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v9 = off_1EAFE2828;
    v10 = mach_error_string(v4);
    v27 = 136446466;
    v28 = v10;
    v29 = 1026;
    v30 = v4;
    LODWORD(v21) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 16, "[CLSPUEclipseClient] QueryStaticPose failed: %{public}s (0x%{public}x)", &v27, v21);
    v12 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::queryStaticPoseBlocking(CMEclipseReport::QueryStaticPoseReply &)_block_invoke", "CoreLocation: %s\n", v11);
    if (v12 == buf)
    {
      return;
    }

LABEL_25:
    free(v12);
    return;
  }

  v26 = 8;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 34;
  v3 = sub_19B44CF80(*(v2 + 24), &v26, 1, &v23, &v22);
  if (v3)
  {
    LODWORD(v4) = v3;
    v5 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  if (v22 == 34)
  {
    v13 = a1[6];
    v14 = v23;
    v15 = v24;
    *(v13 + 32) = v25;
    *v13 = v14;
    *(v13 + 16) = v15;
    *(*(a1[4] + 8) + 24) = 1;
    return;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v16 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *v32 = v22;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", buf, 0xCu);
  }

  v17 = sub_19B420058();
  if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v27 = 134349056;
    v28 = v22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", &v27, 12);
    v12 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::queryStaticPoseBlocking(CMEclipseReport::QueryStaticPoseReply &)_block_invoke", "CoreLocation: %s\n", v18);
    if (v12 != buf)
    {
      goto LABEL_25;
    }
  }
}

void sub_19B6E89E0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v7 = 7;
  if (!sub_19B44CCDC(a1, &v7, 1))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v2 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Failed to release AP force wake assertion", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "[CLSPUEclipseClient] Failed to release AP force wake assertion", v6, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUEclipseClient::releaseAPForceWakeAssertion()", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B6E8BA8(void *a1)
{
  sub_19B7444EC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B6E8BE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void sub_19B6E8CA8(uint64_t a1)
{
  sub_19B780E7C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6E8D94(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6E8DCC(uint64_t a1, int a2, double *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryInertialOdometry] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (v8 = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v17 = 67240192;
      LODWORD(v18) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryInertialOdometry] Unrecognized update interval notification %{public}d", &v17, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryInertialOdometry::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v11 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v8 = fmax(v11, 1.0);
    v12 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[AccessoryInertialOdometry] Setting update interval to %{public}f", buf, 0xCu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v17 = 134349056;
      v18 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryInertialOdometry] Setting update interval to %{public}f", &v17, 12);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryInertialOdometry::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_19B4238F4(*(a1 + 32), rint(v8 * 1000000.0));
  }

  return v8;
}

void sub_19B6E9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
  }

  v7 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 68157955;
    DWORD1(buf[0]) = IntegerValue;
    WORD4(buf[0]) = 2097;
    *(buf + 10) = DataValue;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[AccessoryInertialOdometry] payload,{%{private}.*P}", buf, 0x12u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v21 = 68157955;
    LODWORD(v22[0]) = IntegerValue;
    WORD2(v22[0]) = 2097;
    *(v22 + 6) = DataValue;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryInertialOdometry] payload,{%{private}.*P}", &v21, 18);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryInertialOdometry::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (DataValue && IntegerValue == 101)
  {
    v11 = *DataValue;
    v12 = *(DataValue + 32);
    buf[1] = *(DataValue + 16);
    buf[2] = v12;
    buf[0] = v11;
    v13 = *(DataValue + 48);
    v14 = *(DataValue + 64);
    v15 = *(DataValue + 80);
    *&v24[13] = *(DataValue + 93);
    buf[4] = v14;
    *v24 = v15;
    buf[3] = v13;
    TimeStamp = IOHIDEventGetTimeStamp();
    v25 = sub_19B41E070(TimeStamp);
    sub_19B41DF08(a1, 0, buf, 109);
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = IntegerValue;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[AccessoryInertialOdometry] Invalid payload with size %zu", buf, 0xCu);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v21 = 134217984;
      v22[0] = IntegerValue;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryInertialOdometry] Invalid payload with size %zu", &v21);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryInertialOdometry::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }
}

os_log_t sub_19B6E9510()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B6E9540(uint64_t result, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_objectForKeyedSubscript_(v2, v3, @"CMOnBodyStatusManagerClassifierTheta0") && objc_msgSend_objectForKeyedSubscript_(v2, v4, @"CMOnBodyStatusManagerClassifierTheta1") && objc_msgSend_objectForKeyedSubscript_(v2, v5, @"CMOnBodyStatusManagerClassifierTheta2") && objc_msgSend_objectForKeyedSubscript_(v2, v6, @"CMOnBodyStatusManagerClassifierTheta3") && objc_msgSend_objectForKeyedSubscript_(v2, v7, @"CMOnBodyStatusManagerClassifierTheta4") && objc_msgSend_objectForKeyedSubscript_(v2, v8, @"CMOnBodyStatusManagerClassifierTheta5") && objc_msgSend_objectForKeyedSubscript_(v2, v9, @"CMOnBodyStatusManagerClassifierMinLowPower") && objc_msgSend_objectForKeyedSubscript_(v2, v10, @"CMOnBodyStatusManagerClassifierMaxLowPower") && objc_msgSend_objectForKeyedSubscript_(v2, v11, @"CMOnBodyStatusManagerClassifierMaxHighPower") && objc_msgSend_objectForKeyedSubscript_(v2, v12, @"CMOnBodyStatusManagerLowBandStart") && objc_msgSend_objectForKeyedSubscript_(v2, v13, @"CMOnBodyStatusManagerLowBandStop") && objc_msgSend_objectForKeyedSubscript_(v2, v14, @"CMOnBodyStatusManagerHighBandStart") && objc_msgSend_objectForKeyedSubscript_(v2, v15, @"CMOnBodyStatusManagerHighBandStop") && objc_msgSend_objectForKeyedSubscript_(v2, v16, @"CMOnBodyStatusManagerWakeThreshold") && objc_msgSend_objectForKeyedSubscript_(v2, v17, @"CMOnBodyStatusManagerOddsThreshold") && objc_msgSend_objectForKeyedSubscript_(v2, v18, @"CMOnBodyStatusManagerMedianFilterSize") && objc_msgSend_objectForKeyedSubscript_(v2, v19, @"CMOnBodyStatusManagerConfidenceThreshold") && objc_msgSend_objectForKeyedSubscript_(v2, v20, @"CMOnBodyStatusManagerUseHysteresis") && objc_msgSend_objectForKeyedSubscript_(v2, v21, @"CMOnBodyStatusManagerUseAngleOverride") && objc_msgSend_objectForKeyedSubscript_(v2, v22, @"CMOnBodyStatusManagerAngleMetricThreshold"))
    {
      return 1;
    }

    else
    {
      if (qword_1EAFE2A48 != -1)
      {
        dispatch_once(&qword_1EAFE2A48, &unk_1F0E28C20);
      }

      v23 = qword_1EAFE2A50;
      if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_FAULT))
      {
        v26 = objc_msgSend_description(v2, v24, v25);
        *buf = 136446210;
        v41 = objc_msgSend_UTF8String(v26, v27, v28);
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "Invalid parameters received:\n%{public}s", buf, 0xCu);
      }

      v29 = sub_19B420058();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A48 != -1)
        {
          dispatch_once(&qword_1EAFE2A48, &unk_1F0E28C20);
        }

        v32 = qword_1EAFE2A50;
        v33 = objc_msgSend_description(v2, v30, v31);
        v38 = 136446210;
        v39 = objc_msgSend_UTF8String(v33, v34, v35);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v32, 17, "Invalid parameters received:\n%{public}s", &v38, 12);
        v37 = v36;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLOnBodyNotifier_Type::Params::isValid(NSDictionary *)", "CoreLocation: %s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      return 0;
    }
  }

  return result;
}

os_log_t sub_19B6E9924()
{
  result = os_log_create("com.apple.locationd.Motion", "OnBody");
  qword_1EAFE2A50 = result;
  return result;
}

void sub_19B6E9958(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B6F3630(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6E9990(uint64_t a1, _DWORD *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    return 1;
  }

  if (!*(a1 + 112))
  {
    *(a1 + 120) = dispatch_queue_create("com.apple.CoreMotion.CLGeomagneticModelProviderClientPrivateQueue", 0);
    operator new();
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "fLocationdConnection is not NULL", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "fLocationdConnection is not NULL", v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return 0;
}

void sub_19B6E9D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v33);
  _Unwind_Resume(a1);
}

void *sub_19B6E9DC4(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v18, Dictionary);
  if (*(v18[0] + 856))(v18) >= 1 && (sub_19B6E738C(v17, v18))
  {
    v5 = *(v2 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = v17[0];
    v13 = v17[1];
    v11[2] = sub_19B6EA05C;
    v11[3] = &unk_1E7534F88;
    v11[4] = v2;
    v14 = v17[2];
    v15 = v17[3];
    objc_msgSend_async_(v5, v4, v11);
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v6 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Could not get geomagnetic model data for message!", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Could not get geomagnetic model data for message!", v16, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)_block_invoke", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return sub_19B445384(v18);
}

uint64_t sub_19B6EA05C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v2;
  v3 = *(a1 + 88);
  v6[2] = *(a1 + 72);
  v6[3] = v3;
  v5 = 0;
  return (*(*v1 + 152))(v1, &v5, v6, 1, 0xFFFFFFFFLL, 0);
}

void sub_19B6EA0D4(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v7 = qword_1EAFE2888;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136315138;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %s", &v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

uint64_t sub_19B6EA2CC(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    return 1;
  }

  if (*(a1 + 112))
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    *(a1 + 112) = 0;
    dispatch_release(*(a1 + 120));
    *(a1 + 120) = 0;
    return 1;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
  }

  v5 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "fLocationdConnection is NULL", buf, 2u);
  }

  v6 = sub_19B420058();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "fLocationdConnection is NULL", v9, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::unregisterForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return 0;
}

uint64_t sub_19B6EA4B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 108))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v8;
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v3 = (a1 + 104);
  ++*(a1 + 104);
  v10 = (a1 + 104);
  v4 = sub_19B65427C(a1 + 80, (a1 + 104), &unk_19B7BA202, &v10);
  if (v4 + 5 != &v7)
  {
    sub_19B6543B4(v4 + 5, v7, v8);
  }

  v5 = v8[0];
  v4[8] = v9;
  v2 = *v3;
  sub_19B654634(&v7, v5);
  return v2;
}

void sub_19B6EA57C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  HIDWORD(v13) = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_19B654758(v5, &v13 + 1);
    }

    else
    {
LABEL_9:
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v7 = qword_1EAFE2820;
      if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v19 = v8;
        v20 = 1026;
        v21 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27F8 != -1)
        {
          dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
        }

        v10 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v10 = *v10;
        }

        v14 = 136446466;
        v15 = v10;
        v16 = 1026;
        v17 = a2;
        LODWORD(v13) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", &v14, v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::removeClient(int) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

uint64_t sub_19B6EA820(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_19B65487C(a4, a2);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_19B6EA9AC(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    objc_msgSend_setValid_(v3, v4, 1);
    objc_msgSend_setAdaptedNotifier_(*(a1 + 48), v5, a1);
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_19B6EAA28(uint64_t a1, int a2, int *a3, char *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = a1 + 88;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v9 == a1 + 88 || *(v9 + 32) > a2)
  {
LABEL_9:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v10 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v11 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 1026;
      *&buf[14] = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v13 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v13 = *v13;
      }

      *v35 = 136446466;
      *&v35[4] = v13;
      v36 = 1026;
      v37 = a2;
      LODWORD(v32) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", v35, v32);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  *v35 = v9;
  v17 = *a3;
  v20 = *(v9 + 48);
  v19 = v9 + 48;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v19;
  do
  {
    if (*(v18 + 28) >= v17)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v17));
  }

  while (v18);
  if (v21 == v19 || v17 < *(v21 + 28))
  {
LABEL_32:
    v21 = v19;
  }

  v22 = *(a1 + 64);
  if (!v22)
  {
    goto LABEL_40;
  }

  v23 = a1 + 64;
  do
  {
    if (*(v22 + 32) >= v17)
    {
      v23 = v22;
    }

    v22 = *(v22 + 8 * (*(v22 + 32) < v17));
  }

  while (v22);
  if (v23 != a1 + 64 && v17 >= *(v23 + 32))
  {
    v33 = v23;
    v30 = *(v23 + 56);
    v31 = *a4;
    *buf = &v34;
    *(sub_19B65570C((v23 + 40), &v34, &unk_19B7BA202, buf) + 32) = v31;
    v39 = 0u;
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    if (v21 == v19 && (*(*a1 + 128))(a1, a3, buf))
    {
      sub_19B6ED3FC(buf);
    }

    if (v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_40:
    v24 = (a1 + 56);
    v33 = a1 + 64;
    v25 = byte_1EAFE31A9;
    HIDWORD(v32) = v17;
    *buf = &v32 + 4;
    *(sub_19B655538((a1 + 56), &v32 + 1, &unk_19B7BA202, buf) + 80) = v25;
    HIDWORD(v32) = *a3;
    *buf = &v32 + 4;
    v26 = sub_19B655538((a1 + 56), &v32 + 1, &unk_19B7BA202, buf);
    v27 = v26[9];
    v26[8] = 0;
    v26[9] = 0;
    if (v27)
    {
      sub_19B41FFEC(v27);
    }

    v28 = *a4;
    HIDWORD(v32) = *a3;
    *buf = &v32 + 4;
    v29 = sub_19B655538(v24, &v32 + 1, &unk_19B7BA202, buf);
    *buf = &v34;
    *(sub_19B65570C(v29 + 5, &v34, &unk_19B7BA202, buf) + 32) = v28;
  }

  (*(*a1 + 168))(a1, a3);
LABEL_44:
  if (v21 == v19)
  {
    *buf = *a3;
    sub_19B6562C0((*v35 + 40), buf, buf);
  }

  return 1;
}

BOOL sub_19B6EAEC8(uint64_t a1, int a2, int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v16 = *(v6 + 48);
    v14 = v6 + 48;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = *a3;
    v18 = v14;
    do
    {
      if (*(v15 + 28) >= v17)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < v17));
    }

    while (v15);
    if (v18 == v14 || v17 < *(v18 + 28))
    {
LABEL_31:
      v18 = v14;
    }

    return v18 != v14;
  }

  else
  {
LABEL_8:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      *buf = 136446466;
      v24 = v8;
      v25 = 1026;
      v26 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v10 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v10 = *v10;
      }

      v19 = 136446466;
      v20 = v10;
      v21 = 1026;
      v22 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", &v19, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::clientRegistered(int, const Notification_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 0;
  }
}

uint64_t sub_19B6EB154(char *a1, int a2, int *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  HIDWORD(v26) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_19B65638C((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_19B65638C((v15 + 40), &v26 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              v16 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v36 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v28 = 2082;
                v29 = v18;
                _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v36 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v19 = sub_19B420058();
              if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1EAFE2820;
                (*(*a1 + 160))(buf, a1, a3);
                if (v30 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v31 = 136446466;
                v32 = v20;
                v33 = 2082;
                v34 = v22;
                LODWORD(v26) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v21, 17, "%{public}s; notification %{public}s not found", &v31, v26);
                v24 = v23;
                if (v30 < 0)
                {
                  operator delete(*buf);
                }

                sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_19B6EB528(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_19B41FFEC(v7);
      }
    }
  }
}

uint64_t sub_19B6EB578(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  a3[2] = v8[2];
  a3[3] = v11;
  *a3 = v9;
  a3[1] = v10;
  return 1;
}

void sub_19B6EB720(uint64_t a1, int *a2, _OWORD *a3, int a4, int a5)
{
  v13[6] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_19B656A70(buf, a2, &v12);
      sub_19B656930(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_19B41FFEC(v10);
    }

    if (*(v9 + 56))
    {
      sub_19B6EC2A4(a3);
    }
  }
}

void sub_19B6EBC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19B656DE8(va);
  sub_19B6556D0(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_19B6EBC74(uint64_t a1)
{
  *(&v42[202] + 2) = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v40 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v35 = 136315138;
      v36 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; already shutdown; not listing clients", &v35);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v8 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v9 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = *(a1 + 96);
      *buf = 136315394;
      v40 = v9;
      v41 = 2048;
      v42[0] = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v12 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v12 = *v12;
      }

      v13 = *(a1 + 96);
      v35 = 136315394;
      v36 = v12;
      v37 = 2048;
      v38[0] = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; listing clients, num clients: %zu", &v35, 22);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v16 = *(a1 + 80);
    if (v16 != (a1 + 88))
    {
      v17 = (a1 + 8);
      do
      {
        v18 = v16[5];
        if (v18 != v16 + 6)
        {
          do
          {
            if (qword_1EAFE27F8 != -1)
            {
              dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
            }

            v19 = qword_1EAFE2820;
            if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
            {
              v20 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v20 = *v17;
              }

              v21 = *(v16 + 8);
              v22 = *(v18 + 7);
              *buf = 136315650;
              v40 = v20;
              v41 = 1024;
              LODWORD(v42[0]) = v21;
              WORD2(v42[0]) = 1024;
              *(v42 + 6) = v22;
              _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            v23 = sub_19B420058();
            if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              v24 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v24 = *v17;
              }

              v25 = *(v16 + 8);
              v26 = *(v18 + 7);
              v35 = 136315650;
              v36 = v24;
              v37 = 1024;
              LODWORD(v38[0]) = v25;
              WORD2(v38[0]) = 1024;
              *(v38 + 6) = v26;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; clients, id: %d, notification: %d", &v35, 24, v34);
              v28 = v27;
              sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v27);
              if (v28 != buf)
              {
                free(v28);
              }
            }

            v29 = v18[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v18[2];
                v31 = *v30 == v18;
                v18 = v30;
              }

              while (!v31);
            }

            v18 = v30;
          }

          while (v30 != v16 + 6);
        }

        v32 = v16[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v16[2];
            v31 = *v33 == v16;
            v16 = v33;
          }

          while (!v31);
        }

        v16 = v33;
      }

      while (v33 != (a1 + 88));
    }
  }
}

double sub_19B6EC28C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xBFF0000000000000;
  return result;
}

void sub_19B6EC358(void *a1, int *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v40 = v9;
        v10 = sub_19B6EC8DC(a3, a2);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v39 = v16;
              sub_19B6EC748(a1, &v39, &v40, a3);
              v26 = a1[8];
              if (!v26)
              {
                return;
              }

              v27 = *a2;
              v28 = v5;
              do
              {
                if (*(v26 + 32) >= v27)
                {
                  v28 = v26;
                }

                v26 = *(v26 + 8 * (*(v26 + 32) < v27));
              }

              while (v26);
              if (v28 == v5 || v27 < *(v28 + 32))
              {
                return;
              }

              v40 = v28;
              v30 = *(v28 + 48);
              v11 = (v28 + 48);
              v29 = v30;
              if (v30)
              {
                v31 = v11;
                v32 = v29;
                do
                {
                  if (*(v32 + 28) >= v17)
                  {
                    v31 = v32;
                  }

                  v32 = *(v32 + 8 * (*(v32 + 28) < v17));
                }

                while (v32);
                if (v31 == v11 || v17 < *(v31 + 7))
                {
                  do
                  {
                    v33 = *(v29 + 28);
                    v34 = v17 < v33;
                    v35 = v17 >= v33;
                    if (v34)
                    {
                      v11 = v29;
                    }

                    v29 = *(v29 + 8 * v35);
                  }

                  while (v29);
                }

                else
                {
                  v36 = v31[1];
                  if (v36)
                  {
                    do
                    {
                      v11 = v36;
                      v36 = *v36;
                    }

                    while (v36);
                  }

                  else
                  {
                    do
                    {
                      v11 = v31[2];
                      v37 = *v11 == v31;
                      v31 = v11;
                    }

                    while (!v37);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v39 = a1 + 11;
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              v18 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v46 = v19;
                v47 = 1026;
                v48 = v20;
                _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              v21 = sub_19B420058();
              if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
                }

                v22 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v22 = *v13;
                }

                v23 = *(v11 + 7);
                v41 = 136446466;
                v42 = v22;
                v43 = 1026;
                v44 = v23;
                LODWORD(v38) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; unknown client %{public}d", &v41, v38);
                v25 = v24;
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v25 != buf)
                {
                  free(v25);
                }
              }
            }
          }

          while (v11 != (v40 + 48));
        }
      }
    }
  }
}

_BYTE *sub_19B6EC748(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v13) = *(*a3 + 32);
    v9 = sub_19B6EC8DC(a4, a2);
    v10 = *a3;
    v14 = (*a2 + 32);
    v11 = sub_19B65570C((v10 + 40), v14, &unk_19B7BA202, &v14);
    result = (*(*v7 + 192))(v7, v8, &v13, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return objc_msgSend_onNotification_withData_(*(*a2 + 64), v12, *(*a3 + 32), a4, v13);
    }
  }

  return result;
}

void sub_19B6EC860(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6EC8BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B6EC8DC(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B6EC978(a1, v3, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B6ECD0C(a1, v6, v7);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B6EC978(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (!v4)
  {
    return sub_19B6ED0D8(&v15 + 7, a1, v7);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    }

    v8 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v18 = v4;
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    }

    LODWORD(v16) = 134218498;
    HIDWORD(v16) = v4;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, v15, v16);
  }

  else
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    }

    v12 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v18 = v4;
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    }

    LODWORD(v16) = 134218498;
    HIDWORD(v16) = v4;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, v15, v16);
  }

  v14 = v10;
  sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v10);
  if (v14 != buf)
  {
    free(v14);
  }

  return 0;
}

uint64_t sub_19B6ECD0C(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v9 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      LODWORD(v16) = 134218498;
      HIDWORD(v16) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, 32, v16);
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v13 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      LODWORD(v16) = 134218498;
      HIDWORD(v16) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, 32, v16);
    }

    v15 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v11);
    if (v15 != buf)
    {
      free(v15);
    }

    return 0;
  }

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}

uint64_t sub_19B6ED0D8(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A678))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 64)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
        }

        v19 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
          }
        }

        v20 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h", 244, "operator()");
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

os_log_t sub_19B6ED39C()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1EAFE2960 = result;
  return result;
}

os_log_t sub_19B6ED3CC()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

uint64_t sub_19B6ED4B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B6ED854(uint64_t a1, mach_error_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 134218242;
      v15 = v5;
      v16 = 2080;
      v17 = mach_error_string(a2);
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLHidManager] setReport: id=0x%lx, failed=%s", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v7 = off_1ED71C838;
      mach_error_string(a2);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 1, "[CLHidManager] setReport: id=0x%lx, failed=%s", &v13, 22);
LABEL_24:
      v12 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidDevice setReport:payload:length:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 134218240;
      v15 = v10;
      v16 = 1024;
      LODWORD(v17) = 1;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[CLHidManager] setReport: id=0x%lx, success=%d", buf, 0x12u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLHidManager] setReport: id=0x%lx, success=%d", &v13, 18);
      goto LABEL_24;
    }
  }
}

void sub_19B6EDE50(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6EDEE4;
  v7[3] = &unk_1E7534FF0;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v8 = a3;
  sub_19B420C9C(v6, v7);
}

void *sub_19B6EDEE4(void *result, const char *a2, uint64_t a3)
{
  v3 = *(result + 4);
  if (v3)
  {
    v4 = result;
    v5 = objc_msgSend_clientDevices(*(result + 4), a2, a3);
    result = objc_msgSend_count(v5, v6, v7);
    if (result)
    {
      v8 = v4[5];

      return MEMORY[0x1EEE66B58](v3, sel_updateClientDeviceWithHidDevice_added_, v8);
    }
  }

  return result;
}

uint64_t sub_19B6EE040(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = result;
    objc_msgSend_delegate(*(result + 32), a2, a3);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = objc_msgSend_delegate(v3, v5, v6);
      v8 = *(v4 + 40);

      return MEMORY[0x1EEE66B58](v7, sel_monitorUpdateForDevice_added_, v8);
    }
  }

  return result;
}

void sub_19B6EE2A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    if (objc_msgSend_hidDevice(*(a1 + 40), a2, a3, a4, a5))
    {
      objc_msgSend_delegate(*(a1 + 48), v9, v10);
      if (objc_opt_respondsToSelector())
      {
        if (objc_msgSend_delegateQueue(*(a1 + 48), v11, v12))
        {
          v15 = objc_msgSend_delegateQueue(*(a1 + 48), v13, v14);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_19B6EE374;
          block[3] = &unk_1E7535040;
          block[4] = a6;
          block[5] = v6;
          block[6] = *(a1 + 40);
          dispatch_async(v15, block);
        }
      }
    }
  }
}

void sub_19B6EE374(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  if (objc_msgSend_length(*(a1 + 32), a2, a3) < 0x81)
  {
    v17 = *(a1 + 32);
    v18 = objc_msgSend_length(v17, v4, v5);
    objc_msgSend_getBytes_length_(v17, v19, v36, v18);
    v22 = objc_msgSend_delegate(*(a1 + 40), v20, v21);
    v23 = *(a1 + 48);
    v26 = objc_msgSend_length(*(a1 + 32), v24, v25);
    objc_msgSend_inputReportForDevice_report_length_(v22, v27, v23, v36, v26);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v9 = objc_msgSend_length(*(a1 + 32), v7, v8);
      *buf = 134218240;
      v33 = v9;
      v34 = 2048;
      v35 = 128;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "[CLHidManager], HID report length %lu exceeds %zu byte maximum", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v13 = off_1ED71C838;
      v14 = objc_msgSend_length(*(a1 + 32), v11, v12);
      v28 = 134218240;
      v29 = v14;
      v30 = 2048;
      v31 = 128;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 17, "[CLHidManager], HID report length %lu exceeds %zu byte maximum", &v28, 22);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLHidManager activateClientDevice:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

void sub_19B6EED90(uint64_t a1)
{
  sub_19B780E7C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6F0310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F04F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F06E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6F0974()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

void ***sub_19B6F09A4(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_19B688964(&v3);
    return MEMORY[0x19EAE76F0](v2, 0x20C40960023A9);
  }

  return result;
}

void sub_19B6F1438(uint64_t a1, CLConnectionMessage **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v5 = Weak;
    if (Weak[3])
    {
      v6 = *a2;
      if (v6)
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
        DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v6, v12);
        v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
        v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMDeviceImpactData");
        if (v15)
        {
          if (qword_1EAFE2AF8 != -1)
          {
            dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
          }

          v18 = qword_1EAFE2B00;
          if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240192;
            v39 = objc_msgSend_intValue(v15, v19, v20);
            _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CMDeviceImpactManager] Error occurred while trying to retrieve device impact update: CMErrorDomain Code %{public}d", buf, 8u);
          }

          v21 = sub_19B420058();
          if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2AF8 != -1)
            {
              dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
            }

            v24 = qword_1EAFE2B00;
            v37[0] = 67240192;
            v37[1] = objc_msgSend_intValue(v15, v22, v23);
            LODWORD(v34) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 0, "[CMDeviceImpactManager] Error occurred while trying to retrieve device impact update: CMErrorDomain Code %{public}d", v37, v34);
            v26 = v25;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceImpactManager init]_block_invoke", "CoreLocation: %s\n", v25);
            if (v26 != buf)
            {
LABEL_16:
              free(v26);
            }
          }
        }

        else
        {
          v27 = v17;
          if (v17)
          {
            v29 = v5[3];
            v28 = v5[4];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = sub_19B6F1894;
            v35[3] = &unk_1E7532C30;
            objc_copyWeak(&v36, (a1 + 32));
            v35[4] = v27;
            v35[5] = v29;
            objc_msgSend_addOperationWithBlock_(v28, v30, v35);
            objc_destroyWeak(&v36);
          }

          else
          {
            if (qword_1EAFE2AF8 != -1)
            {
              dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
            }

            v31 = qword_1EAFE2B00;
            if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "[CMDeviceImpactManager] Failed to parse kCLConnectionMessageDeviceImpactUpdate message", buf, 2u);
            }

            v32 = sub_19B420058();
            if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2AF8 != -1)
              {
                dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
              }

              LOWORD(v37[0]) = 0;
              LODWORD(v34) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B00, 17, "[CMDeviceImpactManager] Failed to parse kCLConnectionMessageDeviceImpactUpdate message", v37, v34);
              v26 = v33;
              sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceImpactManager init]_block_invoke", "CoreLocation: %s\n", v33);
              if (v26 != buf)
              {
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }
}

id sub_19B6F1894(uint64_t a1)
{
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_19B6F1D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    sub_19B41FFEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F1D60(uint64_t a1, CLConnectionMessage **a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v12 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMDeviceImpactArray");
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMDeviceImpactManager] query completed, impacts = %{public}@", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || (*(v14 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }

      v17 = qword_1EAFE2B00;
      v28 = 138543362;
      v29 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMDeviceImpactArray");
      LODWORD(v27) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 0, "[CMDeviceImpactManager] query completed, impacts = %{public}@", &v28, v27);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceImpactManager queryDeviceImpactsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *(a1 + 32);
    v21 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMDeviceImpactArray");
    return (*(v20 + 16))(v20, v21);
  }

  else
  {
    if (qword_1EAFE2AF8 != -1)
    {
      dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
    }

    v23 = qword_1EAFE2B00;
    if (os_log_type_enabled(qword_1EAFE2B00, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CMDeviceImpactManager] query failed", buf, 2u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AF8 != -1)
      {
        dispatch_once(&qword_1EAFE2AF8, &unk_1F0E29C80);
      }

      LOWORD(v28) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B00, 16, "[CMDeviceImpactManager] query failed", &v28, 2);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceImpactManager queryDeviceImpactsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

id sub_19B6F249C(uint64_t a1, const char *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 24);
  if (!v3)
  {
    v8 = @"kCLConnectionMessageSubscribeKey";
    v9[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
    sub_19B5D379C();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 24) = v4;
  result = v5[1];
  *(*v5 + 4) = result;
  return result;
}

void sub_19B6F25C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F28A8(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = @"kCLConnectionMessageSubscribeKey";
    v3[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
    sub_19B5D379C();
  }
}

void sub_19B6F29C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6F2D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    sub_19B41FFEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F2DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_19B6F30A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"TimeOffset";
  v4 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(a1 + 48));
  v8[1] = @"PeakAcceleration";
  v9[0] = v4;
  v9[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, *(a1 + 56));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, v8, 2);
  sub_19B67D694();
}

void sub_19B6F31F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F321C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

os_log_t sub_19B6F3240()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceImpact");
  qword_1EAFE2B00 = result;
  return result;
}

void *sub_19B6F32E4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6F3340((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6F3340(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6F3398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6F3630(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E342D8;
  objc_msgSend_invalidate(*(a1 + 48), a2, a3);

  sub_19B6F37F4(a1 + 80, *(a1 + 88));
  sub_19B6F3854(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_19B6F36B4@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%d", *a1);
  return sub_19B428B50(a2, __str);
}

void sub_19B6F3734(uint64_t a1, const char *a2)
{
  sub_19B6F38EC(a1, a2);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6F376C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  result = sub_19B6EC8DC(a3, a2);
  if (result)
  {
    v6 = v3;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

os_log_t sub_19B6F37BC()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

void sub_19B6F37F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6F37F4(a1, *a2);
    sub_19B6F37F4(a1, a2[1]);
    sub_19B654634((a2 + 5), a2[6]);

    operator delete(a2);
  }
}