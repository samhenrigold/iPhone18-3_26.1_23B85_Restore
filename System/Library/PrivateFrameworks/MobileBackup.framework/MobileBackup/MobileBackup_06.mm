void sub_10015F8CC(uint64_t a1)
{
  v2 = [[MBMessage alloc] initWithName:@"kMBMessageDidFinishVerification" arguments:0];
  [*(a1 + 32) _sendMessage:v2 connections:*(*(a1 + 32) + 16)];
}

void sub_10015F9E0(uint64_t a1)
{
  v2 = [MBMessage alloc];
  v6[0] = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];
  v5 = [v2 initWithName:@"kMBMessageDidScanBundle" arguments:v4];

  [*(a1 + 40) _sendMessage:v5 connections:*(*(a1 + 40) + 16)];
}

void sub_10015FB88(uint64_t a1)
{
  v2 = [MBMessage alloc];
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56), *(a1 + 32), *(a1 + 40)];
  v6[2] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:3];
  v5 = [v2 initWithName:@"kMBMessageDidScanDomainForBundle" arguments:v4];

  [*(a1 + 48) _sendMessage:v5 connections:*(*(a1 + 48) + 16)];
}

void sub_10015FD4C(uint64_t a1)
{
  v2 = [MBMessage alloc];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = [NSArray arrayWithObjects:&v5 count:3];
  v4 = [v2 initWithName:@"kMBMessageDidScanFilesForBundle" arguments:v3];

  [*(a1 + 56) _sendMessage:v4 connections:*(*(a1 + 56) + 16)];
}

void sub_10015FEAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v4;
  v6 = [MBMessage messageWithName:@"kMBMessageDidFinishRestore" arguments:0];
  [*(a1 + 40) _sendMessage:v6 connections:v5];
}

void sub_10016004C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v9 = v2;
    v4 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v4;
  v8 = *(a1 + 48);
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [MBMessage messageWithName:@"kMBMessageDidFinishFileRestore" arguments:v6];

  [*(a1 + 40) _sendMessage:v7 connections:v5];
}

void sub_1001601C8(uint64_t a1)
{
  v2 = [[MBMessage alloc] initWithName:@"kMBMessageDidCancelRestore" arguments:0];
  [*(a1 + 32) _sendMessage:v2 connections:*(*(a1 + 32) + 16)];
}

void sub_1001602A8(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = @"kMBMessageDidFinishBackup";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Sending %{public}@", @"kMBMessageDidFinishBackup");
  }

  v3 = [MBMessage messageWithName:@"kMBMessageDidFinishBackup" arguments:0];
  [*(a1 + 32) _sendBarrierMessage:v3];
}

void sub_10016052C(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543618;
    v7 = @"kMBMessageDidFailBackup";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending %{public}@: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Sending %{public}@: %{public}@", @"kMBMessageDidFailBackup", *(a1 + 32));
  }

  v4 = [MBMessage messageWithName:@"kMBMessageDidFailBackup" arguments:0];
  v5 = [MBError sanitizedError:*(a1 + 32)];
  [v4 setError:v5];

  [*(a1 + 40) _sendBarrierMessage:v4];
}

void sub_1001606D8(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = @"kMBMessageDidFinishScan";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Sending %{public}@", @"kMBMessageDidFinishScan");
  }

  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  v5 = [MBMessage messageWithName:@"kMBMessageDidFinishScan" arguments:v4];

  [*(a1 + 32) _sendBarrierMessage:v5];
}

void sub_1001609A0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543618;
    v7 = @"kMBMessageDidFailScan";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending %{public}@: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Sending %{public}@: %{public}@", @"kMBMessageDidFailScan", *(a1 + 32));
  }

  v4 = [MBMessage messageWithName:@"kMBMessageDidFailScan" arguments:0];
  v5 = [MBError sanitizedError:*(a1 + 32)];
  [v4 setError:v5];

  [*(a1 + 40) _sendBarrierMessage:v4];
}

void sub_100160B70(uint64_t a1)
{
  v3 = [MBMessage messageWithName:@"kMBMessageDidFailVerification" arguments:0];
  v2 = [MBError sanitizedError:*(a1 + 32)];
  [v3 setError:v2];

  [*(a1 + 40) _sendMessage:v3 connections:*(*(a1 + 40) + 16)];
}

void sub_100160CC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v4;
  v6 = [MBMessage messageWithName:@"kMBMessageDidFailRestore" arguments:0];
  v7 = [MBError sanitizedError:*(a1 + 48)];
  [v6 setError:v7];

  [*(a1 + 40) _sendMessage:v6 connections:v5];
}

void sub_100160EB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v10 = v2;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v4;
  v9 = *(a1 + 48);
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [MBMessage messageWithName:@"kMBMessageDidFailFileRestore" arguments:v6];

  v8 = [MBError sanitizedError:*(a1 + 56)];
  [v7 setError:v8];

  [*(a1 + 40) _sendMessage:v7 connections:v5];
}

void sub_100161100(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) name];
    v6 = *(a1 + 40);
    *buf = 138543874;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ %{public}@", buf, 0x20u);

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) name];
    _MBLog(@"Df", "%{public}@ received %{public}@ %{public}@", v7, v8, *(a1 + 40));
  }

  [*(a1 + 40) setConnection:*(a1 + 32)];
  [*(a1 + 48) _handleRequest:*(a1 + 40)];
  v9 = +[MBDaemon sharedDaemon];
  [v9 releaseWorkAssertion:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_1001613A8(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceManager];
  [v2 cancelRestoreEnginesWithReason:1 connection:*(a1 + 40)];

  v3 = [*(a1 + 32) serviceManager];
  [v3 cancelDeviceTransferWithConnection:*(a1 + 40)];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

id sub_100161418(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 removeObject:v2];
}

void sub_100161EFC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!(v8 | v5))
  {
    __assert_rtn("[MBXPCServer _startPreflight:]_block_invoke", "MBXPCServer.m", 2533, "preflightInfo || error");
  }

  v6 = v5;
  [*(a1 + 32) setReply:v8];
  if (!v8)
  {
    v7 = [MBError sanitizedError:v6];
    [*(a1 + 32) setReplyError:v7];
  }

  [*(a1 + 32) sendReply];
}

void sub_100162090(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!(v8 | v5))
  {
    __assert_rtn("[MBXPCServer _startKeychainDataTransfer:]_block_invoke", "MBXPCServer.m", 2544, "keychainInfo || error");
  }

  v6 = v5;
  [*(a1 + 32) setReply:v8];
  if (!v8)
  {
    v7 = [MBError sanitizedError:v6];
    [*(a1 + 32) setReplyError:v7];
  }

  [*(a1 + 32) sendReply];
}

void sub_100162280(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [NSNumber numberWithBool:v5 == 0];
  [*(a1 + 32) setReply:v3];

  if (v5)
  {
    v4 = [MBError sanitizedError:v5];
    [*(a1 + 32) setReplyError:v4];
  }

  [*(a1 + 32) sendReply];
}

void sub_10016244C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [NSNumber numberWithBool:v5 == 0];
  [*(a1 + 32) setReply:v3];

  if (v5)
  {
    v4 = [MBError sanitizedError:v5];
    [*(a1 + 32) setReplyError:v4];
  }

  [*(a1 + 32) sendReply];
}

id sub_1001632AC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("[MBXPCServer _respondSynchronouslyTo:description:withAccount:]_block_invoke", "MBXPCServer.m", 2705, "error");
  }

  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:a2];

  if (v6)
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *a2;
      *buf = 138412546;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to %@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to %@ due to nil account: %{public}@", *(a1 + 32), *a2);
    }

    v7 = 0;
  }

  return v7;
}

void sub_100163690(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.backupd.backupOnCellularEnablement", v3);
  v2 = qword_100421848;
  qword_100421848 = v1;
}

void sub_1001639DC(uint64_t a1)
{
  [*(a1 + 32) _cleanupStaleStateWithAccount:*(*(a1 + 32) + 128)];
  v2 = [@"com.apple.mobile.data_eschaton" UTF8String];
  v3 = *(a1 + 32);
  v4 = dispatch_get_global_queue(25, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100163B5C;
  handler[3] = &unk_1003BFD28;
  v13 = v3;
  notify_register_dispatch(v2, v3 + 22, v4, handler);

  v5 = dispatch_source_create(&_dispatch_source_type_vfs, 0, 0x204uLL, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = *(a1 + 32);
  v9 = v8[13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100163B64;
  v10[3] = &unk_1003BC0B0;
  v11 = v8;
  dispatch_source_set_event_handler(v9, v10);
}

id sub_100163B64(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Low disk space; canceling background restore engines", v4, 2u);
    _MBLog(@"Df", "Low disk space; canceling background restore engines");
  }

  return [*(a1 + 32) _cancelAllBackgroundRestoreEngines];
}

void sub_100164CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100164D0C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reachabilityMonitorDidDetectWifiStatusChange:a2];
}

void sub_100164D5C(uint64_t a1)
{
  v2 = +[MBUserNotification notification];
  [v2 setIdentifier:@"WarnRestoreTimedOut"];
  [v2 setInterval:86400.0];
  v3 = MBLocalizedStringFromTable();
  [v2 setTitle:v3];

  v4 = MBLocalizedStringFromTable();
  [v2 setBody:v4];

  v5 = MBLocalizedStringFromTable();
  [v2 setButton:v5];

  v6 = MBLocalizedStringFromTable();
  [v2 setAlternateButton:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100164EE4;
  v8[3] = &unk_1003BFD28;
  v8[4] = *(a1 + 32);
  [v2 setCompletionBlock:v8];
  v7 = +[MBUserNotificationManager sharedManager];
  [v7 presentUserNotification:v2 account:*(a1 + 40)];
}

id *sub_100164EE4(id *result, int a2)
{
  if (a2 == 1)
  {
    return [result[4] cancelRestore];
  }

  return result;
}

void sub_10016560C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10016517CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001656E0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleanup: Removing %@", buf, 0xCu);
    _MBLog(@"Df", "Cleanup: Removing %@", *(a1 + 32));
  }

  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 disposeWithError:&v12];
  v6 = v12;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cleanup: Finished removing %@", buf, 0xCu);
      _MBLog(@"Df", "Cleanup: Finished removing %@", *(a1 + 32));
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cleanup: Failed to remove %@ : %@", buf, 0x16u);
    _MBLog(@"E ", "Cleanup: Failed to remove %@ : %@", *(a1 + 32), v6);
  }

  v11 = +[MBDaemon sharedDaemon];
  [v11 releaseWorkAssertion:*(a1 + 40)];
}

void sub_100165B78(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v1 = MBGetDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Ignoring keybag is locking notification while busy", v5, 2u);
      _MBLog(@"I ", "Ignoring keybag is locking notification while busy");
    }
  }

  else
  {
    v3 = +[MBDaemon sharedDaemon];
    [v3 holdWorkAssertion:*(a1 + 40)];

    v4 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100165C9C;
    block[3] = &unk_1003BDAE8;
    v7 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void sub_100165C9C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceEncryptionManager];
  [v2 keybagIsLocking];

  v3 = +[MBDaemon sharedDaemon];
  [v3 releaseWorkAssertion:*(a1 + 40)];
}

void sub_100165F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 5 && !*(v2 + 16))
  {
    v5 = *(a1 + 40);
    v14 = 0;
    v6 = [v5 loadRestoreKeyBagsByIDWithError:&v14];
    v3 = v14;
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    if (*(*(a1 + 32) + 16))
    {
      goto LABEL_4;
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MBError descriptionForError:v3];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error loading restore keybags when device unlocked: %@", buf, 0xCu);

      v11 = [MBError descriptionForError:v3];
      _MBLog(@"Df", "Error loading restore keybags when device unlocked: %@", v11);
    }

    v12 = [*(a1 + 32) account];
    v13 = [v12 persona];
    [v13 setPreferencesValue:&__kCFBooleanTrue forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
  }

  v3 = 0;
LABEL_4:
  v4 = objc_opt_self();
}

id sub_100166118(uint64_t a1)
{
  [*(a1 + 32) keybagIsUnlocked];
  v2 = +[MBDaemon sharedDaemon];
  [v2 releaseWorkAssertion:*(a1 + 48)];

  return objc_opt_self();
}

uint64_t sub_1001665D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001665EC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    [v2 makeObjectsPerformSelector:"cancel"];
    v3 = *(*(a1 + 32) + 64);
    v4 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v3, v4))
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Timed out while canceling engines"]);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v5 deleteBackupForUDID:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100166760;
    v12 = &unk_1003BFF20;
    v13 = *(a1 + 48);
    MBPerformWithCache(&v9);
    if (*(a1 + 88) == 1)
    {
      [*(a1 + 32) setBackupEnabled:0 account:*(a1 + 56) connection:{*(a1 + 64), v9, v10, v11, v12}];
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

id sub_100166878(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if (v2 != 5)
  {
    if (v2)
    {
      [*(v1 + 72) makeObjectsPerformSelector:"cancel"];
    }

    else
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MBS: Ignoring cancel request while idle", v5, 2u);
        _MBLog(@"I ", "MBS: Ignoring cancel request while idle");
      }
    }
  }

  return objc_opt_self();
}

void *sub_100166A24(void *result)
{
  v1 = result[4];
  if (*(v1 + 48) == 5)
  {
    return [*(v1 + 72) makeObjectsPerformSelector:"cancel"];
  }

  return result;
}

uint64_t sub_100166D58(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) loadRestoreStateWithAccount:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_100167940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100167888);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001679BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MBDeviceUDID_Legacy();
  v4 = [v3 backupForUDID:v5 lastModified:0];

  *(*(*(a1 + 32) + 8) + 24) = v4 != 0;
}

void sub_100167D80(uint64_t a1)
{
  v2 = +[MBUserNotification notification];
  [v2 setIdentifier:@"DidFinishRestore"];
  v3 = +[NSDate distantFuture];
  [v3 timeIntervalSinceReferenceDate];
  [v2 setInterval:?];

  v4 = MBLocalizedStringFromTable();
  [v2 setTitle:v4];

  v5 = MBLocalizedStringFromTable();
  [v2 setBody:v5];

  v6 = MBLocalizedStringFromTable();
  [v2 setButton:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100167F7C;
  v14[3] = &unk_1003BC0B0;
  v15 = *(a1 + 32);
  [v2 setDisplayedBlock:v14];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100167F94;
  v12 = &unk_1003BFD28;
  v13 = *(a1 + 32);
  [v2 setCompletionBlock:&v9];
  v7 = [MBUserNotificationManager sharedManager:v9];
  v8 = [*(a1 + 40) account];
  [v7 presentUserNotification:v2 account:v8];
}

void sub_1001680D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[12] - 4) <= 2)
  {
    v3 = [v2 lockManager];
    [v3 releaseLockAsync];
  }
}

void sub_1001682D0(id a1, int a2)
{
  if (!a2)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v3 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v4 openSensitiveURL:v3 withOptions:0];
  }
}

void sub_100168494(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *(v2 + 32) = 0;
    v7 = +[MBUserNotificationManager sharedManager];
    v3 = [*(a1 + 32) account];
    [v7 cancelNotificationWithIdentifier:@"NeedsWifiAlert" account:v3];
  }

  else if ((*(v2 + 32) & 1) == 0)
  {
    *(v2 + 32) = 1;
    v4 = dispatch_time(0, 30000000000);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001685BC;
    block[3] = &unk_1003BC0B0;
    block[4] = v5;
    dispatch_after(v4, v6, block);
  }
}

_BYTE *sub_1001685BC(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 32))
    {
      v3 = "Y";
    }

    else
    {
      v3 = "N";
    }

    *buf = 136315138;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Timer fired, armed state: %s", buf, 0xCu);
    if (*(*(a1 + 32) + 32))
    {
      v4 = "Y";
    }

    else
    {
      v4 = "N";
    }

    _MBLog(@"I ", "Timer fired, armed state: %s", v4);
  }

  result = *(a1 + 32);
  if (result[32] == 1)
  {
    result = [result _notifyDisplayWifi];
    *(*(a1 + 32) + 32) = 0;
  }

  return result;
}

void sub_100168DFC(id a1)
{
  qword_100421880 = objc_alloc_init(MBDaemon);

  _objc_release_x1();
}

void sub_1001697D4(id a1)
{
  if (MBIsInternalInstall() && (v1 = getenv("MBDaemonIdleTimerInterval")) != 0)
  {
    v2 = strtol(v1, 0, 10);
    if ((v2 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v3 = 30;
    }

    else
    {
      v3 = v2;
    }

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=daemon= MBDaemonIdleTimerInterval=%ld", buf, 0xCu);
      _MBLog(@"Df", "=daemon= MBDaemonIdleTimerInterval=%ld", v3);
    }
  }

  else
  {
    v3 = 30;
  }

  qword_100421890 = v3;
}

void sub_1001698D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && !WeakRetained[2] && [WeakRetained _shouldIdleExit])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "=daemon= Idled. Stopping service.", v4, 2u);
      _MBLog(@"I ", "=daemon= Idled. Stopping service.");
    }

    [v2 shutdown];
  }
}

id sub_100169C04(uint64_t a1)
{
  v1 = *(a1 + 32);
  Name = class_getName(*(a1 + 40));

  return [v1 _holdWorkAssertionWithDescription:Name];
}

id sub_100169CC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  Name = sel_getName(*(a1 + 40));

  return [v1 _holdWorkAssertionWithDescription:Name];
}

id sub_100169F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  Name = class_getName(*(a1 + 40));

  return [v1 _releaseWorkAssertionWithDescription:Name];
}

id sub_100169FB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  Name = sel_getName(*(a1 + 40));

  return [v1 _releaseWorkAssertionWithDescription:Name];
}

id sub_10016A15C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UTF8String];

  return [v1 _holdWorkAssertionWithDescription:v2];
}

id sub_10016A19C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UTF8String];

  return [v1 _releaseWorkAssertionWithDescription:v2];
}

void sub_10016BF7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _sendDoneMessageWithError:*(a1 + 40)];
  }

  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing the FT session", buf, 2u);
    _MBLog(@"Df", "Finishing the FT session");
  }

  v4 = [*(a1 + 32) fileTransferSession];
  [v4 finish];

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating the FT session", v7, 2u);
    _MBLog(@"Df", "Invalidating the FT session");
  }

  v6 = [*(a1 + 32) fileTransferSession];
  [v6 invalidate];

  objc_autoreleasePoolPop(v2);
}

void sub_10016C0B0(uint64_t a1)
{
  [*(a1 + 32) _cleanUpBackupEngine];
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, *(a1 + 40));

    [*(a1 + 32) setCompletionHandler:0];
  }

  v4 = [*(a1 + 32) delegate];
  [*(a1 + 32) setDelegate:0];
  if (!v4)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _finishWithError:]_block_invoke", "MBSourceDeviceTransferEngine.m", 216, "delegate");
  }

  v5 = [*(a1 + 32) connection];
  [v4 connection:v5 didFinishDeviceTransferWithError:*(a1 + 40)];

  if (*(a1 + 40))
  {
    v6 = [MBError loggableDescriptionForError:?];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 64);
      v10 = *(a1 + 40);
      *buf = 138413058;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "========== %@ failed after %.3fs: %{public}@: %@", buf, 0x2Au);
      v11 = objc_opt_class();
      _MBLog(@"E ", "========== %@ failed after %.3fs: %{public}@: %@", v11, *(a1 + 64), v6, *(a1 + 40));
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 64);
      *buf = 138412546;
      v18 = v12;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "========== %@ finished in %.3fs", buf, 0x16u);
      v14 = objc_opt_class();
      _MBLog(@"Df", "========== %@ finished in %.3fs", v14, *(a1 + 64));
    }
  }

  [*(a1 + 48) drop];
  v15 = objc_opt_self();
  v16 = +[MBDaemon sharedDaemon];
  [v16 releaseWorkAssertion:*(a1 + 72)];
}

