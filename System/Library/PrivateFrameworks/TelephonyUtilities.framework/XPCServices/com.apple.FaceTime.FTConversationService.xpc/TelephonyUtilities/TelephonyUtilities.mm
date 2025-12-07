uint64_t FTCServiceLog(uint64_t a1, uint64_t a2)
{
  if (qword_10001E1A8 != -1)
  {
    sub_10000C804();
  }

  return qword_10001E1A0;
}

void sub_100001890(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && (v8 = isFatalPersistentStoreError(v6)) || ([*(a1 + 32) userConfiguration], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "simulateFatalPersistentStoreError"), v10, v11))
  {
    v12 = FTCServiceLog(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C78C(v7, v12);
    }

    v13 = [*(a1 + 32) persistentStoreCoordinator];
    v17 = 0;
    v14 = [v13 destroyPersistentStoreWithDescription:v5 error:&v17];
    v15 = v17;
    v16 = *(a1 + 40);
    if (v14)
    {
      [v13 addPersistentStoreWithDescription:v5 completionHandler:v16];
    }

    else
    {
      (*(v16 + 16))(*(a1 + 40), v5, v15);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100001A28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

int main(int argc, const char **argv, const char **envp)
{
  FTSandboxEnter();
  v5 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = 0;
  if (argc >= 1 && argv)
  {
    if (*argv)
    {
      v9 = [NSString stringWithCString:*argv encoding:4];
      v8 = [v9 lastPathComponent];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = FTCServiceLog(v5, v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Launching %@", buf, 0xCu);
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_DEFAULT, 0);

  v13 = dispatch_queue_create("com.apple.FaceTime.FTConversationService.queue", v12);
  v15 = FTCServiceLog(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Checking whether device is boot locked", buf, 2u);
  }

  v16 = [[FTDeviceObserver alloc] initWithQueue:v13];
  v17 = [(FTDeviceObserver *)v16 isBootLockEnabled];
  v18 = v17;
  v20 = FTCServiceLog(v17, v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v21)
    {
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Exiting %@; device has not been unlocked since boot.", buf, 0xCu);
    }

LABEL_23:
    exit(1);
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating directory hierarchy", buf, 2u);
  }

  v23 = FTGetUserDataStoreDirectoryURL(v22);
  v24 = +[NSFileManager defaultManager];
  v36 = 0;
  v25 = [v24 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v36];
  v26 = v36;

  if ((v25 & 1) == 0)
  {
    v35 = FTCServiceLog(v27, v28);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v8;
      v39 = 2112;
      v40 = v23;
      v41 = 2112;
      v42 = v26;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Exiting %@; creation of data store directory at %@ failed with error %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v29 = [[FTConversationService alloc] initWithQueue:v13];
  v30 = +[NSXPCListener serviceListener];
  [v30 setDelegate:v29];

  objc_autoreleasePoolPop(v7);
  v33 = FTCServiceLog(v31, v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v30;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Resuming listener %@", buf, 0xCu);
  }

  [v30 resume];
  return 0;
}

void sub_1000033D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000037B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000037C8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 addConversationLinkDescriptors:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_100003958(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 addConversationLinkDescriptors:v3 managedObjectContext:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_100003BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100003C10(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 addOrUpdateConversationLinkDescriptors:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_100003DA0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 addOrUpdateConversationLinkDescriptors:v3 managedObjectContext:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_100003FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100003FC8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 conversationLinkDescriptorCountWithPredicate:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_100004134(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 conversationLinkDescriptorCountWithPredicate:v3 managedObjectContext:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_100004400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004430(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[10];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [v2 conversationLinkDescriptorsWithPredicate:v3 managedObjectContext:v4 limit:v5 offset:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000045C0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[8];
  v6 = a1[9];
  v10 = 0;
  v7 = [v2 conversationLinkDescriptorsWithPredicate:v3 managedObjectContext:v4 limit:v5 offset:v6 error:&v10];
  v8 = v10;
  v9 = a1[7];
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void sub_1000047D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000047FC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 removeConversationLinkDescriptorsWithPredicate:v3 deleteReason:v5 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void sub_100004970(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[8];
  v9 = 0;
  v6 = [v2 removeConversationLinkDescriptorsWithPredicate:v3 deleteReason:v5 managedObjectContext:v4 error:&v9];
  v7 = v9;
  v8 = a1[7];
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }
}

void sub_100004B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100004B9C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 removeLinkDescriptorsFromDataSourceWithPredicate:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_100004D08(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 removeLinkDescriptorsFromDataSourceWithPredicate:v3 managedObjectContext:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_100004F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100004F48(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v3 setActivated:v2 withRevision:v6 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v8;
}

void sub_1000050D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = 0;
  v7 = [v4 setActivated:v2 withRevision:v3 forConversationLinkDescriptorsWithPredicate:v5 managedObjectContext:v6 error:&v10];
  v8 = v10;
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void sub_100005310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100005334(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v2 setExpirationDate:v3 withRevision:v6 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

void sub_1000054D4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[7];
  v10 = 0;
  v7 = [v2 setExpirationDate:v3 withRevision:v5 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v6 error:&v10];
  v8 = v10;
  v9 = a1[8];
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void sub_100005714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100005738(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v2 setInvitedHandles:v3 withRevision:v6 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

void sub_1000058D8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[7];
  v10 = 0;
  v7 = [v2 setInvitedHandles:v3 withRevision:v5 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v6 error:&v10];
  v8 = v10;
  v9 = a1[8];
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void sub_100005B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100005B3C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v2 setName:v3 withRevision:v6 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

void sub_100005CDC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[7];
  v10 = 0;
  v7 = [v2 setName:v3 withRevision:v5 forConversationLinkDescriptorsWithPredicate:v4 managedObjectContext:v6 error:&v10];
  v8 = v10;
  v9 = a1[8];
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void sub_10000743C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007500;
    v9[3] = &unk_1000185F0;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
  }
}

BOOL isFatalPersistentStoreError(void *a1)
{
  v1 = a1;
  v2 = (isFatalPersistentStoreMigrationError(v1) & 1) != 0 || isFatalSQLiteError(v1);

  return v2;
}

uint64_t isFatalPersistentStoreMigrationError(void *a1)
{
  v1 = a1;
  if ([v1 code] == 134110)
  {
    v2 = [v1 domain];
    v3 = [v2 isEqualToString:NSCocoaErrorDomain];

    if (v3)
    {
      v4 = [v1 userInfo];
      if (v4)
      {
        v5 = [v1 userInfo];
        v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v6)
        {
          v3 = 1;
        }

        else
        {
          v3 = isFatalSQLiteError(v1);
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL isFatalSQLiteError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:NSSQLiteErrorDomain];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
    v5 = NSSQLiteErrorDomain;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v1 code];
    v5 = [v1 domain];
  }

LABEL_7:
  v6 = 0;
  if (v4 <= 0x1A && ((1 << v4) & 0x4000802) != 0)
  {
    v6 = [(NSString *)v5 isEqualToString:NSSQLiteErrorDomain];
  }

  return v6;
}

void sub_10000780C(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v8 = [NSString stringWithFormat:@"Loading persistent store with description %@ failed with error %@", v4, v5];
    v10 = FTCServiceLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD8C(v8, v10);
    }

    v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = FTCServiceLog(0, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CE04(v4, v7);
  }
}

void sub_100007B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007B98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained callback];
    v2[2]();

    WeakRetained = v3;
  }
}

void sub_100007E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007E78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007E90(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 addOrUpdateKey:v3 forIntegerValue:v5 stringValue:0 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void sub_100008008(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[8];
  v9 = 0;
  v6 = [v2 addOrUpdateKey:v3 forIntegerValue:v5 stringValue:0 managedObjectContext:v4 error:&v9];
  v7 = v9;
  v8 = a1[7];
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }
}

void sub_100008184(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v9 = 0;
  v5 = [v2 keyValueForKey:v3 managedObjectContext:v4 error:&v9];
  v6 = v9;
  v7 = a1[7];
  if (v7)
  {
    if (v5)
    {
      v8 = [v5 integerValue];
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_1000083A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000083C4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v2 keyValueForKey:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    *(*(a1[8] + 8) + 24) = [v6 integerValue];
  }
}

void sub_1000085F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100008614(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 addOrUpdateKey:v3 forIntegerValue:0x7FFFFFFFFFFFFFFFLL stringValue:v4 managedObjectContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[8] + 8) + 24) = v7;
}

void sub_1000087AC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v9 = 0;
  v6 = [v2 addOrUpdateKey:v3 forIntegerValue:0x7FFFFFFFFFFFFFFFLL stringValue:v4 managedObjectContext:v5 error:&v9];
  v7 = v9;
  v8 = a1[8];
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }
}

void sub_100008928(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v9 = 0;
  v5 = [v2 keyValueForKey:v3 managedObjectContext:v4 error:&v9];
  v6 = v9;
  v7 = a1[7];
  if (v7)
  {
    if (v5)
    {
      v8 = [v5 stringValue];
      (*(v7 + 16))(v7, v8, v6);
    }

    else
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }
}

void sub_100008BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100008BC4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v2 keyValueForKey:v3 managedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [v6 stringValue];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_1000091BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000091EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = FTCServiceLog(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ connection interrupted", &v5, 0xCu);
    }

    [v3 invalidate];
  }
}

