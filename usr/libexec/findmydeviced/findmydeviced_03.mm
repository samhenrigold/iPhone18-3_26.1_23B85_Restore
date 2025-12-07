void sub_100191D58(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _enumeratorForDirectoryURL:?];
  v4 = [v3 allObjects];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_1001920C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t sub_100192238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    v11 = v3;
    v6 = [*(a1 + 40) _enumeratorForDirectoryURL:v3];
    v7 = [v6 allObjects];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v11 lastPathComponent];
      [*(a1 + 32) addObject:v9];
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v11 = v3;
    v6 = [v3 lastPathComponent];
    [*(a1 + 32) addObject:v6];
  }

  v4 = v11;
LABEL_7:

  return _objc_release_x1(v3, v4);
}

BOOL sub_1001923EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100002880(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not enumerate folder %@ %@", &v9, 0x16u);
    }
  }

  return v5 == 0;
}

void sub_1001925A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001925C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  [v4 removeItemAtURL:v3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v5)
  {
    v8 = sub_100002880(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10022BFD4(v3, v8);
    }

    goto LABEL_7;
  }

  v7 = [v5 fm_isFileNotFoundError];
  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to delete protected context file %@", buf, 0xCu);
    }

LABEL_7:
  }
}

BOOL sub_100192908(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100002880(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not enumerate folder %@ %@", &v9, 0x16u);
    }
  }

  return v5 == 0;
}

void sub_100192C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100192C58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  if (v3)
  {
    (*(v3 + 16))();
    WeakRetained = v6;
  }

  v4 = [WeakRetained completion];

  if (v4)
  {
    v5 = [v6 completion];
    v5[2]();
  }
}

void sub_100193A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100193A48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v18 = 138413058;
    v19 = v3;
    v20 = 2048;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v18, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v12 = [v3 httpResponseBody];
    v14 = [WeakRetained registry];
    [v14 updateConfigurations:v12];
    goto LABEL_12;
  }

  v10 = [v3 cancelled];
  v11 = v10;
  v12 = sub_10000BE38(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = [v3 fm_logID];
    v18 = 138412290;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v18, 0xCu);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = [v3 fm_logID];
    v15 = [v3 httpResponseStatus];
    v16 = [v3 httpResponseError];
    v18 = 138412802;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v18, 0x20u);
  }

LABEL_12:

LABEL_13:
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

void sub_100194630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100194654(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if ([v7 primary])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100195C6C(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 identifier];
  v4 = [*(a1 + 32) beacons];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v12 updateDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [v5 updateDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v8 > v11)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v3];
  }
}

void sub_100195ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channelName];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void sub_100196214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019622C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 primary])
  {
    v6 = [v9 updateDate];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

void sub_100196398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001963B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 audioState] != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  if ([v10 availability] == 1)
  {
    v6 = [v10 muted];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  if ([v10 availability] == 2)
  {
    v8 = 1;
  }

  else if ([v10 availability] == 1)
  {
    v9 = [v10 muted];
    v8 = [v9 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) &= v8;
}

void sub_10019658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001965A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 playingSound];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 playingSound];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v11 playingSound];
      *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_100196874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100196898(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = a2;
  v9 = [v6 audioSafetyStatusForAirPods:v8 knownStatus:v7];
  v10 = [*(a1 + 32) audioSafetyStatusForStereoPair:v8];

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  *a4 = *(*(*(a1 + 40) + 8) + 24) > 2uLL;
}

void sub_100196DB4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v4 = [v7 channelName];
    v5 = [v3 containsObject:v4];

    v6 = [NSNumber numberWithBool:v5];
    [v7 setPlayingSound:v6];
  }

  else
  {
    [v7 setPlayingSound:0];
  }
}

void sub_100199B3C(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-deviceName", 0);
  v2 = qword_1003147C8;
  qword_1003147C8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100199D48(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceClass"];
  v2 = qword_1003147D8;
  qword_1003147D8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100199E1C(uint64_t a1)
{
  v1 = MGCopyAnswerWithError();
  if (v1 && (v2 = [v1 intValue] - 1, v2 <= 0xA))
  {
    v3 = qword_100258748[v2];
  }

  else
  {
    v3 = 0;
  }

  qword_1003147E8 = v3;
}

uint64_t sub_100199F44(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"UniqueDeviceID"];
  v2 = qword_1003147F8;
  qword_1003147F8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A01C(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductType"];
  v2 = qword_100314808;
  qword_100314808 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A0F4(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductName"];
  v2 = qword_100314818;
  qword_100314818 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A1CC(uint64_t a1)
{
  v2 = +[FMDPreferencesMgr overriddenOSVersion];
  if (!v2)
  {
    v2 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductVersion"];
  }

  v3 = qword_100314828;
  qword_100314828 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10019A2C4(uint64_t a1)
{
  v2 = +[FMDPreferencesMgr overriddenBuildVersion];
  if (!v2)
  {
    v2 = [*(a1 + 32) _stringGestaltQueryForKey:@"BuildVersion"];
  }

  v3 = qword_100314838;
  qword_100314838 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10019A328(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"ModelNumber"];
  v2 = qword_100314848;
  qword_100314848 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A36C(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"RegionCode"];
  v2 = qword_100314858;
  qword_100314858 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A450(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceColor"];
  v2 = qword_100314868;
  qword_100314868 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A528(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceEnclosureColor"];
  v2 = qword_100314878;
  qword_100314878 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10019A56C(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"9N7qIucqhr0Cy2/Tk27/hw"];
  v1 = [v3 stringValue];
  v2 = qword_100314888;
  qword_100314888 = v1;
}

void sub_10019A5CC(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"NJsxTSI2WuD+13rxShXX9w"];
  v1 = [v3 stringValue];
  v2 = qword_100314898;
  qword_100314898 = v1;
}

void sub_10019A62C(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"CJcvxERO5v/3IWjDFKZKRw"];
  v1 = [v3 stringValue];
  v2 = qword_1003148A8;
  qword_1003148A8 = v1;
}

id sub_10019A68C(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"0dnM19zBqLw5ZPhIo4GEkg"];
  byte_1003148B8 = result;
  return result;
}

id sub_10019A6B8(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"zxMIgVSILN6S5ee6MZhf+Q"];
  byte_1003148C8 = result;
  return result;
}

uint64_t sub_10019A79C(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"SerialNumber"];
  v2 = qword_1003148D8;
  qword_1003148D8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A7E0(uint64_t a1)
{
  v1 = [*(a1 + 32) _numberGestaltQueryForKey:@"ChipID"];
  v2 = qword_1003148E8;
  qword_1003148E8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A824(uint64_t a1)
{
  v1 = [*(a1 + 32) _numberGestaltQueryForKey:@"UniqueChipID"];
  v2 = qword_1003148F8;
  qword_1003148F8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A8FC(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"WifiAddress"];
  v2 = qword_100314908;
  qword_100314908 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A9D4(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"BluetoothAddress"];
  v2 = qword_100314918;
  qword_100314918 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10019AA18(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-currentPasscodeConstraint", 0);
  v2 = qword_100314930;
  qword_100314930 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019AADC(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-isPasscodeSet", 0);
  v2 = qword_100314948;
  qword_100314948 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019ABEC(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-currentPasscodeConstraintStr", 0);
  v2 = qword_100314960;
  qword_100314960 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019ACD4(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"nhGhVMyvrWYe9U2ltAUImg"];
  v1 = [v3 stringValue];
  v2 = qword_100314970;
  qword_100314970 = v1;
}

id sub_10019AE30(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"DeviceSupportsUltraLowPowerNetworking"];
  byte_100314980 = result;
  return result;
}

void sub_10019BBD8(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v12];
    v9 = [v6 flattenedArrayFromObject:v5 parentIndices:v8];
    [v7 addObjectsFromArray:v9];
  }

  else
  {
    v10 = a1[4];
    v8 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v12];
    v9 = [v8 componentsJoinedByString:@"_"];
    v11 = [NSString stringWithFormat:@"%@_%@", v9, v5];
    [v10 addObject:v11];
  }
}

void sub_10019BD10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [v5 arrayByAddingObject:v7];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) flattenedArrayFromObject:v6 parentIndices:v10];

  [v8 addObjectsFromArray:v9];
}

void sub_10019C9E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = (*(v2 + 16))();
  }

  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v4 embeddedAction];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Finished waiting. Will enqueue action %@", &v9, 0x16u);
  }

  v6 = +[ActionManager sharedManager];
  v7 = [*(a1 + 32) embeddedAction];
  v8 = [v6 enqueueAction:v7];
}

void sub_10019F3B8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F460;
  block[3] = &unk_1002D04D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v8 = v3;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10019F460(void *a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v5 = [v2 account];

  if ([v5 unregisterState])
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  else
  {
    [v5 setUnregisterState:1];
    [v5 setOneTimeRemoveAuthToken:a1[4]];
    [v5 setFmipDisableContext:a1[6]];
    v4 = +[FMDServiceProvider activeServiceProvider];
    [v4 removeAccount:v5 completion:a1[5]];
  }
}

void sub_10019F534(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [NSString stringWithFormat:@"FMIP account cannot be removed in ratchet."];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _errorForCode:9 message:v2];
    (*(v3 + 16))(v3, v4);
  }

  v5 = sub_100002880(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending FMIP state change notification", v7, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kFMIPStateDidChangeNotification, 0, 0, 1u);
}

uint64_t sub_10019F660(uint64_t a1)
{
  v2 = sub_10017DEB4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ratchet Permitted for this context: %lu. Allowing disable FMIP. Permission Granted, performing unregister", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10019F718(uint64_t a1)
{
  v2 = sub_10017DEB4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "We are in a ratchet state %lu. Denying disable FMIP.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10019FA9C(void *a1)
{
  v3 = +[FMDServiceProvider activeServiceProvider];
  v2 = [v3 account];
  [v2 setOneTimeRemoveAuthToken:a1[4]];
  [v3 disableFMIPForPairedDeviceWithUDID:a1[5] account:v2 andCompletion:a1[6]];
}

void sub_10019FDE0(uint64_t a1)
{
  v17 = objc_opt_new();
  v2 = [*(a1 + 32) username];
  [v17 setUsername:v2];

  v3 = [*(a1 + 32) dsid];
  [v17 setDsid:v3];

  v4 = [*(a1 + 32) oneTimeRemoveAuthToken];
  [v17 setOneTimeRemoveAuthToken:v4];

  v5 = +[FMDServiceProvider activeServiceProvider];
  v6 = [v5 account];
  v7 = [*(a1 + 32) serverURL];
  v8 = [v7 host];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [*(a1 + 32) serverURL];
    v11 = [v10 host];
    [v17 setServerHost:v11];
  }

  else
  {
    v10 = [v6 serverHost];
    [v17 setServerHost:v10];
  }

  v12 = [*(a1 + 32) serverURL];
  v13 = [v12 scheme];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [*(a1 + 32) serverURL];
    v16 = [v15 scheme];
    [v17 setServerProtocolScheme:v16];
  }

  else
  {
    v15 = [v6 serverProtocolScheme];
    [v17 setServerProtocolScheme:v15];
  }

  [v5 disableFMIPForPairedDeviceWithUDID:*(a1 + 40) account:v17 andCompletion:*(a1 + 48)];
}

void sub_1001A03E0(uint64_t a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v3 = [v2 account];
  v4 = [v3 accountAddTime];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];

  v6 = [*(a1 + 32) valueForProperty:NRDevicePropertyPairingID];
  v7 = [*(a1 + 32) valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v8 = [NPSDomainAccessor alloc];
  v9 = [v8 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v6 pairingDataStore:v7];
  v10 = [v9 synchronize];
  v11 = [v9 objectForKey:@"LastALCompletionInfo"];
  v12 = [v11 objectForKeyedSubscript:@"LastIdentityTime"];

  if (v12)
  {
    v12 = [v11 objectForKeyedSubscript:@"LastAccountAddTime"];
    v13 = [v5 fm_isEqualToNumber:v12 withPrecision:0.1];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100002880(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109634;
    v17[1] = v14;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "alCompleted : %d, currentAccountAddTime: %@, alAccountAddTime: %@", v17, 0x1Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v14, 0);
  }
}

void sub_1001A0874(void *a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  [v2 markPairedDeviceWithUdid:a1[4] asMissingUsingToken:a1[5] withCompletion:a1[6]];
}

void sub_1001A1080(uint64_t a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v7 = [v2 account];

  if (v7)
  {
    v3 = +[FMDServiceProvider activeServiceProvider];
    [v3 registerDeviceWithCause:@"enableActivationLock" force:0];
    [v3 syncFMIPStateToWatch];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kActivationLockAllowedMayHaveChangedNotification, 0, 0, 1u);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:kFMDErrorDomain code:5 userInfo:0];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1001A17A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A17D4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    v5 = [WeakRetained _errorForCode:3 message:@"User auth failed"];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1001A22BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose((v65 - 160), 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001A233C(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v3 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v3;
  v4 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v4;
  block[2] = sub_1001A23F0;
  block[3] = &unk_1002D0550;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v2, block);
}

void sub_1001A23F0(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100002880(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Populating Headers %i", buf, 8u);
  }

  if (v2)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 fm_safelyMapKey:@"X-Apple-Sign1-Error" toObject:*(*(*(a1 + 72) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Apple-Sign5-Error" toObject:*(*(*(a1 + 80) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign1" toObject:*(*(*(a1 + 88) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign2" toObject:*(*(*(a1 + 96) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign5" toObject:*(*(*(a1 + 104) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign6" toObject:*(*(*(a1 + 112) + 8) + 40)];
    v5 = [*(a1 + 32) UUIDString];
    [v4 fm_safelyMapKey:@"X-Apple-AL-ID" toObject:v5];

    v6 = [*(a1 + 40) _deviceIdentifiersForSignature];
    v14 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v14];
    v8 = v14;
    v9 = [v7 base64EncodedString];

    if (v8)
    {
      v11 = sub_100002880(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10022C630();
      }
    }

    v12 = sub_100002880([v4 fm_safelyMapKey:@"X-Apple-AL-Content" toObject:v9]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Completed all signing %@", buf, 0xCu);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, v4, 0);
    }
  }
}

void sub_1001A26C8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Absinth signing returned %@ %@", buf, 0x16u);
  }

  if (v5)
  {
    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022C698();
    }

    v10 = [v5 code];
    v11 = [v5 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"kFMDUnderlyingErrorCodeKey"];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld,%ld", v10, [v12 integerValue]);
    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    if ([v6 count] != 2)
    {
      goto LABEL_8;
    }

    v16 = [v6 objectAtIndexedSubscript:0];
    v11 = [v16 base64EncodedString];

    v17 = [v6 objectAtIndexedSubscript:1];
    v12 = [v17 base64EncodedString];

    objc_storeStrong((*(a1[6] + 8) + 40), v11);
    v19 = sub_100002880(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Signature header: %@", buf, 0xCu);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), v12);
    v15 = sub_100002880(v20);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SkAuth header: %@", buf, 0xCu);
    }
  }

LABEL_8:
  *(*(a1[8] + 8) + 24) = 1;
  (*(a1[4] + 16))();
}

void sub_1001A2988(void *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", v7, [v6 code]);
    v9 = 5;
  }

  else
  {
    v10 = [v16 signature];
    v11 = [v10 base64EncodedString];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = [v16 attestation];
    v8 = [v7 base64EncodedString];
    v9 = 7;
  }

  v14 = *(a1[v9] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;

  *(*(a1[8] + 8) + 24) = 1;
  (*(a1[4] + 16))();
}

void sub_1001A2D3C(uint64_t a1, uint64_t a2)
{
  v3 = [FMDGenericAudioAccessory copyAccessory:a2];
  [*(a1 + 32) addObject:v3];
}

void sub_1001A32E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remove completed with error %@.", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1001A3898(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A3F8C(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serialNumber];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### setting keys updated on mulder for %@", buf, 0xCu);
  }

  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A40E4;
  block[3] = &unk_1002CD4C8;
  v7 = *(a1 + 32);
  dispatch_after(v4, v5, block);
}

void sub_1001A40E4(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serialNumber];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### calling updateCompletedFor %@", &v6, 0xCu);
  }

  v4 = [FMDExtExtensionHelper getAccessoryProxyForId:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension" withDelegate:0];
  v5 = [*(a1 + 32) serialNumber];
  [v4 updateCompletedFor:v5 withCompletion:&stru_1002D0610];
}

void sub_1001A41F0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### update to extension completed %@", &v4, 0xCu);
  }
}