void sub_10016C6B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to send %@: %@", *(a1 + 32), v6);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10016CC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016CC4C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cancelDisconnectTimer];
    v5 = atomic_load(v4 + 99);
    if (v5)
    {
      v6 = [MBError errorWithCode:15 format:@"Timed out"];
      [v4 _finishWithError:v6];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016D840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10016D87C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FT session completion handler called: %@", buf, 0xCu);
      _MBLog(@"Df", "FT session completion handler called: %@", v3);
    }

    [WeakRetained _finishWithError:v3];
  }
}

void sub_10016D96C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v7 = v3;
      v8 = 2048;
      v9 = [v3 linkType];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FT session progress handler called with %@, linkType:%ld", buf, 0x16u);
      _MBLog(@"Df", "FT session progress handler called with %@, linkType:%ld", v3, [v3 linkType]);
    }

    [WeakRetained _handleFileTransferSessionProgress:v3];
  }
}

void sub_10016E398(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v22 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v22, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  v12 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v12);

  [*(a1 + 32) setPeerInitRequest:v7];
  v13 = [*(a1 + 32) progressModel];
  [v13 updateTotalProgressWithPhaseProgress:1 phase:0.0];

  v14 = [*(a1 + 32) _handleError:v8];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v24 = MBDeviceName();
    v23 = MBDeviceClass();
    v16 = MBDeviceUDID_Legacy();
    v17 = MBBuildVersion();
    v18 = MBProductVersion();
    v15 = [[MBPeerInitResponse alloc] initWithSourceDeviceUDID:v16 deviceName:v24 deviceClass:v23 buildVersion:v17 productVersion:v18];
    MBRequiredProductVersion([*(a1 + 32) engineType]);
    v20 = v19 = v7;
    [(MBPeerInitResponse *)v15 setSourceRequiredProductVersion:v20];

    v7 = v19;
  }

  v9[2](v9, v15, v14);
  v21 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v21);
}

void sub_10016E66C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v17 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v17, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  v12 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v12);

  v13 = [*(a1 + 32) progressModel];
  [v13 updateTotalProgressWithPhaseProgress:2 phase:0.0];

  v14 = [*(a1 + 32) _handleError:v8];
  if (v14)
  {
    v9[2](v9, 0, v14);
    v15 = [*(a1 + 32) peerTaskGroup];
    dispatch_group_leave(v15);
  }

  else
  {
    v16 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016E900;
    block[3] = &unk_1003BF838;
    block[4] = *(a1 + 32);
    v19 = v7;
    v20 = 0;
    v21 = v9;
    dispatch_async(v16, block);
  }
}

void sub_10016E900(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  for (i = 1; ; i = 0)
  {
    [*(a1 + 32) _cancelBackupEngine];
    v3 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016EE84;
    block[3] = &unk_1003BC0B0;
    block[4] = *(a1 + 32);
    dispatch_sync(v3, block);

    if (([*(a1 + 32) isCanceled] & 1) == 0)
    {
      v4 = +[MBCacheDeleteRequest purgeRequestForSourceD2DPreflight];
      v5 = *(a1 + 32);
      if (v4)
      {
        [v5 setCacheDeleteRequest:v4];
      }

      else
      {
        v6 = [v5 cacheDeleteRequest];
        [*(a1 + 32) setCacheDeleteRequest:v6];
      }

      v7 = [*(a1 + 32) cacheDeleteRequest];
      v8 = [v7 purge];

      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CacheDelete purged %llu bytes", buf, 0xCu);
        _MBLog(@"Df", "CacheDelete purged %llu bytes", v8);
      }
    }

    v10 = [*(a1 + 32) _backupEngineWithPreflightRequest:*(a1 + 40)];
    [*(a1 + 32) setDriveBackupEngine:v10];
    if ([*(a1 + 32) isCanceled])
    {
      [v10 cancel];
    }

    v11 = [v10 preflight];
    if (v11)
    {
      break;
    }

    v12 = [v10 uploadSize];
    if ((i & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = +[MBCacheDeleteRequest purgeRequestForSourceD2DUploadSize:targetFreeDiskSpace:](MBCacheDeleteRequest, "purgeRequestForSourceD2DUploadSize:targetFreeDiskSpace:", v12, [*(a1 + 40) freeDiskSpace]);
    v14 = *(a1 + 32);
    if (v13)
    {
      [v14 setCacheDeleteRequest:v13];
    }

    else
    {
      v15 = [v14 cacheDeleteRequest];
      [*(a1 + 32) setCacheDeleteRequest:v15];
    }

    v16 = [*(a1 + 32) cacheDeleteRequest];

    if (!v16)
    {
LABEL_20:
      v21 = [v10 uploadFileCount];
      v22 = [v10 uploadSizeExcludingHardlinksAndClones];
      v23 = [v10 preflightProperties];
      if (!v23)
      {
        __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 628, "preflightProperties");
      }

      v24 = v23;
      v33 = 0;
      v25 = [v23 dataWithError:&v33];
      v26 = v33;
      if (!v25)
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v37 = v24;
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to serialize preflight properties %@, %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to serialize preflight properties %@, %@", v24, v26);
        }
      }

      v28 = -[MBPeerPreflightResponse initWithUploadSize:uploadFileCount:uploadSizeExcludingHardlinksAndClones:freeDiskSpace:purgeableDiskSpace:]([MBPeerPreflightResponse alloc], "initWithUploadSize:uploadFileCount:uploadSizeExcludingHardlinksAndClones:freeDiskSpace:purgeableDiskSpace:", v12, v21 + 7, v22, MBFreeDiskSpaceForVolume(), [*(a1 + 32) _purgeableDiskSpace]);
      v29 = v28;
      if (!v28)
      {
        __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 637, "response");
      }

      [(MBPeerPreflightResponse *)v28 setPropertiesData:v25];

      goto LABEL_29;
    }

    [*(a1 + 32) _cancelBackupEngine];
    v17 = [*(a1 + 32) queue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10016EE8C;
    v34[3] = &unk_1003BC0B0;
    v34[4] = *(a1 + 32);
    dispatch_sync(v17, v34);

    v18 = [*(a1 + 32) cacheDeleteRequest];
    v19 = [v18 purge];

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CacheDelete purged %llu bytes", buf, 0xCu);
      _MBLog(@"Df", "CacheDelete purged %llu bytes", v19);
    }
  }

  v30 = v11;
  v25 = [v10 endWithError:v11];

  if (!v25)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 599, "error");
  }

  [*(a1 + 32) setDriveBackupEngine:0];
  v29 = 0;
LABEL_29:

  [*(a1 + 32) setPeerPreflightResponse:v29];
  (*(*(a1 + 56) + 16))();
  v31 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v31);

  objc_autoreleasePoolPop(context);
}

void sub_10016EE94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v16 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v16, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  v12 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v12);

  v13 = [*(a1 + 32) _handleError:v8];
  if (v13)
  {
    v9[2](v9, 0, v13);
    v14 = [*(a1 + 32) peerTaskGroup];
    dispatch_group_leave(v14);
  }

  else
  {
    v15 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016F0F0;
    block[3] = &unk_1003BD478;
    block[4] = *(a1 + 32);
    v18 = v9;
    dispatch_async(v15, block);
  }
}

void sub_10016F0F0(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) peerInitRequest];
  arc4random_buf(__buf, 0x40uLL);
  v3 = [NSData dataWithBytes:__buf length:64];
  v4 = [v3 base64EncodedStringWithOptions:0];
  v5 = [v4 dataUsingEncoding:4];
  v6 = MBTemporaryPath();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Exporting the keychain at %@", buf, 0xCu);
    _MBLog(@"Df", "Exporting the keychain at %@", v6);
  }

  v36 = 0;
  v8 = [MBKeyBag keybagWithPassword:v4 error:&v36];
  v9 = v36;
  v10 = v9;
  v32 = v8;
  if (!v8)
  {
    v33 = 0;
    if (!v9)
    {
LABEL_20:
      __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 689, "error");
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v35 = v9;
  v11 = [v8 dataWithError:&v35];
  v12 = v35;

  if (!v11)
  {
    v33 = 0;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v34[1] = v12;
  v33 = v11;
  v13 = WriteKeychainToDisk(v6);
  v14 = v12;

  if (!v13)
  {
    v10 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v29 = v5;
  v15 = [*(a1 + 32) transferDrive];
  if (!v15)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 692, "self.transferDrive");
  }

  v16 = [*(a1 + 32) transferDrive];
  v34[0] = v14;
  v17 = [v16 uploadFileAtPath:v6 toPath:@"keychain-backup.plist" options:0 error:v34];
  v10 = v34[0];

  if (v17)
  {
    v5 = v29;
    v18 = [[MBPeerKeychainTransferResponse alloc] initWithKeyBag:v11 password:v29 keychainFileName:@"keychain-backup.plist"];
    if (v10)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 695, "!error");
    }

    v19 = v18;
  }

  else
  {
    if (!v10)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 698, "error");
    }

    v19 = 0;
    v5 = v29;
  }

LABEL_14:
  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v2 targetDeviceName];
    v21 = v30 = v5;
    v22 = [v2 targetDeviceUDID];
    *buf = 138412802;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Finished transferring the keychain data to device %@ (%@): %@", buf, 0x20u);

    v23 = [v2 targetDeviceName];
    v24 = [v2 targetDeviceUDID];
    _MBLog(@"Df", "Finished transferring the keychain data to device %@ (%@): %@", v23, v24, v10);

    v5 = v30;
  }

  v25 = [*(a1 + 32) _handleError:v10];

  (*(*(a1 + 40) + 16))();
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
    _MBLog(@"Df", "Removing %@", v6);
  }

  v27 = +[NSFileManager defaultManager];
  [v27 removeItemAtPath:v6 error:0];

  v28 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v28);

  objc_autoreleasePoolPop(context);
}

void sub_10016F5F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v22 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v22, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  v12 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v12);

  v13 = [*(a1 + 32) _handleError:v8];
  if (v13)
  {
    v9[2](v9, 0, v13);
    v14 = [*(a1 + 32) peerTaskGroup];
    dispatch_group_leave(v14);
  }

  else
  {
    [*(a1 + 32) _disableInfraWiFi];
    v15 = +[NSDate date];
    v16 = [*(a1 + 32) progressModel];
    [v16 setFileTransferStartDate:v15];

    v17 = [*(a1 + 32) progressModel];
    [v17 updateTotalProgressWithPhaseProgress:3 phase:0.0];

    v18 = [*(a1 + 32) queue];
    dispatch_assert_queue_V2(v18);

    v19 = [*(a1 + 32) driveBackupEngine];
    if (!v19)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]_block_invoke", "MBSourceDeviceTransferEngine.m", 737, "backupEngine");
    }

    v20 = v19;
    [*(a1 + 32) setDriveBackupEngine:0];
    v21 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016F920;
    block[3] = &unk_1003BD9D8;
    block[4] = *(a1 + 32);
    v24 = v20;
    v25 = v9;
    v14 = v20;
    dispatch_async(v21, block);
  }
}

void sub_10016F920(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) peerInitRequest];
  v3 = [*(a1 + 32) peerPreflightResponse];
  v4 = [v3 uploadFileCount];

  v5 = [*(a1 + 32) peerPreflightResponse];
  v6 = [v5 uploadSize];

  v7 = [*(a1 + 32) peerPreflightResponse];
  v8 = [v7 uploadSizeExcludingHardlinksAndClones];

  +[NSDate timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [v2 targetDeviceName];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v13 = [v2 targetDeviceUDID];
    *buf = 134219010;
    v41 = v6;
    v42 = 2048;
    v43 = v8;
    v44 = 2048;
    v45 = *&v4;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending %llu(%llu) bytes, %llu files to device %@ (%@)", buf, 0x34u);

    v14 = [v2 targetDeviceName];
    v15 = [v2 targetDeviceUDID];
    _MBLog(@"Df", "Sending %llu(%llu) bytes, %llu files to device %@ (%@)", v6, v8, v4, v14, v15);
  }

  objc_initWeak(&location, *(a1 + 32));
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10016FEB4;
  v37[3] = &unk_1003C0110;
  objc_copyWeak(v38, &location);
  v38[1] = v4;
  v38[2] = v6;
  v16 = [*(a1 + 32) transferDrive];
  [v16 setSendProgressHandler:v37];

  v17 = [*(a1 + 40) backupAfterPreflight];
  v18 = [*(a1 + 40) cleanup];
  v19 = [*(a1 + 40) endWithError:v17];

  v20 = [*(a1 + 32) transferDrive];
  [v20 setSendProgressHandler:0];

  +[NSDate timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v2 targetDeviceName];
      v26 = [v2 targetDeviceUDID];
      *buf = 138412802;
      v41 = v25;
      v42 = 2112;
      v43 = v26;
      v44 = 2112;
      v45 = *&v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished sending data to device %@ (%@): %@", buf, 0x20u);
    }

    v27 = [v2 targetDeviceName];
    v28 = [v2 targetDeviceUDID];
    _MBLog(@"Df", "Finished sending data to device %@ (%@): %@", v27, v28, v19);
  }

  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v22 - v10;
    *buf = 134218752;
    v41 = v6;
    v42 = 2048;
    v43 = v8;
    v44 = 2048;
    v45 = v30;
    v46 = 2048;
    v47 = (v6 >> 20) / v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Total bytes transferred: %llu(%llu). Total time spent on transferring: %f. Average throughput: %.2f", buf, 0x2Au);
    _MBLog(@"Df", "Total bytes transferred: %llu(%llu). Total time spent on transferring: %f. Average throughput: %.2f", v6, v8, v30, (v6 >> 20) / v30);
  }

  v31 = [*(a1 + 32) _handleError:v19];

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v33 = [*(a1 + 32) progressModel];
    [v33 updateTotalProgressWithPhaseProgress:3 phase:1.0];

    v32 = objc_opt_new();
  }

  (*(*(a1 + 48) + 16))();
  v34 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016FF34;
  block[3] = &unk_1003BC0B0;
  block[4] = *(a1 + 32);
  dispatch_async(v34, block);

  objc_destroyWeak(v38);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(context);
}

void sub_10016FE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016FEB4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(a2 + 16) = *(a1 + 40);
    *(a2 + 24) = *(a1 + 48);
    v6 = [WeakRetained progressModel];
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    [v6 updateTotalProgressWithPhase:3 transferInfo:v8];
  }
}

void sub_10016FF34(uint64_t a1)
{
  [*(a1 + 32) _enableInfraWiFi];
  v2 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v2);
}

void sub_10016FF8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v12 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v12, v8);
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
      _MBLog(@"Df", "Received %@", v7);
    }

    v13 = [v7 error];
  }

  v14 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v14);

  atomic_store(1u, (*(a1 + 32) + 100));
  [*(a1 + 32) _stopTrackingPeerConnectionStatus];
  [*(a1 + 32) _cancelDisconnectTimer];
  v15 = objc_opt_new();
  v9[2](v9, v15, 0);

  [*(a1 + 32) _finishWithError:v13];
  [*(a1 + 32) cancel];
  v16 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v16);
}

void sub_1001701B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v17 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v17, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  v12 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_enter(v12);

  v13 = objc_opt_new();
  v9[2](v9, v13, 0);

  v14 = [v7 percentage] / 100.0;
  v15 = [*(a1 + 32) progressModel];
  [v15 updateTotalProgressWithPhaseProgress:4 phase:v14];

  v16 = [*(a1 + 32) peerTaskGroup];
  dispatch_group_leave(v16);
}

void sub_1001707B0(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) connection];
  [v3 connection:v2 didUpdateDeviceTransferProgress:*(a1 + 40)];
}

uint64_t MBSBackupAttributesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v16 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if (((v11 >> 3) - 1) >= 7u)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v12 = off_1003C0188[((v11 >> 3) - 1)];
        String = PBReaderReadString();

        *(a1 + *v12) = String;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100172D74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watchdog %@ timed out", buf, 0xCu);
      _MBLog(@"Df", "Watchdog %@ timed out", WeakRetained);
    }

    [WeakRetained _cancelTimer];
    [WeakRetained _invokeTimeoutBlock];
  }
}

void sub_100173074(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100175DD0(uint64_t a1)
{
  qword_1004218B0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1001763A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = *&v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch remote configuration: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Failed to fetch remote configuration: %{public}@", v5);
    }

    v7 = objc_opt_new();
    [v7 setFlag:@"RetryStrategyShouldNotSleep"];
    v8 = [[MBRetryStrategy alloc] initWithDebugContext:v7 networkAvailabilityProvider:0 engineMode:0 restoreType:0];
    if ([(MBRetryStrategy *)v8 shouldRetryAfterError:v5])
    {
      v9 = 3600.0;
    }

    else
    {
      v9 = 43200.0;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Re-fetching remote configuration in %.3fs", buf, 0xCu);
      _MBLog(@"Df", "Re-fetching remote configuration in %.3fs", v9);
    }

    v11 = [*(a1 + 32) persona];
    v12 = +[NSDate now];
    v13 = [v12 dateByAddingTimeInterval:v9];
    [v11 setPreferencesValue:v13 forKey:@"RemoteConfigurationExpiration"];
  }

  else
  {
    [*(a1 + 40) mergeRemoteConfigurationForAccount:*(a1 + 32) response:a2];
  }

  atomic_store(0, (*(a1 + 40) + 8));
  (*(*(a1 + 48) + 16))();
}

id sub_100176BE0(void *a1)
{
  v1 = qword_1004218C0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1004218C0, &stru_1003C01E8);
  }

  v3 = [qword_1004218A8 containsObject:v2];

  return v3;
}

void sub_100177668(id a1)
{
  if (!qword_1004218A8)
  {
    qword_1004218A8 = [NSSet setWithArray:&off_1003E22E8];

    _objc_release_x1();
  }
}

id sub_100177D10()
{
  if (qword_100421900 != -1)
  {
    dispatch_once(&qword_100421900, &stru_1003C02D0);
  }

  v1 = qword_1004218F8;

  return v1;
}

uint64_t sub_100178000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100178018(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _allDisabledDomainNamesForPersona:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_10017813C(uint64_t a1)
{
  v2 = [objc_opt_class() _allPersistedDisabledDomainNamesForPersona:*(a1 + 40)];
  v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v2 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (!v5)
  {

    goto LABEL_20;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v13 + 1) + 8 * i);
      if (([*(a1 + 32) _isContainerizedAppDomain:v10] & 1) == 0)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ is not a containerized app domain - not removing from the disabled domains list", buf, 0xCu);
          _MBLog(@"I ", "%@ is not a containerized app domain - not removing from the disabled domains list", v10);
        }

LABEL_14:
        [v3 addObject:v10];
        continue;
      }

      if ([*(a1 + 48) containsObject:v10])
      {
        goto LABEL_14;
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Removing %@ from disabled domains list - related app is no longer installed on the device", buf, 0xCu);
        _MBLog(@"I ", "Removing %@ from disabled domains list - related app is no longer installed on the device", v10);
      }

      v7 = 1;
    }

    v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  }

  while (v6);

  if (v7)
  {
    [*(a1 + 32) _reconcileBooksAndHealthInDisabledDomainsList:v3];
    [objc_opt_class() _persistDisabledDomainNames:v3 forPersona:*(a1 + 40)];
  }

LABEL_20:
}

void sub_1001785F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _allDisabledDomainNamesForPersona:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v2;
  if (*(a1 + 56) == 1)
  {
    [v2 minusSet:v3];
  }

  else
  {
    [v2 unionSet:v3];
  }

  [objc_opt_class() _persistDisabledDomainNames:v4 forPersona:*(a1 + 40)];
}

id MBGetHealthRelatedDomains()
{
  if (qword_1004218E0 != -1)
  {
    dispatch_once(&qword_1004218E0, &stru_1003C0290);
  }

  v1 = qword_1004218D8;

  return v1;
}