void sub_1000092A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = FTCServiceLog(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ connection invalidated", &v5, 0xCu);
    }
  }
}

void sub_10000A4C0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id FTGetUserDataStoreDirectoryURL(uint64_t a1)
{
  if (qword_10001E1B8 != -1)
  {
    sub_10000CF00();
  }

  v2 = qword_10001E1B0;

  return v2;
}

void sub_10000A524(id a1)
{
  if (qword_10001E1D8 != -1)
  {
    sub_10000CF14();
  }

  v3 = qword_10001E1D0;
  v1 = [v3 URLByAppendingPathComponent:@"FaceTime" isDirectory:1];
  v2 = qword_10001E1B0;
  qword_10001E1B0 = v1;
}

id FTGetUserDataStoreClassCFileURL(uint64_t a1)
{
  if (qword_10001E1C8 != -1)
  {
    sub_10000CF28();
  }

  v2 = qword_10001E1C0;

  return v2;
}

void sub_10000A5E4(id a1)
{
  v3 = FTGetUserDataStoreDirectoryURL(a1);
  v1 = [v3 URLByAppendingPathComponent:@"FaceTime.sqlite3" isDirectory:0];
  v2 = qword_10001E1C0;
  qword_10001E1C0 = v1;
}

void sub_10000A644(id a1)
{
  if (qword_10001E1E8 != -1)
  {
    sub_10000CF3C();
  }

  v3 = qword_10001E1E0;
  v1 = [v3 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v2 = qword_10001E1D0;
  qword_10001E1D0 = v1;
}

void sub_10000A6C0(id a1)
{
  if (qword_10001E1F8[0] != -1)
  {
    sub_10000CF50();
  }

  qword_10001E1E0 = CFCopyHomeDirectoryURLForUser();
}

void sub_10000B9CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained dataSource];
    v5 = [v4 isBootLockEnabled];

    if (v5)
    {
      v3[8] = 1;
      v6 = [FTNotifyObserver alloc];
      v7 = [v3 queue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000BAFC;
      v9[3] = &unk_100018738;
      objc_copyWeak(&v10, (a1 + 32));
      v8 = [(FTNotifyObserver *)v6 initWithName:@"com.apple.mobile.keybagd.first_unlock" queue:v7 callback:v9];
      [v3 setFirstUnlockNotifyObserver:v8];

      objc_destroyWeak(&v10);
    }
  }
}

