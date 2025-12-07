void sub_10000180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001824(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000183C(uint64_t a1)
{
  v34 = objc_alloc_init(NSMutableSet);
  if (dword_1000222E0 <= 30 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B274(a1);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [*(a1 + 40) availableOutputDevices];
  v2 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v43;
    v5 = @"IsDiscoveredWithBroker";
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        v8 = [v7 deviceID];
        v9 = [v8 isEqualToString:*(a1 + 48)];

        v10 = [v7 airPlayProperties];
        v11 = [v10 objectForKeyedSubscript:v5];

        if (v11)
        {
          if (*(*(a1 + 32) + 48))
          {
            v13 = [IRCandidate alloc];
            v14 = [v7 deviceID];
            v15 = [v13 initWithCandidateIdentifier:v14];

            v36 = objc_alloc_init(IRNode);
            v16 = [v7 deviceID];
            [v36 setAvOutpuDeviceIdentifier:v16];

            v17 = [NSSet setWithObject:v36];
            [v15 updateNodes:v17];

            v18 = [IRMediaEvent alloc];
            if (v9)
            {
              v19 = 9;
            }

            else
            {
              v19 = 10;
            }

            v20 = [v18 initWithEventType:v19 eventSubType:0];
            v21 = *(a1 + 32);
            v22 = v9;
            v23 = a1;
            v24 = v3;
            v25 = v4;
            v26 = v5;
            v27 = *(v21 + 24);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000B094;
            block[3] = &unk_10001C4F0;
            block[4] = v21;
            v40 = v20;
            v41 = v15;
            v28 = v15;
            v29 = v20;
            v30 = v27;
            v5 = v26;
            v4 = v25;
            v3 = v24;
            a1 = v23;
            v9 = v22;
            dispatch_async(v30, block);
            [v34 addObject:v28];
          }

          if (v9 && !*(*(*(a1 + 64) + 8) + 40))
          {
            if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
            {
              sub_10000B2E4(a1 + 32, (a1 + 48), v12);
            }

            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
            dispatch_semaphore_signal(*(a1 + 56));
          }
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v31 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v3 = v31;
    }

    while (v31);
  }

  if ([v34 count])
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 24);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000B158;
    v37[3] = &unk_10001C518;
    v37[4] = v32;
    v38 = v34;
    dispatch_async(v33, v37);
  }
}

void sub_100001C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6727 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100001FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 status];
  if (v4 == 2)
  {
    if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B56C(a1);
    }

    v5 = 0;
  }

  else
  {
    if (dword_1000222E0 <= 90 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B490(a1, v3);
    }

    v6 = [v3 cancellationReason];
    v7 = [v6 isEqualToString:AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped];

    if (v7)
    {
      v5 = -6754;
    }

    else
    {
      v5 = -6700;
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002154;
    v10[3] = &unk_10001C5B8;
    v11 = v8;
    v13 = v4 == 2;
    v12 = v5;
    dispatch_async(v9, v10);
  }
}

void sub_100002154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(a1 + 32);

    v4(v5, v2, 0);
  }
}

void sub_100002348(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B6F4(a1);
    }

    v10 = 0;
  }

  else
  {
    if (dword_1000222E0 <= 90 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000B624(a1);
    }

    if ([v9 isEqualToString:AVOutputDeviceCommunicationChannelOpenCancellationReasonAuthorizationSkipped])
    {
      v10 = -6754;
    }

    else
    {
      v10 = -6700;
    }
  }

  [v7 close];
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 16);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000024E0;
    v13[3] = &unk_10001C5B8;
    v14 = v11;
    v16 = v7 != 0;
    v15 = v10;
    dispatch_async(v12, v13);
  }
}

void sub_1000024E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(a1 + 32);

    v4(v5, v2, 0);
  }
}

void sub_1000028BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = dispatch_time(0, 30000000000);
  v4 = dispatch_semaphore_wait(v2, v3);
  v9 = *(a1 + 32);
  objc_sync_enter(v9);
  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    v5 = "timed out waiting for";
    if (!v4)
    {
      v5 = "received";
    }

    LogPrintF(&dword_1000222E0, "[APUIRouteManager startIntelligentRoutingLocationSensing]_block_invoke", 33554482, "[%{ptr}] IRSession [%{ptr}] %s setSpotOnLocationWithParameters callback with error=%{error}.", *(a1 + 32), *(*(a1 + 32) + 48), v5, *(*(a1 + 32) + 40));
  }

  v6 = *(a1 + 32);
  if (v4 || *(v6 + 40))
  {
    [*(v6 + 48) setDelegate:0];
    [*(*(a1 + 32) + 48) invalidate];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }

  objc_sync_exit(v9);
}

uint64_t sub_100002A90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t sub_100002AA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554522, a4);
}

void sub_100002E9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v2 + 16))(v2, v7, *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0, v4);
  }
}

void sub_10000301C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"BrokerGroupID"];
  }

  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000030F8;
  v6[3] = &unk_10001C680;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v5 _sendBrokerRequest:@"GetInfo" params:v3 timeout:4 completion:v6];
}