int64_t sub_100178C40(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSString *)v4 length];
  if (v6 == [(NSString *)v5 length])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSString *)v4 length];
    if (v8 < [(NSString *)v5 length])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

void sub_1001797A0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1001797ACLL);
}

id sub_100179FF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"Container"];
  if (!v5)
  {
    __assert_rtn("_volumeMountPointForPlist", "MBAppManager.m", 834, "path");
  }

  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (MBPathHasVolumePrefix())
        {
          v18 = v12;
          v13 = v7;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v7 sortedArrayUsingSelector:"compare:"];
    v15 = [v14 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to find volume (%@) for %@", buf, 0x16u);

    v16 = [v7 sortedArrayUsingSelector:"compare:"];
    v17 = [v16 componentsJoinedByString:{@", "}];
    _MBLog(@"E ", "Failed to find volume (%@) for %@", v17, v6, v20);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

void sub_10017C7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10017C81C(id a1)
{
  qword_1004218C8 = dispatch_queue_create("[MBAppManager createSafeHarbor:error:]", 0);

  _objc_release_x1();
}

void sub_10017C85C(uint64_t a1)
{
  v2 = [*(a1 + 32) userIncompleteRestoreDirectory];
  v3 = [*(*(a1 + 40) + 8) safeHarborDir];
  v4 = [v2 stringByAppendingPathComponent:v3];
  v5 = MBUniqueIntegerFilenameWithDirectory();

  v6 = [*(*(a1 + 40) + 8) safeHarborDir];
  v7 = [v6 stringByAppendingPathComponent:v5];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(a1 + 104) == 1)
  {
    v10 = [*(a1 + 32) userIncompleteRestoreDirectory];
    v11 = [v10 stringByAppendingPathComponent:*(*(*(a1 + 72) + 8) + 40)];
    v12 = *(*(a1 + 80) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(*(a1 + 80) + 8);
    v15 = *(*(*(a1 + 72) + 8) + 40);
    v10 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 48) identifier];
    v18 = [*(a1 + 48) containerTypeString];
    v19 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412802;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Creating safe harbor for container %@ with type %@ at %@", buf, 0x20u);

    v20 = [*(a1 + 48) identifier];
    v21 = [*(a1 + 48) containerTypeString];
    _MBLog(@"I ", "Creating safe harbor for container %@ with type %@ at %@", v20, v21, *(*(*(a1 + 80) + 8) + 40));
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412290;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
    _MBLog(@"Db", "Creating directory %@", *(*(*(a1 + 80) + 8) + 40));
  }

  v24 = *(*(*(a1 + 80) + 8) + 40);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v27 = *(*(a1 + 96) + 8);
  obj = *(v27 + 40);
  v28 = [v25 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:v26 error:&obj];
  objc_storeStrong((v27 + 40), obj);
  *(*(*(a1 + 88) + 8) + 24) = v28;
}

void sub_10017CBE4(id a1)
{
  qword_1004218D8 = [NSSet setWithArray:&off_1003E2300];

  _objc_release_x1();
}

void sub_10017CC2C(id a1)
{
  qword_1004218E8 = [NSSet setWithArray:&off_1003E2318];

  _objc_release_x1();
}

void sub_10017CC74(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBDisabledDomains", v3);
  v2 = qword_1004218F8;
  qword_1004218F8 = v1;
}

void sub_10017EBDC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = [v4 recordID];
      v10 = [v9 recordName];
      *buf = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save %{public}@(%{public}@): %@", buf, 0x20u);

      v11 = objc_opt_class();
      v12 = [v4 recordID];
      v13 = [v12 recordName];
      _MBLog(@"E ", "Failed to save %{public}@(%{public}@): %@", v11, v13, v5);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = [v4 recordID];
    v16 = [v15 recordName];
    *buf = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved %{public}@(%{public}@)", buf, 0x16u);

    v17 = objc_opt_class();
    v12 = [v4 recordID];
    v13 = [v12 recordName];
    _MBLog(@"Df", "Saved %{public}@(%{public}@)", v17, v13);
    goto LABEL_6;
  }
}

id sub_100182980(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 snapshotID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t MBSSnapshotReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v39[0] & 0x7F) << v31;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_71:
          *(a1 + 40) = v36;
          goto LABEL_81;
        }

        if (v12 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v39[0] & 0x7F) << v19;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_79:
          v37 = 24;
          goto LABEL_80;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v39[0] & 0x7F) << v24;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_67:
            v37 = 16;
            goto LABEL_80;
          case 5u:
            v29 = objc_alloc_init(MBSSnapshotAttributes);

            *(a1 + 32) = v29;
            v39[0] = 0;
            v39[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = MBSSnapshotAttributesReadFrom(v29, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_81;
          case 6u:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v39[0] & 0x7F) << v13;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_75:
            v37 = 8;
LABEL_80:
            *(a1 + v37) = v18;
            goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100184920(id a1)
{
  v1 = qword_100421908;
  qword_100421908 = &__NSDictionary0__struct;
}

uint64_t MBExcludedAppTypeFromAppRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 managementDomain];
  v3 = [v2 hasPrefix:@"swift-playgrounds"];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v5 = [v1 appClipMetadata];
    v4 = v5 != 0;
  }

  return v4;
}

id sub_100185520(void *a1, void *a2)
{
  v3 = a1;
  v98 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v120 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "app.bundleIdentifier is nil: %@", buf, 0xCu);
      _MBLog(@"E ", "app.bundleIdentifier is nil: %@", v3);
    }
  }

  [v4 setObject:v5 forKeyedSubscript:?];
  v7 = MBStringForContainerType(1);
  [v4 setObject:v7 forKeyedSubscript:@"ContainerContentClass"];

  v8 = [v3 bundleVersion];

  if (v8)
  {
    v9 = [v3 bundleVersion];
    [v4 setObject:v9 forKeyedSubscript:kCFBundleVersionKey];
  }

  v10 = [v3 mb_applicationType];
  v79 = v10;
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"ApplicationType"];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "app.applicationType is nil for %@", buf, 0xCu);
      _MBLog(@"Db", "app.applicationType is nil for %@", v5);
    }
  }

  v12 = [v3 mb_bundleURL];
  v78 = v12;
  if (v12)
  {
    v13 = sub_100188A28(v12);
    [v4 setObject:v13 forKeyedSubscript:@"Path"];
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "app.bundleURL is nil for %@", buf, 0xCu);
      _MBLog(@"I ", "app.bundleURL is nil for %@", v5);
    }
  }

  v14 = [v3 dataContainerURL];
  v77 = v14;
  if (v14)
  {
    v15 = sub_100188A28(v14);
    [v4 setObject:v15 forKeyedSubscript:@"Container"];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v120 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "app.dataContainerURL is nil for %@", buf, 0xCu);
      _MBLog(@"Db", "app.dataContainerURL is nil for %@", v5);
    }
  }

  v16 = [v3 mb_entitlements];
  v81 = v16;
  v82 = v5;
  if (![v16 count])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (v81)
      {
        v18 = "empty";
      }

      else
      {
        v18 = "nil";
      }

      *buf = 136315394;
      v120 = v18;
      v121 = 2112;
      v122 = v82;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Found %s entitlements dictionary for %@", buf, 0x16u);
      _MBLog(@"Db", "Found %s entitlements dictionary for %@", v18, v82);
    }

    v16 = v81;
  }

  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"Entitlements"];
  }

  v19 = [v3 applicationExtensionRecords];
  v20 = [v19 count];

  v92 = v3;
  v80 = v4;
  if (v20)
  {
    v85 = +[NSMutableArray array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v21 = [v3 applicationExtensionRecords];
    v22 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v109;
      v83 = *v109;
      v84 = v21;
      do
      {
        v25 = 0;
        v86 = v23;
        do
        {
          if (*v109 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v108 + 1) + 8 * v25);
          v27 = [v26 dataContainerURL];
          v28 = [v26 mb_bundleURL];
          v97 = [v26 mb_pluginIdentifier];
          v93 = v28;
          if (v27)
          {
            if (v28)
            {
              if (v97)
              {
                v29 = sub_100188A28(v28);
                v30 = sub_100188A28(v27);
                v91 = v29;
                if (v29)
                {
                  v90 = v30;
                  if (v30)
                  {
                    v31 = [v26 mb_entitlements];
                    if (!v31)
                    {
                      v32 = MBGetDefaultLog();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v120 = v97;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);
                        _MBLog(@"Db", "Plugin %@ found without entitlements.", v97);
                      }

                      v31 = &__NSDictionary0__struct;
                    }

                    v87 = v31;
                    v88 = v27;
                    v89 = v25;
                    v94 = +[NSMutableArray array];
                    v104 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v33 = [v26 groupContainerURLs];
                    v34 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v105;
                      v95 = v33;
                      do
                      {
                        for (i = 0; i != v35; i = i + 1)
                        {
                          if (*v105 != v36)
                          {
                            objc_enumerationMutation(v33);
                          }

                          v38 = *(*(&v104 + 1) + 8 * i);
                          v39 = [v26 groupContainerURLs];
                          v40 = [v39 objectForKeyedSubscript:v38];

                          if (v40)
                          {
                            v41 = sub_100188A28(v40);
                            if (v41)
                            {
                              if (MBPathHasVolumePrefix())
                              {
                                v118[0] = v38;
                                v117[0] = kCFBundleIdentifierKey;
                                v117[1] = @"ContainerContentClass";
                                v42 = MBStringForContainerType(3);
                                v117[2] = @"Container";
                                v118[1] = v42;
                                v118[2] = v41;
                                v43 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];

                                [v94 addObject:v43];
                              }

                              else
                              {
                                v43 = MBGetDefaultLog();
                                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138413058;
                                  v120 = v97;
                                  v121 = 2112;
                                  v122 = v38;
                                  v123 = 2112;
                                  v124 = v41;
                                  v125 = 2112;
                                  v126 = v98;
                                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x2Au);
                                  v33 = v95;
                                  _MBLog(@"Df", "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v97, v38, v41, v98, v77, v78, v79);
                                }
                              }
                            }

                            else
                            {
                              v43 = MBGetDefaultLog();
                              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412546;
                                v120 = v97;
                                v121 = 2112;
                                v122 = v38;
                                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0x16u);
                                v33 = v95;
                                _MBLog(@"Df", "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", v97, v38, v75, v76, v77, v78, v79);
                              }
                            }
                          }

                          else
                          {
                            v41 = MBGetDefaultLog();
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412546;
                              v120 = v97;
                              v121 = 2112;
                              v122 = v38;
                              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", buf, 0x16u);
                              _MBLog(@"Df", "Plugin %@ groupContainer %@ found without a container - will not be backed up", v97, v38);
                            }
                          }
                        }

                        v35 = [v33 countByEnumeratingWithState:&v104 objects:v127 count:16];
                      }

                      while (v35);
                    }

                    v116[0] = v97;
                    v115[0] = kCFBundleIdentifierKey;
                    v115[1] = @"ContainerContentClass";
                    v44 = MBStringForContainerType(2);
                    v116[1] = v44;
                    v45 = v90;
                    v116[2] = v91;
                    v115[2] = @"Path";
                    v115[3] = @"Container";
                    v116[3] = v90;
                    v46 = v87;
                    v116[4] = v87;
                    v115[4] = @"Entitlements";
                    v115[5] = @"GroupContainers";
                    v116[5] = v94;
                    v47 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:6];

                    v48 = v91;
                    [v85 addObject:v47];

                    v3 = v92;
                    v24 = v83;
                    v21 = v84;
                    v23 = v86;
                    v27 = v88;
                    v25 = v89;
                  }

                  else
                  {
                    v46 = MBGetDefaultLog();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v120 = v97;
                      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", buf, 0xCu);
                      _MBLog(@"Df", "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", v97);
                    }

                    v45 = 0;
                    v48 = v91;
                  }
                }

                else
                {
                  v45 = v30;
                  v46 = MBGetDefaultLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v120 = v97;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", buf, 0xCu);
                    _MBLog(@"Df", "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", v97);
                  }

                  v48 = 0;
                }
              }

              else
              {
                v48 = MBGetDefaultLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v120 = 0;
                  v121 = 2112;
                  v122 = 0;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);
                  _MBLog(@"Df", "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", 0, 0);
                }
              }
            }

            else
            {
              v48 = MBGetDefaultLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v120 = v97;
                v121 = 2112;
                v122 = 0;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);
                _MBLog(@"Df", "Plugin %@ found without a bundle URL (%@) - will not be backed up.", v97, 0);
              }
            }
          }

          else
          {
            v48 = MBGetDefaultLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v120 = v97;
              v121 = 2112;
              v122 = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);
              _MBLog(@"Df", "Plugin %@ found without a data container (%@) - will not be backed up.", v97, 0);
            }
          }

          v25 = v25 + 1;
        }

        while (v25 != v23);
        v23 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
      }

      while (v23);
    }

    v4 = v80;
    [v80 setObject:v85 forKeyedSubscript:@"Plugins"];
  }

  v49 = [v3 groupContainerURLs];
  v50 = [v49 count];

  if (v50)
  {
    v51 = +[NSMutableArray array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v52 = [v3 groupContainerURLs];
    v53 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v101;
      do
      {
        v56 = 0;
        v96 = v54;
        do
        {
          if (*v101 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v100 + 1) + 8 * v56);
          v58 = [v3 groupContainerURLs];
          v59 = [v58 objectForKeyedSubscript:v57];

          if (v59)
          {
            v60 = sub_100188A28(v59);
            if (v60)
            {
              if (MBPathHasVolumePrefix())
              {
                v113[0] = v57;
                v112[0] = kCFBundleIdentifierKey;
                v112[1] = @"ContainerContentClass";
                v61 = MBStringForContainerType(3);
                v112[2] = @"Container";
                v113[1] = v61;
                v113[2] = v60;
                v62 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];

                [v51 addObject:v62];
              }

              else
              {
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v120 = v57;
                  v121 = 2112;
                  v122 = v60;
                  v123 = 2112;
                  v124 = v98;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x20u);
                  v54 = v96;
                  _MBLog(@"Df", "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v57, v60, v98);
                }
              }
            }

            else
            {
              v62 = MBGetDefaultLog();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v120 = v57;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0xCu);
                _MBLog(@"Df", "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", v57, v74, v75);
              }
            }

            v3 = v92;
          }

          else
          {
            v60 = MBGetDefaultLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v120 = v57;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found without a container - will not be backed up", buf, 0xCu);
              _MBLog(@"Df", "GroupContainer %@ found without a container - will not be backed up", v57);
            }
          }

          v56 = v56 + 1;
        }

        while (v54 != v56);
        v54 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
      }

      while (v54);
    }

    v4 = v80;
    [v80 setObject:v51 forKeyedSubscript:@"GroupContainers"];
  }

  v63 = [v3 isPlaceholder];
  v64 = [NSNumber numberWithBool:v63];
  [v4 setObject:v64 forKeyedSubscript:@"IsPlaceholder"];

  v65 = [v3 applicationState];
  v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v65 isInstalled]);
  [v4 setObject:v66 forKeyedSubscript:@"IsInstalled"];

  if ((v63 & 1) == 0)
  {
    v99 = 0;
    v67 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v82 allowPlaceholder:1 error:&v99];
    v68 = v99;
    if ([v67 hasParallelPlaceholder])
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v3 bundleIdentifier];
        *buf = 138412290;
        v120 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%@ has a parallel placeholder", buf, 0xCu);

        v71 = [v3 bundleIdentifier];
        _MBLog(@"I ", "%@ has a parallel placeholder", v71);
      }

      v72 = &__kCFBooleanTrue;
    }

    else
    {
      v72 = &__kCFBooleanFalse;
    }

    [v4 setObject:v72 forKeyedSubscript:@"IsUpdating"];
  }

  return v4;
}

void sub_100187FBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100187F70);
  }

  _Unwind_Resume(exception_object);
}

id sub_100188A28(void *a1)
{
  v1 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [a1 fileSystemRepresentation]);
  if ([v1 hasPrefix:@"/private"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v1 = v2;
  }

  return v1;
}

void sub_1001896E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018970C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100189724(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v13 = v6;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10018A2D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) invalidated])
  {
    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_10018970C;
    v52 = sub_10018971C;
    v53 = 0;
    if (*(a1 + 48))
    {
      dispatch_semaphore_wait(*(*(a1 + 32) + 128), 0xFFFFFFFFFFFFFFFFLL);
      v10 = *(a1 + 48);
      v47 = 0;
      v11 = [v10 fileHandleWithPath:v5 flags:256 mode:0 error:&v47];
      v12 = v47;
      v13 = v49[5];
      v49[5] = v11;

      v14 = v49[5];
      if (!v14)
      {
        dispatch_semaphore_signal(*(*(a1 + 32) + 128));
        v17 = *(a1 + 40);
        objc_sync_enter(v17);
        [*(a1 + 40) setObject:v12 forKeyedSubscript:v5];
        objc_sync_exit(v17);

        v18 = 0;
LABEL_18:
        _Block_object_dispose(&v48, 8);

        goto LABEL_19;
      }

      v15 = [v14 path];
      if (IsDatalessFault([v49[5] fd]))
      {
        if (qword_100421940 != -1)
        {
          dispatch_once(&qword_100421940, &stru_1003C0388);
        }

        v16 = qword_100421938;

        v15 = v16;
      }

      if ([v49[5] isSQLiteFile])
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }

      else
      {
        dispatch_semaphore_signal(*(*(a1 + 32) + 128));
        [v49[5] closeWithError:0];
        v19 = v49[5];
        v49[5] = 0;
      }
    }

    else
    {
      v15 = v5;
    }

    [*(a1 + 56) setPreUploadDuration:{objc_msgSend(*(a1 + 56), "preUploadDuration") + clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v9}];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_10018970C;
    v45 = sub_10018971C;
    v46 = objc_alloc_init(RPFileTransferItem);
    v20 = dword_100421934;
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 96);
      *buf = 138413058;
      v55 = v5;
      v56 = 2112;
      v57 = v6;
      v58 = 1024;
      v59 = v22;
      v60 = 1024;
      v61 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Uploading %@ to %@, i:%u o:%u", buf, 0x22u);
      _MBLog(@"I ", "Uploading %@ to %@, i:%u o:%u", v5, v6, *(a1 + 96), v20);
    }

    v23 = [[MBDeviceTransferFileMetadata alloc] initWithFromPath:v15 toRelativePath:v6];
    v24 = [[NSURL alloc] initFileURLWithPath:v15 isDirectory:0];
    [v42[5] setItemURL:v24];

    v25 = [(MBDeviceTransferFileMetadata *)v23 dictionaryRepresentation];
    [v42[5] setMetadata:v25];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10018A9F8;
    v28[3] = &unk_1003C03D8;
    v29 = *(a1 + 56);
    v26 = *(a1 + 64);
    v38 = &v41;
    v27 = *(a1 + 32);
    v30 = v26;
    v31 = v27;
    v18 = v15;
    v32 = v18;
    v33 = v6;
    v40 = *(a1 + 96);
    v34 = *(a1 + 40);
    v35 = v5;
    v39 = &v48;
    v36 = *(a1 + 72);
    v37 = *(a1 + 48);
    [v42[5] setCompletionHandler:v28];
    dispatch_group_enter(*(a1 + 72));
    [*(a1 + 80) addObject:v42[5]];

    _Block_object_dispose(&v41, 8);
    goto LABEL_18;
  }

  v8 = *(a1 + 40);
  objc_sync_enter(v8);
  [*(a1 + 40) setObject:*(*(a1 + 32) + 136) forKeyedSubscript:v5];
  objc_sync_exit(v8);

LABEL_19:
  objc_autoreleasePoolPop(v7);
}

