uint64_t sub_10014FA1C(uint64_t result, uint64_t a2)
{
  if (dword_100B51110 <= 9)
  {
    v2 = a2;
    v3 = result;
    if (dword_100B51110 != -1)
    {
      return sub_10080E9E4(v3, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10080E9E4(v3, v2);
    }
  }

  return result;
}

void sub_10014FA80(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v7 = a1;
  v8 = qword_100B55340;
  v9 = [NSNumber numberWithUnsignedShort:a1];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [[NSData alloc] initWithBytes:a2 length:a3];
    v12 = [v10 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FD18;
    block[3] = &unk_100AE2470;
    v14 = a4;
    block[4] = v10;
    block[5] = v11;
    dispatch_async(v12, block);
  }

  else if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B51110, "void _isoDataReceivedCallback(ISO_CONNECTION_HANDLE, uint8_t * _Nonnull, uint16_t, uint8_t)", 90, "### ISO data received stream not found: cnxH 0x%X", v7);
  }
}

void sub_10014FC10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = CBErrorF((v2 + 330000), "ISO write failed");
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) _completeWriteRequest:*(a1 + 40) error:v3];
}

void sub_10014FC9C(uint64_t a1)
{
  v2 = CBErrorF((*(a1 + 48) + 330000), "Write start failed");
  [*(a1 + 32) _completeWriteRequest:*(a1 + 40) error:?];
}

void sub_10014FD18(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v3 = "?";
    if (v2 == 2)
    {
      v3 = "Lost";
    }

    if (v2 == 1)
    {
      v4 = "Invalid";
    }

    else
    {
      v4 = v3;
    }

    v5 = CBErrorF(4294960563, "Packet status: %s", v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [*(a1 + 32) _receivedData:*(a1 + 40) error:v5];
}

void sub_10014FDCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CBErrorF((v2 + 330000), "ISO setup failed");
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) _activateCompletedWithError:v3];
  [CBStackISOStreamBTStack _processNextConfigRequest:*(a1 + 44)];
}

void sub_10014FE68(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CBErrorF((v2 + 330000), "ISO remove failed");
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) _invalidateCoreWithError:v3];
  [CBStackISOStreamBTStack _processNextConfigRequest:*(a1 + 44)];
}

void sub_100150AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v25[2](v25);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100150B9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    if (dword_100B511E0 <= 90)
    {
      if (dword_100B511E0 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_10080EACC(result, a2, a3);
      }
    }

    if (qword_100B50B88 != -1)
    {
      sub_10080EAE8();
    }

    v4 = qword_100B50B80;
    v5 = *(*(*(v3 + 32) + 8) + 24);

    return sub_100079604(v4, v5);
  }

  return result;
}

void sub_10015125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_100151370(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v11 = 0;
  [v2 setLowPowerModeWithReason:v3 error:&v11];
  v4 = v11;
  v5 = *(*(a1 + 32) + 136);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151440;
  block[3] = &unk_100AE2500;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

void sub_10015180C(uint64_t a1)
{
  if (qword_100B512D8 != -1)
  {
    sub_10080EB24();
  }

  sub_100309B0C(off_100B512D0);
  if (dword_100B511E0 <= 90)
  {
    if (dword_100B511E0 != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      sub_10080EB60(v2, v3, v4);
    }
  }

  v13[0] = @"errorCode";
  v13[1] = @"errorCount";
  v14[0] = &off_100B336A8;
  v14[1] = &off_100B336C0;
  v13[2] = @"timeToEnter";
  v5 = [NSNumber numberWithUnsignedLongLong:sub_1000B11F4() - *(a1 + 32)];
  v14[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v7 = sub_10000E92C();
  sub_100007E30(__p, "LPM entry timeout");
  sub_100693FC4(v7, __p, 3172327085);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = sub_10000F034(v8, v9);
  (*(*v10 + 224))(v10, v6);
}

void sub_1001519A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100151AAC(uint64_t a1)
{
  if (qword_100B512D8 != -1)
  {
    sub_10080EB24();
  }

  result = sub_100312248(off_100B512D0, *(a1 + 32));
  if (result)
  {
    return sub_10080EB7C(result);
  }

  return result;
}

void sub_1001520A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100152538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 40);
    *(a1 + 40) = v5;

    v4 = *(a1 + 40);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B511E0, "void CBStackControllerCPP::addController(CBStackControllerBTStack * _Nonnull __strong)", 30, "Add listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080EC2C();
    }

    sub_1005143D8(off_100B508D8, a1);
    if (qword_100B50F68 != -1)
    {
      sub_10080EC40();
    }

    sub_10012E3B0(off_100B50F60 + 24, a1 + 8);
    if (qword_100B508B0 != -1)
    {
      sub_10080EC54();
    }

    sub_100749B80(off_100B508A8, a1 + 16, 0);
    if (qword_100B508A0 != -1)
    {
      sub_10080EA68();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 24);
    if (qword_100B50AC0 != -1)
    {
      sub_10080EC68();
    }

    sub_1005907D4(off_100B50AB8, a1 + 32);
    *(a1 + 48) = 1;
  }
}

void sub_1001526F8(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 104) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 48) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 104), obj);
  }
}

void sub_100152CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 40) removeObject:?];
  if (*(a1 + 48) == 1 && ![*(a1 + 40) count])
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B511E0, "void CBStackControllerCPP::removeController(CBStackControllerBTStack * _Nonnull __strong)", 30, "Remove listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080EC2C();
    }

    sub_100514508(off_100B508D8, a1);
    if (qword_100B50F68 != -1)
    {
      sub_10080EC40();
    }

    sub_10007A3F0(off_100B50F60 + 24, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_10080EA68();
    }

    sub_10007A3F0(off_100B50898 + 72, a1 + 24);
    if (qword_100B50AC0 != -1)
    {
      sub_10080EC68();
    }

    sub_1005908D4(off_100B50AB8, a1 + 32);
    *(a1 + 48) = 0;
  }
}

void sub_100153D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void (**a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  a12[2]();

  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100153E24(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack connectWithCBConnection:completionHandler:]_block_invoke", 90, "### ConnectDevice start failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

void sub_100153F18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF(4294960574, "Timed out");
    [v5 _connectDeviceCompleteRequest:v4 error:?];
  }
}

void sub_100155428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100155EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100155F44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 231) < 0)
  {
    sub_100008904(&v4, *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v4 = *(a2 + 208);
    v5 = *(a2 + 224);
  }

  if (SHIBYTE(v5) < 0)
  {
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = *(&v4 + 1) != 0;
    operator delete(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = SHIBYTE(v5) != 0;
  }
}

void sub_100155FD4(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C2AA4(v2, v3);
}

void sub_10015634C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C2AA4(v2, v3);
}

void sub_100156D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100156F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    v3 = *(a2 + 16);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (*(a2 + 127) < 0)
  {
    sub_100008904(__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    *__p = *(a2 + 104);
    v9 = *(a2 + 120);
  }

  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v9];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100156FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001578D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void (**a12)(void), void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  a12[2](a12);

  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001579C8(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:connectionPriorityDevices:timeoutSeconds:completionHandler:]_block_invoke", 90, "### ModifyDevice CnxPri failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

void sub_100157ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF(4294960574, "Timed out");
    [v5 _modifyDeviceCompleteRequest:v4 error:?];
  }
}

void sub_100158194(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_100158248(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  [v3 modifyDevice:v2 leDevice:a2 settings:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

void sub_10015829C(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  [v3 modifyDevice:v2 leDevice:a2 settings:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

void sub_10015A22C(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v9, *(a1 + 40));
  sub_100007E30(__p, v2);
  sub_100783194(v3, v9, __p, 3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B50900 != -1)
  {
    sub_10080EFF8();
  }

  sub_100710E34(qword_100B508F8, *(a1 + 40));
  if (qword_100B50900 != -1)
  {
    sub_10080EFF8();
  }

  v4 = qword_100B508F8;
  if (qword_100B512F8 != -1)
  {
    sub_10080F020();
  }

  if (off_100B512F0)
  {
    v5 = off_100B512F0 + 48;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  sub_10004DFB4(v10, *(a1 + 40));
  sub_100007E30(v9, v2);
  sub_10070E28C(v4, v5, v6, v10, v9, 0);
}

void sub_10015A3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A3E4(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  sub_100791918(off_100B508C8, *(a1 + 32), *(a1 + 56), *(a1 + 40), 2);
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) controllerInfo];
  sub_100791C14(v2, v3, [v4 fastLEConnectionAllowed]);
}

void sub_10015A4AC(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10080EC98();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_100791CB4(v2, v3, v4);
}

void sub_10015B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  a13[2]();

  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B52C(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack performDeviceRequest:device:completionHandler:]_block_invoke", 20, "### PerformDeviceRequest start failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

void sub_10015B638(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160884;
    block[3] = &unk_100AE2880;
    block[4] = v6;
    block[5] = a2;
    v10 = a1;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B70C(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160898;
    block[3] = &unk_100AE2880;
    v10 = a1;
    block[4] = v6;
    block[5] = a2;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B7E0(int a1, uint64_t a2, char a3)
{
  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608B0;
    block[3] = &unk_100AE2880;
    v10 = a1;
    block[4] = v6;
    block[5] = a2;
    v11 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10015B8B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timer];

  if (v2 == v3)
  {
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = CBErrorF(4294960574, "Timed out");
    [v5 _completePerformDeviceRequest:v4 error:?];
  }
}

const char *sub_10015D610(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "?";
  }

  else
  {
    return off_100AE2D18[a1];
  }
}

void sub_10015DC80(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Block_object_dispose((v3 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10015DCD4(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack addPairingClient:error:]_block_invoke", 90, "### AddPairingClient failed: %@", v2);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
    }
  }
}

void sub_10015DDB0(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v5 = a3;
  if (a3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v5 = sub_1000E41C0(off_100B508E8, v5);
  }

  if (a4)
  {
    v7 = a4 + 310000;
  }

  else
  {
    v7 = 0;
  }

  if (dword_100B511E0 > 30 || dword_100B511E0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_22;
  }

  if (a2 > 3)
  {
    v8 = "?";
    if (v5)
    {
LABEL_12:
      sub_1000E5A58(v5, v16);
      if (v17 >= 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v16[0];
      }

      goto LABEL_19;
    }
  }

  else
  {
    v8 = off_100AE2D88[a2];
    if (v5)
    {
      goto LABEL_12;
    }
  }

  v9 = "NULL";
LABEL_19:
  v10 = CUPrintErrorCode();
  LogPrintF_safe(&dword_100B511E0, "void _pairingStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 30, "Pairing agent event: %s, device %s, result %@", v8, v9, v10);

  if (!v5)
  {
    if (a2 != 3)
    {
      return;
    }

LABEL_29:
    sub_10080F14C();
    return;
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

LABEL_22:
  if (a2 != 3)
  {
    return;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  v11 = qword_100B55358;
  v12 = [v11 dispatchQueue];
  v13 = v12;
  if (v12)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016091C;
    block[3] = &unk_100AE1228;
    block[4] = v11;
    block[5] = v5;
    v15 = v7;
    dispatch_async(v12, block);
  }
}

void sub_10015DF9C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100806B90(v3 - 72);
  }

  _Unwind_Resume(a1);
}

void sub_10015DFCC(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v4 = sub_1000E41C0(off_100B508E8, v4);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }
    }

    else
    {
      v6 = "NULL";
    }

    LogPrintF_safe(&dword_100B511E0, "void _pairingPincodeCallback(BTPairingAgent _Nonnull, BTDevice _Nonnull, uint8_t, void * _Nonnull)", 30, "Pairing agent pincode callback: device %s, minLen %d", v6, a3);
    if (v4)
    {
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_13;
    }

LABEL_33:
    sub_10080F2A0();
    return;
  }

  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_13:
  if (qword_100B50F88 != -1)
  {
    sub_10080EDD4();
  }

  v7 = sub_1006DB834(off_100B50F80, a1);
  if (v7)
  {
    v8 = sub_1000DEB14(v4);
    if (v8 <= 0x18 && (v9 = 1, ((1 << v8) & 0x1001980) != 0))
    {
      v10 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    v22 = 0u;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    sub_1000C2364(v4, &v19, &v18 + 1, &v18, &v17);
    if ((HIDWORD(v18) == 1452 || HIDWORD(v18) == 76) && (v18 - 780) <= 2)
    {
      if (dword_100B511E0 <= 50 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080F1B4();
      }

      strcpy(__p, "0000");
      sub_1006E5ED8(v20, __p);
      sub_1006D8AA8(v7, v4, v20);
    }

    if (v10)
    {
      RandomString();
      sub_1006E5ED8(v20, __p);
      sub_1006D8AA8(v7, v4, v20);
    }

    strcpy(__p, "0000");
    v11 = [NSString stringWithUTF8String:__p];
    v12 = qword_100B55358;
    v13 = [v12 dispatchQueue];
    v14 = v13;
    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001608F8;
      block[3] = &unk_100AE28A8;
      block[5] = v11;
      block[6] = v4;
      v16 = v9;
      block[4] = v12;
      dispatch_async(v13, block);
    }
  }

  else
  {
    sub_10080F238();
  }
}

void sub_10015E45C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v3 = sub_1000E41C0(off_100B508E8, v3);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v3)
    {
      v4 = v10;
      sub_1000E5A58(v3, v10);
      if (v11 < 0)
      {
        v4 = v10[0];
      }
    }

    else
    {
      v4 = "NULL";
    }

    v5 = CUPrintFlags32();
    LogPrintF_safe(&dword_100B511E0, "void _pairingAuthCallback(BTPairingAgent _Nonnull, BTDevice _Nonnull, BTServiceMask, void * _Nonnull)", 30, "Pairing agent auth callback: device %s, services %@", v4, v5);

    if (!v3)
    {
      goto LABEL_21;
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else if (!v3)
  {
LABEL_21:
    sub_10080F308();
    return;
  }

  v6 = qword_100B55358;
  v7 = [v6 dispatchQueue];
  v8 = v7;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608C8;
    block[3] = &unk_100AE1200;
    block[4] = v6;
    block[5] = v3;
    dispatch_async(v7, block);
  }
}

void sub_10015E5FC(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100806B90(v3 - 56);
  }

  _Unwind_Resume(a1);
}

void sub_10015E62C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v6 = sub_1000E41C0(off_100B508E8, v6);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      sub_1000E5A58(v6, v15);
      if (v16 >= 0)
      {
        v7 = v15;
      }

      else
      {
        v7 = v15[0];
      }
    }

    else
    {
      v7 = "NULL";
    }

    v8 = "yes";
    if (!a4)
    {
      v8 = "no";
    }

    LogPrintF_safe(&dword_100B511E0, "void _pairingUserConfirmCallback(BTPairingAgent _Nonnull, BTDevice _Nonnull, uint32_t, BTBool, void * _Nonnull)", 30, "Pairing agent user confirm callback: device %s, value %u, mitm %s", v7, a3, v8);
    if (!v6)
    {
      goto LABEL_23;
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else if (!v6)
  {
LABEL_23:
    sub_10080F370();
    return;
  }

  v9 = [[NSString alloc] initWithFormat:@"%06u", a3];
  v10 = qword_100B55358;
  v11 = [v10 dispatchQueue];
  v12 = v11;
  if (v11)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016092C;
    block[3] = &unk_100AE28D0;
    v14 = a4;
    block[5] = v9;
    block[6] = v6;
    block[4] = v10;
    dispatch_async(v11, block);
  }
}

void sub_10015E804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100806B90(v2 - 72);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E82C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080ECAC();
    }

    v4 = sub_1000E41C0(off_100B508E8, v4);
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      sub_1000E5A58(v4, v11);
      if (v12 >= 0)
      {
        v5 = v11;
      }

      else
      {
        v5 = v11[0];
      }
    }

    else
    {
      v5 = "NULL";
    }

    LogPrintF_safe(&dword_100B511E0, "void _pairingPassKeyDisplayCallback(BTPairingAgent _Nonnull, BTDevice _Nonnull, uint32_t, void * _Nonnull)", 30, "Pairing agent pass key display callback: device %s, value %u", v5, a3);
    if (!v4)
    {
      goto LABEL_21;
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else if (!v4)
  {
LABEL_21:
    sub_10080F3D8();
    return;
  }

  v6 = [[NSString alloc] initWithFormat:@"%u", a3];
  v7 = qword_100B55358;
  v8 = [v7 dispatchQueue];
  v9 = v8;
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001608E0;
    block[3] = &unk_100AE25C8;
    block[5] = v6;
    block[6] = v4;
    block[4] = v7;
    dispatch_async(v8, block);
  }
}

void sub_10015E9D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100806B90(v2 - 56);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015EA00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (dword_100B511E0 <= 30)
  {
    if (dword_100B511E0 != -1)
    {
      return sub_10080F440(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10080F440(result, a2, a3);
    }
  }

  return result;
}

void sub_10015F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v9 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v19];
  v10 = v19;
  v12 = v10;
  if (v9)
  {
    if (dword_100B511E0 <= 30)
    {
      if (dword_100B511E0 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        v10 = LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::accessoryCommandStatus(BT::Device * _Nonnull, BTAccessoryCmdReqType, uint16_t, uint16_t)", 30, "AccessoryCommandStatus: %@, type %d, result %u, reason %u", v9, a3, a4, a5);
      }
    }

    v14 = sub_100007EE8(v10, v11);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10015F7B4;
    v15[3] = &unk_100AE0BC0;
    v15[4] = v9;
    v15[5] = a1;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    sub_10000CA94(v14, v15);
  }

  else if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v13 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::accessoryCommandStatus(BT::Device * _Nonnull, BTAccessoryCmdReqType, uint16_t, uint16_t)", 90, "### AccessoryCommandStatus init device failed: %@", v13);
  }
}

void sub_10015F7B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_lock_lock(&unk_100B55360);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(v2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10015F964;
        block[3] = &unk_100AE25C8;
        v9 = *(a1 + 32);
        block[4] = v7;
        block[5] = v9;
        v10 = *(a1 + 52);
        v12 = *(a1 + 48);
        v13 = v10;
        dispatch_async(v8, block);
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100B55360);
}

void sub_10015F97C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned int a5, uint64_t a6)
{
  v27 = a3;
  v28 = WORD2(a3);
  v26 = 0;
  v10 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v26];
  v11 = v26;
  if (v10)
  {
    v12 = objc_alloc_init(CBDevice);
    v13 = [[NSData alloc] initWithBytes:&v27 length:6];
    [v12 setBtAddressData:v13];

    v14 = CUPrintAddress();
    [v12 setIdentifier:v14];

    v15 = [[NSData alloc] initWithBytes:a6 length:a5];
    v17 = v15;
    v18 = a4;
    if (dword_100B511E0 <= 30)
    {
      if (dword_100B511E0 != -1 || (v15 = _LogCategory_Initialize(), v15))
      {
        v19 = [v12 identifier];
        v20 = CUPrintNSDataHex();
        v21 = v20;
        v22 = "?";
        if (v18 == 1)
        {
          v22 = "AudioArbitration";
        }

        if (!v18)
        {
          v22 = "Invalid";
        }

        LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::accessoryRelayMsgReceived(BT::Device * _Nonnull, BTDeviceAddress, BTAccessoryRelayMsgType, uint16_t, const uint8_t * _Nonnull)", 30, "Relay message received: conduit %@, source %@, type %s, data <%@>", v10, v19, v22, v20);
      }
    }

    v23 = sub_100007EE8(v15, v16);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10015FC74;
    v24[3] = &unk_100AE2670;
    v25 = v18;
    v24[4] = v17;
    v24[5] = v10;
    v24[6] = v12;
    v24[7] = a1;
    sub_10000CA94(v23, v24);

    goto LABEL_11;
  }

  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::accessoryRelayMsgReceived(BT::Device * _Nonnull, BTDeviceAddress, BTAccessoryRelayMsgType, uint16_t, const uint8_t * _Nonnull)", 90, "### AccessoryCommandStatus init device failed: %@", v12);