void sub_100003350(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:0];
    (*(v2 + 16))(v2, v7, *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0, v4);
  }
}

void sub_1000034F0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"BrokerAuthString"];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"BrokerGroupID"];
  }

  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000035DC;
  v5[3] = &unk_10001C680;
  v5[4] = v4;
  v6 = *(a1 + 56);
  [v4 _sendBrokerRequest:@"Authenticate" params:v2 timeout:25 completion:v5];
}

void sub_1000036E8(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v3];
  objc_sync_exit(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  v8 = v7;
  [v7 setObject:*(a1 + 48) forKeyedSubscript:@"RequestType"];
  [v8 setObject:v3 forKeyedSubscript:@"RequestUUID"];
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = IsAppleInternalBuild();
    LogPrintF(&dword_100022470, "[APUIBrokerHelper _sendBrokerRequest:params:timeout:completion:]_block_invoke", 33554482, "[%{ptr}] Sending discovery broker %'@ command %@%?{end} with param %@", v9, v10, v3, v11 == 0, v8);
  }

  v12 = APSXPCClientSendCommandCreatingReply();
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100022470, "[APUIBrokerHelper _sendBrokerRequest:params:timeout:completion:]_block_invoke", 33554482, "[%{ptr}] Sent %'@ request: %#m", *(a1 + 32), *(a1 + 48), v12);
  }

  if (v12)
  {
    sub_10000B960(v12);
  }

  else
  {
    v13 = [v4 semaphore];
    v14 = dispatch_time(0, 1000000000 * *(a1 + 64));
    v15 = dispatch_semaphore_wait(v13, v14);

    if (v15)
    {
      if (dword_100022470 <= 90 && (dword_100022470 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100022470, "[APUIBrokerHelper _sendBrokerRequest:params:timeout:completion:]_block_invoke", 33554522, "[%{ptr}] Giving up waiting for %'@ request %@ response after %d secs", *(a1 + 32), *(a1 + 48), v3, *(a1 + 64));
      }

      v12 = 4294960574;
    }

    else
    {
      v12 = 0;
    }
  }

  v16 = *(a1 + 32);
  objc_sync_enter(v16);
  if (v12 || !v4)
  {
    if (dword_100022470 <= 90 && (dword_100022470 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100022470, "[APUIBrokerHelper _sendBrokerRequest:params:timeout:completion:]_block_invoke", 33554522, "[%{ptr}] Discovery broker request %@ failed with error: %#m", *(a1 + 32), v3, v12);
    }

    v18 = 0;
  }

  else
  {
    v17 = v4;
    objc_sync_enter(v17);
    LODWORD(v12) = [v17 status];
    v18 = [v17 response];
    objc_sync_exit(v17);
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:v3];
  objc_sync_exit(v16);

  v19 = *(a1 + 56);
  if (v19)
  {
    v20 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003B34;
    block[3] = &unk_10001C6F8;
    v24 = v19;
    v22 = v3;
    v25 = v12;
    v23 = v18;
    dispatch_async(v20, block);
  }
}

void sub_100003B0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100003B34(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v4)
  {
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v4 userInfo:0];
    (*(v2 + 16))(v2, v3, v8, *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v2 + 16);
    v7 = *(a1 + 48);

    v6(v7, v3, 0, v5);
  }
}

uint64_t sub_100003EA0(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = qword_100022958;
  qword_100022958 = v1;

  return _APSXPCClientAddEventHandler(@"com.apple.airplay.discoverybroker", @"BrokerResponse", sub_100003EFC);
}

