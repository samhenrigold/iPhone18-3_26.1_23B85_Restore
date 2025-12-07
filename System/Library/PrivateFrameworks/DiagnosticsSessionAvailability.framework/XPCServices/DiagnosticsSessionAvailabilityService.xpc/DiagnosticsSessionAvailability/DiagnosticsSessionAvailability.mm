int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 activate];

  return 0;
}

id DSLogSessionAvailability(uint64_t a1)
{
  if (qword_10001C0B0 != -1)
  {
    sub_10000AFDC();
  }

  v2 = qword_10001C0A8;

  return v2;
}

void sub_100001368(id a1)
{
  qword_10001C0A8 = os_log_create("com.apple.DiagnosticsSessionAvailability", "service");

  _objc_release_x1();
}

void sub_1000015B0(uint64_t a1)
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_100001AD0;
  v52[4] = sub_100001AE0;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100001AD0;
  v50 = sub_100001AE0;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(a1 + 32);
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100001AE8;
  v33 = &unk_1000144B8;
  v38 = &v42;
  v4 = v2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v34 = v4;
  v35 = v5;
  v36 = v6;
  v37 = *(a1 + 48);
  v39 = &v54;
  v40 = v52;
  v41 = &v46;
  [v3 _getHasActiveEnhancedLoggingSessionWithCompletionHandler:&v30];
  v7 = *(a1 + 48);
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = dispatch_time(0, (v9 * 1000000000.0));
  v11 = dispatch_group_wait(v4, v10);
  if (v11)
  {
    v12 = DSLogSessionAvailability(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000AFF0(v12, v9);
    }

    v14 = DSLogSessionAvailability(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 64);
      *buf = 67109120;
      v59 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning timeout error to client PID %d", buf, 8u);
    }

    v16 = [NSError errorWithDomain:@"com.apple.DiagnosticsSessionAvailability" code:0 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (*(v43 + 24) == 1)
    {
      v17 = DSLogSessionAvailability(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 64);
        *buf = 67109120;
        v59 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Returning status activeEnhancedLogging to client PID %d", buf, 8u);
      }

      v19 = 0;
      v20 = *(a1 + 56);
      v21 = &off_100015328;
    }

    else if (*(v55 + 24) == 1)
    {
      v22 = [*(a1 + 32) _getHasActiveDiagnosticsSession];
      v23 = v22;
      v24 = DSLogSessionAvailability(v22);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          v26 = *(a1 + 64);
          *buf = 67109120;
          v59 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning session status activeDiagnostics to client PID %d", buf, 8u);
        }

        v19 = 0;
        v20 = *(a1 + 56);
        v21 = &off_100015340;
      }

      else
      {
        if (v25)
        {
          v29 = *(a1 + 64);
          *buf = 67109120;
          v59 = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning session status available to client PID %d", buf, 8u);
        }

        v19 = 0;
        v20 = *(a1 + 56);
        v21 = &off_100015358;
      }
    }

    else
    {
      v27 = DSLogSessionAvailability(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 64);
        *buf = 67109120;
        v59 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Returning session status unavailable to client PID %d", buf, 8u);
      }

      v20 = *(a1 + 56);
      v19 = v47[5];
      v21 = &off_100015310;
    }

    (*(v20 + 16))(v20, v21, v19);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
}

void sub_100001A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001AE8(uint64_t a1, int a2)
{
  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (a2)
  {
    v4 = *(a1 + 32);

    dispatch_group_leave(v4);
  }

  else
  {
    v12 = v2;
    v13 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001BBC;
    v8[3] = &unk_100014490;
    v10 = *(a1 + 72);
    v11 = *(a1 + 88);
    v9 = *(a1 + 32);
    [v5 _getASTSessionStatusForTicketNumber:v6 timeout:v7 completion:v8];
  }
}

void sub_100001BBC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100001D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 30.0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001E54;
  v8[3] = &unk_100014508;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [ASTSession sessionStatusForIdentities:v3 ticketNumber:v7 timeout:0 requestQueuedSuiteInfo:v8 completionHandler:v6];
}

void sub_100001E54(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = DSLogSessionAvailability(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = a2;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AST sessionExists: %d, info: %@, error: %@", v10, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSessionAvailability(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [v3 status];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ELS status: %lu", &v7, 0xCu);
  }

  v5 = [v3 status];
  v6 = DSLogSessionAvailability(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    LODWORD(v8) = v5 > 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Active Enhanced Logging session: %d", &v7, 8u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002494(uint64_t a1, void *a2)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000026AC;
  v17[3] = &unk_100014580;
  v18 = *(a1 + 32);
  v4 = DSLogSessionAvailability([a2 enumerateObjectsUsingBlock:v17]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Discovery complete, found: %@", buf, 0xCu);
  }

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [ASTIdentity identityWithSerialNumber:*(*(&v13 + 1) + 8 * v11), v13];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000026AC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 state];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 state];
    v6 = [v5 serialNumber];
    if (v6)
    {
      v7 = v6;
      v8 = [v12 state];
      v9 = [v8 serialNumber];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 32);
      v4 = [v12 state];
      v5 = [v4 serialNumber];
      [v11 addObject:v5];
    }
  }

LABEL_6:
}

void sub_1000029E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100002BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New devices: %@", &v7, 0xCu);
  }

  [WeakRetained setDevices:v3];
  v6 = [WeakRetained delegate];
  [v6 observerDidChangeDevices:WeakRetained];
}