LABEL_11:
  }
}

void sub_10015FC74(uint64_t a1)
{
  v2 = *(a1 + 56);
  os_unfair_lock_lock(&unk_100B55360);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(v2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10015FE30;
        block[3] = &unk_100AE2648;
        block[4] = v7;
        v12 = *(a1 + 64);
        v10 = *(a1 + 32);
        v11 = *(a1 + 48);
        dispatch_async(v8, block);
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100B55360);
}

void sub_10015FE44(uint64_t a1, uint64_t a2, int a3)
{
  v24 = 0;
  v17 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v24];
  v16 = v24;
  if (v17)
  {
    if (qword_100B50AC0 != -1)
    {
      sub_10080EA40();
    }

    v6 = off_100B50AB8;
    [v17 setConnectedServices:{sub_1000E077C(off_100B50AB8, a2)}];
    if (sub_10053C3E8(a2))
    {
      v7 = sub_1000DFA00(v6, a2);
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    [v17 setSupportedServices:v7];
    [v17 setSupportedServices:{objc_msgSend(v17, "supportedServices") & 0xFFEFFFFF}];
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::deviceConnected(BT::Device * _Nonnull, BTResult)", 30, "DeviceConnected: %@, result %@", v17, v8);
    }

    os_unfair_lock_lock(&unk_100B55360);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001601C0;
          block[3] = &unk_100AE2448;
          block[4] = v13;
          block[5] = v17;
          v19 = a3;
          dispatch_async(v14, block);
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&unk_100B55360);
  }

  else if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v15 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::deviceConnected(BT::Device * _Nonnull, BTResult)", 90, "### DeviceConnected init device failed: %@", v15);
  }
}

void sub_1001601D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(&unk_100B55360);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001603AC;
        block[3] = &unk_100AE2470;
        block[4] = v9;
        v13 = v5;
        v14 = a2;
        dispatch_async(v10, block);
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&unk_100B55360);
}

void sub_1001603AC(uint64_t a1)
{
  [*(a1 + 32) setFastLEConnectionInfoData:*(a1 + 40)];
  [*(a1 + 32) setFastLEConnectionInfoVersion:*(a1 + 48)];
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080F45C((a1 + 48));
  }

  v2 = [*(a1 + 32) controllerDataChangedHandler];
  if (v2)
  {
    v2[2]();
  }
}

void sub_100160478(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 == 11 && (a3 + 1) <= 1 && a5)
  {
    os_unfair_lock_lock(&unk_100B55360);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(a1 + 40);
    v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10016064C;
          block[3] = &unk_100AE0BC0;
          v16 = a3;
          v17 = a5;
          block[4] = v12;
          block[5] = a2;
          dispatch_async(v13, block);
        }

        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55360);
  }
}

void sub_10016064C(uint64_t a1)
{
  v2 = [CBDevice alloc];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 initWithBTStackDevice:v3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 btAddressData];
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 48);
      v8 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::serviceEvent(BT::Device * _Nonnull, BTServiceID, BTServiceSpecificEvent, BTResult)_block_invoke", 30, "service event - service:%u, connection: %@, result %@", v7, v6, v8);
    }

    [*(a1 + 32) _connectDeviceUpdateRequests:v4 btResult:*(a1 + 52)];
    goto LABEL_7;
  }

  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v6 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "virtual void CBStackControllerCPP::serviceEvent(BT::Device * _Nonnull, BTServiceID, BTServiceSpecificEvent, BTResult)_block_invoke", 90, "### serviceEvent init device failed: %@", v6);
LABEL_7:
  }
}

void sub_100160824(uint64_t a1)
{

  operator delete();
}

id sub_1001608F8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  return [*(a1 + 32) _pairingPromptWithBTDevice:*(a1 + 48) pairingType:v1 pinString:*(a1 + 40) flags:0];
}

void sub_100162488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v20);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1001624B4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = xpc_array_create(0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [v5 xpcObjectRepresentation];
  xpc_array_append_value(*(*(*(a1 + 32) + 8) + 40), v9);
}

void sub_1001626D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 24);
    *(a1 + 24) = v5;

    v4 = *(a1 + 24);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "void CBStackAccessoryMonitorCPP::addMonitor(CBStackAccessoryMonitorBTStack * _Nonnull __strong)", 30, "Add listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080F554();
    }

    sub_1005143D8(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_10080F568();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_10080F57C();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 16);
    *(a1 + 32) = 1;
  }
}

void sub_100162908(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 24) removeObject:?];
  if (*(a1 + 32) == 1 && ![*(a1 + 24) count])
  {
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "void CBStackAccessoryMonitorCPP::removeMonitor(CBStackAccessoryMonitorBTStack * _Nonnull __strong)", 30, "Remove listeners");
    }

    if (qword_100B508E0 != -1)
    {
      sub_10080F554();
    }

    sub_100514508(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_10080F568();
    }

    sub_10007A3F0(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_10080F57C();
    }

    sub_10007A3F0(off_100B50898 + 72, a1 + 16);
    *(a1 + 32) = 0;
  }
}

void sub_100163330(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1001633AC(id a1, NSString *a2, AudioAccessoryDeviceInfo *a3, BOOL *a4)
{
  v4 = a3;
  [(AudioAccessoryDeviceInfo *)v4 setChangeFlags:0];
  [(AudioAccessoryDeviceInfo *)v4 setOldDiscoveryFlags:[(AudioAccessoryDeviceInfo *)v4 discoveryFlags]];
  [(AudioAccessoryDeviceInfo *)v4 setDiscoveryFlags:[(AudioAccessoryDeviceInfo *)v4 discoveryFlags]& 0xFFFFFFFFFF5FFFFFLL];
}

void sub_100163434(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 changeFlags];
  v5 = [v12 oldDiscoveryFlags];
  v6 = [v12 discoveryFlags];
  v7 = [v12 discoveryFlags];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == v6;
  }

  if (!v8 && v7)
  {
    if (dword_100B51310 <= 50 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      v9 = [v12 identifier];
      LogPrintF_safe(&dword_100B51310, "[CBStackAccessoryMonitorBTStack updateAccessoryInfo]_block_invoke_2", 50, "Audio Accessory Device Info Changed: %@", v9);
    }

    v10 = objc_retainBlock(*(*(a1 + 32) + 48));
    if (v10)
    {
      v11 = [v12 xpcObjectRepresentation];
      (v10)[2](v10, v11);
    }

    goto LABEL_17;
  }

  if (dword_100B51310 <= 10 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v10 = [v12 identifier];
    LogPrintF_safe(&dword_100B51310, "[CBStackAccessoryMonitorBTStack updateAccessoryInfo]_block_invoke_2", 10, "Audio Accessory Device: %@ unchanged", v10);
LABEL_17:
  }
}

void sub_1001635C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100163734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100163870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100163A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1000161FC(&a14);
  _Unwind_Resume(a1);
}

void sub_100163B88(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v26 = 0;
  v19 = [[CBDevice alloc] initWithBTStackDevice:a3 error:&v26];
  v17 = v26;
  if (v19)
  {
    v9 = [[NSData alloc] initWithBytes:a5 length:a4];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      if (a2 > 0xD)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_100AE2F98[a2];
      }

      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::audioAccessoryMsgReceived(CBAudioAccessoryEventType, BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "Audio Accessory message received [%s] for device %@", v10, v19);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 24);
    v11 = v9;
    v12 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100163ED0;
          block[3] = &unk_100AE1600;
          v21 = a2;
          block[4] = v15;
          block[5] = v11;
          v9 = v11;
          block[6] = v19;
          dispatch_async(v16, block);
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_18;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v9 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::audioAccessoryMsgReceived(CBAudioAccessoryEventType, BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AudioAccessoryMsg init device failed: %@", v9);
LABEL_18:
  }
}

void sub_100163EE4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryConversationDetectMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "Conversation Detect message received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001641F0;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryConversationDetectMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessoryConversationDetectMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_100164200(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryContextMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "Multimodal context message received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10016450C;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryContextMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessoryMultimodalContextMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_10016451C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryPMEConfigMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "PME Config received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164828;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryPMEConfigMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessoryPMEConfigMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_100164838(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessorySleepDetectionUpdateMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "Sleep Detection message received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164B44;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessorySleepDetectionUpdateMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessorySleepDetectionUpdateMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_100164B54(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryRawGestureMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "Raw Gesture message received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100164E60;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryRawGestureMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessoryRawGestureMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_100164E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_100B51310 <= 30)
  {
    v4 = a3;
    if (dword_100B51310 != -1 || _LogCategory_Initialize())
    {
      sub_10080F5C4(v4);
    }
  }

  sub_100164EE0(a1);
}

void sub_100164EE0(uint64_t a1)
{
  os_unfair_lock_lock(&unk_100B55370);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001653A4;
        block[3] = &unk_100ADF820;
        block[4] = v6;
        dispatch_async(v7, block);
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  os_unfair_lock_unlock(&unk_100B55370);
}

void sub_100165088(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  v15 = [[CBDevice alloc] initWithBTStackDevice:a2 error:&v21];
  v14 = v21;
  if (v15)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryUsageSummaryMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 30, "AccessoryUsageSummary message received for device %@", v15);
    }

    os_unfair_lock_lock(&unk_100B55370);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165394;
          block[3] = &unk_100AE2550;
          block[4] = v12;
          block[5] = v7;
          block[6] = v15;
          dispatch_async(v13, block);
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&unk_100B55370);
    goto LABEL_14;
  }

  if (dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51310, "virtual void CBStackAccessoryMonitorCPP::accessoryUsageSummaryMsgReceived(BT::Device * _Nonnull, uint16_t, BTData _Nonnull)", 90, "### AccessoryUsageSummaryMsg init device failed: %@", v7);
LABEL_14:
  }
}

void sub_1001653D8(uint64_t a1)
{

  operator delete();
}

void sub_10016555C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 165, "void _SRS_ReadLocalControllerCachedInfoEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v10 = *(a3 + 5);
      v11 = *(a3 + 6);
      if (v10 > v11)
      {
        if (*(a3 + 14) == 1)
        {
          v12 = *a3;
          *(a3 + 6) = v11 + 1;
          v6 = *(v12 + v11);
          if ((v10 - (v11 + 1)) <= 1)
          {
            *(a3 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 167, "void _SRS_ReadLocalControllerCachedInfoEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
            v7 = 0;
            v14 = 0;
          }

          else
          {
            v13 = v11 + 3;
            v7 = *(v12 + v11 + 1);
            *(a3 + 6) = v13;
            v14 = (v10 - v13);
          }

          if (v14 != v7)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 168, "length == remaining");
          }

          v8 = *a3 + *(a3 + 6);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 165, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v6, v7, v8);
  }
}

void sub_1001656F4(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t *a3)
{
  if (result)
  {
    v4 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("%s status %!", "_SRS_AddToFilterAcceptListWithOptionsPollStatsParser", v4);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 447, "void _SRS_AddToFilterAcceptListWithOptionsPollStatsParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  if ((v10 - v11) <= 3u)
  {
LABEL_14:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 448, "void _SRS_AddToFilterAcceptListWithOptionsPollStatsParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v13 = 0;
      }

      else
      {
        v13 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v13);
      v14 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = 608;
    goto LABEL_21;
  }

  if ((v10 - v11) <= 3)
  {
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_26;
  }

  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 451, v15);
  }

  v12 = *a3;
  v8 = *(*a3 + v11);
  *(a3 + 6) = v11 + 4;
  if (v10 <= (v11 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 452, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v11 + 5;
  if ((v10 - (v11 + 5)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 453, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v4 = 0;
  v7 = *(v12 + (v11 + 4));
  v6 = *(v12 + (v11 + 5));
  *(a3 + 6) = v11 + 9;
LABEL_21:
  if (a2)
  {
    a2(v4, v8, v7, v6);
  }
}

void sub_10016591C(uint64_t result, uint64_t (*a2)(uint64_t, void))
{
  if (result && sub_10000C240() && (sub_10000AF54("%s:status %!", "_SRS_Load_MSFFileCB", result), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result, 0);
}

uint64_t sub_1001659B4(int a1, int a2, const void *a3, unsigned int a4, void (*a5)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (!result)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1188, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
    }

    else
    {
      v11 = WORD2(v31);
      if (WORD1(v31) > WORD2(v31))
      {
        if (BYTE6(v31) == 2)
        {
          ++WORD2(v31);
          *(v30 + v11) = 1;
          if (HIBYTE(v31))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1189, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
          }

          else
          {
            v12 = WORD2(v31);
            if (WORD1(v31) > WORD2(v31))
            {
              if (BYTE6(v31) == 2)
              {
                ++WORD2(v31);
                *(v30 + v12) = 4;
                if (a1)
                {
                  if (HIBYTE(v31))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1195, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
                  }

                  else
                  {
                    v13 = WORD2(v31);
                    if (WORD1(v31) > WORD2(v31))
                    {
                      if (BYTE6(v31) == 2)
                      {
                        v14 = 48;
                        goto LABEL_17;
                      }

                      v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1195, v26);
                    }
                  }

                  v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_47;
                }

                if (HIBYTE(v31))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1192, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
                }

                else
                {
                  v13 = WORD2(v31);
                  if (WORD1(v31) > WORD2(v31))
                  {
                    if (BYTE6(v31) == 2)
                    {
                      v14 = 32;
LABEL_17:
                      WORD2(v31) = v13 + 1;
                      *(v30 + v13) = v14;
                      if (a2)
                      {
                        if (HIBYTE(v31))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1199, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
                        }

                        else
                        {
                          v15 = WORD2(v31);
                          if (WORD1(v31) > WORD2(v31))
                          {
                            if (BYTE6(v31) == 2)
                            {
                              v16 = 1;
                              goto LABEL_26;
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1199, v27);
                          }
                        }

                        v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_51;
                      }

                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1201, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
                      }

                      else
                      {
                        v15 = WORD2(v31);
                        if (WORD1(v31) > WORD2(v31))
                        {
                          if (BYTE6(v31) == 2)
                          {
                            v16 = 0;
LABEL_26:
                            WORD2(v31) = v15 + 1;
                            *(v30 + v15) = v16;
                            v17 = v30;
                            v18 = WORD2(v31);
                            if (HIBYTE(v31))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1204, "OI_STATUS _SRS_LoadRFTables(uint8_t, uint16_t, uint8_t *, uint16_t, BT_VSC_LOAD_MSFFILE_CB)");
                              v19 = 0;
                            }

                            else
                            {
                              v19 = WORD1(v31) - WORD2(v31);
                            }

                            if (v19 < a4)
                            {
                              v25 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                            }

                            else
                            {
                              if (BYTE6(v31) == 2)
                              {
                                memmove((v17 + v18), a3, a4);
                                WORD2(v31) += a4;
                                return sub_100020078(464, v30, BYTE4(v31), a5, sub_10016591C, v20, v21, v22);
                              }

                              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1204, v25);
                          }

                          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1201, v29);
                        }
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_59;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1192, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_55;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1189, v24);
            }
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_40;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1188, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_36;
  }

  return result;
}

void sub_100165D94(uint64_t result, uint64_t (*a2)(uint64_t, int *, uint64_t), uint64_t a3)
{
  v11 = 0;
  if (result && sub_10000C240() && ((v6 = *(a3 + 12), v7 = *a3 + v6, !*(a3 + 15)) ? (v8 = *(a3 + 10) - v6) : (sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1217, "void _SRS_CountryCodeCB(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)"), v8 = 0), sub_10000AF54("CC hlCb 0x%x, data %@", a2, v7, v8), v9 = sub_10000C050(0x54u), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1220, "void _SRS_CountryCodeCB(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (*(a3 + 10) <= *(a3 + 12))
  {
    goto LABEL_12;
  }

  LOBYTE(v11) = *(*a3 + *(a3 + 12));
  v10 = 4;
LABEL_13:
  a2(result, &v11, v10);
}

uint64_t sub_100165EB8(int a1, char a2, uint64_t a3, void (*a4)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1238, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
    }

    else
    {
      v11 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v11) = 1;
          if (a1)
          {
            if (HIBYTE(v24))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1240, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
            }

            else
            {
              v12 = WORD2(v24);
              if (WORD1(v24) > WORD2(v24))
              {
                if (BYTE6(v24) == 2)
                {
                  v13 = 4;
                  goto LABEL_14;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1240, v19);
              }
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_38;
          }

          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1243, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
          }

          else
          {
            v12 = WORD2(v24);
            if (WORD1(v24) > WORD2(v24))
            {
              if (BYTE6(v24) == 2)
              {
                v13 = 5;
LABEL_14:
                WORD2(v24) = v12 + 1;
                *(v23 + v12) = v13;
                if (HIBYTE(v24))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1245, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
                }

                else
                {
                  v14 = WORD2(v24);
                  if (WORD1(v24) > WORD2(v24))
                  {
                    if (BYTE6(v24) == 2)
                    {
                      ++WORD2(v24);
                      *(v23 + v14) = 35;
                      if (!a1)
                      {
                        return sub_100020078(464, v23, BYTE4(v24), a4, sub_100165D94, v8, v9, v10);
                      }

                      if (HIBYTE(v24))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1248, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
                      }

                      else
                      {
                        v15 = WORD2(v24);
                        if (WORD1(v24) > WORD2(v24))
                        {
                          if (BYTE6(v24) == 2)
                          {
                            ++WORD2(v24);
                            *(v23 + v15) = 1;
                            if (HIBYTE(v24))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1249, "OI_STATUS _SRS_CountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
                            }

                            else
                            {
                              v16 = WORD2(v24);
                              if (WORD1(v24) > WORD2(v24))
                              {
                                if (BYTE6(v24) == 2)
                                {
                                  ++WORD2(v24);
                                  *(v23 + v16) = a2;
                                  return sub_100020078(464, v23, BYTE4(v24), a4, sub_100165D94, v8, v9, v10);
                                }

                                v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1249, v21);
                              }
                            }

                            v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_46;
                          }

                          v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1248, v20);
                        }
                      }

                      v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_42;
                    }

                    v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1245, v18);
                  }
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_34;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1243, v22);
            }
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_50;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1238, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_100166200(__int16 a1, int a2, int a3, void (*a4)())
{
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2;
  }

  if (!a2)
  {
    v12 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v28))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1317, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v13 = WORD2(v28);
      if (WORD1(v28) > WORD2(v28))
      {
        if (BYTE6(v28) == 2)
        {
          ++WORD2(v28);
          *(v27 + v13) = 2;
          if (HIBYTE(v28))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1318, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v14 = WORD2(v28);
            if (WORD1(v28) > WORD2(v28))
            {
              if (BYTE6(v28) == 2)
              {
                ++WORD2(v28);
                *(v27 + v14) = 1;
                if (HIBYTE(v28))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1319, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v28) - WORD2(v28) > 1)
                {
                  if (BYTE6(v28) == 2)
                  {
                    *(v27 + WORD2(v28)) = a1;
                    v15 = WORD2(v28);
                    v16 = WORD2(v28) + 2;
                    WORD2(v28) += 2;
                    if (HIBYTE(v28))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1320, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v28) > v16)
                    {
                      if (BYTE6(v28) == 2)
                      {
                        WORD2(v28) = v15 + 3;
                        *(v27 + v16) = v12;
                        if (HIBYTE(v28))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1321, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v17 = WORD2(v28);
                          if (WORD1(v28) > WORD2(v28))
                          {
                            if (BYTE6(v28) == 2)
                            {
                              ++WORD2(v28);
                              *(v27 + v17) = 0;
                              if (HIBYTE(v28))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1322, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v18 = WORD2(v28);
                                if (WORD1(v28) > WORD2(v28))
                                {
                                  if (BYTE6(v28) == 2)
                                  {
                                    ++WORD2(v28);
                                    *(v27 + v18) = 1;
                                    if (HIBYTE(v28))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1323, "OI_STATUS _SRS_SetPriorityLe(uint16_t, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v19 = WORD2(v28);
                                      if (WORD1(v28) > WORD2(v28))
                                      {
                                        if (BYTE6(v28) == 2)
                                        {
                                          ++WORD2(v28);
                                          *(v27 + v19) = 0;
                                          return sub_100020078(464, v27, BYTE4(v28), a4, sub_1001665F4, v9, v10, v11);
                                        }

                                        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1323, v26);
                                      }
                                    }

                                    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_57;
                                  }

                                  v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1322, v25);
                                }
                              }

                              v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_53;
                            }

                            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1321, v24);
                          }
                        }

                        v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_49;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1320, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_45;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1319, v22);
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_41;
              }

              v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1318, v21);
            }
          }

          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_37;
        }

        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1317, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

