void sub_1000ECF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000ECF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 25) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
  result = *(a1 + 32);
  if ((result[26] & 1) == 0)
  {
    if (v5)
    {
      if (dword_100B50698 <= 30)
      {
        if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
        {
          sub_1007FF230(result, a2, a3);
        }
      }

      v7 = *(*(a1 + 32) + 40);

      return [v7 trigger];
    }

    else
    {
      v8 = *(a1 + 40);

      return [result _updateExtensions:v8];
    }
  }

  return result;
}

void *sub_1000EDBF4(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(result[5] + 32);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1007FF394();
    }
  }

  if (v2 == v3)
  {
    *(v1[5] + 48) = 1;
    v4 = *(v1[5] + 56);

    return [v4 setSystemFlags:1 mask:1];
  }

  return result;
}

void *sub_1000EDD3C(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(result[5] + 32);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1007FF3E4();
    }
  }

  if (v2 == v3)
  {
    *(v1[5] + 48) = 0;
    v4 = *(v1[5] + 56);

    return [v4 setSystemFlags:0 mask:1];
  }

  return result;
}

id sub_1000EDE80(uint64_t a1)
{
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF434(a1);
  }

  v2 = *(a1 + 40);
  v3 = v2[4];
  if (*(a1 + 32) == v3)
  {
    v2[4] = 0;

    *(*(a1 + 40) + 48) = 0;
    [*(*(a1 + 40) + 56) setSystemFlags:0 mask:1];
    v2 = *(a1 + 40);
  }

  return [v2 _triggerPendingExtension];
}

void sub_1000EE440(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 device];
  if (v7 && [v6 present] && !objc_msgSend(v6, "uiTicks"))
  {
    v14 = @"unknown";
    v8 = (a1 + 32);
    if ([*(*(a1 + 32) + 56) remoteAlertAllowedAndReturnReason:&v14 extension:?])
    {
      v9 = *v8;
      v10 = *(*v8 + 56);
      v13 = 0;
      v11 = [v10 remoteAlertStartWithCBExtension:v9 device:v7 error:&v13];
      v12 = v13;
      if (v11)
      {
        [v6 setUiTicks:mach_absolute_time()];
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *(*(a1 + 32) + 12) = 1;
        *a4 = 1;
      }

      else
      {
        sub_1007FF61C(a1 + 32, v12);
      }
    }

    else
    {
      if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50698, "[CBExtension triggerIfPending]_block_invoke", 30, "CBExtension: UI start not allowed: %@, %@, %@", *(*v8 + 64), v14, v7);
      }

      *a4 = 1;
    }
  }
}

void *sub_1000EE8DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_1000EE8F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

void sub_1000EE914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 == *(v5 + 32))
  {
    if (v3)
    {
      v12 = v3;
      if (dword_100B50698 <= 90)
      {
        if (dword_100B50698 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v5 = *(a1 + 40);
        }

        v7 = *(v5 + 64);
        v8 = CUPrintNSError();
        LogPrintF_safe(&dword_100B50698, "[CBExtension updateWithXPCDiscoveryInfo:]_block_invoke_3", 90, "### CBExtension: discovery start failed: %@, %@", v7, v8);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;

      goto LABEL_11;
    }

    if (dword_100B50698 > 30)
    {
      goto LABEL_12;
    }

    v12 = 0;
    if (dword_100B50698 != -1)
    {
LABEL_8:
      LogPrintF_safe(&dword_100B50698, "[CBExtension updateWithXPCDiscoveryInfo:]_block_invoke_3", 30, "CBExtension: discovery started: %@, %@", *(v5 + 64), v6);
LABEL_11:
      v4 = v12;
      goto LABEL_12;
    }

    v11 = _LogCategory_Initialize();
    v4 = 0;
    if (v11)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      goto LABEL_8;
    }
  }

LABEL_12:
}

void sub_1000EEC30(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100B50698 <= 90)
  {
    v5 = v2;
    if (dword_100B50698 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1007FF77C(v3);
      v3 = v5;
    }
  }
}

void sub_1000EECA8(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = [[NSString alloc] initWithFormat:@"%@.%@", *(a1 + 32), v5];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  if (v7)
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v6];

    if (v8)
    {
      if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        sub_1007FF7D8(v6);
      }
    }

    else
    {
      v9 = objc_alloc_init(CBExtension);
      [(CBExtension *)v9 setBundleID:*(a1 + 32)];
      [(CBExtension *)v9 setDiscoveryInfo:v14];
      [(CBExtension *)v9 setXpcDiscoveryInfo:v7];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      if (!v10)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v10 setObject:v9 forKeyedSubscript:v6];
    }
  }

  else if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF818(v14, v6);
  }
}

void sub_1000EF110(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1000EF15C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&obj, "%@\n", v7);
  objc_storeStrong((v6 + 40), obj);

  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 48) >= 11 && *(*(*(a1 + 40) + 8) + 24) >= 0x32uLL)
  {
    *a4 = 1;
  }
}

void sub_1000EF614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 64);
    *(a1 + 64) = v5;

    v4 = *(a1 + 64);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 72) & 1) == 0)
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B507C8, "void CBStackDeviceMonitorCPP::addMonitor(CBStackDeviceMonitorBTStack * _Nonnull __strong)", 30, "Add listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_1007FF9F8();
    }

    sub_1005143D8(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_1007FFA0C();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_1007FFA20();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 16);
    if (qword_100B50900 != -1)
    {
      sub_1007FFA34();
    }

    sub_1000F125C(qword_100B508F8 + 40, a1 + 24);
    if (qword_100B508B0 != -1)
    {
      sub_1007FFA48();
    }

    sub_100749B80(off_100B508A8, a1 + 32, 0);
    if (qword_100B508D0 != -1)
    {
      sub_1007FFA5C();
    }

    sub_1007986D0(off_100B508C8, a1 + 40);
    if (qword_100B50910 != -1)
    {
      sub_1007FFA70();
    }

    sub_1005BB5D4(off_100B50908, a1 + 48);
    if (qword_100B50920 != -1)
    {
      sub_1007FFA84();
    }

    sub_1000F14BC(qword_100B50918 + 392, a1 + 56);
    *(a1 + 72) = 1;
  }
}

id sub_1000EF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B507C8 <= 30)
  {
    if (dword_100B507C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1007FFA98(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 updateDevices];
}

id sub_1000EF8BC(uint64_t a1)
{
  if (dword_100B507C8 <= 20 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFAB4();
  }

  v2 = *(*(a1 + 32) + 32);

  return [v2 trigger];
}

void sub_1000EF928(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 48) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 26) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 48), obj);
  }
}

void sub_1000EFAFC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 64) removeObject:?];
  if (*(a1 + 72) == 1 && ![*(a1 + 64) count])
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B507C8, "void CBStackDeviceMonitorCPP::removeMonitor(CBStackDeviceMonitorBTStack * _Nonnull __strong)", 30, "Remove listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_1007FF9F8();
    }

    sub_100514508(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_1007FFA0C();
    }

    sub_10007A3F0(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_1007FFA20();
    }

    sub_10007A3F0(off_100B50898 + 72, a1 + 16);
    if (qword_100B50900 != -1)
    {
      sub_1007FFA34();
    }

    sub_10007A3F0(qword_100B508F8 + 40, a1 + 24);
    if (qword_100B50920 != -1)
    {
      sub_1007FFA84();
    }

    sub_10007A3F0(qword_100B50918 + 392, a1 + 56);
    *(a1 + 72) = 0;
  }
}

void sub_1000EFF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFFAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (!v2)
  {
    v2 = *(a2 + 16);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void sub_1000F04F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (**a11)(void))
{
  a11[2]();

  _Unwind_Resume(a1);
}

void sub_1000F0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B507C8 <= 30)
  {
    if (dword_100B507C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1007FFBDC(a1, a2, a3);
    }
  }

  sub_1000DEF24(v3, a2);
}

void sub_1000F06C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_100B507C8 <= 30)
  {
    v4 = a3;
    if (dword_100B507C8 != -1 || _LogCategory_Initialize())
    {
      sub_1007FFBF8(v4);
    }
  }

  sub_1000DEF24(a1, a2);
}

void sub_1000F0738(uint64_t a1, uint64_t a2, int a3)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    LogPrintF_safe(&dword_100B507C8, "virtual void CBStackDeviceMonitorCPP::aclConnected(BT::Device * _Nonnull, BTResult)", 30, "ACL connected: %s, result %d", v6, a3);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1000DEF24(a1, a2);
}

void sub_1000F07FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F0820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 13)
  {
    if (dword_100B507C8 <= 30)
    {
      v5 = a3;
      if (dword_100B507C8 != -1 || _LogCategory_Initialize())
      {
        sub_1007FFC3C(v5);
      }
    }

    sub_1000DEF24(a1, a2);
  }
}

void sub_1000F08A4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v4 = [v5 UUIDString];
    LogPrintF_safe(&dword_100B507C8, "virtual void CBStackDeviceMonitorCPP::gapNameUpdated(NSUUID * _Nonnull __strong)", 30, "GAP named updated: Device %@", v4);
  }

  sub_1000DEF24(a1, v3);
}

void sub_1000F0980(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v6 = [v7 UUIDString];
    LogPrintF_safe(&dword_100B507C8, "virtual void CBStackDeviceMonitorCPP::leDeviceInfoChanged(NSUUID * _Nonnull __strong, BT::LE_DEVICE_INFO_CHANGED_TYPE)", 30, "leDeviceInfoChanged (0x%04X): Device %@", a3, v6);
  }

  sub_1000DEF24(a1, v5);
}

void sub_1000F0A68(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v4 = [v5 UUIDString];
    LogPrintF_safe(&dword_100B507C8, "virtual void CBStackDeviceMonitorCPP::gattDeviceInitCompleted(NSUUID * _Nonnull __strong)", 30, "GATT device init completed: Device %@", v4);
  }

  sub_1000DEF24(a1, v3);
}

void sub_1000F0B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B507C8 <= 30)
  {
    if (dword_100B507C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1007FFC7C(a1, a2, a3);
    }
  }

  sub_1000DEF24(v3, a2);
}

void sub_1000F0BB4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "virtual void CBStackDeviceMonitorCPP::streamStateChanged(BTAddress, BOOL, AudioMediaType, BOOL)", 30, "Stream state changed : Media type %d , Active: %d", a4, a3);
  }

  sub_1000DEF24(a1, a2);
}

void sub_1000F0C8C(uint64_t a1)
{

  operator delete();
}

void sub_1000F0D9C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F0E28((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F0E28(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F0FFC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F1088((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F1088(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F1224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F125C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F12E8((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F12E8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F1484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F14BC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F1548((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F1548(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F16E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F21E0(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_1007FFE44();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 32);

  return sub_1003401D0(v2, v3);
}

uint64_t sub_1000F292C(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_1000F2938(void **a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
    }
  }
}

void sub_1000F2998(usbcDeviceManager **a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UsbcHub initialize", v5, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(usbcDeviceManager);
    v4 = *a1;
    *a1 = v3;
  }
}

uint64_t sub_1000F2A34(id *a1, _WORD *a2)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = [*a1 _getBTAddressWithAudioStreaming];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (qword_100B508F0 != -1)
  {
    sub_1007FFCAC();
  }

  v5 = sub_1000504C8(off_100B508E8, v4, 0);
  *a2 = 0;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "configureUnifiedUSBCJBL audiostarted on %llu returning JBL %d", &v8, 0x12u);
  }

  return v5;
}

void sub_1000F2B48(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  if (*a1)
  {
    v3 = *a1;
    v4 = [v3 _getDeviceWithAudioStreaming];

    if (v4)
    {
      v5 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134218496;
        v7 = [v4 btAddress];
        v8 = 1024;
        v9 = [v4 audioStarted];
        v10 = 1024;
        v11 = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteRegisterBTTTimeSync calling usbc sensor data module for btAddress: %llu, audio %d, enable %d", &v6, 0x18u);
      }

      if (a2)
      {
        [v4 usbcRequestSensorDataOnDevice];
      }

      else
      {
        [v4 usbcStopSensorDataOnDevice];
      }
    }
  }
}

void sub_1000F2C8C(id *a1)
{
  if (*a1)
  {
    v1 = [*a1 _getDeviceWithAudioStreaming];
    if (v1)
    {
      [v1 setAudioStarted:0];
      [v1 usbcStopSensorDataOnDevice];
      notify_post("com.apple.bluetooth.AdaptiveJitterBufferChanged");
    }
  }
}

void sub_1000F2D24(id *a1, unsigned __int8 *a2)
{
  if (*a1)
  {
    v4 = [*a1 _getDeviceWithAudioStreaming];
    if (a2)
    {
      if (v4)
      {
        v12 = v4;
        v5 = a2[128];
        v6 = a2[129];
        v7 = a2[130];
        v8 = a2[131];
        v9 = a2[132];
        v10 = a2[133];
        v11 = ((v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10) == [*a1 _getBTAddressWithAudioStreaming];
        v4 = v12;
        if (v11)
        {
          [v12 configureUSBCSpatialOnDevice:0];
          v4 = v12;
        }
      }
    }
  }
}

uint64_t sub_1000F2E20(id *a1, unsigned __int8 *a2)
{
  if (!a2 || !*a1)
  {
    return 0;
  }

  v2 = [*a1 _getDeviceFromAddress:(a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]];
  v3 = v2;
  if (!v2 || ![v2 audioStarted])
  {

    return 0;
  }

  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Streaming over usbc wired, returning from Dynamic Latency", v6, 2u);
  }

  return 1;
}

void sub_1000F2F08(id *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *a1;
  if (v6 && v5)
  {
    if ((a3 - 1) > 1u)
    {
      [v5 _removeDeviceWithAddress:v6];
    }

    else
    {
      [v5 _addDeviceWithAddress:v6 status:a3];
    }
  }
}

void sub_1000F335C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&obj, "%@\n", v4);
  objc_storeStrong((v3 + 40), obj);
}

uint64_t sub_1000F3D20(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"Charging"])
  {
    if ([v1 caseInsensitiveCompare:@"Discharging"])
    {
      if ([v1 caseInsensitiveCompare:@"FullyCharged"])
      {
        if ([v1 caseInsensitiveCompare:@"OBC"])
        {
          if ([v1 caseInsensitiveCompare:@"DEOC"])
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 4;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void *sub_1000F45E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[1])
  {
    return [result _accessoryDiscoveryFoundDevice:a2];
  }

  return result;
}

void sub_1000F45FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(a1 + 32) == *(*(a1 + 40) + 8))
  {
    v6 = v3;
    if (dword_100B50958 <= 90 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100800F80(v6);
    }

    [*(a1 + 32) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;

    v3 = v6;
  }
}

void sub_1000F46AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v9 = v3;
    v5 = [v3 deviceFlags];
    v4 = v9;
    if ((v5 & 0x4000) != 0 || (v6 = [v9 deviceFlags], v4 = v9, (v6 & 2) != 0))
    {
      v7 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [v4 productID]);
      v8 = [v7 flags];

      if ((v8 & 0x100000) != 0)
      {
        [*(a1 + 40) _update];
      }

      [*(a1 + 40) _connectionMonitorFoundDevice:v9];
      v4 = v9;
    }
  }
}

void sub_1000F4774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v9 = v3;
    v5 = [v3 deviceFlags];
    v4 = v9;
    if ((v5 & 0x4000) == 0)
    {
      v6 = [v9 deviceFlags];
      v4 = v9;
      if ((v6 & 2) == 0)
      {
        v7 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [v9 productID]);
        v8 = [v7 flags];

        v4 = v9;
        if ((v8 & 0x100000) != 0)
        {
          [*(a1 + 40) _update];
          v4 = v9;
        }
      }
    }
  }
}

void sub_1000F4834(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v6 = v3;
    if (dword_100B50958 <= 90 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100801014(v6);
    }

    [*(a1 + 32) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v3 = v6;
  }
}

void sub_1000F4BE0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    if (dword_100B50958 <= 90 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_1008013DC(v8, a1);
    }

    [*(a1 + 40) invalidate];
    [*(*(a1 + 48) + 32) setObject:0 forKeyedSubscript:*(a1 + 56)];
  }

  else
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_10080144C(a1);
    }

    v3 = [*(a1 + 64) mutableCopy];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v6 = v5;

    v7 = [NSNumber numberWithDouble:*(a1 + 72)];
    [v6 setObject:v7 forKeyedSubscript:*(a1 + 56)];

    CFPrefs_SetValue();
    [*(a1 + 48) _connectionMonitorUpdate];
  }
}

void *sub_1000F4D34(void *result, uint64_t a2, uint64_t a3)
{
  if (result[4] == *(result[5] + 72))
  {
    v4 = result;
    if (dword_100B50958 <= 30)
    {
      if (dword_100B50958 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_100801578(result, a2, a3);
      }
    }

    v5 = v4[5];

    return [v5 _connectionMonitorUpdate];
  }

  return result;
}

id sub_1000F5470(uint64_t a1)
{
  if (qword_100B55288 != -1)
  {
    sub_100802AC0();
  }

  v2 = qword_100B55270;

  return v2;
}