void sub_100002E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002E40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDevices:v3];
  v4 = [WeakRetained delegate];
  [v4 observerDidChangeDevices:WeakRetained];

  (*(*(a1 + 32) + 16))();
}

void sub_1000035C4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = dispatch_group_create();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = a1;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100003790;
        v11[3] = &unk_100014620;
        v12 = v2;
        v13 = v3;
        [v9 oneshotWithHandler:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  (*(*(v10 + 40) + 16))();
}

void sub_100003790(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  v5 = [v6 allObjects];
  [v4 addObjectsFromArray:v5];

  objc_sync_exit(v3);
  dispatch_group_leave(*(a1 + 40));
}

void sub_100003DCC(uint64_t a1)
{
  if (NSClassFromString(@"DADeviceLocal"))
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = MGCopyAnswer();
    v6 = [[DADeviceRepresentation alloc] initWithSerialNumber:v3 isLocal:1 attributes:&__NSDictionary0__struct];

    v2 = v6;
  }

  v4 = *(a1 + 32);
  v7 = v2;
  v5 = [NSSet setWithObject:v2];
  (*(v4 + 16))(v4, v5);
}

void sub_100006280(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"info";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"com.apple.Diagnostics.deviceStateChangedNotification" object:v4 userInfo:v5];
}

void sub_1000070DC(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  qword_10001C0B8 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_1000076B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchDevices];
  (*(*(a1 + 40) + 16))();
}

id sub_100007800(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_10000792C(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_100007DE8(uint64_t a1)
{
  v2 = [*(a1 + 32) devices];
  v12 = [v2 copy];

  v3 = [*(a1 + 32) _fetchDevices];
  v4 = [*(a1 + 32) devices];
  v5 = [v4 mutableCopy];

  [v5 minusSet:v3];
  v6 = [v3 mutableCopy];
  v7 = [*(a1 + 32) devices];
  [v6 minusSet:v7];

  v8 = [*(a1 + 32) devices];
  [v8 minusSet:v5];

  v9 = [*(a1 + 32) devices];
  [v9 unionSet:v6];

  v10 = [*(a1 + 32) devices];
  v11 = [v12 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [*(a1 + 32) _updateHandlers];
  }
}

void sub_100008328(id a1)
{
  qword_10001C0C8 = [NSSet setWithObjects:@"Accessory.SmartBatteryCase", 0];

  _objc_release_x1();
}

void sub_100008B98(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePaired:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_nanoRegistryDeviceUnpaired:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
}

void sub_100008D04(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 addObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_100008F08(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device disconnected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 removeObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_1000091DC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_1000092BC(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getPairedDevices];

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];

  if ([v6 count])
  {
    v7 = [v3 arrayByAddingObjectsFromArray:v6];

    v3 = v7;
  }

  v25 = v6;
  v8 = [*(a1 + 32) devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(a1 + 32) _createDeviceWithNanoDevice:*(*(&v26 + 1) + 8 * i)];
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 state];
          v18 = [v17 serialNumber];
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", buf, 0xCu);
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }

  v19 = [*(a1 + 32) devices];
  v20 = [v19 mutableCopy];

  [v20 minusSet:v9];
  v21 = [v9 mutableCopy];
  v22 = [*(a1 + 32) devices];
  [v21 minusSet:v22];

  v23 = [*(a1 + 32) devices];
  [v23 minusSet:v20];

  v24 = [*(a1 + 32) devices];
  [v24 unionSet:v21];

  [*(a1 + 32) _updateHandlers];
}

void sub_100009C60(id a1)
{
  v1 = dispatch_queue_create("com.apple.Diagnostics.airpodsObservationQueue", 0);
  v2 = qword_10001C0E0;
  qword_10001C0E0 = v1;

  v3 = qword_10001C0E0;

  [BluetoothManager setSharedInstanceQueue:v3];
}

void sub_100009CB8(uint64_t a1)
{
  v2 = +[BluetoothManager sharedInstance];
  [*(a1 + 32) setBtManager:v2];
}

void sub_100009DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) btManager];
  if (!v2 || (v3 = v2, [*(a1 + 32) btManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "available"), v4, v3, (v5 & 1) == 0))
  {
    v6 = [*(a1 + 32) btManagerAvailableSemaphore];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  [*(a1 + 32) _ensureInitialDevicesFetched];
  [*(a1 + 32) _updateHandlers];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) devices];
  (*(v8 + 16))(v8, v9);
}

id sub_100009F7C(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_10000A0A8(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_10000AF58(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.private.DiagnosticsSessionAvailability.client";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Rejecting connection due to missing entitlement %@", &v1, 0xCu);
}

void sub_10000AFF0(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request timed out after %f seconds", &v2, 0xCu);
}

void sub_10000B06C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DSDiagnosticsSessionAvailabilityService _getASTSessionStatusForTicketNumber:timeout:completion:]";
  sub_1000029E0(&_mh_execute_header, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10000B0E4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DSDiagnosticsSessionAvailabilityService _getHasActiveDiagnosticsSession]";
  sub_1000029E0(&_mh_execute_header, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10000B15C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DSDiagnosticsSessionAvailabilityService _getHasActiveEnhancedLoggingSessionWithCompletionHandler:]";
  sub_1000029E0(&_mh_execute_header, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10000B1D4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unhandled ELSStatus case: %lu", &v2, 0xCu);
}

void sub_10000B274(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No serial numbers are present for paired airpods device %@", &v2, 0xCu);
}

void sub_10000B314(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add Bluetooth device: %@", &v2, 0xCu);
}