uint64_t sub_100003EFC(__CFString *a1, uint64_t a2)
{
  v4 = +[APUIBrokerHelper sharedInstance];
  v5 = v4;
  v7 = v4;
  if (a1 == @"BrokerResponse" || a1 && (v4 = CFEqual(a1, @"BrokerResponse"), v5 = v7, v4))
  {
    v4 = [v5 _handleBrokerResponse:a2];
LABEL_5:
    v5 = v7;
    goto LABEL_10;
  }

  if (dword_100022470 <= 90)
  {
    if (dword_100022470 != -1 || (v4 = _LogCategory_Initialize(), v5 = v7, v4))
    {
      v4 = LogPrintF(&dword_100022470, "void _HandleBrokerServiceResponse(CFStringRef, CFDictionaryRef)", 33554522, "[%{ptr}] Unsupported event type: %@\n", v5, a1);
      goto LABEL_5;
    }
  }

LABEL_10:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_100004898(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100004FF0(id a1)
{
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BF48();
  }
}

void sub_100005288(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 32);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100005510;
  v14 = &unk_10001C7F8;
  objc_copyWeak(&v16, &location);
  v4 = v2;
  v15 = v4;
  [v3 setEventHandler:&v11];
  v5 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100022610, "[APUIConnectivityManager _monitorWiFiIPAddressConfigurationWithCompletion:]_block_invoke", 33554522, "[%{ptr}] WiFi has no valid IP after %d secs.", *(a1 + 32), 10, v11, v12, v13, v14);
    }

    v18 = NSLocalizedDescriptionKey;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"WiFi has no valid IP" value:&stru_10001CEA8 table:0];
    v19 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = [NSError errorWithDomain:@"UserErrorDomain" code:301028 userInfo:v9];
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_1000054E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005510(uint64_t a1, void *a2)
{
  v23 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = [v23 type];
    if (v6 == 19)
    {
      v15 = [v5 IPv4Addresses];
      if (![v15 count])
      {

LABEL_25:
        goto LABEL_26;
      }

      v16 = [v5 IPv4SubnetMasks];
      v17 = [v16 count];

      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = [v5 IPv4Addresses];
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v5 IPv4SubnetMasks];
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v19 isValidIPv4AddressWithSubnetMask:v21];

      if (!v22)
      {
        goto LABEL_25;
      }

      if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
      {
        sub_10000C1A4(v5, v4);
      }
    }

    else
    {
      if (v6 != 20)
      {
        goto LABEL_25;
      }

      v7 = [v5 IPv6Addresses];
      v8 = [v7 count];

      if (!v8)
      {
        goto LABEL_25;
      }

      v9 = 0;
      while (1)
      {
        v10 = [v5 IPv6Addresses];
        v11 = [v10 objectAtIndexedSubscript:v9];
        v12 = [v11 isValidIPv6Address];

        if (v12)
        {
          break;
        }

        ++v9;
        v13 = [v5 IPv6Addresses];
        v14 = [v13 count];

        if (v9 >= v14)
        {
          goto LABEL_25;
        }
      }

      if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
      {
        sub_10000C0B0(v5, v9, v4);
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_25;
  }

  if (dword_100022610 <= 60 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C328();
  }

LABEL_26:
}

void sub_100005C3C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(__CFString *)v6 count])
  {
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C440(a1, v6);
    }

    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = [(__CFString *)v6 objectAtIndexedSubscript:0];
    [v7 _associateWithNetworkWithPassPhrase:v8 captivePortalAuthToken:v9 scanResults:v10 completion:a1[7]];

    v11 = 0;
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v16 = NSLocalizedDescriptionKey;
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"No results found in Wi-Fi scan" value:&stru_10001CEA8 table:0];
      v17 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:301021 userInfo:v14];
    }

    v15 = a1[7];
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v11);
    }
  }
}

void sub_100005F68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C4FC(a1, v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v3);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000060DC;
    v11 = &unk_10001C870;
    v12 = v6;
    v13 = v5[1];
    [v6 _monitorWiFiIPAddressConfigurationWithCompletion:&v8];
    [*v5 _startMonitoringWiFiEvents];
    v7 = [*(*v5 + 4) currentKnownNetworkProfile];
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C56C(v5, v7);
    }

    [*v5 tagAirPlayNetwork];
  }
}

uint64_t sub_1000060DC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C684(a1);
  }

  [*(a1 + 32) _stopMonitoringWiFiEvents];
  v3 = *(a1 + 40);
  if (v3)
  {
    v3 = (*(v3 + 16))(v3, v5 == 0, v5);
  }

  return _objc_release_x2(v3);
}

void sub_100006838(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2 == 3)
  {
    v7 = v6;
    [v6 handleWiFiInterfaceChangedWithEventInfo:a3];
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [v6 handleUSBInterfaceChangedWithEventInfo:a3];
  }

  v6 = v7;
LABEL_6:
}

uint64_t sub_1000069AC(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = qword_100022968;
  qword_100022968 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_1000072D4(uint64_t a1)
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C95C(a1);
  }

  v2 = *(a1 + 32);

  return [v2 setDiscoveryMode:0];
}

intptr_t sub_100007644(void *a1, uint64_t a2, uint64_t a3)
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000226F0, "[APUISetupViewController invalidate]_block_invoke", 33554482, "[%{ptr}] sent RTC event: [%p] succeeded:%d err:%d", a1[5], a1[6], a2, a3);
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

void sub_100007A80(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) _setupAirPlayConnectingProxCardManagerWithSetupPayload:*(a1 + 40) withTitle:*(a1 + 48) withSubTitle:*(a1 + 56) withImageName:*(a1 + 64) andCompletion:*(a1 + 72)];
  v3 = *(a1 + 72);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = [*(a1 + 32) proxCardNavigationController];
  v5 = [*(a1 + 32) connectingProxCardController];
  [v4 pushViewController:v5 animated:0];
}

uint64_t sub_100007E48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000081B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000082F8;
  v10[3] = &unk_10001C978;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v10];
  [*(a1 + 32) setAirPlayAlertController:v7];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v8 = [*(a1 + 32) proxCardNavigationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008408;
  v9[3] = &unk_10001C630;
  v9[4] = *(a1 + 32);
  [v8 dismissViewControllerAnimated:1 completion:v9];
}

id sub_1000082F8(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v6 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v5 openSensitiveURL:v6 withOptions:0];
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CA44(a1, v7, v8);
    }
  }

  else if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CA04(a1, v3, v4);
  }

  v9 = *(a1 + 40);

  return [v9 invalidate];
}