void sub_1000F54B4(id a1, NSString *a2, BOOL *a3)
{
  v3 = a2;
  v4 = sub_1000F5470(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }
}

void sub_1000F69A0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&obj, "%@\n", v7);
  objc_storeStrong((v6 + 40), obj);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24) + 1;
  *(v8 + 24) = v9;
  if (v9 >= 0x14 && *(a1 + 52) >= 6)
  {
    *a4 = 1;
  }
}

void sub_1000F6A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&obj, "%@\n", v3);
  objc_storeStrong((v2 + 40), obj);
}

void *sub_1000F6B30(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = result;
    *(v4 + 8) = 1;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_100802AD4(result, a2, a3);
      }
    }

    v6 = v5[4];

    return [v6 _activate];
  }

  return result;
}

void sub_1000F74E8(id a1, int a2)
{
  if (dword_100B509C8 <= 90)
  {
    v2 = *&a2;
    if (dword_100B509C8 != -1 || _LogCategory_Initialize())
    {
      sub_100802B7C(v2);
    }
  }
}

void sub_1000F7558(id a1, int a2)
{
  if (dword_100B509C8 <= 90)
  {
    v2 = *&a2;
    if (dword_100B509C8 != -1 || _LogCategory_Initialize())
    {
      sub_100802BD8(v2);
    }
  }
}

id sub_1000F75B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100802C34(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

id sub_1000F761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100802C50(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 236) = 0;
  v4 = *(v3 + 32);

  return [v4 scheduleDiscoveryUpdateImmediate:1];
}

NSObject *sub_1000F7690(uint64_t a1)
{
  result = *(a1 + 32);
  if (result == *(*(a1 + 40) + 144))
  {
    data = dispatch_source_get_data(result);
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802C6C(data);
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 168);
    if (!v5)
    {
      LOBYTE(v5) = data;
    }

    *(v4 + 140) = v5 & 6;
    v6 = *(a1 + 40);

    return [v6 _updateMemoryPressure];
  }

  return result;
}

id sub_1000F7750(uint64_t a1)
{
  *(*(a1 + 32) + 236) = [*(a1 + 40) screenOn];
  v2 = *(a1 + 32);

  return [v2 _update];
}

uint64_t sub_1000F7794(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 156);
  state64 = 0;
  result = notify_get_state(v2, &state64);
  v4 = state64;
  v5 = state64 != 0;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100802CD0(v1, v4 != 0);
    }
  }

  if (*(*v1 + 152) != v5)
  {
    *(*v1 + 152) = v5;
    return [*v1 scheduleSpatialUpdateImmediate:0];
  }

  return result;
}

uint64_t sub_1000F7854(uint64_t a1)
{
  [*(a1 + 32) descriptionInternalDebug];
  v2 = *(a1 + 32);

  return _CUStateDumpWithObject("CBDaemon", v2, &dword_100B509C8);
}

id sub_1000F78A0(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 81) = 20;
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100802D38(v1);
  }

  v2 = *v1;

  return [v2 _update];
}

id sub_1000F798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100802DCC(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _invalidate];
}

_BYTE *sub_1000F8FA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[361] == 1)
  {
    return [result _update];
  }

  return result;
}

void sub_1000F90FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F9118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1008034D4(a1, a2, a3);
    }
  }

  WeakRetained = objc_loadWeakRetained((v3 + 32));
  [WeakRetained _scheduleUserControllerInvalidation:1];
}

void sub_1000F99F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F9A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (!v8)
  {
    if (v5)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000F9AE0;
      v9[3] = &unk_100AE0068;
      objc_copyWeak(&v10, (a1 + 32));
      [v5 getCloudPairedDevicesWithCompletionHandler:v9];
      objc_destroyWeak(&v10);
    }

    else
    {
      sub_100803908(0, v6, v7);
    }
  }
}

void sub_1000F9AE0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _userControllerCloudUpdateWithDevices:v9];

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 _userControllerUploadLocalControllerInfo];
LABEL_3:

    goto LABEL_4;
  }

  if ((sub_100803968(v5) & 1) == 0)
  {
    v8 = v10;
    goto LABEL_3;
  }

LABEL_4:
}

void *sub_1000F9C40(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[55])
  {
    [result _bleAdvertiserAddressChanged:0];
    v4 = *(a1 + 40);

    return [v4 _updateSelfAuthTag];
  }

  return result;
}

void *sub_1000F9C98(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[3])
  {
    return [result _update];
  }

  return result;
}

void sub_1000F9CB0(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[2].i64[0];
  if (v5 != *(a1[2].i64[1] + 24))
  {
    goto LABEL_19;
  }

  if (v3)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803AC4(v4);
    }

    [a1[2].i64[0] invalidate];
    v6 = a1[2].i64[1];
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    goto LABEL_19;
  }

  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v5 = a1[2].i64[0];
    }

    if (a1[3].i8[0])
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _bleAdvertiserEnsureStarted]_block_invoke_2", 30, "BLE advertiser activated: %@, restart %s", v5, v8);
  }

LABEL_14:
  if (a1[3].i8[0] == 1)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803B20(a1[2].i64);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1[2].i64[1] + 88));
    v10 = a1[2].i64[1];
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;
    v12 = v9;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000F9ED0;
    handler[3] = &unk_100AE00B8;
    handler[4] = v12;
    v14 = a1[2];
    v13 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    dispatch_source_set_event_handler(v12, handler);
    CUDispatchTimerSet();
    dispatch_activate(v12);
  }

LABEL_19:
}

void *sub_1000F9ED0(void *result)
{
  if (result[4] == *(result[5] + 48))
  {
    v12 = v2;
    v13 = v1;
    v5 = result;
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803B64(v5);
    }

    v6 = *(v5[5] + 48);
    if (v6)
    {
      v7 = v6;
      dispatch_source_cancel(v7);
      v8 = v5[5];
      v9 = *(v8 + 48);
      *(v8 + 48) = 0;
    }

    if ([v5[5] supportsNCSecondaryAdvertisingInstance])
    {
      v10 = 6;
    }

    else
    {
      v10 = 2;
    }

    v11 = *(v5[5] + 440);

    return [v11 forceNonConnectableAddressReadAndUpdate:v10];
  }

  return result;
}

id sub_1000FA154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100803D8C(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 40);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = *(v3 + 32);

  return [v8 scheduleSpatialUpdateImmediate:0];
}

void sub_1000FA268(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (*(a1 + 32) == *(v9 + 264))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(v9 + 560);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 activatedController];
          v17 = [v16 internalFlags];

          if ((v17 & 0x2000) != 0)
          {
            [v15 xpcReceivedAudioAccessoryEventType:a2 messageData:v7 sourceDevice:v8];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

void sub_1000FA3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 264))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(v4 + 560);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 activatedController];
          v12 = [v11 internalFlags];

          if ((v12 & 0x2000) != 0)
          {
            [v10 xpcReceivedAudioAccessoryDeviceInfoChange:v3];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

void *sub_1000FA50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[62])
  {
    return [result _stackBLEScannerDevicesBuffered:a2];
  }

  return result;
}

void *sub_1000FABE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[37])
  {
    return [result _stackClassicScannerDeviceFound:a2];
  }

  return result;
}

void *sub_1000FAC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[37])
  {
    return [result _stackClassicScannerDeviceLost:a2];
  }

  return result;
}

void *sub_1000FAE80(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[63])
  {
    return [result _updateUserControllerCloudDevices];
  }

  return result;
}

void *sub_1000FAE98(void *result)
{
  v1 = result[5];
  if (result[4] == *(v1 + 504))
  {
    v2 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(v1 + 560);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * v7) activatedController];
          v9 = [v8 discoverableStateChangedHandler];

          if (v9)
          {
            v9[2](v9);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    return [v2[5] scheduleUpdateImmediate:0];
  }

  return result;
}

void *sub_1000FAFDC(void *result)
{
  v1 = result[5];
  if (result[4] == *(v1 + 504))
  {
    v2 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(v1 + 560);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * v7) activatedController];
          v9 = [v8 inquiryStateChangedHandler];

          if (v9)
          {
            v9[2](v9);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    return [v2[5] scheduleUpdateImmediate:0];
  }

  return result;
}

void *sub_1000FB120(void *result)
{
  v1 = result[5];
  if (result[4] == *(v1 + 504))
  {
    v2 = result;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(v1 + 560);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 activatedController];
          v10 = [v9 bluetoothStateChangedHandler];

          if (v10)
          {
            v10[2](v10);
          }

          v11 = [v8 activatedDiscovery];
          v12 = [v11 bluetoothStateChangedHandler];

          if (v12)
          {
            v12[2](v12);
          }

          v13 = [v8 activatedSpatialInteractionSession];
          v14 = [v13 bluetoothStateChangedHandler];

          if (v14)
          {
            v14[2](v14);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    return [v2[5] scheduleUpdateImmediate:0];
  }

  return result;
}

void sub_1000FB2E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 40);
  if (*(a1 + 32) == *(v12 + 504))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = *(v12 + 560);
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v20 + 1) + 8 * v17) activatedController];
          v19 = [v18 relayMessageHandler];

          if (v19)
          {
            (v19)[2](v19, v9, v10, a4, v11);
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }
}

void *sub_1000FB4E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[38])
  {
    return [result _stackDeviceMonitorDeviceLost:a2];
  }

  return result;
}

void *sub_1000FB6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[39])
  {
    return [result _stackPowerSourceMonitorDeviceFound:a2];
  }

  return result;
}

void *sub_1000FB6CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[39])
  {
    return [result _stackPowerSourceMonitorDeviceLost:a2];
  }

  return result;
}

void sub_1000FB8A8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FB944;
  v3[3] = &unk_100AE01A8;
  v5 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 52);
  [v2 _performUserControllerActionWithCompletion:v3];
}

void sub_1000FB944(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    sub_100803FDC();
  }

  else if (v6)
  {
    [v6 recordEventWithDeviceIdentifier:*(a1 + 32) initiator:*(a1 + 44) starting:*(a1 + 45) useCase:*(a1 + 40)];
  }

  else
  {
    sub_100804080();
  }
}

const char *sub_1000FB9D0(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

id sub_1000FC4E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FC564;
  v3[3] = &unk_100AE01F0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  return [v1 _performUserControllerActionWithCompletion:v3];
}

void sub_1000FC564(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    sub_100804100();
  }

  else if (v6)
  {
    [v6 recordEventWithStarting:*(a1 + 36) useCase:*(a1 + 32)];
  }

  else
  {
    sub_1008041A4();
  }
}

id sub_1000FC668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100804278(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _identitiesGet];
}

void sub_1000FC7C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (*(*(a1 + 40) + 96) == -1)
  {
    goto LABEL_44;
  }

  if (v6)
  {
    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804324(v6);
    }

    goto LABEL_44;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if ([v11 type] == 1)
        {
          v13 = *(a1 + 40);
          v14 = *(v13 + 112);
          if (v14)
          {
            LODWORD(v8) = [v14 compareWithRPIdentity:v11];
            v13 = *(a1 + 40);
          }

          else
          {
            LODWORD(v8) = 2048;
          }

          objc_storeStrong((v13 + 112), v11);
          objc_autoreleasePoolPop(v12);
          goto LABEL_20;
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v15 = *(*(a1 + 40) + 112);
  if (!v15)
  {
    if (dword_100B509C8 <= 60 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804380();
    }

    goto LABEL_29;
  }

  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v15 = *(*(a1 + 40) + 112);
    }

    v16 = CUPrintFlags32();
    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesGet]_block_invoke", 30, "Self identity: %@, %@", v15, v16);
  }

LABEL_29:
  if (v8)
  {
    [*(a1 + 40) _updateSelfAuthTag];
  }

  v17 = objc_alloc_init(NSMutableArray);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = objc_autoreleasePoolPush();
        if ([v23 type] != 1)
        {
          [v17 addObject:v23];
        }

        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  v26 = *(a1 + 40);
  v27 = *(v26 + 464);
  *(v26 + 464) = v25;

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008043B4(v18);
  }

  [*(a1 + 40) _identitiesReevaluateDevices];
  [*(a1 + 40) scheduleAdvertiserUpdateImmediate:0];
  [*(a1 + 40) scheduleSpatialUpdateImmediate:0];
  [*(a1 + 40) _updateUserControllerCloudDevices];

LABEL_44:
}

void sub_1000FD380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD3A8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 identifier];
  if (v6 && ([*(*(a1 + 32) + 568) objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
  }

  else
  {

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = [v9 lastSeenTicks];
      if (v10 <= [v5 lastSeenTicks])
      {
        goto LABEL_8;
      }

      v8 = *(*(a1 + 40) + 8);
    }

    objc_storeStrong((v8 + 40), a3);
  }

LABEL_8:
}

void sub_1000FD54C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (([v5 internalFlags] & 2) != 0)
  {
    [*(a1 + 32) _identitiesResolveNearbyDevice:v5];
    if (([v5 attributeInternalFlags] & 2) != 0)
    {
      [*(a1 + 32) _reportDeviceFound:v5];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000FDF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  (*(a19 + 16))(a19, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000FE00C(void *a1)
{
  v2 = a1[4];
  v3 = *(*(v2 + 8) + 40);
  if (v3 && dword_100B509C8 <= 90)
  {
    if (dword_100B509C8 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[4];
      if (!v4)
      {
        goto LABEL_6;
      }

      v3 = *(*(v2 + 8) + 40);
    }

    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]_block_invoke", 90, "IntegrityTag NearbyInfoV2 encrypted payload failed to decrypt with error: %@", v3);
    v2 = a1[4];
  }

LABEL_6:
  v5 = *(*(v2 + 8) + 40);
  v6 = *(*(a1[5] + 8) + 24);
  if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_10080450C(a1, v5 == 0, v6);
  }

  v7 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  v10 = v7;
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 1;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 10;
  }

  [v7 reportAuthTagType:2 authTagStatus:v8 integrityTagStatus:v9 resolutionWindow:*(*(a1[7] + 8) + 24)];
}

void sub_1000FE738(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_100B509C8 <= 40 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008046B4(v3);
  }

  [*(*(a1 + 32) + 552) remoteControllersChanged];
}

void sub_1000FE7C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_100B509C8 <= 40 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008046F4(v3);
  }

  [*(*(a1 + 32) + 552) remoteControllersChanged];
  [*(a1 + 32) _remoteInvalidateInactiveXPC];
}

void sub_1000FE850(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_100B509C8 <= 40 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100804734(v3);
  }

  [*(*(a1 + 32) + 552) remoteControllersChanged];
}

void sub_1000FE8FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 184))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_100804774(v8);
      }

      [*(*(a1 + 40) + 184) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 184);
      *(v6 + 184) = 0;

      *(*(a1 + 40) + 200) = 0;
      goto LABEL_7;
    }

    if (dword_100B509C8 <= 30)
    {
      v8 = 0;
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        sub_1008047D0(v3, v5, v4);
LABEL_7:
        v5 = v8;
      }
    }
  }
}

void sub_1000FE9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 208) && dword_100B509C8 <= 90)
  {
    v6 = v3;
    if (dword_100B509C8 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1008047EC(v4);
      v4 = v6;
    }
  }
}

void sub_1000FEB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100804880(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) name];
  v5 = [v4 isEqualToString:@"com.apple.bluetooth.leconnection"];

  if (v5)
  {
    v6 = [*(v3 + 32) userInfo];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080489C(Int64Ranged);
    }

    v10 = @"NUMBER_OF_LE_CONNECTIONS";
    v8 = [NSNumber numberWithInt:Int64Ranged];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    [*(v3 + 40) sendCoexUpdate:v9];
  }
}

void sub_1000FF220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  (*(v18 + 16))(v18, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FF264(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40) && dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100804938(result);
  }
}

void sub_1000FF6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FF6F8(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008049B8(v1);
    }

    v2 = *(*(v1 + 48) + 16);

    return v2();
  }

  return result;
}

void *sub_1000FFEBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[69])
  {
    return [result _whbDiscoveryDeviceFound:a2];
  }

  return result;
}

void *sub_1000FFED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[69])
  {
    return [result _whbDiscoveryDeviceLost:a2];
  }

  return result;
}

void sub_100100298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804BD8(a1, v6);
    }
  }

  else
  {
    if (dword_100B509C8 <= 40 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804C48(a1, v5);
    }

    v7 = *(*(a1 + 40) + 504);
    v10 = 0;
    v8 = [v7 updateControllerInfo:v5 error:&v10];
    v9 = v10;
    if (v8)
    {
    }

    else
    {
      sub_100804CBC(v9);
    }
  }
}

void sub_10010046C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v7 = a3;
  if (v7)
  {
    sub_100804E10();
  }

  else if (v8)
  {
    [v8 storeControllerInfo:*(a1 + 32) completion:&stru_100AE03F0];
  }

  else
  {
    sub_100804EB4(0, v5, v6);
  }
}

void sub_1001004F0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_100804F14();
    v2 = v3;
  }
}

void sub_100102028(void *a1)
{
  v4 = 0;
  v2 = *(a1[4] + 552);
  if (v2)
  {
    v3 = [v2 optimalHostIdForStableId:a1[5] result:&v4];
  }

  else
  {
    v3 = 0;
    v4 = 1702;
  }

  (*(a1[6] + 16))();
}

