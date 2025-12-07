void sub_100004B00(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [a3 elements];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v25;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      v11 = [v10 identifier];
      if (v11)
      {
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
        v13 = v12;
        v14 = v12 != 0;
        if (v12)
        {
          v7 = [v12 unsignedIntValue] | v7;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = [v10 bundleIdentifier];
      if (v15 && ([*(a1 + 32) objectForKeyedSubscript:v15], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        v7 = [v16 unsignedIntValue]| v7;
      }

      else
      {
        if (v14)
        {
          goto LABEL_18;
        }

        v17 = daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = v15;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "SystemUI unknown identifier: '%@'/ '%@'", buf, 0x16u);
        }
      }

LABEL_18:
    }

    v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v6);
LABEL_22:

  pthread_mutex_lock(&stru_100972F48);
  v18 = NSPrintF("%#{flags}", *(*(a1 + 40) + 496), &unk_1007F5390);
  v19 = NSPrintF("%#{flags}", v7, &unk_1007F5390);
  v20 = daemon_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SystemUI changed: %@ -> %@", buf, 0x16u);
  }

  v21 = *(a1 + 40);
  v22 = *(v21 + 496);
  *(v21 + 496) = v7;
  pthread_mutex_unlock(&stru_100972F48);
  if (v22 != v7)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"com.apple.sharingd.SystemUIChanged" object:0];
  }
}

uint64_t sub_100004E00(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      if ([v5 count])
      {
        v29 = +[NSMutableArray array];
        if (v29)
        {
          v26 = a3;
          v27 = v6;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = v6;
          v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (!v7)
          {
            v9 = 0;
            v10 = 0;
            goto LABEL_26;
          }

          v8 = v7;
          v9 = 0;
          v10 = 0;
          v11 = *v31;
          while (1)
          {
            v12 = 0;
            v13 = v10;
            do
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v14 = [*(*(&v30 + 1) + 8 * v12) lowercaseString];

              if (a2)
              {
                v15 = v14;
                v14 = +[NSMutableString string];
                v16 = [v15 length];
                v17 = v16 - 1;
                if ((v16 - 1) >= 0)
                {
                  do
                  {
                    v18 = [v15 substringWithRange:{v17, 1}];
                    [v14 appendString:v18];

                    --v17;
                  }

                  while (v17 != -1);
                }
              }

              v9 = v14;
              v19 = [NSMutableData dataWithLength:32];
              if (v19)
              {
                v20 = [v9 dataUsingEncoding:4];
                CC_SHA256([v20 bytes], objc_msgSend(v20, "length"), objc_msgSend(v19, "mutableBytes"));
                v21 = malloc_type_malloc((2 * [v19 length]) | 1, 0x100004077774924uLL);
                if (v21)
                {
                  v22 = v21;
                  [v19 bytes];
                  [v19 length];
                  DataToHexCStringEx();
                  v10 = [NSString stringWithUTF8String:v22];
                  free(v22);
                  goto LABEL_17;
                }
              }

              else
              {
                v20 = 0;
              }

              v10 = 0;
LABEL_17:

              if (v10)
              {
                [v29 addObject:v10];
              }

              v12 = v12 + 1;
              v13 = v10;
            }

            while (v12 != v8);
            v23 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            v8 = v23;
            if (!v23)
            {
LABEL_26:

              a3 = v26;
              v6 = v27;
              goto LABEL_27;
            }
          }
        }

        a3 = 4294960568;
      }

      else
      {
        v29 = 0;
        v9 = 0;
        v10 = 0;
LABEL_27:
        v24 = v29;
        *a3 = v29;

        a3 = 0;
      }
    }
  }

  else
  {
    a3 = 4294960591;
  }

  return a3;
}

void sub_1000051CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_1009735E0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;

  sub_1002B3098(0, 0, v8, a4, v14);
}

uint64_t sub_100005358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000053A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000053E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000054C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10028088C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_100005568(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 systemUIFlags];

  if ((v3 & 2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) wasInLockScreen];
  }

  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if ((v3 & 2) != 0)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "on lock screen: %@", &v9, 0xCu);
  }

  result = [*(a1 + 32) setWasInLockScreen:(v3 >> 1) & 1];
  if (v4)
  {
    v8 = paired_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioned out of lock screen.", &v9, 2u);
    }

    return [*(a1 + 32) beginUnlockIfNotOnLockScreen];
  }

  return result;
}

uint64_t sub_100005798(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005DF0;

  return v6(a1);
}

uint64_t sub_100005890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100005944(a1, v4, v5, v6);
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1000059E0, v5, 0);
}

uint64_t sub_1000059E0()
{
  v1 = *(v0 + 16);
  v2 = [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) systemUIFlags];
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if ((v2 & 0x80000) != 0)
  {
    if (v3)
    {
      if (qword_100973548 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_100975E80);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "SDAirDropNearFieldService Buddy visible, stopping", v11, 2u);
      }

      sub_1002B9D54();
    }
  }

  else if (!v3)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100975E80);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "SDAirDropNearFieldService Buddy not visible, attempting to start", v7, 2u);
    }

    sub_1000286E8(0, 1, 0, 0);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100005C04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005CF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100006190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000067C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 256), 8);
  _Block_object_dispose((v40 - 208), 8);
  _Block_object_dispose((v40 - 160), 8);
  _Block_object_dispose((v40 - 112), 8);
  _Block_object_dispose((v40 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_100007080(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 168) systemUIFlags];
  if (dword_1009708B0 <= 30)
  {
    v3 = v2;
    if (dword_1009708B0 != -1 || _LogCategory_Initialize())
    {
      sub_100007118(v1, v3);
    }
  }

  if (([*v1 _systemCanTrigger] & 1) == 0)
  {
    [*(*v1 + 18) requestRemoveAll];
  }

  v4 = *v1;

  return [v4 _update];
}

uint64_t sub_100007118(id *a1, uint64_t a2)
{
  if ([*a1 _systemCanTrigger])
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  return LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent commonSystemUIChanged]_block_invoke", 30, "System UI Changed %#{flags}, CanTrigger %s\n", a2, &unk_1007F4CF8, v3);
}

void sub_100007694(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (dword_1009731D8 <= 20)
  {
    if (dword_1009731D8 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      sub_100007730(v5);
      v5 = v7;
    }
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceChanged:v5 type:15 changes:a3];
}

uint64_t sub_1000087C8(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000087F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100008814(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100008880(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void sub_1000088A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1000088E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100008908(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_100008948(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

double sub_100008A24()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

void sub_100008F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
    {
      sub_100009068(v3);
      v3 = v10;
    }
  }

  v5 = *(a1 + 32);
  if (!v5[30])
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(a1 + 32);
    v8 = *(v7 + 240);
    *(v7 + 240) = v6;

    v3 = v10;
    v5 = *(a1 + 32);
  }

  [v5 _deviceDiscoveryBLEDeviceFound:v3 type:16];
  v9 = [v10 identifier];
  if (v9)
  {
    [*(*(a1 + 32) + 240) setObject:v10 forKeyedSubscript:v9];
  }
}

void sub_100009C74(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1009731D8 <= 50 && (dword_1009731D8 != -1 || _LogCategory_Initialize()))
  {
    sub_100009D28(v4);
  }

  v3 = [v4 identifier];
  if (v3)
  {
    [*(*(a1 + 32) + 160) removeObjectForKey:v3];
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceLost:v4 type:15];
}

void sub_10000A4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10000B694(uint64_t a1, const void *a2)
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100232660();
  }

  if (!CFEqual(a2, SBSEventObserverEventDimmed) && !CFEqual(a2, SBSEventObserverEventUndimmed))
  {
    if (CFEqual(a2, SBSEventObserverEventContinuityUIWasObscured))
    {
      v5 = &__kCFBooleanFalse;
LABEL_9:
      v6 = *(a1 + 32);
      v7 = *(v6 + 232);
      *(v6 + 232) = v5;

      [*(a1 + 32) postNotification:@"com.apple.sharingd.HandoffVisibilityChanged"];
      goto LABEL_10;
    }

    if (CFEqual(a2, SBSEventObserverEventContinuityUIBecameVisible))
    {
      v5 = &__kCFBooleanTrue;
      goto LABEL_9;
    }

    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: SBSEventObserved unknown event %@", &v10, 0xCu);
    }
  }

LABEL_10:
  if (CFEqual(a2, SBSEventObserverEventContinuityUIBecameVisible))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sharing.SpringBoard.startDiscovery", 0, 0, 1u);
  }
}

uint64_t sub_10000C1F8(const __CFString *a1, uint64_t a2)
{
  v3 = sub_10000C2C4(a1);
  if (v3)
  {
    v4 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v9 = sub_100118270;
    v10 = &unk_1008D0D20;
    v11 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    else
    {
      if (v5 != CFStringGetTypeID())
      {
LABEL_7:
        v9(v8);
        return a2;
      }

      Value = sub_10011814C(v4);
    }

    a2 = Value;
    goto LABEL_7;
  }

  return a2;
}

CFPropertyListRef sub_10000C2C4(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"/private/var/Managed Preferences/mobile/com.apple.Sharing");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"com.apple.Sharing");
  }

  return result;
}