void sub_1001A530C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10017DE2C(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022C808(v3);
    }

    v6 = *(a1 + 32);
    v7 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion finished.", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001A5B60(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = xpc_activity_copy_criteria(v3);
  v6 = v5;
  if (state == 2)
  {
    v7 = objc_alloc_init(FMAlert);
    [v7 setCategory:3];
    v8 = [*(a1 + 32) locateStats];
    [v7 setMsgText:v8];

    [v7 setMsgTitle:@"Daily Locate Report"];
    [v7 setShowMsgInLockScreen:1];
    [v7 setDismissMsgOnUnlock:0];
    [v7 setDismissMsgOnLock:0];
    [v7 setDefaultButtonTitle:@"OK"];
    v9 = +[FMAlertManager sharedInstance];
    [v9 activateAlert:v7];

    v10 = xpc_activity_set_state(v3, 5);
    v11 = v10;
    v12 = sub_100002880(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10022C914(v11, v12);
    }
  }

  else
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022C88C(v6, state, v7);
    }
  }
}

void sub_1001A5EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A5EC4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 groupValue];
  [v3 doubleValue];
  v5 = v4;

  if (v5 >= *(a1 + 40) && v5 < *(a1 + 48))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = *(a1 + 56) + 24;
    v8 = [v13 statValue];
    v9 = [NSString stringWithFormat:@"%li hours ago: %@", v7, v8];
    v10 = [v6 stringByAppendingString:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1001A679C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sent auth token to paired device : %@", &v4, 0xCu);
  }
}

uint64_t sub_1001A8684(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001A8740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_1001A8ABC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1001A97C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _serialQueue_addTrackedLocationNow:*(a1 + 32)];
  [WeakRetained _serialQueue_purgeOldTrackedLocationsNow];
  v3 = [WeakRetained trackedLocations];
  [WeakRetained _serialQueue_updateTrackedLocationsCache:v3];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A98AC;
  v5[3] = &unk_1002CD478;
  v6 = WeakRetained;
  v7 = *(a1 + 40);
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1001A98AC(uint64_t a1)
{
  v2 = [*(a1 + 32) locationTracker];
  [v2 didAddNewTrackedLocation:*(a1 + 40)];
}

void sub_1001A9AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained trackedLocations];
  [v1 removeAllObjects];

  [WeakRetained _serialQueue_deleteTrackedLocationsCache];
  [WeakRetained _serialQueue_scheduleLocationPurgeTimer];
}

void sub_1001A9EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A9EF4(uint64_t a1)
{
  v2 = [*(a1 + 32) trackedLocations];
  v7 = [v2 copy];

  v3 = [v7 lastObject];
  v4 = [v3 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1001AA4D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_purgeOldTrackedLocationsNow];
  v1 = [WeakRetained trackedLocations];
  [WeakRetained _serialQueue_updateTrackedLocationsCache:v1];
}

void sub_1001AA540(uint64_t a1)
{
  v2 = [*(a1 + 32) locationPurgeTimer];
  v1 = +[NSRunLoop currentRunLoop];
  [v2 scheduleInRunLoop:v1];
}

void sub_1001AB2C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeUntrackedAssets:*(a1 + 32)];
}

void sub_1001AB3A0(uint64_t a1)
{
  [*(a1 + 32) _removeUntrackedAssets:&__NSArray0__struct];
  v1 = +[NSFileManager defaultManager];
  v2 = [objc_opt_class() defaultStorageLocation];
  v8 = 0;
  [v1 removeItemAtURL:v2 error:&v8];
  v3 = v8;

  if (v3)
  {
    v4 = [v3 fm_isFileNotFoundError];
    if ((v4 & 1) == 0)
    {
      v5 = sub_100002880(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10022CFF0(v3);
      }
    }
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [objc_opt_class() deprecatedStorageLocation];
  [v6 removeItemAtURL:v7 error:0];
}

void sub_1001AB9F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained[2] mutableCopy];
  v4 = *(a1 + 32);
  v5 = [v4 url];
  [v3 fm_safeSetObject:v4 forKey:v5];

  v6 = WeakRetained[2];
  WeakRetained[2] = v3;
  v7 = v3;

  v8 = [WeakRetained dataArchiver];
  v9 = [v8 saveDictionary:v7];

  if (v9)
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

void sub_1001ABBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001ABBEC(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [objc_opt_class() deprecatedStorageLocation];
    v3 = [objc_opt_class() defaultStorageLocation];
    v4 = +[NSFileManager defaultManager];
    [v4 fm_migrateFileFromURL:v2 toURL:v3];

    v5 = [*(a1 + 32) dataArchiver];
    v6 = [NSSet setWithObject:objc_opt_class()];
    v14 = 0;
    v7 = [v5 readDictionaryAndClasses:v6 error:&v14];
    v8 = v14;
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    v11 = [v8 fm_isFileNotFoundError];
    if ((v11 & 1) == 0 && (!*(*(*(a1 + 40) + 8) + 40) || v8))
    {
      v12 = sub_100002880(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10022D084();
      }

      v13 = +[FMDEventLoggerGeneral sharedInstance];
      [v13 sendError:v8 forEventName:@"FMDAssetRegistryFailedReadEventName"];
    }
  }
}

void sub_1001ABF88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverInteractionController];
  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting download of asset %@", &v9, 0xCu);
  }

  v6 = [[FileDownloadAction alloc] initWithAsset:v3 serverInteractionController:v4 assetRegistry:*(a1 + 32)];
  v7 = +[ActionManager sharedManager];
  v8 = [v7 enqueueAction:v6];
}

void sub_1001AC0FC(id a1, OS_xpc_object *a2)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received XPC event com.apple.nsurlsessiond-events", v3, 2u);
  }
}

void sub_1001AD44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AD468(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = sub_10000BE38(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022D154();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 bluetoothState] == 4;
  }

  v8 = [*(a1 + 32) btController];
  [v8 invalidate];

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001AD744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001AD780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 btAddressData];
    v6 = [v5 fm_MACAddressString];
    v7 = [v3 name];
    v29 = 138412546;
    v30 = v6;
    v31 = 2112;
    v32[0] = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - device (%@) with MAC (%@)", &v29, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v3 deviceFlags];
  if ((v9 & 0x4000) == 0)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - only BT classic devices are supported, ignoring device", &v29, 2u);
    }

    goto LABEL_17;
  }

  v11 = [v3 discoveryFlags];
  if ((v11 & 0x200000) != 0)
  {
    v16 = [FMDAccessoryIdentifier alloc];
    v17 = [v3 btAddressData];
    v18 = [v17 fm_MACAddressString];
    v10 = [v16 initWithAddress:v18];

    v19 = [WeakRetained accessoryRegistry];
    v20 = [v19 accessoryForIdentifier:v10];

    if (v20)
    {
      v21 = [v20 name];
      v22 = [v3 name];
      v23 = [v21 compare:v22];

      if (!v23)
      {
LABEL_16:

        goto LABEL_17;
      }

      v25 = sub_100002880(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v20 name];
        v27 = [v3 name];
        v29 = 138412546;
        v30 = v26;
        v31 = 2112;
        v32[0] = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager deviceNameChanged (%@) => (%@)", &v29, 0x16u);
      }

      v28 = @"BluetoothMagicPairedDeviceNameChangedNotification";
    }

    else
    {
      v28 = @"BluetoothDeviceConnectSuccessNotification";
    }

    [WeakRetained updateNotificationReceived:v3 withName:v28];
    goto LABEL_16;
  }

  v10 = sub_100002880(v11);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v3 btAddressData];
    v13 = [v12 fm_MACAddressString];
    v14 = [v3 connectedServices];
    v15 = [v3 discoveryFlags];
    v29 = 138412802;
    v30 = v13;
    v31 = 1024;
    LODWORD(v32[0]) = v14;
    WORD2(v32[0]) = 2048;
    *(v32 + 6) = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - unhandled device (%@) connectedServices (%x) discoveryFlags (flags %llx)", &v29, 0x1Cu);
  }

LABEL_17:
}

void sub_1001ADAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceFlags];
  v5 = v4;
  WeakRetained = sub_100002880(v4);
  v7 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 0x4000) != 0)
  {
    if (v7)
    {
      v11 = [v3 name];
      v12 = [v3 btAddressData];
      v13 = [v12 fm_MACAddressString];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager LostHandler - device (%@) with MAC (%@)", &v16, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v14 = [WeakRetained _cbPoweredOff];
    if (v14)
    {
      v15 = sub_10000BE38(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignore notification. Bailing.", &v16, 2u);
      }
    }

    else
    {
      [WeakRetained updateNotificationReceived:v3 withName:@"BluetoothDeviceDisconnectSuccessNotification"];
    }
  }

  else if (v7)
  {
    v8 = [v3 name];
    v9 = [v3 btAddressData];
    v10 = [v9 fm_MACAddressString];
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager LostHandler - only BT classic devices are supported, ignoring device (%@) with MAC (%@)", &v16, 0x16u);
  }
}

void sub_1001ADCF0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022D1BC();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting BT Discovery", v5, 2u);
  }
}

void sub_1001AE3F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000BE38(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022D224(a1, v7, v8);
    }
  }

  else
  {
    v9 = [*(a1 + 40) _cbPoweredOff];
    if (v9)
    {
      v8 = sub_10000BE38(v9);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BT is off. Cannot update accessory list.", buf, 2u);
      }
    }

    else
    {
      v35 = objc_alloc_init(NSMutableDictionary);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v34 = v5;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v47;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v47 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [[FMDExtAccessory alloc] initWithExtAccessoryInfo:*(*(&v46 + 1) + 8 * i)];
            v16 = +[FMDExtConfigurationRegistry sharedInstance];
            v17 = [(FMDExtAccessory *)v15 accessoryType];
            v18 = [v16 supportsAccessoryType:v17];

            if (v18)
            {
              v20 = [(FMDExtAccessory *)v15 accessoryIdentifier];
              [(FMDExtAccessory *)v15 setExtensionId:*(a1 + 32)];
              [v35 setObject:v15 forKeyedSubscript:v20];
            }

            else
            {
              v20 = sub_10000BE38(v19);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [(FMDExtAccessory *)v15 name];
                v22 = [(FMDExtAccessory *)v15 accessoryType];
                *buf = 138412546;
                v51 = v21;
                v52 = 2112;
                v53 = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "accessory %@ with accessory type %@ not supported", buf, 0x16u);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v12);
      }

      v23 = [*(a1 + 40) serialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001AE8A4;
      block[3] = &unk_1002D07A0;
      block[4] = *(a1 + 32);
      v24 = v10;
      v25 = *(a1 + 40);
      v42 = v24;
      v43 = v25;
      v26 = v35;
      v44 = v26;
      v45 = *(a1 + 48);
      dispatch_async(v23, block);

      v27 = [*(a1 + 48) allAccessories];
      v28 = [v27 copy];

      v30 = sub_10000BE38(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 48);
        *buf = 138412546;
        v51 = v31;
        v52 = 2112;
        v53 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. registry: %@, previouslyPairedAccessories: %@", buf, 0x16u);
      }

      v32 = [*(a1 + 40) serialQueue];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001AEEC4;
      v36[3] = &unk_1002D07A0;
      v37 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v38 = v28;
      v39 = v26;
      v40 = *(a1 + 48);
      v8 = v26;
      v33 = v28;
      dispatch_async(v32, v36);

      v7 = 0;
      v5 = v34;
    }
  }
}

void sub_1001AE8A4(uint64_t a1)
{
  v2 = sub_10000BE38(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v63 = v3;
    v64 = 2112;
    v65 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ext: %@, current accessoryList = %@", buf, 0x16u);
  }

  v6 = sub_10000BE38(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 48) accessoriesByExtension];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
    *buf = 138412546;
    v63 = v7;
    v64 = 2112;
    v65 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ext: %@, stored accessoryList = %@", buf, 0x16u);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = *(a1 + 56);
  v11 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        v16 = [*(a1 + 48) accessoriesByExtension];
        v17 = [v16 objectForKeyedSubscript:*(a1 + 32)];
        v18 = [v17 objectForKeyedSubscript:v15];

        v19 = [*(a1 + 56) objectForKeyedSubscript:v15];
        v20 = v19;
        if (v18 && (v19 = [v18 accessoryInfoChanged:v19], (v19 & 1) == 0))
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001AEEAC;
          block[3] = &unk_1002CD478;
          v54 = *(a1 + 64);
          v55 = v18;
          dispatch_async(&_dispatch_main_q, block);
        }

        else
        {
          v21 = sub_10000BE38(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "new accessory added = %@", buf, 0xCu);
          }

          v22 = [*(a1 + 48) accessoriesByExtension];
          v23 = [v22 objectForKeyedSubscript:*(a1 + 32)];

          if (!v23)
          {
            v24 = objc_alloc_init(NSMutableDictionary);
            v25 = [*(a1 + 48) accessoriesByExtension];
            [v25 setObject:v24 forKeyedSubscript:*(a1 + 32)];
          }

          v26 = [*(a1 + 48) accessoriesByExtension];
          v27 = [v26 objectForKeyedSubscript:*(a1 + 32)];
          [v27 setObject:v20 forKeyedSubscript:v15];

          [*(a1 + 48) updateAccessory:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v12);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = [*(a1 + 48) accessoriesByExtension];
  v29 = [v28 objectForKeyedSubscript:*(a1 + 32)];
  v30 = [v29 allKeys];

  v31 = [v30 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        v36 = [*(a1 + 56) objectForKeyedSubscript:v35];

        if (!v36)
        {
          v37 = [*(a1 + 48) accessoriesByExtension];
          v38 = [v37 objectForKeyedSubscript:*(a1 + 32)];
          v39 = [v38 objectForKeyedSubscript:v35];

          v41 = sub_10000BE38(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v39 name];
            *buf = 138412290;
            v63 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "removing accessory = %@", buf, 0xCu);
          }

          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1001AEEB8;
          v46[3] = &unk_1002CD478;
          v47 = *(a1 + 64);
          v48 = v39;
          v43 = v39;
          dispatch_async(&_dispatch_main_q, v46);
          v44 = [*(a1 + 48) accessoriesByExtension];
          v45 = [v44 objectForKeyedSubscript:*(a1 + 32)];
          [v45 removeObjectForKey:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v32);
  }
}

void sub_1001AEEC4(uint64_t a1)
{
  v3 = sub_10000BE38(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) extensionsAlreadySynced];
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. extensionsAlreadySynced: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) extensionsAlreadySynced];
  v6 = [v5 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) extensionsAlreadySynced];
    [v7 addObject:*(a1 + 40)];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 category] == 3)
        {
          v14 = v13;
          v15 = sub_10000BE38(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. extAccessory: %@", buf, 0xCu);
          }

          v16 = [v14 extensionId];
          if (v16 && ([v14 extensionId], v1 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v1, "isEqualToString:", *(a1 + 40)) & 1) == 0))
          {

LABEL_19:
          }

          else
          {
            v17 = *(a1 + 56);
            v18 = [v14 accessoryIdentifier];
            v19 = [v17 objectForKeyedSubscript:v18];

            if (v16)
            {
            }

            if (!v19)
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001AF1E4;
              block[3] = &unk_1002CD478;
              v21 = *(a1 + 64);
              v22 = v14;
              dispatch_async(&_dispatch_main_q, block);

              v16 = v21;
              goto LABEL_19;
            }
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v10)
      {
LABEL_23:

        return;
      }
    }
  }
}