void sub_100008408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100008680(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000879C;
  v8[3] = &unk_10001C9C8;
  v8[4] = *(a1 + 32);
  v5 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v8];
  [*(a1 + 32) setAirPlayAlertController:v5];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v6 = [*(a1 + 32) proxCardNavigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008824;
  v7[3] = &unk_10001C630;
  v7[4] = *(a1 + 32);
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

void sub_10000879C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CA84(a1, v3, v4);
  }

  [*(a1 + 32) invalidate];
}

void sub_100008824(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100008A3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008B58;
  v8[3] = &unk_10001C9C8;
  v8[4] = *(a1 + 32);
  v5 = [AirPlayAlertViewController alertWithTitle:v2 withMessage:v3 actions:v4 withCompletion:v8];
  [*(a1 + 32) setAirPlayAlertController:v5];

  [*(a1 + 32) setShouldSkipInvalidateOnProxCardFlowDidDismiss:1];
  v6 = [*(a1 + 32) proxCardNavigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008BE0;
  v7[3] = &unk_10001C630;
  v7[4] = *(a1 + 32);
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100008B58(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CAC4(a1, v3, v4);
  }

  [*(a1 + 32) invalidate];
}

void sub_100008BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 airPlayAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_100009004(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) updateWiFiRTCDictionaryAlreadyAssociated:0 associationSucessful:a2 error:?];
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CC1C();
    }

    if ([v5 code] == -71157 && dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CCD0(a1 + 32, v5);
    }

    [*(a1 + 32) _performBrokerAuthenticationWithSetupPayload:*(a1 + 40) switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CBB8(a1 + 32, v5);
    }

    [*(a1 + 32) _presentUnableToConnectToWiFiAlertWithSetupPayload:*(a1 + 40)];
  }
}

void sub_1000092A4(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v6 = a3;
  if (v13)
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      v11 = a1[4];
      v7 = [v13 localizedDescription];
      LogPrintF(&dword_1000226F0, "[APUISetupViewController _getSupportedNetworks:withSetupPayload:completion:]_block_invoke", 33554522, "[%{ptr}] Failed to get brokerGroupInfo with error: %@", v11, v7);
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CD34(a1, v6, v5);
    }

    if ([v6 count])
    {
      v7 = [v6 allKeys];
      v8 = [v7 firstObject];
      v9 = [v6 objectForKeyedSubscript:v8];
      v10 = [v9 objectForKeyedSubscript:@"supportedWiFiNetworkSSIDs"];

LABEL_7:
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, [v10 containsObject:a1[5]]);
  }
}

void sub_100009534(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = (a1 + 32);
  [*(a1 + 32) updateBrokerRTCDictionaryBrokerConnectionSuccess:v9 == 0 error:?];
  if (v9)
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CD94(a1 + 32, v9);
    }

    if (*(a1 + 48) == 1)
    {
      if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
      {
        sub_10000CEAC();
      }

      [*(a1 + 32) _joinWiFiAndConnectToReceiverWithSetupPayload:*(a1 + 40)];
    }

    else
    {
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      if ([v8 routeToReceiver])
      {
        if ([v9 code] == -6754)
        {
          if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000CDF8();
          }

          [*v6 _presentInvalidCodeAlertWithSetupPayload:*v7];
        }

        else
        {
          [*v6 _presentUnableToConnectToDeviceAlertWithSetupPayload:*v7];
        }
      }

      else
      {
        [*v6 _presentSetupCompletedProxCard:*v7 isAirPlaySetUp:0];
      }
    }
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000CF60();
    }

    [*(a1 + 32) _connectToAirPlayReceiverWithDeviceID:v5 andSetupPayload:*(a1 + 40)];
  }
}

void sub_10000980C(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  [*(a1 + 32) updateReceiverRTCDictionaryReceiverConnectionSuccess:a2 error:?];
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D0D4(a1 + 32, v5, v6);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 1;
    goto LABEL_6;
  }

  if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CFBC(a1 + 32, v11);
  }

  if (NSErrorToOSStatus() == -6754)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D020();
    }

    [*(a1 + 32) _presentInvalidCodeAlertWithSetupPayload:*(a1 + 40)];
  }

  else
  {
    v10 = [*(a1 + 40) routeToReceiver];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (!v10)
    {
      v9 = 0;
LABEL_6:
      [v7 _presentSetupCompletedProxCard:v8 isAirPlaySetUp:v9];
      goto LABEL_17;
    }

    [v7 _presentUnableToConnectToDeviceAlertWithSetupPayload:v8];
  }

LABEL_17:
}

