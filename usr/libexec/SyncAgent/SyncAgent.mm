void sub_100000C78(uint64_t a1)
{
  v15 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v2 = 0;
  v3 = "/Library/Caches/com.apple.xbs/Sources/Sync/SyncAgent/SyncAgent.m";
  v4 = "incomingConnectionCallback";
  v5 = @"Running DataMigrator found with pid %d. Sleeping and waiting for it to finish...";
  while (!v2)
  {
LABEL_11:
    v18 = 0;
    *v17 = xmmword_1000059E8;
    size = 0;
    v2 = sysctl(v17, 3u, 0, &size, 0, 0);
    if (!v2)
    {
      v6 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
      v7 = sysctl(v17, 3u, v6, &size, 0, 0);
      if (v7)
      {
        v2 = v7;
        free(v6);
      }

      else
      {
        v8 = v5;
        v9 = v4;
        v10 = v3;
        if (size < 0x288)
        {
LABEL_19:
          free(v6);
          v2 = -1;
        }

        else
        {
          v11 = size / 0x288;
          v12 = v6 + 243;
          while (1)
          {
            v2 = *(v12 - 203);
            if (v2 >= 1 && !strncmp("DataMigrator", v12, 0x10uLL))
            {
              break;
            }

            v12 += 648;
            if (!--v11)
            {
              goto LABEL_19;
            }
          }

          free(v6);
        }

        v3 = v10;
        v4 = v9;
        v5 = v8;
      }
    }

    if (CFAbsoluteTimeGetCurrent() - Current > 60.0)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (DLDisconnect())
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        DLKillConnection();
      }

      return;
    }
  }

  if (v2 != -1)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    sleep(1u);
    goto LABEL_11;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLDeviceReady())
  {
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  else
  {
    *(v15 + 56) = kCFBooleanTrue;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncStarted", 0, 0, 0);
    sub_100003870();
  }
}

uint64_t sub_10000103C()
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  return sub_100003870();
}

uint64_t sub_10000108C()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

void sub_1000010E4()
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  exit(0);
}