void sub_1001665F4(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("%s status %d, hlCb 0x%x", "_SRS_GenericEventParser", result, a2), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

uint64_t sub_10016668C(char a1, _WORD *a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1402, "OI_STATUS _SRS_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v10) = 7;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1403, "OI_STATUS _SRS_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v11) = 4;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1404, "OI_STATUS _SRS_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v18);
                  if (WORD1(v18) > WORD2(v18))
                  {
                    if (BYTE6(v18) == 2)
                    {
                      ++WORD2(v18);
                      *(v17 + v12) = a1;
                      if (HIBYTE(v18))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1405, "OI_STATUS _SRS_WriteWBSEnable(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v18) - WORD2(v18) > 1)
                      {
                        if (BYTE6(v18) == 2)
                        {
                          *(v17 + WORD2(v18)) = *a2;
                          WORD2(v18) += 2;
                          return sub_100020078(464, v17, BYTE4(v18), a3, sub_1001665F4, v7, v8, v9);
                        }

                        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1405, v16);
                      }

                      v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_31;
                    }

                    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1404, v15);
                  }
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1403, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1402, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100166900(_WORD *a1, char a2, void (*a3)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1923, "OI_STATUS _SRS_EnableSetSpecialSniffTransition(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v10) = 2;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1924, "OI_STATUS _SRS_EnableSetSpecialSniffTransition(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v21);
            if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                ++WORD2(v21);
                *(v20 + v11) = 6;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1926, "OI_STATUS _SRS_EnableSetSpecialSniffTransition(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v21) - WORD2(v21) > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + WORD2(v21)) = *a1;
                    v12 = WORD2(v21);
                    v13 = WORD2(v21) + 2;
                    WORD2(v21) += 2;
                    if (HIBYTE(v21))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1927, "OI_STATUS _SRS_EnableSetSpecialSniffTransition(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v21) > v13)
                    {
                      if (BYTE6(v21) == 2)
                      {
                        WORD2(v21) = v12 + 3;
                        *(v20 + v13) = a2;
                        if (HIBYTE(v21))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1928, "OI_STATUS _SRS_EnableSetSpecialSniffTransition(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v14 = WORD2(v21);
                          if (WORD1(v21) > WORD2(v21))
                          {
                            if (BYTE6(v21) == 2)
                            {
                              ++WORD2(v21);
                              *(v20 + v14) = 3;
                              return sub_100020078(464, v20, BYTE4(v21), a3, sub_1001665F4, v7, v8, v9);
                            }

                            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1928, v19);
                          }
                        }

                        v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1927, v18);
                    }

                    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_34;
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1926, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1924, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1923, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100166BF0(_WORD *a1, __int16 a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2186, "OI_STATUS _SRS_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v10) = 6;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2187, "OI_STATUS _SRS_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v11) = 4;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2188, "OI_STATUS _SRS_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v18) - WORD2(v18) > 1)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + WORD2(v18)) = *a1;
                    v12 = WORD2(v18) + 2;
                    WORD2(v18) += 2;
                    if (HIBYTE(v18))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2189, "OI_STATUS _SRS_EnableBTSync(OI_HCI_CONNECTION_HANDLE, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v18) - v12 > 1)
                    {
                      if (BYTE6(v18) == 2)
                      {
                        *(v17 + v12) = a2;
                        *(v17 + WORD2(v18) + 1) = HIBYTE(a2);
                        WORD2(v18) += 2;
                        return sub_100020078(464, v17, BYTE4(v18), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2189, v16);
                    }

                    v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_31;
                  }

                  v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2188, v15);
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2187, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2186, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100166E80(__int16 a1, char a2, void (*a3)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2267, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v10) = 6;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2268, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v11) = 9;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2269, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v23);
                  if (WORD1(v23) > WORD2(v23))
                  {
                    if (BYTE6(v23) == 2)
                    {
                      ++WORD2(v23);
                      *(v22 + v12) = 2;
                      if (HIBYTE(v23))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2270, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v23) - WORD2(v23) > 1)
                      {
                        if (BYTE6(v23) == 2)
                        {
                          *(v22 + WORD2(v23)) = a1;
                          v13 = WORD2(v23);
                          v14 = WORD2(v23) + 2;
                          WORD2(v23) += 2;
                          if (HIBYTE(v23))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2271, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v23) > v14)
                          {
                            if (BYTE6(v23) == 2)
                            {
                              WORD2(v23) = v13 + 3;
                              *(v22 + v14) = 12;
                              if (HIBYTE(v23))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2272, "OI_STATUS _SRS_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v15 = WORD2(v23);
                                if (WORD1(v23) > WORD2(v23))
                                {
                                  if (BYTE6(v23) == 2)
                                  {
                                    ++WORD2(v23);
                                    *(v22 + v15) = a2;
                                    return sub_100020078(464, v22, BYTE4(v23), a3, sub_1001665F4, v7, v8, v9);
                                  }

                                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2272, v21);
                                }
                              }

                              v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2271, v20);
                          }

                          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_41;
                        }

                        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2270, v19);
                      }

                      v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_37;
                    }

                    v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2269, v18);
                  }
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_33;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2268, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2267, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001671E8(__int16 a1, char a2, char a3, unsigned int a4, int *a5, char a6, char a7, __int16 a8, __int16 a9, char a10, char a11, char a12, char a13, __int16 a14, void (*a15)())
{
  v63 = 0;
  v64 = 0;
  result = sub_10001FFD8(&v63);
  if (!result)
  {
    if (HIBYTE(v64))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2289, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v27 = WORD2(v64);
      if (WORD1(v64) > WORD2(v64))
      {
        if (BYTE6(v64) == 2)
        {
          ++WORD2(v64);
          *(v63 + v27) = 6;
          if (HIBYTE(v64))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2290, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v28 = WORD2(v64);
            if (WORD1(v64) > WORD2(v64))
            {
              if (BYTE6(v64) == 2)
              {
                ++WORD2(v64);
                *(v63 + v28) = 10;
                if (HIBYTE(v64))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2291, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v64) - WORD2(v64) > 1)
                {
                  if (BYTE6(v64) == 2)
                  {
                    *(v63 + WORD2(v64)) = a1;
                    v29 = WORD2(v64);
                    v30 = WORD2(v64) + 2;
                    WORD2(v64) += 2;
                    if (HIBYTE(v64))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2292, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v64) > v30)
                    {
                      if (BYTE6(v64) == 2)
                      {
                        WORD2(v64) = v29 + 3;
                        *(v63 + v30) = a2;
                        if (HIBYTE(v64))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2293, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v31 = WORD2(v64);
                          if (WORD1(v64) > WORD2(v64))
                          {
                            if (BYTE6(v64) == 2)
                            {
                              ++WORD2(v64);
                              *(v63 + v31) = a3;
                              if (a4 >= 5)
                              {
                                v32 = 5;
                              }

                              else
                              {
                                v32 = a4;
                              }

                              if (!a4)
                              {
                                goto LABEL_42;
                              }

                              v33 = v32;
                              do
                              {
                                v35 = *a5++;
                                v34 = v35;
                                if (v35 == 762)
                                {
                                  v36 = 62;
                                }

                                else
                                {
                                  v36 = 0;
                                }

                                if (v34 == 761)
                                {
                                  v36 = 61;
                                }

                                if (v34 == 734)
                                {
                                  v36 = 34;
                                }

                                if (v34 == 719)
                                {
                                  v37 = 19;
                                }

                                else
                                {
                                  v37 = 0;
                                }

                                if (v34 == 708)
                                {
                                  v37 = 8;
                                }

                                if (v34 <= 733)
                                {
                                  v38 = v37;
                                }

                                else
                                {
                                  v38 = v36;
                                }

                                if (HIBYTE(v64))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2318, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
LABEL_77:
                                  v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_78:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2318, v50);
                                }

                                v39 = WORD2(v64);
                                if (WORD1(v64) <= WORD2(v64))
                                {
                                  goto LABEL_77;
                                }

                                if (BYTE6(v64) != 2)
                                {
                                  v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_78;
                                }

                                ++WORD2(v64);
                                *(v63 + v39) = v38;
                                --v33;
                              }

                              while (v33);
                              if (a4 <= 4)
                              {
LABEL_42:
                                v40 = v32 - 5;
                                while (!HIBYTE(v64))
                                {
                                  v41 = WORD2(v64);
                                  if (WORD1(v64) <= WORD2(v64))
                                  {
                                    goto LABEL_73;
                                  }

                                  if (BYTE6(v64) != 2)
                                  {
                                    v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                    goto LABEL_74;
                                  }

                                  ++WORD2(v64);
                                  *(v63 + v41) = 0;
                                  if (__CFADD__(v40++, 1))
                                  {
                                    goto LABEL_48;
                                  }
                                }

                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2322, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
LABEL_73:
                                v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_74:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2322, v49);
                              }

LABEL_48:
                              if (HIBYTE(v64))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2325, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v43 = WORD2(v64);
                                if (WORD1(v64) > WORD2(v64))
                                {
                                  if (BYTE6(v64) == 2)
                                  {
                                    ++WORD2(v64);
                                    *(v63 + v43) = a6;
                                    if (HIBYTE(v64))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2326, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v44 = WORD2(v64);
                                      if (WORD1(v64) > WORD2(v64))
                                      {
                                        if (BYTE6(v64) == 2)
                                        {
                                          ++WORD2(v64);
                                          *(v63 + v44) = a7;
                                          if (HIBYTE(v64))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2327, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else if (WORD1(v64) - WORD2(v64) > 1)
                                          {
                                            if (BYTE6(v64) == 2)
                                            {
                                              *(v63 + WORD2(v64)) = a9;
                                              v45 = WORD2(v64) + 2;
                                              WORD2(v64) += 2;
                                              if (HIBYTE(v64))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2328, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                              }

                                              else if (WORD1(v64) - v45 > 1)
                                              {
                                                if (BYTE6(v64) == 2)
                                                {
                                                  *(v63 + v45) = a8;
                                                  *(v63 + WORD2(v64) + 1) = HIBYTE(a8);
                                                  v46 = WORD2(v64);
                                                  v47 = WORD2(v64) + 2;
                                                  WORD2(v64) += 2;
                                                  if (HIBYTE(v64))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2329, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                                  }

                                                  else if (WORD1(v64) > v47)
                                                  {
                                                    if (BYTE6(v64) == 2)
                                                    {
                                                      WORD2(v64) = v46 + 3;
                                                      *(v63 + v47) = a10;
                                                      if (HIBYTE(v64))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2330, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                                      }

                                                      else if (WORD1(v64) - WORD2(v64) > 1)
                                                      {
                                                        if (BYTE6(v64) == 2)
                                                        {
                                                          *(v63 + WORD2(v64)) = a14;
                                                          v48 = WORD2(v64) + 2;
                                                          WORD2(v64) += 2;
                                                          if (HIBYTE(v64))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2331, "OI_STATUS _SRS_DisableHostWakeOnLELinkDrop(uint16_t, _Bool, uint8_t, uint8_t, OI_STATUS *, int8_t, uint8_t, uint16_t, uint16_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                                          }

                                                          else if (WORD1(v64) - v48 > 1)
                                                          {
                                                            if (BYTE6(v64) == 2)
                                                            {
                                                              *(v63 + v48) = a12;
                                                              *(v63 + WORD2(v64) + 1) = a13;
                                                              WORD2(v64) += 2;
                                                              return sub_100020078(464, v63, BYTE4(v64), a15, sub_1001665F4, v24, v25, v26);
                                                            }

                                                            v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_126:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2331, v62);
                                                          }

                                                          v62 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                          goto LABEL_126;
                                                        }

                                                        v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_122:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2330, v61);
                                                      }

                                                      v61 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                      goto LABEL_122;
                                                    }

                                                    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_118:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2329, v60);
                                                  }

                                                  v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                  goto LABEL_118;
                                                }

                                                v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_114:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2328, v59);
                                              }

                                              v59 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                              goto LABEL_114;
                                            }

                                            v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_110:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2327, v58);
                                          }

                                          v58 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                          goto LABEL_110;
                                        }

                                        v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2326, v57);
                                      }
                                    }

                                    v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_106;
                                  }

                                  v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2325, v56);
                                }
                              }

                              v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_102;
                            }

                            v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2293, v55);
                          }
                        }

                        v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_98;
                      }

                      v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2292, v54);
                    }

                    v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_94;
                  }

                  v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2291, v53);
                }

                v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_90;
              }

              v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2290, v52);
            }
          }

          v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_86;
        }

        v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2289, v51);
      }
    }

    v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_82;
  }

  return result;
}