id sub_10000C344(void *a1)
{
  v1 = a1;
  v16 = 0u;
  v17 = 0u;
  xpc_connection_get_audit_token();
  memset(&v15, 0, sizeof(v15));
  v2 = SecTaskCreateWithAuditToken(0, &v15);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0);
    if (v4)
    {
      v5 = v4;
      if ([v4 length] < 0xB || objc_msgSend(v5, "characterAtIndex:", 10) != 46)
      {
        goto LABEL_19;
      }

      v6 = 0;
      do
      {
        v7 = [v5 characterAtIndex:v6];
        v9 = v7 - 65 < 0x1A || v7 - 48 < 0xA;
      }

      while (v9 && v6++ < 9);
      if (!v9 || ([v5 substringWithRange:{11, objc_msgSend(v5, "length") - 11}], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_19:
        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    pid = xpc_connection_get_pid(v1);
    v13 = daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001F3A54(pid, v13);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t sub_10000C4AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000C4E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C658(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C5B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C60C(v11);
  return v7;
}

uint64_t sub_10000C5B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C60C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10000C658(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100016134(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10000C764(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_100808A20[a1 - 1];
  }
}

uint64_t sub_10000C788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10028088C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_100976308, &unk_1007F94E0);
    sub_1000122F0(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &qword_100976308, &unk_1007F94E0);
  }

  else
  {
    sub_10000CA10(a1, v10, type metadata accessor for SDAuthenticationSessionMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10000E9A8(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_10000CA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CA78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_100581708(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

Swift::Int sub_10000CB70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009772C8, &qword_1007FA180);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

char *sub_10000CCAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100974F58, &qword_1007F8360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000CDB0(char *a1, int64_t a2, char a3)
{
  result = sub_10000CCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000CDD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_10000CDE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000CE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10000CEB0(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10000CF7C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100973C50 != -1)
  {
    v26 = a1;
    swift_once();
    a1 = v26;
  }

  if (!qword_1009A10A8)
  {
    return 0;
  }

  if ((a1 - 3) > 0x14)
  {
    v5 = 0;
  }

  else
  {
    v5 = byte_1007F90FA[a1 - 3];
  }

  v7 = *(v3 + 112);
  isa = qword_1009A10A8;
  if (sub_10000D2C0(v5, v7))
  {
    if (SFDeviceIsRealityDevice())
    {
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000C4AC(v9, qword_100975CC0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Manually triggering state change for urgent arming path on companion device", v12, 2u);
      }

      v13 = [objc_opt_self() standardUserDefaults];
      v14 = String._bridgeToObjectiveC()();
      v6 = 1;
      [v13 setBool:1 forKey:v14];

      sub_1002ABCDC(1);
    }

    else
    {
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100975CC0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "autool authenticate on iPhone is unsupported. Run the command on the companion device", v18, 2u);
      }

      v19 = isa;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v20 = sub_100010F88(19, 0, 0xE000000000000000);
      v22 = v21;
      sub_1000115C8();
      swift_allocError();
      *v23 = v20;
      *(v23 + 8) = v22;
      v24 = _convertErrorToNSError(_:)();
      [a3 manager:v19 didFailAuthenticationFor:isa error:v24];

      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10000D2C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x636F6C6E5563616DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEE00656E6F68506BLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6C436B636F6C6E75;
    v5 = 0xEC00000043737361;
  }

  else if (a1 == 3)
  {
    v4 = 0x646F4D7473657567;
    v5 = 0xEF6B636F6C6E5565;
  }

  else
  {
    v4 = 0x6E556E6F69736976;
    v5 = 0xEF534F696B636F6CLL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x636F6C6E5563616DLL;
    v8 = 0xEE00656E6F68506BLL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6C436B636F6C6E75;
    v6 = 0xEC00000043737361;
    v7 = 0x646F4D7473657567;
    v8 = 0xEF6B636F6C6E5565;
    if (a2 != 3)
    {
      v7 = 0x6E556E6F69736976;
      v8 = 0xEF534F696B636F6CLL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10000D494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000D524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10000D494(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

Swift::Int sub_10000D6C4(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return sub_10000CB70(&off_1008D74E0);
  }

  else
  {
    return sub_10000CB70(off_1008E5CC0[a1]);
  }
}

uint64_t sub_10000D6E8(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v10 = *(v6 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename);
  v9 = *(v6 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename + 8);
  v41 = a4;
  v42 = v10;
  v43 = v9;

  v11._countAndFlagsBits = 95;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = 0xE700000000000000;
  v13 = 0x6E776F6E6B6E75;
  v14 = 0xEC00000043737361;
  v15 = 0x6C436B636F6C6E75;
  v16 = 0xEF6B636F6C6E5565;
  v17 = 0x646F4D7473657567;
  if (a1 != 3)
  {
    v17 = 0x6E556E6F69736976;
    v16 = 0xEF534F696B636F6CLL;
  }

  if (a1 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (a1)
  {
    v13 = 0x636F6C6E5563616DLL;
    v12 = 0xEE00656E6F68506BLL;
  }

  if (a1 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (a1 <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  if (a2)
  {
    v22 = 7955787;
  }

  else
  {
    v22 = 1801678668;
  }

  if (a2)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  if (a2)
  {
    v24 = a1 == 2;
  }

  else
  {
    v24 = (0x101020100uLL >> (8 * a1));
  }

  v25 = v23;
  String.append(_:)(*&v22);

  v26 = v43;
  v27 = *(v6 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
  if (*(v27 + 16) && (v28 = sub_10000DA98(v24), (v29 & 1) != 0))
  {
    v39[1] = v39;
    v30 = *(*(*(v27 + 56) + 8 * v28) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
    v31 = __chkstk_darwin(v28);
    __chkstk_darwin(v31);

    os_unfair_lock_lock(v30 + 4);
    v32 = v44;
    sub_100012268(&v42);
    os_unfair_lock_unlock(v30 + 4);

    if (!v32)
    {
      v26 = v42;
    }
  }

  else
  {

    _StringGuts.grow(_:)(35);

    v42 = 0xD000000000000011;
    v43 = 0x800000010078EC50;
    v33._countAndFlagsBits = qword_1007FEBE8[v24];
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._object = 0x800000010078EC70;
    v34._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v34);
    v26 = sub_100010F88(1, 0xD000000000000011, 0x800000010078EC50);
    v36 = v35;
    sub_1000115C8();
    swift_allocError();
    *v37 = v26;
    *(v37 + 8) = v36;
    swift_willThrow();
  }

  return v26;
}

unint64_t sub_10000DA98(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_10000F068(v1, v2);
}

void sub_10000DB04(uint64_t a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v122 = a8;
  v124 = a7;
  v126 = a6;
  v128 = a5;
  v129 = a4;
  v125 = a9;
  v13 = type metadata accessor for UTType();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL.DirectoryHint();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for URL();
  v132 = *(v137 - 8);
  v20 = __chkstk_darwin(v137);
  v22 = (&v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v134 = (&v120 - v23);
  v24 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  v127 = v24;
  v25 = *(a1 + v24);
  v26 = *(v25 + 16);
  v135 = a3;
  v133 = a2;
  if (v26)
  {

    v27 = sub_100012854(a2, a3);
    if (v28)
    {
      v123 = a1;
      v29 = *(*(v25 + 56) + 8 * v27);

      v31 = &v120;
      v32 = *(v29 + 112);
      __chkstk_darwin(v30);
      *(&v120 - 2) = sub_1004F6624;
      *(&v120 - 1) = v29;
      v121 = v29;

      os_unfair_lock_lock(v32 + 4);
      v33 = v136;
      sub_1000156CC(v138);
      v136 = v33;
      v34 = v32 + 4;
      if (v33)
      {
        os_unfair_lock_unlock(v34);
        __break(1u);
        goto LABEL_74;
      }

      os_unfair_lock_unlock(v34);
      if (v138[0])
      {
        v36 = v135;
        v37 = v136;
        v38 = v123;
        v39 = v133;
        v40 = v121;
        if ((v126 & 1) == 0)
        {
LABEL_6:
          v123 = v38;
          if (qword_100973998 != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          sub_10000C4AC(v41, qword_100981A10);

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v138[0] = v45;
            *v44 = 136315138;

            sub_10031E940();
            v47 = v46;
            v48 = v39;
            v50 = v49;

            v51 = sub_10000C4E4(v47, v50, v138);
            v39 = v48;

            *(v44 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v42, v43, "Loaded LocalLTK %s, return it for non-pairing flows", v44, 0xCu);
            sub_10000C60C(v45);

            v36 = v135;
          }

          v52 = v123;
LABEL_11:
          v53 = v127;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139 = *(v52 + v53);
          *(v52 + v53) = 0x8000000000000000;
          sub_10057BEDC(v40, v39, v36, isUniquelyReferenced_nonNull_native);

          *(v52 + v53) = v139;
          swift_endAccess();

          *v125 = v40;
          return;
        }

        goto LABEL_55;
      }

      a1 = v123;
      swift_beginAccess();
      v55 = v135;

      sub_1002B21EC(0, v133, v55);
      swift_endAccess();
    }

    else
    {
    }
  }

  v39 = v133;
  v56 = v135;
  v138[0] = v133;
  v138[1] = v135;
  (*(v17 + 104))(v19, enum case for URL.DirectoryHint.notDirectory(_:), v16);
  sub_10001229C();
  URL.appending<A>(path:directoryHint:)();
  (*(v17 + 8))(v19, v16);
  static UTType.propertyList.getter();
  v57 = v134;
  URL.appendingPathExtension(for:)();
  (*(v130 + 8))(v15, v131);
  v58 = *(v132 + 8);
  v58(v22, v137);
  v59 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v60 = a1;
  v61 = String._bridgeToObjectiveC()();

  v62 = [v59 fileExistsAtPath:v61];

  if (v62)
  {
    v63 = v136;
    v40 = sub_1004F57A4(v57);
    v64 = v57;
    v37 = v63;
    if (!v63)
    {
      v38 = v60;
      v39 = v133;
      v36 = v135;
      if (*(v40 + 16) == v133 && *(v40 + 24) == v135 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v65 = *(v40 + 32);

        if ((sub_10000D2C0(v65, v129) & 1) != 0 && *(v40 + 33) == (v128 & 1))
        {
          v58(v134, v137);

          goto LABEL_54;
        }
      }

      else
      {
      }

      if (qword_100973998 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000C4AC(v72, qword_100981A10);

      v73 = Logger.logObject.getter();
      v70 = v36;
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v123 = v38;
        v75 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v138[0] = v136;
        *v75 = 136315906;

        sub_10031E940();
        v77 = v76;
        v78 = v40;
        v79 = v39;
        v81 = v80;
        v121 = v78;

        v82 = sub_10000C4E4(v77, v81, v138);

        *(v75 + 4) = v82;
        *(v75 + 12) = 2080;
        v83 = sub_10000C4E4(v79, v135, v138);
        v84 = v129;
        *(v75 + 14) = v83;
        v85 = 0xE700000000000000;
        v86 = 0x6E776F6E6B6E75;
        *(v75 + 22) = 2080;
        v87 = 0xEC00000043737361;
        v88 = 0x6C436B636F6C6E75;
        v89 = 0xEF6B636F6C6E5565;
        v90 = 0x646F4D7473657567;
        if (v84 != 3)
        {
          v90 = 0x6E556E6F69736976;
          v89 = 0xEF534F696B636F6CLL;
        }

        if (v84 != 2)
        {
          v88 = v90;
          v87 = v89;
        }

        if (v84)
        {
          v86 = 0x636F6C6E5563616DLL;
          v85 = 0xEE00656E6F68506BLL;
        }

        if (v84 <= 1)
        {
          v91 = v86;
        }

        else
        {
          v91 = v88;
        }

        if (v84 <= 1)
        {
          v92 = v85;
        }

        else
        {
          v92 = v87;
        }

        v93 = sub_10000C4E4(v91, v92, v138);

        *(v75 + 24) = v93;
        *(v75 + 32) = 2080;
        if (v128)
        {
          v94 = 7955787;
        }

        else
        {
          v94 = 1801678668;
        }

        if (v128)
        {
          v95 = 0xE300000000000000;
        }

        else
        {
          v95 = 0xE400000000000000;
        }

        v96 = sub_10000C4E4(v94, v95, v138);

        *(v75 + 34) = v96;
        _os_log_impl(&_mh_execute_header, v73, v74, "Loaded LocalLTK %s has different identifier:%s or feature:%s or role:%s", v75, 0x2Au);
        swift_arrayDestroy();

        v40 = v121;

        v58(v134, v137);
        v38 = v123;
        v36 = v135;
        v39 = v133;
LABEL_54:

        if ((v126 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_55:
        if (v124)
        {
          v52 = v38;
        }

        else
        {
          v52 = v38;
          v22 = *(v40 + 112);
          __chkstk_darwin(v35);
          *(&v120 - 2) = sub_1003FC51C;
          *(&v120 - 1) = v40;
          os_unfair_lock_lock(v22 + 4);
          sub_100012268(v138);
          if (v37)
          {
LABEL_75:
            os_unfair_lock_unlock(v22 + 4);
            __break(1u);
            return;
          }

          v37 = 0;
          v98 = a10;
          os_unfair_lock_unlock(v22 + 4);
          v99 = v138[0];
          if (a10)
          {
            v98 = (sub_100569230(v122, a10, v138[0]) & 1) != 0 && *(v99 + 16) == 1;
          }

          v104 = *(v99 + 16);

          if (v104 && !v98)
          {
            if (qword_100973998 != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for Logger();
            sub_10000C4AC(v105, qword_100981A10);

            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v138[0] = v109;
              *v108 = 136315138;

              sub_10031E940();
              v111 = v110;
              v136 = 0;
              v112 = v39;
              v114 = v113;

              v115 = sub_10000C4E4(v111, v114, v138);
              v39 = v112;

              *(v108 + 4) = v115;
              _os_log_impl(&_mh_execute_header, v106, v107, "Found loaded LocalLTK %s, return it for pairing", v108, 0xCu);
              sub_10000C60C(v109);

              v36 = v135;
            }

            goto LABEL_11;
          }
        }

        v22 = &v120;
        v31 = *(v40 + 112);
        __chkstk_darwin(v35);
        *(&v120 - 2) = sub_1004F6608;
        *(&v120 - 1) = v40;
        os_unfair_lock_lock(v31 + 4);
        sub_1002F5418(v97);
        if (!v37)
        {
          os_unfair_lock_unlock(v31 + 4);
          v38 = v52;
          swift_beginAccess();
          sub_1002D3D04(v39, v36);
          swift_endAccess();

          v71 = v129;
          v66 = v128 & 1;
          goto LABEL_59;
        }

LABEL_74:
        os_unfair_lock_unlock(v31 + 4);
        __break(1u);
        goto LABEL_75;
      }

      v58(v134, v137);
LABEL_53:
      v36 = v70;
      goto LABEL_54;
    }

LABEL_24:
    v58(v64, v137);
    return;
  }

  v66 = v128 & 1;
  v67 = v136;
  v68 = sub_10000F2E0(v39, v56, v129, v128 & 1);
  v37 = v67;
  if (v67)
  {
    v64 = v134;
    goto LABEL_24;
  }

  v69 = v68;
  v38 = v60;
  v70 = v56;
  v58(v134, v137);
  if (v69)
  {
    v40 = v69;
    goto LABEL_53;
  }

  v71 = v129;
  if (v126)
  {
    v36 = v56;
LABEL_59:
    v100 = sub_1004F5BA4(v39, v36, v71, v66);
    v101 = v36;
    v102 = v127;
    swift_beginAccess();

    v103 = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v38 + v102);
    *(v38 + v102) = 0x8000000000000000;
    sub_10057BEDC(v100, v39, v101, v103);

    *(v38 + v102) = v139;
    swift_endAccess();

    *v125 = v100;
    return;
  }

  v116 = sub_100010F88(10, 0xD00000000000001ELL, 0x8000000100793E80);
  v118 = v117;
  sub_1000115C8();
  swift_allocError();
  *v119 = v116;
  *(v119 + 8) = v118;
  swift_willThrow();
}

uint64_t sub_10000E9A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000EBD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SDAuthenticationSessionMetadata(0);
      return sub_100581638(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SDAuthenticationSessionMetadata);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1002D0718();
    goto LABEL_7;
  }

  sub_1005752E4(v17, a3 & 1);
  v24 = sub_10000EBD4(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10000CA78(v14, v11, a1, v20, &type metadata accessor for UUID, type metadata accessor for SDAuthenticationSessionMetadata, type metadata accessor for SDAuthenticationSessionMetadata);
}

unint64_t sub_10000EBD4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v2, &type metadata accessor for UUID, &qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_10000ECA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000ED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000ED78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EE48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EEB0(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return qword_1007F4E88[(a1 - 1)];
  }
}

uint64_t sub_10000EEDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SFAutoUnlockDeviceType(0);
  sub_10000CE2C(&qword_100974F50, type metadata accessor for SFAutoUnlockDeviceType, &unk_1007F6368);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000CE74(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

BOOL sub_10000EF9C(Swift::UInt8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t sub_10000F068(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10000F0D8(const __CFString *a1, unint64_t a2)
{
  sub_10028088C(&qword_100974CD0, &qword_1007F8230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  sub_10000FE00();
  v3 = kSecClass;
  v4 = kSecClassGenericPassword;
  AnyHashable.init<A>(_:)();
  *(inited + 80) = kSecAttrAccessGroup;
  v5 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  *(inited + 128) = kSecAttrAccount;
  v6 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 176) = kSecAttrService;
  v7 = kSecAttrService;

  AnyHashable.init<A>(_:)();
  *(inited + 224) = kSecAttrIsInvisible;
  v8 = kSecAttrIsInvisible;
  AnyHashable.init<A>(_:)();
  v9 = sub_10000FE58(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009746A8, &qword_1007F6588);
  swift_arrayDestroy();
  return v9;
}

id sub_10000F2E0(const __CFString *a1, unint64_t a2, char a3, char a4)
{
  v9 = sub_10000F0D8(a1, a2);
  v10 = sub_100010204(v9);
  v11 = sub_100010858(v10);
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100981A10);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v80[0] = v18;
      *v17 = 136315138;
      type metadata accessor for CFString(0);
      sub_100010F40(&qword_100975630, type metadata accessor for CFString, &unk_1007F76E4);
      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = sub_10000C4E4(v19, v21, v80);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to query keychain with %s", v17, 0xCu);
      sub_10000C60C(v18);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v78 = a3;
  v23 = objc_allocWithZone(SDAutoUnlockLTKInfo);
  sub_100294008(v11, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10028BCC0(v11, v13);
  v25 = [v23 initWithData:isa];

  if (!v25)
  {

    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_100981A10);
    sub_100294008(v11, v13);
    v15 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_10028BCC0(v11, v13);
    if (!os_log_type_enabled(v15, v34))
    {

      sub_10028BCC0(v11, v13);
      return 0;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v80[0] = v36;
    *v35 = 136315138;
    sub_100294008(v11, v13);
    v37 = Data.description.getter();
    v39 = v38;
    sub_10028BCC0(v11, v13);
    v40 = sub_10000C4E4(v37, v39, v80);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v15, v34, "Failed to deserialize SDAutoUnlockLTKInfo with %s", v35, 0xCu);
    sub_10000C60C(v36);

    sub_10028BCC0(v11, v13);
LABEL_16:

    return 0;
  }

  v74 = a4;
  v75 = v11;
  v26 = &selRef_loadManaged;
  v77 = v25;
  result = [v25 ltk];
  if (!result)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = result;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 != 2)
    {
      memset(v80, 0, 14);
      goto LABEL_29;
    }

    v41 = *(v29 + 16);
    v71 = *(v29 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v41, __DataStorage._offset.getter()))
    {
      goto LABEL_46;
    }

    if (!__OFSUB__(v71, v41))
    {
LABEL_27:
      __DataStorage._length.getter();
      sub_100310E8C(v78 == 2, v80);
      v42 = LODWORD(v80[0]);
      v26 = &selRef_loadManaged;
      goto LABEL_30;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v32)
  {
    if (v29 >> 32 >= v29)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v29, __DataStorage._offset.getter()))
      {
        goto LABEL_27;
      }

LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

  v80[0] = v29;
  LOWORD(v80[1]) = v31;
  BYTE2(v80[1]) = BYTE2(v31);
  BYTE3(v80[1]) = BYTE3(v31);
  BYTE4(v80[1]) = BYTE4(v31);
  BYTE5(v80[1]) = BYTE5(v31);
LABEL_29:
  sub_100310E8C(v78 == 2, &v79);
  v42 = v79;
LABEL_30:
  sub_100311810(v42, 0xD000000000000020, 0x8000000100793EA0);
  if (v4)
  {

    sub_100026AC0(v29, v31);
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_100981A10);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to validate previously saved local LTK, error: %@, will try to re-generate", v46, 0xCu);
      sub_10028924C(v47);

      sub_10028BCC0(v75, v13);
    }

    else
    {
      sub_10028BCC0(v75, v13);
    }

    return 0;
  }

  sub_100026AC0(v29, v31);
  result = [v77 v26[88]];
  if (!result)
  {
    goto LABEL_49;
  }

  v49 = result;
  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v50;

  result = [v77 ltkID];
  if (!result)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v51 = result;
  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v53;
  v72 = v52;

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  swift_weakInit();
  _s8LocalLTKCMa();
  v56 = swift_allocObject();
  *(v56 + 104) = &_swiftEmptyDictionarySingleton;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;

  *(v56 + 112) = v57;
  *(v56 + 120) = 1;
  *(v56 + 16) = a1;
  *(v56 + 24) = a2;
  *(v56 + 32) = v78;
  *(v56 + 33) = v74 & 1;
  *(v56 + 72) = v76;
  *(v56 + 80) = v73;
  *(v56 + 88) = v72;
  *(v56 + 96) = v70;
  *(v56 + 40) = sub_1004F66C0;
  *(v56 + 48) = v54;
  *(v56 + 56) = sub_1004F66C4;
  *(v56 + 64) = v55;
  v58 = v56;

  if (qword_100973998 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_10000C4AC(v59, qword_100981A10);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v80[0] = v63;
    *v62 = 136315138;
    v64 = v58;

    sub_10031E940();
    v66 = v65;
    v68 = v67;

    v69 = sub_10000C4E4(v66, v68, v80);

    *(v62 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "Loaded from keychain: %s", v62, 0xCu);
    sub_10000C60C(v63);

    sub_10028BCC0(v75, v13);

    return v64;
  }

  else
  {
    sub_10028BCC0(v75, v13);

    return v56;
  }
}

uint64_t sub_10000FDB4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_10000FE00()
{
  result = qword_100975630;
  if (!qword_100975630)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975630);
  }

  return result;
}

unint64_t sub_10000FE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009746A0, &qword_1007F6580);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v14, &qword_1009746A8, &qword_1007F6588);
      v5 = v14;
      result = sub_10000FFF8(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000FF90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10028088C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000FFF8(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10000D494(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000100F8(a1, v2);
}

unint64_t sub_1000100F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000D494(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100010204(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_100974630, &unk_1007F6570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v33 = v32 | (v31 << 6);
          v34 = *(*(a1 + 48) + 8 * v33);
          sub_100010684(*(a1 + 56) + 40 * v33, v42);
          v41 = v34;
          v44 = v42[0];
          v45 = v42[1];
          v46 = v43;
          v35 = v34;
          swift_dynamicCast();
          sub_1000106E0(&v47[8], v49);
          sub_1000106E0(v49, v40);
          sub_1000106E0(v40, &v48);
          result = sub_10000FFF8(v35);
          if (v36)
          {
            v27 = v2[6];
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v35;
            v29 = result;

            v30 = (v2[7] + 32 * v29);
            sub_10000C60C(v30);
            result = sub_1000106E0(&v48, v30);
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v2[2] >= v2[3])
            {
              goto LABEL_41;
            }

            *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
            *(v2[6] + 8 * result) = v35;
            result = sub_1000106E0(&v48, (v2[7] + 32 * result));
            v37 = v2[2];
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_42;
            }

            v2[2] = v39;
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v31 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_100010684(*(a1 + 56) + 40 * v15, v49);
      v48 = v16;
      v44 = v49[0];
      v45 = v49[1];
      v46 = v50;
      v17 = v16;
      swift_dynamicCast();
      sub_1000106E0(&v47[8], v42);
      sub_1000106E0(v42, v47);
      Hasher.init(_seed:)();
      sub_100010780(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *&v10[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v7 &= v7 - 1;
      *(v2[6] + 8 * v13) = v17;
      result = sub_1000106E0(v47, (v2[7] + 32 * v13));
      ++v2[2];
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

_OWORD *sub_1000106E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000106F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000107C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010858(const void *a1)
{
  v19 = &type metadata for Bool;
  LOBYTE(v18) = 1;
  sub_1000106E0(&v18, result);

  v1 = kSecReturnData;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100010B44(result, v1, isUniquelyReferenced_nonNull_native);

  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_10000FE00();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = SecItemCopyMatching(isa, result);

  if (v4 == -25300)
  {
    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100974CB8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v18 = v9;
      *v8 = 136315138;

      v10 = Dictionary.description.getter();
      v12 = v11;

      v13 = sub_10000C4E4(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not find keychain item, query: %s", v8, 0xCu);
      sub_10000C60C(v9);
    }

    v14 = 0;
  }

  else
  {
    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  swift_unknownObjectRelease();
  return v14;
}

_OWORD *sub_100010B44(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000FFF8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100010C84();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1005712AC(v13, a3 & 1);
    v8 = sub_10000FFF8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000C60C(v19);

    return sub_1000106E0(a1, v19);
  }

  else
  {
    sub_100010E04(v8, a2, a1, v18);

    return a2;
  }
}

id sub_100010C84()
{
  v1 = v0;
  sub_10028088C(&qword_100974630, &unk_1007F6570);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000C5B0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000106E0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_OWORD *sub_100010E04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000106E0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

Swift::Int sub_100010E6C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100010ED4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100010F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011040(_swiftEmptyArrayStorage);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v13 = &type metadata for String;
  *&v12 = a2;
  *(&v12 + 1) = a3;
  sub_1000106E0(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return a1;
}

unint64_t sub_100011040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v13, &qword_1009744D0, &qword_1007F8A20);
      v5 = v13;
      v6 = v14;
      result = sub_100012854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100011170(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002CDFF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100011310(v16, a4 & 1);
    v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000C60C(v22);

    return sub_1000106E0(a1, v22);
  }

  else
  {
    sub_100011FD8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100011310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000106E0(v24, v34);
      }

      else
      {
        sub_10000C5B0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000106E0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1000115C8()
{
  result = qword_100981980;
  if (!qword_100981980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981980);
  }

  return result;
}

uint64_t sub_100011630(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011678(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1000116BC(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v5 = sub_100012854(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_10000C5B0(*(a2 + 56) + 32 * v5, v10);
      if (swift_dynamicCast())
      {
        return v9;
      }
    }
  }

  else
  {
  }

  return 0xD000000000000015;
}

uint64_t sub_100011780(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_100011814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1000118CC(int a1)
{
  if (a1 <= 18)
  {
    if (a1 <= 11)
    {
      goto LABEL_20;
    }

    if (a1 == 12)
    {
      goto LABEL_37;
    }

    if (a1 == 17)
    {
LABEL_28:
      v14 = String._bridgeToObjectiveC()();
      v15 = SFLocalizedStringForKey();

      if (v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (v4)
        {
          goto LABEL_48;
        }

        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    if (a1 != 18)
    {
      goto LABEL_46;
    }

    v1 = String._bridgeToObjectiveC()();
    v2 = SFLocalizedStringForKey();

    if (!v2)
    {
      goto LABEL_52;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (v4)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_14:
    if (a1 == 25)
    {
      goto LABEL_43;
    }

    if (a1 == 26)
    {
LABEL_34:
      v20 = String._bridgeToObjectiveC()();
      v21 = SFLocalizedStringForKey();

      if (v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (v4)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_37:
        v23 = String._bridgeToObjectiveC()();
        v24 = SFLocalizedStringForKey();

        if (v24)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = String._bridgeToObjectiveC()();
          v4 = SFLocalizedStringForKey();

          if (v4)
          {
            goto LABEL_48;
          }

          __break(1u);
LABEL_40:
          v26 = String._bridgeToObjectiveC()();
          v27 = SFLocalizedStringForKey();

          if (v27)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v28 = String._bridgeToObjectiveC()();
            v4 = SFLocalizedStringForKey();

            if (v4)
            {
              goto LABEL_48;
            }

            __break(1u);
LABEL_43:
            v29 = String._bridgeToObjectiveC()();
            v30 = SFLocalizedStringForKey();

            if (v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v31 = String._bridgeToObjectiveC()();
              v4 = SFLocalizedStringForKey();

              if (!v4)
              {
                __break(1u);
LABEL_46:
                v32 = String._bridgeToObjectiveC()();
                v33 = SFLocalizedStringForKey();

                if (v33)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v34 = String._bridgeToObjectiveC()();
                  v4 = SFLocalizedStringForKey();

                  if (v4)
                  {
                    goto LABEL_48;
                  }

LABEL_60:
                  __break(1u);
                  return;
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_48:
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              return;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (a1 != 27)
    {
      goto LABEL_46;
    }

    v5 = String._bridgeToObjectiveC()();
    v6 = SFLocalizedStringForKey();

    if (!v6)
    {
      goto LABEL_55;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (v4)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_20:
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        goto LABEL_46;
      }

      v8 = String._bridgeToObjectiveC()();
      v9 = SFLocalizedStringForKey();

      if (!v9)
      {
        goto LABEL_50;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    v11 = String._bridgeToObjectiveC()();
    v12 = SFLocalizedStringForKey();

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a1 > 24)
  {
    goto LABEL_14;
  }

  if (a1 == 19)
  {
    goto LABEL_40;
  }

  if (a1 == 20)
  {
LABEL_31:
    v17 = String._bridgeToObjectiveC()();
    v18 = SFLocalizedStringForKey();

    if (v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a1 != 23)
  {
    goto LABEL_46;
  }
}

_OWORD *sub_100011FD8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000106E0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100012044(uint64_t a1)
{
  v2 = sub_100012080();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100012080()
{
  result = qword_100982078;
  if (!qword_100982078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982078);
  }

  return result;
}

uint64_t sub_1000120D4()
{
  if (qword_1009739B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A0C10;

  return v0;
}

uint64_t sub_10001213C(uint64_t a1)
{
  v2 = sub_100012080();

  return Error<>._code.getter(a1, v2);
}

__n128 sub_100012184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000121F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10001229C()
{
  result = qword_10097A960;
  if (!qword_10097A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A960);
  }

  return result;
}

uint64_t sub_1000122F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10000EBD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D0718();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SDAuthenticationSessionMetadata(0);
    v20 = *(v13 - 8);
    sub_10000CA10(v12 + *(v20 + 72) * v7, a2, type metadata accessor for SDAuthenticationSessionMetadata);
    sub_1000124A8(v7, v9, type metadata accessor for SDAuthenticationSessionMetadata);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SDAuthenticationSessionMetadata(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_1000124A8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

id sub_100012880(uint64_t a1)
{
  if ((*(*(a1 + 32) + 200) & 1) == 0 && MKBDeviceUnlockedSinceBoot() == 1)
  {
    *(*(a1 + 32) + 200) = 1;
    [*(a1 + 32) installContactsMonitor];
    [*(a1 + 32) postNotification:@"com.apple.sharingd.KeyBagFirstUnlock"];
  }

  v2 = [NSNumber numberWithInt:MKBGetDeviceLockState()];
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  if ([*(a1 + 32) deviceKeyBagUnlocked])
  {
    pthread_mutex_lock(&stru_100972F48);
    v5 = +[NSDate now];
    v6 = *(a1 + 32);
    v7 = *(v6 + 704);
    *(v6 + 704) = v5;

    pthread_mutex_unlock(&stru_100972F48);
  }

  v8 = *(a1 + 32);

  return [v8 postNotification:@"com.apple.sharingd.KeyBagLockStatusChanged"];
}

id sub_100012AB0(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [NSString stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = *(&off_1008D3BC0 + a1);
  }

  return v2;
}

uint64_t sub_100013454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = qword_1009735E0;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v18 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v16;

  sub_1002B3098(0, 0, v9, a5, v19);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100013728(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_100013E70(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000139D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100013A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100013EB8()
{
  result = qword_100976150;
  if (!qword_100976150)
  {
    sub_100280938(&unk_1009765A0, &qword_1007F97B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976150);
  }

  return result;
}

uint64_t sub_100013F58()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = *(v0 + 40);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000171D0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DC650;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12[1] = _swiftEmptyArrayStorage;
  sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100014210()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100014254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001429C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000142E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001432C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000143BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001444C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000144DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1000145D8(a1, v4, v5, v6);
}

uint64_t sub_1000145D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  *(v4 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1000146AC, v5, 0);
}

id sub_1000146AC()
{
  v1 = objc_opt_self();
  result = [v1 sharedMonitor];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  v4 = [result deviceKeyBagLocked];

  if (v4)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100975E80);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropNearFieldService: device locked", v8, 2u);
    }

    v9 = *(v0 + 24);

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1002B4888(v9);
    sub_100005508(v9, &unk_100976120, &qword_1007F9260);
    goto LABEL_10;
  }

  result = [v1 sharedMonitor];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = result;
  [result deviceUIUnlocked];

LABEL_10:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100014A88(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DeviceLockState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, enum case for DeviceLockState.unlocked(_:), v3);
  v7 = static DeviceLockState.== infix(_:_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1009737C8 != -1)
    {
LABEL_19:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097B740);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unlocked, start LTK checkup", v12, 2u);
    }

    v2 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
    v13 = 1 << *(v2 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v2 + 64);
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    while (v15)
    {
LABEL_14:
      v20 = *(*(v2 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
      v21 = *(v20 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v17);
      *&v22[-16] = sub_1000155F0;
      *&v22[-8] = v20;

      os_unfair_lock_lock(v21 + 4);
      sub_1000156B4(&v23);
      os_unfair_lock_unlock(v21 + 4);
      if (v23 == 1)
      {
        sub_100014D7C();
      }

      v15 &= v15 - 1;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v19 >= v16)
      {
      }

      v15 = *(v2 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_100014D7C()
{
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedTransport];
  v63 = v5;
  if (!v5)
  {
    return;
  }

  if (qword_100973C50 != -1)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (qword_1009A10A8)
  {
    v6 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
    __chkstk_darwin(v5);
    *(&v44 - 2) = sub_10001560C;
    *(&v44 - 1) = v0;
    v57 = v7;
    os_unfair_lock_lock(v6 + 4);
    v0 = &v44 - 4;
    v8 = 0;
    sub_100012284(aBlock);
    os_unfair_lock_unlock(v6 + 4);
    v11 = aBlock[0];
    v12 = 0;
    v13 = aBlock[0] + 64;
    v14 = 1 << *(aBlock[0] + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(aBlock[0] + 64);
    v56 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue;
    v17 = (v14 + 63) >> 6;
    v55 = v67;
    v54 = (v1 + 1);
    v53 = v3 + 1;
    *&v10 = 136315138;
    v52 = v10;
    v47 = aBlock[0];
    v46 = aBlock[0] + 64;
    v45 = v17;
    while (1)
    {
      while (1)
      {
        if (!v16)
        {
          while (1)
          {
            v18 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v18 >= v17)
            {

              return;
            }

            v16 = *(v13 + 8 * v18);
            ++v12;
            if (v16)
            {
              v12 = v18;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_39:
          v5 = swift_once();
          goto LABEL_3;
        }

LABEL_12:
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = *(*(v11 + 56) + ((v12 << 9) | (8 * v19)));
        v21 = *(v20 + 32);
        if (v21 <= 1)
        {
          break;
        }

        if (v21 != 2)
        {
          v50 = v12;
          v51 = v16;
          v22 = v21 == 3;
          v23 = 10;
          if (!v22)
          {
            v23 = 18;
          }

LABEL_19:
          v58 = v23;
          v24 = *(v20 + 112);
          __chkstk_darwin(v9);
          *(&v44 - 2) = sub_1004F6678;
          *(&v44 - 1) = v20;

          os_unfair_lock_lock(v24 + 4);
          sub_1004F66A8(aBlock);
          os_unfair_lock_unlock(v24 + 4);
          v0 = aBlock[0];
          v25 = *(aBlock[0] + 16);
          if (v25)
          {
            v49 = v8;
            v48 = aBlock[0];
            v26 = (aBlock[0] + 40);
            do
            {
              v3 = *(v26 - 1);
              v36 = *v26;

              v37 = String._bridgeToObjectiveC()();
              v38 = [v63 idsDeviceForUniqueID:v37];

              if (v38)
              {

                v27 = *(v20 + 33);
                v69[3] = sub_100479FF4();
                v69[4] = &off_1008EA2C0;
                v69[0] = v38;
                v28 = v57;
                v64 = *&v57[v56];
                sub_1002A9938(v69, &v68);
                v29 = swift_allocObject();
                *(v29 + 16) = v58;
                sub_1002AF998(&v68, v29 + 24);
                *(v29 + 64) = v27;
                *(v29 + 72) = v28;
                v67[2] = sub_1004F6694;
                v67[3] = v29;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                v67[0] = sub_100011678;
                v67[1] = &unk_1008E56B8;
                v30 = _Block_copy(aBlock);
                v31 = v28;
                v3 = v38;
                v32 = v59;
                static DispatchQoS.unspecified.getter();
                v65 = _swiftEmptyArrayStorage;
                sub_100010F40(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
                sub_100013EB8();
                v1 = v61;
                v33 = v20;
                v34 = v62;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v30);

                v35 = v34;
                v20 = v33;
                (*v54)(v1, v35);
                (*v53)(v32, v60);

                sub_10000C60C(v69);
              }

              else
              {
                if (qword_100973998 != -1)
                {
                  swift_once();
                }

                v39 = type metadata accessor for Logger();
                sub_10000C4AC(v39, qword_100981A10);

                v40 = Logger.logObject.getter();
                v41 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v1 = swift_slowAlloc();
                  aBlock[0] = v1;
                  *v42 = v52;
                  v3 = sub_10000C4E4(v3, v36, aBlock);

                  *(v42 + 4) = v3;
                  _os_log_impl(&_mh_execute_header, v40, v41, "Could not find idsDevice %s for registration", v42, 0xCu);
                  sub_10000C60C(v1);
                }

                else
                {
                }
              }

              v26 += 2;
              --v25;
            }

            while (v25);

            v8 = v49;
            v11 = v47;
            v13 = v46;
            v17 = v45;
            v0 = v48;
          }

          else
          {
          }

          v16 = v51;
          v12 = v50;
        }
      }

      if (*(v20 + 32))
      {
        v50 = v12;
        v51 = v16;
        v23 = 8;
        goto LABEL_19;
      }
    }
  }

  v43 = v63;
}

uint64_t sub_1000155B0()
{
  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10001560C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_100015670@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1000156E8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded;
  if ((*(a1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) == 0)
  {
    sub_1004F4E10();
    if (v2)
    {
      if (qword_100973998 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100981A10);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        swift_errorRetain();
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&_mh_execute_header, v7, v8, "failed to load LTKS, error:%@", v9, 0xCu);
        sub_10028924C(v10);
      }

      else
      {
      }

      if (*(a1 + v5) != 1)
      {
        v12 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + v5) = 1;
    }
  }

  *(a1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_checkAndStartRegistration) = 0;
  v12 = 1;
LABEL_11:
  *a2 = v12;
}

void sub_100015A8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

      v6 = v3(v5);
      sub_100015D04(v3, v4);
    }

    else
    {
      v6 = 0;
    }

    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A228);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      if (v6)
      {
        v12 = 0x64656B636F6C6E75;
      }

      else
      {
        v12 = 0x64656B636F6CLL;
      }

      if (v6)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_10000C4E4(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Key bag state changed to %s", v10, 0xCu);
      sub_10000C60C(v11);
    }

    sub_1000163C8();
    sub_100016640();
    *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes] = _swiftEmptyArrayStorage;

    v15 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
    if (v15)
    {
      v16 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator + 8];

      v18 = v15(v17);
      sub_100015D04(v15, v16);
      v19 = 0;
      if (v6 & 1) == 0 || (v18)
      {
        goto LABEL_23;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((v6 & 1) == 0)
    {
      v19 = 0;
      goto LABEL_23;
    }

    v19 = 1;
LABEL_23:
    v2[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions] = v19;
    sub_100016CD0();
LABEL_24:
  }
}

uint64_t sub_100015D04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_100015D1C(void *a1, SEL *a2, SEL *a3)
{
  result = [objc_opt_self() *a2];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100015E10(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&unk_100987410, &unk_1007FB010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100016004(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100015E10(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015E10(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_100016134(uint64_t a1, unint64_t a2)
{
  v3 = sub_100016004(a1, a2);
  sub_1000162DC(&off_1008D6888);
  return v3;
}

uint64_t sub_1000162DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10028F9C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000163C8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v12)
    {
      v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

      v15 = v12(v14);
      result = sub_100015D04(v12, v13);
      v16 = v15 ^ 1;
    }

    else
    {
      v16 = 1;
    }

    v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
    if (v17)
    {
      v18 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8);

      v20 = v17(v19);
      result = sub_100015D04(v17, v18);
      if (!(v16 & 1 | (v20 != 3)))
      {
        Date.init()();
        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
        v22 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
        swift_beginAccess();
        sub_1000168F4(v4, v1 + v22);
        swift_endAccess();
        sub_10034F628();
        return sub_100016C08(v4);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016640()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v11 && (v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8), v13 = , v14 = v11(v13), sub_100015D04(v11, v12), (v14 & 1) != 0))
    {
      Date.init()();
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
      swift_beginAccess();
      sub_1000168F4(v3, v0 + v16);
      swift_endAccess();
      sub_100016964();
    }

    else
    {
      Date.init()();
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
      v18 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
      swift_beginAccess();
      sub_1000168F4(v3, v0 + v18);
      swift_endAccess();
      sub_10034F36C();
    }

    return sub_100016C08(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000168F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100016964()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097A228);
  v6 = v0;
  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v6[v10], 1, v1))
    {
      v11 = 0x800000010078D230;
      v12 = 0xD000000000000018;
    }

    else
    {
      (*(v2 + 16))(v4, &v6[v10], v1);
      v14 = Date.description.getter();
      v11 = v15;
      (*(v2 + 8))(v4, v1);
      v12 = v14;
    }

    v16 = sub_10000C4E4(v12, v11, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v7, "Storing last device unlock as %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
    v13 = v18;
  }
}

uint64_t sub_100016C08(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016CD0()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A228);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Allowing lenient motion conditions";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
    }
  }

  else
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097A228);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Denying lenient motion conditions";
      goto LABEL_10;
    }
  }
}

unsigned __int8 *sub_1000170E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    if (qword_1009A10A8)
    {
      result = [objc_opt_self() sharedMonitor];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v3 = result;
      v4 = [result deviceKeyBagLocked];

      if (v4 != v2[48])
      {
        sub_100344728();
      }
    }
  }

  return result;
}

void sub_100017200()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = v40 - v2;
  v4 = objc_opt_self();
  v5 = [v4 sharedMonitor];
  if (!v5)
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = v5;
  v7 = [v5 deviceKeyBagDisabled];

  v8 = [v4 sharedMonitor];
  if (!v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = v8;
  v10 = [v8 deviceKeyBagUnlocked];

  v11 = [v4 sharedMonitor];
  if (!v11)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 screenOn];

  if (SFDeviceClassCodeGet() == 1)
  {
    if (((v13 ^ 1 | v7) & 1) != 0 && *(v0 + 216) == 1)
    {
      v14 = v0;
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100975CC0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109376;
        *(v18 + 4) = v13 ^ 1;
        *(v18 + 8) = 1024;
        *(v18 + 10) = v7;
        _os_log_impl(&_mh_execute_header, v16, v17, "Dismissing unlock request notification on screen off: %{BOOL}d, passcode disable: %{BOOL}d", v18, 0xEu);
      }

      v19 = [objc_opt_self() sharedManager];
      [v19 dismissRequestToUnlockNotification];

      v0 = v14;
      *(v14 + 216) = 0;
    }

    if (v10)
    {
      if (*(v0 + 216) == 1)
      {
        swift_beginAccess();
        sub_10000FF90(v0 + 176, &v41, &qword_100982080, &unk_1007FDD30);
        if (*(&v42 + 1))
        {
          v20 = v0;
          sub_1000121F8(&v41, v44);
          if (qword_100973540 != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          sub_10000C4AC(v21, qword_100975CC0);
          sub_1002A9938(v44, &v41);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v40[0] = v25;
            *v24 = 136315138;
            v26 = *(&v42 + 1);
            v27 = v43;
            sub_10002CDC0(&v41, *(&v42 + 1));
            v28 = (*(v27 + 8))(v26, v27);
            if (v29)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0xD000000000000015;
            }

            if (v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = 0x8000000100789F30;
            }

            sub_10000C60C(&v41);
            v32 = sub_10000C4E4(v30, v31, v40);

            *(v24 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v22, v23, "Trying to authenticate with device that previously failed due to expired escrow %s", v24, 0xCu);
            sub_10000C60C(v25);
          }

          else
          {

            sub_10000C60C(&v41);
          }

          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
          sub_1002A9938(v44, &v41);
          v35 = sub_1002AF520(&qword_100975E60, v34, _s19UnlockClassCManagerCMa, &unk_1007F9024);
          v36 = swift_allocObject();
          v36[2] = v20;
          v36[3] = v35;
          v36[4] = v20;
          sub_1000121F8(&v41, (v36 + 5));
          swift_retain_n();
          sub_1002B3098(0, 0, v3, &unk_1007F90C0, v36);

          sub_10000C60C(v44);
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          swift_beginAccess();
          sub_1002AF74C(&v41, v20 + 176);
          swift_endAccess();
        }

        else
        {
          sub_100005508(&v41, &qword_100982080, &unk_1007FDD30);
        }
      }

      v37 = [objc_opt_self() standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v39 = String._bridgeToObjectiveC()();
      [v37 setValue:isa forKey:v39];
    }
  }

  else if (SFDeviceIsRealityDevice())
  {

    sub_1002ABCDC(0);
  }
}

uint64_t sub_100017838()
{
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

void *sub_100017880(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[20];
  if (!v3)
  {
    return result;
  }

  if (dword_100970E30 <= 40)
  {
    if (dword_100970E30 != -1)
    {
LABEL_4:
      v4 = [v3 screenLocked];
      v5 = "unlocked";
      if (v4)
      {
        v5 = "locked";
      }

      LogPrintF(&dword_100970E30, "[SDProximityPairingAgent _uiLockStatusChanged]_block_invoke", 40, "UI lock status changed to %s\n", v5);
      result = *(a1 + 32);
      goto LABEL_9;
    }

    v6 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v6)
    {
      v3 = result[20];
      goto LABEL_4;
    }
  }

LABEL_9:

  return [result _update];
}

void sub_100019B80(void *a1)
{
  v1 = [a1 localDeviceID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100019C18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

uint64_t sub_100019C4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 60, a4);
}

uint64_t sub_100019C6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 30, a4);
}

void sub_100019D00(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

double sub_100019D28(double result, double a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

void sub_100019D70(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

uint64_t sub_100019DA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 50, a4);
}

void sub_100019DC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100019E14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_100019E78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t SDAutoUnlockLTKInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 16;
LABEL_44:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_51;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_51;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v35 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v35 & 0x7F) << v16;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_46;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
      *(a1 + 28) = v22;
LABEL_51:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v34 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v34 & 0x7F) << v24;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_50;
        }
      }

      if ([a2 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

LABEL_50:
      *(a1 + 24) = v30;
      goto LABEL_51;
    }

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = PBReaderReadData();
    v15 = 8;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001DBC0(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if ((a2 - 1) >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = (a2 + 8);
  }

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v15 = 134218499;
    v16 = v6;
    if (a3)
    {
      v8 = @"YES";
    }

    v17 = 2112;
    v18 = v8;
    v19 = 2113;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating local LTK (aks keyclass: %ld, touch bar: %@, local LTK: %{private}@)", &v15, 0x20u);
  }

  [v5 bytes];
  [v5 length];
  v9 = aks_validate_local_key();
  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    LODWORD(v16) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Validated local LTK (status: %d)", &v15, 8u);
  }

  v11 = 0;
  if (v9 != -536362989 && v9 != -536362984)
  {
    v11 = 0;
    v12 = v9 == -536870212 ? a3 : 0;
    if ((v12 & 1) == 0 && v9 != -536362971)
    {
      if (v9)
      {
        v13 = auto_unlock_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          LODWORD(v16) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Validating local LTK returned unexpected status (status: %d)", &v15, 8u);
        }
      }

      v11 = 1;
    }
  }

  return v11;
}