void sub_100102268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10010229C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserController:0];
}

void sub_1001022E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    sub_1008053D4(a1);
  }

  else
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10080543C(v3, v4, v5);
      }
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _scheduleUserControllerInvalidation:0];
  }
}

void sub_100102B84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805574(v4);
    }

    [*(a1 + 32) invalidate];
    v3 = v4;
  }
}

void sub_100102C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000421B4;
  v41 = sub_10004256C;
  v42 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100103068;
  v34[3] = &unk_100AE04E0;
  v36 = &v37;
  v6 = a3;
  v35 = v6;
  v7 = objc_retainBlock(v34);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) activatedConnection];

  if (v8 == v9)
  {
    v10 = [v5 l2capChannel];

    if (!v10)
    {
LABEL_13:
      (*(v6 + 2))(v6, 0);
      goto LABEL_14;
    }

    v11 = [v5 l2capChannel];
    v12 = [v11 PSM];

    if (*(a1 + 64) == v12)
    {
      v13 = *(*(a1 + 48) + 400);
      if (v13)
      {
        v14 = [v5 l2capChannel];
        v15 = [v14 socketFD];

        if ((v15 & 0x80000000) == 0)
        {
          v16 = [v5 l2capChannel];
          v17 = [v16 peer];
          v18 = [v17 identifier];

          v19 = [v18 UUIDString];
          v20 = [v19 UTF8String];

          if (v20)
          {
            v33 = v18;
            v21 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v21, "deviceID", v20);
            xpc_dictionary_set_int64(v21, "psm", v12);
            xpc_dictionary_set_fd(v21, "socketFD", v15);
            v22 = v13;
            if (!xpc_event_publisher_fire())
            {
              if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
              {
                v23 = *(a1 + 56);
                v24 = CUPrintErrorCode();
                LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherConnectionsAddToken:info:]_block_invoke_2", 30, "XPC subscriber PSM connected: token %llu, %@, %@, 0x%x, 0x%x, %d", v23, v24, v33, *(a1 + 64), v12, v15);
              }

              goto LABEL_13;
            }

            v30 = CUPrintErrorCode();
            v31 = CBErrorF(4294960591, "### Failed to publish with error %@", v30);
            v32 = v38[5];
            v38[5] = v31;
          }

          else
          {
            v28 = CBErrorF(4294960591, "### Invalid device identifier");
            v29 = v38[5];
            v38[5] = v28;
          }

LABEL_21:

          goto LABEL_14;
        }

        v26 = CBErrorF(4294960591, "### Invalid socket %d", v15);
      }

      else
      {
        v26 = CBErrorF(4294960591, "### Invalid xpc publisher token %llu", *(a1 + 56));
      }

      v27 = v38[5];
      v38[5] = v26;

      goto LABEL_21;
    }

    v25 = CBErrorF(4294960591, "### Invalid PSM expected: %d, received: %d", *(a1 + 64), v12);
    v13 = v38[5];
    v38[5] = v25;
    goto LABEL_21;
  }

LABEL_14:
  (v7[2])(v7);

  _Block_object_dispose(&v37, 8);
}

void sub_100103018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  (*(v21 + 16))(v21, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100103068(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherConnectionsAddToken:info:]_block_invoke_3", 90, "%@", v3);
    }

    result = *(a1 + 32);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

void sub_1001034D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001034F0(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = strcasecmp(string_ptr, *(a1 + 40));
  result = 1;
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

BOOL sub_100103548(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  result = strcasecmp(string_ptr, *(a1 + 40)) != 0;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100103B10(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) activatedDiscovery];

  v5 = v17;
  if (v3 == v4)
  {
    v6 = [v17 identifier];
    if (v6)
    {
      v7 = [*(a1 + 40) deviceMap];
      if (!v7)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        [*(a1 + 40) setDeviceMap:v7];
      }

      [v7 setObject:v17 forKeyedSubscript:v6];
      v8 = *(*(a1 + 48) + 408);
      if (v8)
      {
        if ([*(a1 + 32) keepAlive])
        {
          v9 = *(*(a1 + 48) + 140);
          v10 = (v9 & ~[*(a1 + 32) memoryPressureFlags]) == 0;
        }

        else
        {
          v10 = 0;
        }

        xpc_event_publisher_set_subscriber_keepalive();
        v11 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v11, "eventType", "deviceFound");
        if ([*(a1 + 32) xpcReportCompleteDevice])
        {
          [v17 xpcEventCompleteRepresentation];
        }

        else
        {
          [v17 xpcEventRepresentation];
        }
        v12 = ;
        xpc_dictionary_set_value(v11, "device", v12);

        xpc_event_publisher_fire();
        if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          v13 = *(a1 + 56);
          if (v10)
          {
            v14 = "yes";
          }

          else
          {
            v14 = "no";
          }

          v15 = CUPrintErrorCode();
          v16 = [*(a1 + 32) appID];
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherDiscoveryAddToken:info:]_block_invoke", 30, "XPC subscriber found device: token %llu, keepAlive %s, %@, %@ - %@", v13, v14, v15, v17, v16);
        }
      }
    }

    v5 = v17;
  }
}

void sub_100103D70(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) activatedDiscovery];

  v5 = v17;
  if (v3 == v4)
  {
    v6 = [v17 identifier];
    if (v6)
    {
      v7 = [*(a1 + 40) deviceMap];
      [v7 setObject:0 forKeyedSubscript:v6];
      v8 = *(*(a1 + 48) + 408);
      if (v8)
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v9, "eventType", "deviceLost");
        if ([*(a1 + 32) xpcReportCompleteDevice])
        {
          [v17 xpcEventCompleteRepresentation];
        }

        else
        {
          [v17 xpcEventRepresentation];
        }
        v10 = ;
        xpc_dictionary_set_value(v9, "device", v10);

        xpc_event_publisher_fire();
        if ([*(a1 + 32) keepAlive] && objc_msgSend(v7, "count"))
        {
          v11 = *(*(a1 + 48) + 140);
          v12 = (v11 & ~[*(a1 + 32) memoryPressureFlags]) == 0;
        }

        else
        {
          v12 = 0;
        }

        xpc_event_publisher_set_subscriber_keepalive();
        if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          v13 = *(a1 + 56);
          if (v12)
          {
            v14 = "yes";
          }

          else
          {
            v14 = "no";
          }

          v15 = CUPrintErrorCode();
          v16 = [*(a1 + 32) appID];
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherDiscoveryAddToken:info:]_block_invoke_2", 30, "XPC subscriber lost device: token %llu, keepAlive %s, %@, %@ - %@", v13, v14, v15, v17, v16);
        }
      }
    }

    v5 = v17;
  }
}

void sub_100104290(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(*(a1 + 32) + 120);
  }

  if ([v2 count] >= 0x10)
  {
    [*(*(a1 + 32) + 120) removeObjectAtIndex:0];
  }

  [*(*(a1 + 32) + 120) addObject:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (!*(v6 + 128))
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 88));
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = v7;
    v10 = v7;

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001043D0;
    v12[3] = &unk_100ADF590;
    v11 = *(a1 + 32);
    v12[4] = v10;
    v12[5] = v11;
    dispatch_source_set_event_handler(v10, v12);
    CUDispatchTimerSet();
    dispatch_activate(v10);
  }
}

void sub_1001043D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 128))
  {
    v4 = a1;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_100805720(a1, a2, a3);
      }
    }

    v5 = *(*(v4 + 40) + 128);
    if (v5)
    {
      v6 = v5;
      dispatch_source_cancel(v6);
      v7 = *(v4 + 40);
      v8 = *(v7 + 128);
      *(v7 + 128) = 0;
    }

    v9 = objc_alloc_init(NSMutableOrderedSet);
    v10 = *(v4 + 40);
    v11 = *(v10 + 120);
    *(v10 + 120) = v9;
  }
}

void sub_10010485C(id a1)
{
  v1 = os_log_create("com.apple.bluetooth", "CBDaemonServerStatedump");
  v2 = qword_100B55270;
  qword_100B55270 = v1;
}

void sub_10010592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);

  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);

  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x218], 8);

  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);

  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose((v70 - 248), 8);
  _Block_object_dispose((v70 - 216), 8);
  _Block_object_dispose((v70 - 184), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Block_object_dispose((v70 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_100105B3C(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a2 + 392);
  *(*(*(a1 + 48) + 8) + 24) = *(a2 + 164);
  *(*(*(a1 + 56) + 8) + 24) = *(a2 + 32);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = *(a2 + 232);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v4 & 1;
  if (*(a2 + 231) < 0)
  {
    sub_100008904(__p, *(a2 + 208), *(a2 + 216));
  }

  else
  {
    *__p = *(a2 + 208);
    v50 = *(a2 + 224);
  }

  if (SHIBYTE(v50) < 0)
  {
    v6 = __p[0];
    v5 = a1 + 72;
    *(*(*(a1 + 72) + 8) + 24) = __p[1] != 0;
    operator delete(v6);
  }

  else
  {
    v5 = a1 + 72;
    *(*(*(a1 + 72) + 8) + 24) = SHIBYTE(v50) != 0;
  }

  v7 = *(*(*v5 + 8) + 24);
  if (v7 == 1)
  {
    if (*(a2 + 231) < 0)
    {
      sub_100008904(__p, *(a2 + 208), *(a2 + 216));
    }

    else
    {
      *__p = *(a2 + 208);
      v50 = *(a2 + 224);
    }

    if (v50 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v8 = [NSString stringWithUTF8String:v9];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v8);
  if (v7)
  {

    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100007E30(v47, "IsHearingAid");
  v10 = (a2 + 184);
  *(*(*(a1 + 88) + 8) + 24) = a2 + 184 != sub_1000463C8(a2 + 176, v47);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  *(*(*(a1 + 96) + 8) + 24) = sub_1000E3BD0(a2);
  *(*(*(a1 + 104) + 8) + 24) = sub_1000E3C50(a2);
  sub_100007E30(v45, "IsPrimaryHearingAid");
  *(*(*(a1 + 112) + 8) + 24) = v10 != sub_1000463C8(a2 + 176, v45);
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  objc_storeStrong((*(*(a1 + 120) + 8) + 40), *(a2 + 304));
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  *(*(*(a1 + 128) + 8) + 24) = sub_10005016C(off_100B508C8, *(a1 + 32));
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  *(*(*(a1 + 136) + 8) + 24) = sub_1000E6C5C(off_100B508C8, *(a1 + 32));
  objc_storeStrong((*(*(a1 + 144) + 8) + 40), *(a2 + 280));
  if (*(a2 + 127) < 0)
  {
    sub_100008904(__dst, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    *__dst = *(a2 + 104);
    __dst[2] = *(a2 + 120);
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  v12 = [NSString stringWithUTF8String:v11];
  v13 = *(*(a1 + 152) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *(*(*(a1 + 160) + 8) + 24) = *(a2 + 160);
  objc_storeStrong((*(*(a1 + 168) + 8) + 40), *(a2 + 336));
  v15 = *(a2 + 464);
  if (v15)
  {
    v15 = *(a2 + 468) / v15;
  }

  *(*(*(a1 + 176) + 8) + 24) = v15;
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  v16 = off_100B508C8;
  v17 = *(a1 + 32);
  sub_100007E30(v42, "_CTKD_");
  *(*(*(a1 + 184) + 8) + 24) = sub_10004EB40(v16, v17, v42);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  *(*(*(a1 + 192) + 8) + 24) = sub_1000E3DB8(off_100B508C8, *(a1 + 32));
  v18 = *(a2 + 176);
  if (v18 == v10)
  {
    return;
  }

  while (1)
  {
    memset(__dst, 0, 24);
    if (*(v18 + 55) < 0)
    {
      sub_100008904(__dst, v18[4], v18[5]);
    }

    else
    {
      *__dst = *(v18 + 2);
      __dst[2] = *(v18 + 6);
    }

    v19 = HIBYTE(__dst[2]);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(__dst[2]) > 0xFu)
      {
        switch(HIBYTE(__dst[2]))
        {
          case 0x10u:
            if (__dst[0] == 0x4E41524145505041 && __dst[1] == 0x4553554F4D5F4543)
            {
              goto LABEL_147;
            }

            break;
          case 0x12u:
            if (__dst[0] == 0x4E41524145505041 && __dst[1] == 0x50454D41475F4543 && LOWORD(__dst[2]) == 17473)
            {
              goto LABEL_151;
            }

            break;
          case 0x13u:
            v20 = __dst[0] == 0x4E41524145505041 && __dst[1] == 0x5453594F4A5F4543;
            if (v20 && *(&__dst[1] + 3) == 0x4B43495453594F4ALL)
            {
              goto LABEL_148;
            }

            if (__dst[0] == 0x4E41524145505041 && __dst[1] == 0x4F4259454B5F4543 && *(&__dst[1] + 3) == 0x4452414F4259454BLL)
            {
              goto LABEL_149;
            }

            break;
        }

        goto LABEL_140;
      }

      if (HIBYTE(__dst[2]) != 9)
      {
LABEL_120:
        if (HIBYTE(__dst[2]) == 12 && __dst[0] == 0x6E69726165487349 && LODWORD(__dst[1]) == 1684619623)
        {
          goto LABEL_150;
        }

        goto LABEL_140;
      }

      if (__dst[0] == 0x73756F4D454C7349 && LOBYTE(__dst[1]) == 101)
      {
        goto LABEL_147;
      }

      goto LABEL_140;
    }

    if (__dst[1] == 18)
    {
      v25 = *__dst[0] == 0x4E41524145505041 && *(__dst[0] + 1) == 0x50454D41475F4543;
      if (v25 && *(__dst[0] + 8) == 17473)
      {
        break;
      }
    }

    if (__dst[1] == 19)
    {
      v27 = *__dst[0] == 0x4E41524145505041 && *(__dst[0] + 1) == 0x5453594F4A5F4543;
      if (v27 && *(__dst[0] + 11) == 0x4B43495453594F4ALL)
      {
LABEL_148:
        v41 = 50;
        goto LABEL_152;
      }
    }

    v29 = __dst[1];
    if (__dst[1] == 19)
    {
      if (*__dst[0] == 0x4E41524145505041 && *(__dst[0] + 1) == 0x4F4259454B5F4543 && *(__dst[0] + 11) == 0x4452414F4259454BLL)
      {
LABEL_149:
        v41 = 24;
        goto LABEL_152;
      }

      v29 = __dst[1];
    }

    if (v29 != 9)
    {
      goto LABEL_112;
    }

    if (*__dst[0] == 0x73756F4D454C7349 && *(__dst[0] + 8) == 101)
    {
LABEL_147:
      v41 = 25;
      goto LABEL_152;
    }

    if ((HIBYTE(__dst[2]) & 0x80) != 0)
    {
LABEL_112:
      if (__dst[1] == 16)
      {
        if (*__dst[0] == 0x4E41524145505041 && *(__dst[0] + 1) == 0x4553554F4D5F4543)
        {
          goto LABEL_147;
        }

        if ((HIBYTE(__dst[2]) & 0x80) == 0)
        {
          goto LABEL_120;
        }
      }

      if (__dst[1] == 12 && *__dst[0] == 0x6E69726165487349 && *(__dst[0] + 2) == 1684619623)
      {
LABEL_150:
        v41 = 51;
        goto LABEL_152;
      }

      operator delete(__dst[0]);
    }

LABEL_140:
    v39 = v18[1];
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = v18[2];
        v20 = *v40 == v18;
        v18 = v40;
      }

      while (!v20);
    }

    v18 = v40;
    if (v40 == v10)
    {
      return;
    }
  }

LABEL_151:
  v41 = 26;
LABEL_152:
  *(*(*(a1 + 200) + 8) + 24) = v41;
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1001062B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100106320(uint64_t a1)
{
  if (a1 <= 619)
  {
    if (a1 > 569)
    {
      if (a1 > 598)
      {
        if (a1 > 614)
        {
          if (a1 == 615)
          {
            goto LABEL_69;
          }

          if (a1 != 617)
          {
            goto LABEL_72;
          }

          goto LABEL_39;
        }

        if (a1 != 599)
        {
          if (a1 != 613)
          {
            goto LABEL_72;
          }

          goto LABEL_33;
        }
      }

      else if (a1 <= 596 && a1 != 570 && a1 != 571)
      {
        goto LABEL_72;
      }
    }

    else if (a1 > 555)
    {
      if (a1 > 558 && a1 != 569)
      {
        goto LABEL_72;
      }
    }

    else if (a1 > 520)
    {
      if (a1 != 521 && a1 != 522)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (!a1)
      {
        v3 = 0;
        goto LABEL_74;
      }

      if (a1 != 520)
      {
        goto LABEL_72;
      }
    }

    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_wireless_keyboard" value:&stru_100B0F9E0 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 <= 799)
  {
    if (a1 > 776)
    {
      if (a1 <= 780)
      {
        if (a1 == 777)
        {
          v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = [v1 localizedStringForKey:@"apple_wireless_mouse" value:&stru_100B0F9E0 table:@"CBLocalizable"];
          goto LABEL_73;
        }

        if (a1 == 780)
        {
          v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = [v1 localizedStringForKey:@"apple_mighty_mouse" value:&stru_100B0F9E0 table:@"CBLocalizable"];
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (a1 != 781)
      {
        if (a1 != 782)
        {
          goto LABEL_72;
        }

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (a1 <= 667)
    {
      if (a1 == 620)
      {
        v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_keypad" value:&stru_100B0F9E0 table:@"CBLocalizable"];
        goto LABEL_73;
      }

      if (a1 != 666)
      {
        goto LABEL_72;
      }

LABEL_24:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_touch" value:&stru_100B0F9E0 table:@"CBLocalizable"];
      goto LABEL_73;
    }

    if (a1 == 668)
    {
LABEL_69:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_keyboard" value:&stru_100B0F9E0 table:@"CBLocalizable"];
      goto LABEL_73;
    }

    if (a1 != 671)
    {
      goto LABEL_72;
    }

    goto LABEL_54;
  }

  if (a1 <= 803)
  {
    if (a1 <= 801)
    {
      if (a1 != 800)
      {
        goto LABEL_24;
      }

      goto LABEL_69;
    }

    if (a1 != 802)
    {
LABEL_39:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_mouse" value:&stru_100B0F9E0 table:@"CBLocalizable"];
      goto LABEL_73;
    }

LABEL_54:
    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_touch_keypad" value:&stru_100B0F9E0 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 > 8215)
  {
    if (a1 == 8216 || a1 == 8220 || a1 == 8233)
    {
      goto LABEL_8;
    }

LABEL_72:
    v1 = [CBProductInfo productInfoWithProductID:a1];
    v2 = [v1 productName];
    goto LABEL_73;
  }

  if (a1 == 804)
  {
LABEL_33:
    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_magic_trackpad" value:&stru_100B0F9E0 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 != 8213)
  {
    goto LABEL_72;
  }

LABEL_8:
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
  v2 = [v1 localizedStringForKey:@"apple_airpods_case" value:&stru_100B0F9E0 table:@"CBLocalizable"];
LABEL_73:
  v3 = v2;

LABEL_74:

  return v3;
}

void sub_100108DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  a39 = v52 - 120;
  sub_1000161FC(&a39);

  _Unwind_Resume(a1);
}

uint64_t sub_10010A5BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) calculateMetricforDevice:*(a1 + 40) onHost:a2];
  v7 = [*(a1 + 32) calculateMetricforDevice:*(a1 + 40) onHost:v5];
  if (v6 == v7)
  {
    v8 = [v5 isEqual:@"CBLocalHostID"];
  }

  else if (v6 < v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

void sub_10010A7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B50AE8 <= 30)
  {
    if (dword_100B50AE8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100805B2C(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) name];
  v5 = [v4 isEqualToString:@"com.apple.bluetooth.leconnection"];

  if (v5)
  {
    v6 = [*(v3 + 32) userInfo];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805B48(Int64Ranged);
    }

    v10 = @"NUMBER_OF_LE_CONNECTIONS";
    v8 = [NSNumber numberWithInt:Int64Ranged];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    [*(v3 + 40) updateCoexUpdate:v9 whbHost:@"CBLocalHostID"];
  }
}

void sub_10010BD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010BD30(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) isEqual:a2])
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter getCBDeviceForStableId:onHost:]_block_invoke", 30, "Found CBDevice:%@ for stableIdentifier:%@ on WHBHost: %@", v8, *(a1 + 32), *(a1 + 40));
    }

    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }
}

void sub_10010C2DC(_BYTE *a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFF00000000);
  v3 = (a2 & 0xFFFFFFFF00000000) == &_mh_execute_header;
  if (*a1 != v3)
  {
    *a1 = v3;
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "not associated";
      if (v2 == &_mh_execute_header)
      {
        v5 = "associated";
      }

      v12 = 136315138;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dynamic Latency WiFi is %s to 2.4GHz band", &v12, 0xCu);
    }

    if (qword_100B50940 != -1)
    {
      sub_100805F84();
    }

    if (*(off_100B50938 + 26))
    {
      v6 = *(off_100B50938 + 24);
      v7 = off_100B50938 + 200;
      if (v6 != off_100B50938 + 200)
      {
        do
        {
          v8 = *(v6 + 5);
          if (*(v8 + 92))
          {
            if (qword_100B50940 != -1)
            {
              sub_100805F84();
            }

            sub_100119ED8(*(off_100B50938 + 27), 0, *(v8 + 92));
          }

          v9 = *(v6 + 1);
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
              v10 = *(v6 + 2);
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v7);
      }
    }
  }
}

