void start()
{
  v0 = objc_autoreleasePoolPush();
  LogControl();
  if (dword_10001A0C8 <= 30 && (dword_10001A0C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10001A0C8, "int main(int, const char **)", 30, "Starting AccessorySensorManager Daemon");
  }

  v1 = +[ASMResourceManagerDaemon sharedInstance];
  [v1 activate];

  v2 = +[ASMServicesDaemon sharedInstance];
  [v2 activate];

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_1000018C4(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  if (v1 == 1)
  {
    v4 = *(*(a1 + 32) + 24);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = v5;

      v4 = *(*(a1 + 32) + 24);
    }

    v15 = v4;
    v8 = (a1 + 52);
    v9 = [NSNumber numberWithUnsignedChar:*(a1 + 52)];
    v10 = [v15 objectForKeyedSubscript:v9];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = [NSNumber numberWithUnsignedChar:*v8];
      [v15 setObject:v10 forKeyedSubscript:v11];
    }

    v13 = *(a1 + 40);
    v12 = (a1 + 40);
    if (([v10 containsObject:v13] & 1) == 0)
    {
      if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_100008584(v12, v8, v2);
      }

      [v10 addObject:*v12];
    }
  }

  else
  {
    if (dword_10001A198 > 90)
    {
      return;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v1 = *v2;
    }

    if (v1 > 2)
    {
      v14 = "?";
    }

    else
    {
      v14 = off_1000143E8[v1];
    }

    LogPrintF(&dword_10001A198, "[ASMDataPipe subscribeToDataType:forResourceCategory:delegate:]_block_invoke", 90, "Subscribing to %s resource category through AACP is not supported", v14);
  }
}

void sub_100001B68(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  if (v1 == 1)
  {
    v4 = *(*(a1 + 32) + 24);
    if (v4)
    {
      v11 = v4;
      v5 = (a1 + 52);
      v6 = [NSNumber numberWithUnsignedChar:*(a1 + 52)];
      v7 = [v11 objectForKeyedSubscript:v6];

      v9 = *(a1 + 40);
      v8 = (a1 + 40);
      if ([v7 containsObject:v9])
      {
        [v7 removeObject:*v8];
        if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
        {
          sub_100008620(v8, v5, v2);
        }

        [v7 removeObject:*v8];
      }
    }
  }

  else
  {
    if (dword_10001A198 > 90)
    {
      return;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v1 = *v2;
    }

    if (v1 > 2)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_1000143E8[v1];
    }

    LogPrintF(&dword_10001A198, "[ASMDataPipe unsubscribeFromDataType:forResourceCategory:delegate:]_block_invoke", 90, "Unsubscribing from %s resource category through AACP is not supported", v10);
  }
}

void sub_100002208(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a4;
  dispatch_assert_queue_V2(v8[7]);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (dword_10001A198 <= 60 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_100008890();
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      goto LABEL_14;
    }

    if (dword_10001A198 <= 60 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008850();
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
        {
          sub_1000088B0();
        }

LABEL_28:
        v8[4] = 0;
        *(v8 + 40) = 0;
        BTSessionDetachWithQueue();
        CFRelease(v8);
        goto LABEL_29;
      }

LABEL_14:
      if (dword_10001A198 <= 40 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_10001A198, "void _btSessionEventHandler(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 40, "BTSession unknown event %d, result %#m\n", a2);
      }

      goto LABEL_29;
    }

    if (dword_10001A198 <= 30)
    {
      if (dword_10001A198 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        v9 = sub_1000088F0();
      }
    }

    if (!v8[4] && dword_10001A198 <= 30)
    {
      if (dword_10001A198 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_100008930(v9, v10, v11);
      }
    }

    v8[4] = a1;
    *(v8 + 40) = 0;
    [(dispatch_queue_t *)v8 subscribeToImagePackets];
  }

LABEL_29:

  objc_autoreleasePoolPop(v7);
}

void sub_100002420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3 == 0x1000000)
  {
    v8 = a6[7];
    v9 = a6;
    dispatch_assert_queue_V2(v8);
    v11 = [[NSData alloc] initWithBytes:a4 length:a5];
    [v9 handleDataRx:v11 dataSize:a5];
  }

  else if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_10000894C(a3);
  }
}

void sub_100002F68(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 40);
  v15 = v7;
  v9 = [v7 identifier];
  v10 = [v9 UUIDString];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_6:
    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008AE8(v15);
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v15 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_11;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
}

void sub_100003D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003D5C(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1[4] + 56) identifier];
    v5 = NSErrorF(NSOSStatusErrorDomain, 4294960569, "Unable to write to peripheral UUID: %@", v3);

    v4 = a1[5];
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }
  }
}