void sub_100009AD0(uint64_t a1)
{
  v2 = +[APUIConnectivityManager sharedInstance];
  v3 = [v2 currentNetworkSSID];

  v4 = [*(a1 + 32) wifiSSID];
  v5 = [v4 isEqualToString:v3];

  if ([objc_opt_class() isMultipleWifiFeatureEnabled])
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009CC0;
    v9[3] = &unk_10001CA90;
    v9[4] = v6;
    v10 = v3;
    v11 = *(a1 + 32);
    [v6 _getSupportedNetworks:v10 withSetupPayload:v7 completion:v9];
  }

  else if (v5)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D1AC();
    }

    [*(a1 + 40) updateWiFiRTCDictionaryAlreadyAssociated:1 associationSucessful:0 error:0];
    v8 = +[APUIConnectivityManager sharedInstance];
    [v8 tagAirPlayNetwork];

    [*(a1 + 40) _performBrokerAuthenticationWithSetupPayload:*(a1 + 32) switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D150();
    }

    [*(a1 + 40) _joinWiFiAndConnectToReceiverWithSetupPayload:*(a1 + 32)];
  }

  [*(*(a1 + 40) + 16) startIntelligentRoutingLocationSensing];
}

id sub_100009CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D270(a1, a2, a3);
    }

    [*(a1 + 32) updateWiFiRTCDictionaryAlreadyAssociated:1 associationSucessful:0 error:0];
    v4 = +[APUIConnectivityManager sharedInstance];
    [v4 tagAirPlayNetwork];

    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    return [v5 _performBrokerAuthenticationWithSetupPayload:v6 switchWiFiIfFailed:0];
  }

  else
  {
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D208(a1, a2, a3);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 48);

    return [v8 _joinWiFiAndConnectToReceiverWithSetupPayload:v9];
  }
}

void sub_100009EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F9C;
  v7[3] = &unk_10001CAE0;
  v7[4] = v2;
  [v2 _initializeSetupCompletionProxCardManagerWithSetupPayload:v3 isAirPlaySetUp:v4 andCompletion:v7];
  v5 = [*(a1 + 32) proxCardNavigationController];
  v6 = [*(a1 + 32) completedProxCardController];
  [v5 pushViewController:v6 animated:0];
}

void sub_100009F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) proxCardNavigationController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A030;
  v3[3] = &unk_10001C630;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_10000A030(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (dword_1000226F0 <= 50)
  {
    v3 = result;
    if (dword_1000226F0 != -1)
    {
      return sub_10000D2D8(v3, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000D2D8(v3, a2, a3);
    }
  }

  return result;
}

uint64_t sub_10000A264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1000226F0 <= 90)
  {
    v6 = v3;
    if (dword_1000226F0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_10000D390(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10000A560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1000226F0 <= 90)
  {
    v6 = v3;
    if (dword_1000226F0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_10000D434(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void *sub_10000B094(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 48);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  if (dword_1000222E0 <= 30)
  {
    if (dword_1000222E0 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v3[4];
      if (!v4)
      {
        goto LABEL_6;
      }

      v2 = *(v1 + 48);
    }

    LogPrintF(&dword_1000222E0, "[APUIRouteManager _pickRouteWithID:authString:useRemoteControl:completion:]_block_invoke_2", 33554462, "[%{ptr}] IRSession [%{ptr}]: Adding event %@ for candidate %@", v1, v2, v3[5], v3[6]);
    v1 = v3[4];
  }

LABEL_6:
  v5 = *(v1 + 48);
  v6 = v3[5];
  v7 = v3[6];

  return [v5 addEvent:v6 forCandidate:v7];
}

void *sub_10000B158(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 48);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  if (dword_1000222E0 <= 30)
  {
    if (dword_1000222E0 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v3[4];
      if (!v4)
      {
        goto LABEL_6;
      }

      v2 = *(v1 + 48);
    }

    LogPrintF(&dword_1000222E0, "-[APUIRouteManager _pickRouteWithID:authString:useRemoteControl:completion:]_block_invoke_3", 33554462, "[%{ptr}] IRSession [%{ptr}]: Updating %d candidates", v1, v2, [v3[5] count]);
    v1 = v3[4];
  }

LABEL_6:
  v5 = *(v1 + 48);
  v6 = v3[5];

  return [v5 updateCandidates:v6];
}

void sub_10000B274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) availableOutputDevices];
  LogPrintF(&dword_1000222E0, "[APUIRouteManager _pickRouteWithID:authString:useRemoteControl:completion:]_block_invoke", 33554462, "[%{ptr}] Available output device changed=%@.", v1, v2);
}

uint64_t sub_10000B2E4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000222E0, "[APUIRouteManager _pickRouteWithID:authString:useRemoteControl:completion:]_block_invoke", a3, "[%{ptr}] Found output device with deviceID=%@.");
}

uint64_t sub_10000B350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000222E0, "[APUIRouteManager pickRouteWithRouteID:authString:useRemoteControl:completion:]", a3, "[%{ptr}] Picking route with routeID=%@ with %s");
}

void sub_10000B3D8(void *a1)
{
  v5 = [a1 deviceID];
  if (v5 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _addOutputDeviceToSystemMusicContext:authString:completion:]", v2, "[%{ptr}] Found device with deviceID=%@. Start adding device to output context.");
  }

  else
  {
    v4 = [a1 deviceID];
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _addOutputDeviceToSystemMusicContext:authString:completion:]", v3, "[%{ptr}] Found device with deviceID=%@. Start adding device to output context.");
  }
}