uint64_t sub_10010C474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (a3)
  {
    if (result)
    {
      result = sub_10010C5DC(a1, a3);
      if (result)
      {
        v8 = sub_10000C798(result, v7);
        v9 = (*(*v8 + 352))(v8);
        if (v9)
        {
          if (qword_100B50940 != -1)
          {
            sub_100805FAC();
          }

          v9 = (*(*off_100B50938 + 96))(off_100B50938, a2);
        }

        v11 = sub_10000C798(v9, v10);
        result = (*(*v11 + 416))(v11);
        if (result)
        {
          if (qword_100B50940 != -1)
          {
            sub_100805FAC();
          }

          v12 = *(*off_100B50938 + 96);

          return v12();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10010C5DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C798(a1, a2);
  if ((*(*v4 + 248))(v4) && *(a1 + 1) == 1 && sub_1000E2140(a2, 0x31u))
  {
    return 1;
  }

  v6 = qword_100BCE8D0;
  v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = sub_10000C798(0, v7);
    v10 = (*(*v9 + 248))(v9);
    v11 = *(a1 + 1);
    v12[0] = 67109632;
    v12[1] = v10;
    v13 = 1024;
    v14 = v11;
    v15 = 1024;
    v16 = sub_1000E2140(a2, 0x31u);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Advanced Sniff not allowed %d %d %d", v12, 0x14u);
    return 0;
  }

  return result;
}

void sub_10010C738(uint64_t a1, unint64_t a2)
{
  v3 = sub_10010C848(a1, a2);
  if (v3)
  {
    v4 = sub_10010C848(v3, a2);
    ++*(v4 + 2);
    v5 = qword_100BCE8D0;
    v6 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return;
    }

    v7 = *(sub_10010C848(v6, a2) + 2);
    v12[0] = 67109120;
    v12[1] = v7;
    v8 = "Advanced Sniff increased pending count %d";
    v9 = v5;
    v10 = 8;
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v12[0]) = 0;
    v8 = "Advanced Sniff increase pending count for invalid device";
    v9 = v11;
    v10 = 2;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, v12, v10);
}

uint64_t sub_10010C848(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  if (!a2)
  {
    return 0;
  }

  if (qword_100B50940 != -1)
  {
    sub_100805FAC();
  }

  v3 = *(off_100B50938 + 25);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = off_100B50938 + 200;
  do
  {
    v5 = *(v3 + 4);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == off_100B50938 + 200 || *(v4 + 4) > a2)
  {
LABEL_12:
    v4 = off_100B50938 + 200;
  }

  if (v4 == off_100B50938 + 200)
  {
    return 0;
  }

  v10 = &v9;
  return *(sub_10005E16C(off_100B50938 + 192, &v9, &unk_1008A23C8, &v10)[5] + 56);
}

void sub_10010C91C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10010C848(a1, a2);
  if (v3)
  {
    v4 = sub_10010C848(v3, a2);
    v5 = *(v4 + 2);
    v6 = sub_10010C848(v4, a2);
    if (v5)
    {
      --*(v6 + 2);
      v7 = qword_100BCE8D0;
      v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (!v8)
      {
        return;
      }

      v9 = *(sub_10010C848(v8, a2) + 2);
      v14[0] = 67109120;
      v14[1] = v9;
      v10 = "Advanced Sniff decreased pending count %d";
      v11 = v7;
      v12 = 8;
      goto LABEL_10;
    }

    *(v6 + 2) = 0;
    v13 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v14[0]) = 0;
    v10 = "Advanced Sniff pending count 0";
  }

  else
  {
    v13 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v14[0]) = 0;
    v10 = "Advanced Sniff decrease pending count for invalid device";
  }

  v11 = v13;
  v12 = 2;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
}

void sub_10010CA74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (_os_feature_enabled_impl())
  {
    if (qword_100B508F0 != -1)
    {
      sub_100805FC0();
    }

    v7 = sub_1000504C8(off_100B508E8, a3, 1);
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    if (qword_100B50940 != -1)
    {
      sub_100805FAC();
    }

    v9 = *(off_100B50938 + 25);
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = off_100B50938 + 200;
    do
    {
      v11 = *(v9 + 4);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *&v9[8 * v13];
    }

    while (v9);
    if (v10 == off_100B50938 + 200 || v8 < *(v10 + 4))
    {
LABEL_15:
      v10 = off_100B50938 + 200;
    }

    if (v10 == off_100B50938 + 200)
    {
LABEL_26:
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100805FD4();
      }
    }

    else
    {
      v14 = qword_100BCE8D0;
      v15 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        v16 = *sub_10010C848(v15, v8);
        *buf = 67109376;
        v25 = v16;
        v26 = 1024;
        v27 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sniff/Active mode change: %d->%d", buf, 0xEu);
      }

      v17 = sub_10010C848(v15, v8);
      *v17 = a4;
      v18 = sub_10010C848(v17, v8);
      if (!*v18)
      {
        v19 = sub_10010C848(v18, v8);
        if (*(v19 + 1) == 1)
        {
          v20 = sub_10010C848(v19, v8);
          *(v20 + 1) = 0;
          v22 = sub_1000DAB84(v20, v21);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10010CCB4;
          v23[3] = &unk_100AE0860;
          v23[4] = a1;
          v23[5] = v8;
          sub_10000CA94(v22, v23);
        }
      }
    }
  }
}

_BYTE *sub_10010CCB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  sub_1000216B4(&v17);
  v3 = sub_1000E1FE8(*(a1 + 40) + 128);
  sub_100022214(&v17);
  v4 = qword_100BCE8D0;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enter Advanced Sniff after unsniff", buf, 2u);
    }

    if (qword_100B50940 != -1)
    {
      sub_100805F84();
    }

    v5 = *(off_100B50938 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CEE4;
    block[3] = &unk_100AE0860;
    v6 = *(a1 + 40);
    block[4] = v2;
    block[5] = v6;
    dispatch_async(v5, block);
    v9 = sub_10000C7D0(v7, v8);
    BYTE2(v13) = 1;
    LOWORD(v13) = 2;
    if ((*(*v9 + 1840))(v9, *v3, 24, 20, 8, 1, 0, 0, 0xFFFF00000001, v13))
    {
      if (qword_100B50940 != -1)
      {
        sub_100805F84();
      }

      v10 = *(off_100B50938 + 32);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10010CEF0;
      v14[3] = &unk_100AE0860;
      v11 = *(a1 + 40);
      v14[4] = v2;
      v14[5] = v11;
      dispatch_async(v10, v14);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100806008();
  }

  return sub_10002249C(&v17);
}

id sub_10010CEF8(uint64_t a1, int a2)
{
  v3 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v4 = v3;
  if (a2 > 239)
  {
    if (a2 == 240)
    {
      v5 = @"ADVANCEDSNIFF";
      goto LABEL_12;
    }

    if (a2 == 241)
    {
      v5 = @"SEMI-ADVANCEDSNIFF";
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
      v5 = @"ACTIVE";
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v5 = @"CLASSICSNIFF";
LABEL_12:
      [v3 appendString:v5];
      goto LABEL_13;
    }
  }

  [v3 appendString:@"UNKNOWN"];
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown Advanced Sniff mode", v8, 2u);
  }

LABEL_13:

  return v4;
}

void sub_10010D010(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a3)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = a3[3];
    v15 = a3[4];
    v16 = a3[5];
    if (qword_100B508F0 != -1)
    {
      sub_100805FC0();
    }

    v17 = sub_1000504C8(off_100B508E8, (v11 << 40) | (v12 << 32) | (v13 << 24) | (v14 << 16) | (v15 << 8) | v16, 1);
    if (v17)
    {
      v18 = v17;
      if (qword_100B50940 != -1)
      {
        sub_100805FAC();
      }

      v19 = *(off_100B50938 + 25);
      if (!v19)
      {
        goto LABEL_15;
      }

      v20 = off_100B50938 + 200;
      do
      {
        v21 = *(v19 + 4);
        v22 = v21 >= v18;
        v23 = v21 < v18;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * v23];
      }

      while (v19);
      if (v20 == off_100B50938 + 200 || v18 < *(v20 + 4))
      {
LABEL_15:
        v20 = off_100B50938 + 200;
      }

      if (v20 != off_100B50938 + 200)
      {
        v39 = 0;
        sub_1000216B4(&v39);
        v24 = sub_1000E1FE8(v18 + 128);
        v25 = sub_100022214(&v39);
        if (!v24)
        {
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_1008060C8();
          }

          goto LABEL_62;
        }

        v26 = sub_10010C848(v25, v18);
        if (a7 && *v26 == a4)
        {
          v27 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_10080603C(a7, a4, v27);
          }

LABEL_62:
          sub_10002249C(&v39);
          return;
        }

        v29 = sub_10010C848(v26, v18);
        if (!*(v29 + 2))
        {
          v37 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Advanced Sniff mode change ignored, not for media", buf, 2u);
          }

          goto LABEL_62;
        }

        sub_10010C91C(v29, v18);
        if (a7)
        {
          v30 = 0;
        }

        else
        {
          v30 = a4 == 240;
        }

        if (v30)
        {
          v31 = -15;
        }

        else
        {
          v31 = a4;
        }

        v32 = qword_100BCE8D0;
        v33 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          v34 = sub_10010C848(v33, v18);
          v35 = sub_10010CEF8(v34, *v34);
          v36 = sub_10010CEF8(v35, v31);
          *buf = 138413058;
          v41 = v35;
          v42 = 2112;
          v43 = v36;
          v44 = 1024;
          v45 = a7;
          v46 = 1024;
          v47 = a8;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Low Latency Game Advanced Sniff changed %@->%@, max_age:%d, maxRetry:%d", buf, 0x22u);
        }

        if (a7 || v31 != 241)
        {
          if (!a7 || v31 != 240)
          {
            if (!v31)
            {
              *sub_10010C848(v33, v18) = 0;
              if (qword_100B50940 != -1)
              {
                sub_100805F84();
              }

              sub_100629478(off_100B50938, 0, v18);
              if (qword_100B50940 != -1)
              {
                sub_100805F84();
              }

              sub_10063A4A0(off_100B50938, v18, 0);
            }

            v38 = 1;
            goto LABEL_57;
          }

          *sub_10010C848(v33, v18) = -16;
          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          sub_100629478(off_100B50938, 4, v18);
        }

        else
        {
          *sub_10010C848(v33, v18) = -15;
          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          sub_100629478(off_100B50938, 3, v18);
          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          sub_10063A4A0(off_100B50938, v18, 1);
        }

        v38 = 2;
LABEL_57:
        if (qword_100B50940 != -1)
        {
          sub_100805F84();
        }

        sub_10063A688(off_100B50938, v18, v38);
        if (qword_100B50940 != -1)
        {
          sub_100805F84();
        }

        sub_10063A390(off_100B50938, v18, v31);
        goto LABEL_62;
      }
    }

    v28 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Advanced Sniff mode change ignored: couldn't find the device", buf, 2u);
    }
  }
}

void sub_10010D4E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = a3;
  v15 = WORD2(a3);
  v11 = _os_feature_enabled_impl();
  if (v11)
  {
    sub_10010D010(v11, 0, &v14, a4, v12, v13, a7, a8);
  }
}

void sub_10010D554(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (*(a1 + 1))
    {
      v6 = "True";
    }

    else
    {
      v6 = "false";
    }

    if (a2)
    {
      v5 = "True";
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Advanced Sniff State changed %s->%s", &v7, 0x16u);
  }

  *(a1 + 1) = a2;
}

void sub_10010D638(uint64_t a1, unint64_t a2)
{
  v4 = _os_feature_enabled_impl();
  if (!a2 || (v4 & 1) == 0)
  {
    v14 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v15 = "Exit Advanced Sniff but feature flag off";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    return;
  }

  v5 = sub_10010C5DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    v14 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v15 = "Exit Advanced Sniff but not allowed";
    goto LABEL_23;
  }

  if (qword_100B50940 != -1)
  {
    sub_100805FAC();
  }

  v6 = *(off_100B50938 + 25);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = off_100B50938 + 200;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == off_100B50938 + 200 || *(v7 + 4) > a2)
  {
LABEL_14:
    v7 = off_100B50938 + 200;
  }

  if (v7 == off_100B50938 + 200)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100806180();
    }
  }

  else
  {
    v11 = sub_10010C848(v5, a2);
    if (*v11 == 240 || (v11 = sub_10010C848(v11, a2), *v11 == 241))
    {
      v13 = sub_1000DAB84(v11, v12);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10010D848;
      v16[3] = &unk_100AE0860;
      v16[4] = a1;
      v16[5] = a2;
      sub_10000CA94(v13, v16);
    }

    else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008060FC(a2);
    }
  }
}