void sub_10001ED70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a1)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating enable state in dynamic store: %@", buf, 0xCu);
  }

  v9 = sub_10001F124(0);
  v10 = [v9 mutableCopy];

  v11 = [(__CFString *)v10 objectForKeyedSubscript:v5];
  v12 = v11;
  if (!v11 || [v11 BOOLValue] != a1)
  {
    v13 = [NSNumber numberWithBool:a1];
    [(__CFString *)v10 setObject:v13 forKeyedSubscript:v5];

    v14 = auto_unlock_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v16 = SFAutoUnlockDynamicStoreSharingDomainKey;
    if (v15)
    {
      *buf = 138412546;
      v26 = SFAutoUnlockDynamicStoreSharingDomainKey;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating global dynamic store (key: %@, value: %@)", buf, 0x16u);
    }

    if (!SCDynamicStoreSetValue(0, v16, v10))
    {
      v17 = auto_unlock_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100113708();
      }
    }
  }

  v18 = sub_10001F124(v6);
  v19 = [v18 mutableCopy];

  v20 = [NSString stringWithFormat:@"%d", getuid()];
  v21 = [(__CFString *)v19 objectForKeyedSubscript:v20];

  if (v21 && [v21 BOOLValue] == a1)
  {
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Enabled dictionary exists %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v22 = [NSNumber numberWithBool:a1];
  [(__CFString *)v19 setObject:v22 forKeyedSubscript:v20];

  v23 = auto_unlock_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating enabled dynamic store (key: %@, value: %@)", buf, 0x16u);
  }

  if (!SCDynamicStoreSetValue(0, v6, v19))
  {
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100113708();
    }