void sub_1001AF2A8(uint64_t a1)
{
  v2 = +[FMDExtConfigurationRegistry sharedInstance];
  v3 = [*(a1 + 32) accessoryType];
  v4 = [v2 configForAccessoryType:v3];

  if (v4)
  {
    v6 = sub_10000BE38(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 features];
      *buf = 138412290;
      v55 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got config %@", buf, 0xCu);
    }

    v8 = dispatch_group_create();
    v9 = [v4 flavorForFeature:@"style"];
    v10 = [*(a1 + 32) accessoryIdentifier];
    v11 = [v10 stringValue];

    if (v9)
    {
      v12 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"style" flavor:v9];
      if (v12)
      {
        dispatch_group_enter(v8);
        v13 = [v4 infoForFeature:@"style"];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1001AF834;
        v51[3] = &unk_1002D07F0;
        v52 = *(a1 + 32);
        v53 = v8;
        [v12 getStyleForAccessory:v11 info:v13 withCompletion:v51];
      }

      v14 = dispatch_time(0, 60000000000);
      v15 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001AF948;
      block[3] = &unk_1002D07A0;
      v46 = *(a1 + 32);
      v47 = v9;
      v48 = v11;
      v16 = v4;
      v17 = *(a1 + 40);
      v49 = v16;
      v50 = v17;
      dispatch_after(v14, v15, block);
    }

    [v4 timeoutForFeature:@"style"];
    v19 = dispatch_time(0, (v18 * 1000000000.0));
    v20 = dispatch_group_wait(v8, v19);
    if (v20)
    {
      v21 = sub_10000BE38(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10022D2B0();
      }
    }

    v39 = v11;
    v40 = v8;
    v22 = [v4 infoForFeature:@"sound"];
    v23 = +[NSMutableDictionary dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v22;
    v24 = [v22 objectForKeyedSubscript:@"channels"];
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v41 + 1) + 8 * i);
          v30 = [[FMDAudioChannelStatus alloc] initWithName:v29 active:1];
          [(FMDAudioChannelStatus *)v30 setAvailability:1];
          [v23 setObject:v30 forKey:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v60 count:16];
      }

      while (v26);
    }

    v31 = sub_10017DBC8([*(a1 + 32) setAudioChannelInfo:v23]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 32) playbackChannels];
      v33 = [*(a1 + 32) audioChannelInfo];
      v34 = [*(a1 + 32) name];
      *buf = 138412802;
      v55 = v32;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "got playback channel  %@  and audioChannelInfo = %@ error for %@", buf, 0x20u);
    }

    v35 = [*(a1 + 40) accessoryRegistry];
    [v35 updateAccessory:*(a1 + 32)];
  }

  else
  {
    v36 = +[FMDExtConfigurationRegistry sharedInstance];
    v37 = [*(a1 + 32) accessoryType];
    [v36 prepareForAccessoryType:v37];
  }
}

void sub_1001AF834(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BE38(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) name];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "got style %@ for %@ error %@", &v9, 0x20u);
  }

  if (v5 && !v6)
  {
    [*(a1 + 32) setStyle:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001AF948(uint64_t a1)
{
  v2 = sub_10000BE38(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Getting style again for %@", buf, 0xCu);
  }

  v4 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"style" flavor:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) infoForFeature:@"style"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AFABC;
  v9[3] = &unk_1002D07F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  [v4 getStyleForAccessory:v5 info:v6 withCompletion:v9];
}

void sub_1001AFABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BE38(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got style %@ with error = %@", &v14, 0x16u);
  }

  if (v5)
  {
    if (!v6)
    {
      v8 = [*(a1 + 32) style];
      v9 = [v5 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        v11 = sub_10000BE38(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) name];
          v14 = 138412546;
          v15 = v12;
          v16 = 2112;
          v17 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updating Accessory %@ with style %@", &v14, 0x16u);
        }

        [*(a1 + 32) setStyle:v5];
        v13 = [*(a1 + 40) accessoryRegistry];
        [v13 updateAccessory:*(a1 + 32)];
      }
    }
  }
}

void sub_1001AFD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AFD90(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) accessoriesByExtension];
  v3 = [v2 allValues];

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

        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) allValues];
        [v8 addObjectsFromArray:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1001AFFC4(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1002D0830];
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B03A4;
  v3[3] = &unk_1002CD8B0;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void sub_1001B008C(id a1, FMDExtAccessory *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(FMDExtAccessory *)v4 address];
  v6 = [NSData dataWithMACAddressString:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v7 ownerSession];

    v9 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FMDExtAccessory *)v4 address];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDExtAccessoryManager Retrieving baUUID for MAC: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B0254;
    v16 = &unk_1002CFC28;
    v17 = v4;
    v18 = v9;
    v12 = v9;
    [v8 beaconingIdentifierForMACAddress:v6 completion:&v13];
    [v12 wait];
  }
}

void sub_1001B0254(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) address];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDExtAccessoryManager Received baUUID: %@ for %@, %@", &v10, 0x20u);
  }

  if (v3)
  {
    v8 = [*(a1 + 32) baUUID];
    v9 = [v3 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 32) updateWithBeaconingIdentifier:v3];
    }
  }

  [*(a1 + 40) signal];
}

void sub_1001B0B70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNextScheduledJanitorDate:0];
  [WeakRetained expungeAccessoryLocationStore];
  v2 = [[FMDEventLoggerEventScalar alloc] initWithEventName:@"FMDAccessoryLocationStoreJanitor"];
  v3 = +[FMDEventLogger sharedLogger];
  v4 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 logEvent:v2 toFacilitiesNamed:v5];
}

id sub_1001B0C74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableDictionary dictionary];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AB24;
  v16 = sub_100002B5C;
  v17 = 0;
  v3 = [WeakRetained serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B0E1C;
  block[3] = &unk_1002CD260;
  block[4] = WeakRetained;
  block[5] = &v12;
  dispatch_sync(v3, block);

  v4 = v13[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B0E68;
  v9[3] = &unk_1002D0880;
  v5 = v2;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_1001B0E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B0E1C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordsByAccessoryIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1001B0E68(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B0EF4;
  v4[3] = &unk_1002D0858;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1001B0EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordName];
  v7 = v4;
  v5 = [v3 description];

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [*(a1 + 32) addEntriesFromDictionary:v6];
}

void sub_1001B10C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B116C;
  v6[3] = &unk_1002CD8B0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_1001B116C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1);
  }

  return result;
}

void sub_1001B12BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B12D4(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) expungeRecordsForAccessory:*(a1 + 40) allRecords:0];
  v3 = [*v2 recordsByAccessoryIdentifier];
  v4 = [v2[1] accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 sortedArrayUsingComparator:&stru_1002D0910];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000AB24;
  v24 = sub_100002B5C;
  v25 = 0;
  v7 = [*v2 canRetrieveLockedRecords];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B15F8;
  v18[3] = &unk_1002D0938;
  v18[4] = &v20;
  v19 = v7;
  [v6 enumerateObjectsUsingBlock:v18];
  v8 = +[FMDProtectedContextManager sharedManager];
  v9 = [v21[5] recordName];
  v10 = [v8 contextForKey:v9 contextUUID:0 error:0];

  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v10;
      v13 = [[FMDLocation alloc] initWithDictionary:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  v16 = sub_100002880(isKindOfClass);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore: Historical diskLocation %@", buf, 0xCu);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1001B155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_1001B1588(id a1, FMDAccessoryLocationStoreRecord *a2, FMDAccessoryLocationStoreRecord *a3)
{
  v4 = a3;
  v5 = [(FMDAccessoryLocationStoreRecord *)a2 creationDate];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_1001B15F8(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v8 = v7;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    if ((v10 = v7, [v7 protection] == 1) && (*(a1 + 40) & 1) != 0 || (v7 = objc_msgSend(v10, "protection"), v8 = v10, !v7))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v8 = v10;
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;

  return _objc_release_x1(v7, v8);
}

void sub_1001B1740(uint64_t a1)
{
  [*(a1 + 32) clearAllRecords];
  v2 = +[NSFileManager defaultManager];
  v3 = [objc_opt_class() defaultStorageLocation];
  v7 = 0;
  [v2 removeItemAtURL:v3 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = [v4 fm_isFileNotFoundError];
    if ((v5 & 1) == 0)
    {
      v6 = sub_100002880(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022D318(v4, v6);
      }
    }
  }

  [*(a1 + 32) setRecordsByAccessoryIdentifier:&__NSDictionary0__struct];
  [*(a1 + 32) removeOrphanedLocationFiles];
  [*(a1 + 32) scheduleJanitor:0];
}

void sub_1001B18EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001B1910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore expunging all accessory locations %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B1A54;
  v7[3] = &unk_1002CD288;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void sub_1001B1A54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B1AE8;
  v4[3] = &unk_1002D00D0;
  v4[4] = WeakRetained;
  [v3 enumerateObjectsUsingBlock:v4];
  [WeakRetained removeOrphanedLocationFiles];
}

void sub_1001B1D38(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B1DC4;
  v3[3] = &unk_1002D0858;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void sub_1001B1DC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordName];
  [v2 addObject:v3];
}

void sub_1001B1E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022D3B4();
    }

    v6 = +[FMDProtectedContextManager sharedManager];
    [v6 cleanupAllContextsForKey:v3];
  }
}

void sub_1001B2098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B20D4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained saveLocation:v5 forAccessory:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_1001B2498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained accessoryRegistry];
  v4 = [*(a1 + 32) accessoryIdentifier];
  v5 = [v3 accessoryForIdentifier:v4];

  if (v5)
  {
    v20 = [WeakRetained saveLocationToDisk:*(a1 + 40) accessory:*(a1 + 32) protection:0];
    v7 = [WeakRetained saveLocationToDisk:*(a1 + 40) accessory:*(a1 + 32) protection:1];
    v8 = [WeakRetained recordsByAccessoryIdentifier];
    v9 = [v8 mutableCopy];

    v10 = [WeakRetained recordsByAccessoryIdentifier];
    v11 = [*(a1 + 32) accessoryIdentifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v18 = v15;

    [v18 addObject:v20];
    [v18 addObject:v7];
    v19 = [*(a1 + 32) accessoryIdentifier];
    [v9 setObject:v18 forKeyedSubscript:v19];

    [WeakRetained setRecordsByAccessoryIdentifier:v9];
    [WeakRetained expungeRecordsForAccessory:*(a1 + 32) allRecords:0];
  }

  else
  {
    v16 = sub_100002880(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to save location to disk: The accessory is no longer paired. %@", buf, 0xCu);
    }
  }
}

void sub_1001B2F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 192), 8);
  _Unwind_Resume(a1);
}

int64_t sub_1001B2FC8(id a1, FMDAccessoryLocationStoreRecord *a2, FMDAccessoryLocationStoreRecord *a3)
{
  v4 = a3;
  v5 = [(FMDAccessoryLocationStoreRecord *)a2 creationDate];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 creationDate];

  v7 = [v5 compare:v6];
  v8 = -1;
  if (v7 != 1)
  {
    v8 = v7;
  }

  if (v7 == -1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_1001B304C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 88))
  {
    goto LABEL_9;
  }

  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 protection]);
  v6 = [v5 stringValue];

  v7 = [*(*(*(a1 + 32) + 8) + 40) valueForKey:v6];
  v8 = [v7 unsignedIntegerValue];

  v9 = v8 + 1;
  v10 = *(a1 + 56);
  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [NSNumber numberWithUnsignedInteger:v9];
  [v11 setObject:v12 forKey:v6];

  v14 = sub_100002880(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109120;
    LODWORD(v33) = v9 <= v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore Applying max locate rule - valid : %i", &v32, 8u);
  }

  if (v9 > v10)
  {

LABEL_9:
    v17 = 0;
LABEL_10:
    v18 = sub_100002880(v3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      v32 = 134217984;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Accessory location is expired or beyond maximum (%lu), deleting it.", &v32, 0xCu);
    }

    v20 = +[FMDProtectedContextManager sharedManager];
    v21 = [v4 recordName];
    v22 = [v4 contextUUID];
    [v20 cleanupContextsForKey:v21 contextUUID:v22 obliterate:0];

    goto LABEL_13;
  }

  if (![v4 protection])
  {
    v16 = 64;
    goto LABEL_16;
  }

  v15 = [v4 protection];
  if (v15 == 1)
  {
    v16 = 80;
LABEL_16:
    v23 = [v4 creationDate];
    v17 = [v23 dateByAddingTimeInterval:*(a1 + v16)];

    v15 = [v17 timeIntervalSinceReferenceDate];
    v25 = *(a1 + 72) < v24;
    goto LABEL_18;
  }

  v17 = 0;
  v25 = 1;
LABEL_18:
  v26 = sub_100002880(v15);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109120;
    LODWORD(v33) = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore Applying time expiry - valid : %i", &v32, 8u);
  }

  if (!v25)
  {
    goto LABEL_10;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  if (v28)
  {
    [v28 timeIntervalSinceReferenceDate];
    v30 = v29;
    [v17 timeIntervalSinceReferenceDate];
    if (v30 <= v31)
    {
      goto LABEL_14;
    }

    v27 = *(*(a1 + 48) + 8);
  }

  v17 = v17;
  v20 = *(v27 + 40);
  *(v27 + 40) = v17;
LABEL_13:

LABEL_14:
}

void sub_1001B3468(id a1, FMDAccessoryLocationStoreRecord *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v7 = +[FMDProtectedContextManager sharedManager];
  v5 = [(FMDAccessoryLocationStoreRecord *)v4 recordName];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 contextUUID];

  [v7 cleanupContextsForKey:v5 contextUUID:v6 obliterate:1];
}

void sub_1001B35D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dataArchiver];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  v12 = 0;
  v5 = [v2 readDictionaryAndClasses:v4 error:&v12];
  v6 = v12;
  v7 = &__NSDictionary0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if (v6)
  {
    v9 = [v6 fm_isFileNotFoundError];
    if ((v9 & 1) == 0)
    {
      v10 = sub_100002880(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022D41C();
      }

      v11 = +[FMDEventLoggerGeneral sharedInstance];
      [v11 sendError:v6 forEventName:@"FMDAccessoryLocationStoreFailedReadEventName"];
    }
  }

  [WeakRetained setRecordsByAccessoryIdentifier:v8];
}

void sub_1001B3A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained expungeRecordsForAccessory:*(a1 + 32) allRecords:1];
}

void sub_1001B4160(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logEvent:*(a1 + 32)];
}

void sub_1001B448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B44A4(uint64_t a1)
{
  v5 = [*(a1 + 32) logs];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B4730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = [WeakRetained setLogs:?];
  }

  else
  {
    v5 = +[NSMutableArray array];
    [v3 setLogs:v5];
  }

  v6 = sub_100002880(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 logs];
    v8 = [v7 count];
    v9 = [v3 cachedLogFileURL];
    v10 = 134218242;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found existing logs %ld %@", &v10, 0x16u);
  }
}

void sub_1001B4958(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003149A0;
  qword_1003149A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001B4AFC(id a1)
{
  v1 = +[FMSystemInfo sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    byte_1003149B0 = [v3 fileExistsAtPath:@"/tmp/deviceIdentityPrefs/prefs.plist"];
  }
}

void sub_1001B50F8(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = xpc_activity_copy_criteria(v3);
  v6 = v5;
  if (state == 2)
  {
    [*(a1 + 32) performWork];
    v7 = xpc_activity_set_state(v3, 5);
    v8 = v7;
    v9 = sub_100002880(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) name];
      v14 = 138412546;
      v15 = v10;
      v16 = 1024;
      LODWORD(v17) = v8;
      v11 = "FMDXPCJanitor XPC activity triggered. Updating to done so that it can be cleaned. success : %@ : %d";
      v12 = v9;
      v13 = 18;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else
  {
    v9 = sub_100002880(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) name];
      v14 = 138412802;
      v15 = v10;
      v16 = 2048;
      v17 = state;
      v18 = 2048;
      v19 = v6;
      v11 = "FMDXPCJanitor XPC activity XPC activity %@ changed to state %ld with criteria %p";
      v12 = v9;
      v13 = 32;
      goto LABEL_6;
    }
  }
}