void sub_10018A848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  objc_sync_exit(v30);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10018A8AC(id a1)
{
  v1 = MBTemporaryPath();
  v2 = qword_100421938;
  qword_100421938 = v1;

  v3 = open([qword_100421938 fileSystemRepresentation], 1793, 384);
  if (v3 < 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = qword_100421938;
      v6 = *__error();
      *buf = 138412546;
      v10 = v5;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create empty file at %@: %{errno}d", buf, 0x12u);
      v7 = qword_100421938;
      v8 = __error();
      _MBLog(@"E ", "Failed to create empty file at %@: %{errno}d", v7, *v8);
    }

    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]_block_invoke", "MBPeerTransferDrive.m", 228, "0 <= fd");
  }

  close(v3);
}

void sub_10018A9F8(uint64_t a1, void *a2)
{
  v46 = a2;
  context = objc_autoreleasePoolPush();
  v43 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = [*(a1 + 32) uploadStartTime];
  v4 = [*(a1 + 40) dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(*(a1 + 104) + 8) + 40);
  v6 = *(*(a1 + 104) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (!v5)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]_block_invoke", "MBPeerTransferDrive.m", 263, "uploadedItem");
  }

  v44 = atomic_fetch_add_explicit(&dword_100421934, 0xFFFFFFFF, memory_order_relaxed) - 1;
  if (v46)
  {
    v8 = [*(a1 + 48) invalidated];
    v9 = v46;
    if (v8)
    {
      v9 = *(*(a1 + 48) + 136);
    }

    v10 = v9;
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 120);
      *buf = 138413314;
      v60 = v12;
      v61 = 2112;
      v62 = v13;
      v63 = 1024;
      v64 = v14;
      v65 = 1024;
      *v66 = v44;
      *&v66[4] = 2112;
      *&v66[6] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to upload %@ to %@ (i:%u, o:%u): %@", buf, 0x2Cu);
      _MBLog(@"E ", "Failed to upload %@ to %@ (i:%u, o:%u): %@", *(a1 + 56), *(a1 + 64), *(a1 + 120), v44, v10);
    }

    v15 = *(a1 + 72);
    objc_sync_enter(v15);
    [*(a1 + 72) setObject:v10 forKeyedSubscript:*(a1 + 80)];
    objc_sync_exit(v15);

    LODWORD(v15) = [*(*(*(a1 + 112) + 8) + 40) isSQLiteFile];
    [*(*(*(a1 + 112) + 8) + 40) closeWithError:0];
    v16 = *(*(a1 + 112) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    if (v15)
    {
      dispatch_semaphore_signal(*(*(a1 + 48) + 128));
    }

    dispatch_group_leave(*(a1 + 88));
  }

  else
  {
    v18 = [v5 sha256HashData];
    v19 = v18;
    if (!v18)
    {
      __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]_block_invoke", "MBPeerTransferDrive.m", 289, "hashData");
    }

    if ([v18 length] != 32)
    {
      __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]_block_invoke", "MBPeerTransferDrive.m", 290, "hashData.length == 32");
    }

    v20 = [v19 bytes];
    v39 = *v20;
    v40 = v20[1];
    v41 = v20[2];
    v42 = v20[3];
    v37 = v20[29];
    v38 = v20[28];
    v35 = v20[31];
    v36 = v20[30];
    v21 = [v5 fileSize];
    v22 = [*(a1 + 32) minUploadedFileSize];
    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    [*(a1 + 32) setMinUploadedFileSize:v23];
    v24 = [*(a1 + 32) maxUploadedFileSize];
    if (v24 <= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    [*(a1 + 32) setMaxUploadedFileSize:v25];
    [*(a1 + 32) setUploadedByteCount:{&v21[objc_msgSend(*(a1 + 32), "uploadedByteCount")]}];
    [*(a1 + 32) setUploadedFileCount:{objc_msgSend(*(a1 + 32), "uploadedFileCount") + 1}];
    [v5 setCompletionHandler:0];

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 56);
      v28 = [*(a1 + 64) lastPathComponent];
      *buf = 138414082;
      v29 = *(a1 + 120);
      v60 = v27;
      v61 = 2112;
      v62 = v28;
      v63 = 1024;
      v64 = v29;
      v65 = 2048;
      *v66 = (v43 - v3) / 1000000000.0;
      *&v66[8] = 2048;
      *&v66[10] = v21;
      v67 = 1024;
      v68 = v44;
      v69 = 1024;
      v70 = (v39 << 24) | (v40 << 16) | (v41 << 8) | v42;
      v71 = 1024;
      v72 = (v38 << 24) | (v37 << 16) | (v36 << 8) | v35;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Uploaded %@ to %@, i:%u, t:%.3f, s:%lld, o:%u, h:%08x...%08x", buf, 0x42u);

      v30 = *(a1 + 56);
      v31 = [*(a1 + 64) lastPathComponent];
      _MBLog(@"I ", "Uploaded %@ to %@, i:%u, t:%.3f, s:%lld, o:%u, h:%08x...%08x", v30, v31, *(a1 + 120), (v43 - v3) / 1000000000.0, v21, v44, (v39 << 24) | (v40 << 16) | (v41 << 8) | v42, (v38 << 24) | (v37 << 16) | (v36 << 8) | v35);
    }

    v5 = [*(a1 + 48) metadataQueues];
    v10 = [v5 objectAtIndexedSubscript:{*(a1 + 120) % objc_msgSend(v5, "count")}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018B054;
    block[3] = &unk_1003C03B0;
    v56 = *(a1 + 112);
    v48 = *(a1 + 96);
    v49 = *(a1 + 80);
    v58 = *(a1 + 120);
    v50 = *(a1 + 72);
    v51 = v19;
    v52 = *(a1 + 56);
    v32 = *(a1 + 32);
    v33 = *(a1 + 48);
    v53 = v32;
    v54 = v33;
    v55 = *(a1 + 88);
    v57 = v21;
    v34 = v19;
    dispatch_async(v10, block);
  }

  objc_autoreleasePoolPop(context);
}

void sub_10018B054(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = [*(*(*(a1 + 96) + 8) + 40) isSQLiteFile];
  v4 = *(*(*(a1 + 96) + 8) + 40);
  v5 = *(*(a1 + 96) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  if (v4)
  {
    v7 = 0;
    goto LABEL_3;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(a1 + 40);
    v26 = 0;
    v4 = [v19 fileHandleWithPath:v20 flags:256 mode:0 error:&v26];
    v21 = v26;
    v10 = v21;
    if (!v4)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 112);
        *buf = 138412802;
        v28 = v23;
        v29 = 1024;
        v30 = v24;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to open the file at %@ (i:%u): %@", buf, 0x1Cu);
        _MBLog(@"E ", "Failed to open the file at %@ (i:%u): %@", *(a1 + 40), *(a1 + 112), v10);
      }

      v15 = *(a1 + 48);
      objc_sync_enter(v15);
      [*(a1 + 48) setObject:v10 forKeyedSubscript:*(a1 + 40)];
      objc_sync_exit(v15);
      goto LABEL_8;
    }

    v7 = v21;
LABEL_3:
    v8 = *(a1 + 56);
    v25 = v7;
    v9 = [v4 recordMetadataWithSHA256Data:v8 error:&v25];
    v10 = v25;

    if ((v9 & 1) == 0)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 64);
        v13 = *(a1 + 112);
        *buf = 138412802;
        v28 = v12;
        v29 = 1024;
        v30 = v13;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to record metadata for %@ (i:%u): %@", buf, 0x1Cu);
        _MBLog(@"E ", "Failed to record metadata for %@ (i:%u): %@", *(a1 + 64), *(a1 + 112), v10);
      }

      v14 = *(a1 + 48);
      objc_sync_enter(v14);
      [*(a1 + 48) setObject:v10 forKeyedSubscript:*(a1 + 40)];
      objc_sync_exit(v14);
    }

    [v4 closeWithError:0];
    v15 = v4;
LABEL_8:

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v17 = *(a1 + 72);
  objc_sync_enter(v17);
  [*(a1 + 72) setPostUploadDuration:{objc_msgSend(*(a1 + 72), "postUploadDuration") + v16 - v2}];
  objc_sync_exit(v17);

  if (v3)
  {
    dispatch_semaphore_signal(*(*(a1 + 80) + 128));
  }

  dispatch_group_leave(*(a1 + 88));
  v18 = [NSURL fileURLWithPath:*(a1 + 64) isDirectory:0];
  [*(a1 + 80) _updateProgressForSentItem:v18 size:*(a1 + 104)];
}

void sub_10018B3CC(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setUploadStartTime:v3];
  v5 = a1[4];
  v6 = [v4 items];
  [v5 addObjectsFromArray:v6];

  v7 = a1[5];
  v8 = [v4 index];

  v10 = [NSNumber numberWithUnsignedInt:v8];
  v9 = [v10 stringValue];
  [v7 addObject:v9];
}

id sub_10018B494(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10018B508;
  v3[3] = &unk_1003C0450;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void sub_10018B508(uint64_t a1, void *a2)
{
  v3 = [a2 completionHandler];
  v3[2](v3, *(*(a1 + 32) + 136));
}

void sub_10018B570(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [*(a1 + 32) uploadStartTime];
  if (*(a1 + 72) == 1)
  {
    dispatch_semaphore_signal(*(*(a1 + 40) + 120));
    v5 = atomic_fetch_add_explicit(&dword_100421930, 0xFFFFFFFF, memory_order_relaxed) - 1;
  }

  else
  {
    v5 = dword_100421930;
  }

  v6 = dword_100421934;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (v3 - v4) / 1000000000.0;
    v9 = [*(a1 + 32) index];
    v10 = [*(a1 + 32) uploadedFileCount];
    v21 = v2;
    v11 = *(a1 + 64);
    v12 = [*(a1 + 32) minUploadedFileSize];
    v13 = [*(a1 + 32) maxUploadedFileSize];
    v14 = [*(a1 + 32) uploadedByteCount];
    v15 = [*(a1 + 32) preUploadDuration] / 1000000000.0;
    v16 = [*(a1 + 32) postUploadDuration];
    *buf = 67111680;
    *&buf[4] = v9;
    *v23 = 2048;
    *&v23[2] = v10;
    *&v23[10] = 2048;
    *&v23[12] = v11;
    *&v23[20] = 2048;
    *&v23[22] = v12;
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v16 / 1000000000.0;
    v32 = 2048;
    v33 = v8;
    v34 = 1024;
    v35 = v5;
    v36 = 1024;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Uploaded batch i:%u, c:%llu/%lu, s:[%llu,%llu,%llu], t:[%.3f,%.3f,%.3f], o:%u(%u)", buf, 0x64u);
    v2 = v21;
    _MBLog(@"Df", "Uploaded batch i:%u, c:%llu/%lu, s:[%llu,%llu,%llu], t:[%.3f,%.3f,%.3f], o:%u(%u)", [*(a1 + 32) index], objc_msgSend(*(a1 + 32), "uploadedFileCount"), *(a1 + 64), objc_msgSend(*(a1 + 32), "minUploadedFileSize"), objc_msgSend(*(a1 + 32), "maxUploadedFileSize"), objc_msgSend(*(a1 + 32), "uploadedByteCount"), objc_msgSend(*(a1 + 32), "preUploadDuration") / 1000000000.0, objc_msgSend(*(a1 + 32), "postUploadDuration") / 1000000000.0, v8, v5, v6);
  }

  *buf = [*(a1 + 32) uploadedByteCount];
  *v23 = [*(a1 + 32) uploadedFileCount];
  *&v23[8] = [*(a1 + 32) minUploadedFileSize];
  *&v23[16] = [*(a1 + 32) maxUploadedFileSize];
  v17 = [*(a1 + 48) count];
  v18 = *(a1 + 56);
  if (v17)
  {
    v19 = *(a1 + 48);
    v20 = [MBError errorWithCode:2 format:@"Multiple errors"];
    (*(v18 + 16))(v18, buf, v19, v20);
  }

  else
  {
    (*(v18 + 16))(*(a1 + 56), buf, 0, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10018BB6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018BC08;
  v4[3] = &unk_1003C04C8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _uploadBatch:v2 options:v3 completion:v4];
}

uint64_t sub_10018BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

void sub_10018C55C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_10018C590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (!WeakRetained || ([WeakRetained invalidated] & 1) != 0)
  {
    v10 = [MBError errorWithCode:1 format:@"Invalidated"];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      goto LABEL_20;
    }

    if (!v9)
    {
      __assert_rtn("[MBPeerTransferDrive startListeningForFileTransfers]_block_invoke", "MBPeerTransferDrive.m", 585, "strongSelf");
    }

    v12 = 0;
    goto LABEL_15;
  }

  v13 = [v5 metadata];
  v14 = v13;
  v15 = &__NSDictionary0__struct;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v27 = 0;
  v12 = [[MBDeviceTransferFileMetadata alloc] initWithDictionary:v16 error:&v27];

  v11 = v27;
  if (!v12)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to decode file metadata for item %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to decode file metadata for item %@: %@", v5, v11);
    }
  }

  if (!v11)
  {
LABEL_15:
    v18 = [(MBDeviceTransferFileMetadata *)v12 dictionaryRepresentation];
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v5 itemURL];
      v21 = [v20 path];
      *buf = 138412546;
      v29 = v21;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Received %@, %@", buf, 0x16u);

      v22 = [v5 itemURL];
      v23 = [v22 path];
      _MBLog(@"Db", "Received %@, %@", v23, v18);
    }

    v26 = 0;
    v24 = [v9 _handleReceivedItem:v5 metadata:v12 error:&v26];
    v25 = v26;
    v11 = v25;
    if (v24)
    {

      v11 = 0;
    }
  }

LABEL_20:
  v6[2](v6, v11);

  objc_autoreleasePoolPop(v7);
}

void sub_10018C8A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = a2;
  v7 = a3;
  v8 = a4;
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v48 = objc_opt_class();
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v11 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v11, v7);
    }

    v8[2](v8, 0, v7);
  }

  else
  {
    v38 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v41;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
      _MBLog(@"Df", "Received %@", v41);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v41 relativePaths];
    v12 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v40 = *v44;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v44 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v41 relativePaths];
          v17 = [v16 objectForKeyedSubscript:v15];

          v18 = [*(a1 + 32) rootURL];
          v19 = [v18 URLByAppendingPathComponent:v15];

          v20 = [*(a1 + 32) rootURL];
          v21 = [v20 URLByAppendingPathComponent:v17];

          v22 = [v21 URLByDeletingLastPathComponent];
          if (v19)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (v23 || v22 == 0)
          {
            __assert_rtn("[MBPeerTransferDrive startListeningForFileTransfers]_block_invoke", "MBPeerTransferDrive.m", 611, "fromURL != nil && toURL != nil && toParentURL != nil");
          }

          v25 = v22;
          v26 = +[NSFileManager defaultManager];
          [v26 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:0];

          v27 = +[NSFileManager defaultManager];
          v42 = 0;
          v28 = [v27 moveItemAtURL:v19 toURL:v21 error:&v42];
          v29 = v42;

          if ((v28 & 1) == 0)
          {
            v31 = MBGetDefaultLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = [v19 path];
              v33 = [v21 path];
              *buf = 138412802;
              v48 = v32;
              v49 = 2112;
              v50 = v33;
              v51 = 2112;
              v52 = v29;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to move the item from %@ to %@: %@", buf, 0x20u);

              v34 = [v19 path];
              v35 = [v21 path];
              _MBLog(@"E ", "Failed to move the item from %@ to %@: %@", v34, v35, v29);
            }

            v36 = [v21 path];
            v37 = [MBError errorForNSError:v29 path:v36 format:@"Failed to move file"];
            v8 = v38;
            v38[2](v38, 0, v37);

            goto LABEL_26;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v30 = objc_opt_new();
    v8 = v38;
    (v38)[2](v38, v30, 0);

LABEL_26:
    v7 = 0;
  }
}

void sub_10018CD98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v12 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v12, v8);
    }

    v9[2](v9, 0, v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
      _MBLog(@"Df", "Received %@", v7);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v7;
    v13 = [v7 relativePaths];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [*(a1 + 32) rootURL];
          v20 = [v19 URLByAppendingPathComponent:v18];

          if (!v20)
          {
            __assert_rtn("[MBPeerTransferDrive startListeningForFileTransfers]_block_invoke", "MBPeerTransferDrive.m", 641, "removeURL != nil");
          }

          v21 = +[NSFileManager defaultManager];
          v30 = 0;
          v22 = [v21 removeItemAtURL:v20 error:&v30];
          v23 = v30;

          if ((v22 & 1) == 0)
          {
            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v20 path];
              *buf = 138412546;
              v37 = v25;
              v38 = 2112;
              v39 = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove the item at %@: %@", buf, 0x16u);

              v26 = [v20 path];
              _MBLog(@"E ", "Failed to remove the item at %@: %@", v26, v23);
            }

            v27 = [v20 path];
            v28 = [MBError errorForNSError:v23 path:v27 format:@"Failed to remove file"];
            v9[2](v9, 0, v28);

            goto LABEL_20;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v13 = objc_opt_new();
    (v9)[2](v9, v13, 0);
LABEL_20:

    v8 = 0;
    v7 = v29;
  }
}

uint64_t MBSSnapshotAttributesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 3)
      {
        switch(v12)
        {
          case 1u:
            String = PBReaderReadString();

            v14 = String;
            v15 = 24;
            break;
          case 2u:
            v35 = PBReaderReadString();

            v14 = v35;
            v15 = 48;
            break;
          case 3u:
            v16 = PBReaderReadString();

            v14 = v16;
            v15 = 16;
            break;
          default:
            goto LABEL_38;
        }
      }

      else
      {
        if ((v11 >> 3) > 5u)
        {
          if (v12 == 6)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v41 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_67:
            v36 = 8;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_38:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_73;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v40 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v40 & 0x7F) << v17;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v19;
            }

LABEL_71:
            v36 = 12;
          }

          goto LABEL_72;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v39 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v27;
          }

LABEL_63:
          v36 = 32;
LABEL_72:
          *(a1 + v36) = v22;
          goto LABEL_73;
        }

        if (v12 != 5)
        {
          goto LABEL_38;
        }

        Data = PBReaderReadData();

        v14 = Data;
        v15 = 40;
      }

      *(a1 + v15) = v14;
LABEL_73:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001907E8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=iCloudDrive= BRCDatabaseRestoreManager failed: %@", buf, 0xCu);
      _MBLog(@"E ", "=iCloudDrive= BRCDatabaseRestoreManager failed: %@", v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100190D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100190D44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100190D5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001910CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100191104(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1001925B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a2), "objectAtIndexedSubscript:", 0), "integerValue"}];
  [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a2), "objectAtIndexedSubscript:", 1), "doubleValue"}];
  v8 = v7;
  v9 = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a3), "objectAtIndexedSubscript:", 0), "integerValue"}];
  [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a3), "objectAtIndexedSubscript:", 1), "doubleValue"}];
  v11 = -1;
  if (v9 >= v6)
  {
    v11 = 1;
  }

  v12 = -1;
  if (v10 >= v8)
  {
    v12 = v10 != v8;
  }

  if (v9 == v6)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

id sub_10019268C(void *a1)
{
  v2 = [a1 rangeOfCharacterFromSet:{+[NSCharacterSet newlineCharacterSet](NSCharacterSet, "newlineCharacterSet")}];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  v4 = [a1 substringToIndex:v2];

  return [v4 stringByAppendingString:@"..."];
}

uint64_t sub_100192C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    if (a4)
    {
      v5 = MBGetSQLLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v9 = sub_10019268C([NSString stringWithUTF8String:a4]);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SQL: %@", buf, 0xCu);
        v6 = sub_10019268C([NSString stringWithUTF8String:a4]);
        _MBLog(@"Db", "SQL: %@", v6);
      }
    }
  }

  return 0;
}

int64_t sub_100193604(id a1, id a2, id a3)
{
  v5 = [a2 snapshotID];
  if (v5 < [a3 snapshotID])
  {
    return -1;
  }

  v7 = [a2 snapshotID];
  return v7 != [a3 snapshotID];
}