LABEL_22:
  }
}

void *sub_10001F124(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = SFAutoUnlockDynamicStoreSharingDomainKey;
  }

  v2 = SCDynamicStoreCopyValue(0, v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFDictionaryGetTypeID())
    {
      CFRelease(v3);
      v3 = 0;
    }
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

id sub_10001F47C(void *a1)
{
  v1 = a1;
  v2 = [v1 aa_primaryAppleAccount];

  return v2;
}

uint64_t sub_100021BD4(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040020F6587uLL);
  if (v2)
  {
    v3 = v2;
    [v1 bytes];
    [v1 length];
    state = aks_remote_peer_get_state();
    v5 = state;
    if (state && state != -536870184)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100021DE0();
      }

      v7 = 100;
    }

    else
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = *v3;
        v11 = v3[2];
        *&v17[16] = v3[1];
        v18 = v11;
        *v17 = v10;
        v12 = v3[3];
        v13 = v3[4];
        v14 = v3[5];
        v22 = *(v3 + 12);
        v20 = v13;
        v21 = v14;
        v19 = v12;
        v15 = sub_10005C980(v17);
        v16 = *(v3 + 3);
        *v17 = 67109634;
        *&v17[4] = v5;
        *&v17[8] = 2112;
        *&v17[10] = v15;
        *&v17[18] = 1024;
        *&v17[20] = v16;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Status %d, Peer State: %@, flags %d", v17, 0x18u);
      }

      v19 = v3[3];
      v20 = v3[4];
      v21 = v3[5];
      v22 = *(v3 + 12);
      *v17 = *v3;
      *&v17[16] = v3[1];
      v18 = v3[2];
      v7 = sub_10005CAB4(v17);
    }

    free(v3);
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