id sub_100001134(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v10 = a2;
    _DLLog();
  }

  if (*(v5 + 48) == kCFBooleanTrue)
  {
    if (j__DLDeleteDeviceLinkConnection(a1, &cf))
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  else
  {
    if (dword_10000C0D0 == 1)
    {
      v6 = DLGetDeviceLinkConnectionInfo();
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
      if (!sub_100003610(MutableCopy, dword_10000C0D0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        [v4 drain];
        exit(0);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    if (DLWaitForConnection() && DLShouldLog())
    {
      _DLLog();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  sub_100003904(v5);
  sub_100003D84();
  byte_10000C329 = 0;
  SBSSetStatusBarShowsSyncActivity();
  return [v4 drain];
}

id sub_100001370(uint64_t a1)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  return sub_100001134(a1, @"Lost connection");
}

uint64_t sub_1000013D8()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

uint64_t sub_100001430()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

id sub_100001488(uint64_t a1, const void *a2, NSDictionary *a3, CFBooleanRef a4, uint64_t a5)
{
  v10 = objc_alloc_init(NSAutoreleasePool);
  v46[0] = 0;
  DLGetDeviceLinkConnectionContext();
  if (!a3)
  {
    a3 = +[NSDictionary dictionary];
  }

  Count = CFDictionaryGetCount(a3);
  if (DLShouldLog())
  {
    v12 = "s";
    if (Count == 1)
    {
      v12 = "";
    }

    v43 = a4;
    v44 = a5;
    v40 = a2;
    v41 = Count;
    v42 = v12;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v14 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v14, a2);
    CFArrayAppendValue(Mutable, v14);
    CFRelease(v14);
    CFDictionaryApplyFunction(a3, sub_100003B80, Mutable);
    v15 = &selRef_dictionary;
    if (!qword_10000C338)
    {
      qword_10000C338 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    if (CFArrayGetCount(Mutable) >= 2)
    {
      CFArrayAppendValue(qword_10000C338, Mutable);
    }

    if (kCFBooleanFalse == a4)
    {
      if (qword_10000C338 && CFArrayGetCount(qword_10000C338))
      {
        if (qword_10000C340)
        {
          CFDictionaryAddValue(qword_10000C340, @"data class", a2);
          CFArrayInsertValueAtIndex(qword_10000C338, 0, qword_10000C340);
        }

        v46[1] = 0;
        if (DLShouldLog())
        {
          _DLLog();
        }

        v16 = CFStringCreateWithFormat(0, 0, @"%@/%@", @"/Library/Logs/MobileSync", a2, v42, v43, v44);
        if (DLShouldLog())
        {
          v40 = v16;
          _DLLog();
        }

        v17 = CFStringGetLength(v16) + 24;
        v18 = malloc_type_malloc(v17, 0x74500D01uLL);
        if (v18)
        {
          v19 = v18;
          Length = CFStringGetLength(v16);
          v21 = malloc_type_malloc(Length + 1, 0xF1D3D613uLL);
          v22 = CFStringGetLength(v16);
          if (!CFStringGetCString(v16, v21, v22 + 1, 0x600u) && DLShouldLog())
          {
            _DLLog();
          }

          v45 = v10;
          DLEnsureDirectoryExists();
          if (v16)
          {
            CFRelease(v16);
          }

          v23 = 0;
          memset(&v47, 0, sizeof(v47));
          do
          {
            v24 = v23 + 1;
            snprintf(v19, v17, "%s/%s.%02d.plist", v21, "SyncPlayback", v23);
            v25 = stat(v19, &v47);
            v23 = v24;
          }

          while (!v25);
          v26 = CFStringCreateWithCString(0, v19, 0x600u);
          free(v19);
          v10 = v45;
          v15 = &selRef_dictionary;
        }

        else
        {
          if (v16)
          {
            CFRelease(v16);
          }

          if (DLShouldLog())
          {
            v40 = v17;
            _DLLog();
          }

          v26 = 0;
        }

        v27 = CFStringGetLength(v26);
        v28 = malloc_type_malloc(v27 + 1, 0x1068515uLL);
        v29 = CFStringGetLength(v26);
        if (!CFStringGetCString(v26, v28, v29 + 1, 0x600u) && DLShouldLog())
        {
          _DLLog();
        }

        if (v26)
        {
          CFRelease(v26);
        }

        v30 = strlen(v28);
        v31 = CFURLCreateFromFileSystemRepresentation(0, v28, v30, 0);
        if (!DLWritePropertyListToFile() && DLShouldLog())
        {
          _DLLog();
        }

        if (v31)
        {
          CFRelease(v31);
        }

        free(v28);
      }

      else if (DLShouldLog())
      {
        _DLLog();
      }

      v32 = v15[103];
      if (v32)
      {
        CFRelease(v32);
        v15[103] = 0;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v33 = DataSourceProcessChanges();
  if (v33)
  {
    v36 = v33;
    if (DLShouldLog())
    {
      v40 = v36;
      v41 = v46[0];
      _DLLog();
    }

    if (v46[0])
    {
      CFRelease(v46[0]);
      v46[0] = 0;
    }
  }

  v37 = sub_1000050C4(a1, a2, 0, v46, v34, v35);
  if (v37)
  {
    v38 = v37;
    if (DLShouldLog())
    {
      v40 = v38;
      v41 = v46[0];
      _DLLog();
    }

    if (v46[0])
    {
      CFRelease(v46[0]);
      v46[0] = 0;
    }
  }

  return [v10 drain];
}

id sub_100001A9C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v10 = a2;
    v11 = a3;
    _DLLog();
  }

  sub_100003904(v6);
  v7 = DLWaitForMessage();
  if (v7)
  {
    v8 = v7;
    if (DLShouldLog())
    {
      v10 = v8;
      v11 = 0;
      _DLLog();
    }
  }

  return [v5 drain];
}

id sub_100001B94(uint64_t a1, const __CFString *a2, const void *a3, const void *a4, const __CFNumber *a5, const __CFDictionary *a6)
{
  v10 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v11 = DLGetDeviceLinkConnectionContext();
  if ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
  {
    if (DLShouldLog())
    {
      v33 = a2;
      _DLLog();
    }

    v14 = @"This data class is disabled for tethered syncing on the device.";
LABEL_67:
    v30 = sub_100004F00(a1, a2, v14, &cf, v12, v13);
    if (v30)
    {
      v31 = v30;
      if (DLShouldLog())
      {
        v33 = v31;
        v34 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    return [v10 drain];
  }

  *v11 = CFRetain(a2);
  valuePtr = 0;
  if (a5)
  {
    CFNumberGetValue(a5, kCFNumberIntType, &valuePtr);
  }

  v15 = objc_opt_new();
  if (a6)
  {
    [v15 setValue:CFDictionaryGetValue(a6 forKey:{@"HostVersion", @"hostOS"}];
  }

  [v15 setValue:a2 forKey:@"dataClass"];
  if (AnalyticsSendEventLazy())
  {
    if (!DLShouldLog())
    {
      goto LABEL_14;
    }
  }

  else if (!DLShouldLog())
  {
    goto LABEL_14;
  }

  _DLLog();
LABEL_14:
  v16 = 0;
  if (CFStringCompare(a2, @"com.apple.Calendars", 0) == kCFCompareEqualTo)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = Mutable;
    if (valuePtr <= 109)
    {
      CFDictionarySetValue(Mutable, kShouldSendAllCalendarsOnFastSyncKey, kCFBooleanTrue);
    }

    CFDictionarySetValue(v16, kShouldSyncCalendarColors, kCFBooleanTrue);
    CFDictionarySetValue(v16, kShouldSyncAttendeesAndOrganizers, kCFBooleanTrue);
    CFDictionarySetValue(v16, kIsEventsOnlySource, kCFBooleanTrue);
    CFDictionarySetValue(v16, kIsTetheredSync, kCFBooleanTrue);
  }

  if (CFStringCompare(a2, @"com.apple.Bookmarks", 0))
  {
LABEL_19:
    dataTypeForDataClassName();
    if (GetTetheredSyncingDisabledForDataType() && DLShouldLog())
    {
      v33 = a2;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    DataSourceForDataClassName = CreateDataSourceForDataClassName();
    if (v16)
    {
      CFRelease(v16);
    }

    if (DataSourceForDataClassName)
    {
      if (DLShouldLog())
      {
        v33 = DataSourceForDataClassName;
        v34 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v14 = @"No Data Store available for data class";
      goto LABEL_67;
    }

    Version = DataSourceGetVersion();
    if (Version)
    {
      v27 = Version;
      if (!DLShouldLog())
      {
        goto LABEL_62;
      }

      v33 = v27;
      v34 = cf;
    }

    else
    {
      if (DLShouldLog())
      {
        v33 = a2;
        v34 = a5;
        _DLLog();
      }

      CanSyncWithVersion = DataSourceCanSyncWithVersion();
      if (!CanSyncWithVersion)
      {
        goto LABEL_64;
      }

      v29 = CanSyncWithVersion;
      if (!DLShouldLog())
      {
LABEL_62:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_64:
        if (DLShouldLog())
        {
          v33 = a5;
          v34 = 0;
          _DLLog();
        }

        v14 = @"Your computer's software is out of date. Please update and try again";
        goto LABEL_67;
      }

      v33 = v29;
      v34 = cf;
    }

    _DLLog();
    goto LABEL_62;
  }

  theArray = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @".");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  v21 = CopyExternalSourcesEnabledForDataType();
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (v21 || !theArray)
  {
    if (v21)
    {
      if (DLShouldLog())
      {
        v33 = v21;
        v34 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    goto LABEL_19;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_19;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (DLShouldLog())
  {
    v33 = a2;
    _DLLog();
  }

  v24 = sub_100004F00(a1, a2, @"This data class is disabled for tethered syncing on the device.", &cf, v22, v23);
  if (v24)
  {
    v25 = v24;
    if (DLShouldLog())
    {
      v33 = v25;
      v34 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return [v10 drain];
}

id sub_10000282C(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v20 = a2;
    _DLLog();
  }

  v5 = DataSourceClearAllRecords();
  if (!v5)
  {
    v16 = sub_100004F78(a1, a2, &cf, v6, v7, v8);
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = v16;
    if (!DLShouldLog())
    {
      goto LABEL_18;
    }

    v20 = v17;
    v21 = cf;
    goto LABEL_17;
  }

  v9 = v5;
  if (DLShouldLog())
  {
    v20 = v9;
    v21 = cf;
    _DLLog();
  }

  v12 = sub_1000051B8(a1, a2, @"Couldn't clear changes on device", &cf, v10, v11);
  if (v12)
  {
    v13 = v12;
    if (DLShouldLog())
    {
      v20 = v13;
      v21 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v14 = DLWaitForMessage();
  if (v14)
  {
    v15 = v14;
    if (!DLShouldLog())
    {
      goto LABEL_18;
    }

    v20 = v15;
    v21 = cf;
LABEL_17:
    _DLLog();
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

LABEL_20:
  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeReset");
  }

  return [v4 drain];
}

id sub_100002A64(_DWORD *a1, CFIndex a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v13 = a2;
    _DLLog();
  }

  *(v5 + 24) = kCFBooleanFalse;
  *(v5 + 32) = kCFBooleanFalse;
  v6 = (v5 + 24);
  Changes = DataSourceGetChanges();
  if (Changes)
  {
    v8 = Changes;
    if (DLShouldLog())
    {
      v13 = v8;
      v14 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v9 = sub_100004FF4(a1, a2, 0, *v6, 0, &cf);
  if (v9)
  {
    v10 = v9;
    if (DLShouldLog())
    {
      v13 = v10;
      v14 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (DLShouldLog())
  {
    v13 = 0;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeFast");
  }

  return [v4 drain];
}

id sub_100002C6C(_DWORD *a1, CFIndex a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v13 = a2;
    _DLLog();
  }

  *(v5 + 24) = kCFBooleanFalse;
  v6 = (v5 + 24);
  v6[1] = kCFBooleanTrue;
  AllRecords = DataSourceGetAllRecords();
  if (AllRecords)
  {
    v8 = AllRecords;
    if (DLShouldLog())
    {
      v13 = v8;
      v14 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v9 = sub_100004FF4(a1, a2, 0, *v6, 0, &cf);
  if (v9)
  {
    v10 = v9;
    if (DLShouldLog())
    {
      v13 = v10;
      v14 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (DLShouldLog())
  {
    v13 = 0;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeSlow");
  }

  return [v4 drain];
}

id sub_100002E84(_DWORD *a1, CFIndex a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v13 = a2;
    _DLLog();
  }

  v9 = *(v5 + 24);
  if (v9 == kCFBooleanTrue)
  {
    if (*(v5 + 32) == v9)
    {
      sub_100002C6C(a1, a2);
    }

    else
    {
      sub_100002A64(a1, a2);
    }
  }

  else
  {
    v10 = sub_100005048(a1, a2, &cf, v6, v7, v8);
    if (v10)
    {
      v11 = v10;
      if (DLShouldLog())
      {
        v13 = v11;
        v14 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  return [v4 drain];
}

id sub_100002FA8(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  *(v5 + 40) = kCFBooleanTrue;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (!DataSourceCommit())
  {
    if (!sub_10000513C(a1, a2, &cf, v6, v7, v8))
    {
      goto LABEL_29;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_25;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v11 = sub_1000051B8(a1, a2, @"Couldn't commit changes on device", &cf, v9, v10);
  if (v11)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (DLWaitForMessage())
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v11)
  {
LABEL_25:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

LABEL_29:
  sub_100003904(v5);
  return [v4 drain];
}

void sub_100003224(uint64_t a1, const char *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  observer = 0;
  cf = 0;
  v11 = malloc_type_calloc(0x48uLL, 1uLL, 0x28307D0EuLL);
  *v11 = 0;
  v11[1] = 0;
  v11[3] = kCFBooleanFalse;
  v11[4] = kCFBooleanFalse;
  v11[5] = kCFBooleanFalse;
  v11[6] = kCFBooleanFalse;
  v11[7] = kCFBooleanFalse;
  *(v11 + 16) = -1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v13 = CFStringCreateWithCString(0, a2, 0x600u);
    CFDictionarySetValue(Mutable, @"DLInfoHostnameKey", v13);
    CFRelease(v13);
  }

  if (a4)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    byte_10000C328 = 1;
  }

  if (sub_100003610(Mutable, v6))
  {
    v14 = DLShouldLog();
    if (a2)
    {
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!v14)
    {
      goto LABEL_19;
    }

    _DLLog();
LABEL_19:
    if (sub_1000046F4(a5, off_10000C038, v11, &observer, &cf))
    {
      if (!DLShouldLog())
      {
LABEL_22:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

LABEL_21:
      _DLLog();
      goto LABEL_22;
    }

    if (a3)
    {
      v11[6] = kCFBooleanTrue;
    }

    if (a2)
    {
      if (DLConnect())
      {
        if (!DLShouldLog())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (DLDeviceReady())
      {
        if (!DLShouldLog())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v11[7] = kCFBooleanTrue;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncStarted", 0, 0, 0);
    }

    else if (DLWaitForConnection())
    {
      if (!DLShouldLog())
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v16, observer, sub_1000037C4, @"com.apple.SyncAgent.cancel", 0, 0);
    sub_100003D84();
    CFRunLoopRun();
    CFRelease(Mutable);
    sub_100003904(v11);
    free(v11);
    return;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t sub_100003610(__CFDictionary *a1, int a2)
{
  dword_10000C0D0 = a2;
  sub_100003C44();
  if (a2 == 2)
  {
    CFDictionarySetValue(a1, @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
    valuePtr = 6666;
    if (DLShouldLog())
    {
      _DLLog();
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a1, @"DLInfoPortKey", v5);
LABEL_16:
    CFRelease(v5);
    return 1;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return 0;
    }

    if (DLLockdownXPCCheckin())
    {
      result = DLShouldLog();
      if (!result)
      {
        return result;
      }

      _DLLog();
      return 0;
    }

    return 1;
  }

  CFDictionarySetValue(a1, @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
  result = DLGetListenerSocketFromLaunchd();
  valuePtr = result;
  if (!result)
  {
    return result;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, @"DLInfoSocketKey", v5);
  if (v5)
  {
    goto LABEL_16;
  }

  return 1;
}

id sub_1000037C4(uint64_t a1, uint64_t a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLKillConnection() && DLShouldLog())
  {
    _DLLog();
  }

  return sub_100001134(a2, @"Cancel Sync Notification");
}

uint64_t sub_100003870()
{
  SBSSetStatusBarShowsSyncActivity();
  byte_10000C329 = 1;
  result = qword_10000C330;
  if (qword_10000C330)
  {
    CFRunLoopTimerInvalidate(qword_10000C330);
    CFRelease(qword_10000C330);
    qword_10000C330 = 0;
    result = DLShouldLog();
    if (result)
    {

      return _DLLog();
    }
  }

  return result;
}

void sub_100003904(uint64_t a1)
{
  if (*(a1 + 56) == kCFBooleanTrue)
  {
    *(a1 + 56) = kCFBooleanFalse;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncEnded", 0, 0, 0);
  }

  v3 = *(a1 + 64);
  if (v3 != -1)
  {
    if (flock(v3, 8) == -1 && DLShouldLog())
    {
      __error();
      v4 = __error();
      strerror(*v4);
      _DLLog();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    close(*(a1 + 64));
    *(a1 + 64) = -1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  if (*(a1 + 16))
  {
    if (*(a1 + 40) == kCFBooleanFalse)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (DataSourceRollback() && DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      *(a1 + 40) = kCFBooleanFalse;
    }

    if (DataSourceDeleteDataSource() && DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 16) = 0;
  }

  if (*(a1 + 8))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_100003B80(const void *a1, CFTypeRef cf, __CFArray *a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(cf);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count + 1, cf);
    CFDictionarySetValue(MutableCopy, @"SyncAgent_RecordID", a1);
    CFArrayAppendValue(a3, MutableCopy);

    CFRelease(MutableCopy);
  }

  else
  {

    CFArrayAppendValue(a3, cf);
  }
}

uint64_t sub_100003C44()
{
  result = qword_10000C0D8;
  if (qword_10000C0D8 == -1)
  {
    if (byte_10000C328 == 1)
    {
      result = 0;
      qword_10000C0D8 = 0;
      return result;
    }

    qword_10000C0D8 = 600;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"InactivityTimeout", @"com.apple.SyncAgent", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat != 1 || (v2 = AppIntegerValue, AppIntegerValue < 0))
    {
      v4 = qword_10000C0D8;
      v5 = DLShouldLog();
      if (v4)
      {
        if (v5)
        {
          goto LABEL_15;
        }
      }

      else if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      qword_10000C0D8 = AppIntegerValue;
      v3 = DLShouldLog();
      if (v2)
      {
        if (v3)
        {
          goto LABEL_15;
        }
      }

      else if (v3)
      {
LABEL_15:
        _DLLog();
      }
    }

    return qword_10000C0D8;
  }

  return result;
}

void sub_100003D84()
{
  v0 = sub_100003C44();
  if (v0)
  {
    if (dword_10000C0D0 == 1)
    {
      if (DLShouldLog())
      {

        _DLLog();
      }
    }

    else
    {
      v1 = v0;
      Current = CFAbsoluteTimeGetCurrent();
      qword_10000C330 = CFRunLoopTimerCreate(0, Current + v1, 0.0, 0, 0, sub_100003E6C, 0);
      v3 = CFRunLoopGetCurrent();
      v4 = qword_10000C330;

      CFRunLoopAddTimer(v3, v4, kCFRunLoopCommonModes);
    }
  }
}

void sub_100003E6C(uint64_t a1)
{
  if (byte_10000C329 == 1 && DLShouldLog())
  {
    _DLLog();
  }

  if (qword_10000C330 != a1 && DLShouldLog())
  {
    _DLLog();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SyncAgent.inactivityTimeout", 0, 0, 0);
  exit(0);
}

uint64_t start(int a1, const char **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  DLSetLogDirectoryName();
  if (a1 < 2)
  {
    DLSetOutputLevel();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
    v9 = 1;
LABEL_3:
    sub_100003224(*a2, v6, v5, v7, v9, v8);
    goto LABEL_79;
  }

  v19 = v4;
  v20 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v23 = 0;
  v10 = 0;
  v21 = 0;
  v25 = 0;
  v11 = 0;
  v5 = 0;
  v22 = 1;
  v8 = 2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v12 = getopt_long(a1, a2, "b:c:def:hkl:Lm:noprs:S:t:vX:Y:", &off_10000C0E0, 0);
          if (v12 <= 108)
          {
            break;
          }

          if (v12 <= 113)
          {
            switch(v12)
            {
              case 'm':
                v10 = 1;
                if (optarg)
                {
                  v21 = sub_10000465C(optarg);
                }

                break;
              case 'n':
                v24 = 1;
                break;
              case 'o':
LABEL_23:
                v11 = 1;
                v5 = 1;
                break;
              default:
                goto LABEL_48;
            }
          }

          else if (v12 > 115)
          {
            if (v12 != 116)
            {
              if (v12 != 118)
              {
                goto LABEL_48;
              }

              LODWORD(v27) = 1;
              goto LABEL_32;
            }
          }

          else
          {
            if (v12 != 114)
            {
              v23 = optarg;
              goto LABEL_23;
            }

LABEL_32:
            v11 = 1;
          }
        }

        if (v12 <= 75)
        {
          break;
        }

        if (v12 <= 87)
        {
          switch(v12)
          {
            case 'L':
              v8 = 1;
              break;
            case 'S':
              v13 = CFStringCreateWithCString(0, optarg, 0x8000100u);
              CopyExternalSourcesEnabledForDataType();
              CFPrintf();
              CopyAccountNamesEnabledForDataType();
              v17 = v13;
              v18 = 0;
              CFPrintf();
              if (v13)
              {
                CFRelease(v13);
              }

              break;
            case 'T':
              SetTetheredSyncingDisabledForDatatype();
              goto LABEL_85;
            default:
              goto LABEL_48;
          }
        }

        else if (v12 > 106)
        {
          if (v12 != 107)
          {
            goto LABEL_48;
          }

          v8 = 0;
          v5 = 1;
        }

        else
        {
          switch(v12)
          {
            case 'd':
              v22 = 0;
              break;
            case 'X':
              SetExternalSourceEnabledForDataType();
              SetAccountNameEnabledForDataType();
              goto LABEL_85;
            case 'c':
              v16 = CFStringCreateWithCString(0, optarg, 0x8000100u);
              dataClassNameForDataType();
              CreateDataSourceForDataClassName();
              DataSourceGetCountOfRecords();
              CFPrintf();
              if (v16)
              {
                CFRelease(v16);
              }

LABEL_85:
              exit(0);
            default:
LABEL_48:
              v26 = 1;
              break;
          }
        }
      }

      if (v12 <= 67)
      {
        break;
      }

      if (v12 == 68)
      {
        CFStringCreateWithCString(0, optarg, 0x8000100u);
      }

      else
      {
        if (v12 != 75)
        {
          goto LABEL_48;
        }

        HIDWORD(v27) = 1;
        if (optarg)
        {
          v20 = sub_10000465C(optarg);
          HIDWORD(v27) = 1;
        }
      }
    }

    if (v12 != 67)
    {
      break;
    }

    v25 = CFStringCreateWithCString(0, optarg, 0x8000100u);
  }

  if (v12 != -1)
  {
    goto LABEL_48;
  }

  if (!v27)
  {
    DLSetOutputLevel();
  }

  if (v26)
  {
    printf("Usage:\n%s --run [--oneshot]\n%s --sync hostname\n%s --playback filename\n", *a2, *a2, *a2);
    v4 = v19;
    goto LABEL_79;
  }

  if (v10)
  {
    v14 = v21;
    if (v21)
    {
      v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{kCFBooleanTrue, v21, 0}];
    }

    v4 = v19;
    if (CreateDataSourceForDataClassName())
    {
      NSLog(@"Couldn't create a data source with the name %@: %@", v25, 0);
    }

    if (CreateDataSourceForDataClassName())
    {
      NSLog(@"Couldn't create a data source with the name %@: %@", v25, 0);
    }

    if (DataSourceMigrateRecords())
    {
      NSLog(@"Couldn't migrate records: %@", 0);
    }

    if (DataSourceDeleteDataSource())
    {
      NSLog(@"Couldn't delete the source data source: %@", 0);
    }

    if (DataSourceDeleteDataSource())
    {
      NSLog(@"Couldn't delete the destination data source: %@", 0, v18);
    }

    goto LABEL_77;
  }

  v4 = v19;
  if (!HIDWORD(v27))
  {
    v7 = v24;
    v6 = v23;
    v9 = v22;
    if (!v11)
    {
      goto LABEL_79;
    }

    goto LABEL_3;
  }

  v14 = v20;
  if (v20)
  {
    v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{kCFBooleanTrue, v20, 0}];
  }

  if (CreateDataSourceForDataClassName())
  {
    NSLog(@"Couldn't create a data source with the name %@: %@", v25, 0);
  }

  if (DataSourceClearAllRecords())
  {
    NSLog(@"Couldn't clear all records in the data source: %@", 0);
  }

  if (DataSourceCommit())
  {
    NSLog(@"Couldn't commit the data source: %@", 0);
  }

  if (DataSourceDeleteDataSource())
  {
    NSLog(@"Couldn't delete the data source: %@", 0, v18);
  }

LABEL_77:
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_79:
  [v4 drain];
  return 0;
}

const __CFString *sub_10000465C(const char *a1)
{
  if (strncasecmp(a1, "event", 5uLL))
  {
    return @"IsEventsOnly";
  }

  if (!strncasecmp(a1, "todo", 4uLL) && !strncasecmp(a1, "task", 4uLL) && !strncasecmp(a1, "reminder", 8uLL))
  {
    return 0;
  }

  return @"IsRemindersOnly";
}

uint64_t sub_1000046F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2 + 88;
  v11 = malloc_type_calloc(0x18uLL, 1uLL, 0x20040960023A9uLL);
  *v11 = v10;
  v11[1] = a2;
  v12 = dword_10000C320;

  return __DLCreateDeviceLinkConnectionForDevice(a1, a2, a3, v11, a4, sub_100004798, v12, a5);
}

uint64_t sub_100004798(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 16);
  Count = CFArrayGetCount(theArray);
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    if (!DLShouldLog())
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    _DLLog();
    return 0xFFFFFFFFLL;
  }

  v7 = ValueAtIndex;
  if (CFStringCompare(ValueAtIndex, @"SDMessageSyncDataClassWithDevice", 0))
  {
    if (CFStringCompare(v7, @"SDMessageSyncDataClassWithComputer", 0))
    {
      if (CFStringCompare(v7, @"SDMessageRefuseToSyncDataClassWithComputer", 0))
      {
        if (CFStringCompare(v7, @"SDMessageClearAllRecordsOnDevice", 0))
        {
          if (CFStringCompare(v7, @"SDMessageDeviceWillClearAllRecords", 0))
          {
            if (CFStringCompare(v7, @"SDMessageGetChangesFromDevice", 0) == kCFCompareEqualTo)
            {
              if (Count < 2)
              {
                v27 = 0;
              }

              else
              {
                v27 = _DLGetParameterAtIndex();
              }

              (*(v4[1] + 120))(a1, v27);
              return 0;
            }

            if (CFStringCompare(v7, @"SDMessageGetAllRecordsFromDevice", 0))
            {
              if (CFStringCompare(v7, @"SDMessageProcessChanges", 0))
              {
                if (CFStringCompare(v7, @"SDMessageAcknowledgeChangesFromDevice", 0))
                {
                  if (CFStringCompare(v7, @"SDMessageDeviceReadyToReceiveChanges", 0))
                  {
                    if (CFStringCompare(v7, @"SDMessageRemapRecordIdentifiers", 0))
                    {
                      if (CFStringCompare(v7, @"SDMessageFinishSessionOnDevice", 0) == kCFCompareEqualTo)
                      {
                        if (Count < 2)
                        {
                          v38 = 0;
                        }

                        else
                        {
                          v38 = _DLGetParameterAtIndex();
                        }

                        (*(v4[1] + 144))(a1, v38);
                        return 0;
                      }

                      if (CFStringCompare(v7, @"SDMessageDeviceFinishedSession", 0))
                      {
                        if (CFStringCompare(v7, @"SDMessageCancelSession", 0) == kCFCompareEqualTo)
                        {
                          if (Count < 2)
                          {
                            v8 = 0;
                          }

                          else
                          {
                            v8 = _DLGetParameterAtIndex();
                            if (Count != 2)
                            {
                              v9 = _DLGetParameterAtIndex();
LABEL_115:
                              (*(*v4 + 8))(a1, v8, v9);
                              return 0;
                            }
                          }

                          v9 = 0;
                          goto LABEL_115;
                        }

                        return 0xFFFFFFFFLL;
                      }

                      if (Count < 2)
                      {
                        v26 = 0;
                      }

                      else
                      {
                        v26 = _DLGetParameterAtIndex();
                      }

                      v39 = v4[2];
                      if (!v39 || (v33 = *(v39 + 152)) == 0)
                      {
                        if (!DLShouldLog())
                        {
                          return 0xFFFFFFFFLL;
                        }

                        goto LABEL_20;
                      }

                      goto LABEL_80;
                    }

                    if (Count < 2)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v36 = _DLGetParameterAtIndex();
                      if (Count != 2)
                      {
                        v37 = _DLGetParameterAtIndex();
LABEL_103:
                        (*(v4[2] + 144))(a1, v36, v37);
                        return 0;
                      }
                    }

                    v37 = 0;
                    goto LABEL_103;
                  }

                  if (Count < 2)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = _DLGetParameterAtIndex();
                  }

                  v35 = v4[2];
                }

                else
                {
                  if (Count < 2)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = _DLGetParameterAtIndex();
                  }

                  v35 = v4[1];
                }

                (*(v35 + 136))(a1, v34);
                return 0;
              }

              v29 = kCFBooleanFalse;
              if (Count < 2)
              {
                v30 = 0;
              }

              else
              {
                v30 = _DLGetParameterAtIndex();
                if (Count != 2)
                {
                  v31 = _DLGetParameterAtIndex();
                  if (Count >= 4)
                  {
                    v29 = _DLGetParameterAtIndexWithDefaultValue();
                    if (Count != 4)
                    {
                      v32 = _DLGetParameterAtIndex();
LABEL_88:
                      (**v4)(a1, v30, v31, v29, v32);
                      return 0;
                    }
                  }

LABEL_87:
                  v32 = 0;
                  goto LABEL_88;
                }
              }

              v31 = 0;
              goto LABEL_87;
            }

            if (Count < 2)
            {
              v26 = 0;
            }

            else
            {
              v26 = _DLGetParameterAtIndex();
            }

            v28 = v4[1];
          }

          else
          {
            if (Count < 2)
            {
              v26 = 0;
            }

            else
            {
              v26 = _DLGetParameterAtIndex();
            }

            v28 = v4[2];
          }

          v33 = *(v28 + 128);
LABEL_80:
          v33(a1, v26);
          return 0;
        }

        if (Count < 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = _DLGetParameterAtIndex();
          if (Count != 2)
          {
            v25 = _DLGetParameterAtIndex();
LABEL_57:
            (*(v4[1] + 112))(a1, v24, v25);
            return 0;
          }
        }

        v25 = 0;
        goto LABEL_57;
      }

      if (Count < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = _DLGetParameterAtIndex();
        if (Count != 2)
        {
          v20 = _DLGetParameterAtIndex();
LABEL_48:
          (*(v4[2] + 120))(a1, v19, v20);
          return 0;
        }
      }

      v20 = 0;
      goto LABEL_48;
    }

    if (Count < 2)
    {
      v15 = 0;
      v16 = 0;
      v14 = 0;
    }

    else
    {
      v14 = _DLGetParameterAtIndex();
      if (Count != 2)
      {
        v21 = _DLGetParameterAtIndex();
        if (Count < 4)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v16 = _DLGetParameterAtIndex();
          if (Count != 4)
          {
            v22 = _DLGetParameterAtIndex();
            if (Count < 6)
            {
              v15 = 0;
            }

            else
            {
              v15 = _DLGetParameterAtIndex();
              if (Count != 6)
              {
                v23 = _DLGetParameterAtIndex();
                goto LABEL_39;
              }
            }

LABEL_38:
            v23 = 0;
LABEL_39:
            (*(v4[2] + 112))(a1, v14, v21, v16, v22, v15, v23);
            return 0;
          }

          v15 = 0;
        }

LABEL_37:
        v22 = 0;
        goto LABEL_38;
      }

      v15 = 0;
      v16 = 0;
    }

    v21 = 0;
    goto LABEL_37;
  }

  if (Count < 2)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  v11 = _DLGetParameterAtIndex();
  if (Count == 2)
  {
    v12 = 0;
    v13 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  v13 = _DLGetParameterAtIndex();
  if (Count < 4)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v17 = _DLGetParameterAtIndex();
  if (Count == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = _DLGetParameterAtIndex();
    if (Count >= 6)
    {
      v18 = _DLGetParameterAtIndex();
      goto LABEL_31;
    }
  }

LABEL_30:
  v18 = 0;
LABEL_31:
  (*(v4[1] + 104))(a1, v11, v13, v17, v12, v18);
  return 0;
}

uint64_t sub_100004E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 7;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a8, @"SDSyncDataClassWithComputer: Computer cannot call this method");
  }
}

uint64_t sub_100004F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 8;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a4, @"SDRefuseToSyncDataClassWithComputer: Computer cannot call this method");
  }
}

uint64_t sub_100004F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 10;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceWillClearAllRecords: Computer cannot call this method");
  }
}

uint64_t sub_100004FF4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _DLRequestWrite();
  _DLRequestRead();
  *a1 = 13;
  return 0;
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 15;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceWillClearAllRecords: Computer cannot call this method");
  }
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 16;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a4, @"SDRemapRecordIdentifiers: Computer cannot call this method");
  }
}

uint64_t sub_10000513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 18;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceFinishedSession: Computer cannot call this method");
  }
}

uint64_t sub_1000051B8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _DLRequestWrite();
  *a1 = 19;
  return 0;
}