uint64_t sub_100167A24(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2346, "OI_STATUS _SRS_ReadScanStatsWithThreshold(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 10;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2347, "OI_STATUS _SRS_ReadScanStatsWithThreshold(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 4;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2348, "OI_STATUS _SRS_ReadScanStatsWithThreshold(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2349, "OI_STATUS _SRS_ReadScanStatsWithThreshold(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a2;
                            return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2349, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2348, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2347, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2346, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100167C78(int a1, int a2, void (*a3)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2401, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v10) = 2;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2402, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v11) = 10;
                if (a1 == 60 && a2 == 40)
                {
                  if (HIBYTE(v25))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2404, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v12 = WORD2(v25);
                    if (WORD1(v25) > WORD2(v25))
                    {
                      v13 = BYTE6(v25);
                      if (BYTE6(v25) != 2)
                      {
                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_53;
                      }

LABEL_18:
                      WORD2(v25) = v12 + 1;
                      *(v24 + v12) = v13;
                      if (HIBYTE(v25))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2410, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v25) - WORD2(v25) > 1)
                      {
                        if (BYTE6(v25) == 2)
                        {
                          *(v24 + WORD2(v25)) = 0;
                          v15 = WORD2(v25);
                          v16 = WORD2(v25) + 2;
                          WORD2(v25) += 2;
                          if (HIBYTE(v25))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2411, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v25) > v16)
                          {
                            if (BYTE6(v25) == 2)
                            {
                              WORD2(v25) = v15 + 3;
                              *(v24 + v16) = -a1;
                              if (HIBYTE(v25))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2412, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v17 = WORD2(v25);
                                if (WORD1(v25) > WORD2(v25))
                                {
                                  if (BYTE6(v25) == 2)
                                  {
                                    ++WORD2(v25);
                                    *(v24 + v17) = -a2;
                                    return sub_100020078(464, v24, BYTE4(v25), a3, sub_1001665F4, v7, v8, v9);
                                  }

                                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2412, v22);
                                }
                              }

                              v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_48;
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2411, v21);
                          }

                          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_44;
                        }

                        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2410, v20);
                      }

                      v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_40;
                    }
                  }

                  v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_53:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2404, v14);
                }

                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2407, "OI_STATUS _SRS_RSSIThreshold(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v25);
                  if (WORD1(v25) > WORD2(v25))
                  {
                    if (BYTE6(v25) == 2)
                    {
                      v13 = 0;
                      goto LABEL_18;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2407, v23);
                  }
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_55;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2402, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_36;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2401, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_100168054(uint64_t a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2426, "OI_STATUS _SRS_WriteBDAddr(OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 5)
    {
      if (BYTE6(v10) == 2)
      {
        sub_1000075EC((v9 + WORD2(v10)), a1, 6uLL);
        WORD2(v10) += 6;
        return sub_100020078(26, v9, BYTE4(v10), a2, sub_1001665F4, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2426, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100168140(_WORD *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void (*a10)())
{
  v40 = 0;
  v41 = 0;
  result = sub_10001FFD8(&v40);
  if (a3)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  if (a4)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  if (a6)
  {
    v25 = 16;
  }

  else
  {
    v25 = 0;
  }

  if (a7)
  {
    v26 = 64;
  }

  else
  {
    v26 = 0;
  }

  if (a8)
  {
    v27 = 0x80;
  }

  else
  {
    v27 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v41))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2480, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v28 = WORD2(v41);
      if (WORD1(v41) > WORD2(v41))
      {
        if (BYTE6(v41) == 2)
        {
          ++WORD2(v41);
          *(v40 + v28) = 7;
          if (HIBYTE(v41))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2481, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v29 = WORD2(v41);
            if (WORD1(v41) > WORD2(v41))
            {
              if (BYTE6(v41) == 2)
              {
                ++WORD2(v41);
                *(v40 + v29) = 9;
                if (HIBYTE(v41))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2482, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v30 = WORD2(v41);
                  if (WORD1(v41) > WORD2(v41))
                  {
                    if (BYTE6(v41) == 2)
                    {
                      ++WORD2(v41);
                      *(v40 + v30) = 0;
                      if (HIBYTE(v41))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2483, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v41) - WORD2(v41) > 1)
                      {
                        if (BYTE6(v41) == 2)
                        {
                          *(v40 + WORD2(v41)) = *a1;
                          v31 = WORD2(v41);
                          v32 = WORD2(v41) + 2;
                          WORD2(v41) += 2;
                          if (HIBYTE(v41))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2484, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v41) > v32)
                          {
                            if (BYTE6(v41) == 2)
                            {
                              WORD2(v41) = v31 + 3;
                              *(v40 + v32) = v22 | a2 | v23 | v24 | v25 | v26 | v27;
                              if (HIBYTE(v41))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2485, "OI_STATUS _SRS_WriteEnhancedLinkQualityMode(OI_HCI_CONNECTION_HANDLE, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v33 = WORD2(v41);
                                if (WORD1(v41) > WORD2(v41))
                                {
                                  if (BYTE6(v41) == 2)
                                  {
                                    ++WORD2(v41);
                                    *(v40 + v33) = a9;
                                    return sub_100020078(464, v40, BYTE4(v41), a10, sub_1001665F4, v19, v20, v21);
                                  }

                                  v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2485, v39);
                                }
                              }

                              v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_63;
                            }

                            v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2484, v38);
                          }

                          v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_59;
                        }

                        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2483, v37);
                      }

                      v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_55;
                    }

                    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2482, v36);
                  }
                }

                v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_51;
              }

              v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2481, v35);
            }
          }

          v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_47;
        }

        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2480, v34);
      }
    }

    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_10016852C(unint64_t a1, uint64_t a2, signed int a3, const void *a4, void (*a5)())
{
  if (a3 < 0x10)
  {
    return 101;
  }

  v28 = 0;
  v29 = 0;
  result = sub_10001FFD8(&v28);
  if (!result)
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2547, "OI_STATUS _SRS_WriteStoredLELTK(BTAddress, _Bool, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v29);
      if (WORD1(v29) > WORD2(v29))
      {
        if (BYTE6(v29) == 2)
        {
          ++WORD2(v29);
          *(v28 + v10) = 6;
          if (HIBYTE(v29))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2548, "OI_STATUS _SRS_WriteStoredLELTK(BTAddress, _Bool, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v29);
            if (WORD1(v29) > WORD2(v29))
            {
              if (BYTE6(v29) == 2)
              {
                ++WORD2(v29);
                *(v28 + v11) = 11;
                v12 = sub_10009A66C(a1);
                v25 = v12;
                v27 = BYTE6(v12);
                v26 = WORD2(v12);
                if (HIBYTE(v29))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2556, "OI_STATUS _SRS_WriteStoredLELTK(BTAddress, _Bool, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v13 = WORD2(v29);
                  if (WORD1(v29) > WORD2(v29))
                  {
                    if (BYTE6(v29) == 2)
                    {
                      ++WORD2(v29);
                      *(v28 + v13) = (a1 & 0xFF000000000000) != 0;
                      if (HIBYTE(v29))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2557, "OI_STATUS _SRS_WriteStoredLELTK(BTAddress, _Bool, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v29) - WORD2(v29) > 5)
                      {
                        if (BYTE6(v29) == 2)
                        {
                          sub_1000075EC((v28 + WORD2(v29)), &v25 + 1, 6uLL);
                          v14 = WORD2(v29) + 6;
                          WORD2(v29) += 6;
                          v15 = v28;
                          if (HIBYTE(v29))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2558, "OI_STATUS _SRS_WriteStoredLELTK(BTAddress, _Bool, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                            v16 = 0;
                          }

                          else
                          {
                            v16 = WORD1(v29) - v14;
                          }

                          if (v16 < a3)
                          {
                            v24 = "ByteStream_NumReadBytesAvail(bs) >= (ltkLen)";
                          }

                          else
                          {
                            if (BYTE6(v29) == 2)
                            {
                              memmove((v15 + v14), a4, a3);
                              WORD2(v29) += a3;
                              return sub_100020078(464, v28, BYTE4(v29), a5, sub_1001665F4, v17, v18, v19);
                            }

                            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                          }

                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2558, v24);
                        }

                        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2557, v23);
                      }

                      v23 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_38;
                    }

                    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2556, v22);
                  }
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_34;
              }

              v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2548, v21);
            }
          }

          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_30;
        }

        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2547, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10016886C(unint64_t a1, uint64_t a2, void (*a3)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2572, "OI_STATUS _SRS_RemoveStoredLELTK(BTAddress, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v6) = 6;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2573, "OI_STATUS _SRS_RemoveStoredLELTK(BTAddress, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v21);
            if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                ++WORD2(v21);
                *(v20 + v7) = 12;
                v8 = sub_10009A66C(a1);
                v17 = v8;
                v19 = BYTE6(v8);
                v18 = WORD2(v8);
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2581, "OI_STATUS _SRS_RemoveStoredLELTK(BTAddress, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v9 = WORD2(v21);
                  if (WORD1(v21) > WORD2(v21))
                  {
                    if (BYTE6(v21) == 2)
                    {
                      ++WORD2(v21);
                      *(v20 + v9) = (a1 & 0xFF000000000000) != 0;
                      if (HIBYTE(v21))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2582, "OI_STATUS _SRS_RemoveStoredLELTK(BTAddress, _Bool, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v21) - WORD2(v21) > 5)
                      {
                        if (BYTE6(v21) == 2)
                        {
                          sub_1000075EC((v20 + WORD2(v21)), &v17 + 1, 6uLL);
                          WORD2(v21) += 6;
                          return sub_100020078(464, v20, BYTE4(v21), a3, sub_1001665F4, v10, v11, v12);
                        }

                        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2582, v16);
                      }

                      v16 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2581, v15);
                  }
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2573, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2572, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100168AF4(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2596, "OI_STATUS _SRS_ReadLocalControllerCachedInfo(BT_VSC_READ_LOCAL_CACHED_INFO_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 6;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2597, "OI_STATUS _SRS_ReadLocalControllerCachedInfo(BT_VSC_READ_LOCAL_CACHED_INFO_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 13;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_10016555C, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2597, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2596, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100168C48(unint64_t a1, uint64_t a2, char a3, unsigned int a4, const void *a5, void (*a6)())
{
  v35 = 0;
  v36 = 0;
  result = sub_10001FFD8(&v35);
  if (!result)
  {
    if (HIBYTE(v36))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2610, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v36);
      if (WORD1(v36) > WORD2(v36))
      {
        if (BYTE6(v36) == 2)
        {
          ++WORD2(v36);
          *(v35 + v12) = 6;
          if (HIBYTE(v36))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2611, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v13 = WORD2(v36);
            if (WORD1(v36) > WORD2(v36))
            {
              if (BYTE6(v36) == 2)
              {
                ++WORD2(v36);
                *(v35 + v13) = 14;
                v14 = sub_10009A66C(a1);
                v32 = v14;
                v34 = BYTE6(v14);
                v33 = WORD2(v14);
                if (HIBYTE(v36))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2620, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v15 = WORD2(v36);
                  if (WORD1(v36) > WORD2(v36))
                  {
                    if (BYTE6(v36) == 2)
                    {
                      ++WORD2(v36);
                      *(v35 + v15) = (a1 & 0xFF000000000000) != 0;
                      if (HIBYTE(v36))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2621, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v36) - WORD2(v36) > 5)
                      {
                        if (BYTE6(v36) == 2)
                        {
                          sub_1000075EC((v35 + WORD2(v36)), &v32 + 1, 6uLL);
                          v19 = WORD2(v36);
                          v20 = WORD2(v36) + 6;
                          WORD2(v36) += 6;
                          if (HIBYTE(v36))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2622, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v36) > v20)
                          {
                            if (BYTE6(v36) == 2)
                            {
                              if (a4)
                              {
                                v21 = a3;
                              }

                              else
                              {
                                v21 = 1;
                              }

                              WORD2(v36) = v19 + 7;
                              *(v35 + v20) = v21;
                              if (HIBYTE(v36))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2623, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v36) - WORD2(v36) > 1)
                              {
                                if (BYTE6(v36) == 2)
                                {
                                  *(v35 + WORD2(v36)) = a4;
                                  v22 = WORD2(v36) + 2;
                                  WORD2(v36) += 2;
                                  if (a4)
                                  {
                                    v23 = v35;
                                    if (HIBYTE(v36))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2625, "OI_STATUS _SRS_WritePeerCachedInfo(BTAddress, _Bool, uint8_t, uint16_t, uint8_t *, BT_VSC_COMPLETE_CB)");
                                      v24 = 0;
                                    }

                                    else
                                    {
                                      v24 = WORD1(v36) - v22;
                                    }

                                    if (v24 < a4)
                                    {
                                      v31 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
                                    }

                                    else
                                    {
                                      if (BYTE6(v36) == 2)
                                      {
                                        memmove((v23 + v22), a5, a4);
                                        LOBYTE(v22) = BYTE4(v36) + a4;
                                        WORD2(v36) += a4;
                                        return sub_100020078(464, v35, v22, a6, sub_1001665F4, v16, v17, v18);
                                      }

                                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                    }

                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2625, v31);
                                  }

                                  return sub_100020078(464, v35, v22, a6, sub_1001665F4, v16, v17, v18);
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2623, v30);
                              }

                              v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_55;
                            }

                            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2622, v29);
                          }

                          v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_51;
                        }

                        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2621, v28);
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_47;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2620, v27);
                  }
                }

                v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_43;
              }

              v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2611, v26);
            }
          }

          v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_39;
        }

        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2610, v25);
      }
    }

    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_100169094(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2639, "OI_STATUS _SRS_SetMaxInstantUpdateInfo(uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 6;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2640, "OI_STATUS _SRS_SetMaxInstantUpdateInfo(uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 15;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2641, "OI_STATUS _SRS_SetMaxInstantUpdateInfo(uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2641, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2640, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2639, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100169264(__int16 a1, char a2, char a3, char a4, void (*a5)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2654, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v14 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v14) = 6;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2655, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v15 = WORD2(v27);
            if (WORD1(v27) > WORD2(v27))
            {
              if (BYTE6(v27) == 2)
              {
                ++WORD2(v27);
                *(v26 + v15) = 16;
                if (HIBYTE(v27))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2656, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v27) - WORD2(v27) > 1)
                {
                  if (BYTE6(v27) == 2)
                  {
                    *(v26 + WORD2(v27)) = a1;
                    v16 = WORD2(v27);
                    v17 = WORD2(v27) + 2;
                    WORD2(v27) += 2;
                    if (HIBYTE(v27))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2657, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v27) > v17)
                    {
                      if (BYTE6(v27) == 2)
                      {
                        WORD2(v27) = v16 + 3;
                        *(v26 + v17) = a2;
                        if (HIBYTE(v27))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2658, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v18 = WORD2(v27);
                          if (WORD1(v27) > WORD2(v27))
                          {
                            if (BYTE6(v27) == 2)
                            {
                              ++WORD2(v27);
                              *(v26 + v18) = a3;
                              if (HIBYTE(v27))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2659, "OI_STATUS _SRS_SetLePowerControl(uint16_t, uint8_t, int8_t, int8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v19 = WORD2(v27);
                                if (WORD1(v27) > WORD2(v27))
                                {
                                  if (BYTE6(v27) == 2)
                                  {
                                    ++WORD2(v27);
                                    *(v26 + v19) = a4;
                                    return sub_100020078(464, v26, BYTE4(v27), a5, sub_1001665F4, v11, v12, v13);
                                  }

                                  v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2659, v25);
                                }
                              }

                              v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2658, v24);
                          }
                        }

                        v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_41;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2657, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_37;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2656, v22);
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_33;
              }

              v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2655, v21);
            }
          }

          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2654, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001695D4(void *a1, void (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2691, "OI_STATUS _SRS_WriteLELocalSupportedFeatures(uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v8) = 6;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2692, "OI_STATUS _SRS_WriteLELocalSupportedFeatures(uint8_t *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v9) = 23;
                if (HIBYTE(v16))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2693, "OI_STATUS _SRS_WriteLELocalSupportedFeatures(uint8_t *, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v16);
                  if (WORD1(v16) > WORD2(v16))
                  {
                    if (BYTE6(v16) == 2)
                    {
                      ++WORD2(v16);
                      *(v15 + v10) = 1;
                      if (HIBYTE(v16))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2694, "OI_STATUS _SRS_WriteLELocalSupportedFeatures(uint8_t *, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v16) - WORD2(v16) > 7)
                      {
                        if (BYTE6(v16) == 2)
                        {
                          *(v15 + WORD2(v16)) = *a1;
                          WORD2(v16) += 8;
                          return sub_100020078(464, v15, BYTE4(v16), a2, sub_1001665F4, v5, v6, v7);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2694, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= (8)";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2693, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2692, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2691, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10016982C(__int16 a1, unsigned int a2, char *a3, void (*a4)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2707, "OI_STATUS _SRS_Enable_Connection_Adv_Indications(uint16_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_27;
  }

  v12 = WORD2(v25);
  if (WORD1(v25) <= WORD2(v25))
  {
LABEL_27:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_29;
  }

  if (BYTE6(v25) != 2)
  {
    v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2707, v20);
  }

  ++WORD2(v25);
  *(v24 + v12) = 6;
  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2708, "OI_STATUS _SRS_Enable_Connection_Adv_Indications(uint16_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_31;
  }

  v13 = WORD2(v25);
  if (WORD1(v25) <= WORD2(v25))
  {
LABEL_31:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  if (BYTE6(v25) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2708, v21);
  }

  ++WORD2(v25);
  *(v24 + v13) = 19;
  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2710, "OI_STATUS _SRS_Enable_Connection_Adv_Indications(uint16_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_35;
  }

  if (WORD1(v25) - WORD2(v25) <= 1)
  {
LABEL_35:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_37;
  }

  if (BYTE6(v25) != 2)
  {
    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2710, v22);
  }

  *(v24 + WORD2(v25)) = a1;
  v14 = WORD2(v25);
  v15 = WORD2(v25) + 2;
  WORD2(v25) += 2;
  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2711, "OI_STATUS _SRS_Enable_Connection_Adv_Indications(uint16_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_39;
  }

  if (WORD1(v25) <= v15)
  {
LABEL_39:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_41;
  }

  if (BYTE6(v25) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2711, v23);
  }

  WORD2(v25) = v14 + 3;
  *(v24 + v15) = a2;
  if (a2)
  {
    v16 = a2;
    while (!HIBYTE(v25))
    {
      v17 = WORD2(v25);
      if (WORD1(v25) <= WORD2(v25))
      {
        goto LABEL_24;
      }

      if (BYTE6(v25) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_25;
      }

      v18 = *a3++;
      ++WORD2(v25);
      *(v24 + v17) = v18;
      if (!--v16)
      {
        return sub_100020078(464, v24, BYTE4(v25), a4, sub_1001665F4, v9, v10, v11);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2713, "OI_STATUS _SRS_Enable_Connection_Adv_Indications(uint16_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_24:
    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_25:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2713, v19);
  }

  return sub_100020078(464, v24, BYTE4(v25), a4, sub_1001665F4, v9, v10, v11);
}

uint64_t sub_100169B2C(__int16 a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2727, "OI_STATUS _SRS_Configure_Connection_Adv_Indications(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 6;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2728, "OI_STATUS _SRS_Configure_Connection_Adv_Indications(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 20;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2730, "OI_STATUS _SRS_Configure_Connection_Adv_Indications(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 1)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + WORD2(v19)) = a1;
                    v12 = WORD2(v19);
                    v13 = WORD2(v19) + 2;
                    WORD2(v19) += 2;
                    if (HIBYTE(v19))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2731, "OI_STATUS _SRS_Configure_Connection_Adv_Indications(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v19) > v13)
                    {
                      if (BYTE6(v19) == 2)
                      {
                        WORD2(v19) = v12 + 3;
                        *(v18 + v13) = a2;
                        return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2731, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2730, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2728, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2727, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100169D9C(__int16 a1, __int16 a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2744, "OI_STATUS _SRS_WriteCompanyId(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v10) = 1;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2745, "OI_STATUS _SRS_WriteCompanyId(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v11) = 19;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2747, "OI_STATUS _SRS_WriteCompanyId(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v18) - WORD2(v18) > 1)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + WORD2(v18)) = a1;
                    v12 = WORD2(v18) + 2;
                    WORD2(v18) += 2;
                    if (HIBYTE(v18))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2748, "OI_STATUS _SRS_WriteCompanyId(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v18) - v12 > 1)
                    {
                      if (BYTE6(v18) == 2)
                      {
                        *(v17 + v12) = a2;
                        *(v17 + WORD2(v18) + 1) = HIBYTE(a2);
                        WORD2(v18) += 2;
                        return sub_100020078(464, v17, BYTE4(v18), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2748, v16);
                    }

                    v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_31;
                  }

                  v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2747, v15);
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2745, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2744, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10016A028(unsigned __int16 *a1, void (*a2)())
{
  v31 = 0;
  v32 = 0;
  v7 = sub_10001FFD8(&v31);
  if (v7)
  {
    return v7;
  }

  if (HIBYTE(v32))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2794, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
    goto LABEL_51;
  }

  v8 = WORD2(v32);
  if (WORD1(v32) <= WORD2(v32))
  {
LABEL_51:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_53;
  }

  if (BYTE6(v32) != 2)
  {
    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2794, v22);
  }

  v9 = *a1;
  ++WORD2(v32);
  *(v31 + v8) = 2;
  if (HIBYTE(v32))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2795, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
    goto LABEL_55;
  }

  v10 = WORD2(v32);
  if (WORD1(v32) <= WORD2(v32))
  {
LABEL_55:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v32) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2795, v23);
  }

  ++WORD2(v32);
  *(v31 + v10) = 12;
  v11 = *(a1 + 2);
  if (v11 <= 7)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (HIBYTE(v32))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2798, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
        }

        else
        {
          v12 = WORD2(v32);
          if (WORD1(v32) > WORD2(v32))
          {
            if (BYTE6(v32) == 2)
            {
              ++WORD2(v32);
              *(v31 + v12) = 0;
              if (HIBYTE(v32))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2799, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
              }

              else
              {
                v13 = WORD2(v32);
                if (WORD1(v32) > WORD2(v32))
                {
                  if (BYTE6(v32) == 2)
                  {
                    ++WORD2(v32);
                    *(v31 + v13) = 6;
                    v14 = *(a1 + 3) == 1;
                    if (HIBYTE(v32))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2805, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                    }

                    else
                    {
                      v15 = WORD2(v32);
                      if (WORD1(v32) > WORD2(v32))
                      {
                        if (BYTE6(v32) == 2)
                        {
                          v16 = WORD2(v32) + 1;
LABEL_48:
                          WORD2(v32) = v16;
                          *(v31 + v15) = v14;
                          return sub_100020078(464, v31, BYTE4(v32), a2, sub_10016A5F0, v4, v5, v6);
                        }

                        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2805, v30);
                      }
                    }

                    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_85;
                  }

                  v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2799, v29);
                }
              }

              v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_81;
            }

            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2798, v28);
          }
        }

        v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_77;
      }

      goto LABEL_26;
    }

    if (*(a1 + 3) - 6 < 3)
    {
      v14 = 126;
    }

    else
    {
      v14 = 127;
    }

LABEL_35:
    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2842, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
    }

    else
    {
      v18 = WORD2(v32);
      if (WORD1(v32) > WORD2(v32))
      {
        if (BYTE6(v32) == 2)
        {
          ++WORD2(v32);
          *(v31 + v18) = 0;
          if (HIBYTE(v32))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2843, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
          }

          else
          {
            v19 = WORD2(v32);
            if (WORD1(v32) > WORD2(v32))
            {
              if (BYTE6(v32) == 2)
              {
                ++WORD2(v32);
                *(v31 + v19) = 5;
                if (HIBYTE(v32))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2844, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                }

                else if (WORD1(v32) - WORD2(v32) > 1)
                {
                  if (BYTE6(v32) == 2)
                  {
                    *(v31 + WORD2(v32)) = v9;
                    v20 = WORD2(v32);
                    v15 = WORD2(v32) + 2;
                    WORD2(v32) += 2;
                    if (HIBYTE(v32))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2845, "OI_STATUS _SRS_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                    }

                    else if (WORD1(v32) > v15)
                    {
                      if (BYTE6(v32) == 2)
                      {
                        v16 = v20 + 3;
                        goto LABEL_48;
                      }

                      v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2845, v27);
                    }

                    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_73;
                  }

                  v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2844, v26);
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_69;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2843, v25);
            }
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_65;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2842, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  if (v11 == 8)
  {
    v14 = *(a1 + 3) == 1;
    goto LABEL_35;
  }

  if (v11 == 9)
  {
    if (*(a1 + 3) == 1)
    {
      v14 = 126;
    }

    else
    {
      v14 = 127;
    }

    goto LABEL_35;
  }

LABEL_26:
  if (sub_10000C240())
  {
    sub_10000AF54("%s Unsupported config: action=0x%2x configure=0x%2x handle=0x%4x param1=0x%2x param2=0x%2x", "_SRS_AntennaPreference", *(a1 + 2), *(a1 + 3), *a1, *(a1 + 4), *(a1 + 5));
    v17 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v7 = 101;
  if (a2)
  {
    (a2)(101, 0, 0);
  }

  return v7;
}

void sub_10016A5F0(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 337, "void _SRS_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
  }

  else if (*(a3 + 5) - *(a3 + 6) > 1)
  {
    goto LABEL_9;
  }

  if (sub_10000C240())
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 338, "void _SRS_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
      v6 = 0;
    }

    else
    {
      v6 = *(a3 + 5) - *(a3 + 6);
    }

    sub_10000AF54("Invalid data size %d", v6);
    v7 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
      if (!a1)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