void sub_100021DE0()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

id sub_100021F1C()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t sub_100022E18()
{
  v0 = CFPreferencesCopyAppValue(@"allowAutoUnlock", @"com.apple.applicationaccess");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v1);
    }

    CFRelease(v1);
  }

  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isAutoUnlockAllowed];

  return v4 ^ 1;
}

void sub_100022FD8(uint64_t a1)
{
  state64 = 0;
  state = notify_get_state(*(*(a1 + 32) + 500), &state64);
  v3 = daemon_log();
  v4 = v3;
  if (state)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002327E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = state64;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UI locked state changed %llu", buf, 0xCu);
    }

    v5 = [NSNumber numberWithInt:state64 == 0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 192);
    *(v6 + 192) = v5;

    if (state64)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 480);
      *(v8 + 480) = 0;
    }

    [*(a1 + 32) postNotification:@"com.apple.sharingd.UILockStatusChanged"];
  }
}

void *sub_100023F20()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

id sub_100023F44()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_100023F5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

double sub_100023FB4()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

id sub_1000240D0(uint64_t a1)
{
  [*(a1 + 32) setAutoUnlockEnabledUpdatedAfterFirstUnlock:1];
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagUnlocked];

  if (v3 && ([*(a1 + 32) shouldUseTwoPartPill] & 1) == 0 && objc_msgSend(*(a1 + 32), "waitingForAutoUnlockStateUpdateToStartPairedUnlock"))
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Auto Unlock not enabled. Starting unlock", v11, 2u);
    }

    *(*(a1 + 32) + 68) = [*(a1 + 32) startUnlockIfNeeded];
    v5 = paired_unlock_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    if (*(*(a1 + 32) + 68))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v11 = 138412290;
    *&v11[4] = v6;
    v7 = "Paired Unlock started: %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_14;
  }

  if ([*(a1 + 32) waitingForAutoUnlockStateUpdateToStartPairedUnlock])
  {
    v5 = paired_unlock_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      return [*(a1 + 32) setWaitingForAutoUnlockStateUpdateToStartPairedUnlock:{0, *v11, *&v11[8]}];
    }

    *v11 = 0;
    v7 = "Auto Unlock enabled. Not performing Paired Unlock";
    v8 = v5;
    v9 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v11, v9);
    goto LABEL_15;
  }

  return [*(a1 + 32) setWaitingForAutoUnlockStateUpdateToStartPairedUnlock:{0, *v11, *&v11[8]}];
}