void sub_10000B490(uint64_t a1, void *a2)
{
  v8 = [*(a1 + 40) deviceID];
  if (v8 && !IsAppleInternalBuild())
  {
    v5 = 0;
    v4 = @"#Redacted#";
  }

  else
  {
    v4 = [*(a1 + 40) deviceID];
    v5 = 1;
  }

  [a2 status];
  v7 = [a2 cancellationReason];
  sub_100002AA8(&dword_1000222E0, "[APUIRouteManager _addOutputDeviceToSystemMusicContext:authString:completion:]_block_invoke", v6, "[%{ptr}] Failed to add device with deviceID=%@ to output context (status=%d, reason=%@).");

  if (v5)
  {
  }
}

void sub_10000B56C(uint64_t a1)
{
  v5 = [*(a1 + 40) deviceID];
  if (v5 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _addOutputDeviceToSystemMusicContext:authString:completion:]_block_invoke", v2, "[%{ptr}] Added device with deviceID=%@ to output context.");
  }

  else
  {
    v4 = [*(a1 + 40) deviceID];
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _addOutputDeviceToSystemMusicContext:authString:completion:]_block_invoke", v3, "[%{ptr}] Added device with deviceID=%@ to output context.");
  }
}

void sub_10000B624(uint64_t a1)
{
  v5 = [*(a1 + 40) deviceID];
  if (v5 && !IsAppleInternalBuild())
  {
    sub_100002AA8(&dword_1000222E0, "[APUIRouteManager _createSilentConnectionToDevice:authString:completion:]_block_invoke", v2, "[%{ptr}] Failed to create silent connection to deviceID=%@ (error=%@, reason=%@)\n");
  }

  else
  {
    v4 = [*(a1 + 40) deviceID];
    sub_100002AA8(&dword_1000222E0, "[APUIRouteManager _createSilentConnectionToDevice:authString:completion:]_block_invoke", v3, "[%{ptr}] Failed to create silent connection to deviceID=%@ (error=%@, reason=%@)\n");
  }
}

void sub_10000B6F4(uint64_t a1)
{
  v5 = [*(a1 + 40) deviceID];
  if (v5 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _createSilentConnectionToDevice:authString:completion:]_block_invoke", v2, "[%{ptr}] Created silent connection to deviceID=%@\n");
  }

  else
  {
    v4 = [*(a1 + 40) deviceID];
    sub_100002A90(&dword_1000222E0, "[APUIRouteManager _createSilentConnectionToDevice:authString:completion:]_block_invoke", v3, "[%{ptr}] Created silent connection to deviceID=%@\n");
  }
}

uint64_t sub_10000B7AC(uint64_t a1, void *a2, void *a3)
{
  APSLogErrorAt();
  if (dword_1000222E0 > 90)
  {
    return 1;
  }

  if (dword_1000222E0 != -1 || _LogCategory_Initialize())
  {
    sub_100002AA8(&dword_1000222E0, "[APUIRouteManager startIntelligentRoutingLocationSensing]", v5, "APUIRouteManager [%{ptr}] failed to get IRServiceToken.");
  }

  result = 0;
  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10000B970(const __CFString *a1, uint64_t a2)
{
  v4 = IsAppleInternalBuild();
  v5 = @"#Redacted#";
  if (v4)
  {
    v5 = a1;
  }

  return LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleBrokerResponse:]", 33554482, "[%{ptr}] Handling discovery broker response %@", a2, v5);
}

uint64_t sub_10000B9E8(uint64_t result, uint64_t a2, void *a3)
{
  if (dword_100022470 <= 90)
  {
    v5 = result;
    if (dword_100022470 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleBrokerResponse:]", 33554522, "[%{ptr}] Broker response - no request UUID specified\n", v5);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t sub_10000BA80(uint64_t result, void *a2)
{
  if (dword_100022470 <= 90)
  {
    v3 = result;
    if (dword_100022470 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleBrokerResponse:]", 33554522, "[%{ptr}] Broker response - no command specified\n", v3);
    }
  }

  *a2 = 0;
  return result;
}

void sub_10000BFB8(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_100022610, "[APUIConnectivityManager _startMonitoringWiFiEvents]", 33554522, "Start IPv4 address notification failed with error: %@", v1);
}

void sub_10000C014(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_100022610, "[APUIConnectivityManager _startMonitoringWiFiEvents]", 33554522, "Start monitoring IPv6 address notification failed with error: %@", v1);
}

void sub_10000C0B0(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = [a1 IPv6Addresses];
  v6 = [v17 objectAtIndexedSubscript:a2];
  if (v6 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF(v13, v14, v15, v16, a3, @"#Redacted#");
  }

  else
  {
    v7 = [a1 IPv6Addresses];
    v8 = [v7 objectAtIndexedSubscript:a2];
    sub_100006BF0();
    LogPrintF(v9, v10, v11, v12, a3, v8);
  }
}