LABEL_9:
  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (sub_10000C240())
  {
    v8 = *(a3 + 6);
    v9 = *a3 + v8;
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 342, "void _SRS_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
      v10 = 0;
    }

    else
    {
      v10 = *(a3 + 5) - v8;
    }

    sub_10000AF54("hlCb 0x%x, data %@ len=%d", a2, v9, v10);
    v11 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

LABEL_16:
  if (a2)
  {
    v12 = *a3;
    v13 = *(a3 + 6);
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 344, "void _SRS_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
      v14 = 0;
    }

    else
    {
      v14 = *(a3 + 10) - v13;
    }

    a2(a1, v12 + v13, v14);
  }
}

uint64_t sub_10016A7B8(char a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2862, "OI_STATUS _SRS_setInqPageMode(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 2;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2863, "OI_STATUS _SRS_setInqPageMode(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 13;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2864, "OI_STATUS _SRS_setInqPageMode(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v12 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v12) = a1;
                      if (HIBYTE(v19))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2865, "OI_STATUS _SRS_setInqPageMode(uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v13 = WORD2(v19);
                        if (WORD1(v19) > WORD2(v19))
                        {
                          if (BYTE6(v19) == 2)
                          {
                            ++WORD2(v19);
                            *(v18 + v13) = a2;
                            return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                          }

                          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2865, v17);
                        }
                      }

                      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2864, v16);
                  }
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2863, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2862, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10016AA0C(unsigned int a1, uint64_t a2, void (*a3)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2935, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_47;
  }

  v10 = WORD2(v27);
  if (WORD1(v27) <= WORD2(v27))
  {
LABEL_47:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_49;
  }

  if (BYTE6(v27) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2935, v23);
  }

  ++WORD2(v27);
  *(v26 + v10) = 6;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2936, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_51;
  }

  v11 = WORD2(v27);
  if (WORD1(v27) <= WORD2(v27))
  {
LABEL_51:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_53;
  }

  if (BYTE6(v27) != 2)
  {
    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2936, v24);
  }

  ++WORD2(v27);
  *(v26 + v11) = 22;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2937, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_55;
  }

  v12 = WORD2(v27);
  if (WORD1(v27) <= WORD2(v27))
  {
LABEL_55:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v27) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2937, v25);
  }

  ++WORD2(v27);
  *(v26 + v12) = a1;
  if (a1)
  {
    v13 = a1;
    v14 = (a2 + 4);
    while (!HIBYTE(v27))
    {
      if (WORD1(v27) - WORD2(v27) <= 1)
      {
        goto LABEL_44;
      }

      if (BYTE6(v27) != 2)
      {
        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      *(v26 + WORD2(v27)) = *(v14 - 2);
      v15 = WORD2(v27) + 2;
      WORD2(v27) += 2;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2941, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
LABEL_40:
        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_41:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2941, v21);
      }

      if (WORD1(v27) - v15 <= 1)
      {
        goto LABEL_40;
      }

      if (BYTE6(v27) != 2)
      {
        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_41;
      }

      *(v26 + v15) = *(v14 - 2);
      *(v26 + WORD2(v27) + 1) = *(v14 - 1);
      v16 = WORD2(v27) + 2;
      WORD2(v27) += 2;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2942, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
LABEL_36:
        v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2942, v20);
      }

      if (WORD1(v27) - v16 <= 1)
      {
        goto LABEL_36;
      }

      if (BYTE6(v27) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_37;
      }

      *(v26 + v16) = *v14;
      *(v26 + WORD2(v27) + 1) = v14[1];
      v17 = WORD2(v27) + 2;
      WORD2(v27) += 2;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2943, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
LABEL_32:
        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2943, v19);
      }

      if (WORD1(v27) - v17 <= 1)
      {
        goto LABEL_32;
      }

      if (BYTE6(v27) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_33;
      }

      *(v26 + v17) = v14[2];
      *(v26 + WORD2(v27) + 1) = v14[3];
      v18 = BYTE4(v27) + 2;
      WORD2(v27) += 2;
      v14 += 8;
      if (!--v13)
      {
        return sub_100020078(464, v26, v18, a3, sub_1001665F4, v7, v8, v9);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2940, "OI_STATUS _SRS_appleLeFeatureSetVendorList(uint8_t, BT_VSCValidVendorInfo_t *, BT_VSC_COMPLETE_CB)");
LABEL_44:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2940, v22);
  }

  v18 = BYTE4(v27);
  return sub_100020078(464, v26, v18, a3, sub_1001665F4, v7, v8, v9);
}

uint64_t sub_10016AE68(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2957, "OI_STATUS _SRS_EnableCrcErredLePduReport(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 4;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2958, "OI_STATUS _SRS_EnableCrcErredLePduReport(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 46;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2959, "OI_STATUS _SRS_EnableCrcErredLePduReport(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2959, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2958, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2957, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10016B038(uint64_t a1, void (*a2)())
{
  v112 = 0;
  v113 = 0;
  result = sub_10001FFD8(&v112);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2972, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_158;
  }

  v5 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_158:
    v85 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_160;
  }

  if (BYTE6(v113) != 2)
  {
    v85 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_160:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2972, v85);
  }

  ++WORD2(v113);
  *(v112 + v5) = 4;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2973, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_162;
  }

  v6 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_162:
    v86 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_164;
  }

  if (BYTE6(v113) != 2)
  {
    v86 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_164:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2973, v86);
  }

  ++WORD2(v113);
  *(v112 + v6) = 47;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2975, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_166;
  }

  if (WORD1(v113) - WORD2(v113) <= 1)
  {
LABEL_166:
    v87 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_168;
  }

  if (BYTE6(v113) != 2)
  {
    v87 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_168:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2975, v87);
  }

  *(v112 + WORD2(v113)) = *(a1 + 1);
  v7 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2976, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_170;
  }

  if (WORD1(v113) - v7 <= 1)
  {
LABEL_170:
    v88 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_172;
  }

  if (BYTE6(v113) != 2)
  {
    v88 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_172:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2976, v88);
  }

  *(v112 + v7) = *(a1 + 3);
  *(v112 + WORD2(v113) + 1) = *(a1 + 4);
  v8 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2977, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_174;
  }

  if (WORD1(v113) - v8 <= 1)
  {
LABEL_174:
    v89 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_176;
  }

  if (BYTE6(v113) != 2)
  {
    v89 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_176:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2977, v89);
  }

  *(v112 + v8) = *(a1 + 5);
  *(v112 + WORD2(v113) + 1) = *(a1 + 6);
  v9 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2978, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_178;
  }

  if (WORD1(v113) - v9 <= 1)
  {
LABEL_178:
    v90 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_180;
  }

  if (BYTE6(v113) != 2)
  {
    v90 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_180:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2978, v90);
  }

  *(v112 + v9) = *(a1 + 7);
  *(v112 + WORD2(v113) + 1) = *(a1 + 8);
  v10 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2979, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_182;
  }

  if (WORD1(v113) - v10 <= 1)
  {
LABEL_182:
    v91 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_184;
  }

  if (BYTE6(v113) != 2)
  {
    v91 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_184:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2979, v91);
  }

  *(v112 + v10) = *(a1 + 9);
  *(v112 + WORD2(v113) + 1) = *(a1 + 10);
  v11 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2980, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_186;
  }

  if (WORD1(v113) - v11 <= 1)
  {
LABEL_186:
    v92 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_188;
  }

  if (BYTE6(v113) != 2)
  {
    v92 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_188:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2980, v92);
  }

  *(v112 + v11) = *(a1 + 11);
  *(v112 + WORD2(v113) + 1) = *(a1 + 12);
  v12 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2981, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_190;
  }

  if (WORD1(v113) - v12 <= 1)
  {
LABEL_190:
    v93 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_192;
  }

  if (BYTE6(v113) != 2)
  {
    v93 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_192:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2981, v93);
  }

  *(v112 + v12) = *(a1 + 13);
  *(v112 + WORD2(v113) + 1) = *(a1 + 14);
  v13 = WORD2(v113);
  v14 = WORD2(v113) + 2;
  WORD2(v113) += 2;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2983, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_194;
  }

  if (WORD1(v113) <= v14)
  {
LABEL_194:
    v94 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_196;
  }

  if (BYTE6(v113) != 2)
  {
    v94 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_196:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2983, v94);
  }

  v15 = *(a1 + 15);
  WORD2(v113) = v13 + 3;
  *(v112 + v14) = v15;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2984, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_198;
  }

  if (WORD1(v113) - WORD2(v113) <= 5)
  {
LABEL_198:
    v95 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_200;
  }

  if (BYTE6(v113) != 2)
  {
    v95 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_200:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2984, v95);
  }

  v16 = v112 + WORD2(v113);
  v17 = *(a1 + 16);
  *(v16 + 4) = *(a1 + 20);
  *v16 = v17;
  v18 = WORD2(v113);
  v19 = WORD2(v113) + 6;
  WORD2(v113) += 6;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2986, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_202;
  }

  if (WORD1(v113) <= v19)
  {
LABEL_202:
    v96 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_204;
  }

  if (BYTE6(v113) != 2)
  {
    v96 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_204:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2986, v96);
  }

  v20 = *(a1 + 22);
  WORD2(v113) = v18 + 7;
  *(v112 + v19) = v20;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2987, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_206;
  }

  v21 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_206:
    v97 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_208;
  }

  if (BYTE6(v113) != 2)
  {
    v97 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_208:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2987, v97);
  }

  v22 = *(a1 + 23);
  ++WORD2(v113);
  *(v112 + v21) = v22;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2991, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_210;
  }

  v23 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_210:
    v98 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_212;
  }

  if (BYTE6(v113) != 2)
  {
    v98 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_212:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2991, v98);
  }

  v24 = *(a1 + 24);
  ++WORD2(v113);
  *(v112 + v23) = v24;
  if (v24)
  {
    v25 = 0;
    while (!HIBYTE(v113))
    {
      v26 = WORD2(v113);
      if (WORD1(v113) <= WORD2(v113))
      {
        goto LABEL_151;
      }

      if (BYTE6(v113) != 2)
      {
        v83 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_152;
      }

      v27 = *(a1 + 25 + v25);
      ++WORD2(v113);
      *(v112 + v26) = v27;
      ++v25;
      v28 = *(a1 + 24);
      if (v25 >= v28)
      {
        goto LABEL_52;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2994, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_151:
    v83 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_152:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2994, v83);
  }

  LODWORD(v28) = 0;
LABEL_52:
  v29 = v112;
  v30 = WORD2(v113);
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2996, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    v31 = 0;
    LODWORD(v28) = *(a1 + 24);
  }

  else
  {
    v31 = WORD1(v113) - WORD2(v113);
  }

  v32 = 25 - v28;
  if (v31 < v32)
  {
    v99 = "ByteStream_NumReadBytesAvail(bs) >= (25 - params->blob_length)";
    goto LABEL_215;
  }

  if (BYTE6(v113) != 2)
  {
    v99 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_215:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2996, v99);
  }

  bzero((v29 + v30), v32);
  LODWORD(v33) = *(a1 + 24);
  v34 = WORD2(v113) - v33 + 25;
  WORD2(v113) = v34;
  if (v33)
  {
    v35 = 0;
    do
    {
      if (HIBYTE(v113))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2999, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_155:
        v84 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_156:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 2999, v84);
      }

      v36 = WORD2(v113);
      if (WORD1(v113) <= WORD2(v113))
      {
        goto LABEL_155;
      }

      if (BYTE6(v113) != 2)
      {
        v84 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_156;
      }

      v37 = *(a1 + 50 + v35);
      ++WORD2(v113);
      *(v112 + v36) = v37;
      ++v35;
      v33 = *(a1 + 24);
    }

    while (v35 < v33);
    v34 = WORD2(v113);
  }

  v38 = v112;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3001, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    v39 = 0;
    LODWORD(v33) = *(a1 + 24);
  }

  else
  {
    v39 = WORD1(v113) - v34;
  }

  v40 = 25 - v33;
  if (v39 < v40)
  {
    v100 = "ByteStream_NumReadBytesAvail(bs) >= (25 - params->blob_length)";
    goto LABEL_218;
  }

  if (BYTE6(v113) != 2)
  {
    v100 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_218:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3001, v100);
  }

  bzero((v38 + v34), v40);
  v44 = WORD2(v113) - *(a1 + 24);
  WORD2(v113) = v44 + 25;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3003, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_220;
  }

  if (WORD1(v113) <= (v44 + 25))
  {
LABEL_220:
    v101 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_222;
  }

  if (BYTE6(v113) != 2)
  {
    v101 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_222:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3003, v101);
  }

  v45 = 0;
  v46 = *(a1 + 75);
  WORD2(v113) = v44 + 26;
  *(v112 + (v44 + 25)) = v46;
  do
  {
    if (HIBYTE(v113))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3006, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_131:
      v78 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_132:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3006, v78);
    }

    v47 = WORD2(v113);
    if (WORD1(v113) <= WORD2(v113))
    {
      goto LABEL_131;
    }

    if (BYTE6(v113) != 2)
    {
      v78 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_132;
    }

    v48 = *(a1 + 76 + v45);
    ++WORD2(v113);
    *(v112 + v47) = v48;
    ++v45;
  }

  while (v45 != 32);
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3008, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_224;
  }

  v49 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_224:
    v102 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_226;
  }

  if (BYTE6(v113) != 2)
  {
    v102 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_226:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3008, v102);
  }

  v50 = *(a1 + 108);
  ++WORD2(v113);
  *(v112 + v49) = v50;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3010, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_228;
  }

  if (WORD1(v113) - WORD2(v113) <= 3)
  {
LABEL_228:
    v103 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_230;
  }

  if (BYTE6(v113) != 2)
  {
    v103 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_230:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3010, v103);
  }

  *(v112 + WORD2(v113)) = *(a1 + 109);
  v51 = WORD2(v113);
  v52 = WORD2(v113) + 4;
  WORD2(v113) += 4;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3011, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_232;
  }

  if (WORD1(v113) <= v52)
  {
LABEL_232:
    v104 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_234;
  }

  if (BYTE6(v113) != 2)
  {
    v104 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_234:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3011, v104);
  }

  v53 = *(a1 + 113);
  WORD2(v113) = v51 + 5;
  *(v112 + v52) = v53;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3013, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_236;
  }

  v54 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_236:
    v105 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_238;
  }

  if (BYTE6(v113) != 2)
  {
    v105 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_238:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3013, v105);
  }

  v55 = *(a1 + 114);
  ++WORD2(v113);
  *(v112 + v54) = v55;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3014, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_240;
  }

  v56 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_240:
    v106 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_242;
  }

  if (BYTE6(v113) != 2)
  {
    v106 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_242:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3014, v106);
  }

  v57 = 0;
  v58 = *(a1 + 115);
  ++WORD2(v113);
  *(v112 + v56) = v58;
  do
  {
    if (HIBYTE(v113))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3017, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_135:
      v79 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_136:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3017, v79);
    }

    v59 = WORD2(v113);
    if (WORD1(v113) <= WORD2(v113))
    {
      goto LABEL_135;
    }

    if (BYTE6(v113) != 2)
    {
      v79 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_136;
    }

    v60 = *(a1 + 116 + v57);
    ++WORD2(v113);
    *(v112 + v59) = v60;
    ++v57;
  }

  while (v57 != 32);
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3019, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_244;
  }

  v61 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_244:
    v107 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_246;
  }

  if (BYTE6(v113) != 2)
  {
    v107 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_246:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3019, v107);
  }

  v62 = 0;
  v63 = *(a1 + 148);
  ++WORD2(v113);
  *(v112 + v61) = v63;
  do
  {
    if (HIBYTE(v113))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3022, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_139:
      v80 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_140:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3022, v80);
    }

    v64 = WORD2(v113);
    if (WORD1(v113) <= WORD2(v113))
    {
      goto LABEL_139;
    }

    if (BYTE6(v113) != 2)
    {
      v80 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_140;
    }

    v65 = *(a1 + 149 + v62);
    ++WORD2(v113);
    *(v112 + v64) = v65;
    ++v62;
  }

  while (v62 != 32);
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3024, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_248;
  }

  v66 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_248:
    v108 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_250;
  }

  if (BYTE6(v113) != 2)
  {
    v108 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_250:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3024, v108);
  }

  v67 = *(a1 + 181);
  ++WORD2(v113);
  *(v112 + v66) = v67;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3026, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_252;
  }

  v68 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_252:
    v109 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_254;
  }

  if (BYTE6(v113) != 2)
  {
    v109 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_254:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3026, v109);
  }

  v69 = *(a1 + 182);
  ++WORD2(v113);
  *(v112 + v68) = v69;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3027, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_256;
  }

  v70 = WORD2(v113);
  if (WORD1(v113) <= WORD2(v113))
  {
LABEL_256:
    v110 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_258;
  }

  if (BYTE6(v113) != 2)
  {
    v110 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_258:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3027, v110);
  }

  v71 = *(a1 + 183);
  ++WORD2(v113);
  *(v112 + v70) = v71;
  if (HIBYTE(v113))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3029, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
    goto LABEL_260;
  }

  if (WORD1(v113) - WORD2(v113) <= 1)
  {
LABEL_260:
    v111 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_262;
  }

  if (BYTE6(v113) != 2)
  {
    v111 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_262:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3029, v111);
  }

  v72 = 0;
  *(v112 + WORD2(v113)) = *(a1 + 184);
  WORD2(v113) += 2;
  do
  {
    if (HIBYTE(v113))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3032, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_143:
      v81 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_144:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3032, v81);
    }

    v73 = WORD2(v113);
    if (WORD1(v113) <= WORD2(v113))
    {
      goto LABEL_143;
    }

    if (BYTE6(v113) != 2)
    {
      v81 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_144;
    }

    v74 = *(a1 + 186 + v72);
    ++WORD2(v113);
    *(v112 + v73) = v74;
    ++v72;
  }

  while (v72 != 10);
  for (i = 0; i != 10; ++i)
  {
    if (HIBYTE(v113))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3036, "OI_STATUS _SRS_SetLpmHostWakeScanParameter(LPM_SET_HOSTWAKE_OFFLOAD_SCAN_PARAMS_T *, BT_VSC_COMPLETE_CB)");
LABEL_147:
      v82 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_148:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3036, v82);
    }

    v76 = WORD2(v113);
    if (WORD1(v113) <= WORD2(v113))
    {
      goto LABEL_147;
    }

    if (BYTE6(v113) != 2)
    {
      v82 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_148;
    }

    v77 = *(a1 + 196 + i);
    ++WORD2(v113);
    *(v112 + v76) = v77;
  }

  return sub_100020078(464, v112, BYTE4(v113), a2, sub_1001665F4, v41, v42, v43);
}

