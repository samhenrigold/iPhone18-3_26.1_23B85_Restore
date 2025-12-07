uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"BluetoothUIService", @"BluetoothUIService");
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_1000019E4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [v7 xpcCon];
        v9 = *(a1 + 40);
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_11:
          if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000BD5C();
          }

          [v7 invalidate];
          [*(*(a1 + 32) + 8) removeObject:v7];
          goto LABEL_16;
        }

        if ((v10 != 0) == (v11 == 0))
        {

          goto LABEL_16;
        }

        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_11;
        }

LABEL_16:
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v14 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v14;
    }

    while (v14);
  }
}

void sub_100001CFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2 != 1)
  {
    if (a2 == 6)
    {
      a2 = 3;
    }

    else if (a2 != 2)
    {
      goto LABEL_7;
    }
  }

  v5 = [*(a1 + 32) xpcSendMessage:a2];
LABEL_7:
  if (dword_10001E9A0 <= 30)
  {
    if (dword_10001E9A0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_10000BDAC(v5, v6, v7);
    }
  }

  [*(a1 + 40) invalidate];
  [*(*(a1 + 48) + 8) removeObject:*(a1 + 40)];
  v8 = *(a1 + 48);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;
}

uint64_t sub_100001EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F0C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  v5 = SBUIIsSystemApertureEnabled();
  if (v5)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [*(*(a1 + 32) + 8) copy];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        v12 = 0;
        do
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * v12);
          if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000BDE4();
          }

          [v13 invalidate];
          [*(*(a1 + 32) + 8) removeObject:v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v14 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v10 = v14;
      }

      while (v14);
    }

    if (dword_10001E9A0 <= 30 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000BE18();
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:*(a1 + 32) selector:"receiveVideoReadyToPlay:" name:@"VideoReadyToPlay" object:0];

    v16 = [BluetoothUIServiceBanner alloc];
    v17 = *(a1 + 40);
    v18 = *(*(a1 + 56) + 8);
    obj = *(v18 + 40);
    v19 = [(BluetoothUIServiceBanner *)v16 initWithXPCObject:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    [*(*(a1 + 32) + 8) addObject:v19];
    -[BluetoothUIServiceBanner setPid:](v19, "setPid:", [*(a1 + 48) pid]);
    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = v19;
    v22 = v19;

    [*(*(a1 + 32) + 32) setXpcCon:*(a1 + 48)];
  }

  else
  {
    if (dword_10001E9A0 <= 30)
    {
      if (dword_10001E9A0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_10000BDC8(v5, v6, v7);
      }
    }

    v23 = [BluetoothUIServiceBanner alloc];
    v24 = *(a1 + 40);
    v25 = *(*(a1 + 56) + 8);
    v30 = *(v25 + 40);
    v22 = [(BluetoothUIServiceBanner *)v23 initWithXPCObject:v24 error:&v30];
    objc_storeStrong((v25 + 40), v30);
    [*(*(a1 + 32) + 8) addObject:v22];
    -[BluetoothUIServiceBanner setPid:](v22, "setPid:", [*(a1 + 48) pid]);
    [(BluetoothUIServiceBanner *)v22 setXpcCon:*(a1 + 48)];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000229C;
    v26[3] = &unk_100018510;
    v27 = *(a1 + 48);
    v28 = v22;
    v29 = *(a1 + 32);
    [(BluetoothUIServiceBanner *)v22 activateWithActionHandler:v26];
  }
}

void sub_10000229C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 1)
  {
    if (a2 == 6)
    {
      a2 = 3;
    }

    else if (a2 != 2)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) xpcSendMessage:a2];
LABEL_7:
  if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BE4C();
  }

  [*(a1 + 40) invalidate];
  [*(*(a1 + 48) + 8) removeObject:*(a1 + 40)];
}

void sub_100002720(id a1, OS_xpc_object *a2)
{
  v4 = a2;
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (v2)
  {
    sub_10000BF50();
  }

  else
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    if (v3)
    {
      if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10000BF88(v3);
      }
    }

    else
    {
      sub_10000BFC8();
    }
  }
}

uint64_t sub_100002954(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 90, a4);
}

void sub_100002CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002CF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002D0C(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  v10 = *(v3 + 40);
  v4 = [v2 statusOfValueForKey:@"duration" error:&v10];
  objc_storeStrong((v3 + 40), v10);
  if (v4 == 2)
  {
    memset(&v9, 0, sizeof(v9));
    v5 = a1[4];
    if (v5)
    {
      objc_msgSend_duration(v5);
    }

    else
    {
      memset(&v7, 0, 24);
    }

    start = kCMTimeZero;
    CMTimeRangeMake(&v9, &start, &v7.start);
    v6 = *(a1[5] + 16);
    if (v6)
    {
      v7 = v9;
      [v6 setLoopTimeRange:&v7];
    }
  }
}

void sub_100003B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) systemApertureElementContext];
  v1 = [v2 requestAlertingAssertion];
  [v1 invalidateWithReason:@"6 seconds timer reached"];
}

void sub_100003F94(uint64_t a1)
{
  if (([*(a1 + 32) checkifVideoAssetExists] & 1) == 0)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
  }
}

void sub_100004540(uint64_t a1)
{
  if (([*(a1 + 32) checkifVideoAssetExists] & 1) == 0)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
  }
}

void sub_100004DEC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
}

void sub_1000051E8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
}