void sub_1001B5750(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained configManager];
    v5 = [v4 activeConfig];

    v7 = sub_1000029E0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v121 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - starting with config %@", buf, 0xCu);
    }

    if (!v5)
    {
      v9 = sub_1000029E0(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - no active policy. Defaulting to proactive", buf, 2u);
      }

      v10 = [v3 configManager];
      v5 = [v10 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    }

    v11 = [[FMDSecureLocationPublisher alloc] initWithConfiguration:v5];
    [v3 setLocationPublisher:v11];

    v12 = [v3 locationPublisher];
    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_1001B6314;
    v119[3] = &unk_1002CD4C8;
    v119[4] = v3;
    [v12 publishCriteriaMetBlock:v119];

    v13 = [v3 locationPublisher];
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 3221225472;
    v118[2] = sub_1001B6398;
    v118[3] = &unk_1002D0AE0;
    v118[4] = v3;
    [v13 startPublisherWithBlock:v118];

    v14 = [v5 policyName];
    v15 = kFMDSecureLocationModeProactive;
    v16 = [v14 caseInsensitiveCompare:kFMDSecureLocationModeProactive];

    if (v16)
    {
      v17 = [v5 policyName];
      v18 = [v17 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

      if (v18)
      {
        v19 = [v5 policyName];
        v20 = [v19 caseInsensitiveCompare:kFMDSecureLocationModeLive];

        if (v20)
        {
          v21 = [v5 policyName];
          v22 = [v21 caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow];

          if (!v22)
          {
            v108 = [a1[4] _createLocationManager];
            [v3 setShallowLocationManager:v108];

            v109 = a1[4];
            v110 = [v3 shallowLocationManager];
            [v110 setDelegate:v109];

            v111 = a1[4];
            v112 = [v5 desiredAccuracy];
            [v111 _clLocationAccuracyFromConfigValue:v112];
            v114 = v113;
            v115 = [v3 shallowLocationManager];
            [v115 setDesiredAccuracy:v114];

            v40 = [v3 shallowLocationManager];
            [v40 startUpdatingLocation];
            goto LABEL_25;
          }

          v23 = [v5 policyName];
          v24 = [v23 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

          if (v24)
          {
            goto LABEL_26;
          }

          v25 = [a1[4] _createLocationManager];
          [v3 setBystanderLocationManager:v25];

          v26 = a1[4];
          v27 = [v3 bystanderLocationManager];
          [v27 setDelegate:v26];

          v28 = kCLLocationAccuracyBystander;
          v29 = [v3 bystanderLocationManager];
          [v29 setDesiredAccuracy:v28];

          v30 = [v3 bystanderLocationManager];
          [v30 startUpdatingLocation];

          v31 = [a1[4] _createLocationManager];
          [v3 setHeartbeatLocationManager:v31];

          v32 = a1[4];
          v33 = [v3 heartbeatLocationManager];
          [v33 setDelegate:v32];

          v34 = a1[4];
          v35 = [v5 desiredAccuracy];
          [v34 _clLocationAccuracyFromConfigValue:v35];
          v37 = v36;
          v38 = [v3 heartbeatLocationManager];
          [v38 setDesiredAccuracy:v37];

          v40 = sub_1000029E0(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v41 = "SecureLocationMonitor: Started location managers for ownerproactive";
LABEL_24:
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
          }
        }

        else
        {
          v77 = [a1[4] _createLocationManager];
          [v3 setLiveLocationManager:v77];

          v78 = a1[4];
          v79 = [v3 liveLocationManager];
          [v79 setDelegate:v78];

          v80 = a1[4];
          v81 = [v5 desiredAccuracy];
          [v80 _clLocationAccuracyFromConfigValue:v81];
          v83 = v82;
          v84 = [v3 liveLocationManager];
          [v84 setDesiredAccuracy:v83];

          v85 = [v3 liveLocationManager];
          [v85 startUpdatingLocation];

          v40 = sub_1000029E0(v86);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v41 = "SecureLocationMonitor: Started live location manager";
            goto LABEL_24;
          }
        }
      }

      else
      {
        v62 = [a1[4] _createLocationManager];
        [v3 setVisitsLocationManager:v62];

        v63 = a1[4];
        v64 = [v3 visitsLocationManager];
        [v64 setDelegate:v63];

        v65 = [v3 visitsLocationManager];
        [v65 startMonitoringVisits];

        v66 = [a1[4] _createLocationManager];
        [v3 setSlcLocationManager:v66];

        v67 = a1[4];
        v68 = [v3 slcLocationManager];
        [v68 setDelegate:v67];

        v69 = [v3 slcLocationManager];
        [v69 startMonitoringSignificantLocationChanges];

        v70 = [a1[4] _createLocationManager];
        [v3 setBystanderLocationManager:v70];

        v71 = a1[4];
        v72 = [v3 bystanderLocationManager];
        [v72 setDelegate:v71];

        v73 = kCLLocationAccuracyBystander;
        v74 = [v3 bystanderLocationManager];
        [v74 setDesiredAccuracy:v73];

        v75 = [v3 bystanderLocationManager];
        [v75 startUpdatingLocation];

        v40 = sub_1000029E0(v76);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v41 = "SecureLocationMonitor: Started background proactive location manager";
          goto LABEL_24;
        }
      }
    }

    else
    {
      v43 = [a1[4] _createLocationManager];
      [v3 setVisitsLocationManager:v43];

      v44 = a1[4];
      v45 = [v3 visitsLocationManager];
      [v45 setDelegate:v44];

      v46 = [v3 visitsLocationManager];
      [v46 startMonitoringVisits];

      v47 = [a1[4] _createLocationManager];
      [v3 setSlcLocationManager:v47];

      v48 = a1[4];
      v49 = [v3 slcLocationManager];
      [v49 setDelegate:v48];

      v50 = [v3 slcLocationManager];
      [v50 startMonitoringSignificantLocationChanges];

      v51 = [a1[4] _createLocationManager];
      [v3 setBystanderLocationManager:v51];

      v52 = a1[4];
      v53 = [v3 bystanderLocationManager];
      [v53 setDelegate:v52];

      v54 = kCLLocationAccuracyBystander;
      v55 = [v3 bystanderLocationManager];
      [v55 setDesiredAccuracy:v54];

      v56 = [v3 bystanderLocationManager];
      [v56 startUpdatingLocation];

      v57 = [a1[4] _createLocationManager];
      [v3 setHeartbeatLocationManager:v57];

      v58 = a1[4];
      v59 = [v3 heartbeatLocationManager];
      [v59 setDelegate:v58];

      v60 = [v3 heartbeatLocationManager];
      [v60 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];

      v40 = sub_1000029E0(v61);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "SecureLocationMonitor: Started proactive location manager";
        goto LABEL_24;
      }
    }

LABEL_25:

LABEL_26:
    v87 = [a1[4] _createLocationManager];
    [v3 setOndemandLocationManager:v87];

    v88 = a1[4];
    v89 = [v3 ondemandLocationManager];
    [v89 setDelegate:v88];

    v90 = a1[4];
    v91 = [v5 desiredAccuracy];
    [v90 _clLocationAccuracyFromConfigValue:v91];
    v93 = v92;

    if (v93 >= kCLLocationAccuracyHundredMeters)
    {
      v93 = kCLLocationAccuracyHundredMeters;
    }

    v94 = [v3 ondemandLocationManager];
    [v94 setDesiredAccuracy:v93];

    v95 = [a1[4] _createLocationManagerForStewie];
    [v3 setStewieLocationManager:v95];

    [a1[4] _scheduleXPCActivity];
    v96 = objc_alloc_init(FMDMotionMonitor);
    [v3 setMotionMonitor:v96];

    v97 = [v3 motionMonitor];
    [v97 startMotionMonitoring];

    [v3 setLocationManagerStarted:1];
    v98 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B645C;
    block[3] = &unk_1002CE250;
    v117 = a1[5];
    dispatch_async(v98, block);

    v99 = [v5 policyName];
    v100 = [v99 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

    if (v100)
    {
      v101 = [v5 policyName];
      v102 = [v101 caseInsensitiveCompare:v15];

      if (v102)
      {
        v103 = [v5 policyName];
        v104 = [v103 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

        if (v104)
        {
LABEL_35:
          v107 = sub_1000029E0(v105);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor Started Location Managers", buf, 2u);
          }

          goto LABEL_38;
        }

        v106 = 3;
      }

      else
      {
        v106 = 1;
      }
    }

    else
    {
      v106 = 2;
    }

    v105 = [FMPreferencesUtil setInteger:v106 forKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
    goto LABEL_35;
  }

  v42 = sub_1000029E0(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: strongSelf is nil, not starting monitors. Calling completion", buf, 2u);
  }

  (*(a1[5] + 2))();
LABEL_38:
}

void sub_1001B6314(uint64_t a1)
{
  v2 = sub_1000029E0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Criteria reached, getting on-demand location.", v4, 2u);
  }

  v3 = [*(a1 + 32) ondemandLocationManager];
  [v3 requestLocation];
}

void sub_1001B6398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Got location from policy manager %@", &v5, 0xCu);
  }

  [*(a1 + 32) _publishLocation:v3];
}

void sub_1001B6728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_1000029E0([WeakRetained setForcePushOndemandlocation:1]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext ondemandLocationManager requestLocation and force publish", v4, 2u);
  }

  [*(a1 + 32) requestForcedShallowLocation];
  [*(a1 + 32) publishOnDemandLocation:&stru_1002D0B28];
}

void sub_1001B69D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000029E0(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error starting SecureLocationMonitor %@", &v5, 0xCu);
    }
  }
}

void sub_1001B6C4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained visitsLocationManager];

    if (v4)
    {
      v5 = [v3 visitsLocationManager];
      [v5 stopMonitoringVisits];

      [v3 setVisitsLocationManager:0];
    }

    v6 = [v3 slcLocationManager];

    if (v6)
    {
      v7 = [v3 slcLocationManager];
      [v7 stopMonitoringSignificantLocationChanges];

      [v3 setSlcLocationManager:0];
    }

    v8 = [v3 bystanderLocationManager];

    if (v8)
    {
      v9 = [v3 bystanderLocationManager];
      [v9 stopUpdatingLocation];

      [v3 setBystanderLocationManager:0];
    }

    v10 = [v3 heartbeatLocationManager];

    if (v10)
    {
      v11 = [v3 heartbeatLocationManager];
      [v11 stopUpdatingLocation];

      [v3 setHeartbeatLocationManager:0];
    }

    v12 = [v3 ondemandLocationManager];

    if (v12)
    {
      v13 = [v3 ondemandLocationManager];
      [v13 stopUpdatingLocation];

      [v3 setOndemandLocationManager:0];
    }

    v14 = [v3 liveLocationManager];

    if (v14)
    {
      v15 = [v3 liveLocationManager];
      [v15 stopUpdatingLocation];

      [v3 setLiveLocationManager:0];
    }

    v16 = [v3 shallowLocationManager];

    if (v16)
    {
      v17 = [v3 shallowLocationManager];
      [v17 stopUpdatingLocation];

      [v3 setShallowLocationManager:0];
    }

    v18 = [v3 motionMonitor];

    if (v18)
    {
      v19 = [v3 motionMonitor];
      [v19 stopMotionMonitoring];

      [v3 setMotionMonitor:0];
    }

    [v3 setLocationManagerStarted:0];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B6FC0;
    block[3] = &unk_1002CE250;
    v25 = *(a1 + 32);
    dispatch_async(v20, block);

    v21 = sub_1000029E0([FMPreferencesUtil setInteger:0 forKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Stopped Location Managers", v23, 2u);
    }
  }

  else
  {
    v22 = sub_1000029E0(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - strongSelf is nil, calling completion", v23, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001B7470(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) locationPublishQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7554;
  block[3] = &unk_1002D0B70;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, &location);
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_1001B7554(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = v2;
  v4 = sub_1000029E0(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      v7 = "SecureLocationMonitor: Sending location to FML to publish %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    v7 = "SecureLocationMonitor: Sending location to searchpartyd to publish %@";
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishLocationInfo:*(a1 + 32) completion:0];
}

void sub_1001B77EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error publishing location to FML %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published location to FML - %@", &v8, 0xCu);
    }

    v4 = +[NSDate date];
    [*(a1 + 40) setLastPublishedTime:v4];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1001B7924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error publishing location to searchpartyd %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published location to searchpartyd - %@", &v8, 0xCu);
    }

    v4 = +[NSDate date];
    [*(a1 + 40) setLastPublishedTime:v4];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1001B7C64(uint64_t a1)
{
  v2 = [*(a1 + 32) locationPublisher];
  v3 = [v2 publishPreviouslyReceivedLocation];

  if ((v3 & 1) == 0)
  {
    v5 = sub_1000029E0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) heartbeatLocationManager];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: don't have a valid lastReceivedLocation. Requesting from heartbeat location manager %@", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) heartbeatLocationManager];
    [v7 requestLocation];
  }
}

uint64_t sub_1001B7FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) ondemandLocationManager];

  if (v2)
  {
    v4 = [*(a1 + 32) lastOnDemandPublishTime];
    if (v4 && (v5 = v4, [*(a1 + 32) lastOnDemandPublishTime], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceNow"), v8 = -v7, objc_msgSend(*(a1 + 32), "configManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "activeConfig"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "onDemandPublishThreshold"), v12 = v11, v10, v9, v6, v5, v12 > v8))
    {
      v13 = sub_1000029E0(v4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v14 = "SecureLocationMonitor: Rejecting ondemand publish request as its within threshold";
        v15 = &v20;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      }
    }

    else
    {
      v16 = sub_1000029E0(v4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Requesting ondemand one time location", buf, 2u);
      }

      v17 = [*(a1 + 32) ondemandLocationManager];
      [v17 requestLocation];

      v13 = +[NSDate now];
      [*(a1 + 32) setLastOnDemandPublishTime:v13];
    }
  }

  else
  {
    v13 = sub_1000029E0(v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v14 = "SecureLocationMonitor: Received ondemand request but location manager not setup";
      v15 = &v19;
      goto LABEL_11;
    }
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

id sub_1001B8220(uint64_t a1, void *a2)
{
  v3 = sub_1000029E0(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Received ondemand location publish request.", v5, 2u);
  }

  return [a2 publishOnDemandLocation:&stru_1002D0C78];
}

void sub_1001B8498(uint64_t a1)
{
  v2 = sub_1000029E0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Requesting one time location", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) stewieLocationManager];
  [v3 startUpdatingLocation];
}

void sub_1001B8898(id a1, NSError *a2)
{
  v2 = sub_1000029E0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ requested publish", &v3, 0xCu);
  }
}

void sub_1001B95C4(uint64_t a1)
{
  v2 = sub_1000029E0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Stopped location monitor since expired", v7, 2u);
  }

  v3 = [*(a1 + 32) configManager];
  v4 = [*(a1 + 32) configManager];
  v5 = [v4 activeConfig];
  v6 = [v5 policyName];
  [v3 policyExpired:v6];
}

void sub_1001B97D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error stopping SecureLocationMonitor %@", &v6, 0xCu);
    }
  }
}

void sub_1001B9C68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: - xpc activity triggered", &v15, 2u);
  }

  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v8 = sub_1000029E0(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: XPC Activity State Run", &v15, 2u);
    }

    if (!xpc_activity_should_defer(v3))
    {
      v10 = [FMPreferencesUtil BOOLForKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
      v11 = [*(a1 + 32) isRunning];
      if ((v11 & 1) != 0 || !v10)
      {
        v12 = sub_1000029E0(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor already running", &v15, 2u);
        }

        [*(a1 + 32) _publishHeartbeatIfNeeded];
      }

      else
      {
        [*(a1 + 32) startLocationMonitor:&stru_1002D0BF8];
      }

      v13 = xpc_activity_set_state(v3, 5);
      v14 = v13;
      v6 = sub_1000029E0(v13);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        LODWORD(v16) = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Setting state of XPC activity to done. Result %d", &v15, 8u);
      }

      goto LABEL_21;
    }

    v9 = xpc_activity_set_state(v3, 3);
    if (!v9)
    {
      v6 = sub_1000029E0(v9);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022D998(v6);
      }

      goto LABEL_21;
    }
  }

  else if (!state)
  {
    v6 = sub_1000029E0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = xpc_activity_copy_criteria(v3);
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: XPC Activity Checkin with criteria %@", &v15, 0xCu);
    }

LABEL_21:
  }
}

void sub_1001B9F04(id a1, NSError *a2)
{
  if (a2)
  {
    v2 = sub_1000029E0(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC Activity - Error Starting SecureLocationMonitor", v3, 2u);
    }
  }
}

void sub_1001BA1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 || (v7 = *(a1 + 32)) == 0)
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error stopping %{public}@ OR NO activeConfig %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001BA2F8;
    v9[3] = &unk_1002CD868;
    v10 = v7;
    [v8 startLocationMonitor:v9];
    v5 = v10;
  }
}

void sub_1001BA2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed Restarting Location Monitor with new config  %{public}@. Error %{public}@.", &v6, 0x16u);
  }
}

void sub_1001BA3C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed Restarting Location Monitor with new config. Error %{public}@", &v4, 0xCu);
  }
}

void sub_1001BA5D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed starting Location Monitor with extended config. Error %@", &v4, 0xCu);
  }
}

void sub_1001BA684(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published one time on extension of proactive. Error %@", &v4, 0xCu);
  }
}

void sub_1001BA844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained publishOneTimeShallowLocation:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1001BAE6C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: completed ondemand publish request. Error %@", &v4, 0xCu);
  }
}

void sub_1001BAF18(id a1)
{
  v1 = objc_alloc_init(FMDServerConfig);
  v2 = qword_1003149C0;
  qword_1003149C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001BB770(uint64_t a1)
{
  v2 = [*(a1 + 32) dataArchiver];
  v3 = [NSSet setWithObjects:objc_opt_class(), 0];
  v12 = 0;
  v4 = [v2 readDictionaryAndClasses:v3 error:&v12];
  v5 = v12;

  if (v5)
  {
    v7 = sub_1000029E0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022D9F0();
    }

    v8 = [*(a1 + 32) configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    v9 = *(a1 + 32);
  }

  else
  {
    v8 = [*(a1 + 32) _readConfigFromDictionary:v4];
    v10 = sub_1000029E0(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = @"SecureLocationConfig";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Read config from file %@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    if (!v8)
    {
      v11 = [v9 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
      [*(a1 + 32) setActiveConfig:v11];

      goto LABEL_9;
    }
  }

  [v9 setActiveConfig:v8];
LABEL_9:
}

void sub_1001BBA08(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictionaryFromConfigData:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) dataArchiver];
    v4 = [v3 saveDictionary:v2];

    v6 = sub_1000029E0(v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022DA6C();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"SecureLocationConfig";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Archived config data successfully", &v8, 0xCu);
    }
  }

  else
  {
    v4 = sub_1000029E0(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022DAE8();
    }
  }
}