_BYTE *sub_10010D848(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exit Advanced Sniff...", buf, 2u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v4 = sub_1000E1FE8(*(a1 + 40) + 128);
  sub_100022214(buf);
  if (v4)
  {
    if (qword_100B50940 != -1)
    {
      sub_100805F84();
    }

    v5 = *(off_100B50938 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010DA7C;
    block[3] = &unk_100AE0860;
    v6 = *(a1 + 40);
    block[4] = v2;
    block[5] = v6;
    dispatch_async(v5, block);
    v9 = sub_10000C7D0(v7, v8);
    if ((*(*v9 + 1848))(v9, *v4, 1))
    {
      if (qword_100B50940 != -1)
      {
        sub_100805F84();
      }

      v10 = *(off_100B50938 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10010DA88;
      v13[3] = &unk_100AE0860;
      v11 = *(a1 + 40);
      v13[4] = v2;
      v13[5] = v11;
      dispatch_async(v10, v13);
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_1008061B4();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100806224();
  }

  return sub_10002249C(buf);
}

void sub_10010DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_10010DA90(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    goto LABEL_31;
  }

  if (qword_100B50940 != -1)
  {
    sub_100805FAC();
  }

  v6 = *(off_100B50938 + 25);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = off_100B50938 + 200;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == off_100B50938 + 200 || *(v7 + 4) > a2)
  {
LABEL_12:
    v7 = off_100B50938 + 200;
  }

  if (v7 == off_100B50938 + 200)
  {
LABEL_31:
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100806310();
    }
  }

  else
  {
    v11 = sub_10010C848(a1, a2);
    v12 = *v11;
    v13 = sub_10010C848(v11, a2);
    if (v12 == 2)
    {
      v13[1] = 1;
      v15 = qword_100BCE8D0;
      v16 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Enter Advanced Sniff on sniff link", buf, 2u);
      }

      v18 = sub_1000DAB84(v16, v17);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10010DCD0;
      v24[3] = &unk_100ADF8F8;
      v24[4] = a2;
      v19 = v24;
      goto LABEL_25;
    }

    if (*v13 != 2)
    {
      v18 = sub_1000DAB84(v13, v14);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10010DD78;
      v22[3] = &unk_100AE0880;
      v23 = a3;
      v22[4] = a1;
      v22[5] = a2;
      v19 = v22;
LABEL_25:
      sub_10000CA94(v18, v19);
      return;
    }

    v20 = *sub_10010C848(v13, a2);
    v21 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
    if (v20 == 240)
    {
      if (v21)
      {
        sub_1008062DC();
      }
    }

    else if (v21)
    {
      sub_100806258(a2);
    }
  }
}

_BYTE *sub_10010DCD0(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unsniffing for Advanced Sniff", buf, 2u);
  }

  v4 = 0;
  sub_1000216B4(&v4);
  sub_1002429D4(*(a1 + 32) + 128);
  sub_100022214(&v4);
  return sub_10002249C(&v4);
}

_BYTE *sub_10010DD78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 67109120;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enter Advanced Sniff, send command for config: %d", buf, 8u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v5 = sub_1000E1FE8(*(a1 + 40) + 128);
  sub_100022214(buf);
  if (v5)
  {
    if (qword_100B50940 != -1)
    {
      sub_100805F84();
    }

    v6 = *(off_100B50938 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E1BC;
    block[3] = &unk_100AE0860;
    v7 = *(a1 + 40);
    block[4] = v2;
    block[5] = v7;
    dispatch_async(v6, block);
    v10 = *(a1 + 48);
    switch(v10)
    {
      case 3:
        v17 = sub_10000C7D0(v8, v9);
        if ((*(*v17 + 1856))(v17, *v5, 0, 0xFFFFLL, 0, 0, 0, 1))
        {
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_1008063B4();
          }

          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          v12 = *(off_100B50938 + 32);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10010E1D4;
          v22[3] = &unk_100AE0860;
          v18 = *(a1 + 40);
          v22[4] = v2;
          v22[5] = v18;
          v14 = v22;
          goto LABEL_27;
        }

        break;
      case 2:
        v15 = sub_10000C7D0(v8, v9);
        if ((*(*v15 + 1856))(v15, *v5, 0, 0xFFFFLL, 0, 20, 0, 1))
        {
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_100806344();
          }

          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          v12 = *(off_100B50938 + 32);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10010E274;
          v21[3] = &unk_100AE0860;
          v16 = *(a1 + 40);
          v21[4] = v2;
          v21[5] = v16;
          v14 = v21;
          goto LABEL_27;
        }

        break;
      case 1:
        v11 = sub_10000C7D0(v8, v9);
        BYTE2(v20) = 1;
        LOWORD(v20) = 2;
        if ((*(*v11 + 1840))(v11, *v5, 24, 0, 8, 1, 0, 0, 0xFFFF00000001, v20))
        {
          if (qword_100B50940 != -1)
          {
            sub_100805F84();
          }

          v12 = *(off_100B50938 + 32);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10010E1C8;
          v23[3] = &unk_100AE0860;
          v13 = *(a1 + 40);
          v23[4] = v2;
          v23[5] = v13;
          v14 = v23;
LABEL_27:
          dispatch_async(v12, v14);
        }

        break;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100806424();
  }

  return sub_10002249C(buf);
}

uint64_t sub_10010E1D4(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  v3 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Reconfig failed, back to FTO", v5, 2u);
  }

  sub_10010C91C(v3, *(a1 + 40));
  if (qword_100B50940 != -1)
  {
    sub_100805F84();
  }

  return sub_100629478(off_100B50938, 3, *(a1 + 40));
}

uint64_t sub_10010E274(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  v3 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Reconfig failed, back to FTO", v5, 2u);
  }

  sub_10010C91C(v3, *(a1 + 40));
  if (qword_100B50940 != -1)
  {
    sub_100805F84();
  }

  return sub_100629478(off_100B50938, 3, *(a1 + 40));
}

void sub_10010E31C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = sub_10010C848(a1, a2);
    v4 = qword_100BCE8D0;
    if (v3)
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a2 + 1437);
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Advanced Sniff band switched %d", v8, 8u);
      }

      if (*(a2 + 1437) == 1)
      {
        if (qword_100B50940 != -1)
        {
          sub_100805F84();
        }

        v6 = off_100B50938;
        v7 = 6;
      }

      else
      {
        if (qword_100B50940 != -1)
        {
          sub_100805F84();
        }

        v6 = off_100B50938;
        v7 = 5;
      }

      sub_100629478(v6, v7, a2);
    }

    else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100806458();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_10080648C();
  }
}

void sub_10010E46C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 6);
  v5 = v4 > -66;
  v6 = sub_10010C848(a1, a3);
  if (*(v6 + 8) != v5)
  {
    *(sub_10010C848(v6, a3) + 8) = v5;
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "not qualifying";
      if (v4 > -66)
      {
        v8 = "qualifying";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Advanced Sniff ISMRssi is %s UBO", &v9, 0xCu);
    }
  }
}

void sub_10010E55C(uint64_t a1, int a2, unint64_t a3)
{
  v5 = sub_1005465D4(a3);
  if (!v5)
  {
    return;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return;
    }

    if (qword_100B50B60 != -1)
    {
      sub_1008064C0();
    }

    v6 = qword_100B50B58;
    v7 = 0;
    goto LABEL_11;
  }

  if (*(sub_10010C848(v5, a3) + 8) == 1)
  {
    if (qword_100B50B60 != -1)
    {
      sub_1008064C0();
    }

    v6 = qword_100B50B58;
    v7 = 1;
LABEL_11:

    sub_100378E58(v6, v7, a3);
    return;
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Advanced Sniff bandswitch bypassed, ISM rssi not qualifying", v9, 2u);
  }
}

void sub_10010E66C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005465D4(a2);
  v4 = qword_100BCE8D0;
  if (!v3 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Advanced Sniff switchISMBandandExitAoS while 2G not supported", buf, 2u);
    v4 = qword_100BCE8D0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Advanced Sniff switchISMBandandExitAoS", v5, 2u);
  }

  if (qword_100B50B60 != -1)
  {
    sub_1008064D4();
  }

  sub_1003790D0(qword_100B50B58, a2, 1);
}

void sub_10010E754(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_23;
  }

  if (qword_100B50940 != -1)
  {
    sub_100805FAC();
  }

  if (sub_100632D10(off_100B50938, a2))
  {
    if (qword_100B50940 != -1)
    {
      sub_100805FAC();
    }

    v4 = *(sub_100632D10(off_100B50938, a2) + 24);
    if (v4)
    {
      v5 = v4 == 14;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      sub_10010D638(a1, a2);
    }

    else if (v4 == 8)
    {
      sub_10010DA90(a1, a2, 3);
    }

    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100B50940 != -1)
      {
        sub_100805FAC();
      }

      v7 = *(*(off_100B50938 + 27) + 8 * v4 + 48);
      v8 = 136446210;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Advanced Sniff wrapperTransitOutofAoS, state %{public}s", &v8, 0xCu);
    }
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008064FC();
    }
  }
}

void sub_10010E8E0(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = a3;
      v4 = 2;
      goto LABEL_5;
    }

    if (a2 == 3)
    {
      v3 = a3;
      v4 = 3;
      goto LABEL_5;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = a3;
      v4 = 1;
LABEL_5:
      sub_10010DA90(a1, v3, v4);
    }
  }

  else
  {
    sub_10010D638(a1, a3);
  }
}

void sub_10010E934(uint64_t a1, int a2, unint64_t a3)
{
  v5 = qword_100BCE8D0;
  v6 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = "stopped";
    if (a2)
    {
      v7 = "started";
    }

    v12 = 136315138;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi StreamState %s", &v12, 0xCu);
  }

  if (a3 && (v8 = sub_10010C848(v6, a3)) != 0)
  {
    v9 = sub_10010C848(v8, a3);
    *(v9 + 3) = a2;
    if (a2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    sub_10010E55C(v9, v10, a3);
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi StreamState update skipped, device gone", &v12, 2u);
    }
  }
}

uint64_t sub_10010EA6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10010C848(a1, a2);
  *(v3 + 4) = 0;
  result = sub_10010C848(v3, a2);
  *(result + 6) = 0;
  return result;
}

void sub_10010EAA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 && *(sub_10010C848(a1, a2) + 3) == 1)
  {
    v5 = sub_10000E92C();
    if (((*(*v5 + 8))(v5) & 1) == 0)
    {
      v6 = sub_10000E92C();
      if (!(*(*v6 + 24))(v6))
      {
        goto LABEL_10;
      }
    }

    v30 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "BiAoS");
    sub_100007E30(__p, "bypassHAoSMonitor");
    (*(*v7 + 88))(v7, buf, __p, &v30);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (!v30)
    {
LABEL_10:
      v8 = qword_100BCE8D0;
      v9 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 1437))
        {
          v10 = "UBO";
        }

        else
        {
          v10 = "ISM";
        }

        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi monitor band: %s", buf, 0xCu);
      }

      v11 = *(a2 + 1437);
      v12 = *(a3 + 6);
      v13 = sub_10010C848(v9, a2);
      if (v11)
      {
        if (v12 > -80)
        {
          *(v13 + 4) = 0;
        }

        else
        {
          ++*(v13 + 4);
          v14 = qword_100BCE8D0;
          v15 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            v16 = *(a3 + 6);
            v17 = *(sub_10010C848(v15, a2) + 4);
            *buf = 67109376;
            *&buf[4] = v16;
            *&buf[8] = 1024;
            *&buf[10] = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi UBO RSSI %d under threshold %d times", buf, 0xEu);
          }

          if (*(sub_10010C848(v15, a2) + 4) >= 2)
          {
            v18 = qword_100BCE8D0;
            v19 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi request ISM band", buf, 2u);
            }

            v20 = sub_10010C848(v19, a2);
            *(v20 + 4) = 0;
            sub_10010E55C(v20, 1, a2);
          }
        }
      }

      else if (v12 < -74)
      {
        *(v13 + 6) = 0;
      }

      else
      {
        ++*(v13 + 6);
        v21 = qword_100BCE8D0;
        v22 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          v23 = *(a3 + 6);
          v24 = *(sub_10010C848(v22, a2) + 6);
          *buf = 67109376;
          *&buf[4] = v23;
          *&buf[8] = 1024;
          *&buf[10] = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi ISM RSSI %d over threshold %d times", buf, 0xEu);
        }

        if (*(sub_10010C848(v22, a2) + 6) >= 20)
        {
          v25 = qword_100BCE8D0;
          v26 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Advanced Sniff Bi request UBO band", buf, 2u);
          }

          v27 = sub_10010C848(v26, a2);
          *(v27 + 6) = 0;
          sub_10010E55C(v27, 2, a2);
        }
      }
    }
  }
}

void sub_10010EE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

id sub_10010EFC4()
{
  v0 = CFPreferencesCopyAppValue(@"SelfGeneratedLocalAddress", @"com.apple.BTServer");

  return v0;
}

void sub_10010EFFC(void *a1)
{
  v1 = a1;
  CFPreferencesSetAppValue(@"SelfGeneratedLocalAddress", v1, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_10010F074()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CFPreferencesCopyAppValue(@"Daemon", @"com.apple.MobileBluetooth.debug");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKey:@"DisableReadAddressFromIOREGForDebugging"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      if ([v3 isEqualToString:@"TRUE"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"YES"))
      {
        v4 = 1;
      }

      else
      {
        if (([v3 isEqualToString:@"FALSE"] & 1) == 0)
        {
          [v3 isEqualToString:@"NO"];
        }

        v4 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v2 BOOLValue];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v4;
}

uint64_t start()
{
  context = objc_autoreleasePoolPush();
  getpid();
  proc_disable_wakemon();
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0);
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "com.apple.server.bluetooth";
    *&buf[12] = 2080;
    *&buf[14] = CBHostVersion;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s: Bluetooth Super Server Robot Destroyer. Host software version %s", buf, 0x16u);
  }

  fprintf(__stderrp, "%s: Bluetooth Super Server Robot Destroyer. Host software version %s", "com.apple.server.bluetooth", CBHostVersion);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = __error();
      sub_100806530(v2, v61, v1);
    }

    v3 = __stderrp;
    v4 = __error();
    fprintf(v3, "### _set_user_dir_suffix failed: %d", *v4);
  }

  bzero(v60, 0x400uLL);
  if (!confstr(65537, v60, 0x400uLL))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = __error();
      sub_100806570(v6, v59, v5);
    }

    v7 = __stderrp;
    v8 = __error();
    fprintf(v7, "### _CS_DARWIN_USER_TEMP_DIR failed: %d", *v8);
  }

  qword_100B552B8 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.BTServer", 0, 0);
  SCDynamicStoreSetDispatchQueue(qword_100B552B8, &_dispatch_main_q);
  SCDynamicStoreSetDisconnectCallBack();
  SCDynamicStoreRemoveValue(qword_100B552B8, @"com.apple.MobileBluetooth");
  word_100B552A4 = 0;
  dword_100B552A0 = 0;
  v9 = getenv("BT_DEVICE_ADDRESS");
  if (v9 && (v10 = v9, strlen(v9) == 17))
  {
    sscanf(v10, "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", &dword_100B552A0, &dword_100B552A0 + 1, &dword_100B552A0 + 2, &dword_100B552A0 + 3, &word_100B552A4, &word_100B552A4 + 1);
    dword_100B552A0 = 0;
    word_100B552A4 = 0;
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local address from ENV:%s\n", buf, 0xCu);
    }

    fprintf(__stderrp, "Local address from ENV:%s\n");
  }

  else
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "could not find BT_DEVICE_ADDRESS env variable\n", buf, 2u);
    }

    fwrite("could not find BT_DEVICE_ADDRESS env variable\n", 0x2EuLL, 1uLL, __stderrp);
    if (sub_100110630("marconi-bt") || sub_100110630("bluetooth"))
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress Deleting local address from plist\n", buf, 2u);
      }

      fwrite("FindLocalMacAddress Deleting local address from plist\n", 0x36uLL, 1uLL, __stderrp);
      CFPreferencesSetAppValue(@"SelfGeneratedLocalAddress", 0, @"com.apple.BTServer");
      CFPreferencesAppSynchronize(@"com.apple.BTServer");
    }

    else
    {
      bzero(buf, 0x400uLL);
      v58 = 1024;
      v14 = sysctlbyname("kern.bootargs", buf, &v58, 0, 0);
      if (v14)
      {
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v64) = 67109120;
          DWORD1(v64) = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress did not find bootargs, sysctlbyname returned %d", &v64, 8u);
        }

        fprintf(__stderrp, "FindLocalMacAddress did not find bootargs, sysctlbyname returned %d");
      }

      else
      {
        v36 = strtok(buf, " ");
        if (v36)
        {
          v37 = v36;
          while (!strstr(v37, "wlan.debug.generate-mac"))
          {
            if (strstr(v37, "wlan.factory"))
            {
              v38 = strchr(v37, 61);
              v39 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v64) = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress found wlan.factory\n", &v64, 2u);
              }

              fwrite("FindLocalMacAddress found wlan.factory\n", 0x27uLL, 1uLL, __stderrp);
              v40 = strtol(v38 + 1, 0, 16);
              if ((v40 & 4) != 0)
              {
                v44 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v64) = 134217984;
                  *(&v64 + 4) = v40;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress found wlan.factory with a value of %llu\n", &v64, 0xCu);
                }

                fprintf(__stderrp, "FindLocalMacAddress found wlan.factory with a value of %llu\n", v40);
                goto LABEL_78;
              }
            }

            v37 = strtok(0, " ");
            if (!v37)
            {
              goto LABEL_63;
            }
          }

          v43 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v64) = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress found wlan.debug.generate-mac\n", &v64, 2u);
          }

          fwrite("FindLocalMacAddress found wlan.debug.generate-mac\n", 0x32uLL, 1uLL, __stderrp);