void sub_1000045C4(id a1)
{
  v1 = objc_alloc_init(ASMPeripheralControl);
  v2 = qword_10001A608;
  qword_10001A608 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000048D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _invalidateSecureSensorGATTServiceForPeripheral:v6];
  v4 = [v6 lowPowerDataLinkHandle];

  if (v4)
  {
    v5 = [v6 lowPowerDataLinkHandle];
    [v5 invalidate];

    [v6 setLowPowerDataLinkHandle:0];
  }
}

uint64_t sub_100004E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      LogPrintF(&dword_10001A398, "[ASMPeripheralControl _writeWithData:characteristic:identifier:completion:]_block_invoke", 30, "Peripheral identifier: %@, write data with error %@", *(a1 + 32), v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return _objc_release_x1(v5, v3);
}

id sub_100005190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100008F20(a1, a2, a3);
    }
  }

  result = [*(v3 + 32) _restartIfNeeded];
  if (dword_10001A398 <= 30)
  {
    v5 = result;
    if (dword_10001A398 != -1)
    {
      return sub_100008F3C(v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100008F3C(v5);
    }
  }

  return result;
}

void sub_100005224(id a1)
{
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100008F94(a1, v1, v2);
    }
  }
}

void sub_10000527C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100008FB0(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _deviceLost:v3];
}

void sub_10000530C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_100008FF0(v5);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    sub_100009030(a1);
  }
}

void sub_100005780(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (dword_10001A398 <= 90 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_1000092EC(a1);
    }

    [*(a1 + 40) invalidate];
    v3 = v4;
  }
}

void sub_1000059C8(id a1)
{
  v1 = objc_alloc_init(ASMResourceManagerDaemon);
  v2 = qword_10001A618;
  qword_10001A618 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100005B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A408 <= 30)
  {
    if (dword_10001A408 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100009380(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

id sub_100005C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A408 <= 30)
  {
    if (dword_10001A408 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_10000939C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

id sub_100005D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A408 <= 30)
  {
    if (dword_10001A408 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1000093B8(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _invalidate];
}

void sub_1000061AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006248;
  v7[3] = &unk_1000144A0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100006248(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v2 _polarisResourceStart:v3];
  }
}

void sub_1000062C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000635C;
  v7[3] = &unk_1000144A0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10000635C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v2 _polarisResourceStop:v3];
  }
}