void sub_1001BBC90(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseConfigFile:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) setActiveConfig:v2];
    v3 = [*(a1 + 32) delegate];

    if (v3)
    {
      v4 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BBE18;
      block[3] = &unk_1002CD4C8;
      block[4] = *(a1 + 32);
      dispatch_async(v4, block);
    }

    v5 = sub_1000029E0([*(a1 + 32) _archiveConfigFile:*(a1 + 40)]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) activeConfig];
      *buf = 138412546;
      v9 = @"SecureLocationConfig";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting active config as %@", buf, 0x16u);
    }
  }
}

void sub_1001BBE18(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) activeConfig];
  [v3 activeConfigChanged:v2];
}

void sub_1001BC8D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) mode];
  v3 = [WeakRetained configForPolicy:v2];

  v4 = +[NSDate date];
  [v3 expirationInterval];
  v5 = [v4 dateByAddingTimeInterval:?];

  v6 = [WeakRetained policyExpirationTimes];
  v7 = [*(a1 + 32) mode];
  [v6 setObject:v5 forKey:v7];

  [WeakRetained _addContext:*(a1 + 32) withExpiration:v5];
  v8 = [*(a1 + 32) mode];
  [WeakRetained _policyRequested:v8];
}

void sub_1001BCF84(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained activeConfig];
  v4 = [v3 policyName];

  v5 = [a1[4] stopMonitoringActivePolicy];
  if (v5)
  {
    v6 = sub_1000029E0(v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 138412546;
        *&v28[4] = @"SecureLocationConfig";
        *&v28[12] = 2114;
        *&v28[14] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Removing active policy: %{public}@", v28, 0x16u);
      }

      v8 = [WeakRetained activePolicies];
      [v8 removeObjectForKey:v4];

      v9 = [WeakRetained policyExpirationTimes];
      [v9 removeObjectForKey:v4];

      [WeakRetained policyExpired:v4];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022DC64();
      }

      v19 = [WeakRetained delegate];
      v20 = v19;
      if (v19)
      {
        [v19 activeConfigChanged:0];
      }
    }

    goto LABEL_24;
  }

  v10 = [a1[5] _removeContext:a1[4]];
  v11 = [WeakRetained policyExpirationTimes];
  v12 = [a1[4] mode];
  if (v10)
  {
    [v11 setObject:v10 forKey:v12];

    v14 = sub_1000029E0(v13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = [a1[4] mode];
    *v28 = 138412802;
    *&v28[4] = @"SecureLocationConfig";
    *&v28[12] = 2114;
    *&v28[14] = v15;
    *&v28[22] = 2114;
    v29 = v10;
    v16 = "%@ Updated expirationTime for %{public}@ to %{public}@";
    v17 = v14;
    v18 = 32;
  }

  else
  {
    [v11 removeObjectForKey:v12];

    v14 = sub_1000029E0(v21);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = [a1[4] mode];
    *v28 = 138412546;
    *&v28[4] = @"SecureLocationConfig";
    *&v28[12] = 2114;
    *&v28[14] = v15;
    v16 = "%@ No more subs left for %{public}@";
    v17 = v14;
    v18 = 22;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, v28, v18);

LABEL_17:
  v22 = [WeakRetained activeConfig];

  if (v22)
  {
    v23 = [a1[4] mode];
    v24 = [v23 isEqualToString:v4];

    if (v24)
    {
      v25 = +[NSDate date];
      v26 = v25;
      if (!v10 || [v25 compare:v10] == 1)
      {
        v27 = [a1[4] mode];
        [WeakRetained policyExpired:v27];
      }
    }
  }

LABEL_24:
}

void sub_1001BD70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = [WeakRetained policyExpirationTimes];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  v5 = [v3 activeConfig];
  v6 = [v5 policyName];
  LODWORD(v7) = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v9 = sub_1000029E0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v39 = @"SecureLocationConfig";
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Active config expired: %{public}@", buf, 0x16u);
    }

    [v3 setActiveConfig:0];
  }

  v11 = +[NSDate date];
  v12 = sub_1000029E0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) policyExpirationTimes];
    *buf = 138412546;
    v39 = @"SecureLocationConfig";
    v40 = 2114;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ policyExpirationTimes %{public}@", buf, 0x16u);
  }

  v31 = v3;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [*(a1 + 40) policyExpirationTimes];
  v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = [*(a1 + 40) policyExpirationTimes];
        v21 = [v20 objectForKey:v19];

        if ([v11 compare:v21] == -1)
        {
          v22 = [*(a1 + 40) configForPolicy:v19];
          v23 = v22;
          if (!v16 || (v24 = [v22 priority], v22 = objc_msgSend(v16, "priority"), v24 > v22))
          {
            v7 = sub_1000029E0(v22);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v23 policyName];
              *buf = 138412546;
              v39 = @"SecureLocationConfig";
              v40 = 2114;
              v41 = v25;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Found higher priority policy %{public}@", buf, 0x16u);
            }

            v26 = v23;
            LOBYTE(v7) = 1;
            v16 = v26;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v28 = sub_1000029E0(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = @"SecureLocationConfig";
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ Changing active config to: %{public}@", buf, 0x16u);
    }

    [v31 setActiveConfig:v16];
    v29 = [v31 delegate];
    if (v29)
    {
      v30 = [*(a1 + 40) activeConfig];
      [v29 activeConfigChanged:v30];
    }
  }
}

uint64_t sub_1001BDD20(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_1003149D8;
  qword_1003149D8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1001BDEFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = [WeakRetained loggedEvents];
    v6 = [v5 containsObject:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v7 = [WeakRetained loggedEvents];
        [v7 addObject:*(a1 + 32)];

        v9 = sub_100002880(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v18 = 138412546;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ error occured %@", &v18, 0x16u);
        }

        v12 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:*(a1 + 32)];
        v13 = [*(a1 + 40) userInfo];
        v14 = [v13 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v14)
        {
          v15 = v12;
          v16 = v14;
        }

        else
        {
          v16 = *(a1 + 40);
          v15 = v12;
        }

        [(FMDEventLoggerEventDataPeekError *)v15 setError:v16];
        v17 = +[FMDEventLogger sharedLogger];
        [v17 logEvent:v12];
      }
    }
  }
}

void sub_1001BEF48(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory changed: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained directoryChanged];
}

void sub_1001BF02C(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v10, 0xCu);
  }

  v6 = sub_100002880(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) directoryURL];
    v8 = [v7 path];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
}

void sub_1001BF8B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10017DBC8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerLocate discovery started with error %@", &v4, 0xCu);
  }
}

void sub_1001BF95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [*(a1 + 32) lastPublishedAccuracy];

  if (v7)
  {
    v8 = [*(a1 + 32) lastPublishedAccuracy];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v6 horizontalAccuracy];
    [v11 doubleValue];
    v13 = v10 - v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [v6 horizontalAccuracy];
  [*(a1 + 32) setLastPublishedAccuracy:v14];

  v16 = a4 == 3 || a4 == 5;
  v17 = *(a1 + 40);
  if (v17)
  {
    [v17 timeIntervalSinceNow];
    v19 = v18 + 3.0;
    if (v19 > 0.0)
    {
      v20 = dispatch_time(0, (v19 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BFD78;
      block[3] = &unk_1002D0D40;
      block[4] = *(a1 + 32);
      v42 = v6;
      v49 = v16;
      v21 = *(a1 + 48);
      v47 = a4;
      v48 = v13;
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      v43 = v26;
      v44 = v25;
      v45 = *(a1 + 80);
      v46 = *(a1 + 88);
      dispatch_after(v20, &_dispatch_main_q, block);
    }
  }

  [*(a1 + 32) _sendCurrentLocation:v6 isFinished:v16 forCmd:*(a1 + 48) withReason:a4 andAccuracyChange:v13];
  if (a4 == 5 || a4 == 3)
  {
    [*(a1 + 96) recordLocation:v6 ofType:0];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained stopLocator];
  }

  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    if (!*(a1 + 104))
    {
LABEL_29:
      *(*(*(a1 + 112) + 8) + 24) = 1;
      goto LABEL_30;
    }

    v28 = +[FMDLostModeManager sharedInstance];
    v29 = [v28 lostModeEnabled];

    if (v29)
    {
      v31 = sub_100002880(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Ignoring locate alert as the device is in lost mode...", v40, 2u);
      }

LABEL_21:

      goto LABEL_29;
    }

    v32 = +[FMDSystemConfig sharedInstance];
    v33 = [v32 isPasscodeSet];

    if (!v33)
    {
      goto LABEL_29;
    }

    v34 = +[FMDSystemConfig sharedInstance];
    if ([v34 isLocked])
    {
    }

    else
    {
      v36 = +[FMDSystemConfig sharedInstance];
      v37 = [v36 isLocking];

      if (!v37)
      {
        v39 = sub_100002880(v35);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Displaying locate alert...", v40, 2u);
        }

        v31 = +[FMAlertManager sharedInstance];
        [v31 activateAlert:*(a1 + 104)];
        goto LABEL_21;
      }
    }

    v38 = sub_100002880(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Device is locked. Enqueing the alert to be shown after unlock", v40, 2u);
    }

    [*(a1 + 32) _showAlertAfterUnlock:*(a1 + 104)];
    goto LABEL_29;
  }

LABEL_30:
}

void sub_1001BFD78(uint64_t a1)
{
  [*(a1 + 32) _sendCurrentLocation:*(a1 + 40) isFinished:*(a1 + 112) forCmd:*(a1 + 48) withReason:*(a1 + 96) andAccuracyChange:*(a1 + 104)];
  if ([*(a1 + 56) category] == 3)
  {
    v3 = *(a1 + 64);
    v2 = *(a1 + 72);
    v4 = *(a1 + 80);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BFE5C;
    v6[3] = &unk_1002CD868;
    v7 = v2;
    [v3 stopDiscoveryForAccessory:v7 info:v4 withCompletion:v6];
  }

  else
  {
    v5 = *(a1 + 88);

    [v5 stopDiscovery];
  }
}

void sub_1001BFE5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "discovery for %@ ended with error %@", &v6, 0x16u);
  }
}

id sub_1001BFF24(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) standardLocator];

  if (v3)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10022DE6C(v2, v5);
    }

    [*v2 setStandardLocator:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 timeIntervalSinceNow];
    if (v7 < -3.0)
    {
      if ([*(a1 + 48) category] == 3)
      {
        v9 = *(a1 + 56);
        v8 = *(a1 + 64);
        v10 = *(a1 + 72);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001C0054;
        v12[3] = &unk_1002CD868;
        v13 = v8;
        [v9 stopDiscoveryForAccessory:v13 info:v10 withCompletion:v12];
      }

      else
      {
        [*(a1 + 80) stopDiscovery];
      }
    }
  }

  return [*(a1 + 88) flushLocations];
}

void sub_1001C0054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "discovery for %@ ended with error %@", &v6, 0x16u);
  }
}

id sub_1001C0434(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  v4 = [*(a1 + 32) commandParams];
  v5 = [v4 objectForKeyedSubscript:@"id"];
  [v3 fm_safelyMapKey:@"cmdId" toObject:v5];

  return v3;
}

id sub_1001C04DC(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryIdentifier];

  if (v2)
  {
    v3 = [*(a1 + 40) accessoryRegistry];
    v4 = [*(a1 + 32) accessoryIdentifier];
    v5 = [v3 accessoryForIdentifier:v4];

    v6 = +[ServerDeviceInfo sharedInstance];
    v7 = [*(a1 + 40) account];
    v8 = [v6 locationDeviceInfoForAccount:v7 accessory:v5];
  }

  else
  {
    v5 = +[ServerDeviceInfo sharedInstance];
    v6 = [*(a1 + 40) account];
    v8 = [v5 deviceInfoForAccount:v6];
  }

  return v8;
}

void sub_1001C05F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

id sub_1001C0BC8(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C0C3C(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 locationDeviceInfoForAccount:v3];

  return v4;
}

void sub_1001C0CB8(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else
    {
      v14 = [(FMDRequest *)v2 cancelled];
      if ((v14 & 1) == 0)
      {
        v6 = sub_100002880(v14);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412546;
        v16 = v8;
        v17 = 2048;
        v18 = [(FMDRequest *)v2 httpResponseStatus];
        v9 = "%@: successful with status %ld";
        v10 = v6;
        v11 = 22;
        goto LABEL_9;
      }
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = v4;
    v6 = sub_100002880(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412290;
        v16 = v8;
        v9 = "%@: Cancelled";
        v10 = v6;
        v11 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
LABEL_12:
      }
    }

    else if (v7)
    {
      v8 = [(FMDRequest *)v2 fm_logID];
      v12 = [(FMDRequest *)v2 httpResponseStatus];
      v13 = [(FMDRequest *)v2 httpResponseError];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v15, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

id sub_1001C1528(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C159C(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryRegistry];
  v3 = [*(a1 + 40) accessoryIdentifier];
  v4 = [v2 accessoryForIdentifier:v3];

  v5 = +[ServerDeviceInfo sharedInstance];
  v6 = [*(a1 + 32) account];
  v7 = [v5 locationDeviceInfoForAccount:v6 accessory:v4];

  return v7;
}

void sub_1001C165C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate got an accessory location %@", &v17, 0xCu);
    }

    v8 = [FMDRequestCurrentLocation alloc];
    v9 = [*(a1 + 32) account];
    v10 = *(a1 + 64);
    [*(a1 + 40) doubleValue];
    v12 = [(FMDRequestCurrentLocation *)v8 initWithAccount:v9 location:v6 finalLocation:a3 reason:v10 accuracyChange:0.0 cacheValidityDuration:v11];

    [(FMDRequest *)v12 setDecorator:*(a1 + 48)];
    [(FMDRequest *)v12 setCompletionHandler:&stru_1002D0DD0];
    v13 = [*(a1 + 32) accessoryRegistry];
    v14 = [v13 accessoryForIdentifier:*(a1 + 56)];

    ct_green_tea_logger_create_static();
    v15 = getCTGreenTeaOsLogHandle();
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Transmitting Location.", &v17, 2u);
    }

    [*(a1 + 32) enqueueRequest:v12 forAccessory:v14];
  }
}

void sub_1001C1828(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else
    {
      v14 = [(FMDRequest *)v2 cancelled];
      if ((v14 & 1) == 0)
      {
        v6 = sub_100002880(v14);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412546;
        v16 = v8;
        v17 = 2048;
        v18 = [(FMDRequest *)v2 httpResponseStatus];
        v9 = "%@: successful with status %ld";
        v10 = v6;
        v11 = 22;
        goto LABEL_9;
      }
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = v4;
    v6 = sub_100002880(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412290;
        v16 = v8;
        v9 = "%@: Cancelled";
        v10 = v6;
        v11 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
LABEL_12:
      }
    }

    else if (v7)
    {
      v8 = [(FMDRequest *)v2 fm_logID];
      v12 = [(FMDRequest *)v2 httpResponseStatus];
      v13 = [(FMDRequest *)v2 httpResponseError];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v15, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

id sub_1001C1A48(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C1ABC(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 locationDeviceInfoForAccount:v3];

  return v4;
}

void sub_1001C1BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending %ld tracked locations", &v7, 0xCu);
    }

    [*(a1 + 32) sendTrackedLocations:v4 withCurrentLocation:0];
  }

  else
  {
    v6 = sub_100002880(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No tracked locations available. Not sending anything", &v7, 2u);
    }
  }
}

void sub_1001C24D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C24F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v29 = 138413058;
    v30 = v3;
    v31 = 2048;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v29, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v18 = [v3 httpResponseBody];
    v19 = objc_alloc_init(FMDPairingCheckCommandResponseInfo);
    v21 = [v18 objectForKeyedSubscript:@"phoneNumber"];
    [v19 setPhoneNumber:v21];

    v22 = [v18 objectForKeyedSubscript:@"statusCode"];
    [v19 setStatusCode:v22];

    v23 = [v18 objectForKeyedSubscript:@"signature"];
    [v19 setSignature:v23];

    v24 = [v18 objectForKeyedSubscript:@"servernonce"];
    [v19 setServerNonce:v24];

    v25 = [v18 objectForKeyedSubscript:@"lostInfo"];
    [v19 setLostModeInfo:v25];

    v26 = [v18 objectForKeyedSubscript:@"useEraseKeyType"];
    [v19 setUseEraseKeyType:v26];

    v27 = [WeakRetained onCompletionHandler];

    if (v27)
    {
      v28 = [WeakRetained onCompletionHandler];
      (v28)[2](v28, 0, v19);
    }

    goto LABEL_15;
  }

  v10 = [v3 cancelled];
  v11 = v10;
  v12 = sub_10000BE38(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [v3 fm_logID];
      v29 = 138412290;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v29, 0xCu);