NSMutableSet *MBFetchAppBundleIDsInSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v138 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching app bundleIDs for:%@", buf, 0xCu);
    _MBLog(@"Df", "Fetching app bundleIDs for:%@", v7);
  }

  v11 = +[MBCKManager sharedInstance];
  v12 = objc_opt_new();
  v13 = +[MBCellularAccess expensiveCellularAccess];
  [v12 setCellularAccess:v13];

  [v12 setFetchAssets:0];
  [v12 setQualityOfService:25];
  v14 = [v11 databaseManager];
  [MBCKOperationTracker operationTrackerWithAccount:v8 databaseManager:v14 policy:v12 error:a4];
  v16 = v15 = a4;

  if (!v16)
  {
    v29 = 0;
    goto LABEL_100;
  }

  v96 = v7;
  v17 = [v9 processName];
  v18 = [v12 operationGroupWithName:@"fetchBundleIDs" processName:v17];
  [v16 setCkOperationGroup:v18];

  v100 = v15;
  v19 = [v11 openCacheWithAccount:v8 accessType:1 error:v15];
  if (!v19)
  {
    v29 = 0;
    goto LABEL_99;
  }

  v103 = [[MBRetryStrategy alloc] initWithDebugContext:0 networkAvailabilityProvider:0 engineMode:0 restoreType:0];
  v20 = 0;
  v21 = 0;
  while (1)
  {
    if (!v20)
    {
      v113 = v21;
      v22 = [MBCKAccount fetchAccountWithOperationTracker:v16 cache:v19 error:&v113];
      v23 = v113;
      v24 = v21;
      v21 = v23;

      if (!v22)
      {
        v106 = 0;
        goto LABEL_11;
      }

      v20 = v22;
    }

    v25 = v21;
    v112 = v21;
    v106 = v20;
    v26 = [v20 fetchDevicesWithOperationTracker:v16 error:&v112];
    v27 = v112;

    if (v26)
    {
      break;
    }

    v21 = v27;
LABEL_11:
    v28 = [(MBRetryStrategy *)v103 shouldRetryAfterError:v21];
    v20 = v106;
    if ((v28 & 1) == 0)
    {
      if (v100)
      {
        v30 = v21;
        v20 = v106;
        v29 = 0;
        *v100 = v21;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_98;
    }
  }

  v31 = [v96 backupUUID];
  v32 = [v106 deviceForUUID:v31];

  v95 = v32;
  if (v32)
  {
    [(MBRetryStrategy *)v103 reset];

    v33 = 0;
    v34 = v95;
    while (1)
    {
      if ([v95 hasFetchedSnapshots])
      {
        v93 = v33;
        goto LABEL_31;
      }

      v111 = v33;
      v35 = [v95 fetchSnapshotsWithOperationTracker:v16 retry:1 error:&v111];
      v36 = v111;

      if (v35)
      {
        break;
      }

      v33 = v36;
      if (![(MBRetryStrategy *)v103 shouldRetryAfterError:v36])
      {
        v21 = v36;
        if (v100)
        {
          v37 = v36;
          v29 = 0;
          *v100 = v36;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_97;
      }
    }

    v93 = v36;
LABEL_31:
    v89 = v19;
    v90 = v12;
    v94 = v16;
    v91 = v11;
    v92 = v9;
    v97 = [v96 snapshotUUID];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v39 = [v95 snapshots];
    v40 = [v39 countByEnumeratingWithState:&v107 objects:v129 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = 0;
      v43 = *v108;
      while (2)
      {
        v44 = 0;
        v45 = v42;
        v42 += v41;
        do
        {
          if (*v108 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v46 = [*(*(&v107 + 1) + 8 * v44) snapshotID];
          v47 = [v46 isEqualToString:v97];

          if (v47)
          {
            v42 = v45;
            goto LABEL_42;
          }

          ++v45;
          v44 = v44 + 1;
        }

        while (v41 != v44);
        v41 = [v39 countByEnumeratingWithState:&v107 objects:v129 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v42 = 0;
    }

LABEL_42:

    v48 = [v95 snapshots];
    v49 = [v48 count];

    if (v42 >= v49)
    {
      v19 = v89;
      v12 = v90;
      v16 = v94;
      if (v100)
      {
        v64 = [v96 snapshotUUID];
        [MBError errorWithCode:1 format:@"No snapshots found for:%@", v64];
        *v100 = v29 = 0;
        v11 = v91;
        v9 = v92;
        v21 = v93;
        goto LABEL_95;
      }

      v29 = 0;
      v11 = v91;
      v9 = v92;
      v21 = v93;
    }

    else
    {
      v88 = v8;
      v50 = [v95 snapshots];
      v51 = [v50 subarrayWithRange:{0, v42 + 1}];

      v52 = [v51 lastObject];
      v53 = [v52 snapshotFormat];

      v87 = v51;
      if (v53 == 3)
      {
        v54 = v94;
        v55 = MBGetLatestDomainRecordReferencesFromSnapshots(v51);
        v56 = objc_opt_new();
        v57 = [[MBCKBatchFetch alloc] initWithOperationTracker:v54];
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        obja = v55;
        v58 = [obja countByEnumeratingWithState:&v133 objects:buf count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v134;
          do
          {
            for (i = 0; i != v59; i = i + 1)
            {
              if (*v134 != v60)
              {
                objc_enumerationMutation(obja);
              }

              v62 = [*(*(&v133 + 1) + 8 * i) baseRecordID];
              v63 = [MBDomainRecord recordIDFromBaseRecordID:v62 pageIndex:0];

              v130[0] = _NSConcreteStackBlock;
              v130[1] = 3221225472;
              v130[2] = sub_100195210;
              v130[3] = &unk_1003C06C8;
              v131 = v56;
              v132 = v54;
              [(MBCKBatchFetch *)v57 fetchRecordWithID:v63 completion:v130];
            }

            v59 = [obja countByEnumeratingWithState:&v133 objects:buf count:16];
          }

          while (v59);
        }

        if ([(MBCKBatchFetch *)v57 finishWithError:v100])
        {
          v29 = v56;
        }

        else
        {
          v29 = 0;
        }

        v19 = v89;
        v12 = v90;
        v11 = v91;

        v9 = v92;
        v21 = v93;
        v16 = v94;
        v34 = v95;
      }

      else
      {
        v65 = v51;
        obj = v94;
        v66 = dispatch_group_create();
        v67 = objc_opt_new();
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v68 = v65;
        v69 = [v68 countByEnumeratingWithState:&v125 objects:buf count:16];
        v102 = v68;
        if (v69)
        {
          v70 = v69;
          v71 = *v126;
          do
          {
            for (j = 0; j != v70; j = j + 1)
            {
              if (*v126 != v71)
              {
                objc_enumerationMutation(v102);
              }

              v73 = *(*(&v125 + 1) + 8 * j);
              dispatch_group_enter(v66);
              v122[0] = _NSConcreteStackBlock;
              v122[1] = 3221225472;
              v122[2] = sub_100195834;
              v122[3] = &unk_1003BC308;
              v123 = v67;
              v124 = v66;
              [v73 fetchManifestsWithOperationTracker:obj referenceFetchProgress:0 manifestProgress:0 snapshotCompletion:v122];
            }

            v68 = v102;
            v70 = [v102 countByEnumeratingWithState:&v125 objects:buf count:16];
          }

          while (v70);
        }

        dispatch_group_wait(v66, 0xFFFFFFFFFFFFFFFFLL);
        if ([v67 count])
        {
          if (v100)
          {
            [MBError errorWithErrors:v67];
            *v100 = v29 = 0;
          }

          else
          {
            v29 = 0;
          }

          v8 = v88;
          v11 = v91;
          v9 = v92;
          v12 = v90;
          v21 = v93;
          v16 = v94;
        }

        else
        {
          v29 = objc_opt_new();
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v98 = v68;
          v101 = [v98 countByEnumeratingWithState:&v118 objects:&v133 count:16];
          if (v101)
          {
            v99 = *v119;
            do
            {
              for (k = 0; k != v101; k = k + 1)
              {
                if (*v119 != v99)
                {
                  objc_enumerationMutation(v98);
                }

                v75 = *(*(&v118 + 1) + 8 * k);
                v114 = 0u;
                v115 = 0u;
                v116 = 0u;
                v117 = 0u;
                v76 = [v75 manifestsByDomainName];
                v77 = [v76 countByEnumeratingWithState:&v114 objects:v130 count:16];
                if (v77)
                {
                  v78 = v77;
                  v79 = *v115;
                  do
                  {
                    for (m = 0; m != v78; m = m + 1)
                    {
                      if (*v115 != v79)
                      {
                        objc_enumerationMutation(v76);
                      }

                      v81 = *(*(&v114 + 1) + 8 * m);
                      if ([MBDomain isAppName:v81])
                      {
                        v82 = [MBDomain containerIDWithName:v81];
                        [v29 addObject:v82];
                      }
                    }

                    v78 = [v76 countByEnumeratingWithState:&v114 objects:v130 count:16];
                  }

                  while (v78);
                }
              }

              v101 = [v98 countByEnumeratingWithState:&v118 objects:&v133 count:16];
            }

            while (v101);
          }

          v8 = v88;
          v11 = v91;
          v9 = v92;
          v12 = v90;
          v21 = v93;
          v16 = v94;
          v34 = v95;
        }

        v19 = v89;
      }

      if (v29)
      {
        v83 = MBGetDefaultLog();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = [v29 count];
          *buf = 134218242;
          v138 = v84;
          v139 = 2112;
          v140 = v96;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Found %ld domain names for %@", buf, 0x16u);
          _MBLog(@"Df", "Found %ld domain names for %@", [v29 count], v96);
        }

        v85 = v29;
        v21 = v93;
      }

      v64 = v87;
LABEL_95:
    }

    goto LABEL_97;
  }

  if (v100)
  {
    v38 = [v96 backupUUID];
    *v100 = [MBError errorWithCode:1 format:@"No device found for:%@", v38];
  }

  v29 = 0;
  v21 = v27;
  v34 = 0;
LABEL_97:

  v20 = v106;
LABEL_98:

LABEL_99:
  v7 = v96;
LABEL_100:

  return v29;
}

void sub_100195210(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [MBDomainRecord domainRecordFromCKRecord:v8];
    v11 = [v10 domainName];
    if ([MBDomain isAppName:v11])
    {
      v12 = [MBDomain containerIDWithName:v11];
      [*(a1 + 32) addObject:v12];
    }

    else if ([MBDomain isPlaceholderName:v11])
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) account];
      v15 = [v14 persona];
      v37 = 0;
      v35 = v13;
      v36 = v10;
      v16 = v15;
      v17 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:v16 identifiedBy:@"placeholder-tmp" error:&v37];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 path];
        v39 = 0;
        v20 = [v36 decompressAssetIntoSnapshotDirectoryRoot:v19 commitID:&stru_1003C3430 error:&v39];
        v34 = v19;
        v21 = v39;
        if (v20)
        {
          v22 = [MBPlaceholderFileListDB openOrCreatePlaceholderFileListIn:v34 commitID:&stru_1003C3430 error:&v37];
          v32 = v22;
          if (v22)
          {
            v38 = v21;
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v41 = sub_100195814;
            v42 = &unk_1003BCE18;
            v43 = v35;
            v33 = [v22 enumerateAppPlaceholderDomains:&v38 block:&buf];
            v23 = v38;

            if ((v33 & 1) == 0)
            {
              v24 = MBGetDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *v44 = 138412290;
                v45 = v23;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed enumerating app placeholder domains: %@", v44, 0xCu);
                _MBLog(@"E ", "Failed enumerating app placeholder domains: %@", v23);
              }

              v25 = v23;
              v37 = v23;
            }

            v26 = v32;
            [v32 close:0];
          }

          else
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v44 = 138412290;
              v45 = v21;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to open placeholderDB: %@", v44, 0xCu);
              _MBLog(@"E ", "Failed to open placeholderDB: %@", v21);
            }

            v30 = v21;
            v33 = 0;
            v37 = v21;
            v23 = v21;
            v26 = 0;
          }
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *v44 = 138412290;
            v45 = v21;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to decompress placeholderDomain: %@", v44, 0xCu);
            _MBLog(@"E ", "Failed to decompress placeholderDomain: %@", v21);
          }

          v28 = v21;
          v33 = 0;
          v37 = v21;
          v23 = v21;
        }

        [v18 dispose];
        if (v33)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to add bundleIDs of app placholders: %@", &buf, 0xCu);
        _MBLog(@"E ", "Failed to add bundleIDs of app placholders: %@", 0);
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch domain record: %@", &buf, 0xCu);
    _MBLog(@"E ", "Failed to fetch domain record: %@", v9);
  }

LABEL_28:
}

void sub_100195764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *exc_buf, uint64_t a12)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x100195518);
  }

  _Unwind_Resume(a1);
}

void sub_100195834(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

id MBTemporaryPath()
{
  if (qword_100421958 != -1)
  {
    dispatch_once(&qword_100421958, &stru_1003C06E8);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100195B20;
  v11 = sub_100195B30;
  v12 = 0;
  v0 = sub_100195B38();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100195B8C;
  block[3] = &unk_1003BC840;
  block[4] = &v7;
  dispatch_sync(v0, block);

  v1 = v8[5];
  if (!v1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *MBTemporaryPath(void)"];
    [v4 handleFailureInFunction:v5 file:@"MBTempPathUtils.m" lineNumber:76 description:@"Unable to obtain MBTemporaryPath()"];

    v1 = v8[5];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_100195A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100195A60(id a1)
{
  strcpy(v4, "/var/tmp/backupd-XXXXXXXXXXXXXXX");
  v1 = mkdtemp(v4);
  qword_100421960 = v1;
  if (!v1)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (mkdtemp)";
    goto LABEL_6;
  }

  qword_100421960 = strdup(v1);
  if (!qword_100421960)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (strdup)";
LABEL_6:
    objc_exception_throw([v2 initWithCode:1 format:v3]);
  }
}

uint64_t sub_100195B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100195B38()
{
  if (qword_100421970 != -1)
  {
    dispatch_once(&qword_100421970, &stru_1003C0728);
  }

  v1 = qword_100421968;

  return v1;
}

void sub_100195B8C(uint64_t a1)
{
  if (!qword_100421960)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Unable to create /var/tmp/backupd-XXXXXXXXXX directory"]);
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", qword_100421960);
  if (mktemp(__str))
  {
    v2 = [[NSString alloc] initWithUTF8String:__str];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "mktemp failed: %{errno}d", buf, 8u);
      v6 = __error();
      _MBLog(@"E ", "mktemp failed: %{errno}d", *v6);
    }
  }
}

void MBRemoveTemporaryDirectory()
{
  v0 = sub_100195B38();
  dispatch_sync(v0, &stru_1003C0708);
}

void sub_100195D1C(id a1)
{
  if (qword_100421960)
  {
    v1 = [NSString stringWithUTF8String:?];
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing temporary directory at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Removing temporary directory at %{public}@", v1);
    }

    v3 = +[NSFileManager defaultManager];
    v4 = [v3 removeItemAtPath:v1 error:0];

    if (v4)
    {
      free(qword_100421960);
      qword_100421960 = 0;
    }
  }
}

void sub_100195E38(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBTemporaryPath", v3);
  v2 = qword_100421968;
  qword_100421968 = v1;
}

id sub_1001961DC()
{
  if (qword_100421988 != -1)
  {
    dispatch_once(&qword_100421988, &stru_1003C0768);
  }

  v1 = qword_100421990;

  return v1;
}

void sub_100196284(id a1)
{
  qword_100421980 = [[MBSystemDomainsVersions alloc] initWithDefaultSystemDomainsPlist];

  _objc_release_x1();
}

void sub_1001989AC(id a1)
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v3 pathForResource:@"Domains" ofType:@"plist"];
  v2 = qword_100421990;
  qword_100421990 = v1;
}

uint64_t sub_100199DF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100199E0C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 3145729;
  }

  else
  {
    v2 = 3145734;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 _openWithFlags:v2 usePQLBatching:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v6;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't open database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Can't open database at %@: %@", *(*(a1 + 32) + 24), *(*(*(a1 + 48) + 8) + 40));
    }
  }
}

void sub_10019A0F4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _invalidate:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void sub_10019A458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10019A4A0(void *a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1[4] + 8) + 40);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Closing PQL connection %@", buf, 0xCu);
    _MBLog(@"I ", "Closing PQL connection %@", *(*(a1[4] + 8) + 40));
  }

  v4 = *(*(a1[4] + 8) + 40);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 close:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

uint64_t sub_10019A80C(uint64_t a1)
{
  [*(a1 + 32) _removeCorruptDatabaseWithError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10019BE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019BE44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = MBGetDefaultLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v12)
      {
        *buf = 138412802;
        v23 = v8;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error: %@", buf, 0x20u);
        _MBLog(@"E ", "Sqlite request %@ failed on %@ with error: %@", v8, v7, v9);
      }
    }

    else if (v12)
    {
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite failed on %@ with error: %@", buf, 0x16u);
      _MBLog(@"E ", "Sqlite failed on %@ with error: %@", v7, v9);
    }

    v13 = [v9 domain];
    v14 = [v13 isEqualToString:PQLSqliteErrorDomain];

    if (v14)
    {
      v15 = [v9 code];
      v16 = v15;
      if (v15 > 0x18)
      {
        goto LABEL_18;
      }

      if (((1 << v15) & 0x1384000) == 0)
      {
        if (v15 != 1)
        {
          goto LABEL_14;
        }

        v19 = [v9 userInfo];
        v20 = [v19 objectForKeyedSubscript:@"SqliteSQL"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_10;
        }

        v21 = [v20 isEqualToString:@"commit"];

        if (v21)
        {
LABEL_18:
          if (WeakRetained[9] == 1 && (v16 == 26 || v16 == 11))
          {
            [WeakRetained _removeCorruptDatabaseWithError:v9 completion:&stru_1003C07D8];
          }

          goto LABEL_22;
        }
      }

LABEL_10:
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unexpected SQLite error for db at %@: %@", buf, 0x16u);
        _MBLog(@"F ", "Unexpected SQLite error for db at %@: %@", *(a1 + 32), v9);
      }

LABEL_14:
      if (v16 == 13)
      {
        sleep(5u);
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

LABEL_22:
}

void sub_10019C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10019C6F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 8);
    obj = *(v4 + 40);
    LOBYTE(v3) = (*(v3 + 16))(v3, v2, &obj);
    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v3;
  }

  else
  {
    v5 = [*(a1 + 32) _invalidatedError];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

id sub_10019CA38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 execute:*(a1 + 32) args:**(a1 + 40)];
  v7 = v6;
  if (a3 && (v6 & 1) == 0)
  {
    *a3 = [v5 lastError];
  }

  return v7;
}

void sub_10019CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10019CBF4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = **(a1 + 56);
  v8 = a2;
  v9 = [v8 fetchObjectOfClass:v6 sql:v5 args:v7];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v8 lastError];

  v13 = [v12 excludingNotFound];

  if (a3)
  {
    v14 = v13;
    *a3 = v13;
  }

  return v13 == 0;
}

void sub_10019CDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10019CDEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:*(a1 + 32) args:**(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 lastError];

  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }

  return v9 == 0;
}

void sub_10019D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10019D0C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 fetch:*(a1 + 32) args:**(a1 + 48)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v8 checkSuccessWithError:a3];
}