LABEL_78:
          v45 = sub_10010EFC4();
          v46 = v45;
          if (v45 && [v45 length])
          {
            v47 = v46;
            sscanf([v46 UTF8String], "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", &dword_100B552A0, &dword_100B552A0 + 1, &dword_100B552A0 + 2, &dword_100B552A0 + 3, &word_100B552A4, &word_100B552A4 + 1);
            v48 = qword_100BCE8D8;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v46;
              v50 = [v46 UTF8String];
              LODWORD(v64) = 136315138;
              *(&v64 + 4) = v50;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress Local address from plist:%s.\n", &v64, 0xCu);
            }

            v51 = __stderrp;
            v52 = v46;
            fprintf(v51, "FindLocalMacAddress Local address from plist:%s.\n", [v46 UTF8String]);
            v53 = v46;
            setenv("BT_DEVICE_ADDRESS", [v46 UTF8String], 1);
          }

          else
          {
            for (i = 0; i != 6; ++i)
            {
              *(&dword_100B552A0 + i) = arc4random_uniform(0xFFu);
            }

            v64 = 0uLL;
            v65 = 0;
            snprintf(&v64, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", dword_100B552A0, BYTE1(dword_100B552A0), BYTE2(dword_100B552A0), HIBYTE(dword_100B552A0), word_100B552A4, HIBYTE(word_100B552A4));
            v55 = [NSString stringWithUTF8String:&v64];
            sub_10010EFFC(v55);

            v56 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 136315138;
              v63 = &v64;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress Storing local address to plist:%s.\n", v62, 0xCu);
            }

            fprintf(__stderrp, "FindLocalMacAddress Storing local address to plist:%s.\n", &v64);
            setenv("BT_DEVICE_ADDRESS", &v64, 1);
          }
        }

        else
        {
LABEL_63:
          v41 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v64) = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "FindLocalMacAddress did not find bootargs for random address generation", &v64, 2u);
          }

          fwrite("FindLocalMacAddress did not find bootargs for random address generation", 0x47uLL, 1uLL, __stderrp);
          CFPreferencesSetAppValue(@"SelfGeneratedLocalAddress", 0, @"com.apple.BTServer");
          CFPreferencesAppSynchronize(@"com.apple.BTServer");
        }
      }
    }
  }

  v16 = sub_100017E6C();
  if (!(*(*v16 + 280))(v16))
  {
    WORD2(v64) = 0;
    LODWORD(v64) = 0;
    if (dword_100B552A0 | word_100B552A4)
    {
      if (access("/dev/cu.bluetooth", 0) != -1 || access("/dev/uart.bluetooth", 0) != -1)
      {
        goto LABEL_38;
      }

      v18 = IOServiceNameMatching("marconi-bt");
      if (v18 && (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v18)) != 0 || (v20 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v20)) != 0)
      {
        IOObjectRelease(MatchingService);
        goto LABEL_38;
      }

      sub_1008065B0(buf);
    }

    else
    {
      sub_100806658(buf);
    }

    sub_100806700(*buf);
  }

  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Bluetooth is running inside a Virtual Machine, so skipping check for Bluetooth available", buf, 2u);
  }

LABEL_38:
  for (j = 0; j != 3; ++j)
  {
    v22 = dword_1008A23D8[j];
    signal(v22, 1);
    v23 = dispatch_source_create(&_dispatch_source_type_signal, v22, 0, &_dispatch_main_q);
    v24 = qword_100B552C0[j];
    qword_100B552C0[j] = v23;

    v25 = qword_100B552C0[j];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100110940;
    v67 = &unk_100AE0900;
    v68 = v22;
    dispatch_source_set_event_handler(v25, buf);
    dispatch_resume(qword_100B552C0[j]);
  }

  v26 = os_state_add_handler();
  LODWORD(v64) = dword_100B552A0;
  WORD2(v64) = word_100B552A4;
  v28 = sub_10009BD9C(v26, v27);
  (*(*v28 + 40))(v28, &v64);
  v29 = sub_1000A1ED8("com.apple.bluetoothd", &qword_100B552A8);
  if (v29)
  {
    v30 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "com.apple.server.bluetooth";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s: Unable to attach local bluetooth session: %d\n", buf, 0x12u);
    }

    fprintf(__stderrp, "%s: Unable to attach local bluetooth session: %d\n");
LABEL_54:
    objc_autoreleasePoolPop(context);
    return 1;
  }

  v31 = sub_10052CEC4(qword_100B552A8, &qword_100B552B0);
  if (v31)
  {
    v32 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "com.apple.server.bluetooth";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: Unable to get local device: %d\n", buf, 0x12u);
    }

    fprintf(__stderrp, "%s: Unable to get local device: %d\n");
    goto LABEL_54;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100806740();
  }

  sub_100619798(qword_100B50B80, qword_100B552B0);
  v33 = sub_10052CFD0(qword_100B552B0, &off_100B50B68, 0);
  if (v33)
  {
    v34 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "com.apple.server.bluetooth";
      *&buf[12] = 1024;
      *&buf[14] = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s: Unable to attach local device callbacks: %d\n", buf, 0x12u);
    }

    fprintf(__stderrp, "%s: Unable to attach local device callbacks: %d\n");
    goto LABEL_54;
  }

  if (qword_100B50910 != -1)
  {
    sub_100806768();
  }

  if ((sub_1005BA5CC(off_100B50908) & 1) == 0)
  {
    sub_100806790();
  }

  v42 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "com.apple.server.bluetooth";
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: Server attached, going into msg loop.\n", buf, 0xCu);
  }

  fprintf(__stderrp, "%s: Server attached, going into msg loop.\n", "com.apple.server.bluetooth");
  objc_autoreleasePoolPop(context);
  CFRunLoopRun();
  sub_1006144A0(&qword_100B552A8);
  return 0;
}

void sub_100110118()
{
  v0 = objc_alloc_init(CBStackAdaptorBTStack);
  v1 = [[CBDaemonServer alloc] initWithCBStackAdaptor:v0];
  [(CBDaemonServer *)v1 activate];
  v2 = [[WPDaemonServer alloc] initWithCBStackAdaptor:v0];
  v3 = qword_100BC7DB0;
  qword_100BC7DB0 = v2;

  [qword_100BC7DB0 startListening];
  v4 = qword_100BC7DB0;
  signal(31, 1);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, &_dispatch_main_q);
  v6 = qword_100B552D8;
  qword_100B552D8 = v5;

  v7 = qword_100B552D8;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100110B88;
  handler[3] = &unk_100ADF820;
  v11 = v4;
  v8 = v4;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(qword_100B552D8);

  v9 = +[ContactTracingDaemonBridge sharedDaemonBridge];
  [v9 activate];
}

void sub_1001102AC()
{
  v4 = 0;
  if (sub_100059D3C(qword_100B552B0, 1, &v4))
  {
    v0 = qword_100BCE8D8;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = sub_100059D3C(qword_100B552B0, 1, &v4);
      sub_1008067AC(v5, v1, v0);
    }

    v2 = __stderrp;
    v3 = sub_100059D3C(qword_100B552B0, 1, &v4);
    fprintf(v2, "Failed to update Dynamic Store. BTLocalDeviceGetModulePower returned %d", v3);
  }

  else
  {
    sub_1001103B0(v4);
  }
}

void sub_1001103B0(int a1)
{
  keys = @"Powered";
  v2 = &kCFBooleanTrue;
  if (a1 != -1)
  {
    v2 = &kCFBooleanFalse;
  }

  values = *v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    switch(a1)
    {
      case -1:
        v4 = "On";
        break;
      case -889275714:
        v4 = "Transitioning";
        break;
      case -559038737:
        v4 = "Unknown";
        break;
      default:
        v4 = "Off";
        if (a1 == -1122640211)
        {
          v4 = "Terminated";
        }

        break;
    }

    *buf = 136315394;
    v11 = v4;
    v12 = 1024;
    v13 = a1 == -1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update Dynamic Store with state %s\t value %d", buf, 0x12u);
  }

  switch(a1)
  {
    case -1:
      v5 = "On";
      break;
    case -889275714:
      v5 = "Transitioning";
      break;
    case -559038737:
      v5 = "Unknown";
      break;
    default:
      v5 = "Off";
      if (a1 == -1122640211)
      {
        v5 = "Terminated";
      }

      break;
  }

  fprintf(__stderrp, "Update Dynamic Store with state %s\t value %d", v5, a1 == -1);
  v6 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!SCDynamicStoreSetValue(qword_100B552B8, @"com.apple.MobileBluetooth", v6))
  {
    v7 = SCError();
    v8 = SCErrorString(v7);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008067E8(v8, v9);
    }

    fprintf(__stderrp, "Update Dynamic Store failed with error %s", v8);
  }

  CFRelease(v6);
}

BOOL sub_100110630(const char *a1)
{
  if (sub_10010F074())
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: read from IOREG is disabled for debugging\n", buf, 0xCu);
    }

    fprintf(__stderrp, "%s: read from IOREG is disabled for debugging\n");
    return 0;
  }

  v3 = IOServiceNameMatching(a1);
  if (!v3)
  {
    goto LABEL_15;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (!MatchingService)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100806860(a1, v10);
    }

    fprintf(__stderrp, "%s: Unable to match bluetooth service in device tree.\n", a1);
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v5 = MatchingService;
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", kCFAllocatorDefault, 1u);
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    *__str = 0;
    v18 = 0;
    v19 = 0;
    v20.location = 0;
    v20.length = 6;
    CFDataGetBytes(v6, v20, &dword_100B552A0);
    snprintf(__str, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", dword_100B552A0, BYTE1(dword_100B552A0), BYTE2(dword_100B552A0), HIBYTE(dword_100B552A0), word_100B552A4, HIBYTE(word_100B552A4));
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = a1;
      v15 = 2080;
      v16 = __str;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Got local-mac-address: %s\n", buf, 0x16u);
    }

    fprintf(__stderrp, "%s: Got local-mac-address: %s\n", a1, __str);
    setenv("BT_DEVICE_ADDRESS", __str, 1);
    CFRelease(v8);
  }

  IOObjectRelease(v5);
LABEL_16:
  *&__str[4] = 0;
  *__str = 0;
  if (!(dword_100B552A0 | word_100B552A4))
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Not a valid MAC address (all 00s).\n", buf, 0xCu);
    }

    fprintf(__stderrp, "%s: Not a valid MAC address (all 00s).\n");
    return 0;
  }

  return v7;
}

uint64_t sub_100110940(uint64_t result)
{
  v1 = *(result + 32);
  switch(v1)
  {
    case 31:
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-SIGUSR2 received -- triggering our statedump.", v5, 2u);
      }

      return sub_100527AEC(qword_100B552A8);
    case 30:
      v3 = qword_100B552A8;

      return sub_100527A6C(v3);
    case 15:
      if (qword_100B50910 != -1)
      {
        sub_1008068D8();
      }

      sub_1005BC720(off_100B50908, 1);
      v2 = qword_100B552B0;

      return sub_10052D468(v2);
  }

  return result;
}

os_state_data_s *__cdecl sub_100110A48(id a1, os_state_hints_s *a2)
{
  if (a2->var2 == 3)
  {
    v7 = v2;
    v8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bluetoothd received OS_STATE_API_REQUEST (from sysdiagnose?) -- triggering our statedump.", v6, 2u);
    }

    sub_100527AEC(qword_100B552A8);
  }

  return 0;
}

void sub_100110AD0(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    v5 = 0;
    if (!sub_100059D3C(qword_100B552B0, 1, &v5))
    {
      sub_1001103B0(v5);
      if (v5 == -1)
      {
        if (qword_100B55290)
        {
          return;
        }

        v4 = os_transaction_create();
        v3 = qword_100B55290;
      }

      else
      {
        if (v5)
        {
          if (v5 == -1122640211)
          {
            _exit(0);
          }

          return;
        }

        v3 = qword_100B55290;
        if (!qword_100B55290)
        {
          return;
        }

        v4 = 0;
      }

      qword_100B55290 = v4;
    }
  }
}

void sub_100110B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    [v1 dumpDaemonState];
  }

  else
  {
    fwrite("Invalid WPDaemonServer", 0x16uLL, 1uLL, __stderrp);
  }
}

void sub_100112818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, atomic_uint *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_10000C808(a21);
  }

  _Unwind_Resume(a1);
}

void sub_100112C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_uint *a28)
{
  if (a28)
  {
    sub_10000C808(a28);
  }

  _Unwind_Resume(a1);
}

void sub_100112D54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  LOBYTE(a2) = [a2 unsignedCharValue];
  sub_10000C704(&v7, [v5 bytes], objc_msgSend(v5, "length"));
  sub_100112E50(v6, a2, &v7);
  v7 = &off_100AE0A78;
  if (v8)
  {
    sub_10000C808(v8);
  }
}

void sub_100112E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100112E50(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_100113110((a1 + 496), &v6, &unk_1008A2400, &v7);
  return sub_10000AE20(v4 + 40, a3);
}

void *sub_100113058(void *a1)
{
  *a1 = &off_100AE0A78;
  v2 = a1[1];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1001130A4(void *a1)
{
  *a1 = &off_100AE0A78;
  v1 = a1[1];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

uint64_t sub_100113110(uint64_t **a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v6 = 0;
  v4 = *sub_1001131CC(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1001131CC(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        v9 = sub_10011327C(*a3);
        if (v9 <= sub_10011327C(v8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v10 = *a3;
      v11 = sub_10011327C(*(v7 + 32));
      if (v11 <= sub_10011327C(v10))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_10011327C(int a1)
{
  if ((a1 - 2) > 0x19)
  {
    return 0;
  }

  else
  {
    return byte_1008A2401[(a1 - 2)];
  }
}

uint64_t sub_1001132A4(uint64_t a1)
{
  sub_10004B61C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10004B61C(*a1, v2);
  }

  return a1;
}

void sub_1001132FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1001133C8(void *a1)
{
  *a1 = &off_100AE0AB8;
  v1 = a1[1];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_100113570(id a1)
{
  v1 = objc_alloc_init(CBMetricsDaemon);
  v2 = qword_100B552E0;
  qword_100B552E0 = v1;
}

void sub_100113C60(uint64_t a1)
{
  if (dword_100B50C70 <= 30 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintDuration64();
    LogPrintF_safe(&dword_100B50C70, "[CBMetricsDaemon _startIfNeeded]_block_invoke", 30, "XPC activity register: ID '%s', interval %@", "com.apple.bluetooth.CBMetrics", v2);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100113DFC;
  handler[3] = &unk_100AE0B10;
  handler[4] = *(a1 + 32);
  xpc_activity_register("com.apple.bluetooth.CBMetrics", v3, handler);
}

void sub_100113DFC(uint64_t a1, void *a2)
{
  activity = a2;
  if (xpc_activity_should_defer(activity))
  {
    if (!xpc_activity_set_state(activity, 3) && dword_100B50C70 <= 90 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50C70, "[CBMetricsDaemon _startIfNeeded]_block_invoke_2", 90, "XPC activity defer failed");
    }
  }

  else
  {
    [*(a1 + 32) _reportEvents];
  }
}

void sub_1001144F8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10011454C(uint64_t a1)
{
  v16[0] = @"actn";
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) action];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_100B0F9E0;
  }

  v17[0] = v5;
  v16[1] = @"apID";
  v6 = [*v2 appID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_100B0F9E0;
  }

  v17[1] = v8;
  v16[2] = @"cid";
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) clientID]);
  v17[2] = v9;
  v16[3] = @"dsFl";
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) discoveryFlags]);
  v17[3] = v10;
  v16[4] = @"scnR";
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) scanRate]);
  v17[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];

  v15 = sub_10000F034(v13, v14);
  (*(*v15 + 240))(v15, v12);
}