LABEL_12:
    }
  }

  else if (v13)
  {
    v14 = [v3 fm_logID];
    v15 = [v3 httpResponseStatus];
    v16 = [v3 httpResponseError];
    v29 = 138412802;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v29, 0x20u);

    goto LABEL_12;
  }

  v17 = [WeakRetained onCompletionHandler];

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = [WeakRetained onCompletionHandler];
  v19 = [v3 httpResponseError];
  (v18)[2](v18, v19, 0);
LABEL_15:

LABEL_16:
  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

void sub_1001C2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2C98(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_1001C2E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2E38(uint64_t a1)
{
  v5 = [*(a1 + 32) underlyingDictionary];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001C2F80(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001C308C(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1001C31E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C31FC(uint64_t a1)
{
  v5 = [*(a1 + 32) underlyingDictionary];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001C348C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001C34B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained replacedExsitingAction:*(a1 + 32)];
  v4 = v3;
  v5 = sub_10017DA30(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [WeakRetained requests];
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Replacing existing action: %@ already in queue: %@", &v14, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = *(a1 + 32);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Executing block add request: %@", &v14, 0xCu);
    }

    v10 = [WeakRetained requests];
    [v10 addObject:*(a1 + 32)];

    v12 = sub_10017DA30(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained requests];
      v14 = 138412546;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ requests in queue - %@", &v14, 0x16u);
    }

    [WeakRetained processRequests];
  }
}

void sub_1001C37E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C3818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isPaused];
  v4 = v3;
  v5 = sub_10017DA30(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ could not cancel request queue paused", &v11, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ executing block for action to be removed - %@", &v11, 0x16u);
    }

    [*(a1 + 32) willCancelAction];
    v8 = [WeakRetained requests];
    [v8 removeObject:*(a1 + 32)];

    v5 = sub_10017DA30(v9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained requests];
      v11 = 138412546;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ requests remaining - %@", &v11, 0x16u);
    }
  }
}

void sub_1001C3DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C3DE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_10017DA30(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Action with action manager called completion - %@", buf, 0xCu);
  }

  v4 = [WeakRetained requestsOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C3F34;
  v5[3] = &unk_1002CD518;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 addOperationWithBlock:v5];

  objc_destroyWeak(&v6);
}

void sub_1001C3F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setQueueCount:{objc_msgSend(WeakRetained, "queueCount") - 1}];
  [WeakRetained processRequests];
}

void sub_1001C41E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C420C(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldCancelAction:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = 1;
    if (objc_opt_respondsToSelector())
    {
      [v8 willCancelAction];
    }

    *a4 = 1;
  }

  return _objc_release_x3();
}

void sub_1001C463C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1001C4678(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didDiscoverDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_1001C46F4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didLoseDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_1001C4770(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didEndDiscoveryWithError:v3];
}

void sub_1001C4A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 containsObject:*(a1 + 32)];

  v4 = [WeakRetained activeTokens];
  [v4 removeObject:*(a1 + 32)];

  if (v3)
  {
    v5 = [*(a1 + 32) tokenDiscoveryEnded];

    if (v5)
    {
      v6 = [*(a1 + 32) tokenDiscoveryEnded];
      v6[2]();
    }
  }

  [WeakRetained updateDiscovery];
}

void sub_1001C4C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  [v2 fm_safeAddObject:*(a1 + 32)];

  [WeakRetained updateDiscovery];
}

void sub_1001C4E24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activeTokens];
  v2 = [v1 copy];

  [v2 enumerateObjectsUsingBlock:&stru_1002D0E88];
  v3 = [WeakRetained activeTokens];
  [v3 removeAllObjects];
}

void sub_1001C4EAC(id a1, FMDBluetoothDiscoveryToken *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];
    v5[2]();
  }
}

void sub_1001C5094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanningTimerFired];
}

void sub_1001C51C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 count];

  if (v3)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained activeTokens];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery unterminated tokens %@.", &v7, 0xCu);
    }
  }

  [WeakRetained updateDiscovery];
}

int64_t sub_1001C563C(id a1, FMDBluetoothDiscoveryToken *a2, FMDBluetoothDiscoveryToken *a3)
{
  v4 = a3;
  v5 = [(FMDBluetoothDiscoveryToken *)a2 endDate];
  v6 = [(FMDBluetoothDiscoveryToken *)v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1001C644C(uint64_t a1)
{
  v2 = [NSSet setWithArray:*(a1 + 40)];
  [*(a1 + 32) setNotifyWhenDetachedAccessoryIds:v2];

  [*(a1 + 32) setNotifWhenDetachedListVersion:*(a1 + 48)];
  v3 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [*(a1 + 32) notificationIdbyAccessoryIds];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [*(a1 + 32) notificationIdbyAccessoryIds];
          v13 = [v12 objectForKeyedSubscript:v9];
          [v3 setObject:v13 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setNotificationIdbyAccessoryIds:v3];
  v14 = [*(a1 + 32) _writeToDisk];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C668C;
  block[3] = &unk_1002CE250;
  v17 = *(a1 + 56);
  dispatch_async(v15, block);
}

uint64_t sub_1001C668C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1001C6C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "got new location %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001C7008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FMDUserNotificationContent);
  [*(a1 + 32) timeIntervalSinceNow];
  v6 = v5;
  v7 = objc_opt_respondsToSelector();
  v8 = 0.0;
  if (v7)
  {
    v9 = [*(a1 + 40) performSelector:"accessoryType"];
    v10 = +[FMDExtConfigurationRegistry sharedInstance];
    v11 = [v10 configForAccessoryType:v9];

    [v11 detachNotificaitonsWaitTime];
    v8 = v12;
  }

  v13 = fabs(v6);
  v14 = sub_100002880(v7);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: waitTime %f", buf, 0xCu);
  }

  if (v8 - v13 >= 0.0)
  {
    v16 = v8 - v13;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = sub_100002880(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: remainingWaitTime %f", buf, 0xCu);
  }

  v18 = dispatch_time(0, (v16 * 1000000000.0));
  v19 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C72DC;
  block[3] = &unk_1002D0F78;
  v27 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 40);
  *&v23 = v21;
  *(&v23 + 1) = v22;
  *&v24 = v27;
  *(&v24 + 1) = v20;
  v29 = v24;
  v30 = v23;
  v31 = v4;
  v32 = v3;
  v33 = *(a1 + 72);
  v25 = v3;
  v26 = v4;
  dispatch_after(v18, v19, block);
}

void sub_1001C72DC(id *a1)
{
  v2 = [a1[4] notificationIdbyAccessoryIds];
  v3 = [v2 objectForKeyedSubscript:a1[5]];

  if (v3 && [a1[6] isEqualToString:v3])
  {
    v4 = [a1[7] connectionState];
    v5 = sub_100002880(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: Accessory is connected not posting notificaiton", buf, 2u);
      }

      v7 = [NSMutableDictionary alloc];
      v8 = [a1[4] notificationIdbyAccessoryIds];
      v9 = [v7 initWithDictionary:v8];

      [v9 setObject:0 forKeyedSubscript:a1[5]];
      [a1[4] setNotificationIdbyAccessoryIds:v9];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: postingNotification", buf, 2u);
      }

      v10 = [@"MAGSAFE_WALLET_DETACH_NOTIFICATION_TITLE" fmd_localizedStringInTable:@"Localizable-MULDER"];
      v11 = [a1[7] name];
      v12 = [NSString stringWithFormat:v10, v11];
      [a1[8] setTitle:v12];

      v13 = [@"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE_DEFAULT" fmd_localizedStringInTable:@"Localizable-MULDER"];
      [a1[8] setBody:v13];

      [a1[8] setCategoryIdentifier:@"FMD_NOTIFY_WHEN_DETACHED"];
      v14 = [a1[7] deviceInfo];
      v15 = [v14 objectForKeyedSubscript:@"serialNumbers"];
      v16 = [v15 objectForKeyedSubscript:@"systemSerialNumber"];
      [a1[8] setSerialNumber:v16];

      [a1[8] setDeviceId:a1[5]];
      [a1[8] setIdentifier:v3];
      v17 = [a1[8] title];
      [a1[8] setLocationTitle:v17];

      [a1[8] setInterruptionLevel:2];
      v18 = +[FMDRestrictedRegions sharedInstance];
      v19 = [v18 isRestrictedSKU];

      v20 = +[FMDRestrictedRegions sharedInstance];
      v21 = [a1[9] location];
      v22 = [v21 latitude];
      [v22 doubleValue];
      v24 = v23;
      v25 = [a1[9] location];
      v26 = [v25 longitude];
      [v26 doubleValue];
      v28 = [v20 isRestrictedLocationWithLatitude:v24 longitude:v27];

      v30 = sub_100002880(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v39 = a1[9];
        *buf = 138412802;
        v45 = v39;
        v46 = 1024;
        v47 = v19;
        v48 = 1024;
        v49 = v28;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "location = %@ isRestrictRegion = %d isRestrictedLocation = %d", buf, 0x18u);
      }

      if ((a1[9] == 0) | v19 & 1 | v28 & 1)
      {
        v31 = @"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE_DEFAULT";
      }

      else
      {
        v31 = @"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE";
      }

      v32 = [(__CFString *)v31 fmd_localizedStringInTable:@"Localizable-MULDER"];
      [a1[8] setLocationMessage:v32];

      v33 = [a1[9] location];
      v34 = [v33 latitude];
      [v34 doubleValue];
      [a1[8] setLatitude:?];

      v35 = [a1[9] location];
      v36 = [v35 longitude];
      [v36 doubleValue];
      [a1[8] setLongitude:?];

      v37 = +[FMDFMIPManager sharedInstance];
      v38 = a1[8];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1001C7810;
      v40[3] = &unk_1002D0F50;
      v40[4] = a1[4];
      v41 = a1[10];
      v42 = a1[5];
      v43 = a1[8];
      [v37 addNotificationRequest:v38 completion:v40];
    }
  }
}

void sub_1001C7810(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [*(a1 + 32) notificationIdbyAccessoryIds];
    v7 = [v4 initWithDictionary:v5];

    v6 = [*(a1 + 56) identifier];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*(a1 + 48)];

    [*(a1 + 32) setNotificationIdbyAccessoryIds:v7];
  }
}

void sub_1001C7A58(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: removing notificaiton completed with %@", &v4, 0xCu);
  }
}

void sub_1001C86C8(id a1)
{
  v1 = objc_alloc_init(FMDPowerMgr);
  v2 = qword_1003149E0;
  qword_1003149E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001C8B78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = sub_100002880(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to take power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001C8AD4);
  }

  _Unwind_Resume(a1);
}

void sub_1001C8D88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = sub_100002880(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to release power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001C8D4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1001C9000(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1001C97D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 responseErrorType] == 257)
  {
    goto LABEL_2;
  }

  if ([v3 willRetry])
  {
    goto LABEL_4;
  }

  if ([v3 cmdStatusCode] != 200)
  {
    goto LABEL_2;
  }

  v4 = [v3 httpResponseStatus];
  v5 = sub_100002880(v4);
  v6 = v5;
  if (v4 != 200)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 fm_logID];
      *buf = 138412546;
      v11 = v8;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error with status %ld. Aborting wipe...", buf, 0x16u);
    }

LABEL_2:
    [*(a1 + 32) _abortWipe];
    goto LABEL_4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E294(v3, v6);
  }

  [FMDPreferencesMgr setWipeState:2];
  v7 = +[FMXPCTransactionManager sharedInstance];
  [v7 beginTransaction:@"WipeStarted"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C99C8;
  block[3] = &unk_1002CD4C8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
LABEL_4:
}

void sub_1001C9DDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Could not erase device. Error - %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Erase completed";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_1001CACE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CAD08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v25 = 138413058;
    v26 = v3;
    v27 = 2048;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v25, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v18 = [v3 httpResponseBody];
    v19 = objc_alloc_init(FMDPairingLockRegisterResponseInfo);
    v21 = [v18 objectForKeyedSubscript:@"serialNumber"];
    [v19 setSerialNumber:v21];

    v22 = [v18 objectForKeyedSubscript:@"pairingCheckToken"];
    [v19 setPairingToken:v22];

    v23 = [WeakRetained onCompletionHandler];

    if (v23)
    {
      v24 = [WeakRetained onCompletionHandler];
      (v24)[2](v24, 0, v19);
    }

    goto LABEL_15;
  }

  v10 = [v3 cancelled];
  v11 = v10;
  v12 = sub_10000BE38(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [v3 fm_logID];
      v25 = 138412290;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v25, 0xCu);
LABEL_12:
    }
  }

  else if (v13)
  {
    v14 = [v3 fm_logID];
    v15 = [v3 httpResponseStatus];
    v16 = [v3 httpResponseError];
    v25 = 138412802;
    v26 = v14;
    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v25, 0x20u);

    goto LABEL_12;
  }

  v17 = [WeakRetained onCompletionHandler];

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = [WeakRetained onCompletionHandler];
  v19 = [v3 httpResponseError];
  (v18)[2](v18, v19, 0);
LABEL_15:

LABEL_16:
  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

id sub_1001CBF14(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _accountDidChangeFrom:v2 to:v3];
}

void sub_1001CC060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CC468(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022E554(a1);
    }
  }

  else
  {
    [*(a1 + 32) removeAccountPreferences];
    v5 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v5 clearAllState];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

void sub_1001CC970(id a1, FMDInternalAccessory *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [AccessoryRegisterAction cleanupContextForAccessory:v4];
  v5 = [(FMDInternalAccessory *)v4 commandContext];

  [v5 cleanupContexts];
}

void sub_1001CD184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = sub_100002880(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get PET info %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    [*(a1 + 32) setUsername:v8];

    v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    [*(a1 + 32) setPet:v9];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001CE020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) apsToken];

  if (!v3)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained serviceName];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is not functional as an APS token is not available.", &v7, 0xCu);
    }
  }
}

void sub_1001CE108(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SP Beacon stats changed", v2, 2u);
  }
}

void sub_1001CE484(uint64_t a1)
{
  v2 = [[RegisterAction alloc] initWithReason:0 force:0 provider:*(a1 + 32)];
  v3 = +[ActionManager sharedManager];
  v4 = [v3 enqueueAction:v2];

  v5 = [*(a1 + 32) accessoryRegistry];
  v6 = [v5 allAccessories];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CE578;
  v7[3] = &unk_1002D05F0;
  v7[4] = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v7];
}

void sub_1001CED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CEDAC(uint64_t a1)
{
  v2 = [*(a1 + 32) serverInteractionControllerByAccessory];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = objc_alloc_init(FMDDirectServerChannel);
    v15[0] = v6;
    v7 = objc_alloc_init(FMDCadmiumServerChannel);
    v15[1] = v7;
    v8 = [NSArray arrayWithObjects:v15 count:2];

    v9 = [[FMDServerInteractionController alloc] initWithChannels:v8 delegate:*(a1 + 32)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(a1 + 40) stringValue];
    [*(*(*(a1 + 48) + 8) + 40) setUdid:v12];

    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [*(a1 + 32) serverInteractionControllerByAccessory];
    [v14 setObject:v13 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_1001CF0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001CF0C8(uint64_t a1)
{
  v2 = [*(a1 + 32) serverInteractionControllerByAccount];
  v3 = [*(a1 + 40) authId];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (!v7)
  {
    v8 = objc_alloc_init(FMDDirectServerChannel);
    v18[0] = v8;
    v9 = objc_alloc_init(FMDCadmiumServerChannel);
    v18[1] = v9;
    v10 = [NSArray arrayWithObjects:v18 count:2];

    v11 = [[FMDServerInteractionController alloc] initWithChannels:v10 delegate:*(a1 + 32)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [*(a1 + 32) serverInteractionControllerByAccount];
    v16 = [*(a1 + 40) authId];
    [v15 setObject:v14 forKeyedSubscript:v16];

    v7 = *(*(*(a1 + 48) + 8) + 40);
  }

  return [v7 setRequestAccount:*(a1 + 40)];
}

id sub_1001CFA58(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

id sub_1001CFB10(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

void sub_1001CFBC8(uint64_t a1)
{
  v2 = +[FMAlertManager sharedInstance];
  [v2 activateAlert:*(a1 + 32)];
}

void sub_1001D0598(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 assetsForAccessory:v4];
  v5 = [*(a1 + 40) accessoryRegistry];
  [v5 updateAccessory:v4 assets:v6];
}

NSDictionary *__cdecl sub_1001D1330(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_1001D1380(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001D2C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error sending location payload to FML %@", &v8, 0xCu);
    }
  }

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void sub_1001D2D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error sending location payload to spd %@", &v8, 0xCu);
    }
  }

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void sub_1001D2E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error sending location command to FML %@", &v8, 0xCu);
    }
  }

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void sub_1001D2F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000029E0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error sending location commands to spd %@", &v8, 0xCu);
    }
  }

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void sub_1001D4A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D4A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) splunkifyObject:a3 eventName:&stru_1002DCE08];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  v12 = v4;
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:&stru_1002DCE08])
  {
    v5 = *(*(a1 + 40) + 8);
    v4 = v12;
LABEL_4:
    v7 = v4;
    v8 = *(v5 + 40);
    *(v5 + 40) = v7;
    goto LABEL_6;
  }

  v8 = [v12 stringByAppendingString:{@", "}];
  v9 = [v8 stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_6:
}