void sub_100006574(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_10001A408 <= 30)
  {
    v4 = v2;
    if (dword_10001A408 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      sub_100009604();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_100006A90(id a1)
{
  v1 = objc_alloc_init(ASMServicesDaemon);
  v2 = qword_10001A628;
  qword_10001A628 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100006F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100009680(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

id sub_1000070E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_10000969C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

void sub_1000071E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1000096B8(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 24))
  {
    os_state_remove_handler();
    *(*(v3 + 32) + 24) = 0;
    v4 = *(v3 + 32);
  }

  [*(v4 + 48) invalidate];
  v5 = *(v3 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;
}

void sub_100007B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007B64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007B7C(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_10001A478 <= 90)
  {
    if (dword_10001A478 != -1)
    {
LABEL_4:
      LogPrintF(&dword_10001A478, "[ASMServicesXPCConnection modify:peripheralConfiguration:identifier:completion:]_block_invoke", 90, "### modifyPeripheralConfiguration failed %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100007E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007E88(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_10001A478 <= 90)
  {
    if (dword_10001A478 != -1)
    {
LABEL_4:
      LogPrintF(&dword_10001A478, "[ASMServicesXPCConnection write:withData:characteristic:identifier:completion:]_block_invoke", 90, "### writeWithData failed %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100008070(uint64_t result)
{
  v1 = result;
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100009928(v1);
    }
  }

  *(*(v1 + 32) + 16) = 0;
  return result;
}

uint64_t sub_100008584(void *a1, _BYTE *a2, unsigned int *a3)
{
  if ((*a2 - 1) > 3u)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = off_100014400[(*a2 - 1)];
  }

  v4 = *a3;
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1000143E8[v4];
  }

  return LogPrintF(&dword_10001A198, "[ASMDataPipe subscribeToDataType:forResourceCategory:delegate:]_block_invoke", 30, "New subscriber: %@, dataType: %s, resourceCategory: %s", *a1, v3, v5);
}

uint64_t sub_100008620(void *a1, _BYTE *a2, unsigned int *a3)
{
  if ((*a2 - 1) > 3u)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = off_100014400[(*a2 - 1)];
  }

  v4 = *a3;
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1000143E8[v4];
  }

  return LogPrintF(&dword_10001A198, "[ASMDataPipe unsubscribeFromDataType:forResourceCategory:delegate:]_block_invoke", 30, "Subscriber removed: %@, dataType: %s, resourceCategory: %s", *a1, v3, v5);
}

void sub_100008700(void *a1)
{
  v1 = [a1 buffer];
  LogPrintF(&dword_10001A198, "-[ASMDataPipe updateReassemblyWith:]", 10, "Last segment of SDU received, buffer length %d", [v1 length]);
}

void sub_1000089D0(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&dword_10001A208, "[ASMGATTConnectionManager _activateWithPeripheral:completion:]", 30, "Activating ASMGATTConnectionManager for device UUID: %@", v1);
}

uint64_t sub_100008B28(char a1)
{
  v1 = @"OFF";
  if (a1)
  {
    v1 = @"ON";
  }

  return LogPrintF(&dword_10001A208, "[ASMGATTConnectionManager centralManagerDidUpdateState:]", 30, "centralManager state %@", v1);
}

void sub_100008C40(void *a1, uint64_t a2)
{
  v3 = [a1 characteristics];
  LogPrintF(&dword_10001A208, "[ASMGATTConnectionManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "peripheral: %@, found characteristics: %@", a2, v3);
}

void sub_100008CAC(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_10001A208, "[ASMGATTConnectionManager peripheral:didUpdateNotificationStateForCharacteristic:error:]", 90, "Error changing notification state: %@", v1);
}

void sub_100008D24(void *a1, uint64_t a2)
{
  v3 = [a1 localizedDescription];
  LogPrintF(&dword_10001A208, "[ASMGATTConnectionManager peripheral:didWriteValueForCharacteristic:error:]", 90, "### error writing characteristic value: %@ for characteristic: %@", v3, a2);
}

uint64_t sub_100008F3C(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_10001A398, "[ASMPeripheralControl _accessoryDiscoveryEnsureStarted]_block_invoke", 30, "ASMPeripheralControl didRestart: %s", v1);
}

uint64_t sub_1000090B4(uint64_t result)
{
  if (dword_10001A398 <= 90)
  {
    v1 = result;
    if (dword_10001A398 != -1)
    {
      return LogPrintF(&dword_10001A398, "[ASMPeripheralControl _deviceFound:]", 90, "AudioAccessoryDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_10001A398, "[ASMPeripheralControl _deviceFound:]", 90, "AudioAccessoryDevice identifier not found, %@", v1);
    }
  }

  return result;
}

uint64_t sub_100009170(uint64_t result)
{
  if (dword_10001A398 <= 90)
  {
    v1 = result;
    if (dword_10001A398 != -1)
    {
      return LogPrintF(&dword_10001A398, "[ASMPeripheralControl _deviceLost:]", 90, "AudioAccessoryDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_10001A398, "[ASMPeripheralControl _deviceLost:]", 90, "AudioAccessoryDevice identifier not found, %@", v1);
    }
  }

  return result;
}

uint64_t sub_1000091EC(uint64_t result, uint64_t a2, void *a3)
{
  if (dword_10001A398 <= 90)
  {
    v5 = result;
    if (dword_10001A398 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_10001A398, "[ASMPeripheralControl _activateSecureSensorGATTServiceForPeripheral:]", 90, "ASMPeripheral UUID: %@ GATTConnection already active", v5);
    }
  }

  *a3 = a2;
  return result;
}

void sub_10000927C()
{
  if (dword_10001A398 <= 90 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10001A398, "[ASMPeripheralControl _activateSecureSensorGATTServiceForPeripheral:]", 90, "ASMPeripheral UUID: %@ missing identifier", 0);
  }
}

uint64_t sub_1000093D4()
{
  sub_100006A40();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_10001A408, "[ASMResourceManagerDaemon _prefsChanged]", 30, "Should enable open domain debug graph: %s -> %s", v2, v0);
}

uint64_t sub_10000942C()
{
  sub_100006A40();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_10001A408, "[ASMResourceManagerDaemon _prefsChanged]", 30, "Should fake sensor available %s -> %s", v2, v0);
}

uint64_t sub_100009484()
{
  sub_100006A40();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_10001A408, "[ASMResourceManagerDaemon _prefsChanged]", 30, "Should allow debug GATT characteristic %s -> %s", v2, v0);
}

uint64_t sub_1000094DC()
{
  sub_100006A40();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_10001A408, "[ASMResourceManagerDaemon _prefsChanged]", 30, "Should flush peripheral payload to disk: %s -> %s", v2, v0);
}

void sub_100009604()
{
  v0 = CUPrintXPC();
  LogPrintF(&dword_10001A408, "[ASMResourceManagerDaemon _handleXPCLaunchEvent]_block_invoke", 30, "Got %s XPC launch event: %@", "com.apple.AudioAccessoryDiscovery", v0);
}

void sub_100009718(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_10001A478, "-[ASMServicesDaemon _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}", [v1 processIdentifier]);
}

void sub_10000977C(void *a1)
{
  v2 = [a1 xpcCnx];
  LogPrintF(&dword_10001A478, "-[ASMServicesDaemon _xpcConnectionInterrupted:]", 20, "XPC connection interrupted: %#{pid}, connectionID: %u", [v2 processIdentifier], objc_msgSend(a1, "connectionID"));
}