id MBAllDrivePlugins()
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(MBAppleCarePlugin);
  [v0 addObject:v1];

  v2 = objc_alloc_init(MBApplePushServicePlugin);
  [v0 addObject:v2];

  v3 = objc_alloc_init(MBDataMigratorPlugin);
  [v0 addObject:v3];

  v4 = objc_alloc_init(MBDaemonPlugin);
  [v0 addObject:v4];

  v5 = objc_alloc_init(MBiTunesStorePlugin);
  [v0 addObject:v5];

  v6 = objc_alloc_init(MBKeychainPlugin);
  [v0 addObject:v6];

  v7 = objc_alloc_init(MBLockdownPlugin);
  [v0 addObject:v7];

  v8 = objc_alloc_init(MBManagerPlugin);
  [v0 addObject:v8];

  v9 = objc_alloc_init(MBRestoreAppsPlugin);
  [v0 addObject:v9];

  v10 = objc_alloc_init(MBATCBundlesPlugin);
  [v0 addObject:v10];

  v11 = objc_alloc_init(MBManateePlugin);
  [v0 addObject:v11];

  v12 = objc_alloc_init(MBWiFiPlugin);
  [v0 addObject:v12];

  v13 = objc_alloc_init(MBiCloudDrivePlugin);
  [v0 addObject:v13];

  v14 = objc_alloc_init(MBScreenTimePlugin);
  [v0 addObject:v14];

  v15 = objc_alloc_init(MBSiriPlugin);
  [v0 addObject:v15];

  v16 = objc_alloc_init(MBKeyboardPlugin);
  [v0 addObject:v16];

  v17 = objc_alloc_init(MBFileProviderPlugin);
  [v0 addObject:v17];

  return v0;
}

uint64_t sub_10019DED4(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

void sub_10019E6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Block_object_dispose((v29 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10019E720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10019E738(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedLongLongAtIndex:0];
  v5 = [v3 unsignedLongAtIndex:1];
  v6 = [v3 stringAtIndex:2];
  v7 = [v3 unsignedLongLongAtIndex:3];
  if (!v6)
  {
    __assert_rtn("[MBPendingSnapshotDB enumerateAssetsPendingUploadForDomain:error:block:]_block_invoke", "MBPendingSnapshotDB.m", 445, "path");
  }

  v8 = *(a1[5] + 8);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 24);
  if (v4 == *(v8 + 24))
  {
    *(v9 + 24) = v10 + 1;
    if ([*(*(a1[7] + 8) + 40) count] <= 4)
    {
      [*(*(a1[7] + 8) + 40) addObject:v6];
    }

    v11 = 1;
  }

  else
  {
    v12 = v7;
    if (v10 != -1)
    {
      if (!(*(a1[4] + 16))())
      {
        v11 = 0;
        goto LABEL_11;
      }

      v8 = *(a1[5] + 8);
    }

    *(v8 + 24) = v4;
    *(*(a1[8] + 8) + 24) = v5;
    v11 = 1;
    *(*(a1[6] + 8) + 24) = 1;
    v13 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(a1[9] + 8) + 24) = v12;
  }

LABEL_11:

  return v11;
}

uint64_t sub_10019EE80(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 fetchCountWithError:a3 sql:{@"SELECT COUNT(*) FROM AssetsToUpload WHERE domain = %@ AND uploadState = %llu", a1[4], 1}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, v8 = [v5 fetchCountWithError:a3 sql:{@"SELECT COUNT(*) FROM AssetsToDelete WHERE domain = %@", a1[4]}], v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v10 = a1[5];
    if (v10)
    {
      *v10 = v7;
    }

    v11 = a1[6];
    if (v11)
    {
      *v11 = v8;
    }

    v9 = 1;
  }

  return v9;
}

BOOL sub_10019F034(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) db];
  v9 = [v8 fetchSQL:{@"SELECT recordIDSuffix FROM AssetsToUpload WHERE domain = %@ AND uploadState = %llu", *(a1 + 40), 1}];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10019F2EC;
  v31[3] = &unk_1003C09B8;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v32 = v10;
  v35 = &v37;
  v36 = v12;
  v34 = v11;
  v13 = v7;
  v33 = v13;
  v14 = [v9 enumerateWithError:a3 block:v31];

  v23 = 0;
  if (v14)
  {
    v15 = [*(a1 + 32) db];
    v16 = [v15 fetchSQL:{@"SELECT recordIDSuffix FROM AssetsToDelete WHERE domain = %@", *(a1 + 40)}];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10019F398;
    v25[3] = &unk_1003C09B8;
    v17 = v13;
    v26 = v17;
    v18 = v10;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v27 = v18;
    v29 = &v37;
    v30 = v20;
    v28 = v19;
    v21 = [v16 enumerateWithError:a3 block:v25];

    if (v21)
    {
      if (v38[3] && (v22 = [v18 count], !(objc_msgSend(v17, "count") + v22)) || (*(*(a1 + 48) + 16))())
      {
        v23 = 1;
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  return v23;
}

uint64_t sub_10019F2EC(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  [*(a1 + 32) addObject:v3];
  if ([*(a1 + 32) count] >= *(a1 + 64))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    if (!(*(*(a1 + 48) + 16))())
    {
      v4 = 0;
      goto LABEL_6;
    }

    [*(a1 + 32) removeAllObjects];
  }

  v4 = 1;
LABEL_6:

  return v4;
}

uint64_t sub_10019F398(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  [*(a1 + 32) addObject:v3];
  v4 = [*(a1 + 40) count];
  if (&v4[[*(a1 + 32) count]] >= *(a1 + 64))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    if (!(*(*(a1 + 48) + 16))())
    {
      v5 = 0;
      goto LABEL_6;
    }

    [*(a1 + 40) removeAllObjects];
    [*(a1 + 32) removeAllObjects];
  }

  v5 = 1;
LABEL_6:

  return v5;
}

uint64_t sub_10019F870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];
  [v3 unsignedLongLongAtIndex:2];
  [v3 unsignedLongLongAtIndex:3];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_10019FA10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];
  [v3 unsignedLongLongAtIndex:2];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_10019FB90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];
  [v3 unsignedLongLongAtIndex:2];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

void sub_1001A0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A044C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    **(a1 + 40) = [v3 unsignedIntAtIndex:0];
  }

  v5 = [v4 stringAtIndex:1];
  v6 = [v4 unsignedLongLongAtIndex:2];
  v7 = [v4 unsignedCharAtIndex:3];
  v8 = [v4 dataAtIndex:4];
  v9 = +[MBAssetMetadata assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:](MBAssetMetadata, "assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:", v5, v8, [v4 unsignedLongLongAtIndex:5], v6, v7, 0);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(a1 + 48))
  {
    **(a1 + 48) = [v4 unsignedLongAtIndex:6];
  }

  return 1;
}

uint64_t sub_1001A0654(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 stringAtIndex:0];
  v7 = [v5 unsignedIntAtIndex:1];

  v8 = (*(v4 + 16))(v4, v6, v7, a3);
  return v8;
}

uint64_t sub_1001A08D4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 unsignedLongLongAtIndex:0];
  v4 = [v3 stringAtIndex:1];

  v5 = (*(*(a1 + 32) + 16))();
  return v5;
}

uint64_t sub_1001A0A44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v5 executeWithError:a3 sql:{@"INSERT OR REPLACE INTO DomainHMACsToRepair (domainHMAC) VALUES (%@)", v11}] & 1) == 0)
        {
          v13 = MBGetDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *a3;
            *buf = 138412546;
            v21 = v11;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to add repair domain HMAC %@: %@", buf, 0x16u);
            _MBLog(@"E ", "Failed to add repair domain HMAC %@: %@", v11, *a3, v16);
          }

          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

uint64_t sub_1001A1000(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  [*(a1 + 32) addObject:v3];

  return 1;
}

void sub_1001A1424(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001A13D0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A17FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MBDomain isAppName:v3])
  {
    v4 = [*(a1 + 40) dependentDomainNamesForAppDomainName:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return 1;
}

void sub_1001A1B80(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001A1B0CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MBCopyAssetsToUploadIntoPendingSnapshotDB(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 snapshotDirectoryRoot];
  v11 = [v7 commitID];
  v12 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v10 commitID:v11 readonly:1 error:a4];
  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = v11;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Copying assets to upload for pending commitID %@ previous commitID: %@", buf, 0x16u);
      _MBLog(@"I ", "Copying assets to upload for pending commitID %@ previous commitID: %@", v11, v8);
    }

    v14 = +[NSFileManager defaultManager];
    v31 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001A1F80;
    v24[3] = &unk_1003C0A80;
    v25 = v10;
    v26 = v11;
    v15 = v14;
    v27 = v15;
    v28 = v8;
    v29 = v7;
    v23 = v9;
    v30 = v9;
    v16 = [v12 enumerateDomainsRequiringFileListCopy:&v31 block:v24];
    v17 = v31;
    v18 = [v12 close:a4];
    v19 = v18 & v16;
    if (v18 && (v16 & 1) == 0)
    {
      if (a4)
      {
        v20 = v17;
        *a4 = v17;
      }

      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to copy assets to upload into pending snapshot database: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to copy assets to upload into pending snapshot database: %@", v17);
      }

      v19 = 0;
    }

    v9 = v23;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_1001A1F80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("MBCopyAssetsToUploadIntoPendingSnapshotDB_block_invoke", "MBPendingSnapshotDB.m", 1047, "domainName");
  }

  if (!a3)
  {
    __assert_rtn("MBCopyAssetsToUploadIntoPendingSnapshotDB_block_invoke", "MBPendingSnapshotDB.m", 1048, "enumerationError");
  }

  v6 = v5;
  v7 = MBFileListDBPath(*(a1 + 32), *(a1 + 40), v5);
  if ([*(a1 + 48) fileExistsAtPath:v7])
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = MBFileListDBPath(*(a1 + 32), v8, v6);
      if ([*(a1 + 48) fileExistsAtPath:v9])
      {
        v10 = [MBFileListDB openDatabaseIn:*(a1 + 32) commitID:*(a1 + 56) domainName:v6 error:a3];
        if (!v10 || (v11 = v10, v12 = [v10 close:a3], v11, (v12 & 1) == 0))
        {
          v13 = MBGetDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 56);
            v15 = *a3;
            *buf = 138412802;
            v21 = v14;
            v22 = 2112;
            v23 = v6;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=asset copy= Failed to upgrade file list database for commitID: %@ domainName: %@: %@", buf, 0x20u);
            _MBLog(@"E ", "=asset copy= Failed to upgrade file list database for commitID: %@ domainName: %@: %@", *(a1 + 56), v6, *a3);
          }

          goto LABEL_25;
        }

        goto LABEL_17;
      }

      buf[0] = 0;
      if (![*(a1 + 64) isDomainInPreviousSnapshot:v6 outResult:buf error:a3])
      {
        goto LABEL_25;
      }

      if (buf[0] == 1)
      {
        *a3 = [MBError errorWithCode:205 path:v9 format:@"Previous file list for domain not found"];
        goto LABEL_25;
      }
    }

    v9 = 0;
LABEL_17:
    if ([*(a1 + 72) shouldRepairDomain:v6])
    {

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=domain repair= Not copying assets in previous file list for %@", buf, 0xCu);
        _MBLog(@"I ", "=domain repair= Not copying assets in previous file list for %@", v6);
      }

      v9 = 0;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=asset copy= Copying assets to upload from pending file list:%@ previous file list:%@", buf, 0x16u);
      _MBLog(@"I ", "=asset copy= Copying assets to upload from pending file list:%@ previous file list:%@", v7, v9);
    }

    if ([*(a1 + 64) copyAssetsToUploadFromPendingFileList:v7 previousFileListPath:v9 domainName:v6 error:a3])
    {
      v16 = [*(a1 + 64) markDomainRequiringAssetUpload:v6 error:a3];
LABEL_26:

      goto LABEL_27;
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  [MBError errorWithCode:205 path:v7 format:@"Pending file list for domain not found"];
  *a3 = v16 = 0;
LABEL_27:

  return v16;
}

id MBCommitUploadedAssetsIntoFileList(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v5 snapshotDirectoryRoot];
  v8 = [v5 commitID];
  v22 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001A24F8;
  v18[3] = &unk_1003C0AA8;
  v9 = v7;
  v19 = v9;
  v10 = v8;
  v20 = v10;
  v11 = v5;
  v21 = v11;
  v12 = [v6 enumerateDomainsRequiringAssetUpload:&v22 block:v18];

  v13 = v22;
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    if (a3)
    {
      v15 = v13;
      *a3 = v14;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to write uploaded assets into file list: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to write uploaded assets into file list: %@", v14);
    }
  }

  return v12;
}

id sub_1001A24F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("MBCommitUploadedAssetsIntoFileList_block_invoke", "MBPendingSnapshotDB.m", 1111, "domainName");
  }

  if (!a3)
  {
    __assert_rtn("MBCommitUploadedAssetsIntoFileList_block_invoke", "MBPendingSnapshotDB.m", 1112, "enumerationError");
  }

  v6 = v5;
  v7 = MBFileListDBPath(*(a1 + 32), *(a1 + 40), v5);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=asset commit= Writing uploaded assets into file list %@", buf, 0xCu);
    _MBLog(@"Df", "=asset commit= Writing uploaded assets into file list %@", v7);
  }

  v9 = [*(a1 + 48) countAssetsPendingUploadForDomainName:v6 error:a3];
  if (v9)
  {
    [MBError errorWithCode:205 format:@"Found %lld files pending upload for %@", v9, v6];
    *a3 = v10 = 0;
  }

  else if ([*(a1 + 48) commitUploadedAssetsIntoPendingFileList:v7 domainName:v6 error:a3])
  {
    v10 = [*(a1 + 48) markDomainRequiringFileListUpload:v6 error:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

int64_t sub_1001A35C4(id a1, id a2, id a3)
{
  v5 = [a2 snapshotID];
  if (v5 < [a3 snapshotID])
  {
    return -1;
  }

  v7 = [a2 snapshotID];
  return v7 != [a3 snapshotID];
}

void sub_1001A9F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A9F84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1001A9F9C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v36 = v10;
      v37 = 2112;
      *v38 = v11;
      *&v38[8] = 2112;
      *&v38[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 88) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 88) + 8) + 24);
      v20 = *(a1 + 104);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v36 = v19;
      v37 = 1024;
      *v38 = v20;
      *&v38[4] = 2114;
      *&v38[6] = v21;
      *&v38[14] = 2114;
      *&v38[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), single pass", buf, 0x26u);

      v23 = *(*(*(a1 + 88) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 104);
      v26 = [*(a1 + 32) name];
      _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), single pass", v23, v25, v24, v26);
    }
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
  v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

  [v30 setNode:a3];
  if ([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)])
  {
    v16 = 1;
  }

  else
  {
    if ((*(a3 + 68) & 0xF000) == 0x4000 || ![v7 mb_pathHasSQLiteJournalSuffix])
    {
      [*(a1 + 64) addObject:v7];
      v34 = *(a1 + 72);
      v33 = [NSData dataWithBytes:a3 length:72];
      [v34 addObject:v33];
    }

    else
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }

    v16 = *(*(*(a1 + 80) + 8) + 40) == 0;
  }

LABEL_8:
  return v16;
}

void sub_1001AA8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 240), 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001AA908(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v35 = v10;
      v36 = 2112;
      *v37 = v11;
      *&v37[8] = 2112;
      *&v37[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 72) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 72) + 8) + 24);
      v20 = *(a1 + 88);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v35 = v19;
      v36 = 1024;
      *v37 = v20;
      *&v37[4] = 2114;
      *&v37[6] = v21;
      *&v37[14] = 2114;
      *&v37[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

      v23 = *(*(*(a1 + 72) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 88);
      v26 = [*(a1 + 32) name];
      _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), first pass", v23, v25, v24, v26);
    }
  }

  if ((*(a3 + 68) & 0xF000) == 0x4000 || ![v7 mb_pathHasSQLiteJournalSuffix])
  {
    v16 = 1;
  }

  else
  {
    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
    v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

    [v30 setNode:a3];
    if ([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)])
    {
      v16 = 1;
    }

    else
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 80)];
      v32 = *(*(a1 + 64) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      v16 = *(*(*(a1 + 64) + 8) + 40) == 0;
    }
  }

LABEL_8:

  return v16;
}

uint64_t sub_1001AAC7C(uint64_t a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v39 = v10;
      v40 = 2112;
      *v41 = v11;
      *&v41[8] = 2112;
      *&v41[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if ((v12 & 1) == 0)
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(*(a1 + 88) + 8) + 24);
        v20 = *(a1 + 104);
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) name];
        *buf = 134218754;
        v39 = v19;
        v40 = 1024;
        *v41 = v20;
        *&v41[4] = 2114;
        *&v41[6] = v21;
        *&v41[14] = 2114;
        *&v41[16] = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v23 = *(*(*(a1 + 88) + 8) + 24);
        v24 = *(a1 + 40);
        v25 = *(a1 + 104);
        v26 = [*(a1 + 32) name];
        _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), second pass", v23, v25, v24, v26);
      }
    }

    if (a3[17] & 0xF000) != 0x4000 && ([v7 mb_pathHasSQLiteJournalSuffix])
    {
      v16 = 1;
      goto LABEL_8;
    }

    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
    v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

    [v30 setNode:a3];
    if (([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)] & 1) == 0)
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      if (*(*(*(a1 + 80) + 8) + 40))
      {
        v16 = 0;
        goto LABEL_20;
      }

      if ([v30 isDirectory])
      {
        v34 = *(a1 + 64);
        v35 = [v30 relativePath];
        [v34 addObject:v35];

        v36 = *(a1 + 72);
        v37 = [NSNumber numberWithUnsignedInt:*a3];
        [v36 addObject:v37];
      }
    }

    v16 = 1;
LABEL_20:

    goto LABEL_8;
  }

  v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
  v14 = *(*(a1 + 80) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_7:
  v16 = 0;
LABEL_8:

  return v16;
}

void sub_1001ADD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001ADDA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subDomain];

  if (!v4)
  {
    v7 = *(a1 + 56);
    goto LABEL_6;
  }

  v5 = *(a1 + 32);
  v6 = [v3 subDomain];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
LABEL_6:
    [v7 updateWithFile:v3];
    [*(a1 + 64) updateWithFile:v3];
    v17 = 1;
    goto LABEL_7;
  }

  v8 = [NSString alloc];
  v9 = [*(a1 + 40) domainName];
  v10 = [v3 subDomain];
  v7 = [v8 initWithFormat:@"%@/%@", v9, v10];

  v11 = [[MBCKDomainStatistics alloc] initWithDomainName:v7];
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 32);
    v14 = [v3 subDomain];
    [v13 setValue:v12 forKey:v14];

    v15 = [(MBCKDomainStatistics *)v12 statistics];
    [v15 setValue:v7 forKey:@"DomainName"];

    v16 = [(MBCKDomainStatistics *)v12 statistics];
    [*(a1 + 48) setObject:v16 forKeyedSubscript:v7];

    v7 = v12;
    goto LABEL_6;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Analysis: Unable to allocate MBCKDomainStatistics for subdomain", buf, 2u);
    _MBLog(@"E ", "Analysis: Unable to allocate MBCKDomainStatistics for subdomain");
  }

  v17 = 0;
LABEL_7:

  return v17;
}