void sub_1001D4D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D4D74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) splunkifyObject:a2 eventName:&stru_1002DCE08];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  v11 = v3;
  if (!v5)
  {
    goto LABEL_4;
  }

  if ([v5 isEqualToString:&stru_1002DCE08])
  {
    v4 = *(*(a1 + 40) + 8);
    v3 = v11;
LABEL_4:
    v6 = v3;
    v7 = *(v4 + 40);
    *(v4 + 40) = v6;
    goto LABEL_6;
  }

  v7 = [v11 stringByAppendingString:{@", "}];
  v8 = [v7 stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_6:
}

void sub_1001D5284(id a1)
{
  v1 = objc_alloc_init(FMDRestrictedRegions);
  v2 = qword_1003149F8;
  qword_1003149F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001D56D4(id a1)
{
  v1 = objc_alloc_init(GEOMapRegion);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [&off_1002E8CF0 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(&off_1002E8CF0);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [v6 objectAtIndexedSubscript:1];
        [v7 doubleValue];
        v9 = v8;

        v10 = [v6 objectAtIndexedSubscript:0];
        [v10 doubleValue];
        v12 = v11;

        v13 = [[GEOLatLng alloc] initWithLatitude:v9 longitude:v12];
        [v1 addVertex:v13];
      }

      v3 = [&off_1002E8CF0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v14 = qword_100314A08;
  qword_100314A08 = v1;
}

void sub_1001D5C0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPublishingBlock:*(a1 + 32)];
  [WeakRetained setStartedPublishing:1];
}

void sub_1001D5D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCriteriaMetBlock:*(a1 + 32)];
}

void sub_1001D5E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained startedPublishing];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 locationInfo];
    [v5 timestamp];
    v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v7 = [WeakRetained lastPublishedLocation];
    if ([v4 publishReason]== 2)
    {
      v8 = [WeakRetained lastPublishedVisit];

      if (!v8)
      {
        v35 = sub_1000029E0(v9);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Publishing visit immediately since there is no previous visit", buf, 2u);
        }

        [WeakRetained _publishResultLocation:v4];
        [WeakRetained setLastPublishedVisit:v4];
        goto LABEL_51;
      }

      v10 = [v4 locationInfo];
      [v10 timestamp];
      v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v12 = [WeakRetained lastPublishedVisit];
      v13 = [v12 locationInfo];
      v14 = [v13 timestamp];

      [*&v11 timeIntervalSinceDate:v14];
      v16 = v15;
      v17 = [WeakRetained config];
      [v17 minTimeBetweenVisitPublish];
      v19 = v18;

      if (v16 <= v19)
      {
        v47 = sub_1000029E0(v20);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [WeakRetained config];
          [v48 minTimeBetweenVisitPublish];
          *buf = 134217984;
          v110 = v49;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Not publishing visit since it is within min publish limit (%f)", buf, 0xCu);
        }
      }

      else
      {
        [WeakRetained _publishResultLocation:v4];
        [WeakRetained setLastPublishedVisit:v4];
      }

LABEL_50:
LABEL_51:

      goto LABEL_52;
    }

    if (!v7)
    {
      [WeakRetained _persistedLastPublishedTimestamp];
      *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v11 = *&v36;
      if (*&v36 != 0.0)
      {
        [*&v6 timeIntervalSinceDate:v36];
        v38 = v37;
        v39 = [WeakRetained config];
        [v39 minTimeBetweenPublish];
        v41 = v40;

        if (v38 <= v41)
        {
          v97 = sub_1000029E0(v36);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            sub_10022EB84(*&v11, v97);
          }

          [WeakRetained setLastReceivedLocation:v4];
          goto LABEL_50;
        }
      }

      v31 = sub_1000029E0(v36);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v110 = v11;
        v111 = 2112;
        v112 = v6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: New location is the first recorded location or greater than persisted lastPublish. lastPublished %@, new %@. Publishing", buf, 0x16u);
      }

      goto LABEL_26;
    }

    v21 = [v7 locationInfo];
    [v21 timestamp];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    [*&v6 timeIntervalSinceDate:*&v11];
    v23 = v22;
    v24 = +[NSDate now];
    [v24 timeIntervalSinceDate:*&v11];
    v26 = v25;

    v27 = [WeakRetained config];
    [v27 heartbeatPublish];
    v29 = v28;

    if (v26 < v29 || v23 <= 0.0)
    {
      if (-[NSObject publishReason](v4, "publishReason") != 5 || ([WeakRetained config], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "onDemandPublishThreshold"), v44 = v43, v42, v23 < v44) || v23 <= 0.0)
      {
        v50 = [v4 locationInfo];
        v51 = [v50 latitude];
        [v51 doubleValue];
        v53 = v52;

        v54 = [v4 locationInfo];
        v55 = [v54 longitude];
        [v55 doubleValue];
        v57 = v56;

        v58 = [[CLLocation alloc] initWithLatitude:v53 longitude:v57];
        v59 = [v7 locationInfo];
        v60 = [v59 latitude];
        [v60 doubleValue];
        v62 = v61;

        v63 = [v7 locationInfo];
        v64 = [v63 longitude];
        [v64 doubleValue];
        v66 = v65;

        v67 = [[CLLocation alloc] initWithLatitude:v62 longitude:v66];
        [v58 distanceFromLocation:v67];
        v69 = v68;
        v70 = [WeakRetained config];
        [v70 minDistanceBetweenPublish];
        if (v69 >= v71)
        {
          v78 = 1;
        }

        else
        {
          [WeakRetained config];
          v106 = v7;
          v72 = v6;
          v73 = v11;
          v74 = v67;
          v76 = v75 = v58;
          [v76 minDistanceBetweenPublish];
          v78 = v77 == 0.0;

          v58 = v75;
          v67 = v74;
          v11 = v73;
          v6 = v72;
          v7 = v106;
        }

        v80 = sub_1000029E0(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v98 = @"no";
          if (v78)
          {
            v98 = @"yes";
          }

          [WeakRetained config];
          v99 = v107 = v58;
          [v99 minDistanceBetweenPublish];
          *buf = 138412802;
          v110 = v104;
          v111 = 2048;
          v112 = v69;
          v113 = 2048;
          v114 = v100;
          _os_log_debug_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "SecureLocationPublisher: meetsDistanceLimits %@ distance %f configLimit %f", buf, 0x20u);

          v58 = v107;
        }

        v81 = [WeakRetained config];
        [v81 minTimeBetweenPublish];
        v83 = v82;

        v85 = sub_1000029E0(v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          v101 = @"no";
          if (v23 >= v83)
          {
            v101 = @"yes";
          }

          [WeakRetained config];
          v102 = v108 = v58;
          [v102 minTimeBetweenPublish];
          *buf = 138412802;
          v110 = v105;
          v111 = 2048;
          v112 = v23;
          v113 = 2048;
          v114 = v103;
          _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "SecureLocationPublisher: meetsTimeLimits %@ time %f limit %f", buf, 0x20u);

          v58 = v108;
        }

        if (v23 < v83)
        {
          v78 = 0;
        }

        v87 = sub_1000029E0(v86);
        v88 = v87;
        if (v78)
        {
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [WeakRetained config];
            [v89 minTimeBetweenPublish];
            v91 = v90;
            [WeakRetained config];
            v93 = v92 = v58;
            [v93 minDistanceBetweenPublish];
            *buf = 134218752;
            v110 = v23;
            v111 = 2048;
            v112 = v91;
            v113 = 2048;
            v114 = v69;
            v115 = 2048;
            v116 = v94;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: new location meets publishing criteria. Time %f Limit %f, Distance %f Limit %f", buf, 0x2Au);

            v58 = v92;
          }

          [WeakRetained _publishResultLocation:v4];
          v95 = [WeakRetained criteriaMetBlock];

          if (v95)
          {
            v96 = [WeakRetained criteriaMetBlock];
            v96[2]();
          }
        }

        else
        {
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            sub_10022EB40(v88);
          }

          [WeakRetained setLastReceivedLocation:*(a1 + 32)];
        }

        goto LABEL_50;
      }

      v31 = sub_1000029E0(v45);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v32 = [WeakRetained config];
      [v32 onDemandPublishThreshold];
      *buf = 134218240;
      v110 = v23;
      v111 = 2048;
      v112 = v46;
      v34 = "SecureLocationPublisher: Publishing ondemand location since time elapsed (%f) greater than ondemand threshold (%f)";
    }

    else
    {
      v31 = sub_1000029E0(v30);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        [WeakRetained _publishResultLocation:v4];
        goto LABEL_50;
      }

      v32 = [WeakRetained config];
      [v32 heartbeatPublish];
      *buf = 134218240;
      v110 = v26;
      v111 = 2048;
      v112 = v33;
      v34 = "SecureLocationPublisher: Publishing location since time elapsed (%f) greater than hearbeat limit (%f)";
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0x16u);

    goto LABEL_26;
  }

  v4 = sub_1000029E0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10022EAFC(v4);
  }

LABEL_52:
}

void sub_1001D687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D6894(uint64_t a1)
{
  v2 = [*(a1 + 32) lastReceivedLocation];
  if (v2 && (v3 = v2, [*(a1 + 32) lastReceivedLocation], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "locationInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timestamp"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceNow"), v8 = -v7, objc_msgSend(*(a1 + 32), "config"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stalenessThreshold"), v11 = v10, v9, v6, v5, v4, v3, v11 >= v8))
  {
    v18 = *(a1 + 32);
    v19 = [v18 lastReceivedLocation];
    [v18 _publishResultLocation:v19];

    v12 = sub_1000029E0(v20);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: publishing lastReceivedLocation", &v21, 2u);
    }

    v17 = 1;
  }

  else
  {
    v12 = sub_1000029E0(v2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) lastReceivedLocation];
      v14 = [*(a1 + 32) lastReceivedLocation];
      v15 = [v14 locationInfo];
      v16 = [v15 timestamp];
      v21 = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Can't publish lastReceivedLocation %@, ts: %@", &v21, 0x16u);
    }

    v17 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v17;
}

uint64_t sub_1001D6CFC(uint64_t a1)
{
  v2 = sub_1000029E0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Executing the publish block.", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001D7364(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100002880(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022EC68(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = [v7 description];
    v16 = @"statusFetchError";
    goto LABEL_23;
  }

  v17 = [v5 count];
  if (v17 <= 1)
  {
    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022EE44(v18);
    }

    v15 = 0;
    v16 = @"ckksStatusAbsent";
    goto LABEL_23;
  }

  v19 = [v5 objectAtIndexedSubscript:1];
  v20 = [v19 objectForKeyedSubscript:@"keystate"];
  if ([v20 isEqualToString:@"ready"])
  {

LABEL_12:
    v25 = [v5 objectAtIndexedSubscript:1];
    v26 = [v25 objectForKeyedSubscript:@"accounttracker"];
    v27 = [NSString stringWithFormat:@"%@", v26];

    v28 = [v27 containsString:@"deviceToDeviceEncryptionAvailability=(account|device)"];
    LOBYTE(v26) = v28;
    v29 = sub_100002880(v28);
    v30 = v29;
    if (v26)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v5 objectAtIndexedSubscript:1];
        v32 = [v31 objectForKeyedSubscript:@"keystate"];
        *buf = 138412290;
        v47 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CKKSStatus: good. KeyState: %@", buf, 0xCu);
      }

      v33 = [v5 objectAtIndexedSubscript:1];
      v34 = [v33 objectForKeyedSubscript:@"keystate"];
      v16 = [NSString stringWithFormat:@"good-%@", v34];

      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10022EDD8(v27, v30, v35, v36, v37, v38, v39, v40);
      }

      v15 = v27;
      v16 = @"d2dEncUnavailable";
    }

    goto LABEL_23;
  }

  v21 = [v5 objectAtIndexedSubscript:1];
  v22 = [v21 objectForKeyedSubscript:@"keystate"];
  v23 = [v22 isEqualToString:@"readypendingunlock"];

  if (v23)
  {
    goto LABEL_12;
  }

  v41 = sub_100002880(v24);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    sub_10022ECD4(v5, v41);
  }

  v42 = [v5 objectAtIndexedSubscript:1];
  v43 = [v42 objectForKeyedSubscript:@"keystate"];
  v44 = [v5 objectAtIndexedSubscript:1];
  v45 = [v44 objectForKeyedSubscript:@"keyStateError"];
  v15 = [NSString stringWithFormat:@"KeyState: %@. Error: %@", v43, v45];

  v16 = @"badStatus";
LABEL_23:
  (*(*(a1 + 32) + 16))();
}

void sub_1001D78A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D78C4(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    v5 = sub_100002880(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022EE88(a2, v5);
    }

    v6 = kFMDErrorDomain;
    v9 = NSUnderlyingErrorKey;
    v7 = [NSError errorWithDomain:@"NSXPCError" code:a2 userInfo:0];
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    a2 = [NSError errorWithDomain:v6 code:13 userInfo:v8];
  }

  [v4 setConnection:0];
  [v4 _didEndDiscoveryWithError:a2];
}

void sub_1001D9890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D98C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  v10 = 1;
  if (a4 != 3 && a4 != 5)
  {
    v4 = [WeakRetained locator];
    WeakRetained = [v4 locatorRunning];
    v10 = WeakRetained ^ 1;
  }

  if (a4 != 3 && a4 != 5)
  {
  }

  if (v10)
  {
    v11 = sub_100002880(WeakRetained);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F1A0(v9);
    }

    v12 = [v9 trackedLocationsStore];
    [v12 recordLocation:v7 ofType:2];

    v13 = [v9 locator];
    [v13 stopLocator];
  }
}

void sub_1001D99BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F23C(WeakRetained);
  }

  [WeakRetained setLocator:0];
  [WeakRetained _updateFallbackRetryTimer];
}