void sub_10000C1A4(void *a1, uint64_t a2)
{
  v20 = [a1 IPv4Addresses];
  v5 = [v20 objectAtIndexedSubscript:0];
  if (v5 && !IsAppleInternalBuild())
  {
    v7 = 0;
    v6 = @"#Redacted#";
  }

  else
  {
    v2 = [a1 IPv4Addresses];
    v6 = [v2 objectAtIndexedSubscript:0];
    v7 = 1;
  }

  v8 = [a1 IPv4SubnetMasks];
  v9 = [v8 objectAtIndexedSubscript:0];
  if (v9 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF(v16, v17, v18, v19, a2, v6, @"#Redacted#");
  }

  else
  {
    v10 = [a1 IPv4SubnetMasks];
    v11 = [v10 objectAtIndexedSubscript:0];
    sub_100006BF0();
    LogPrintF(v12, v13, v14, v15, a2, v6, v11);
  }

  if (v7)
  {
  }
}

uint64_t sub_10000C34C(char a1, char a2, uint64_t a3)
{
  v3 = @"Enable";
  if (!a1)
  {
    v3 = @"Disable";
  }

  v4 = @"success";
  if (!a2)
  {
    v4 = @"failure";
  }

  v11 = v3;
  v12 = v4;
  sub_100006BF0();
  return LogPrintF(v5, v6, v7, v8, a3, v11, v12);
}

uint64_t sub_10000C440(uint64_t a1, __CFString *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = [(__CFString *)a2 count];
  if (v2 && !IsAppleInternalBuild())
  {
    v2 = @"#Redacted#";
  }

  sub_100006BF0();
  return LogPrintF(v5, v6, v7, v8, v3, v4, v2);
}

void sub_10000C4FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = [a2 localizedDescription];
  sub_100006BF0();
  LogPrintF(v3, v4, v5, v6, v2, v7);
}

void sub_10000C56C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = [a2 networkName];
  if (v4 && !IsAppleInternalBuild())
  {
    v6 = 0;
    v5 = @"#Redacted#";
  }

  else
  {
    v5 = [a2 networkName];
    v6 = 1;
  }

  v7 = [a2 captiveProfile];
  if (v7 && !IsAppleInternalBuild())
  {
    sub_100006BF0();
    LogPrintF(v13, v14, v15, v16, v3, v5, @"#Redacted#");
  }

  else
  {
    v8 = [a2 captiveProfile];
    sub_100006BF0();
    LogPrintF(v9, v10, v11, v12, v3, v5, v8);
  }

  if (v6)
  {
  }
}

uint64_t sub_10000C760(char a1, char a2)
{
  v2 = "no";
  if (a1)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if ((a2 & 1) == 0)
  {
    v2 = "yes";
  }

  v9 = v3;
  v10 = v2;
  sub_100006BF0();
  return LogPrintF(v4, v5, v6, v7, v9, v10);
}

uint64_t sub_10000C7C0(const __CFString *a1)
{
  v1 = a1;
  if (a1 && !IsAppleInternalBuild())
  {
    v1 = @"#Redacted#";
  }

  return LogPrintF(&dword_100022680, "+[APUIAirPlayURLParser setupPayloadFromAirPlayURL:]", 33554482, "Parsing AirPlay URL: %@", v1);
}

void sub_10000C824(void *a1)
{
  v1 = [a1 scheme];
  LogPrintF(&dword_100022680, "+[APUIAirPlayURLParser setupPayloadFromAirPlayURL:]", 33554482, "AirPlay URL scheme: %@", v1);
}

void sub_10000C898(void *a1)
{
  v1 = [a1 host];
  LogPrintF(&dword_100022680, "+[APUIAirPlayURLParser setupPayloadFromAirPlayURL:]", 33554482, "AirPlay URL host: %@", v1);
}

void sub_10000C95C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_100002A90(&dword_1000226F0, "[APUISetupViewController viewDidLoad]_block_invoke", v1, "[%{ptr}] Stopping discovery pre-warm with session [%{ptr}]");
}

void sub_10000CBB8(uint64_t a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8(&dword_1000226F0, "[APUISetupViewController _joinWiFiAndConnectToReceiverWithSetupPayload:]_block_invoke", v2, "[%{ptr}] Wifi connection failed with error %@.");
}

void sub_10000CC1C()
{
  sub_10000AA64();
  v4 = [*(v1 + 40) wifiSSID];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _joinWiFiAndConnectToReceiverWithSetupPayload:]_block_invoke", v2, "[%{ptr}] Wifi was successfully associated with %@");
  }

  else
  {
    [v0[5] wifiSSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _joinWiFiAndConnectToReceiverWithSetupPayload:]_block_invoke", v3, "[%{ptr}] Wifi was successfully associated with %@");
  }
}

void sub_10000CCD0(uint64_t a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002A90(&dword_1000226F0, "[APUISetupViewController _joinWiFiAndConnectToReceiverWithSetupPayload:]_block_invoke", v2, "[%{ptr}] Network Connectivity Error: %@");
}