void sub_100114704(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1001149E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  v6 = [v2 objectForKey:*(a1 + 40)];

  if (!v6)
  {
    v19 = objc_alloc_init(NSMutableArray);
    [*(*(a1 + 32) + 56) setObject:v19 forKeyedSubscript:*(a1 + 40)];

    v20 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
    [v20 addObject:*(*(*(a1 + 64) + 8) + 40)];

    goto LABEL_29;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {

LABEL_28:
    v21 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
    [v21 addObject:*(*(*(a1 + 64) + 8) + 40)];

    goto LABEL_29;
  }

  v9 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      v13 = [v12 discoveryFlags];
      if (v13 == [*(*(*(a1 + 64) + 8) + 40) discoveryFlags])
      {
        v14 = [v12 discoveryTypesPtr];
        v15 = [*(*(*(a1 + 64) + 8) + 40) discoveryTypesPtr];
        if (*v14 == *v15 && v14[2] == v15[2])
        {
          v17 = [v12 scanRateScreenOn];
          if (v17 == [*(*(*(a1 + 64) + 8) + 40) scanRateScreenOn])
          {
            v18 = [v12 scanRateScreenOff];
            if (v18 == [*(*(*(a1 + 64) + 8) + 40) scanRateScreenOff])
            {
              if ([*(a1 + 48) isEqual:@"agsN"])
              {
                [v12 setScanScreenOnCount:{objc_msgSend(v12, "scanScreenOnCount") + 1}];
              }

              else if ([*(a1 + 48) isEqual:@"agsF"])
              {
                [v12 setScanScreenOffCount:{objc_msgSend(v12, "scanScreenOffCount") + 1}];
              }

              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
              v9 = 1;
            }
          }
        }
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  result = [*(a1 + 32) _setupAggressiveScanMetricExportTimer];
  if (dword_100B50C70 <= 20)
  {
    if (dword_100B50C70 != -1)
    {
      return sub_1008069AC((a1 + 40), a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1008069AC((a1 + 40), a1);
    }
  }

  return result;
}

void *sub_100114D58(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 64);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;
    }

    v8 = v4[5];

    return [v8 _reportAggressiveScanMetricEvents];
  }

  return result;
}

void sub_100114F80(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v15 = a3;
  v19 = [CBDaemonXPCConnection indexForCBApprovedAppID:v20];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v15;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v17 = *v23;
    do
    {
      v21 = v4;
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v27[0] = v20;
        v26[0] = @"apID";
        v26[1] = @"apIX";
        v7 = [NSNumber numberWithUnsignedLong:v19];
        v27[1] = v7;
        v26[2] = @"dsFl";
        v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 discoveryFlags]);
        v27[2] = v8;
        v26[3] = @"dsTy";
        [v6 discoveryTypesPtr];
        v9 = CBDiscoveryTypesEnumToString();
        v27[3] = v9;
        v26[4] = @"scnR";
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 scanRateScreenOn]);
        v27[4] = v10;
        v26[5] = @"sonC";
        v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 scanScreenOnCount]);
        v27[5] = v11;
        v26[6] = @"srsO";
        v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 scanRateScreenOff]);
        v27[6] = v12;
        v26[7] = @"sofC";
        v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 scanScreenOffCount]);
        v27[7] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];

        [*(a1 + 32) addObject:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }
}

id sub_100115394(uint64_t a1)
{
  result = [*(a1 + 32) nearbyActionNoWakeType];
  if (result)
  {
    v4 = sub_10000F034(result, v3);
    v5 = [*(a1 + 32) nearbyActionNoWakeType];
    v6 = *(*v4 + 432);

    return v6(v4, v5);
  }

  return result;
}

id sub_1001154C0(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqual:@"RSSILevelNoChange"];
  v3 = 80;
  if (v2)
  {
    v3 = 72;
  }

  ++*(*(a1 + 40) + v3);
  v4 = *(a1 + 40);

  return [v4 _setupMetricExportTimer];
}

void *sub_100115678(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _whbMetricExportTimerFired];
  }

  return result;
}

uint64_t sub_100115954(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000F034(a1, a2) + 248);

  return v2();
}

void sub_100115CD4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_100115D20(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&obj, "%@\n", v7);
  objc_storeStrong((v6 + 40), obj);

  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 48) >= 11 && *(*(*(a1 + 40) + 8) + 24) >= 0x32uLL)
  {
    *a4 = 1;
  }
}

void sub_10011630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21)
  {
    sub_100117644(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011638C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  os_unfair_lock_lock(&unk_100B552F8);
  v9 = qword_100B552F0;
  v10 = [NSNumber numberWithLong:a5];
  v11 = [v9 objectForKeyedSubscript:v10];

  os_unfair_lock_unlock(&unk_100B552F8);
  if (v11)
  {
    v12 = [v11 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100117564;
    block[3] = &unk_100AE0BC0;
    block[4] = v11;
    block[5] = a3;
    v15 = a2;
    v16 = a4;
    dispatch_async(v12, block);
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    if (a2 > 3)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_100AE0C78[a2];
    }

    LogPrintF_safe(&dword_100B50CE0, "void _statusCallback(BTDiscoveryAgent _Nonnull, BTDiscoveryStatus, BTDevice _Nonnull, BTResult, void * _Nonnull)", 90, "### Ignoring status callback after remove: %s", v13);
  }
}

void sub_100116524(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  os_unfair_lock_lock(&unk_100B552F8);
  v9 = qword_100B552F0;
  v10 = [NSNumber numberWithLong:a5];
  v11 = [v9 objectForKeyedSubscript:v10];

  os_unfair_lock_unlock(&unk_100B552F8);
  if (v11)
  {
    v12 = [v11 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100117554;
    block[3] = &unk_100AE0BC0;
    block[4] = v11;
    block[5] = a3;
    v15 = a2;
    v16 = a4;
    dispatch_async(v12, block);
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    if (a2 > 2)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_100AE0C60[a2];
    }

    LogPrintF_safe(&dword_100B50CE0, "void _discoveryCallback(BTDiscoveryAgent _Nonnull, BTDiscoveryEvent, BTDevice _Nonnull, BTDeviceAttributes, void * _Nonnull)", 90, "### Ignoring discovery callback after remove: %s", v13);
  }
}

void sub_1001166BC(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 72) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 64) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 72), obj);
  }
}

void sub_100116E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10011710C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (v12)
  {
    sub_100806B90(va);
  }

  _Unwind_Resume(exception_object);
}

void sub_100117434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a15)
  {
    sub_100117644(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100117644(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100117A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v21);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100117A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  NSAppendPrintF_safe(&obj, "%@\n", a3);
  objc_storeStrong((v3 + 40), obj);
}

void sub_100117AE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  NSAppendPrintF_safe(&obj, "%@\n", a3);
  objc_storeStrong((v6 + 40), obj);
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 48) >= 11 && *(*(*(a1 + 40) + 8) + 24) >= 0x32uLL)
  {
    *a4 = 1;
  }
}

void *sub_100117F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[11])
  {
    return [result _receivedWHBUpdateEvent:a2 options:a3];
  }

  return result;
}

void sub_100117F6C(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    v4 = a2;
    v5 = objc_alloc_init(CBDevice);
    [v5 updateWithCBDevice:v4];

    [*(a1 + 40) deviceFound:v5 remoteController:0];
  }
}

void *sub_100117FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result deviceLost:a2 remoteController:0];
  }

  return result;
}

void sub_10011801C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
      {
        sub_100806C7C(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;

      goto LABEL_7;
    }

    if (dword_100B50DC0 <= 30)
    {
      v9 = 0;
      if (dword_100B50DC0 != -1)
      {
LABEL_10:
        LogPrintF_safe(&dword_100B50DC0, "[CBWHBDiscoveryDaemon activate]_block_invoke_4", 30, "Local discovery activated: %@", v5);
LABEL_7:
        v4 = v9;
        goto LABEL_12;
      }

      v8 = _LogCategory_Initialize();
      v4 = 0;
      if (v8)
      {
        v5 = *(a1 + 32);
        goto LABEL_10;
      }
    }
  }

LABEL_12:
}

void sub_10011876C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001187A0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v12];

  if (!v6)
  {
    v7 = objc_alloc_init(CBWHBRemoteController);
    [(CBWHBRemoteController *)v7 setControllerID:v12];
    [(CBWHBRemoteController *)v7 setDaemonServer:*(*(a1 + 32) + 48)];
    [(CBWHBRemoteController *)v7 setDiscoveryFlags:*(*(a1 + 32) + 16)];
    [(CBWHBRemoteController *)v7 setDispatchQueue:*(*(a1 + 32) + 80)];
    [(CBWHBRemoteController *)v7 setRemoteDevice:v5];
    [(CBWHBRemoteController *)v7 setWhbDaemon:*(a1 + 32)];
    [(CBWHBRemoteController *)v7 activate];
    v8 = *(*(a1 + 32) + 32);
    if (!v8)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      *(v10 + 32) = v9;

      v8 = *(*(a1 + 32) + 32);
    }

    [v8 setObject:v7 forKeyedSubscript:v12];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_100118E9C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [v9 lastSeenTicks];
  v6 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8 || v5 >= *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong(v7, a3);
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

id sub_100119550(void *a1)
{
  v1 = a1;
  v2 = [v1 idsDeviceIdentifier];
  v3 = [v1 name];
  v4 = [v1 roomName];
  v5 = [v1 model];
  v6 = [v1 sourceVersion];

  v7 = NSPrintF_safe("ID %@, Name '%@', Room '%@', Model %@, Version %@", v2, v3, v4, v5, v6);

  return v7;
}

void *sub_100119888(void *result, uint64_t a2)
{
  v2 = result[5];
  if (result[4] == *(v2 + 16))
  {
    return [*(v2 + 64) deviceFound:a2 remoteController:?];
  }

  return result;
}

void *sub_1001198A8(void *result, uint64_t a2)
{
  v2 = result[5];
  if (result[4] == *(v2 + 16))
  {
    return [*(v2 + 64) deviceLost:a2 remoteController:?];
  }

  return result;
}

void sub_1001198C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 != *(*(a1 + 40) + 16))
  {
    goto LABEL_2;
  }

  if (!v3)
  {
    if (dword_100B50DC0 <= 40)
    {
      if (dword_100B50DC0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v5 = *(a1 + 32);
      }

      LogPrintF_safe(&dword_100B50DC0, "[CBWHBRemoteController activate]_block_invoke_3", 40, "Remote controller activated: %@", v5);
    }

LABEL_24:
    *(*(a1 + 40) + 72) = 0;
    goto LABEL_2;
  }

  if (dword_100B50DC0 <= 40 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806F54(v4);
  }

  ++*(*(a1 + 40) + 72);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [*(a1 + 32) discoveredDevices];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [*(a1 + 32) deviceLostHandler];
        v12[2](v12, v11);
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) invalidate];
  v13 = *(a1 + 40);
  v14 = *(v13 + 16);
  *(v13 + 16) = 0;

  v15 = *(*(a1 + 40) + 72);
  if (v15 > 5)
  {
    if (dword_100B50DC0 <= 40 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
    {
      sub_100806FB0(v4);
    }
  }

  else
  {
    v16 = dispatch_time(0, 5000000000 * v15);
    v17 = *(a1 + 40);
    v18 = *(v17 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119B80;
    block[3] = &unk_100ADF5B8;
    block[4] = v17;
    dispatch_after(v16, v18, block);
  }

LABEL_2:
}

void *sub_100119B80(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1] & 1) == 0)
  {
    if (dword_100B50DC0 <= 40)
    {
      if (dword_100B50DC0 != -1 || (v3 = _LogCategory_Initialize(), result = *(a1 + 32), v3))
      {
        LogPrintF_safe(&dword_100B50DC0, "[CBWHBRemoteController activate]_block_invoke_4", 40, "### Remote controller activate retry attempt %llu:", result[9]);
        result = *(a1 + 32);
      }
    }

    return [result activate];
  }

  return result;
}

double sub_100119DC4(uint64_t a1)
{
  *(a1 + 112) = *off_100AE0E08;
  *(a1 + 128) = *off_100AE0E18;
  *(a1 + 144) = *off_100AE0E28;
  *(a1 + 160) = *off_100AE0E38;
  *(a1 + 48) = *off_100AE0DC8;
  *(a1 + 64) = *off_100AE0DD8;
  *(a1 + 80) = *off_100AE0DE8;
  *(a1 + 96) = *off_100AE0DF8;
  *(a1 + 176) = *off_100AE0E48;
  *(a1 + 192) = *off_100AE0E58;
  result = COERCE_DOUBLE("kTriggerEnterAoSMaxAge");
  *(a1 + 272) = "kTriggerMax";
  *(a1 + 240) = *off_100AE0E88;
  *(a1 + 256) = *off_100AE0E98;
  *(a1 + 208) = *off_100AE0E68;
  *(a1 + 224) = *off_100AE0E78;
  *(a1 + 2) = 0;
  *(a1 + 5) = 0;
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 12) = 100;
  *(a1 + 16) = 150;
  *(a1 + 20) = 0;
  *(a1 + 9) = 0;
  *(a1 + 24) = -25444;
  *(a1 + 30) = -25444;
  *(a1 + 36) = -25444;
  return result;
}

void sub_100119E54(uint64_t a1, uint64_t a2)
{
  *(a1 + 7) = 0;
  *(a1 + 5) = 0;
  *(a1 + 3) = 0;
  *(a1 + 9) = 0;
  if ((*a1 & 1) == 0)
  {
    v4 = sub_100017E6C();
    (*(*v4 + 160))(v4, a1);
  }

  sub_100119ED8(a1, 0, a2);
}