void sub_10000BAFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained dataSource];
    [v3 setBootLockEnabled:{objc_msgSend(v2, "isBootLockEnabled")}];

    WeakRetained = v3;
  }
}

void sub_10000BC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___FTDeviceObserverDelegate])
  {
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000BDEC;
      v10[3] = &unk_1000185F0;
      v8 = v7;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      dispatch_async(v6, v10);
    }
  }
}

void FTSandboxEnter()
{
  v0 = _set_user_dir_suffix();
  if ((v0 & 1) == 0)
  {
    v12 = FTCServiceLog(v0, v1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CFDC();
    }

LABEL_13:
    exit(1);
  }

  bzero(v15, 0x400uLL);
  v2 = confstr(65537, v15, 0x400uLL);
  v4 = FTCServiceLog(v2, v3);
  v5 = v4;
  if (!v2)
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_10000D0D4();
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created temporary directory: %{public}s", &v13, 0xCu);
  }

  v6 = realpath_DARWIN_EXTSN(v15, 0);
  if (!v6)
  {
    v10 = FTCServiceLog(0, v7);
    v8 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_10000D058();
    }

LABEL_11:
    v11 = FTCServiceLog(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D058();
    }

    goto LABEL_13;
  }

  free(v6);
}

void sub_10000C0B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id FTManagedConversationLink.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTManagedConversationLink.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTManagedConversationLink();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id FTManagedConversationLink.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTManagedConversationLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static FTManagedConversationLink.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_10000D150();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_10000C2C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTManagedConversationLink();
  result = sub_10000D160();
  *a2 = result;
  return result;
}

id FTManagedHandle.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTManagedHandle();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id FTManagedHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTManagedHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static FTManagedHandle.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_10000D150();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_10000C484@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTManagedHandle();
  result = sub_10000D160();
  *a2 = result;
  return result;
}

id FTManagedKeyValue.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTManagedKeyValue();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id FTManagedKeyValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTManagedKeyValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static FTManagedKeyValue.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_10000D150();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_10000C644@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTManagedKeyValue();
  result = sub_10000D160();
  *a2 = result;
  return result;
}

void sub_10000C78C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Attempting to destroy corrupt persistent store due to fatal error %@", &v2, 0xCu);
}

void sub_10000CBC0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Moving corrupt persistent store with description %@ failed with error %@", &v3, 0x16u);
}

void sub_10000CC48(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't addOrUpdateConversationLinkDescriptors for %@", &v2, 0xCu);
}

void sub_10000CD8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_10000CE04(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Loaded persistent store with description %@", &v2, 0xCu);
}

void sub_10000CE7C(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1000033F0();
  sub_10000A4C0(&_mh_execute_header, v2, v3, "Connection is not entitled to use %@", v4, v5, v6, v7);
}

void sub_10000CF64(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Entitlement not found; rejecting connection %@", &v2, 0xCu);
}

void sub_10000CFDC()
{
  __error();
  sub_10000C0D8();
  sub_10000C0B8(&_mh_execute_header, v0, v1, "failed to set user_dir_suffix path component: %{darwin.errno}d", v2, v3, v4, v5);
}

void sub_10000D058()
{
  __error();
  sub_10000C0D8();
  sub_10000C0B8(&_mh_execute_header, v0, v1, "failed to resolve temporary directory: %{darwin.errno}d", v2, v3, v4, v5);
}

void sub_10000D0D4()
{
  __error();
  sub_10000C0D8();
  sub_10000C0B8(&_mh_execute_header, v0, v1, "failed to create temporary directory: %{darwin.errno}d", v2, v3, v4, v5);
}