id sub_100007D84(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLayoutMode];
  v3 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = [v3 minimalView];
    [v4 setHidden:1];

    v5 = *(a1 + 32);
    v6 = v5[195];
    v7 = [v5 batteryLevelIndicator];
    v8 = v7;
    if (v6 == 1)
    {
      v9 = [v7 micaRootLayer];
      v10 = v9;
      v11 = @"low_zoom";
    }

    else
    {
      [v7 setShowsPercentageLabel:1];

      v20 = [*(a1 + 32) batteryLevelIndicator];
      [v20 percentageLevel];
      v22 = v21;

      v8 = [*(a1 + 32) batteryLevelIndicator];
      v9 = [v8 micaRootLayer];
      v10 = v9;
      if (v22 <= 0.2)
      {
        v11 = @"low_zoom";
      }

      else
      {
        v11 = @"zoom";
      }
    }

    [v9 setState:v11];

    v26 = *(a1 + 32);
    if (*(v26 + 336) && [*(v26 + 344) containsString:@"mute"])
    {
      [*(*(a1 + 32) + 336) addTarget:*(a1 + 32) action:"handleTap:" forControlEvents:64];
    }
  }

  else if ([v3 activeLayoutMode] == 3)
  {
    v12 = *(a1 + 32);
    v13 = v12[195];
    v14 = [v12 batteryLevelIndicator];
    [v14 sizeToFit];

    v15 = [*(a1 + 32) batteryLevelIndicator];
    v16 = v15;
    if (v13 == 1)
    {
      v17 = [v15 micaRootLayer];
      v18 = v17;
      v19 = @"low_with_number";
    }

    else
    {
      [v15 setShowsPercentageLabel:0];

      v23 = [*(a1 + 32) batteryLevelIndicator];
      [v23 percentageLevel];
      v25 = v24;

      v16 = [*(a1 + 32) batteryLevelIndicator];
      v17 = [v16 micaRootLayer];
      v18 = v17;
      v19 = v25 <= 0.2 ? @"low_compact" : @"compact";
    }

    [v17 setState:v19];

    v27 = *(a1 + 32);
    if (*(v27 + 336))
    {
      if ([*(v27 + 344) containsString:@"mute"])
      {
        [*(*(a1 + 32) + 336) removeTarget:*(a1 + 32) action:"handleTap:" forControlEvents:64];
      }
    }
  }

  result = [*(a1 + 32) activeLayoutMode];
  if (result != -1)
  {
    result = [*(a1 + 32) activeLayoutMode];
    if (result != 1)
    {
      v29 = *(a1 + 32);
      v30 = v29[18];
      v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v29 activeLayoutMode]);
      obj = [v30 objectForKeyedSubscript:v31];

      v33 = obj;
      v34 = *(a1 + 32);
      v35 = *(v34 + 24);
      if (obj != v35)
      {
        if (v35)
        {
          [NSLayoutConstraint deactivateConstraints:?];
          v34 = *(a1 + 32);
        }

        objc_storeStrong((v34 + 24), obj);
        v33 = obj;
        if (obj)
        {
          [NSLayoutConstraint activateConstraints:obj];
          v33 = obj;
          v32 = *(a1 + 32);
          if (v32[195] == 1)
          {
            v32 = [v32 activeLayoutMode];
            v33 = obj;
            if (v32 == 3)
            {
              [*(*(a1 + 32) + 296) setConstant:27.0];
              v32 = [*(*(a1 + 32) + 288) setConstant:27.0];
              v33 = obj;
            }
          }
        }
      }

      return _objc_release_x1(v32, v33);
    }
  }

  return result;
}

uint64_t sub_100009354(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if ([v1 count])
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = [v1 objectAtIndexedSubscript:v2];
      v2 = v3;
      if ([v4 isEqualToString:@"PID"] && objc_msgSend(v1, "count") > v3)
      {
        v5 = [v1 count];

        if (v5 > v3 + 1)
        {
          v14 = [v1 objectAtIndexedSubscript:v3];
          v15 = [v1 objectAtIndexedSubscript:v3 + 1];
          v16 = [v15 intValue];

          v17 = v16;
          goto LABEL_10;
        }
      }

      else
      {
      }

      ++v3;
    }

    while ([v1 count] > v2);
  }

  v14 = 0;
  v17 = 0;
LABEL_10:
  v6 = [NSString stringWithFormat:@"%u", 8215];
  v7 = [v6 isEqualToString:v14];

  if (v7)
  {
    if ((v17 & 0xFE) != 0xC)
    {
LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%u", 8230];
    v9 = [v8 isEqualToString:v14];

    if (v9)
    {
      if (v17 != 6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%u", 8229];
      v11 = [v10 isEqualToString:v14];

      if (!v11 || (v17 - 5) >= 2)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = 1;
LABEL_20:

  return v12;
}

void sub_10000B3C0(uint64_t a1)
{
  v3 = [NSBundle bundleForClass:*(a1 + 32)];
  v1 = [v3 bundleIdentifier];
  v2 = qword_10001EDE0;
  qword_10001EDE0 = v1;
}

id sub_10000BA14@<X0>(void *a1@<X0>, double a2@<X8>)
{

  return [a1 initWithFrame:{0.0, 0.0, a2, a2}];
}

void sub_10000BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954(&dword_10001E9A0, "[BUISAgentXPCConnection xpcSendMessage:]", a3, "### No valid XPC connection");
  }
}

void sub_10000C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954(&dword_10001E9A0, "[BUISAgentXPCConnection _xpcSendReplyError:request:]", a3, "### Send error create reply failed");
  }
}

void sub_10000C060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954(&dword_10001E9A0, "[BUISAgentXPCConnection _xpcSendReplyError:request:]", a3, "### Send error with no cnx");
  }
}