uint64_t sub_1001ADFA8(uint64_t result, int a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

uint64_t sub_1001ADFC4(uint64_t result, int a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

void sub_1001AEF24(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1001AEBD4);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t sub_1001AEFD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001AEFEC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001AF050(uint64_t a1, void *a2, char a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Placeholder: error during supplyBytes: %@", buf, 0xCu);
      _MBLog(@"E ", "Placeholder: error during supplyBytes: %@", v6);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001AF15C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Placeholder: unable to unzip: %@ - %@", buf, 0x16u);
      _MBLog(@"E ", "Placeholder: unable to unzip: %@ - %@", *(a1 + 32), v3);
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = v3;
    v5 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Placeholder: unzipped %@", buf, 0xCu);
    _MBLog(@"I ", "Placeholder: unzipped %@", *(a1 + 32));
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001B0130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[MBPrebuddyManager baseFollowupItem];
  v6 = [*(a1 + 32) _initialFollowUpTitle:*(a1 + 40)];
  [v5 setTitle:v6];

  v7 = [*(a1 + 32) _initialFollowUpMessage:*(a1 + 40) needsTemporaryStorage:v4];
  [v5 setInformativeText:v7];

  v8 = [*(a1 + 32) _initialFollowUpActionTitle:*(a1 + 40)];
  v9 = [FLFollowUpAction actionWithLabel:v8 url:0];

  v29[0] = MBPrebuddyFollowUpIsManualSignalKey;
  v29[1] = FLUserInfoPropertyDontDisplayDate;
  v30[0] = &__kCFBooleanFalse;
  v30[1] = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v9 setUserInfo:v10];

  v28 = v9;
  v11 = [NSArray arrayWithObjects:&v28 count:1];
  [v5 setActions:v11];

  v12 = [*(a1 + 32) _newPrebuddyNotification:*(a1 + 40)];
  [v5 setNotification:v12];

  v25 = 0;
  v13 = [MBPersona personalPersonaWithError:&v25];
  v14 = v25;
  if (!v13)
  {
    v16 = MBGetDefaultLog();
    v18 = 604800.0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= No persona to get kMBPrebuddyFollowUpExpirationDelta: %@", buf, 0xCu);
      _MBLog(@"E ", "=prebuddy-cfu= No persona to get kMBPrebuddyFollowUpExpirationDelta: %@", v14);
    }

    goto LABEL_9;
  }

  v15 = [v13 copyPreferencesValueForKey:@"PrebuddyFollowUpExpirationDelta" class:objc_opt_class()];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;
LABEL_9:

    goto LABEL_11;
  }

  v18 = 604800.0;
LABEL_11:
  v19 = [NSDate dateWithTimeIntervalSinceNow:v18];
  [v5 setExpirationDate:v19];

  v20 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
  v24 = 0;
  v21 = [v20 postFollowUpItem:v5 error:&v24];
  v22 = v24;
  if ((v21 & 1) == 0)
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= Failed to post prebuddy follow up, error : %@", buf, 0xCu);
      _MBLog(@"E ", "=prebuddy-cfu= Failed to post prebuddy follow up, error : %@", v22);
    }
  }
}

uint64_t sub_1001B0E70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B0E88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= Failed to compute estimated time remaining string: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "=prebuddy-cfu= Failed to compute estimated time remaining string: %{public}@", v6);
    }
  }
}

void sub_1001B0F7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= Failed to compute countdown string: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "=prebuddy-cfu= Failed to compute countdown string: %{public}@", v6);
    }
  }
}

void sub_1001B1890(id a1)
{
  qword_1004219A8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];

  _objc_release_x1();
}

void sub_1001B18D8(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_1004219A0;
  qword_1004219A0 = 0;

  objc_sync_exit(obj);
}

void sub_1001B1AC8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1004219C8;
  qword_1004219C8 = v1;

  v3 = objc_opt_new();
  v4 = qword_1004219D0;
  qword_1004219D0 = v3;

  v5 = objc_opt_new();
  v6 = qword_1004219D8;
  qword_1004219D8 = v5;

  dword_1004219C0 = 0;
  qword_1004219E0 = objc_opt_new();

  _objc_release_x1();
}

void sub_1001B23C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001B23F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    v10 = objc_alloc([*(a1 + 48) _responseClassForTask:*(a1 + 32)]);
    v15 = 0;
    v11 = [v10 initWithDictionary:v7 error:&v15];
    v12 = v15;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = [MBError errorWithCode:309 description:@"Got nil response for request"];
    (*(v13 + 16))(v13, 0, v14);
  }
}

id sub_1001B2524(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1001B2558(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending %@", buf, 0xCu);
    _MBLog(@"Df", "Sending %@", *(a1 + 32));
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 72) _eventIDForTask:*(a1 + 48)];
  [v5 sendRequestID:v6 request:*(a1 + 56) destinationID:RPDestinationIdentifierDirectPeer options:0 responseHandler:*(*(*(a1 + 64) + 8) + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1001B2674(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Received response for request %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Received response for request %@: %@", *(a1 + 32), v9);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138412546;
    v25 = v14;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received response for request %@: %@", buf, 0x16u);
    _MBLog(@"Df", "Received response for request %@: %@", *(a1 + 32), v7);
  }

  v15 = [v9 domain];
  if (![v15 isEqualToString:RPErrorDomain])
  {

    goto LABEL_14;
  }

  if ([v9 code] != -6723 && objc_msgSend(v9, "code") != -6753)
  {
    v23 = [v9 code];

    if (v23 == -71143)
    {
      goto LABEL_10;
    }

LABEL_14:
    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

LABEL_10:
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    v18 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 138412546;
    v25 = v17;
    v26 = 2048;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Resending %@ after %.3fs", buf, 0x16u);
    _MBLog(@"E ", "Resending %@ after %.3fs", *(a1 + 32), *(*(*(a1 + 56) + 8) + 24));
  }

  v19 = dispatch_time(0, (*(*(*(a1 + 56) + 8) + 24) * 1000000000.0));
  v20 = [*(a1 + 40) dispatchQueue];
  dispatch_after(v19, v20, *(*(*(a1 + 64) + 8) + 40));

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + 10.0;
  *(*(*(a1 + 56) + 8) + 24) = fmin(*(*(*(a1 + 56) + 8) + 24), 60.0);
LABEL_15:
  objc_autoreleasePoolPop(v10);
}

void sub_1001B2B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B2BA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B2BB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001B2E1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v20 = a3;
  v8 = a4;
  context = objc_autoreleasePoolPush();
  v9 = [v7 objectForKeyedSubscript:@"MBPeerMessengerTransactionID"];
  v10 = objc_alloc(*(a1 + 48));
  v24 = 0;
  v11 = [v10 initWithDictionary:v7 error:&v24];
  v12 = v24;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001B30B0;
  v22[3] = &unk_1003C0DB0;
  v13 = v8;
  v23 = v13;
  v14 = objc_retainBlock(v22);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B3228;
  v21[3] = &unk_1003C0DD8;
  v21[4] = *(a1 + 32);
  v15 = objc_retainBlock(v21);
  if ([*(a1 + 32) isEqualToString:@"MBPeerTaskInit"])
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Resetting the %@ cache", buf, 0xCu);
      v18 = objc_opt_class();
      _MBLog(@"Df", "Resetting the %@ cache", v18);
    }

    [qword_1004219E0 reset];
  }

  if ([qword_1004219E0 shouldHandleNewRequestForTask:*(a1 + 32) transactionID:v9 responseHandler:v14])
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(context);
}

void sub_1001B30B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Sending %@, %@", buf, 0x16u);
      _MBLog(@"E ", "Sending %@, %@", v5, v6);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending %@", buf, 0xCu);
    _MBLog(@"Df", "Sending %@", v5);
  }

  v9 = [v5 dictionaryRepresentation];
  (*(*(a1 + 32) + 16))();
}

void sub_1001B4DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B4E04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 recordID];
    v6 = [v5 recordName];
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched keybag record %{public}@", buf, 0xCu);

    v7 = [v3 recordID];
    v8 = [v7 recordName];
    _MBLog(@"Df", "Fetched keybag record %{public}@", v8);
  }

  v9 = [[MBCKKeyBag alloc] initWithRecord:v3 device:*(a1 + 32)];
  [*(a1 + 40) addKeybag:v9];
}

void sub_1001B4F50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained operationID];

    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v6;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Keybag fetch operation %{public}@ failed with error: %@", buf, 0x16u);
      _MBLog(@"E ", "Keybag fetch operation %{public}@ failed with error: %@", v6, v4);
    }

    goto LABEL_10;
  }

  v8 = [*(a1 + 32) keybagRefs];
  v9 = [v8 count];
  v10 = [*(a1 + 32) keybagsByUUID];
  v11 = [v10 count];

  if (v9 != v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) keybagsByUUID];
      v14 = [v13 count];
      v15 = [*(a1 + 32) keybagRefs];
      *buf = 134218240;
      v29 = v14;
      v30 = 2048;
      v31 = [v15 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch the expected number of keybags: %ld/%ld", buf, 0x16u);

      v16 = [*(a1 + 32) keybagsByUUID];
      v17 = [v16 count];
      v18 = [*(a1 + 32) keybagRefs];
      _MBLog(@"E ", "Failed to fetch the expected number of keybags: %ld/%ld", v17, [v18 count]);
    }
  }

  [*(a1 + 32) setHasFetchedKeybags:1];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 32) keybagsByUUID];
    v20 = [v19 count];
    v21 = [*(a1 + 32) keybagRefs];
    v22 = [v21 count];
    v23 = [*(a1 + 40) deviceUUID];
    *buf = 134218498;
    v29 = v20;
    v30 = 2048;
    v31 = v22;
    v32 = 2114;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched %ld/%ld keybags for device %{public}@", buf, 0x20u);

    v7 = [*(a1 + 32) keybagsByUUID];
    v24 = [v7 count];
    v25 = [*(a1 + 32) keybagRefs];
    v26 = [v25 count];
    v27 = [*(a1 + 40) deviceUUID];
    _MBLog(@"Df", "Fetched %ld/%ld keybags for device %{public}@", v24, v26, v27);

LABEL_10:
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001B53EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B5404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B541C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

NSObject *MBRequiredProductVersion(uint64_t a1)
{
  if (qword_1004219F0 != -1)
  {
    dispatch_once(&qword_1004219F0, &stru_1003C0E70);
  }

  if (a1 == 4)
  {
    v6 = [qword_1004219E8 objectForKeyedSubscript:@"D2D"];
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = qword_1004219E8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Missing required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog(@"Df", "Missing required product versions for engine type %d: %{public}@", a1, qword_1004219E8);
    }

    goto LABEL_27;
  }

  if (a1 == 3)
  {
    v2 = [qword_1004219E8 objectForKeyedSubscript:@"Cloud"];
    if (!v2)
    {
      v3 = qword_1004219E8;
      v4 = @"iCloud";
      goto LABEL_14;
    }

LABEL_9:
    v5 = v2;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    goto LABEL_11;
  }

  v2 = [qword_1004219E8 objectForKeyedSubscript:@"Local"];
  if (v2)
  {
    goto LABEL_9;
  }

  v3 = qword_1004219E8;
  v4 = @"Drive";
LABEL_14:
  v5 = [v3 objectForKeyedSubscript:v4];
LABEL_15:
  v6 = v5;

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog(@"E ", "Invalid required product versions for engine type %d: %{public}@", a1, v6);
    }

LABEL_27:
    v11 = 0;
    goto LABEL_34;
  }

  v7 = MBProductVersion();
  if (!v7)
  {
    __assert_rtn("MBRequiredProductVersion", "MBEngine.m", 49, "productVersion");
  }

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:v7];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 compare:v9 options:64] != -1)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *v16 = v8;
        *&v16[8] = 1024;
        *&v16[10] = a1;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "productVersion:%{public}@, engineType:%d, requiredProductVersion:%{public}@", buf, 0x1Cu);
        _MBLog(@"Df", "productVersion:%{public}@, engineType:%d, requiredProductVersion:%{public}@", v8, a1, v9);
      }

      v11 = v9;
      goto LABEL_33;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
      _MBLog(@"E ", "Invalid required product version for %{public}@ and engine type %d: %{public}@", v8, a1, v6);
    }
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
      _MBLog(@"Df", "Missing required product version for %{public}@ and engine type %d: %{public}@", v8, a1, v6);
    }
  }

  v11 = 0;
LABEL_33:

LABEL_34:

  return v11;
}

void sub_1001B6D34(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CompatibilityVersions" ofType:@"plist"];

  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
  v4 = qword_1004219E8;
  qword_1004219E8 = v3;

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = v2;
    v8 = 2114;
    v9 = qword_1004219E8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Loaded %{public}@: %{public}@", v2, qword_1004219E8);
  }
}

uint64_t sub_1001B9CC8(uint64_t a1, uint64_t a2)
{
  result = BYSetupAssistantNeedsToRun();
  if ((result & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setup assistant finished (polling)", v5, 2u);
      _MBLog(@"I ", "Setup assistant finished (polling)");
    }

    return [*(a1 + 32) _setupAssistantDidFinish];
  }

  return result;
}

id sub_1001B9D58(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received %{public}@ notification for background restore progress monitor", buf, 0xCu);
    _MBLog(@"Df", "Received %{public}@ notification for background restore progress monitor", *(a1 + 32));
  }

  return [*(a1 + 40) _setupAssistantDidFinish];
}

void sub_1001B9FA4(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a2 & 1;
  v5 = ((*&a2 & 0x10100) == 256) & (a3 >> 2);
  v6 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BA05C;
  v7[3] = &unk_1003C0EF8;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  dispatch_async(v6, v7);
}

void sub_1001BA05C(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 9));
  if ((v1 & 1) == 0)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      [*(a1 + 32) _startNetworkAccessTimer];
    }

    [*(a1 + 32) _clearRestoreInProgressFollowUp];
    [*(a1 + 32) _registerForBackgroundRestoreCellularAccessChangedNotification];
    [*(a1 + 32) _registerForThermalPressureNotifications];
    [*(a1 + 32) _startRestoreInProgressFollowUpTimer];
    [*(a1 + 32) _startRestoreTelemetryHeartbeatTimer];
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 41);
      *buf = 67109376;
      v7 = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Started background restore progress monitor, isWiFiAvailable:%d isRestoreOnCellularAvailable:%d", buf, 0xEu);
      _MBLog(@"Df", "Started background restore progress monitor, isWiFiAvailable:%d isRestoreOnCellularAvailable:%d", *(a1 + 40), *(a1 + 41));
    }
  }
}

id sub_1001BA228(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 45);
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling Wi-Fi network path update for restore prompt, isWiFiAvailable:%d", buf, 8u);
      _MBLog(@"Df", "Handling Wi-Fi network path update for restore prompt, isWiFiAvailable:%d", v2);
    }

    v4 = *(a1 + 32);
    if (v2)
    {
      [v4 _cancelNetworkAccessTimer];
    }

    else
    {
      [v4 _startNetworkAccessTimer];
    }
  }

  return [*(a1 + 32) _postRestoreInProgressFollowUpWithReason:@"Network Changed"];
}

void sub_1001BA570(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restore prompt network access timer fired", v5, 2u);
    _MBLog(@"Df", "Restore prompt network access timer fired");
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNetworkAccessTimer];

  objc_autoreleasePoolPop(v2);
}

void sub_1001BA6E8(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a2;
  v5 = ((*&a2 & 0x10100) == 256) & (a3 >> 2);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v11 = v3 & 1;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling background restore prompt timer, isWiFiAvailable:%d, isRestoreOnCellularAvailable:%d", buf, 0xEu);
    _MBLog(@"Df", "Handling background restore prompt timer, isWiFiAvailable:%d, isRestoreOnCellularAvailable:%d", v3 & 1, v5);
  }

  if ((v3 & 1) == 0)
  {
    v7 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BA84C;
    block[3] = &unk_1003BCAC0;
    v9 = v5;
    block[4] = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

id sub_1001BA84C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    result = [v3 _firePromptForCellular];
    if (result)
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Retrying network access timer", v6, 2u);
        _MBLog(@"I ", "Retrying network access timer");
      }

      return [*(a1 + 32) _startNetworkAccessTimer];
    }
  }

  else
  {

    return [v3 _firePromptForWiFi];
  }

  return result;
}

void sub_1001BA9BC(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v9 = a2;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received response from WiFi prompt:(%lu), error:%@", buf, 0x16u);
    _MBLog(@"Df", "Received response from WiFi prompt:(%lu), error:%@", a2, v4);
  }

  if (v4)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error when firing WiFi prompt:%@", buf, 0xCu);
      _MBLog(@"E ", "Error when firing WiFi prompt:%@", v4);
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v6 openSensitiveURL:v7 withOptions:0];

LABEL_8:
  }
}

void sub_1001BAFD4(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received response from cellular prompt:(%lu) error:%@", buf, 0x16u);
    _MBLog(@"Df", "Received response from cellular prompt:(%lu) error:%@", a2, v5);
  }

  if (v5)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error when firing cellular prompt:%@", buf, 0xCu);
      _MBLog(@"E ", "Error when firing cellular prompt:%@", v5);
    }

    goto LABEL_15;
  }

  if (a2 == 2)
  {
    v7 = +[MBCellularAccess inexpensiveCellularAccess];
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User specified cellular access from restore prompt:%@", buf, 0xCu);
      _MBLog(@"Df", "User specified cellular access from restore prompt:%@", v7);
    }

    [*(a1 + 32) saveBackgroundRestoreCellularAccess:v7 account:*(a1 + 40) error:0];
    v9 = [*(a1 + 40) persona];
    v11 = +[NSDate now];
    [v9 setPreferencesValue:v11 forKey:@"BackgroundCellularAccessConfirmationDate"];

    goto LABEL_14;
  }

  if (a2 == 3)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User specified no cellular background access from restore prompt", buf, 2u);
      _MBLog(@"Df", "User specified no cellular background access from restore prompt");
    }

    [*(a1 + 32) saveBackgroundRestoreCellularAccess:0 account:*(a1 + 40) error:0];
    v7 = [*(a1 + 40) persona];
    v9 = +[NSDate now];
    [v7 setPreferencesValue:v9 forKey:@"BackgroundCellularAccessConfirmationDate"];
LABEL_14:

LABEL_15:
  }
}

void sub_1001BB490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BB4D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCellularAccessChangedNotification];
}

void sub_1001BB620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _isContinuouslyThermallyThrottled];
    WeakRetained = v3;
    if (v3[20] != v2)
    {
      [v3 _postRestoreInProgressFollowUpWithReason:@"Thermals"];
      WeakRetained = v3;
    }

    WeakRetained[20] = v2;
  }
}

void sub_1001BBA6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postRestoreInProgressFollowUpWithReason:@"Timer"];
}

void sub_1001BBE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBF84;
  block[3] = &unk_1003C0FB0;
  v16 = a2;
  v17 = a3;
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18 = *(a1 + 64);
  v10 = v9;
  *&v11 = v8;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  dispatch_async(v6, block);
}

void sub_1001BBF84(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 9));
  if ((v1 & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setIsThermallyThrottled:{objc_msgSend(*(a1 + 32), "_isContinuouslyThermallyThrottled")}];
    [v3 setIsOnWiFi:*(a1 + 64)];
    [v3 setIsOnInexpensiveCellular:((*(a1 + 64) & 0x10100) == 256) & (*(a1 + 72) >> 2)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 0;
    v6 = [v4 fetchBackgroundRestoreCellularAccessForAccount:v5 error:&v13];
    v7 = v13;
    [v3 setHasCellularPolicy:v6 != 0];

    [v3 setEstimatedSize:*(a1 + 80)];
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting follow up with update (%@): %@", buf, 0x16u);
      _MBLog(@"Df", "Posting follow up with update (%@): %@", *(a1 + 56), v3);
    }

    v10 = +[MBFollowUpManager sharedManager];
    v11 = [*(a1 + 32) account];
    v12 = [v10 postFollowUpForBackgroundRestoreProgress:v3 account:v11];
  }
}

void sub_1001BC404(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postRestoreTelemetryHeartbeat];
}

void sub_1001BDBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BDC18(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Springboard is ready for a restore", v4, 2u);
    _MBLog(@"I ", "Springboard is ready for a restore");
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  Current = CFRunLoopGetCurrent();
  CFRunLoopStop(Current);
}