void sub_100119ED8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2;
  v57 = a2;
  v6 = _os_feature_enabled_impl();
  if (!v6)
  {
    goto LABEL_18;
  }

  if (qword_100B50930 != -1)
  {
    sub_100807068();
  }

  v6 = sub_1000F2E20(off_100B50928, v4);
  if ((v6 & 1) == 0)
  {
LABEL_18:
    if (!v4)
    {
      v6 = sub_10011ACAC(v6, a3);
      v4 = v6;
      v57 = v6;
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v7 = *(off_100B50938 + 25);
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = off_100B50938 + 200;
    do
    {
      v9 = *(v7 + 4);
      v10 = v9 >= v4;
      v11 = v9 < v4;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * v11];
    }

    while (v7);
    if (v8 == off_100B50938 + 200 || v4 < *(v8 + 4))
    {
LABEL_17:
      v8 = off_100B50938 + 200;
    }

    if (v8 == off_100B50938 + 200)
    {
LABEL_39:
      sub_10011E044(a1, v4, a3);
      goto LABEL_40;
    }

    v12 = sub_10011C518(v6, v4);
    if ((*v12 & 1) == 0)
    {
      v35 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v32 = "Dynamic Latency defaults writes enabled don't allow screen off dynamic latency transition.";
      v33 = v35;
      v34 = 2;
      goto LABEL_44;
    }

    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v13 = *(off_100B50938 + 156);
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = off_100B50938 + 1248;
    do
    {
      v15 = *(v13 + 16);
      v10 = v15 >= a3;
      v16 = v15 < a3;
      if (v10)
      {
        v14 = v13;
      }

      v13 = *&v13[8 * v16];
    }

    while (v13);
    if (v14 == off_100B50938 + 1248 || *(v14 + 16) > a3)
    {
LABEL_30:
      v14 = off_100B50938 + 1248;
    }

    v17 = off_100B50938;
    if (*(sub_10011C518(v12, v4) + 1))
    {
      goto LABEL_35;
    }

    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    v18 = sub_100630CB4(off_100B50938);
    if (v18)
    {
LABEL_35:
      v19 = a1;
      v20 = 1000;
LABEL_36:

      sub_10011DC64(v19, v20, a3);
      return;
    }

    v36 = sub_10011DDB0(v18, a3);
    if (v36)
    {
      v20 = v36;
      v19 = a1;
      goto LABEL_36;
    }

    v37 = v17 + 1248;
    if (v14 != v37)
    {
      if (*(sub_10011C518(v36, v4) + 20) != 6)
      {
        if (qword_100B50940 != -1)
        {
          sub_10080707C();
        }

        *buf = &v57;
        if (*(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 84) == 2)
        {
          if (qword_100B50AE0 == -1)
          {
            goto LABEL_54;
          }

          goto LABEL_127;
        }

        goto LABEL_104;
      }

LABEL_40:
      v21 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = a1[1];
      v23 = a1[3];
      v24 = a1[5];
      v25 = a1[2];
      v26 = a1[8];
      v27 = a1[7];
      v28 = *a1;
      v29 = a1[6];
      v30 = a1[9];
      v31 = a1[4];
      *buf = 67111424;
      *&buf[4] = v22;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v24;
      v63 = 1024;
      v64 = v25;
      v65 = 1024;
      v66 = v26;
      v67 = 1024;
      v68 = v27;
      v69 = 1024;
      v70 = v28;
      v71 = 1024;
      v72 = v29;
      v73 = 1024;
      v74 = v30;
      v75 = 1024;
      v76 = v31;
      v32 = "Dynamic Latency Trigger fKeyboardOn =%d, fVoiceOverOn=%d, fGameModeOn=%d, fGarageBandOn=%d, fSpatialVideoOn=%d, fSpatialMusicOn=%d, fScreenOn =%d, fExpanseOn =%d, fAudioInputAggregateOn=%d, fConsoleGameModeOn=%d";
      v33 = v21;
      v34 = 62;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      return;
    }

    if (qword_100B50940 != -1)
    {
      sub_10080707C();
    }

    *buf = &v57;
    if (**(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 56) == 240)
    {
      goto LABEL_63;
    }

    if (qword_100B50940 != -1)
    {
      sub_100807090();
    }

    *buf = &v57;
    v39 = sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf);
    if (**(*(v39 + 40) + 56) == 241)
    {
LABEL_63:
      sub_10011DEA4(a1, v57, a3);
      goto LABEL_40;
    }

    if (*a1 & 1) != 0 || (v39 = sub_10011C518(v39, v57), *(v39 + 20) == 7) || (v39 = sub_10011C990(a1, 0), (v39) || (a1[8] & 1) != 0 || (a1[7] & 1) != 0 || (a1[6] & 1) != 0 || (a1[9] & 1) != 0 || (a1[4] & 1) != 0 || (a1[5])
    {
      v41 = sub_10000C798(v39, v40);
      v42 = (*(*v41 + 840))(v41, 5);
      if (v42 & 1) == 0 && (a1[1] & 1) == 0 && (a1[3] & 1) == 0 && (a1[5] & 1) == 0 && (a1[2] & 1) == 0 && (a1[8] & 1) == 0 && (a1[7] & 1) == 0 && a1[4] != 1 || *a1 != 1 || (a1[6] & 1) != 0 || (a1[9] & 1) != 0 || (v42 = sub_10011DF74(v42, v57), (v42))
      {
        if (((a1[1] & 1) != 0 || (a1[3] & 1) != 0 || (a1[5] & 1) != 0 || (a1[2] & 1) != 0 || (a1[8] & 1) != 0 || (a1[7] & 1) != 0 || (a1[4] & 1) != 0 || (*a1 & 1) == 0) && (a1[6] & 1) == 0 && a1[9] != 1 || *(sub_10011C518(v42, v57) + 20) == 6)
        {
          goto LABEL_40;
        }

        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        *buf = &v57;
        if (*(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 84) != 2)
        {
          goto LABEL_40;
        }

        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        *buf = &v57;
        if (*(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 84) == 2)
        {
          if (qword_100B50AE0 == -1)
          {
LABEL_54:
            if (sub_1004DF814(qword_100B50AD8, a3) < 8)
            {
LABEL_55:
              v38 = 150;
LABEL_56:
              sub_10011DC64(a1, v38, a3);
              goto LABEL_40;
            }

            goto LABEL_104;
          }

LABEL_127:
          sub_1008070B8();
          goto LABEL_54;
        }

LABEL_104:
        v43 = 6;
        goto LABEL_105;
      }

      if (*(sub_10011C518(v42, v57) + 20) == 6)
      {
        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        *buf = &v57;
        if (*(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 84) == 2)
        {
          if (qword_100B50AE0 != -1)
          {
            sub_1008070B8();
          }

          if (sub_1004DF814(qword_100B50AD8, a3) < 8)
          {
            goto LABEL_55;
          }
        }

        v55 = qword_100BCE8D0;
        v56 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v56)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Adaptive Latency start with valid link", buf, 2u);
        }

        *(sub_10011C518(v56, v57) + 44) = -1;
        *(a1 + 8) = 60;
        v43 = 1;
LABEL_105:
        v44 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v45 = a1[1];
          v46 = a1[3];
          v47 = a1[5];
          v48 = a1[2];
          v49 = a1[8];
          v50 = a1[7];
          v51 = *a1;
          v52 = a1[6];
          v53 = a1[9];
          v54 = a1[4];
          *buf = 67111680;
          *&buf[4] = v45;
          v59 = 1024;
          v60 = v46;
          v61 = 1024;
          v62 = v47;
          v63 = 1024;
          v64 = v48;
          v65 = 1024;
          v66 = v49;
          v67 = 1024;
          v68 = v50;
          v69 = 1024;
          v70 = v14 != v37;
          v71 = 1024;
          v72 = v51;
          v73 = 1024;
          v74 = v52;
          v75 = 1024;
          v76 = v53;
          v77 = 1024;
          v78 = v54;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Dynamic Latency Trigger fKeyboardOn =%d, fVoiceOverOn=%d, fGameModeOn=%d, fGarageBandOn=%d, fSpatialVideoOn=%d, fSpatialMusicOn=%d, aggregated = %d, fScreenOn =%d, fExpanseOn =%d, fAudioInputAggregateOn =%d, fConsoleGameModeOn=%d", buf, 0x44u);
        }

        sub_10011D938(a1, a3, v43);
        goto LABEL_40;
      }
    }

    else if (*(sub_10011C518(v39, v57) + 20) == 6)
    {
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      *buf = &v57;
      if (*(sub_10005E16C(off_100B50938 + 192, &v57, &unk_1008A27D8, buf)[5] + 84) == 2)
      {
        if (qword_100B50AE0 != -1)
        {
          sub_1008070B8();
        }

        if (sub_1004DF814(qword_100B50AD8, a3) < 8)
        {
          goto LABEL_55;
        }
      }

      v43 = 7;
      goto LABEL_105;
    }

    sub_10011D938(a1, a3, 6);
    v38 = 2000;
    goto LABEL_56;
  }
}

void sub_10011A858(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_10011ABBC(a1, a2);
  v7 = qword_100BCE8D0;
  v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = a1[7];
      *buf = 67109376;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Latency a2dpSpatialMusicStateChanged:%d, %d", buf, 0xEu);
    }

    if (a1[7] != v3)
    {
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      sub_10062B504(off_100B50938, v3);
      a1[7] = v3;
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      v10 = sub_1006391C0(off_100B50938);
      v11 = sub_10011ACAC(v10, a2);
      v19 = v11;
      if (v11)
      {
        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        v12 = *(off_100B50938 + 25);
        if (!v12)
        {
          goto LABEL_20;
        }

        v13 = off_100B50938 + 200;
        do
        {
          v14 = *(v12 + 4);
          v15 = v14 >= v11;
          v16 = v14 < v11;
          if (v15)
          {
            v13 = v12;
          }

          v12 = *&v12[8 * v16];
        }

        while (v12);
        if (v13 == off_100B50938 + 200 || v11 < *(v13 + 4))
        {
LABEL_20:
          v13 = off_100B50938 + 200;
        }

        if (v13 != off_100B50938 + 200)
        {
          *buf = &v19;
          if (*sub_10005E16C(off_100B50938 + 192, &v19, &unk_1008A27D8, buf)[5])
          {
            if (qword_100B50940 != -1)
            {
              sub_100807090();
            }

            sub_10062F4E8(off_100B50938, buf);
            if (qword_100B50940 != -1)
            {
              sub_100807090();
            }

            v20 = &v19;
            v17 = *sub_10005E16C(off_100B50938 + 192, &v19, &unk_1008A27D8, &v20)[5];
            if (*(v17 + 503) < 0)
            {
              operator delete(*(v17 + 480));
            }

            *(v17 + 480) = *buf;
            *(v17 + 496) = v22;
            if (a1[7] == 1 && a1[5] == 1)
            {
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              *buf = &v19;
              *(*sub_10005E16C(off_100B50938 + 192, &v19, &unk_1008A27D8, buf)[5] + 161) = 1;
            }
          }
        }
      }

      if ((*a1 & 1) == 0)
      {
        v18 = sub_100017E6C();
        (*(*v18 + 160))(v18, a1);
      }

      sub_100119ED8(a1, 0, a2);
    }
  }

  else if (v8)
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Latency a2dpSpatialMusicStateChanged return a2dpHandle:%d", buf, 8u);
  }
}

void sub_10011AB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011ABBC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 840))(v3, 5);
  if (!v4)
  {
    return 1;
  }

  v5 = sub_10011ACAC(v4, v2);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v7 = *(off_100B50938 + 25);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = off_100B50938 + 200;
  do
  {
    v9 = *(v7 + 4);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *&v7[8 * v11];
  }

  while (v7);
  if (v8 == off_100B50938 + 200 || v6 < *(v8 + 4))
  {
LABEL_13:
    v8 = off_100B50938 + 200;
  }

  if (v8 == off_100B50938 + 200)
  {
    return 1;
  }

  v12 = sub_10011C518(v5, v6);
  result = 0;
  *v12 = 0;
  return result;
}

uint64_t sub_10011ACAC(uint64_t a1, int a2)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  v3 = *(off_100B50938 + 24);
  if (v3 == (off_100B50938 + 200))
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(v3[5] + 92);
    v6 = v5 != a2 || v5 == 0;
    if (!v6)
    {
      result = v3[4];
    }

    v7 = v3[1];
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
        v8 = v3[2];
        v6 = *v8 == v3;
        v3 = v8;
      }

      while (!v6);
    }

    v3 = v8;
  }

  while (v8 != (off_100B50938 + 200));
  return result;
}

void sub_10011AD54(unsigned __int8 *a1)
{
  if (qword_100B50940 != -1)
  {
    sub_10080707C();
  }

  if (*(off_100B50938 + 26))
  {
    v2 = *(off_100B50938 + 24);
    v3 = off_100B50938 + 200;
    if (v2 != off_100B50938 + 200)
    {
      do
      {
        v4 = *(v2 + 5);
        if (*(v4 + 92) && sub_10011ABBC(a1, *(v4 + 92)))
        {
          v5 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dynamic Latency screen call decision for default logic", v9, 2u);
          }

          sub_100119ED8(a1, 0, *(v4 + 92));
        }

        v6 = *(v2 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v2 + 2);
            v8 = *v7 == v2;
            v2 = v7;
          }

          while (!v8);
        }

        v2 = v7;
      }

      while (v7 != v3);
    }
  }
}

void sub_10011AE7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (sub_10011ABBC(a1, a2))
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "off";
      if (a1[8])
      {
        v8 = "on";
      }

      else
      {
        v8 = "off";
      }

      if (v3)
      {
        v7 = "on";
      }

      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adaptive Latency fSpatialVideoOn from %s -> %s", buf, 0x16u);
    }

    if (a1[8] != v3)
    {
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      sub_10062B504(off_100B50938, v3);
      a1[8] = v3;
      if (qword_100B50940 != -1)
      {
        sub_100807090();
      }

      v9 = sub_1006391C0(off_100B50938);
      v10 = sub_10011ACAC(v9, a2);
      v18 = v10;
      if (v10)
      {
        if (qword_100B50940 != -1)
        {
          sub_100807090();
        }

        v11 = *(off_100B50938 + 25);
        if (!v11)
        {
          goto LABEL_25;
        }

        v12 = off_100B50938 + 200;
        do
        {
          v13 = *(v11 + 4);
          v14 = v13 >= v10;
          v15 = v13 < v10;
          if (v14)
          {
            v12 = v11;
          }

          v11 = *&v11[8 * v15];
        }

        while (v11);
        if (v12 == off_100B50938 + 200 || v10 < *(v12 + 4))
        {
LABEL_25:
          v12 = off_100B50938 + 200;
        }

        if (v12 != off_100B50938 + 200)
        {
          *buf = &v18;
          if (*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5])
          {
            if (a1[8] == 1)
            {
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              sub_10062F4E8(off_100B50938, buf);
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              v19 = &v18;
              v16 = *sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, &v19)[5];
              if (*(v16 + 503) < 0)
              {
                operator delete(*(v16 + 480));
              }

              *(v16 + 480) = *buf;
              *(v16 + 496) = *&buf[16];
              if ((a1[8] & 1) != 0 && a1[5] == 1)
              {
                if (qword_100B50940 != -1)
                {
                  sub_100807090();
                }

                *buf = &v18;
                *(*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5] + 162) = 1;
              }
            }
          }
        }
      }

      if ((*a1 & 1) == 0)
      {
        v17 = sub_100017E6C();
        (*(*v17 + 160))(v17, a1);
      }

      sub_100119ED8(a1, 0, a2);
    }
  }
}

void sub_10011B1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011B1C8(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "off";
    if (a1[3])
    {
      v8 = "on";
    }

    else
    {
      v8 = "off";
    }

    if (a3)
    {
      v7 = "on";
    }

    *buf = 136315394;
    *&buf[4] = v8;
    v20 = 2080;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adaptive Latency fVoiceOverOn from %s -> %s", buf, 0x16u);
  }

  v9 = sub_10011ABBC(a1, a2);
  if (v9)
  {
    a1[3] = a3;
    if (a3)
    {
      if (a1[5] == 1)
      {
        v10 = sub_10011ACAC(v9, a2);
        v18 = v10;
        if (v10)
        {
          v11 = v10;
          if (qword_100B50940 != -1)
          {
            sub_100807090();
          }

          v12 = *(off_100B50938 + 25);
          if (!v12)
          {
            goto LABEL_22;
          }

          v13 = off_100B50938 + 200;
          do
          {
            v14 = *(v12 + 4);
            v15 = v14 >= v11;
            v16 = v14 < v11;
            if (v15)
            {
              v13 = v12;
            }

            v12 = *&v12[8 * v16];
          }

          while (v12);
          if (v13 == off_100B50938 + 200 || v11 < *(v13 + 4))
          {
LABEL_22:
            v13 = off_100B50938 + 200;
          }

          if (v13 != off_100B50938 + 200)
          {
            *buf = &v18;
            if (*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5])
            {
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              *buf = &v18;
              *(*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5] + 164) = 1;
            }
          }
        }
      }
    }

    if ((*a1 & 1) == 0)
    {
      v17 = sub_100017E6C();
      (*(*v17 + 160))(v17, a1);
    }

    sub_100119ED8(a1, 0, a2);
  }
}

void sub_10011B41C(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "off";
    if (a1[9])
    {
      v8 = "on";
    }

    else
    {
      v8 = "off";
    }

    if (a3)
    {
      v7 = "on";
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adaptive Latency A2dpAudioAndInputAggregationChanged from %s -> %s", &v10, 0x16u);
  }

  if (sub_10011ABBC(a1, a2))
  {
    a1[9] = a3;
    if ((*a1 & 1) == 0)
    {
      v9 = sub_100017E6C();
      (*(*v9 + 160))(v9, a1);
    }

    sub_100119ED8(a1, 0, a2);
  }
}

void sub_10011B558(unsigned __int8 *a1, int a2)
{
  if (a1[1] != a2)
  {
    a1[1] = a2;
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (a2)
      {
        v5 = "enabled";
      }

      v12 = 136315138;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dynamic Latency keyboard %s", &v12, 0xCu);
    }

    if (qword_100B50940 != -1)
    {
      sub_100807090();
    }

    if (*(off_100B50938 + 26))
    {
      v6 = *(off_100B50938 + 24);
      v7 = off_100B50938 + 200;
      if (v6 != off_100B50938 + 200)
      {
        do
        {
          v8 = *(v6 + 5);
          if (*(v8 + 92))
          {
            sub_100119ED8(a1, 0, *(v8 + 92));
          }

          v9 = *(v6 + 1);
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
              v10 = *(v6 + 2);
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v7);
      }
    }
  }
}

void sub_10011B6BC(unsigned __int8 *a1, int a2)
{
  if (a1[2] != a2)
  {
    a1[2] = a2;
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (a2)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dynamic Latency GarageBand %s", buf, 0xCu);
    }

    if (qword_100B50940 != -1)
    {
      sub_100807090();
    }

    if (*(off_100B50938 + 26))
    {
      v6 = *(off_100B50938 + 24);
      v7 = off_100B50938 + 200;
      if (v6 != off_100B50938 + 200)
      {
        do
        {
          v8 = *(v6 + 5);
          v9 = *(v8 + 92);
          if (*(v8 + 92))
          {
            if (a1[2] == 1 && a1[5] == 1)
            {
              if (qword_100B50940 != -1)
              {
                sub_100807090();
              }

              v18 = sub_10062D8E8(off_100B50938, *(v8 + 92));
              if (v18)
              {
                if (qword_100B50940 != -1)
                {
                  sub_100807090();
                }

                v10 = *(off_100B50938 + 25);
                if (!v10)
                {
                  goto LABEL_26;
                }

                v11 = off_100B50938 + 200;
                do
                {
                  v12 = *(v10 + 4);
                  v13 = v12 >= v18;
                  v14 = v12 < v18;
                  if (v13)
                  {
                    v11 = v10;
                  }

                  v10 = *&v10[8 * v14];
                }

                while (v10);
                if (v11 == off_100B50938 + 200 || v18 < *(v11 + 4))
                {
LABEL_26:
                  v11 = off_100B50938 + 200;
                }

                if (v11 != off_100B50938 + 200)
                {
                  *buf = &v18;
                  if (*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5])
                  {
                    if (qword_100B50940 != -1)
                    {
                      sub_100807090();
                    }

                    *buf = &v18;
                    *(*sub_10005E16C(off_100B50938 + 192, &v18, &unk_1008A27D8, buf)[5] + 165) = 1;
                  }
                }
              }

              v9 = *(v8 + 92);
            }

            sub_100119ED8(a1, 0, v9);
          }

          v15 = *(v6 + 1);
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = *(v6 + 2);
              v17 = *v16 == v6;
              v6 = v16;
            }

            while (!v17);
          }

          v6 = v16;
        }

        while (v16 != v7);
      }
    }
  }
}