id sub_100024974(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v3 = +[NSLocale autoupdatingCurrentLocale];
    [v2 setLocale:v3];

    v4 = [v2 components:2097404 fromDate:v1];

    v5 = [v4 year];
    v6 = [v4 month];
    v7 = [v4 day];
    v8 = [v4 hour];
    v9 = [v4 minute];
    v10 = [v4 second];
    v11 = [v4 timeZone];
    v12 = [v11 abbreviation];
    v13 = [NSString stringWithFormat:@"%02ld-%02ld-%02ld %02ld:%02ld:%02ld %@", v5, v6, v7, v8, v9, v10, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_100025310()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000255E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000255F8(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_devicesWithLTKs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100025E8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

char *sub_100025F00()
{
  sub_100026178();
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v19 = 0;
  v2 = [v0 dataWithPropertyList:v1 format:200 options:0 error:&v19];

  v3 = v19;
  if (!v2)
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = __OFSUB__(v11, v12);
  v8 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v8) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = v8;
  }

LABEL_13:
  if (__OFADD__(v8, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = calloc(v8 + 200, 1uLL);
  if (!v14)
  {
    sub_100026AC0(v4, v6);
    return 0;
  }

  *v14 = 1;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = v17;
LABEL_25:
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v17))
      {
        *(v14 + 1) = v17;
        strcpy(v14 + 136, "SDAirDropContactHashManager State");
        if (v7 == 2)
        {
          if (!__OFSUB__(*(v4 + 24), *(v4 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7)
  {
    goto LABEL_23;
  }

  *(v14 + 1) = BYTE6(v6);
LABEL_32:
  strcpy(v14 + 136, "SDAirDropContactHashManager State");
LABEL_34:
  v18 = v14;
  Data.copyBytes(to:count:)();
  sub_100026AC0(v4, v6);
  return v18;
}

uint64_t sub_100026178()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = __chkstk_darwin(v5 - 8);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v16)
  {
    v57 = v3;
    v55 = v2;
    v59 = 10;
    v60 = 0xE100000000000000;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v18 = swift_allocObject();
    v58 = xmmword_1007F5670;
    *(v18 + 16) = xmmword_1007F5670;
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated;
    v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated);
    v21 = sub_100026764();
    v22 = v21;
    v23 = 28526;
    if (v20)
    {
      v23 = 7562617;
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = 0xE200000000000000;
    }

    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v21;
    *(v18 + 32) = v23;
    *(v18 + 40) = v24;
    v25._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v25);

    if (*(v1 + v19) != 1)
    {
      return v59;
    }

    v26 = swift_allocObject();
    v27 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully);
    *(v26 + 16) = v58;
    v28 = v27 == 0;
    v29 = 28526;
    if (v28)
    {
      v30 = 0xE200000000000000;
    }

    else
    {
      v29 = 7562617;
      v30 = 0xE300000000000000;
    }

    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v22;
    *(v26 + 32) = v29;
    *(v26 + 40) = v30;
    v31._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v31);

    v32 = swift_allocObject();
    *(v32 + 16) = v58;
    sub_1000267B8(v9);
    v33 = v57;
    v34 = v55;
    v53 = *(v57 + 48);
    if (v53(v9, 1, v55))
    {
      sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v37 = v54;
      (*(v33 + 16))(v54, v9, v34);
      sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
      v35 = Date.description.getter();
      v36 = v38;
      (*(v33 + 8))(v37, v34);
    }

    v39 = 0x3E6C696E3CLL;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v22;
    if (v36)
    {
      v40 = v35;
    }

    else
    {
      v40 = 0x3E6C696E3CLL;
    }

    v41 = 0xE500000000000000;
    if (v36)
    {
      v41 = v36;
    }

    *(v32 + 32) = v40;
    *(v32 + 40) = v41;
    v42._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v42);

    v43 = swift_allocObject();
    *(v43 + 16) = v58;
    v44 = v56;
    sub_10002693C(v56);
    if (v53(v44, 1, v34))
    {
      sub_100005508(v44, &qword_10097A7F0, &unk_1007FB600);
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v22;
    }

    else
    {
      v46 = v57;
      v47 = v54;
      (*(v57 + 16))(v54, v44, v34);
      sub_100005508(v44, &qword_10097A7F0, &unk_1007FB600);
      v48 = Date.description.getter();
      v45 = v49;
      (*(v46 + 8))(v47, v34);
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v22;
      if (v45)
      {
        v39 = v48;
        goto LABEL_22;
      }
    }

    v45 = 0xE500000000000000;