void sub_1001BE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001BE1F0(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  *(*(a1[7] + 8) + 40) = a4;
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

void sub_1001BE500(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_1001BE538(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

id sub_1001BE568(void *a1, void *a2)
{
  v4 = [*(*(a1[5] + 8) + 40) length];
  if ((v4 + [a2 length]) >> 20 > 4)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response from the server is too large. Bailing.", v8, 2u);
      _MBLog(@"E ", "Response from the server is too large. Bailing.");
    }

    [*(*(a1[6] + 8) + 40) cancel];
    [MBError errorWithDomain:NSURLErrorDomain code:-1103 format:@"Response body too large"];
    return (*(a1[4] + 16))();
  }

  else
  {
    v5 = *(*(a1[5] + 8) + 40);

    return [v5 appendData:a2];
  }
}

uint64_t sub_1001BE69C(void *a1)
{
  *(*(a1[5] + 8) + 40) = 0;

  *(*(a1[6] + 8) + 40) = 0;
  v2 = *(a1[4] + 16);

  return v2();
}

uint64_t sub_1001BE720(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(*(a1[6] + 8) + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4, 0);
}

uint64_t sub_1001BEC38(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 40) & 1) == 0)
  {
    v3 = result;
    [*(v2 + 16) cancel];
    [MBError errorWithDomain:NSURLErrorDomain code:-999 format:@"Request cancelled"];
    v4 = *(*(*(v3 + 32) + 64) + 16);

    return v4();
  }

  return result;
}

int64_t sub_1001BFA0C(id a1, MBSnapshot *a2, MBSnapshot *a3)
{
  v4 = a3;
  v5 = [(MBSnapshot *)a2 date];
  v6 = [(MBSnapshot *)v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

id MBCompactSQLiteFileForiCloudBackup(void *a1, void *a2, void *a3, void *a4, void *a5, _BYTE *a6)
{
  v11 = a1;
  v12 = a2;
  v59 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v63 objects:v71 count:16];
  p_superclass = (MBCKDomainStatistics + 8);
  v57 = v12;
  if (v16)
  {
    v18 = v16;
    v54 = a6;
    v56 = v14;
    v19 = *v64;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v21 shouldScrubSQLiteFileCopyAtRelativePath:v59 domain:v12])
        {
          objc_autoreleasePoolPop(v22);

          v55 = v11;
          v62 = 0;
          v23 = v11;
          v58 = v12;
          v24 = v59;
          v25 = v15;
          v14 = v56;
          v26 = v56;
          v27 = [v26 makeTemporaryFilePath];
          p_superclass = MBCKDomainStatistics.superclass;
          v28 = 0;
          if ([MBSQLiteFileHandle copySQLiteFileAtPath:v23 toPath:v27 error:&v62])
          {
            v52 = v26;
            v53 = v23;
            v70 = 0u;
            v68 = 0u;
            v69 = 0u;
            v67 = 0u;
            v29 = v25;
            v30 = [v29 countByEnumeratingWithState:&v67 objects:buf count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v68;
              while (2)
              {
                for (j = 0; j != v31; j = j + 1)
                {
                  if (*v68 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v67 + 1) + 8 * j);
                  v35 = objc_autoreleasePoolPush();
                  if (objc_opt_respondsToSelector())
                  {
                    v36 = [v34 scrubSQLiteFileCopyAtRelativePath:v24 copyTemporaryPath:v27 domain:v58];
                    if (v36)
                    {
                      v37 = v36;
                      objc_autoreleasePoolPop(v35);

                      v38 = v37;
                      v62 = v37;

                      v28 = 0;
                      goto LABEL_26;
                    }
                  }

                  objc_autoreleasePoolPop(v35);
                }

                v31 = [v29 countByEnumeratingWithState:&v67 objects:buf count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            v28 = v27;
LABEL_26:
            v14 = v56;
            p_superclass = MBCKDomainStatistics.superclass;
            v23 = v53;
            v26 = v52;
          }

          v39 = v62;
          if (v28)
          {
            if (v54)
            {
              *v54 = 1;
            }

            v40 = v23;
            v23 = v28;
          }

          else
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v73 = v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Failed to scrub database - uploading original copy: %@", buf, 0xCu);
              _MBLog(@"Df", "Failed to scrub database - uploading original copy: %@", v39);
            }
          }

          v11 = v55;
          goto LABEL_34;
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [v15 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v23 = v11;
    v14 = v56;
    p_superclass = (MBCKDomainStatistics + 8);
  }

  else
  {

    v23 = v11;
  }

LABEL_34:
  v41 = [v14 makeTemporaryFilePath];
  v61 = 0;
  v42 = [p_superclass + 179 compactSQLiteDatabaseAtPath:v23 toPath:v41 error:&v61];
  v43 = v61;
  if (v42)
  {
    v44 = v41;
  }

  else
  {
    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v73 = v11;
      v74 = 2112;
      v75 = v43;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@, attempt to copy and checkpoint instead: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to compact SQLite database at %@, attempt to copy and checkpoint instead: %@", v11, v43);
    }

    v46 = [v14 makeTemporaryFilePath];
    v60 = 0;
    v47 = [p_superclass + 179 copySQLiteFileAtPath:v23 toPath:v46 error:&v60];
    v48 = v60;
    v49 = v46;
    if ((v47 & 1) == 0)
    {
      v50 = MBGetDefaultLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v73 = v11;
        v74 = 2112;
        v75 = v48;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to copy and checkpoint SQLite database at %@, uploading file as-is: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to copy and checkpoint SQLite database at %@, uploading file as-is: %@", v11, v48);
      }

      v49 = v11;
    }

    v44 = v49;
  }

  return v44;
}

void sub_1001C399C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001C38E0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C50E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToData:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1001C7B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedIntValue];
  if ([v5 length])
  {
    do
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 unsignedIntValue] | v6);
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];

      v11 = [v5 stringByDeletingLastPathComponent];

      v5 = v11;
    }

    while ([v11 length]);
  }

  else
  {
    v11 = v5;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:&stru_1003C3430];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 unsignedIntValue] | v6);
  [*(a1 + 32) setObject:v10 forKeyedSubscript:&stru_1003C3430];
}

void sub_1001C8DD0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C8E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C8EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error collecting FSEvents: %@", buf, 0xCu);
      _MBLog(@"E ", "Error collecting FSEvents: %@", v3);
    }

    atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1uLL);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t IsDatalessFault(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    return (HIBYTE(v5.st_flags) >> 6) & 1;
  }

  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    *buf = 67109120;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "fstat failed: %{errno}d", buf, 8u);
    v3 = __error();
    _MBLog(@"E ", "fstat failed: %{errno}d", *v3);
  }

  return 0;
}

uint64_t IsDatalessFaultWithPath(void *a1)
{
  v1 = a1;
  memset(&v7, 0, sizeof(v7));
  if (lstat([v1 fileSystemRepresentation], &v7))
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 138412546;
      v9 = v1;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v4 = __error();
      _MBLog(@"E ", "stat failed at %@: %{errno}d", v1, *v4, *&v7.st_dev, v7.st_ino, *&v7.st_uid, *&v7.st_rdev, v7.st_atimespec.tv_sec, v7.st_atimespec.tv_nsec, v7.st_mtimespec.tv_sec, v7.st_mtimespec.tv_nsec, v7.st_ctimespec.tv_sec, v7.st_ctimespec.tv_nsec, v7.st_birthtimespec.tv_sec, v7.st_birthtimespec.tv_nsec, v7.st_size, v7.st_blocks, *&v7.st_blksize, *&v7.st_gen, v7.st_qspare[0], v7.st_qspare[1]);
    }

    v5 = 0;
  }

  else
  {
    v5 = (HIBYTE(v7.st_flags) >> 6) & 1;
  }

  return v5;
}

void sub_1001CD440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CD4A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001CD4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![v3 isRegularFile])
  {
    goto LABEL_22;
  }

  v5 = 1;
  if ([*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:1])
  {
    v6 = *(a1 + 32);
    v7 = v6[25];
    v8 = [v6 debugContext];
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v10 = [v7 restoreBehaviorForFile:v3 debugContext:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);

    if (v10 == 1)
    {
      v5 = 0;
      LOBYTE(a1) = 1;
      goto LABEL_23;
    }

    if (v10 == -1)
    {
      v5 = 0;
      LOBYTE(a1) = 0;
      goto LABEL_23;
    }

    v11 = *(*(a1 + 32) + 144);
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [*(*(a1 + 32) + 136) fetchFileWithID:v13 error:0];
      if (!v14)
      {
        v30 = +[NSAssertionHandler currentHandler];
        [v30 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"MBDriveRestoreEngine.m" lineNumber:704 description:{@"Restored file not found: %@", v13}];
      }

      v15 = [v14 lastModified];
      if (v15 == [v3 lastModified])
      {
        v16 = [v14 domain];
        v17 = [v16 volumeMountPoint];
        v18 = [v3 domain];
        v19 = [v18 volumeMountPoint];
        v20 = [v17 isEqualToString:v19];

        if (v20)
        {
          v21 = 1;
          goto LABEL_18;
        }

LABEL_15:
        if ((*(*(*(a1 + 48) + 8) + 24) - 31) >= 0xFFFFFFFFFFFFFFE0)
        {
          v24 = *(*(*(a1 + 56) + 8) + 24);
          if (!(([v3 size] + v24) >> 26))
          {
            goto LABEL_20;
          }
        }

        v21 = 0;
LABEL_18:
        v25 = *(*(a1 + 32) + 104);
        v26 = [MBDriveOperation operationToDownloadFilesWithCount:*(*(*(a1 + 48) + 8) + 24) size:*(*(*(a1 + 56) + 8) + 24)];
        [v25 addOperation:v26];

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        ++*(*(*(a1 + 64) + 8) + 24);
        if (v21)
        {
          v27 = (*(*(a1 + 80) + 8) + 24);
          v28 = 1;
LABEL_21:
          *v27 += v28;

LABEL_22:
          v5 = 1;
          goto LABEL_23;
        }

LABEL_20:
        ++*(*(*(a1 + 48) + 8) + 24);
        ++*(*(*(a1 + 72) + 8) + 24);
        ++*(*(a1 + 32) + 160);
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
        v28 = [v3 size];
        v27 = (*(a1 + 32) + 168);
        goto LABEL_21;
      }
    }

    else
    {
      v14 = [v3 fileID];
      v22 = *(*(a1 + 32) + 144);
      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
      [v22 setObject:v14 forKeyedSubscript:v23];
    }

    goto LABEL_15;
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);

  return (v5 | a1) & 1;
}

void sub_1001CEA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CEB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:0])
  {
LABEL_74:
    v9 = 1;
    goto LABEL_82;
  }

  v5 = *(a1 + 32);
  v6 = v5[25];
  v7 = [v5 debugContext];
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v6 restoreBehaviorForFile:v3 debugContext:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9 != 1)
  {
    if (v9 == -1)
    {
LABEL_81:
      v9 = 0;
      goto LABEL_82;
    }

    v10 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v3];
    v11 = *(*(a1 + 32) + 200);
    v12 = [v3 domain];
    v13 = [v3 relativePath];
    v14 = [v11 validateRestoreDomain:v12 relativePath:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (v14)
    {
LABEL_80:

      goto LABEL_81;
    }

    v17 = [v3 relativePath];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = [v10 stringByDeletingLastPathComponent];
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v106 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Creating directory: %@", buf, 0xCu);
        _MBLog(@"I ", "Creating directory: %@", v19);
      }

      v21 = +[NSFileManager defaultManager];
      v103 = 0;
      v22 = [v21 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v103];
      v23 = v103;

      if ((v22 & 1) == 0)
      {
        v44 = [MBError errorWithCode:102 error:v23 path:v19 format:@"Error creating directory"];
        v45 = *(*(a1 + 40) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;
LABEL_79:

        goto LABEL_80;
      }
    }

    if ([v3 isDirectory])
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v3 description];
        v26 = [v3 fileID];
        *buf = 138412546;
        v106 = v25;
        v107 = 2112;
        v108 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Restoring directory: %@ (%@)", buf, 0x16u);

        v27 = [v3 description];
        v28 = [v3 fileID];
        _MBLog(@"I ", "Restoring directory: %@ (%@)", v27, v28);
      }

      v29 = [MBRestorableOperation restore:v3 directoryAtPath:v10 settingDataProtection:1 settingOwnershipAndFlags:1];
      goto LABEL_14;
    }

    if (![v3 isRegularFile])
    {
      if (![v3 isSymbolicLink])
      {
        v29 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid file type: 0%o", [v3 type]);
LABEL_14:
        v30 = *(*(a1 + 40) + 8);
        v19 = *(v30 + 40);
        *(v30 + 40) = v29;
        goto LABEL_70;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v3 description];
        v38 = [v3 fileID];
        *buf = 138412546;
        v106 = v37;
        v107 = 2112;
        v108 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Restoring symbolic link: %@ (%@)", buf, 0x16u);

        v39 = [v3 description];
        v40 = [v3 fileID];
        _MBLog(@"I ", "Restoring symbolic link: %@ (%@)", v39, v40);
      }

      v19 = [v3 target];
      v41 = [MBRestorableOperation restore:v3 symbolicLinkAtPath:v10 withTarget:v19 settingOwnershipAndFlags:1];
      v42 = *(*(a1 + 40) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = v41;

LABEL_70:
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v85 = [v3 domain];
        v86 = [v85 isAppDomain];

        if (v86)
        {
          v87 = *(*(a1 + 32) + 152);
          v88 = [v3 domain];
          v89 = [v88 containerID];
          [v87 addObject:v89];
        }

        goto LABEL_74;
      }

      goto LABEL_80;
    }

    v31 = *(*(a1 + 32) + 144);
    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v23 = [v31 objectForKeyedSubscript:v32];

    if (!v23 || ([v3 fileID], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v23, "isEqualToFileID:", v33), v33, (v34 & 1) != 0))
    {
      v19 = 0;
LABEL_19:
      v35 = 0;
      goto LABEL_42;
    }

    v47 = *(*(a1 + 32) + 136);
    v48 = *(*(a1 + 40) + 8);
    v102 = *(v48 + 40);
    v99 = v23;
    v19 = [v47 fetchFileWithID:v23 error:&v102];
    objc_storeStrong((v48 + 40), v102);
    if (!v19)
    {
      v95 = +[NSAssertionHandler currentHandler];
      [v95 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"MBDriveRestoreEngine.m" lineNumber:904 description:{@"Restored file not found: %@", v23}];
    }

    v49 = [v19 domain];
    v50 = [v49 volumeMountPoint];
    v51 = [v3 domain];
    v52 = [v51 volumeMountPoint];
    v96 = [v50 isEqualToString:v52];

    if ((v96 & 1) == 0)
    {
      v53 = MBGetDefaultLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because they are on different volumes", buf, 2u);
        _MBLog(@"I ", "Not hard linking files with same inode number because they are on different volumes");
      }

      v19 = 0;
    }

    v54 = [v19 lastModified];
    if (v54 != [v3 lastModified])
    {
      v55 = MBGetDefaultLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because modification times differ", buf, 2u);
        _MBLog(@"I ", "Not hard linking files with same inode number because modification times differ");
      }

      v19 = 0;
    }

    v56 = [v19 domain];
    v57 = [v56 name];
    if ([v57 isEqualToString:@"HomeKitDomain"])
    {

      v23 = v99;
    }

    else
    {
      v58 = [v3 domain];
      v59 = [v58 name];
      v97 = [v59 isEqualToString:@"HomeKitDomain"];

      v23 = v99;
      if (!v97)
      {
        goto LABEL_19;
      }
    }

    v60 = MBGetDefaultLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Not hard linking known duplicate file in HomeKitDomain", buf, 2u);
      _MBLog(@"I ", "Not hard linking known duplicate file in HomeKitDomain");
    }

    v19 = 0;
    v35 = 1;
LABEL_42:
    if ([*(a1 + 32) encrypted])
    {
      v61 = [v3 encryptionKey];

      if (!v61)
      {
        v46 = [v3 fileID];
        v90 = [MBError errorWithCode:205 format:@"Encryption key missing: %@ (%@)", v3, v46];
        v91 = *(*(a1 + 40) + 8);
        v74 = *(v91 + 40);
        *(v91 + 40) = v90;
LABEL_78:

        goto LABEL_79;
      }
    }

    if (!v19 && [*(*(*(a1 + 48) + 8) + 40) count] - 31 >= 0xFFFFFFFFFFFFFFE0 && (v62 = *(*(*(a1 + 56) + 8) + 24), !((objc_msgSend(v3, "size") + v62) >> 26)) || (objc_msgSend(*(a1 + 32), "_restoreRegularFiles:size:", *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 24)), v63 = objc_claimAutoreleasedReturnValue(), v64 = *(*(a1 + 40) + 8), v65 = *(v64 + 40), *(v64 + 40) = v63, v65, objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "removeAllObjects"), *(*(*(a1 + 56) + 8) + 24) = 0, *(*(*(a1 + 64) + 8) + 24) += objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count"), ++*(*(*(a1 + 72) + 8) + 24), !v19))
    {
      if ((v35 & 1) == 0)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
      }

      goto LABEL_69;
    }

    v100 = v23;
    v46 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v19];
    v66 = [v46 fileSystemRepresentation];
    if (!v66)
    {
      __assert_rtn("[MBDriveRestoreEngine _restoreContent]_block_invoke", "MBDriveRestoreEngine.m", 940, "hardLinkPathFSR");
    }

    v67 = v66;
    v68 = [v10 fileSystemRepresentation];
    if (!v68)
    {
      __assert_rtn("[MBDriveRestoreEngine _restoreContent]_block_invoke", "MBDriveRestoreEngine.m", 942, "pathFSR");
    }

    v69 = v68;
    v70 = MBGetDefaultLog();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = [v3 fileID];
      *buf = 136315650;
      v106 = v67;
      v107 = 2080;
      v108 = v69;
      v109 = 2112;
      v110 = v71;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Restoring hard link from %s to %s (%@)", buf, 0x20u);

      v72 = [v3 fileID];
      _MBLog(@"I ", "Restoring hard link from %s to %s (%@)", v67, v69, v72);
    }

    if (!link(v67, v69))
    {
LABEL_68:
      ++*(*(*(a1 + 80) + 8) + 24);

      v23 = v100;
LABEL_69:

      goto LABEL_70;
    }

    if ([*(a1 + 32) isDeviceTransferEngine] && _os_feature_enabled_impl())
    {
      if (*__error() != 17 || ([v46 isEqualToString:v10] & 1) != 0)
      {
        goto LABEL_68;
      }

      v73 = +[NSFileManager defaultManager];
      v101 = 0;
      v98 = [v73 removeItemAtPath:v10 error:&v101];
      v74 = v101;

      if (v98)
      {
        if (link(v67, v69))
        {
          v75 = [MBError posixErrorWithPath:v10 format:@"hard link error: %@", v46];
          v76 = *(*(a1 + 40) + 8);
          v77 = *(v76 + 40);
          *(v76 + 40) = v75;

LABEL_77:
          v23 = v100;
          goto LABEL_78;
        }

        goto LABEL_67;
      }

      v83 = MBGetDefaultLog();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v106 = v10;
        v107 = 2112;
        v108 = v74;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "Failed to remove existing hard link at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove existing hard link at %@: %@", v10, v74);
      }
    }

    else
    {
      if (*__error() != 17 || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v67), v78 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v69), v79 = objc_claimAutoreleasedReturnValue(), v80 = [v78 isEqualToString:v79], v79, v78, !v80))
      {
        v92 = [MBError posixErrorWithPath:v10 format:@"link error to %@", v46];
        v93 = *(*(a1 + 40) + 8);
        v74 = *(v93 + 40);
        *(v93 + 40) = v92;
        goto LABEL_77;
      }

      v74 = MBGetDefaultLog();
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v81 = [v3 domain];
      v82 = [v81 name];
      *buf = 138412546;
      v106 = v46;
      v107 = 2112;
      v108 = v82;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Ignoring spurious hard link at %@ for %@", buf, 0x16u);

      v83 = [v3 domain];
      v84 = [v83 name];
      _MBLog(@"Df", "Ignoring spurious hard link at %@ for %@", v46, v84);
    }

LABEL_67:
    goto LABEL_68;
  }

LABEL_82:
  objc_autoreleasePoolPop(v4);

  return v9;
}