void sub_1001D9FF8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained locateParams];
  v4 = [WeakRetained newLocationManager];
  v5 = [[FMDLocator alloc] initWithLocationManager:v4];
  v6 = [v3 objectForKeyedSubscript:@"desiredAccuracy"];
  [v6 doubleValue];
  [(FMDLocator *)v5 setDesiredAccuracy:?];

  v7 = [v3 objectForKeyedSubscript:@"timeout"];
  [v7 doubleValue];
  [(FMDLocator *)v5 setDuration:?];

  v8 = objc_alloc_init(FMDTrackedLocationPublisher);
  v9 = [v3 objectForKeyedSubscript:@"startThreshold"];
  [(FMDTrackedLocationPublisher *)v8 setStartThreshold:v9];

  v10 = [v3 objectForKeyedSubscript:@"endThreshold"];
  [(FMDTrackedLocationPublisher *)v8 setEndThreshold:v10];

  v11 = [v3 objectForKeyedSubscript:@"decayFactor"];
  [(FMDTrackedLocationPublisher *)v8 setDecayFactor:v11];

  v12 = [v3 objectForKeyedSubscript:@"validityDuration"];
  [(FMDTrackedLocationPublisher *)v8 setCachedLocationValidityTimeInterval:v12];

  [a1[4] minDistanceBetweenLocations];
  if (v13 > 0.0)
  {
    [a1[4] minDistanceBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDTrackedLocationPublisher *)v8 minimumDistance];
  }
  v14 = ;
  [(FMDTrackedLocationPublisher *)v8 setMinimumDistance:v14];

  [a1[4] minTimeBetweenLocations];
  if (v15 > 0.0)
  {
    [a1[4] minTimeBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDTrackedLocationPublisher *)v8 publishTimeInterval];
  }
  v16 = ;
  [(FMDTrackedLocationPublisher *)v8 setPublishTimeInterval:v16];

  [(FMDTrackedLocationPublisher *)v8 startPublishingWithBlock:a1[5]];
  v17 = objc_alloc_init(FMDConservativeLocatorPublisher);
  v18 = [v3 objectForKeyedSubscript:@"startThreshold"];
  [(FMDConservativeLocatorPublisher *)v17 setStartThreshold:v18];

  v19 = [v3 objectForKeyedSubscript:@"endThreshold"];
  [(FMDConservativeLocatorPublisher *)v17 setEndThreshold:v19];

  v20 = [v3 objectForKeyedSubscript:@"decayFactor"];
  [(FMDConservativeLocatorPublisher *)v17 setDecayFactor:v20];

  v21 = [v3 objectForKeyedSubscript:@"validityDuration"];
  [(FMDConservativeLocatorPublisher *)v17 setCachedLocationValidityTimeInterval:v21];

  [a1[4] minDistanceBetweenLocations];
  if (v22 > 0.0)
  {
    [a1[4] minDistanceBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDConservativeLocatorPublisher *)v17 minimumDistance];
  }
  v23 = ;
  [(FMDConservativeLocatorPublisher *)v17 setMinimumDistance:v23];

  [a1[4] minTimeBetweenLocations];
  if (v24 > 0.0)
  {
    [a1[4] minTimeBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDConservativeLocatorPublisher *)v17 publishTimeInterval];
  }
  v25 = ;
  [(FMDConservativeLocatorPublisher *)v17 setPublishTimeInterval:v25];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001DA4A4;
  v33[3] = &unk_1002D1258;
  v26 = v8;
  v34 = v26;
  v35 = a1[5];
  [(FMDConservativeLocatorPublisher *)v17 startPublishingWithBlock:v33];
  [(FMDLocator *)v5 setLocatorPublisher:v17];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001DA5E0;
  v29[3] = &unk_1002CE278;
  v30 = v17;
  v31 = v26;
  v32 = a1[6];
  v27 = v26;
  v28 = v17;
  [(FMDLocator *)v5 setStoppedLocatorBlock:v29];
  [WeakRetained setLocator:v5];
  [(FMDLocator *)v5 startLocator];
}

void sub_1001DA4A4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 || !v8)
  {
    if (v7)
    {
      v12 = sub_100002880(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDLocationTracker error getting location from conservativePublisher %@", &v14, 0xCu);
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v7, v9, a4);
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v16 = v8;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    [v10 updatedLocations:v11 reason:a4];
  }
}

uint64_t sub_1001DA5E0(uint64_t a1)
{
  [*(a1 + 32) flushLocations];
  [*(a1 + 40) flushLocations];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001DAE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DAE90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  v10 = 1;
  if (a4 != 3 && a4 != 5)
  {
    v4 = [WeakRetained locator];
    WeakRetained = [v4 locatorRunning];
    v10 = WeakRetained ^ 1;
  }

  if (a4 != 3 && a4 != 5)
  {
  }

  if (v10)
  {
    v11 = sub_100002880(WeakRetained);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F3AC(v9);
    }

    v12 = [v9 trackedLocationsStore];
    [v12 recordLocation:v7 ofType:3];

    v13 = [v9 locator];
    [v13 stopLocator];
  }
}

void sub_1001DAF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F448(WeakRetained);
  }

  [WeakRetained setLocator:0];
  [WeakRetained _updateFallbackRetryTimer];
}

void sub_1001DAFF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSRunLoop currentRunLoop];
  [v1 scheduleInRunLoop:v2];
}

void sub_1001DBDC0(id a1)
{
  v1 = objc_alloc_init(FMDMagSafeDataStore);
  v2 = qword_100314A18;
  qword_100314A18 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001DC05C(uint64_t a1)
{
  v2 = [*(a1 + 32) _writeAccessoriesToDisk:&__NSDictionary0__struct];
  v3 = [*(a1 + 32) writeLostModeInfo:&__NSArray0__struct version:&stru_1002DCE08];
  v4 = +[NSFileManager defaultManager];
  v5 = [objc_opt_class() deprecatedStorageLocation];
  [v4 removeItemAtURL:v5 error:0];

  v7 = +[NSFileManager defaultManager];
  v6 = [objc_opt_class() deprecatedLostModeStorageLocation];
  [v7 removeItemAtURL:v6 error:0];
}

void sub_1001DC228(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = *(a1 + 40);
  v6 = [v5 accessoryIdentifier];
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DC35C;
  v11[3] = &unk_1002CD8B0;
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_1001DC448(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  [v4 removeObjectForKey:*(a1 + 40)];
  v5 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DC560;
  v9[3] = &unk_1002CD8B0;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_1001DC64C(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v27 = a1;
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = v4;
    v8 = 0;
    v9 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 serialNumbers];
        v13 = [v12 objectForKeyedSubscript:@"systemSerialNumber"];
        v14 = [v13 isEqualToString:*(v27 + 40)];

        if (v14)
        {
          v15 = [v11 accessoryIdentifier];

          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v7);

    v4 = v26;
    if (v8)
    {
      v17 = sub_10000BE38(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v27 + 40);
        *buf = 138412546;
        v38 = v18;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: removing accessory with serialNumber %@ accessoryId = %@", buf, 0x16u);
      }

      [v26 removeObjectForKey:v8];
      v19 = [*(v27 + 32) _writeAccessoriesToDisk:v26];
      v20 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DC9F8;
      block[3] = &unk_1002CD8B0;
      v21 = *(v27 + 48);
      v31 = v19;
      v32 = v21;
      v22 = v19;
      dispatch_async(v20, block);

      goto LABEL_18;
    }
  }

  else
  {
  }

  v23 = sub_10000BE38(v16);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v27 + 40);
    *buf = 138412290;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: No magsafe accessory with serialNumber %@ found", buf, 0xCu);
  }

  v25 = dispatch_get_global_queue(0, 0);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001DCA0C;
  v28[3] = &unk_1002CE250;
  v29 = *(v27 + 48);
  dispatch_async(v25, v28);

  v8 = v29;
LABEL_18:
}

void sub_1001DD030(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 setLastLostModeKeyRollTime:*(a1 + 48)];
    v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  }

  else
  {
    v8 = sub_100002880(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022F63C(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = +[NSError fm_genericError];
  }

  v16 = v7;
  v17 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001DD1A8;
  v20[3] = &unk_1002CD8B0;
  v18 = *(a1 + 56);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

uint64_t sub_1001DD1A8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1001DD3D0(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [*(a1 + 32) commandParams];
  v4 = [v3 objectForKey:@"udid"];
  v5 = [v4 fm_nullToNil];

  if ([v5 length] && (v6 = objc_msgSend([FMDAccessoryIdentifier alloc], "initWithString:", v5), objc_msgSend(v2, "accessoryRegistry"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "accessoryForIdentifier:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Message command for accessory %@", &v17, 0xCu);
    }

    v11 = [AccessoryRegisterAction alloc];
    v12 = [v2 account];
    v13 = [v2 serverInteractionControllerForAccessory:v8];
    v14 = [(AccessoryRegisterAction *)v11 initWithAccount:v12 accessory:v8 cause:@"startupAccessoryRegister" force:1 serverInteractionController:v13];

    v15 = +[ActionManager sharedManager];
    v16 = [v15 enqueueAction:v14];
  }

  else
  {
    [v2 registerDeviceWithCause:@"RegisterCommand" force:1];
  }
}

NSDictionary *__cdecl sub_1001DD8D4(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_1001DD924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ServerDeviceInfo sharedInstance];
  v4 = [*(a1 + 40) account];
  if (v2)
  {
    [v3 deviceInfoForAccount:v4 accessory:*(a1 + 32)];
  }

  else
  {
    [v3 deviceInfoForAccount:v4];
  }
  v5 = ;

  return v5;
}

void sub_1001DD9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_1001DE584(id a1)
{
  v1 = objc_alloc_init(FMDInternalAccessoryConnectionMonitor);
  v2 = qword_100314A28;
  qword_100314A28 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001DEBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DEC14(uint64_t a1)
{
  v2 = [NSSet setWithArray:*(a1 + 32)];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) playbackChannels];
  v5 = [NSSet setWithArray:v4];

  *(*(*(a1 + 48) + 8) + 24) = [v2 isEqualToSet:v5] ^ 1;
  [*(a1 + 40) setPlaybackChannels:*(a1 + 32)];
  v6 = sub_100002880([*(a1 + 40) updateAudioChannelPlayingState:*(a1 + 32)]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F6C0(v3, v6);
  }
}

void sub_1001DEDB8(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v4 = [v7 channelName];
    v5 = [v3 containsObject:v4];

    v6 = [NSNumber numberWithBool:v5];
    [v7 setPlayingSound:v6];
  }

  else
  {
    [v7 setPlayingSound:0];
  }
}

void sub_1001DF2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channelName];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void sub_1001DF43C(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 identifier];
  v4 = [*(a1 + 32) beacons];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v12 updateDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [v5 updateDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v8 > v11)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v3];
  }
}

void sub_1001DF5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DF600(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 playingSound];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 playingSound];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v11 playingSound];
      *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_1001E0A90(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"FMDAutomationBluetoothManagerAutomationActiveKey" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100314A38 = v1;
}

void sub_1001E0B8C(id a1)
{
  v1 = +[FMDAutomationHelperFactory sharedFactory];
  v2 = [v1 automationHelperClassWithName:@"FMDAutomationBluetoothManager"];

  v3 = objc_alloc_init(v2);
  v4 = qword_100314A48;
  qword_100314A48 = v3;

  _objc_release_x1(v3, v4);
}

void sub_1001E1968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishResultLocation:*(a1 + 32) reason:*(a1 + 48)];
}

void sub_1001E21FC(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F924(v1);
  }

  v2 = objc_alloc_init(FMDSPStatusUtil);
  v3 = qword_100314A58;
  qword_100314A58 = v2;
}

void sub_1001E243C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained timer];
  [v1 cancel];

  [WeakRetained setTimer:0];
}

void sub_1001E25B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_refreshBeaconStats];
}

void sub_1001E2B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E2C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_refreshBeaconStats];
}

void sub_1001E2ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1001E2F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (!v3 || (v3 = [v3 compare:*(a1 + 32)], v3 != 1) || (v3 = *(*(*(a1 + 64) + 8) + 40)) == 0 || (v3 = objc_msgSend(v3, "compare:", *(a1 + 32)), v3 != 1))
  {
    v9 = sub_100002880(v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting for both Oct & Mte beacon stats to be fetched.", buf, 2u);
    }

    goto LABEL_15;
  }

  v4 = sub_100002880(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Both Oct & Mte beacon stats have been fetched.", buf, 2u);
  }

  v5 = [*(a1 + 40) copy];
  [WeakRetained setRawStats:v5];

  v6 = [WeakRetained rawStats];
  [FMPreferencesUtil setDictionary:v6 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

  v7 = [*(a1 + 48) isEqualToDictionary:*(a1 + 40)];
  if ((*(a1 + 80) & 1) != 0 || !v7)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Basic or detailed beacon stats have changed. Sending the updated stats to the server", buf, 2u);
    }

    v9 = [WeakRetained statsChangeHandler];
    if (v9)
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E315C;
      block[3] = &unk_1002CE250;
      v9 = v9;
      v12 = v9;
      dispatch_async(v10, block);
    }

LABEL_15:
  }
}

void sub_1001E316C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Mte beacon stats fetched", v12, 2u);
  }

  [*(a1 + 32) fm_safelyMapKey:@"mteStatus" toObject:v6];
  [*(a1 + 32) fm_safelyMapKey:@"mteStatusError" toObject:v5];

  v8 = +[NSDate date];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 40) serialQueue];
  dispatch_async(v11, *(a1 + 48));
}

void sub_1001E339C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWaitingForDetailedStats:0];
  v3 = [WeakRetained rawStats];
  v4 = [v3 copy];

  v5 = [v4 mutableCopy];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"octStatus"];
  [v5 fm_safelyMapKey:@"octStatus" toObject:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"octStatusError"];
  [v5 fm_safelyMapKey:@"octStatusError" toObject:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"mteStatus"];
  [v5 fm_safelyMapKey:@"mteStatus" toObject:v8];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"mteStatusError"];
  [v5 fm_safelyMapKey:@"mteStatusError" toObject:v9];

  v11 = sub_100002880(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Both Oct & Mte beacon stats have been fetched.", buf, 2u);
  }

  v12 = [v5 copy];
  [WeakRetained setRawStats:v12];

  v13 = [WeakRetained rawStats];
  [FMPreferencesUtil setDictionary:v13 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

  v14 = [v4 isEqualToDictionary:v5];
  if ((v14 & 1) == 0)
  {
    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Detailed beacon stats have changed. Sending the updated stats to the server", buf, 2u);
    }

    v16 = [WeakRetained statsChangeHandler];
    if (v16)
    {
      v17 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E366C;
      block[3] = &unk_1002CE250;
      v19 = v16;
      dispatch_async(v17, block);
    }
  }
}

void sub_1001E370C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.fetch_spstats", 0, 0, 1u);
}

void sub_1001E3908(id a1)
{
  v1 = dispatch_queue_create("com.apple.icloud.findmydeviced.registerDigestSerialQueue", 0);
  v2 = qword_100314A80;
  qword_100314A80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001E3BF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412546;
    v4 = objc_opt_class();
    v5 = 2048;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) will cancel", &v3, 0x16u);
  }

  [WeakRetained setCancelled:1];
}

void sub_1001E463C(uint64_t a1, void *a2)
{
  v4 = [a2 mutableCopy];
  v3 = +[FMDBluetoothAccessory volatileKeysToExcludeFromRegisterDigest];
  [v4 removeObjectsForKeys:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_1001E46B4(id a1)
{
  v1 = [NSRegularExpression regularExpressionWithPattern:@"authToken.* options:" error:1, 0];
  v2 = qword_100314A88;
  qword_100314A88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001E4DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  _Block_object_dispose((v25 - 176), 8);
  _Block_object_dispose((v25 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1001E4E58(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 account];
  v4 = [RegisterAction _registerDigestPrefKeyForAccount:v3];

  v5 = [*(a1 + 32) _registrationInformationDigest:byte_100314A98];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (qword_100314A68)
  {
    v8 = [qword_100314A68 isEqualToData:*(*(*(a1 + 48) + 8) + 40)];
    if (v8)
    {
      v9 = sub_100002880(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v33 = 138412802;
        v34 = v10;
        v35 = 2048;
        v36 = v11;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Not sending register with cause %@ because there is already another register with the same registration information in-progress", &v33, 0x20u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v13 = qword_100314A70;
    if (!qword_100314A70)
    {
      v14 = [FMPreferencesUtil dataForKey:v4 inDomain:kFMDNotBackedUpPrefDomain];
      v15 = qword_100314A70;
      qword_100314A70 = v14;

      v13 = qword_100314A70;
    }

    v16 = v13;
    v17 = v16;
    if (qword_100314A68)
    {
      goto LABEL_26;
    }

    if (!v16)
    {
      goto LABEL_26;
    }

    v18 = [v16 isEqualToData:*(*(*(a1 + 48) + 8) + 40)];
    if (!v18)
    {
      goto LABEL_26;
    }

    if ((byte_100314A98 & 1) == 0)
    {
      v19 = +[FMDDaemon sharedInstance];
      if ([v19 isFirstRunAfterBoot])
      {
        v20 = [*(a1 + 32) _shouldThrottleDeviceRestartRegister];

        if ((v20 & 1) == 0)
        {
          v21 = sub_100002880(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 40);
            v33 = 138543362;
            v34 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged but forcing register %{public}@", &v33, 0xCu);
          }

LABEL_22:

LABEL_26:
          goto LABEL_27;
        }
      }

      else
      {
      }

      if ((byte_100314A98 & 1) == 0)
      {
        v23 = +[FMDStartupRegisterManager sharedInstance];
        v24 = [v23 shouldForceRegisterOnStartup];

        if (v24)
        {
          v21 = sub_100002880(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 40);
            v26 = +[FMDStartupRegisterManager sharedInstance];
            v33 = 138543618;
            v34 = v25;
            v35 = 2114;
            v36 = v26;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged but forcing register %{public}@ due to %{public}@", &v33, 0x16u);
          }

          goto LABEL_22;
        }
      }
    }

    v27 = sub_100002880(v18);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      v33 = 138543362;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged. Ignoring register %{public}@", &v33, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_26;
  }

LABEL_27:
  v29 = [*(a1 + 32) cancelled];
  if (v29)
  {
    v30 = sub_100002880(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = *(a1 + 32);
      v33 = 138412546;
      v34 = v31;
      v35 = 2048;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) cancelled by action manager", &v33, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}