LABEL_22:
    *(v43 + 32) = v39;
    *(v43 + 40) = v45;
    v50._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v50);

    v51._countAndFlagsBits = 0xD000000000000027;
    v51._object = 0x8000000100795490;
    String.append(_:)(v51);
    return v59;
  }

  __break(1u);
  return result;
}

unint64_t sub_100026764()
{
  result = qword_10097F3A0;
  if (!qword_10097F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F3A0);
  }

  return result;
}

uint64_t sub_1000267B8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100005508(v11, &unk_1009746F0, &qword_1007F90B0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10002693C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100005508(v11, &unk_1009746F0, &qword_1007F90B0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100026AC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100026B14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005CF8;

  return v6(a1);
}

uint64_t sub_100026C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006E2A48(a1, v4, v5, v6);
}

uint64_t sub_100026CD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1006E2960(v2, v3, v4);
}

uint64_t sub_100026DBC()
{
  v1[5] = v0;
  sub_10028088C(&qword_1009799D0, &unk_1007FCB10);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026EB4, 0, 0);
}

uint64_t sub_100026EB4()
{
  v33 = v0;
  v1 = [objc_opt_self() sharedMonitor];
  if (!v1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = v1;
  v5 = [v1 deviceKeyBagUnlocked];

  if ((v5 & 1) == 0)
  {
    v1 = [objc_opt_self() sharedManager];
    if (v1)
    {
      v6 = v1;
      v7 = [v1 localAttestedLTK];

      if (v7)
      {
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_100026AC0(v8, v10);
        goto LABEL_6;
      }

      if (qword_1009737D0 != -1)
      {
LABEL_30:
        swift_once();
      }

      v13 = 0;
      v14 = *(qword_1009A0B08 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
      v15 = -1;
      v16 = -1 << *(v14 + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & *(v14 + 64);
      do
      {
        if (!v17)
        {
          while (1)
          {
            v18 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v18 >= ((63 - v16) >> 6))
            {
              goto LABEL_6;
            }

            v17 = *(v14 + 64 + 8 * v18);
            ++v13;
            if (v17)
            {
              v13 = v18;
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v18 = v13;
LABEL_19:
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
      }

      while ((*(*(*(v14 + 56) + ((v18 << 9) | (8 * v19))) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) != 0);
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      v0[10] = sub_10000C4AC(v20, qword_100979048);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[5];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        v0[4] = v23;
        sub_10028088C(&qword_1009799D8, &qword_1007FCB20);
        v26 = String.init<A>(describing:)();
        v28 = sub_10000C4E4(v26, v27, &v32);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s: Waiting for keys to be loaded", v24, 0xCu);
        sub_10000C60C(v25);
      }

      v29 = [objc_opt_self() defaultCenter];
      if (qword_100973678 != -1)
      {
        swift_once();
      }

      v0[11] = NSNotificationCenter.notifications(named:object:)();

      NSNotificationCenter.Notifications.makeAsyncIterator()();
      v30 = sub_10001429C(&unk_10097F040, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v31 = swift_task_alloc();
      v0[12] = v31;
      *v31 = v0;
      v31[1] = sub_100340678;
      v1 = v0[6];
      v2 = v0[7];
      v3 = v30;

      return dispatch thunk of AsyncIteratorProtocol.next()(v1, v2, v3);
    }

LABEL_32:
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v1, v2, v3);
  }

LABEL_6:

  v11 = v0[1];

  return v11();
}

Swift::Int sub_100027628(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return sub_10000CB70(&off_1008D7238);
  }

  else
  {
    return sub_10000CB70(off_1008E5D80[a1]);
  }
}

unint64_t sub_10002764C()
{
  result = qword_100974F68;
  if (!qword_100974F68)
  {
    sub_1000276B4(255, &qword_100974F60, SFAutoUnlockDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974F68);
  }

  return result;
}

uint64_t sub_1000276B4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000276FC(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100027A84(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_100027B24(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100027D64(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100027A84(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t *sub_100027B24(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
  sub_100027D9C(&qword_100974F68, &qword_100974F60, SFAutoUnlockDevice_ptr);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_100027D9C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000276B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027DEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100027E50()
{
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F240);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] screenOn];

    _os_log_impl(&_mh_execute_header, v4, v5, "Screen state changed %{BOOL}d", v7, 8u);
  }

  else
  {

    v4 = *(v0 + 16);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_10002AB0C, v8, 0);
}

uint64_t sub_100028244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  *(v4 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100028318, v5, 0);
}

uint64_t sub_100028318()
{
  if ([*(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) screenOn])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: switch Screen ON", v4, 2u);
    }

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100975E80);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropNearFieldService: switch Screen OFF", v8, 2u);
    }

    v9 = v0[3];

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1002B4888(v9);
    sub_100005508(v9, &unk_100976120, &qword_1007F9260);
    sub_1002B9D54();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100028580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100027E30(a1, v4, v5, v6);
}

uint64_t sub_100028634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100028244(a1, v4, v5, v6);
}

uint64_t sub_1000286E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100975E80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropNearFieldService: start", v13, 2u);
  }

  if (a2)
  {
    a1 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType);
  }

  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = 0x800000010078A3E0;
  }

  if (a4)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  sub_10002887C(a1, v15, v14, 0, 0, 0xF000000000000000);
}

void sub_10002887C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v93 = a6;
  v92 = a5;
  LODWORD(v110) = a4;
  v113 = a1;
  v106 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchQoS();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_100976130, &qword_1007F92B0);
  __chkstk_darwin(v12 - 8);
  v94 = &v90 - v13;
  v111 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v108 = *(v111 - 8);
  v14 = __chkstk_darwin(v111);
  v98 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v96 = &v90 - v17;
  v18 = __chkstk_darwin(v16);
  v95 = &v90 - v19;
  v20 = __chkstk_darwin(v18);
  v109 = (&v90 - v21);
  v97 = v22;
  __chkstk_darwin(v20);
  v107 = &v90 - v23;
  v24 = type metadata accessor for SFClientAccessLevel();
  v91 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v90 - v28;
  v30 = type metadata accessor for SFClientIdentity();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryClientForLabel;
  swift_beginAccess();
  v112 = v7;
  v35 = *(v7 + v34);
  v36 = *(v35 + 16);
  v101 = a3;
  v99 = a2;
  if (v36 && (v37 = sub_100012854(a2, a3), (v38 & 1) != 0))
  {
    (*(v31 + 16))(v33, *(v35 + 56) + *(v31 + 72) * v37, v30);
    swift_endAccess();
    SFClientIdentity.accessLevel.getter();
    static SFClientAccessLevel.allowRestrictedBoop.getter();
    sub_100005358(&unk_1009761B0, &type metadata accessor for SFClientAccessLevel, &protocol conformance descriptor for SFClientAccessLevel);
    v39 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v40 = *(v91 + 8);
    v40(v27, v24);
    v40(v29, v24);
    (*(v31 + 8))(v33, v30);
  }

  else
  {
    swift_endAccess();
    v39 = 0;
  }

  v42 = v112;
  v41 = v113;
  v43 = sub_10002968C(v113, v110 & 1, v39 & 1);
  v44 = v111;
  v45 = v109;
  if ((v43 & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000C4AC(v56, qword_100975E80);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_18;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "SDAirDropNearFieldService: Near field Controller is not available.";
    goto LABEL_17;
  }

  sub_1002D6EA4();
  v46 = *(v42 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!v46)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_100975E80);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_18;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "SDAirDropNearFieldService: missing Near field Controller, will not start polling";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);