uint64_t sub_10000CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _getSupportedNetworks:withSetupPayload:completion:]_block_invoke", a3, "[%{ptr}] Successfully obtained brokerGroupInfo: %@");
}

void sub_10000CD94(uint64_t a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v2, "[%{ptr}] Failed to perform broker authentication with error: %@");
}

void sub_10000CDF8()
{
  sub_10000AA64();
  v4 = [*v1 brokerToken];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v2, "[%{ptr}] Showing invalid code alert as broker token %@ is invalid");
  }

  else
  {
    [*v0 brokerToken];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v3, "[%{ptr}] Showing invalid code alert as broker token %@ is invalid");
  }
}

void sub_10000CEAC()
{
  sub_10000AA64();
  v4 = [*(v1 + 40) wifiSSID];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v2, "[%{ptr}] Switch to WiFi %@ after broker authentication failure and re-try");
  }

  else
  {
    [v0[5] wifiSSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v3, "[%{ptr}] Switch to WiFi %@ after broker authentication failure and re-try");
  }
}

uint64_t sub_10000CF60()
{
  sub_10000AA64();
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _performBrokerAuthenticationWithSetupPayload:switchWiFiIfFailed:]_block_invoke", v0, "[%{ptr}] Broker authentication succeeded with setupTargetReceiverDeviceID: %@");
}

void sub_10000CFBC(uint64_t a1, uint64_t a2)
{
  [sub_10000AA7C(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8(&dword_1000226F0, "[APUISetupViewController _connectToAirPlayReceiverWithDeviceID:andSetupPayload:]_block_invoke", v2, "[%{ptr}] presentAirPlaySetupProxCardWithSetupPayload:Failed to pick route %@");
}

void sub_10000D020()
{
  sub_10000AA64();
  v4 = [*(v1 + 40) receiverToken];
  if (v4 && !IsAppleInternalBuild())
  {
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _connectToAirPlayReceiverWithDeviceID:andSetupPayload:]_block_invoke", v2, "[%{ptr}] Showing invalid code alert as AirPlay receiver token %@ has expired");
  }

  else
  {
    [v0[5] receiverToken];
    objc_claimAutoreleasedReturnValue();
    sub_10000AA88();
    sub_100002A90(&dword_1000226F0, "[APUISetupViewController _connectToAirPlayReceiverWithDeviceID:andSetupPayload:]_block_invoke", v3, "[%{ptr}] Showing invalid code alert as AirPlay receiver token %@ has expired");
  }
}

uint64_t sub_10000D150()
{
  sub_10000AA64();
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _presentAirPlayConnectionProxCardWithSetupPayload:]_block_invoke", v0, "[%{ptr}] presentAirPlayConnectionProxCardWithSetupPayload: Multiple network feature is not enabled. Current network (%@) is not the same as network in payload, try to connect to WiFi");
}

uint64_t sub_10000D1AC()
{
  sub_10000AA64();
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _presentAirPlayConnectionProxCardWithSetupPayload:]_block_invoke", v0, "[%{ptr}] presentAirPlayConnectionProxCardWithSetupPayload: Multiple network feature is not enabled. Current network (%@) is the same as network in payload, try broker authentication");
}

uint64_t sub_10000D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _presentAirPlayConnectionProxCardWithSetupPayload:]_block_invoke_2", a3, "[%{ptr}] presentAirPlayConnectionProxCardWithSetupPayload: Multiple network feature is enabled. Current network (%@) is not supported and is not the same network in payload, try to connect to WiFi.");
}

uint64_t sub_10000D270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    IsAppleInternalBuild();
  }

  return sub_100002A90(&dword_1000226F0, "[APUISetupViewController _presentAirPlayConnectionProxCardWithSetupPayload:]_block_invoke_2", a3, "[%{ptr}] presentAirPlayConnectionProxCardWithSetupPayload: Multiple network feature is enabled. Current network (%@) is supported, try broker authentication.");
}

void sub_10000D390(uint64_t a1, void *a2)
{
  [a2 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8(&dword_1000226F0, "[APUISetupViewController configureWithContext:completion:]_block_invoke", v2, "[%{ptr}]:Failed to configure remote alert %@");
}

void sub_10000D434(uint64_t a1, void *a2)
{
  [a2 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10000AA70();
  sub_100002AA8(&dword_1000226F0, "[APUISetupViewController prepareForActivationWithContext:completion:]_block_invoke", v2, "[%{ptr}]: Failed to activate remote alert %@");
}

void sub_10000D49C(void *a1)
{
  v1 = [a1 URL];
  LogPrintF(&dword_100022820, "[SceneDelegate scene:willConnectToSession:options:]", 33554462, "willConnectToSession - URL: %@", v1);
}

void sub_10000D4FC(void *a1)
{
  v1 = [a1 URL];
  LogPrintF(&dword_100022820, "[SceneDelegate scene:openURLContexts:]", 33554462, "willConnectToSession - URL: %@", v1);
}