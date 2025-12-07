@interface CLKeyboardMotionAdapter
- (void)eventUpdateForDevice:(id)device event:(id)event;
- (void)inputReportForDevice:(id)device report:(char *)report length:(int64_t)length;
- (void)monitorUpdateForDevice:(id)device added:(BOOL)added;
- (void)smartCoverStateDidChange:(int64_t)change;
@end

@implementation CLKeyboardMotionAdapter

- (void)inputReportForDevice:(id)device report:(char *)report length:(int64_t)length
{
  v45 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v8 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 48) == device)
  {
    if (length == 30)
    {
      v12 = *(report + 7);
      v13 = report[17];
      v14 = *(report + 26);
      *buf = *(report + 9);
      *&buf[20] = v12;
      v44 = v13;
      *&buf[8] = *(report + 18);
      *&buf[16] = v14;
      sub_19B41E070(*buf);
      v15 = buf;
      v16 = v8;
      v17 = 0;
      v18 = 23;
LABEL_17:
      sub_19B41DF08(v16, v17, v15, v18);
      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v21 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      *&buf[4] = length;
      *&buf[12] = 2048;
      *&buf[14] = 30;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Bad motion report input %ld, expected %lu", buf, 0x16u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
LABEL_35:
      LODWORD(v40) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "Bad motion report input %ld, expected %lu", &v41, v40);
LABEL_90:
      v38 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLKeyboardMotionNotifier::onIoHidReportBounce(CLHidDevice *, uint8_t *, CFIndex)", "CoreLocation: %s\n", v11);
      if (v38 != buf)
      {
        free(v38);
      }

      return;
    }

LABEL_105:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    goto LABEL_35;
  }

  if (*(qword_1ED71D2A8 + 40) == device)
  {
    if (!length)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v23 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "Empty keyboard device report input", buf, 2u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
        }

        LOWORD(v41) = 0;
        LODWORD(v40) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "Empty keyboard device report input", &v41, v40, v41, v42);
        goto LABEL_90;
      }

      return;
    }

    v19 = *report;
    if (v19 == 196)
    {
      if (length == 3)
      {
        v25 = report[1] & 2;
        if (*(qword_1ED71D2A8 + 88) != v25 >> 1)
        {
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
          }

          v26 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
          {
            if (v25)
            {
              v27 = "entered";
            }

            else
            {
              v27 = "dismissed";
            }

            *buf = 136315138;
            *&buf[4] = v27;
            _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "Accessory Hall Effect sensor detected tablet mode %s", buf, 0xCu);
          }

          v28 = sub_19B420058();
          if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
            }

            if (v25)
            {
              v29 = "entered";
            }

            else
            {
              v29 = "dismissed";
            }

            LODWORD(v41) = 136315138;
            *(&v41 + 4) = v29;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "Accessory Hall Effect sensor detected tablet mode %s", &v41);
            v31 = v30;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::onIoHidReportBounce(CLHidDevice *, uint8_t *, CFIndex)", "CoreLocation: %s\n", v30);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          if (v25)
          {
            v32 = 3;
          }

          else
          {
            v32 = 4;
          }

          LOBYTE(v41) = v32;
          v33 = mach_absolute_time();
          sub_19B41E070(v33);
          sub_19B41DF08(v8, 4, &v41, 1);
        }

        *(v8 + 88) = v25 >> 1;
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
        }

        v36 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218240;
          *&buf[4] = length;
          *&buf[12] = 2048;
          *&buf[14] = 3;
          _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "Bad motion report input state %ld, expected %lu", buf, 0x16u);
        }

        v37 = sub_19B420058();
        if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
          }

          LODWORD(v40) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "Bad motion report input state %ld, expected %lu", &v41, v40);
          goto LABEL_90;
        }
      }

      return;
    }

    if (v19 != 1)
    {
      return;
    }

    if (length == 30)
    {
      *buf = *report;
      *&buf[8] = *(report + 4);
      v20 = 1;
      if (buf[0] == 1 && !buf[1] && !buf[2])
      {
        if (*&buf[3] | *&buf[7])
        {
          v20 = 1;
        }

        else
        {
          v20 = buf[9] != 0;
        }
      }

      HIBYTE(v40) = v20;
      v39 = mach_absolute_time();
      sub_19B41E070(v39);
      v15 = &v40 + 7;
      v16 = v8;
      v17 = 1;
      v18 = 1;
      goto LABEL_17;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v34 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      *&buf[4] = length;
      *&buf[12] = 2048;
      *&buf[14] = 30;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Bad motion report input %ld, expected %lu", buf, 0x16u);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_105;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
  }

  v9 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "received bad hid report", buf, 2u);
  }

  v10 = sub_19B420058();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    LOWORD(v41) = 0;
    LODWORD(v40) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "received bad hid report", &v41, v40, v41, v42);
    goto LABEL_90;
  }
}

- (void)monitorUpdateForDevice:(id)device added:(BOOL)added
{
  addedCopy = added;
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v6 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 40) == device)
  {
    v14 = addedCopy;
    v10 = mach_absolute_time();
    sub_19B41E070(v10);
    sub_19B41DF08(v6, 2, &v14, 1);
    *(v6 + 91) = v14;
    if (addedCopy)
    {
      v11 = sub_19B677F14();
      if (*(v6 + 89) != v11)
      {
        v13 = v11;
        v15[0] = -60;
        v15[1] = v11;
        if (objc_msgSend_setReport_payload_length_(*(v6 + 40), v12, 196, v15, 2))
        {
          *(v6 + 89) = v13;
        }
      }
    }

    else
    {
      *(v6 + 89) = 0;
    }
  }

  else if (*(qword_1ED71D2A8 + 48) == device)
  {
    if (addedCopy)
    {
      v7 = sub_19B677C18();
      if (*(v6 + 90) != v7)
      {
        v9 = v7;
        v16[0] = 105;
        v16[1] = v7;
        if (objc_msgSend_setReport_payload_length_(*(v6 + 48), v8, 105, v16, 2))
        {
          *(v6 + 90) = v9;
        }
      }
    }

    else
    {
      *(qword_1ED71D2A8 + 90) = 0;
    }
  }
}

- (void)eventUpdateForDevice:(id)device event:(id)event
{
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v4 = qword_1ED71D2A8;
  if (IOHIDEventConformsTo())
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v6 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          CFArrayGetValueAtIndex(v6, i);
          if (IOHIDEventGetType() == 11)
          {
            v10 = IOHIDEventGetIntegerValue() == 1;
            if (*(v4 + 72) != v10)
            {
              v11 = v10;
              sub_19B4455DC(v4, 3, &v11, 1);
              *(v4 + 72) = v10;
            }
          }
        }
      }
    }
  }
}

- (void)smartCoverStateDidChange:(int64_t)change
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v4 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 91) == 1)
  {
    if (change == 1)
    {
      v5 = 2;
    }

    else
    {
      if (change != 3)
      {
        return;
      }

      v5 = 1;
    }

    HIBYTE(v12) = v5;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = off_1EE5DEA18(change);
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "iPad Hall Effect sensor detected the cover was, %@", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v8 = qword_1ED71C7C8;
      v13 = 138412290;
      v14 = off_1EE5DEA18(change);
      LODWORD(v12) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 1, "iPad Hall Effect sensor detected the cover was, %@", &v13, v12);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::onSmartCoverOpened(SBSSmartCoverState)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = mach_absolute_time();
    sub_19B41E070(v11);
    sub_19B41DF08(v4, 4, &v12 + 7, 1);
  }
}

@end