LABEL_18:

    return;
  }

  v47 = *(v44 + 24);
  *(v45 + v47) = 0;
  v110 = v46;
  v48 = v92;
  v49 = v93;
  sub_1002A9924(v92, v93);
  UUID.init()();
  if (v49 >> 60 == 15)
  {
    v50 = sub_1001BBEF4(kSecAttrKeyTypeECSECPrimeRandom, 256);
    v51 = sub_1001BC0FC(v50);
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = (v45 + *(v44 + 20));
    *v55 = v52;
    v55[1] = v54;
    *(v45 + v47) = v50;
  }

  else
  {
    v62 = (v45 + *(v44 + 20));
    *v62 = v48;
    v62[1] = v49;
  }

  v63 = v107;
  v64 = v96;
  v65 = v95;
  sub_10000CA10(v45, v107, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v66 = v94;
  sub_1002D7388(v63, v94, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  (*(v108 + 56))(v66, 0, 1, v44);
  v67 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  swift_beginAccess();
  sub_10000C788(v66, v42 + v67, &qword_100976130, &qword_1007F92B0);
  swift_endAccess();
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000C4AC(v68, qword_100975E80);
  sub_1002D7388(v63, v65, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  sub_1002D7388(v63, v64, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v71 = 138412546;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1002D6414(v65, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    *(v71 + 4) = isa;
    *v72 = isa;
    *(v71 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    sub_1002D6414(v64, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v77 = sub_10000C4E4(v74, v76, aBlock);

    *(v71 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "SDAirDropNearFieldService: Starting to poll with public key: %@ listener ID: %s", v71, 0x16u);
    sub_100005508(v72, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v109);
    v63 = v107;
  }

  else
  {

    sub_1002D6414(v64, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    sub_1002D6414(v65, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  }

  v78 = v101;
  v79 = v99;
  v80 = v98;
  sub_1002D7388(v63, v98, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v81 = (*(v108 + 80) + 48) & ~*(v108 + 80);
  v82 = swift_allocObject();
  v83 = v110;
  v82[2] = v110;
  v82[3] = v41;
  v82[4] = v79;
  v82[5] = v78;
  sub_10000CA10(v80, v82 + v81, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  aBlock[4] = sub_1002D70C8;
  aBlock[5] = v82;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008D9D70;
  v84 = _Block_copy(aBlock);
  v85 = v83;

  v86 = v102;
  static DispatchQoS.unspecified.getter();
  v114 = _swiftEmptyArrayStorage;
  sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v87 = v63;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  v88 = v104;
  v89 = v106;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v84);

  (*(v100 + 8))(v88, v89);
  (*(v103 + 8))(v86, v105);
  sub_1002D6414(v87, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
}

uint64_t sub_10002952C()
{
  v1 = (type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_100026AC0(*(v0 + v2 + v1[7]), *(v0 + v2 + v1[7] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100029654(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002968C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v8 = static NSUserDefaults.airdrop.getter();
  v9 = SFAirDropUserDefaults.nearFieldSharingEnabled.getter();

  if ((v9 & 1) == 0 && a1 != 2)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - feature disabled";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_18:

    return 0;
  }

  v15 = static NSUserDefaults.airdrop.getter();
  v16 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if ((v16 & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - BoopToAction feature flag disabled";
    goto LABEL_17;
  }

  v17 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus);
  if ([v17 isClarityBoardEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - ClarityBoard Enabled";
    goto LABEL_17;
  }

  if ((a2 & 1) == 0 && [v17 lowPowerModeEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Low power mode enabled";
    goto LABEL_17;
  }

  if ((a3 & 1) == 0 && ([v17 isAirDropAllowed] & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - AirDrop is restricted";
    goto LABEL_17;
  }

  if (SFStoreDemoMode())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Store Demo Mode Enabled";
    goto LABEL_17;
  }

  if (![v17 screenOn])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - screen is off";
    goto LABEL_17;
  }

  if (![v17 wirelessEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - wifi is off";
    goto LABEL_17;
  }

  if (BYSetupAssistantNeedsToRun())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - device in Buddy";
    goto LABEL_17;
  }

  if (([v17 systemUIFlags] & 0x80000) != 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Buddy is visible";
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_100029D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  swift_retain_n();
  sub_1002B3098(0, 0, v9, a5, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100029F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10002A1D4(a1, v4, v5, v6);
}

uint64_t sub_10002A010()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    v7 = *(v5 + 48);
    *(v6 + 4) = [v7 screenOn];
    *(v6 + 8) = 1024;
    *(v6 + 10) = [v7 isMirroringActive];

    _os_log_impl(&_mh_execute_header, v2, v3, "Screen state changed %{BOOL}d - mirroring state %{BOOL}d", v6, 0xEu);
  }

  else
  {
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10002A690, v8, 0);
}

void sub_10002A290()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = &_swiftEmptySetSingleton;
  v6 = *(v0 + 48);
  if (![v6 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v6 screenStateSupportsAirDrop] || !objc_msgSend(v6, "discoverableLevel") || !objc_msgSend(v6, "wirelessEnabled") || (objc_msgSend(v6, "bluetoothEnabledIncludingRestricted") & 1) == 0)
  {
    sub_10002B150(v14, 0);
  }

  if ([v6 discoverableLevel])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10002A73C();
  }

  if (![v6 screenStateSupportsAirDrop] || (v7 & 1) == 0 || !objc_msgSend(v6, "wirelessEnabled") || (objc_msgSend(v6, "bluetoothEnabledIncludingRestricted") & 1) == 0)
  {
    sub_10002B150(v14, 1);
  }

  if (![v6 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v6 screenStateSupportsAirDrop] || (objc_msgSend(v6, "wirelessEnabled") & 1) == 0)
  {
    sub_10002B150(v14, 2);
  }

  v8 = v15;
  if (v15[2])
  {
    if (sub_10002B804(1u, v15))
    {
      sub_10002B8D0(1, 0);
    }

    if (sub_10002B804(0, v8))
    {
      sub_10002B8D0(0, 0);
    }

    if (sub_10002B804(2u, v8))
    {
      sub_10002B8D0(2, 0);
    }
  }

  v9 = sub_10002B804(1u, v8);

  static SFPlatform.watchOS.getter();
  v10 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v5, v2);
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      sub_1005C1F44(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID);
      v11 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
      swift_beginAccess();
      *(v1 + v11) = &_swiftEmptySetSingleton;
    }

    goto LABEL_32;
  }

  if (v10)
  {
LABEL_32:

    goto LABEL_34;
  }

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;

  sub_1005C1F1C(v1 + v12, sub_1003710F0, v1);

LABEL_34:
  v13 = sub_10002B804(0, v8);

  if (!v13)
  {
    sub_100359850(0);
  }
}

uint64_t sub_10002A690()
{
  v1 = *(v0 + 24);
  sub_10002A290();

  return _swift_task_switch(sub_10002C54C, v1, 0);
}

id sub_10002A73C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 BOOLForKey:v4];
  }

  return v2;
}

uint64_t sub_10002A81C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

double sub_10002A838()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

void sub_10002A874(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (!v3)
  {
    return;
  }

  if (dword_100970E30 <= 40)
  {
    if (dword_100970E30 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_8;
      }

      v3 = v2[19];
    }

    v4 = [v3 screenOn];
    v5 = "off";
    if (v4)
    {
      v5 = "on";
    }

    LogPrintF(&dword_100970E30, "[SDProximityPairingAgent _screenStateChanged]_block_invoke", 40, "Screen state changed to %s\n", v5);
    v2 = *(a1 + 32);
  }

LABEL_8:
  [v2 _update];
  v7 = *(a1 + 32);
  if (*(v7 + 56) != 1)
  {
    return;
  }

  v8 = *(v7 + 48);
  if (!v8)
  {
    return;
  }

  if (dword_100970E30 > 30)
  {
    goto LABEL_14;
  }

  if (dword_100970E30 == -1)
  {
    v9 = _LogCategory_Initialize();
    v7 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_14;
    }

    v8 = *(v7 + 48);
  }

  LogPrintF(&dword_100970E30, "[SDProximityPairingAgent _screenStateChanged]_block_invoke", 30, "Have buffered devices and will be processing them: %@\n", v8);
  v7 = *(a1 + 32);
LABEL_14:
  v10 = [*(v7 + 48) allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (dword_100970E30 <= 10 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012EF30(v15);
        }

        [*(a1 + 32) _deviceFound:v15 andIsABufferedDevice:1];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v16 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v12 = v16;
    }

    while (v16);
  }

  [*(a1 + 32) ensureTimerStartedForBufferedDevicesPurge];
}

uint64_t sub_10002AB0C()
{
  sub_10002AB6C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002AB6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v41 - v6;
  if (qword_1009738C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000C4AC(v7, qword_10097F240);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
    swift_beginAccess();
    *(v12 + 4) = *(*&v9[v13] + 16);
    *(v12 + 12) = 1024;
    *(v12 + 14) = [*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] currentConsoleUser];

    _os_log_impl(&_mh_execute_header, v10, v11, "Browse device state - client count %ld - current user %{BOOL}d", v12, 0x12u);
  }

  else
  {
  }

  v14 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus];
  if (([v14 screenOn] & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
    swift_beginAccess();
    if (*(*&v9[v15] + 16))
    {
      if ([v14 currentConsoleUser])
      {
        v54 = v8;
        v43 = v9;
        v42 = v15;
        v16 = *&v9[v15];
        v17 = v16 + 56;
        v18 = 1 << *(v16 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v16 + 56);
        v21 = (v18 + 63) >> 6;
        v52 = v2 + 16;
        v53 = v16;
        swift_bridgeObjectRetain_n();
        v22 = 0;
        *&v23 = 136315138;
        v45 = v23;
        v51 = (v2 + 8);
        v0 = ((v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v50 = v0;
        v46 = v2;
        v44 = v5;
        while (v20)
        {
LABEL_18:
          v26 = *(v2 + 16);
          v27 = v55;
          v26(v55, *(v53 + 48) + *(v2 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v1);
          v26(v5, v27, v1);
          v0 = v5;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v48 = v30;
            v49 = swift_slowAlloc();
            v56 = v49;
            *v30 = v45;
            sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v47 = v29;
            v31 = v0;
            v32 = dispatch thunk of CustomStringConvertible.description.getter();
            v33 = v1;
            v35 = v34;
            v24 = *v51;
            (*v51)(v31, v33);
            v36 = sub_10000C4E4(v32, v35, &v56);
            v1 = v33;
            v2 = v46;

            v37 = v48;
            *(v48 + 1) = v36;
            v0 = v37;
            _os_log_impl(&_mh_execute_header, v28, v47, "Browse client %s still present after screen off", v37, 0xCu);
            sub_10000C60C(v49);

            v5 = v44;
          }

          else
          {

            v24 = *v51;
            (*v51)(v0, v1);
            v5 = v0;
          }

          v20 &= v20 - 1;
          v24(v55, v1);
        }

        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v25 >= v21)
          {
            break;
          }

          v20 = *(v17 + 8 * v25);
          ++v22;
          if (v20)
          {
            v22 = v25;
            goto LABEL_18;
          }
        }

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Removing delinquent browsers", v40, 2u);
        }

        *&v43[v42] = &_swiftEmptySetSingleton;

        sub_10047E40C();
      }
    }
  }
}

uint64_t sub_10002B150(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10002B248(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10002B248(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002B5B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10036CCBC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10002B394(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10002B394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10002B5B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}