uint64_t sub_10016C348(uint64_t a1, void (*a2)())
{
  v40 = 0;
  v41 = 0;
  result = sub_10001FFD8(&v40);
  if (!result)
  {
    if (HIBYTE(v41))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3050, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v41);
      if (WORD1(v41) > WORD2(v41))
      {
        if (BYTE6(v41) == 2)
        {
          ++WORD2(v41);
          *(v40 + v8) = 5;
          if (HIBYTE(v41))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3051, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v41);
            if (WORD1(v41) > WORD2(v41))
            {
              if (BYTE6(v41) == 2)
              {
                ++WORD2(v41);
                *(v40 + v9) = 2;
                if (HIBYTE(v41))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3053, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v41) - WORD2(v41) > 1)
                {
                  if (BYTE6(v41) == 2)
                  {
                    *(v40 + WORD2(v41)) = *a1;
                    v10 = WORD2(v41);
                    v11 = WORD2(v41) + 2;
                    WORD2(v41) += 2;
                    if (HIBYTE(v41))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3054, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v41) > v11)
                    {
                      if (BYTE6(v41) == 2)
                      {
                        v12 = *(a1 + 2);
                        WORD2(v41) = v10 + 3;
                        *(v40 + v11) = v12;
                        if (HIBYTE(v41))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3055, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v13 = WORD2(v41);
                          if (WORD1(v41) > WORD2(v41))
                          {
                            if (BYTE6(v41) == 2)
                            {
                              v14 = 0;
                              v15 = *(a1 + 3);
                              ++WORD2(v41);
                              *(v40 + v13) = v15;
                              do
                              {
                                if (HIBYTE(v41))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3058, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
LABEL_43:
                                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_44:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3058, v29);
                                }

                                v16 = WORD2(v41);
                                if (WORD1(v41) <= WORD2(v41))
                                {
                                  goto LABEL_43;
                                }

                                if (BYTE6(v41) != 2)
                                {
                                  v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_44;
                                }

                                v17 = *(a1 + 4 + v14);
                                ++WORD2(v41);
                                *(v40 + v16) = v17;
                                ++v14;
                              }

                              while (v14 != 32);
                              if (HIBYTE(v41))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3060, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v18 = WORD2(v41);
                                if (WORD1(v41) > WORD2(v41))
                                {
                                  if (BYTE6(v41) == 2)
                                  {
                                    v19 = *(a1 + 36);
                                    ++WORD2(v41);
                                    *(v40 + v18) = v19;
                                    if (HIBYTE(v41))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3061, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v20 = WORD2(v41);
                                      if (WORD1(v41) > WORD2(v41))
                                      {
                                        if (BYTE6(v41) == 2)
                                        {
                                          v21 = 0;
                                          v22 = *(a1 + 37);
                                          ++WORD2(v41);
                                          *(v40 + v20) = v22;
                                          do
                                          {
                                            if (HIBYTE(v41))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3064, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
LABEL_47:
                                              v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_48:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3064, v30);
                                            }

                                            v23 = WORD2(v41);
                                            if (WORD1(v41) <= WORD2(v41))
                                            {
                                              goto LABEL_47;
                                            }

                                            if (BYTE6(v41) != 2)
                                            {
                                              v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                              goto LABEL_48;
                                            }

                                            v24 = *(a1 + 38 + v21);
                                            ++WORD2(v41);
                                            *(v40 + v23) = v24;
                                            ++v21;
                                          }

                                          while (v21 != 32);
                                          if (HIBYTE(v41))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3066, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                                          }

                                          else
                                          {
                                            v25 = WORD2(v41);
                                            if (WORD1(v41) > WORD2(v41))
                                            {
                                              if (BYTE6(v41) == 2)
                                              {
                                                v26 = *(a1 + 70);
                                                ++WORD2(v41);
                                                *(v40 + v25) = v26;
                                                if (HIBYTE(v41))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3068, "OI_STATUS _SRS_SetLpmHostWakeTxAdvDiagParameters(LPM_SET_HOSTWAKE_TXDIAGPARAMETERS_T *, BT_VSC_COMPLETE_CB)");
                                                }

                                                else
                                                {
                                                  v27 = WORD2(v41);
                                                  if (WORD1(v41) > WORD2(v41))
                                                  {
                                                    if (BYTE6(v41) == 2)
                                                    {
                                                      v28 = *(a1 + 71);
                                                      ++WORD2(v41);
                                                      *(v40 + v27) = v28;
                                                      return sub_100020078(464, v40, BYTE4(v41), a2, sub_1001665F4, v5, v6, v7);
                                                    }

                                                    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3068, v39);
                                                  }
                                                }

                                                v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_84;
                                              }

                                              v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3066, v38);
                                            }
                                          }

                                          v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_80;
                                        }

                                        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3061, v37);
                                      }
                                    }

                                    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_76;
                                  }

                                  v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3060, v36);
                                }
                              }

                              v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_72;
                            }

                            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3055, v35);
                          }
                        }

                        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_68;
                      }

                      v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3054, v34);
                    }

                    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_64;
                  }

                  v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3053, v33);
                }

                v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_60;
              }

              v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3051, v32);
            }
          }

          v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_56;
        }

        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3050, v31);
      }
    }

    v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_10016C940(void (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3081, "OI_STATUS _SRS_SetLpmEnable(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 1;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3082, "OI_STATUS _SRS_SetLpmEnable(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 21;
                return sub_100020078(464, v10, BYTE4(v11), a1, sub_1001665F4, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3082, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3081, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10016CA94(char a1, char a2, char a3, int a4, char a5, void (*a6)())
{
  v32 = 0;
  v33 = 0;
  result = sub_10001FFD8(&v32);
  if (!result)
  {
    if (HIBYTE(v33))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3096, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v33);
      if (WORD1(v33) > WORD2(v33))
      {
        if (BYTE6(v33) == 2)
        {
          ++WORD2(v33);
          *(v32 + v16) = 5;
          if (HIBYTE(v33))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3097, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v33);
            if (WORD1(v33) > WORD2(v33))
            {
              if (BYTE6(v33) == 2)
              {
                ++WORD2(v33);
                *(v32 + v17) = 1;
                if (HIBYTE(v33))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3098, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v18 = WORD2(v33);
                  if (WORD1(v33) > WORD2(v33))
                  {
                    if (BYTE6(v33) == 2)
                    {
                      ++WORD2(v33);
                      *(v32 + v18) = 0;
                      if (HIBYTE(v33))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3099, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v19 = WORD2(v33);
                        if (WORD1(v33) > WORD2(v33))
                        {
                          if (BYTE6(v33) == 2)
                          {
                            ++WORD2(v33);
                            *(v32 + v19) = a1;
                            if (HIBYTE(v33))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3100, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v20 = WORD2(v33);
                              if (WORD1(v33) > WORD2(v33))
                              {
                                if (BYTE6(v33) == 2)
                                {
                                  ++WORD2(v33);
                                  *(v32 + v20) = a2;
                                  if (HIBYTE(v33))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3101, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v21 = WORD2(v33);
                                    if (WORD1(v33) > WORD2(v33))
                                    {
                                      if (BYTE6(v33) == 2)
                                      {
                                        ++WORD2(v33);
                                        *(v32 + v21) = a3;
                                        if (HIBYTE(v33))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3102, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else if (WORD1(v33) - WORD2(v33) > 3)
                                        {
                                          if (BYTE6(v33) == 2)
                                          {
                                            *(v32 + WORD2(v33)) = a4;
                                            *(v32 + WORD2(v33) + 2) = BYTE2(a4);
                                            *(v32 + WORD2(v33) + 3) = HIBYTE(a4);
                                            v22 = WORD2(v33);
                                            v23 = WORD2(v33) + 4;
                                            WORD2(v33) += 4;
                                            if (HIBYTE(v33))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3103, "OI_STATUS _SRS_GetAdvStats(uint8_t, uint8_t, uint8_t, uint32_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                            }

                                            else if (WORD1(v33) > v23)
                                            {
                                              if (BYTE6(v33) == 2)
                                              {
                                                WORD2(v33) = v22 + 5;
                                                *(v32 + v23) = a5;
                                                return sub_100020078(464, v32, BYTE4(v33), a6, sub_1001665F4, v13, v14, v15);
                                              }

                                              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3103, v31);
                                            }

                                            v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_59;
                                          }

                                          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3102, v30);
                                        }

                                        v30 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                        goto LABEL_55;
                                      }

                                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3101, v29);
                                    }
                                  }

                                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_51;
                                }

                                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3100, v28);
                              }
                            }

                            v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_47;
                          }

                          v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3099, v27);
                        }
                      }

                      v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_43;
                    }

                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3098, v26);
                  }
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_39;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3097, v25);
            }
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_35;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3096, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10016CF20(int a1, void (*a2)())
{
  v4 = a1 != 1;
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3205, "OI_STATUS _SRS_SetSleepWakeVSEMask(VSEventMaskMode, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v6) = 1;
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3206, "OI_STATUS _SRS_SetSleepWakeVSEMask(VSEventMaskMode, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v24);
            if (WORD1(v24) > WORD2(v24))
            {
              if (BYTE6(v24) == 2)
              {
                ++WORD2(v24);
                *(v23 + v7) = 1;
                if (HIBYTE(v24))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3207, "OI_STATUS _SRS_SetSleepWakeVSEMask(VSEventMaskMode, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v8 = WORD2(v24);
                  if (WORD1(v24) > WORD2(v24))
                  {
                    if (BYTE6(v24) == 2)
                    {
                      v9 = 2 * v4;
                      ++WORD2(v24);
                      *(v23 + v8) = 2 * v4;
                      if (a1 != 1)
                      {
                        if (v9 <= 1)
                        {
                          v11 = 1;
                        }

                        else
                        {
                          v11 = v9;
                        }

                        v12 = &word_1008A2F48;
                        while (!HIBYTE(v24))
                        {
                          if (WORD1(v24) - WORD2(v24) <= 1)
                          {
                            goto LABEL_28;
                          }

                          if (BYTE6(v24) != 2)
                          {
                            v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            goto LABEL_29;
                          }

                          v13 = *v12++;
                          *(v23 + WORD2(v24) + 1) = v13;
                          *(v23 + WORD2(v24)) = HIBYTE(v13);
                          v10 = WORD2(v24) + 2;
                          WORD2(v24) += 2;
                          if (!--v11)
                          {
                            goto LABEL_21;
                          }
                        }

                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3209, "OI_STATUS _SRS_SetSleepWakeVSEMask(VSEventMaskMode, BT_VSC_COMPLETE_CB)");
LABEL_28:
                        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_29:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3209, v18);
                      }

                      v10 = WORD2(v24);
LABEL_21:
                      if (HIBYTE(v24))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3211, "OI_STATUS _SRS_SetSleepWakeVSEMask(VSEventMaskMode, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v14 = (252 - 4 * v4);
                        if (WORD1(v24) - v10 >= v14)
                        {
                          if (BYTE6(v24) == 2)
                          {
                            bzero((v23 + v10), v14);
                            WORD2(v24) += 252 - 4 * v4;
                            return sub_100020078(464, v23, BYTE4(v24), a2, sub_1001665F4, v15, v16, v17);
                          }

                          v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3211, v22);
                        }
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= ((126 - numOfRecords)*2)";
                      goto LABEL_45;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3207, v21);
                  }
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_41;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3206, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_37;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3205, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_10016D250(char a1, void (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3223, "OI_STATUS _SRS_EnableUARTRanging(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 14;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3224, "OI_STATUS _SRS_EnableUARTRanging(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 8;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3225, "OI_STATUS _SRS_EnableUARTRanging(uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v10 = WORD2(v15);
                  if (WORD1(v15) > WORD2(v15))
                  {
                    if (BYTE6(v15) == 2)
                    {
                      ++WORD2(v15);
                      *(v14 + v10) = a1;
                      return sub_100020078(464, v14, BYTE4(v15), a2, sub_1001665F4, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3225, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3224, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3223, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10016D420(__int16 a1, char a2, void (*a3)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3236, "OI_STATUS _SRS_BTClkSensorCTrigTimeSync(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 14;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3237, "OI_STATUS _SRS_BTClkSensorCTrigTimeSync(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v11 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v11) = 1;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3238, "OI_STATUS _SRS_BTClkSensorCTrigTimeSync(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v19) - WORD2(v19) > 1)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + WORD2(v19)) = a1;
                    v12 = WORD2(v19);
                    v13 = WORD2(v19) + 2;
                    WORD2(v19) += 2;
                    if (HIBYTE(v19))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3239, "OI_STATUS _SRS_BTClkSensorCTrigTimeSync(uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v19) > v13)
                    {
                      if (BYTE6(v19) == 2)
                      {
                        WORD2(v19) = v12 + 3;
                        *(v18 + v13) = a2;
                        return sub_100020078(464, v18, BYTE4(v19), a3, sub_1001665F4, v7, v8, v9);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3239, v17);
                    }

                    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3238, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3237, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 3236, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10016D690(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    a2(0);
  }

  return 0;
}

void (**sub_10016D6B8(void (**result)(uint64_t *a1, uint64_t a2), const void *a2))(uint64_t *a1, uint64_t a2)
{
  *result = sub_10016DABC;
  if (a2)
  {
    return memcpy(&qword_100B55380, a2, 0x218uLL);
  }

  return result;
}

uint64_t (*sub_10016D6E0(void *a1, int a2))(void)
{
  memcpy(a1, &off_100AE3008, 0xA50uLL);
  if (a2 == 4000)
  {
    memcpy(a1, &off_100AE3A58, 0xA50uLL);
  }

  sub_10025793C(sub_10016D778);
  sub_1002580C4(sub_10016D808);

  return sub_100255314(sub_10016D950);
}

uint64_t sub_10016D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!, opcode 0x%x, subOpcode %x, myopcode %x", a1, a2, a3, a2 & 0x3FF);
      v6 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return 0;
}

uint64_t sub_10016D808(uint64_t *a1, int a2, int a3, int a4)
{
  if (a2 != 64976)
  {
    return 1;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 375, "_Bool _SRS_SubOpcodeChecker(OI_BYTE_STREAM *, uint16_t, uint8_t, uint8_t)");
  }

  else
  {
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
    if ((v5 - v6) >= 2)
    {
      if (v5 <= v6)
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      else
      {
        if (*(a1 + 14) == 1)
        {
          v7 = *a1;
          *(a1 + 6) = v6 + 1;
          if (v5 <= v6 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 377, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v7 + v6);
          *(a1 + 6) = v6 + 2;
          if (v8 == a3)
          {
            return *(v7 + v6 + 1) == a4;
          }

          return 0;
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 376, v10);
    }
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("SubOpcodeChecker[0x%x], length is too short", 64976);
    v9 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

BOOL sub_10016D950(int a1, int a2, int a3)
{
  v6 = 0;
  v7 = 1;
  v8 = &byte_1008A2F4F;
  do
  {
    if (*(v8 - 3) == a1)
    {
      v9 = *(v8 - 1);
      if (v9 == 255 || v9 == a2)
      {
        v11 = *v8;
        if (v11 == 255 || v11 == a3)
        {
          break;
        }
      }
    }

    v7 = v6 < 0xB;
    v8 += 4;
    ++v6;
  }

  while (v6 != 12);
  if (sub_10000C240())
  {
    v13 = "disallowing";
    if (v7)
    {
      v13 = "allowing";
    }

    sub_10000AF54("Stack halted, %s cmd opcode 0x%4x 0x%4x", v13, a1, a3 | (a2 << 8));
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v7;
}

void *sub_10016DAA0(void *__src)
{
  if (__src)
  {
    return memcpy(&unk_100B55598, __src, 0x218uLL);
  }

  return __src;
}

void sub_10016DABC(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 996, "void _SRS_EventHandler(OI_BYTE_STREAM *, _Bool)");
    goto LABEL_18;
  }

  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  if (v3 <= v4)
  {
LABEL_18:
    v13 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a1 + 14) != 1)
  {
    v13 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 996, v13);
  }

  v5 = *a1;
  *(a1 + 6) = v4 + 1;
  v6 = *(v5 + v4);
  if (v6 == 80)
  {
    goto LABEL_15;
  }

  if (v6 != 29)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unhandled Vendor Specific Event: 0x%x", v6);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_15;
  }

  if ((v3 - (v4 + 1)) <= 1)
  {
    sub_1000D660C();
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1012, "void _SRS_EventHandler(OI_BYTE_STREAM *, _Bool)");
      goto LABEL_25;
    }
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  if (v8 <= v9)
  {
LABEL_25:
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1012, v14);
  }

  if (*(a1 + 14) != 1)
  {
LABEL_22:
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_26;
  }

  v10 = *a1;
  *(a1 + 6) = v9 + 1;
  if (v8 <= v9 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 1013, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v11 = *(v10 + v9);
  *(a1 + 6) = v9 + 2;
  sub_10016DC90(v11, *(v10 + v9 + 1), a1, a2);
LABEL_15:
  if (*(a1 + 15))
  {
    sub_1000C52F4(136);
    goto LABEL_22;
  }
}

void sub_10016DC90(int a1, int a2, uint64_t *a3, uint64_t a4)
{
  v8 = a2 | (a1 << 8);
  v9 = *a3;
  v10 = *(a3 + 6);
  v11 = (*a3 + v10);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 472, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 10) - v10;
  }

  if (v8 > 1793)
  {
    if (v8 <= 2304)
    {
      if (v8 > 1796)
      {
        if (v8 > 1798)
        {
          if (v8 == 1799)
          {
            if (qword_100B55580)
            {
              memset(v179, 0, 144);
              if (sub_1002EDC0C(a3, v179))
              {
                (qword_100B55580)(v179);
                return;
              }
            }
          }

          else if (v8 == 2049)
          {
            return;
          }
        }

        else if (v8 == 1797)
        {
          if (qword_100B55588)
          {
            memset(v179, 0, 152);
            if (sub_1002EDE84(a3, v179))
            {
              (qword_100B55588)(v179);
              return;
            }
          }
        }

        else if (qword_100B55578)
        {
          v180 = 0;
          memset(v179, 0, sizeof(v179));
          if (sub_1002ED79C(a3, v179))
          {
            (qword_100B55578)(v179);
            return;
          }
        }

        goto LABEL_330;
      }

      if (v8 == 1794)
      {
        v55 = off_100B554C8;
        if (!off_100B554C8)
        {
          goto LABEL_330;
        }

        v54 = *a3 + *(a3 + 6);

LABEL_144:
        v55(v54);
        return;
      }

      if (v8 != 1795)
      {
        v13 = qword_100B55400;
        if (!qword_100B55400)
        {
          goto LABEL_330;
        }

        v46 = v12;
        if (v12 <= 0xBCu)
        {
          if (!sub_10000C240())
          {
            goto LABEL_330;
          }

          sub_10000AF54("SRS_ADDITIONAL_BTCOEX_STATS_EVT: invalid length(%d)", v46);
          v47 = sub_10000C050(0x54u);
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_330;
          }

          goto LABEL_289;
        }

        v51 = v11;
        v52 = 189;
LABEL_272:

        goto LABEL_134;
      }

      v13 = qword_100B553E8;
      if (!qword_100B553E8)
      {
        goto LABEL_330;
      }

      if ((*v11 & 0x40) != 0)
      {
        v94 = -73;
      }

      else
      {
        v94 = -77;
      }

      if ((*v11 & 0x40) != 0)
      {
        v95 = 183;
      }

      else
      {
        v95 = 179;
      }

      v96 = v12;
      if (v12 < v95)
      {
        if (!sub_10000C240())
        {
          goto LABEL_330;
        }

        sub_10000AF54("SRS_AUDIO_LINK_QUALITY_STATS_EVT: invalid length(%d)", v96);
        v97 = sub_10000C050(0x54u);
        if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_330;
        }

        goto LABEL_289;
      }

      v52 = v94;
LABEL_271:
      v51 = v11;
      goto LABEL_272;
    }

    if (v8 <= 2563)
    {
      if (v8 == 2305)
      {
        v13 = qword_100B55488;
        if (qword_100B55488)
        {
          if (!v12)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("WAKE_REASON_REPORT_EVT - Invalid data size %lu", 0);
              v109 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_286;
              }
            }

            return;
          }

          v51 = (v11 + 1);
          v52 = (v12 - 1);
          goto LABEL_272;
        }

        goto LABEL_330;
      }

      if (v8 != 2561)
      {
        if (v8 != 2563)
        {
          goto LABEL_330;
        }

        v15 = off_100B554F8;
        if (!off_100B554F8)
        {
          goto LABEL_330;
        }

        memset(v179 + 4, 0, 256);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 513, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        }

        else
        {
          v16 = *(a3 + 5);
          v17 = *(a3 + 6);
          if (v16 - v17 > 3)
          {
            if (*(a3 + 14) == 1)
            {
              v18 = *a3;
              LODWORD(v179[0]) = *(*a3 + v17);
              *(a3 + 6) = v17 + 4;
              if (v16 - (v17 + 4) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 514, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v179[0]) = *(v18 + (v17 + 4));
              *(a3 + 6) = v17 + 8;
              if (v16 - (v17 + 8) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 515, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v179[1]) = *(v18 + (v17 + 8));
              *(a3 + 6) = v17 + 12;
              if (v16 - (v17 + 12) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 516, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v179[1]) = *(v18 + (v17 + 12));
              *(a3 + 6) = v17 + 16;
              if (v16 - (v17 + 16) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 517, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v179[2]) = *(v18 + (v17 + 16));
              *(a3 + 6) = v17 + 20;
              v19 = v16 - (v17 + 20);
              if ((v19 & 0x1FE) != 0)
              {
                if (v19 <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 521, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[2]) = *(v18 + (v17 + 20));
                *(a3 + 6) = v17 + 24;
                if (v16 - (v17 + 24) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 522, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[2]) = *(v18 + (v17 + 24));
                *(a3 + 6) = v17 + 28;
                if (v16 - (v17 + 28) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 523, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[3]) = *(v18 + (v17 + 28));
                *(a3 + 6) = v17 + 32;
                if (v16 - (v17 + 32) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 524, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[3]) = *(v18 + (v17 + 32));
                *(a3 + 6) = v17 + 36;
                if (v16 - (v17 + 36) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 525, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[3]) = *(v18 + (v17 + 36));
                *(a3 + 6) = v17 + 40;
                if (v16 - (v17 + 40) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 526, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[3]) = *(v18 + (v17 + 40));
                *(a3 + 6) = v17 + 44;
                if (v16 - (v17 + 44) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 527, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[4]) = *(v18 + (v17 + 44));
                *(a3 + 6) = v17 + 48;
                if (v16 - (v17 + 48) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 528, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[4]) = *(v18 + (v17 + 48));
                *(a3 + 6) = v17 + 52;
                if (v16 - (v17 + 52) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 529, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[4]) = *(v18 + (v17 + 52));
                *(a3 + 6) = v17 + 56;
                if (v16 - (v17 + 56) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 531, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[4]) = *(v18 + (v17 + 56));
                *(a3 + 6) = v17 + 60;
                if (v16 - (v17 + 60) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 532, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[5]) = *(v18 + (v17 + 60));
                *(a3 + 6) = v17 + 64;
                if (v16 - (v17 + 64) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 533, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[5]) = *(v18 + (v17 + 64));
                *(a3 + 6) = v17 + 68;
                if (v16 - (v17 + 68) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 534, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[5]) = *(v18 + (v17 + 68));
                *(a3 + 6) = v17 + 72;
                if (v16 - (v17 + 72) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 535, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[5]) = *(v18 + (v17 + 72));
                *(a3 + 6) = v17 + 76;
                if (v16 - (v17 + 76) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 536, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[6]) = *(v18 + (v17 + 76));
                *(a3 + 6) = v17 + 80;
                if (v16 - (v17 + 80) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 537, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[6]) = *(v18 + (v17 + 80));
                *(a3 + 6) = v17 + 84;
                if (v16 - (v17 + 84) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 538, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[6]) = *(v18 + (v17 + 84));
                *(a3 + 6) = v17 + 88;
                if (v16 - (v17 + 88) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 539, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[6]) = *(v18 + (v17 + 88));
                *(a3 + 6) = v17 + 92;
                if (v16 - (v17 + 92) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 540, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[7]) = *(v18 + (v17 + 92));
                *(a3 + 6) = v17 + 96;
                if (v16 - (v17 + 96) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 541, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[7]) = *(v18 + (v17 + 96));
                *(a3 + 6) = v17 + 100;
                if (v16 - (v17 + 100) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 542, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[7]) = *(v18 + (v17 + 100));
                *(a3 + 6) = v17 + 104;
                if (v16 - (v17 + 104) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 543, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[7]) = *(v18 + (v17 + 104));
                *(a3 + 6) = v17 + 108;
                if (v16 - (v17 + 108) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 544, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[8]) = *(v18 + (v17 + 108));
                *(a3 + 6) = v17 + 112;
                if (v16 - (v17 + 112) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 545, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[8]) = *(v18 + (v17 + 112));
                *(a3 + 6) = v17 + 116;
                if (v16 - (v17 + 116) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 546, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[8]) = *(v18 + (v17 + 116));
                *(a3 + 6) = v17 + 120;
                if (v16 - (v17 + 120) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 547, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[8]) = *(v18 + (v17 + 120));
                *(a3 + 6) = v17 + 124;
                if (v16 - (v17 + 124) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 548, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[9]) = *(v18 + (v17 + 124));
                *(a3 + 6) = v17 + 128;
                if (v16 - (v17 + 128) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 549, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[9]) = *(v18 + (v17 + 128));
                *(a3 + 6) = v17 + 132;
                if (v16 - (v17 + 132) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 550, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[9]) = *(v18 + (v17 + 132));
                *(a3 + 6) = v17 + 136;
                if (v16 - (v17 + 136) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 551, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                HIDWORD(v179[9]) = *(v18 + (v17 + 136));
                *(a3 + 6) = v17 + 140;
                if (v16 - (v17 + 140) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 552, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                LODWORD(v179[10]) = *(v18 + (v17 + 140));
                *(a3 + 6) = v17 + 144;
                if (v16 - (v17 + 144) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 553, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD1(v179[10]) = *(v18 + (v17 + 144));
                *(a3 + 6) = v17 + 148;
                if (v16 - (v17 + 148) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 554, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                DWORD2(v179[10]) = *(v18 + (v17 + 148));
                *(a3 + 6) = v17 + 152;
              }

              goto LABEL_259;
            }

            v169 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_442:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 513, v169);
          }
        }

        v169 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
        goto LABEL_442;
      }

      v13 = qword_100B55408;
      if (!qword_100B55408)
      {
        goto LABEL_330;
      }

LABEL_157:
      v51 = (*a3 + *(a3 + 6));
LABEL_158:
      v52 = a4;
      goto LABEL_272;
    }

    if ((v8 - 3585) < 3)
    {
      return;
    }

    if (v8 != 2564)
    {
      if (v8 != 2565)
      {
        goto LABEL_330;
      }

      v13 = off_100B55418;
      if (!off_100B55418)
      {
        goto LABEL_330;
      }

      goto LABEL_157;
    }

    v15 = qword_100B55510;
    if (!qword_100B55510)
    {
      goto LABEL_330;
    }

    LODWORD(v179[2]) = 0;
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 564, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
    }

    else
    {
      v98 = *(a3 + 5);
      v99 = *(a3 + 6);
      if ((v98 - v99) > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v100 = *a3;
          v101 = *(*a3 + v99);
          *(a3 + 6) = v99 + 4;
          LODWORD(v179[0]) = v101;
          DWORD1(v179[0]) = v101;
          if ((v98 - (v99 + 4)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 566, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v102 = *(v100 + (v99 + 4));
          *(a3 + 6) = v99 + 8;
          DWORD2(v179[0]) = v102;
          HIDWORD(v179[0]) = v102;
          if ((v98 - (v99 + 8)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 568, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v103 = *(v100 + (v99 + 8));
          *(a3 + 6) = v99 + 12;
          LODWORD(v179[1]) = v103;
          DWORD1(v179[1]) = v103;
          if ((v98 - (v99 + 12)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 570, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v104 = *(v100 + (v99 + 12));
          *(a3 + 6) = v99 + 16;
          DWORD2(v179[1]) = v104;
          HIDWORD(v179[1]) = v104;
          if (v98 <= (v99 + 16))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 572, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v99 + 17;
          LOBYTE(v179[2]) = *(v100 + (v99 + 16));
          goto LABEL_259;
        }

        v172 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_521:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 564, v172);
      }
    }

    v172 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_521;
  }

  if (v8 > 1029)
  {
    if (v8 <= 1537)
    {
      if (v8 <= 1280)
      {
        if (v8 == 1030)
        {
          return;
        }

        if (v8 != 1032)
        {
          goto LABEL_330;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 639, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        }

        else
        {
          v20 = *(a3 + 5);
          v21 = *(a3 + 6);
          if (v20 > v21)
          {
            if (*(a3 + 14) == 1)
            {
              v22 = *a3;
              v23 = v21 + 1;
              *(a3 + 6) = v21 + 1;
              if (*(v22 + v21) != 2)
              {
                return;
              }

              memset(v179 + 4, 0, 44);
              if ((v20 - v23) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 648, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v24 = *(v22 + v23);
              *(a3 + 6) = v21 + 5;
              LODWORD(v179[0]) = v24;
              if (v20 <= (v21 + 5))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 651, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              v25 = v21 + 6;
              *(a3 + 6) = v21 + 6;
              BYTE4(v179[0]) = *(v22 + (v21 + 5));
              if (BYTE4(v179[0]) != 32)
              {
                if (!sub_10000C240())
                {
                  goto LABEL_330;
                }

                sub_10000AF54("prkLength invalid: %d", BYTE4(v179[0]));
                v110 = sub_10000C050(0x54u);
                if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_330;
                }

                goto LABEL_289;
              }

              LODWORD(v26) = v20 - v25;
              if (v20 >= v25)
              {
                v26 = v26;
              }

              else
              {
                v26 = 0;
              }

              v27 = v21 + 8;
              v28 = v22 + v25;
              v29 = -v26;
              for (i = -1; i != 31; ++i)
              {
                if (v29 + i == -1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 658, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                v31 = v27;
                v32 = v21 + 6 + i + 2;
                *(a3 + 6) = v32;
                *(v179 + i + 6) = *(v28 + i + 1);
                ++v27;
              }

              if (v20 <= v32)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 662, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              *(a3 + 6) = v32 + 1;
              BYTE5(v179[2]) = *(v22 + (v21 + 38));
              v33 = BYTE5(v179[2]);
              if (BYTE5(v179[2]) != 10)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("deviceIdLength invalid: %d", v33);
                  v142 = sub_10000C050(0x54u);
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                goto LABEL_330;
              }

              v34 = (v22 + v31);
              v35 = v31 + 1;
              v36 = (v20 - v21 - 39);
              for (j = 38; j != 48; ++j)
              {
                if (!v36)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 669, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                *(a3 + 6) = v35;
                v38 = *v34++;
                *(v179 + j) = v38;
                ++v35;
                --v36;
              }

              v15 = qword_100B55590;
              if (!qword_100B55590)
              {
                return;
              }

LABEL_259:
              v15(v179);
              return;
            }

            v166 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_417:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 639, v166);
          }
        }

        v166 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_417;
      }

      if (v8 != 1281)
      {
        if (v8 != 1537)
        {
          goto LABEL_330;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 710, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        }

        else
        {
          v48 = *(a3 + 5);
          v49 = *(a3 + 6);
          if (v48 - v49 > 3)
          {
            if (*(a3 + 14) == 1)
            {
              v50 = *a3;
              v51 = *(*a3 + v49);
              *(a3 + 6) = v49 + 4;
              if (v48 - (v49 + 4) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 711, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v52 = *(v50 + (v49 + 4));
              *(a3 + 6) = v49 + 8;
              v13 = off_100B55398;
              if (!off_100B55398)
              {
                return;
              }

LABEL_134:
              v13(v51, v52);
              return;
            }

            v167 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_419:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 710, v167);
          }
        }

        v167 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
        goto LABEL_419;
      }

      memset(v179, 0, 56);
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 686, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        v83 = *(a3 + 5);
        v84 = *(a3 + 6);
        if (v83 > v84)
        {
          if (*(a3 + 14) == 1)
          {
            v85 = *a3;
            *(a3 + 6) = v84 + 1;
            LOBYTE(v179[0]) = *(v85 + v84);
            if ((v83 - (v84 + 1)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 687, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD1(v179[0]) = *(v85 + v84 + 1);
            *(a3 + 6) = v84 + 5;
            if (v83 <= (v84 + 5))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 688, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a3 + 6) = v84 + 6;
            BYTE8(v179[0]) = *(v85 + (v84 + 5));
            if ((v83 - (v84 + 6)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 689, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v179[0]) = *(v85 + (v84 + 6));
            *(a3 + 6) = v84 + 10;
            if ((v83 - (v84 + 10)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 690, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v179[1]) = *(v85 + (v84 + 10));
            *(a3 + 6) = v84 + 14;
            if ((v83 - (v84 + 14)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 691, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD1(v179[1]) = *(v85 + (v84 + 14));
            *(a3 + 6) = v84 + 18;
            if ((v83 - (v84 + 18)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 692, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD2(v179[1]) = *(v85 + (v84 + 18));
            *(a3 + 6) = v84 + 22;
            if ((v83 - (v84 + 22)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 693, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v179[1]) = *(v85 + (v84 + 22));
            *(a3 + 6) = v84 + 26;
            if ((v83 - (v84 + 26)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 694, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v179[2]) = *(v85 + (v84 + 26));
            *(a3 + 6) = v84 + 30;
            if ((v83 - (v84 + 30)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 695, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD1(v179[2]) = *(v85 + (v84 + 30));
            *(a3 + 6) = v84 + 34;
            if ((v83 - (v84 + 34)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 696, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD2(v179[2]) = *(v85 + (v84 + 34));
            *(a3 + 6) = v84 + 38;
            if ((v83 - (v84 + 38)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 697, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v179[2]) = *(v85 + (v84 + 38));
            *(a3 + 6) = v84 + 42;
            if ((v83 - (v84 + 42)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 698, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v179[3]) = *(v85 + (v84 + 42));
            *(a3 + 6) = v84 + 46;
            if (v83 <= (v84 + 46))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 699, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a3 + 6) = v84 + 47;
            BYTE4(v179[3]) = *(v85 + (v84 + 46));
            if (v83 <= (v84 + 47))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 700, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a3 + 6) = v84 + 48;
            BYTE5(v179[3]) = *(v85 + (v84 + 47));
            if (v83 <= (v84 + 48))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 701, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a3 + 6) = v84 + 49;
            BYTE6(v179[3]) = *(v85 + (v84 + 48));
            (qword_100B55560)(v179);
            return;
          }

          v165 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_415:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 686, v165);
        }
      }

      v165 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_415;
    }

    if (v8 <= 1540)
    {
      if (v8 != 1538)
      {
        if (v8 != 1540 || !off_100B55540)
        {
          goto LABEL_330;
        }

        memset(v179, 0, 80);
        if (*(a3 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 762, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 762, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        }

        else
        {
          v39 = *(a3 + 5);
          v40 = *(a3 + 6);
          if (v39 > v40)
          {
            v41 = *a3;
            *(a3 + 6) = v40 + 1;
            if ((v39 - (v40 + 1)) > 1)
            {
              v42 = *(v41 + v40);
              v43 = *(v41 + v40 + 1);
              *(a3 + 6) = v40 + 3;
              if (v39 <= (v40 + 3))
              {
                *(a3 + 15) = 1;
                memset(v178, 0, 7);
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 767, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
              }

              else
              {
                *(a3 + 6) = v40 + 4;
                memset(v178, 0, 7);
                if (v39 > (v40 + 4))
                {
                  *(a3 + 6) = v40 + 5;
                  LOBYTE(v178[0]) = *(v41 + (v40 + 4));
                  v44 = LOBYTE(v178[0]);
                  v45 = (v178[0] & 0xFE) == 2;
                  if (LOBYTE(v178[0]) == 3)
                  {
                    v44 = 1;
                    LOBYTE(v178[0]) = 1;
                  }

                  else if (LOBYTE(v178[0]) == 2)
                  {
                    v44 = 0;
                    LOBYTE(v178[0]) = 0;
                  }

                  if (*(a3 + 14) == 1)
                  {
                    v164 = *(a3 + 6);
                    if (*(a3 + 5) - v164 >= 6)
                    {
                      sub_1000075EC(v178 + 1, *a3 + v164, 6uLL);
                      *(a3 + 6) += 6;
                      v44 = LOBYTE(v178[0]);
                      v108 = (BYTE1(v178[0]) << 40) | (BYTE2(v178[0]) << 32) | (HIBYTE(v178[0]) << 24) | (LOBYTE(v178[1]) << 16) | (BYTE1(v178[1]) << 8) | BYTE2(v178[1]);
LABEL_279:
                      *(v177 + 3) = 0;
                      v177[0] = 0;
                      if (*(a3 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 786, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 786, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                      }

                      else
                      {
                        v123 = *(a3 + 6);
                        if (*(a3 + 5) - v123 >= 6)
                        {
                          sub_1000075EC(v177 + 1, *a3 + v123, 6uLL);
                          *(a3 + 6) += 6;
                          goto LABEL_304;
                        }
                      }

                      *(a3 + 15) = 1;
LABEL_304:
                      LOBYTE(v177[0]) = 1;
                      *(&v179[1] + 1) = (BYTE2(v177[0]) << 32) | (BYTE1(v177[0]) << 40) | (HIBYTE(v177[0]) << 24) | (LOBYTE(v177[1]) << 16) | (BYTE1(v177[1]) << 8) | BYTE2(v177[1]) | 0x1000000000000;
                      *(v176 + 3) = 0;
                      v176[0] = 0;
                      if (*(a3 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 791, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      v124 = v108 | (v44 << 48);
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 791, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                      }

                      else
                      {
                        v125 = *(a3 + 6);
                        if (*(a3 + 5) - v125 >= 6)
                        {
                          sub_1000075EC(v176 + 1, *a3 + v125, 6uLL);
                          *(a3 + 6) += 6;
                          goto LABEL_310;
                        }
                      }

                      *(a3 + 15) = 1;
LABEL_310:
                      v126 = BYTE2(v176[0]) << 32;
                      v127 = v126 | (BYTE1(v176[0]) << 40) | (HIBYTE(v176[0]) << 24) | (LOBYTE(v176[1]) << 16) | (BYTE1(v176[1]) << 8) | BYTE2(v176[1]) | 0x1000000000000;
                      if (v45)
                      {
                        v128 = v126 | (BYTE1(v176[0]) << 40) | (HIBYTE(v176[0]) << 24) | (LOBYTE(v176[1]) << 16) | (BYTE1(v176[1]) << 8) | BYTE2(v176[1]) | 0x1000000000000;
                      }

                      else
                      {
                        v128 = v124;
                      }

                      if (!v45)
                      {
                        v127 = 0;
                      }

                      *&v179[1] = v128;
                      *&v179[2] = v127;
                      if (*(a3 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 797, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 797, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                        v129 = *(a3 + 14);
                        *(a3 + 15) = 1;
                        if (v129 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 798, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }
                      }

                      else
                      {
                        v130 = *(a3 + 6);
                        if (*(a3 + 5) - v130 > 1)
                        {
                          WORD4(v179[2]) = *(*a3 + v130);
                          *(a3 + 6) = v130 + 2;
                          if (*(a3 + 5) - (v130 + 2) > 1)
                          {
                            WORD5(v179[2]) = *(*a3 + (v130 + 2));
                            *(a3 + 6) = v130 + 4;
                            if (*(a3 + 5) - (v130 + 4) > 1)
                            {
                              WORD6(v179[2]) = *(*a3 + (v130 + 4));
                              v131 = v130 + 6;
                              *(a3 + 6) = v130 + 6;
                              if (*(a3 + 5) > (v130 + 6))
                              {
                                v132 = *a3;
                                v133 = v130 + 7;
                                *(a3 + 6) = v133;
                                BYTE14(v179[2]) = *(v132 + v131);
                                if (*(a3 + 5) > v133)
                                {
                                  v134 = v133;
                                  v135 = *a3;
                                  v136 = v133 + 1;
                                  *(a3 + 6) = v136;
                                  HIBYTE(v179[2]) = *(v135 + v134);
                                  if (*(a3 + 5) - v136 > 1)
                                  {
                                    v137 = v136;
                                    v138 = *a3;
                                    LOWORD(v179[3]) = *(*a3 + v137);
                                    *(a3 + 6) = v137 + 2;
                                    if (*(a3 + 5) - (v137 + 2) > 1)
                                    {
                                      WORD1(v179[3]) = *(v138 + (v137 + 2));
                                      v139 = v137 + 4;
                                      *(a3 + 6) = v139;
                                      v140 = 8;
                                      BYTE12(v179[3]) = 8;
                                      v141 = *(a3 + 5) - v139;
LABEL_362:
                                      if (v141 >= v140)
                                      {
                                        __memmove_chk();
                                        v155 = *(a3 + 6) + BYTE12(v179[3]);
                                        *(a3 + 6) = v155;
                                        if (*(a3 + 14) != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 809, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        if (*(a3 + 15))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 809, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                          v156 = *(a3 + 14);
                                          *(a3 + 15) = 1;
                                          if (v156 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 810, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }
                                        }

                                        else
                                        {
                                          if (*(a3 + 5) > v155)
                                          {
                                            v157 = *a3;
                                            *(a3 + 6) = v155 + 1;
                                            BYTE13(v179[3]) = *(v157 + v155);
                                            if (*(a3 + 5) > (v155 + 1))
                                            {
                                              v158 = *a3;
                                              *(a3 + 6) = v155 + 2;
                                              BYTE14(v179[3]) = *(v158 + (v155 + 1));
                                              if (*(a3 + 5) - (v155 + 2) > 1)
                                              {
                                                LOWORD(v179[4]) = *(*a3 + (v155 + 2));
                                                *(a3 + 6) = v155 + 4;
                                                if (*(a3 + 5) - (v155 + 4) > 1)
                                                {
                                                  WORD1(v179[4]) = *(*a3 + (v155 + 4));
                                                  *(a3 + 6) = v155 + 6;
                                                  if (*(a3 + 5) - (v155 + 6) > 1)
                                                  {
                                                    WORD2(v179[4]) = *(*a3 + (v155 + 6));
                                                    *(a3 + 6) = v155 + 8;
                                                    if (*(a3 + 5) - (v155 + 8) > 1)
                                                    {
                                                      WORD3(v179[4]) = *(*a3 + (v155 + 8));
                                                      *(a3 + 6) = v155 + 10;
                                                      if (*(a3 + 5) - (v155 + 10) >= 2)
                                                      {
                                                        WORD4(v179[4]) = *(*a3 + (v155 + 10));
                                                        *(a3 + 6) = v155 + 12;
LABEL_383:
                                                        *&v179[0] = sub_1000ABB80(v43);
                                                        v181[2] = v179[2];
                                                        v181[3] = v179[3];
                                                        v181[4] = v179[4];
                                                        v181[0] = v179[0];
                                                        v181[1] = v179[1];
                                                        off_100B55540(v42, v181);
                                                        return;
                                                      }

LABEL_382:
                                                      *(a3 + 15) = 1;
                                                      goto LABEL_383;
                                                    }

                                                    *(a3 + 15) = 1;
LABEL_381:
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 815, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                                    goto LABEL_382;
                                                  }

                                                  *(a3 + 15) = 1;
LABEL_380:
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 814, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                                  v163 = *(a3 + 14);
                                                  *(a3 + 15) = 1;
                                                  if (v163 != 1)
                                                  {
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 815, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                  }

                                                  goto LABEL_381;
                                                }

                                                *(a3 + 15) = 1;
LABEL_379:
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 813, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                                v162 = *(a3 + 14);
                                                *(a3 + 15) = 1;
                                                if (v162 != 1)
                                                {
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 814, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                }

                                                goto LABEL_380;
                                              }

                                              *(a3 + 15) = 1;
LABEL_378:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 812, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                              v161 = *(a3 + 14);
                                              *(a3 + 15) = 1;
                                              if (v161 != 1)
                                              {
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 813, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                              }

                                              goto LABEL_379;
                                            }

                                            *(a3 + 15) = 1;
LABEL_377:
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 811, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                            v160 = *(a3 + 14);
                                            *(a3 + 15) = 1;
                                            if (v160 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 812, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }

                                            goto LABEL_378;
                                          }

                                          *(a3 + 15) = 1;
                                        }

                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 810, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                        v159 = *(a3 + 14);
                                        *(a3 + 15) = 1;
                                        if (v159 != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 811, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        goto LABEL_377;
                                      }

                                      v171 = "ByteStream_NumReadBytesAvail(*pBs) >= (params.featuresLength)";
LABEL_470:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 807, v171);
                                    }

                                    *(a3 + 15) = 1;
                                    BYTE12(v179[3]) = 8;
LABEL_361:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 807, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                    v141 = 0;
                                    v140 = BYTE12(v179[3]);
                                    goto LABEL_362;
                                  }

                                  *(a3 + 15) = 1;
LABEL_360:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 804, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                  v154 = *(a3 + 14);
                                  *(a3 + 15) = 1;
                                  BYTE12(v179[3]) = 8;
                                  if (v154 != 1)
                                  {
                                    v171 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                                    goto LABEL_470;
                                  }

                                  goto LABEL_361;
                                }

                                *(a3 + 15) = 1;
LABEL_359:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 803, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                                v153 = *(a3 + 14);
                                *(a3 + 15) = 1;
                                if (v153 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 804, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                goto LABEL_360;
                              }

                              *(a3 + 15) = 1;
LABEL_358:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 802, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                              v152 = *(a3 + 14);
                              *(a3 + 15) = 1;
                              if (v152 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 803, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_359;
                            }

                            *(a3 + 15) = 1;
LABEL_357:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 800, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                            v151 = *(a3 + 14);
                            *(a3 + 15) = 1;
                            if (v151 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 802, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            goto LABEL_358;
                          }

                          *(a3 + 15) = 1;
LABEL_356:
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 799, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                          v150 = *(a3 + 14);
                          *(a3 + 15) = 1;
                          if (v150 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 800, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          goto LABEL_357;
                        }

                        *(a3 + 15) = 1;
                      }

                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 798, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                      v149 = *(a3 + 14);
                      *(a3 + 15) = 1;
                      if (v149 != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 799, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      goto LABEL_356;
                    }

LABEL_278:
                    v108 = 0;
                    *(a3 + 15) = 1;
                    goto LABEL_279;
                  }

                  goto LABEL_463;
                }
              }

              *(a3 + 15) = 1;
              if (*(a3 + 14) == 1)
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 782, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                v45 = 0;
                v44 = 0;
                goto LABEL_278;
              }

LABEL_463:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 782, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

LABEL_457:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 763, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }
        }

        *(a3 + 15) = 1;
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 763, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        goto LABEL_457;
      }

      v66 = off_100B55558;
      if (!off_100B55558)
      {
        goto LABEL_330;
      }

      if (*(a3 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 727, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 727, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        v67 = *(a3 + 5);
        v68 = *(a3 + 6);
        if (v67 > v68)
        {
          v69 = *a3;
          *(a3 + 6) = v68 + 1;
          if ((v67 - (v68 + 1)) > 1)
          {
            v70 = *(v69 + v68);
            v71 = *(v69 + v68 + 1);
            *(a3 + 6) = v68 + 3;
            if ((v67 - (v68 + 3)) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 729, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v72 = *(v69 + (v68 + 3));
            *(a3 + 6) = v68 + 5;
            if (v67 <= (v68 + 5))
            {
              v73 = 0;
              *(a3 + 15) = 1;
              memset(v179, 0, 40);
            }

            else
            {
              *(a3 + 6) = v68 + 6;
              v73 = *(v69 + (v68 + 5));
              memset(v179, 0, 40);
              if (v73)
              {
                v175 = v70;
                v74 = v179;
                v75 = v73;
                while (1)
                {
                  WORD2(v181[0]) = 0;
                  LODWORD(v181[0]) = 0;
                  if (*(a3 + 14) != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 736, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  if (*(a3 + 15))
                  {
                    break;
                  }

                  v77 = *(a3 + 6);
                  if (*(a3 + 5) <= v77)
                  {
                    *(a3 + 15) = 1;
LABEL_196:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 744, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                    v82 = 0;
LABEL_197:
                    *(a3 + 15) = 1;
                    goto LABEL_198;
                  }

                  v78 = *a3;
                  v79 = v77 + 1;
                  *(a3 + 6) = v77 + 1;
                  v80 = *(v78 + v77);
                  v81 = v80 << 48;
                  if (v80 == 2)
                  {
                    v81 = 0;
                  }

                  if (v80 == 3)
                  {
                    v82 = 0x1000000000000;
                  }

                  else
                  {
                    v82 = v81;
                  }

                  if (*(a3 + 5) - v79 <= 5)
                  {
                    goto LABEL_197;
                  }

                  sub_1000075EC(v181, *a3 + v79, 6uLL);
                  *(a3 + 6) += 6;
LABEL_198:
                  *v74++ = v82 | (LOBYTE(v181[0]) << 40) | (BYTE1(v181[0]) << 32) | (BYTE2(v181[0]) << 24) | (BYTE3(v181[0]) << 16) | (BYTE4(v181[0]) << 8) | BYTE5(v181[0]);
                  if (!--v75)
                  {
                    (off_100B55558)(v175, v72, v71, v73, v179);
                    return;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 736, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                v76 = *(a3 + 14);
                *(a3 + 15) = 1;
                if (v76 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 744, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                goto LABEL_196;
              }
            }

            (v66)(v70, v72, v71, v73, v179);
            return;
          }

LABEL_454:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 728, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }
      }

      *(a3 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 728, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      goto LABEL_454;
    }

    if (v8 != 1541)
    {
      if (v8 != 1793)
      {
        goto LABEL_330;
      }

      v56 = off_100B55420;
      if (!off_100B55420)
      {
        goto LABEL_330;
      }

      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 854, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        v57 = *(a3 + 5);
        v58 = *(a3 + 6);
        if (v57 > v58)
        {
          if (*(a3 + 14) == 1)
          {
            v59 = *a3;
            *(a3 + 6) = v58 + 1;
            if (v57 <= (v58 + 1))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 855, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            v60 = *(v59 + v58);
            v61 = v58 + 2;
            *(a3 + 6) = v58 + 2;
            if (v57 <= (v58 + 2))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 856, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            v62 = *(v59 + v58 + 1);
            v63 = v58 + 3;
            *(a3 + 6) = v63;
            v64 = *(v59 + v61);

            v56(v60, v62, v64, v59 + v63, (v57 - v63));
            return;
          }

          v170 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_459:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 854, v170);
        }
      }

      v170 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_459;
    }

    if (!off_100B55550)
    {
      goto LABEL_330;
    }

    v179[0] = 0uLL;
    *(&v179[1] + 7) = 0;
    *&v179[1] = 0;
    WORD2(v181[0]) = 0;
    LODWORD(v181[0]) = 0;
    if (*(a3 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 834, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 834, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      v86 = *(a3 + 14);
      *(a3 + 15) = 1;
      if (v86 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 835, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v113 = *(a3 + 6);
      if (*(a3 + 5) - v113 > 1)
      {
        v114 = *(*a3 + v113);
        *(a3 + 6) = v113 + 2;
        if (*(a3 + 5) > (v113 + 2))
        {
          v115 = *a3;
          *(a3 + 6) = v113 + 3;
          v116 = *(v115 + (v113 + 2));
          if (*(a3 + 5) - (v113 + 3) > 1)
          {
            v117 = *(*a3 + (v113 + 3));
            *(a3 + 6) = v113 + 5;
            if (*(a3 + 5) - (v113 + 5) > 1)
            {
              v118 = *(*a3 + (v113 + 5));
              v119 = v113 + 7;
              *(a3 + 6) = v113 + 7;
              if (*(a3 + 5) > (v113 + 7))
              {
                v120 = *a3;
                v121 = v113 + 8;
                *(a3 + 6) = v121;
                v122 = *(v120 + v119) << 48;
                if (*(a3 + 5) - v121 >= 6)
                {
                  sub_1000075EC(v181, *a3 + v121, 6uLL);
                  *(a3 + 6) += 6;
                  goto LABEL_346;
                }

LABEL_345:
                *(a3 + 15) = 1;
LABEL_346:
                if (v117)
                {
                  if (*(a3 + 14) == 1)
                  {
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 841, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
                      v148 = 0;
                    }

                    else
                    {
                      v148 = *(a3 + 5) - *(a3 + 6);
                    }

                    if (v148 >= v117)
                    {
                      __memmove_chk();
                      *(a3 + 6) += v117;
                      goto LABEL_353;
                    }

                    v174 = "ByteStream_NumReadBytesAvail(*pBs) >= (len)";
                  }

                  else
                  {
                    v174 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 841, v174);
                }

LABEL_353:
                off_100B55550(v114, v116, v117, v118, v122 | (LOBYTE(v181[0]) << 40) | (BYTE1(v181[0]) << 32) | (BYTE2(v181[0]) << 24) | (BYTE3(v181[0]) << 16) | (BYTE4(v181[0]) << 8) | BYTE5(v181[0]), v179);
                return;
              }

              *(a3 + 15) = 1;
LABEL_344:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 839, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
              v122 = 0;
              goto LABEL_345;
            }

            *(a3 + 15) = 1;
LABEL_342:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 838, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
            v147 = *(a3 + 14);
            *(a3 + 15) = 1;
            if (v147 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 839, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v118 = 0;
            goto LABEL_344;
          }

          *(a3 + 15) = 1;
LABEL_340:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 837, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
          v146 = *(a3 + 14);
          *(a3 + 15) = 1;
          if (v146 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 838, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v117 = 0;
          goto LABEL_342;
        }

        *(a3 + 15) = 1;
LABEL_338:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 836, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
        v145 = *(a3 + 14);
        *(a3 + 15) = 1;
        if (v145 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 837, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v116 = 0;
        goto LABEL_340;
      }

      *(a3 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 835, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
    v144 = *(a3 + 14);
    *(a3 + 15) = 1;
    if (v144 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 836, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v114 = 0;
    goto LABEL_338;
  }

  if (v8 > 1024)
  {
    if (v8 <= 1027)
    {
      if (v8 != 1025)
      {
        if (v8 == 1026)
        {

          sub_1002EC850(a3, a4);
          return;
        }

        goto LABEL_330;
      }

      if (v9 && v12 >= 2u)
      {
        v65 = off_100B55388;
        if (off_100B55388)
        {

          (v65)(v11, v12 >> 1, v11 + (v12 >> 1), v12 >> 1);
        }

        return;
      }

      if (!sub_10000C240() || (sub_10000AF54("LostDevice size is zero"), v105 = sub_10000C050(0x54u), !os_log_type_enabled(v105, OS_LOG_TYPE_ERROR)))
      {
LABEL_330:
        if (sub_10000C240())
        {
          sub_10000AF54("Unhandled VSE : subGroupId(0x%02x), subEventId(0x%02x)", a1, a2);
          v143 = sub_10000C050(0x54u);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return;
      }

LABEL_289:
      sub_1000E09C0();
      goto LABEL_330;
    }

    if (v8 != 1028)
    {
      if (!v9 || v12 != 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_330;
        }

        sub_10000AF54("adv buffer full event size is wrong");
        v107 = sub_10000C050(0x54u);
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_330;
        }

        goto LABEL_289;
      }

      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 623, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        v53 = *(a3 + 6);
        if (*(a3 + 5) - v53 > 1)
        {
          if (*(a3 + 14) == 1)
          {
            v54 = *(*a3 + v53);
            *(a3 + 6) = v53 + 2;
            v55 = off_100B554A8;
            if (!off_100B554A8)
            {
              return;
            }

            goto LABEL_144;
          }

          v173 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_529:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 623, v173);
        }
      }

      v173 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      goto LABEL_529;
    }

    if (!v9 || !v12)
    {
      if (!sub_10000C240())
      {
        goto LABEL_330;
      }

      sub_10000AF54("adv buffer event size is zero");
      v106 = sub_10000C050(0x54u);
      if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_330;
      }

      goto LABEL_289;
    }

    v13 = qword_100B55498;
    if (!qword_100B55498)
    {
      return;
    }

    v52 = v12;
    goto LABEL_271;
  }

  if ((v8 - 515) < 2)
  {
    return;
  }

  if (v8 == 260)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 481, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
    }

    else
    {
      v87 = *(a3 + 5);
      v88 = *(a3 + 6);
      if (v87 - v88 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v89 = *a3;
          v90 = (*a3 + v88);
          v91 = *v90;
          v92 = v90[1];
          *(a3 + 6) = v88 + 2;
          if (v87 - (v88 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 482, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v93 = *(v89 + (v88 + 2));
          *(a3 + 6) = v88 + 4;
          v51 = sub_1000ABB80(v91 | (v92 << 8));
          if (v51)
          {
            v13 = qword_100B55380;
            if (!qword_100B55380)
            {
              return;
            }

            v52 = (v93 & 1) == 0;
            goto LABEL_272;
          }

          goto LABEL_330;
        }

        v168 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_421:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 481, v168);
      }
    }

    v168 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_421;
  }

  if (v8 != 514)
  {
    goto LABEL_330;
  }

  v13 = qword_100B55538;
  if (!qword_100B55538)
  {
    goto LABEL_330;
  }

  if (!*(a3 + 15))
  {
    v111 = *(a3 + 6);
    v14 = *(a3 + 5) - v111;
    if (v14 <= 0x2F)
    {
      goto LABEL_291;
    }

    v51 = (*a3 + v111);
    goto LABEL_158;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/srs/srs_vsc.c", 928, "_Bool srsAllSubEventHandler(uint8_t, uint8_t, OI_BYTE_STREAM *, _Bool)");
  v14 = 0;
LABEL_291:
  if (sub_10000C240())
  {
    sub_10000AF54("HID_LATENCY_STATISTICS - Invalid data size %lu", v14);
    v112 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
LABEL_286:
      sub_1000E09C0();
    }
  }
}