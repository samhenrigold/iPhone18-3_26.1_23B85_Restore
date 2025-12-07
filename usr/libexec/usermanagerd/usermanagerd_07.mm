void sub_100077974(id a1)
{
  qword_1000EB480 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id *sub_100077A54(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UMDVolumeHelper;
    v5 = objc_msgSendSuper2(&v7, "init");
    if (!v5)
    {
      sub_100088DDC();
    }

    a1 = v5;

    objc_storeStrong(a1 + 2, a2);
  }

  return a1;
}

void sub_100078310(id a1)
{
  qword_1000EB490 = os_log_create(off_1000EA598, "volume");

  _objc_release_x1();
}

void sub_1000783F8(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000EB4A0;
  qword_1000EB4A0 = v1;

  if (qword_1000EB4A0)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.keybagd.UserManager.xpc"];
    [qword_1000EB4A0 setXpcListener:v3];

    v4 = [qword_1000EB4A0 xpcListener];
    v5 = [v4 _xpcConnection];
    __xpc_connection_set_logging();

    v6 = qword_1000EB4A0;
    v7 = [qword_1000EB4A0 xpcListener];
    [v7 setDelegate:v6];
  }
}

void sub_1000789C0(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078A18(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078A70(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078AC8(uint64_t a1)
{
  v2 = +[RDServer sharedServer];
  [v2 removeClient:*(a1 + 32)];
}

void sub_100078B40()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[RDXPCListener sharedListener];
  [v1 startListening];

  objc_autoreleasePoolPop(v0);
}

id sub_100078C2C()
{
  v0 = objc_opt_new();
  v1 = qword_1000EB4B8;
  qword_1000EB4B8 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.usermanagerd.xpc"];
  v3 = qword_1000EB4B0;
  qword_1000EB4B0 = v2;

  v4 = [qword_1000EB4B0 _xpcConnection];
  __xpc_connection_set_logging();

  [qword_1000EB4B0 setDelegate:qword_1000EB4B8];
  v5 = qword_1000EB4B0;

  return [v5 resume];
}

void sub_100078CD0(id a1)
{
  qword_1000EB4C0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_1000793F8(id a1)
{
  qword_1000EB4D0 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

const void *sub_100079440(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_10007947C(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000794B8(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

uint64_t sub_100079524(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

const void *sub_100079590(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

CFTypeRef sub_100079624(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef sub_100079684(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFPropertyListRef sub_10007972C(UInt8 *bytes, CFIndex length)
{
  format = kCFPropertyListBinaryFormat_v1_0;
  v2 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  if (v2)
  {
    v3 = v2;
    if (CFReadStreamOpen(v2))
    {
      v4 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v3, 0, 2uLL, &format, 0);
      if (!v4)
      {
        syslog(7, "Could not create object from stream");
      }

      CFReadStreamClose(v3);
    }

    else
    {
      syslog(7, "Could not open the stream");
      v4 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    syslog(7, "Could not create stream for serialized data");
    return 0;
  }

  return v4;
}

const void *sub_10007980C(const char *a1)
{
  memset(&v8.st_size, 0, 48);
  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    sub_1000988DC(a1);
    v4 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if (fstat(v2, &v8))
  {
    sub_100098828(a1);
    v6 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v4 = malloc_type_malloc(LODWORD(v8.st_size), 0x7C088C14uLL);
  if (!v4)
  {
    sub_1000988B8();
LABEL_12:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = read(v3, v4, v8.st_size);
  if (v5 != v8.st_size)
  {
    sub_100098870(a1);
    goto LABEL_12;
  }

  v6 = sub_100098710(v4, v5);
LABEL_6:
  close(v3);
LABEL_7:
  free(v4);
  return v6;
}

CFMutableDictionaryRef sub_10007990C()
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableDictionaryRef sub_100079960(CFDictionaryRef theDict)
{
  result = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableArrayRef sub_1000799A8()
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFStringRef sub_1000799F4(char *cStr)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

uint64_t sub_100079A40(uint32_t *a1)
{
  multiuser_flags = 0;
  v2 = mach_host_self();
  result = host_get_multiuser_config_flags(v2, &multiuser_flags);
  if (a1)
  {
    if (!result)
    {
      *a1 = multiuser_flags;
    }
  }

  return result;
}

uint64_t sub_100079A88(mach_port_name_t name)
{
  ptype = 0;
  if (mach_port_type(mach_task_self_, name, &ptype))
  {
    return 0;
  }

  else
  {
    return ptype;
  }
}

void sub_100079ACC(mach_port_name_t name)
{
  ptype = 0;
  v2 = mach_port_type(mach_task_self_, name, &ptype);
  v3 = ptype;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = ptype == 0;
  }

  if (v4)
  {
    syslog(7, "Port:%d has NORIGHTS");
    return;
  }

  if ((ptype & 0x10000) != 0)
  {
    syslog(7, "Port:%d has SENDRIGHT", name);
    if ((v3 & 0x20000) == 0)
    {
LABEL_9:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      syslog(7, "Port:%d has SENDONCERIGHT", name);
      if ((v3 & 0x100000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((ptype & 0x20000) == 0)
  {
    goto LABEL_9;
  }

  syslog(7, "Port:%d has RECEIVERIGHT", name);
  if ((v3 & 0x40000) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v3 & 0x100000) != 0)
  {
LABEL_15:
    syslog(7, "Port:%d has DEADNAME");
  }
}

uint64_t sub_100079BA8()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0) || strnstr(__big, "um-migration-debug=0", __len))
  {
    return 0;
  }

  if (strnstr(__big, "um-migration-debug=1", __len))
  {
    return 1;
  }

  if (strnstr(__big, "um-migration-debug=2", __len))
  {
    return 2;
  }

  if (strnstr(__big, "um-migration-debug=3", __len))
  {
    return 3;
  }

  if (strnstr(__big, "um-migration-debug=4", __len))
  {
    return 4;
  }

  if (strnstr(__big, "um-migration-debug=5", __len))
  {
    return 5;
  }

  if (strnstr(__big, "um-migration-debug=100", __len))
  {
    return 100;
  }

  if (strnstr(__big, "um-migration-debug=101", __len))
  {
    return 101;
  }

  return 0;
}

void sub_100079F5C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (qword_1000EB4E8 != -1)
    {
      sub_100098924();
    }

    v6 = qword_1000EB4E0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = *(a1 + 32);
        v15 = 138543362;
        v16 = v9;
        v10 = _os_log_send_and_compose_impl(v8, &v14, 0, 0, &_mh_execute_header, v6, 0, "_SecKeychainDeleteMultiUser Completion: Deleted keychain items for persona %{public}@", &v15, 12);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB4E8 != -1)
    {
      sub_100098924();
    }

    v6 = qword_1000EB4E0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v15 = 138543362;
        v16 = v5;
        v10 = _os_log_send_and_compose_impl(v12, &v14, 0, 0, &_mh_execute_header, v6, 16, "_SecKeychainDeleteMultiUser Completed: Failed to delete persona keychain items: %{public}@", &v15, 12);
LABEL_18:
        v13 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_21;
      }

LABEL_20:
      v13 = 0;
LABEL_21:
      free(v13);
    }
  }
}

void sub_10007A138(id a1)
{
  qword_1000EB4E0 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_10007A180(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 name];
  v4 = [v2 uid];
  v5 = [v2 uuid];
  v6 = [v2 primaryGroupUUID];
  v7 = [v2 fullName];
  v8 = [v2 homeDirectory];
  v9 = [v2 shell];
  v10 = [v2 memberships];

  v11 = sub_1000746C0(UMDarwinDirectoryUser, v3, v4, v5, v6, v7, v8, v9, v10);

  return v11;
}

id sub_10007A2C0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 name];
  v4 = [v2 gid];
  v5 = [v2 uuid];
  v6 = [v2 fullName];

  v7 = sub_100074B58(UMDarwinDirectoryGroup, v3, v4, v5, v6);

  return v7;
}

void sub_10007A414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      v13 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = sub_10007A180(UMDarwinDirectoryUser, *(*(&v45 + 1) + 8 * v13));
        [v7 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v11);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      v19 = 0;
      do
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = sub_10007A2C0(UMDarwinDirectoryGroup, *(*(&v41 + 1) + 8 * v19));
        [v8 addObject:v20];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 32) + 16))();
  [v9 removeAllObjects];
  [v15 removeAllObjects];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      v25 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = sub_100098960(*(*(&v37 + 1) + 8 * v25));
        [v9 addObject:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v23);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = v8;
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = sub_100098A8C(*(*(&v33 + 1) + 8 * v31));
        [v15 addObject:{v32, v33}];

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v29);
  }
}

void sub_10007A95C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = sub_10007A180(UMDarwinDirectoryUser, *(*(&v47 + 1) + 8 * v14));
        [v8 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = sub_10007A2C0(UMDarwinDirectoryGroup, *(*(&v43 + 1) + 8 * v20));
        [v9 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  (*(*(a1 + 32) + 16))();
  if (!*a4)
  {
    [v10 removeAllObjects];
    [v16 removeAllObjects];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        v26 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = sub_100098960(*(*(&v39 + 1) + 8 * v26));
          [v10 addObject:v27];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v24);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v9;
    v29 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        v32 = 0;
        do
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = sub_100098A8C(*(*(&v35 + 1) + 8 * v32));
          [v16 addObject:v33];

          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v30);
    }
  }
}

void sub_10007ACE4(id a1)
{
  qword_1000EB4F0 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_10007AFCC(id a1)
{
  qword_1000EB500 = os_log_create(off_1000EA598, "default");

  _objc_release_x1();
}

uint64_t sub_10007B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, 0, 0, a5, v8, 16, a8);
}

BOOL sub_10007B050()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10007B07C(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_1000EB510 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_1000EB510, 0, qword_1000EB518, qword_1000EB520, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_1000EB510 - a3;
    if (qword_1000EB510 < a3)
    {
      v6 = 0;
    }

    qword_1000EB510 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_1000EB510, 0, qword_1000EB518, qword_1000EB520, v9, a5, v7);
  }

  return result;
}

uint64_t sub_10007B210(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = sub_10007BD10(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = sub_10007BD10(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t sub_10007B880(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    sub_10007C078();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    sub_10007C04C();
  }

  return qword_1000B8388[v2];
}

uint64_t sub_10007B9A4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return sub_10007BBD4(v4, v3, v2, &a2);
}

uint64_t sub_10007B9C8()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t sub_10007B9E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t sub_10007B9F4(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

uint64_t sub_10007BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = *v9 - v12;
  v16 = *(v14 + 8 * v13);

  return SerializeRequirement(v11, v16, v10 + v12, &a9);
}

__n128 sub_10007BA78(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 sub_10007BA98@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t sub_10007BBD4(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = sub_10007BFB4(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t sub_10007BD10(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_opt_inst_meths = &OBJC_PROTOCOL___RDServer.opt_inst_meths;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = sub_10007BFB4(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_opt_inst_meths = (&OBJC_PROTOCOL___RDServer + 40);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_opt_inst_meths = (&OBJC_PROTOCOL___RDServer + 40);
LABEL_24:
  if (v11 >= *(p_opt_inst_meths + 2304))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t sub_10007BFB4(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007C0E8(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void sub_10007C1AC(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t sub_10007C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t sub_10007C23C(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = qword_1000EB528;
  if (qword_1000EB528)
  {
    v3 = 0;
  }

  else
  {
    qword_1000EB528 = ccrng();
    v3 = sub_10007C0E8(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = qword_1000EB528;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    sub_10007C0E8(v8, "platform_rng");
    sub_100001914();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void sub_10007C388()
{
  sub_100001A8C();
  sub_100001860();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v6 = __chkstk_darwin(v5);
  sub_10007C1AC(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0 || (sub_10007C1A0(), v15 = ccgcm_init(), !sub_10007C0E8(v15, "ccgcm_init")) && !sub_10007C23C(v3, 16) && (sub_10007C178(), v16 = ccgcm_set_iv(), !sub_10007C0E8(v16, "ccgcm_set_iv")) && (sub_10007C1A0(), v17 = ccgcm_update(), !sub_10007C0E8(v17, "ccgcm_update")) && (sub_10007C178(), v18 = ccgcm_finalize(), !sub_10007C0E8(v18, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v19)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  sub_1000016B0();
}

void sub_10007C548()
{
  sub_100001A8C();
  sub_100001860();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v6 = __chkstk_darwin(v5);
  sub_10007C1AC(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0 || (sub_10007C1A0(), v15 = ccgcm_init(), !sub_10007C0E8(v15, "ccgcm_init")) && (*v3 = 2, v16 = (v3 + 1), sub_100001920(), !v17) && !sub_10007C23C(v16, 16) && (sub_10007C178(), v18 = ccgcm_set_iv(), !sub_10007C0E8(v18, "ccgcm_set_iv")) && (v19 = v16 + 16, sub_100001920(), !v20) && (sub_10007C1A0(), v21 = ccgcm_update(), !sub_10007C0E8(v21, "ccgcm_update")) && !__CFADD__(v19, v1) && (sub_10007C178(), v22 = ccgcm_finalize(), !sub_10007C0E8(v22, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v23)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  sub_1000016B0();
}

void sub_10007C738()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v11 = __chkstk_darwin(v10);
  sub_10007C1AC(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20 || (sub_10007C1A0(), v21 = ccgcm_init(), !sub_10007C0E8(v21, "ccgcm_init")) && (sub_10007C178(), v22 = ccgcm_set_iv(), !sub_10007C0E8(v22, "ccgcm_set_iv")) && (sub_10007C1A0(), v23 = ccgcm_update(), !sub_10007C0E8(v23, "ccgcm_update")) && (sub_10007C178(), ccgcm_finalize(), v24 = cc_cmp_safe(), !sub_10007C0E8(v24, "cc_cmp_safe")))
              {
                *v1 = v20;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v19)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  sub_1000016B0();
}

void sub_10007C914()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_10007C20C();
  v11 = __chkstk_darwin(v10);
  sub_10007C1AC(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19 || (sub_100001920(), !v20) && *v7 == 2 && (sub_10007C1A0(), v21 = ccgcm_init(), !sub_10007C0E8(v21, "ccgcm_init")) && (sub_10007C178(), v22 = ccgcm_set_iv(), !sub_10007C0E8(v22, "ccgcm_set_iv")) && (sub_100001920(), !v23) && (sub_10007C1A0(), v24 = ccgcm_update(), !sub_10007C0E8(v24, "ccgcm_update")) && !__CFADD__(v7 + 17, v19) && (sub_10007C178(), ccgcm_finalize(), v25 = cc_cmp_safe(), !sub_10007C0E8(v25, "cc_cmp_safe")))
              {
                *v1 = v19;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  sub_100002370();
  if (v26)
  {
    sub_10007C230();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

uint64_t sub_10007D148(uint64_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    sub_10007D5D4();
  }

  if (!a3 && a4)
  {
    sub_10007D5A8();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *result, unsigned int a2)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v4 = result + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", result, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(result, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_100080A44, &v8, a1, a2, &byte_1000EA901, 1);
  if (v4)
  {
    sub_1000806C0();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_1000EA901 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(sub_100080A44, &v8, a1, a2, &byte_1000EA901, 1);
  if (v4)
  {
    if (byte_1000EA901 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    sub_1000806C0();
    v6 = 70;
  }

  if (v6 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = byte_1000EA901;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_1000EA901;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (v2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_100080A44, &v10, a1, v2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_100080C08() && !sub_100080DBC(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_1000810AC(a2);
LABEL_9:
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, uint64_t a2)
{
  v2 = a2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, v2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(sub_100080A44, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(sub_100080A44, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(sub_100080A44, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  __n = 4096;
  size = 0;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = sub_100080C08();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = sub_100080DBC(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(sub_100080A44, &v4, a1, a2);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMSetEnvironmentVariable";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v5 = v4;
  if (v4)
  {
    v6 = 70;
  }

  else
  {
    v6 = 10;
  }

  if (v6 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMSetEnvironmentVariable";
    v12 = 2048;
    v13 = v5;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v5;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v8 = v7;
  if (v7)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v8;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(sub_100080A44, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(sub_100080A44);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(sub_100080A44, &v6, v5, v4, a3);
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(sub_100080A44, &v9, a1, v6, v5, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(sub_100080A44, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v13 = 0;
  v10 = LibCall_ACMContextCopyData(sub_100080A44, &v13, a1, a2, a3, a4);
  if (v10)
  {
    v11 = 70;
  }

  else
  {
    v11 = 10;
  }

  if (v11 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v10;
}

uint64_t ACMContextGetInfo(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(sub_100080A44, &v9, a1, v4, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void sub_1000806C0()
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1000EB534, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_1000EA901 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000810D4();
LABEL_12:
    v0 = byte_1000EA901;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_10008092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return sub_100080DBC(a1, a2, 0, v5, a5, 0, 0);
}

uint64_t sub_100080A44(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080920();
    sub_1000019F0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_100080C08();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_100080DBC(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_100080C08()
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100002388();
    sub_1000019F0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_1000EB530)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1000EB534);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_1000EB530 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_100080DBC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v11 = a3;
  v12 = a2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808D4();
    sub_1000808C8();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  inputStructCnt = 0;
  v18 = LibCall_BuildCommand(v12, 0, v11, a4, a5, &inputStructCnt);
  if (v18)
  {
    v19 = v18;
    if (!a6 && a7)
    {
      v21 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v20 = *a7;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      v21 = IOConnectCallStructMethod(dword_1000EB534, 0, v18, inputStructCnt, a6, &v41);
      if (v21)
      {
        if (byte_1000EA901 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_1000808D4();
          sub_1000809C8();
          v46 = v22;
          v47 = v21;
          v48 = v22;
          v49 = v21;
          sub_1000808C8();
          _os_log_impl(v23, v24, v25, v26, v27, 0x2Eu);
        }
      }

      else
      {
        if (byte_1000EA901 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_1000808D4();
          sub_1000809C8();
          sub_1000808C8();
          _os_log_impl(v28, v29, v30, v31, v32, 0x22u);
        }

        v21 = 0;
        if (a7)
        {
          *a7 = v41;
        }
      }
    }

    v33 = inputStructCnt;
    acm_mem_free_info("<data>", v19, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v19, v33);
    if (v21)
    {
      v34 = 70;
    }

    else
    {
      v34 = 10;
    }
  }

  else
  {
    v34 = 70;
    v21 = 4294967291;
  }

  if (v34 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v43 = 136315650;
    v44 = "ACMLib";
    sub_10000192C();
    v45 = "performCommand";
    sub_100080890();
    sub_1000808C8();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
  }

  return v21;
}

void sub_1000810D4()
{
  sub_100080958();
  sub_1000019F0();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, const void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20 = &v20;
    __chkstk_darwin(a1);
    v15 = (&v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      sub_100081EF8();
    }

    v17 = v13(a2, 26, 0, &v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

void sub_100081660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t sub_100081680(uint64_t (*a1)(uint64_t, void, void, const void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        sub_10008154C();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_10008154C();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      sub_10008154C();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        sub_10008154C();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          sub_10008154C();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    sub_100081624();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = sub_100057558();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    sub_100081624();
    goto LABEL_79;
  }

  sub_100081624();
  if (a5 && a13 && a6)
  {
    sub_100081D4C();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void sub_100081D4C()
{
  sub_100001A8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v17[0] = 0;
  v16 = 4;
  v10 = v2;
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  sub_1000814EC();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  sub_1000016B0();
}

uint64_t sub_100081F24()
{
  v0 = ccrng();
  sub_100086D14(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_100086D14(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_100081F94(uint64_t a1, unsigned int a2)
{
  v4 = sub_100087C1C();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_100086D14(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t sub_100081FF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  __chkstk_darwin(v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      sub_1000A3CCC(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_1000EB640, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          sub_10008706C(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_1000A3CCC(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000822F0(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_100081FF0(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100086D14(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_10008235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v40 = a3;
  v46 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin(v14);
  v47 = &v38 - v15;
  bzero(&v38 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  bzero(&v38 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v45 = a6;
  v20 = a6 >> 3;
  if (v20 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v41 = &v38;
  v42 = a8;
  v39 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < v45 - 8)
    {
      sub_1000A3CCC(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v42 >= v45 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v22 = v20 - 1;
    if (v20 != 1)
    {
      v23 = __s + 1;
      v24 = a5 + 1;
      v25 = v20 - 1;
      do
      {
        v26 = *v24++;
        *v23 = v26;
        v23 += 2;
        --v25;
      }

      while (v25);
    }

    v27 = 6 * v20 - 6;
    v44 = 1 - v20;
    v28 = 5;
    v43 = &__s[v20 - 2];
    do
    {
      LODWORD(v46) = v28;
      if (v45 >= 0x10)
      {
        v29 = v43;
        v30 = v20 - 1;
        v31 = v27;
        do
        {
          *v29 = *&__s[v30 % v22] ^ bswap64(v31);
          if (a4)
          {
            if ((a4(0, &unk_1000EB640, v29, v29, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cccbc_clear_iv();
            sub_10008706C(v14, v47, v18, 0x10uLL);
          }

          --v31;
          v29 -= 2;
          v32 = __OFSUB__(v30--, 1);
        }

        while (!((v30 < 0) ^ v32 | (v30 == 0)));
      }

      v28 = v46 - 1;
      v27 += v44;
    }

    while (v46);
    if (*&__s[0] == v40)
    {
      v33 = v39;
      if (v20 != 1)
      {
        v34 = __s + 1;
        v35 = v20 - 1;
        do
        {
          v36 = *v34;
          v34 += 2;
          *v33++ = v36;
          --v35;
        }

        while (v35);
      }

      v19 = 0;
      *v42 = 8 * v22;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_34:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_1000A3CCC(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000826A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_10008235C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100086D14(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_100082710(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_100082724(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_100082738(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100082754()
{
  if (qword_1000EB548 != -1)
  {
    sub_1000A57E0();
  }

  dispatch_sync(qword_1000EB550, &stru_1000DF4D8);
  return dword_1000EB538;
}

uint64_t sub_10008279C(unsigned int a1, const void *a2)
{
  input = a1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x6Cu, &input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  sub_1000A57F4();
  return 3758097084;
}

char *sub_100082834(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_1000A585C(result, a2, a3);
    }
  }

  return result;
}

char *sub_1000828B4(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = sub_1000829CC;
      v6[3] = &unk_1000DF418;
      v7 = a2;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_1000A4114;
      v4[3] = &unk_1000DF438;
      v5 = a2;
      return sub_100082834(v8, v6, v4);
    }
  }

  return result;
}

uint64_t sub_1000829CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A40B8(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || v4 == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), v4);
  }

  return 1;
}

uint64_t sub_100082A28()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_1000EB540 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_1000EB541 = 1;
    }

    byte_1000EB540 = 1;
  }

  v4 = byte_1000EB541;
  fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, byte_1000EB541, "");
  return v3 | v4;
}

void sub_100082BAC(const char *a1, uint64_t a2, uint64_t a3)
{
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = a2 + 16;
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 16));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        sub_1000A40B8(__str);
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 48;
      --a3;
    }

    while (a3);
  }
}

uint64_t sub_100082CF4()
{
  puts("shared allow list:");
  v0 = &byte_1000DDFD8;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_1000DE698;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void sub_100082DB8(const char *a1, char a2)
{
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_1000A4CC0;
      v11[3] = &unk_1000DF498;
      v11[4] = v4;
      sub_100082834(v12, &stru_1000DF478, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", off_1000EA908[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t sub_100083040(unsigned int a1, uint64_t a2)
{
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  v2 = sub_100082754();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  sub_1000A5918();
  return 3758097084;
}

uint64_t sub_1000830DC()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000A5980();
  return 3758097084;
}

uint64_t sub_100083134(unsigned int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x86u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000A59E8();
    return 3758097084;
  }
}

void sub_1000831CC(id a1)
{
  if (!dword_1000EB538)
  {
    dword_1000EB538 = sub_1000834A4("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_10008320C()
{
  if (qword_1000EB548 != -1)
  {
    sub_1000A57E0();
  }

  dispatch_sync(qword_1000EB550, &stru_1000DF518);
  return dword_1000EB53C;
}

void sub_100083254(id a1)
{
  if (!dword_1000EB53C)
  {
    dword_1000EB53C = sub_1000834A4("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t sub_100083294(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100088BF8(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t sub_1000833C8(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100088BF8(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
}

uint64_t sub_1000834A4(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_1000835F8(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sub_100083690(void *a1)
{
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_100083714(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memset_s(va, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100083740(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return sub_1000A6028(a1, 1, &v4);
  }

  *a2 = 0;
  result = sub_1000A6028(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_10008379C()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000ADBA4();
  return 3758097084;
}

uint64_t sub_1000837F4(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x24u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADC0C();
    return 3758097084;
  }
}

uint64_t sub_10008388C(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x33u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADC74();
    return 3758097084;
  }
}

uint64_t sub_100083924(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x35u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADCDC();
    return 3758097084;
  }
}

uint64_t sub_1000839E0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000ADD44();
  return 3758097084;
}

uint64_t sub_100083A44(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 4u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADDAC();
    return 3758097084;
  }
}

uint64_t sub_100083ADC(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x37u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADE14();
    return 3758097084;
  }
}

uint64_t sub_100083B74(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  v22 = sub_100082754();
  if (v22)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(v22, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13)
    {
      if (!result)
      {
        *a13 = output;
      }
    }
  }

  else
  {
    sub_1000ADE7C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100083D94(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0xDu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADEE4();
    return 3758097084;
  }
}

uint64_t sub_100083E2C(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = sub_100082754();
  if (v8)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v8, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADF4C();
    return 3758097084;
  }
}

uint64_t sub_100083EF4(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_100082754();
  if (v10)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    return IOConnectCallMethod(v10, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000ADFB4();
    return 3758097084;
  }
}

uint64_t sub_100084024(_OWORD *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  memset(&v12[16], 0, 112);
  *v12 = 0u;
  v6 = a1[1];
  *&v12[4] = *a1;
  *&v12[20] = v6;
  v7 = a1[3];
  *&v12[36] = a1[2];
  v13 = 0;
  *&v12[52] = v7;
  v10 = *a5;
  __s = 1;
  v8 = sub_1000AF894(&__s, 0, 0, a2, a3, a4, &v10);
  *a5 = v10;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  return sub_100086CF8(v8);
}

void sub_100084118(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = sub_1000AFE9C();
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (!v8)
      {
        return;
      }

      v9 = v8;
      CFDictionaryAddValue(a1, a2, v8);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v10 = sub_1000B0118();
      v11 = &kCFBooleanTrue;
      if (!v10)
      {
        v11 = &kCFBooleanFalse;
      }

      v12 = *v11;

      CFDictionaryAddValue(a1, a2, v12);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v13 = ccder_decode_tl();
      if (v13)
      {
        v9 = CFDataCreate(kCFAllocatorDefault, v13, valuePtr);
        CFDictionaryAddValue(a1, a2, v9);
        if (v9)
        {
LABEL_5:
          CFRelease(v9);
        }
      }
    }
  }
}

uint64_t sub_100084278(int a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE01C();
  return 3758097084;
}

uint64_t sub_10008430C(int a1, unsigned int a2)
{
  input[0] = a2;
  input[1] = a1;
  v2 = sub_100082754();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE084();
  return 3758097084;
}

uint64_t sub_10008439C(int a1, unsigned int a2)
{
  v4 = sub_100082754();
  if (v4)
  {
    input[0] = a2;
    input[1] = a1;
    return IOConnectCallMethod(v4, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE0EC();
    return 3758097084;
  }
}

uint64_t sub_10008443C(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x91u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE154();
  return 3758097084;
}

uint64_t sub_1000844C8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x65u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE1BC();
  return 3758097084;
}

uint64_t sub_10008455C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = 0;
  v21 = 0;
  v11 = sub_100082754();
  if (v11)
  {
    v17 = v11;
    sub_100088BF8(&v22, &v21, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v22;
    input[2] = v21;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v22;
  }

  else
  {
    sub_1000AE224();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  return v18;
}

uint64_t sub_100084688(int a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_100082754();
  if (v6)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(v6, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3)
    {
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    sub_1000AE28C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100084750(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return sub_1000A97C4(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1000847CC(mach_port_t a1, uintptr_t a2)
{
  v4 = sub_100082754();
  if (v4)
  {

    return IOConnectSetNotificationPort(v4, 0, a1, a2);
  }

  else
  {
    sub_1000AE2F4();
    return 3758097084;
  }
}

uint64_t sub_100084844(int a1)
{
  v2 = sub_100082754();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x16u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE35C();
    return 3758097084;
  }
}

uint64_t sub_1000848DC(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE3C4();
  return 3758097084;
}

uint64_t sub_100084974(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100082754();
  if (v5)
  {
    return IOConnectCallMethod(v5, 0x3Au, &input, 1u, a2, a3, 0, 0, 0, 0);
  }

  sub_1000AE42C();
  return 3758097084;
}

uint64_t sub_100084A10(int a1, int a2)
{
  input = a1;
  v3 = sub_100082754();
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    return IOConnectCallMethod(v3, v4, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE494();
    return 3758097084;
  }
}

uint64_t sub_100084AB4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Du, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE4FC();
  return 3758097084;
}

uint64_t sub_100084B40(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE564();
  return 3758097084;
}

uint64_t sub_100084BD4(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE5CC();
  return 3758097084;
}

uint64_t sub_100084C6C(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return sub_100084BD4(a2, a3, a4);
  }

  else
  {
    return sub_100084B40(a2, a3, a4);
  }
}

uint64_t sub_100084C90()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE634();
  return 3758097084;
}

uint64_t sub_100084CE8(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  v12 = sub_100082754();
  if (v12)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v12, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE69C();
    return 3758097084;
  }
}

uint64_t sub_100084DB0(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x3Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE704();
  return 3758097084;
}

uint64_t sub_100084E3C(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x47u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE76C();
  return 3758097084;
}

uint64_t sub_100084EC8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x49u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE7D4();
  return 3758097084;
}

uint64_t sub_100084F5C(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v5 = sub_100082754();
  if (v5)
  {
    return IOConnectCallMethod(v5, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE83C();
  return 3758097084;
}

uint64_t sub_100085000(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE8A4();
  return 3758097084;
}

uint64_t sub_100085090(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE90C();
  return 3758097084;
}

uint64_t sub_100085124(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return sub_100085090(a2, a3, a4);
  }

  else
  {
    return sub_100085000(a2, a3, a4);
  }
}

uint64_t sub_100085148(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = sub_100082754();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AE974();
  return 3758097084;
}

uint64_t sub_100085214(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100082754();
  if (v5)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return IOConnectCallMethod(v5, 0x58u, &input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    sub_1000AE9DC();
    return 3758097084;
  }
}

uint64_t sub_1000852B4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Bu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEA44();
  return 3758097084;
}

uint64_t sub_100085340(unsigned int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Eu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEAAC();
  return 3758097084;
}

uint64_t sub_1000853CC(BOOL *a1)
{
  output = 0;
  outputCnt = 1;
  v2 = sub_100082754();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x6Bu, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
    if (a1)
    {
      if (!result)
      {
        *a1 = output != 0;
      }
    }
  }

  else
  {
    sub_1000AEB14();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100085480()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEB7C();
  return 3758097084;
}

uint64_t sub_1000854D8(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA0u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEBE4();
  return 3758097084;
}

uint64_t sub_10008575C(int a1, uint64_t a2, uint64_t a3)
{
  v3 = 8;
  if (a1)
  {
    v3 = 12;
  }

  v7 = v3;
  sub_1000A48B0();
  v5 = v4;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v7, v4);
  return v5;
}

uint64_t sub_1000857D8()
{
  sub_1000A48B0();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t sub_100085838()
{
  sub_1000A48B0();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t sub_1000858D8(unsigned int a1)
{
  input[0] = 0;
  input[1] = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEC4C();
  return 3758097084;
}

uint64_t sub_100085964(int a1)
{
  input[0] = 1;
  input[1] = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AECB4();
  return 3758097084;
}

uint64_t sub_1000859F4()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AED1C();
  return 3758097084;
}

uint64_t sub_100085A4C()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AED84();
  return 3758097084;
}

uint64_t sub_100085AA4(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x6Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEDEC();
  return 3758097084;
}

uint64_t sub_100085B30(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x9Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEE54();
  return 3758097084;
}

uint64_t sub_100085BE0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEEBC();
  return 3758097084;
}

uint64_t sub_100085C38(const void *a1, size_t a2)
{
  v4 = sub_100082754();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  sub_1000AEF24();
  return 3758097084;
}

uint64_t sub_100085CA0()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEF8C();
  return 3758097084;
}

uint64_t sub_100085CF8(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v3 = sub_100082754();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AEFF4();
  return 3758097084;
}

uint64_t sub_100085D88(int a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF05C();
  return 3758097084;
}

uint64_t sub_100085E14()
{
  v0 = sub_100082754();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF0C4();
  return 3758097084;
}

uint64_t sub_100085E6C(uint64_t a1)
{
  input = a1;
  v1 = sub_100082754();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x97u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1000AF12C();
  return 3758097084;
}

uint64_t sub_100085F14(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_100085F74(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100085FA0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_100085FC0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_10008601C(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void sub_100086078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  bzero(va, 0x8000uLL);
}

uint64_t sub_100086098(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_1000860C0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000860E4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_1000861B8(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t sub_1000862B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *sub_100086300(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return memcpy(a1, va, __n);
}

void sub_100086318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  bzero(va, 0x1000uLL);
}

const char *sub_10008637C(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&byte_1000EB558, 0x20uLL, __format, va);
  }

  byte_1000EB558 = 0;
  return __format;
}

uint64_t sub_1000863D0(uint64_t a1)
{
  ccsha256_di();
  ccdigest();
  return 0;
}

unint64_t sub_100086444(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t sub_100086490(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t sub_1000864D0()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_100086524()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *sub_100086588(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    sub_1000AF4EC();
    return 0;
  }

  return v5;
}

uint64_t sub_100086604(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t sub_100086620(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t sub_10008668C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t sub_10008671C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t sub_100086768(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t sub_100086898(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void sub_1000868B8(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL sub_10008693C(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL sub_100086980(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *sub_1000869AC(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_1000869F4(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t sub_100086A44(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_100086C34(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_1000EB578;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_1000EB578[2 * v2] = 0;
  return byte_1000EB578;
}

char *sub_100086CC8(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100086CF8(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1000B94A0[(result + 38)];
  }

  return result;
}

uint64_t sub_100086D14(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t sub_100086D8C(__int128 *a1, __int128 *a2)
{
  memset(v15, 0, sizeof(v15));
  sub_100087CD4(v15, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  sub_100086D14(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v9 = 0u;
  v10 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v15, 0x20uLL, 0, 0x20uLL);
  return 0;
}

uint64_t sub_100086E90(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v9 = 0u;
  v8 = 0u;
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v5 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v5;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  return 0;
}

uint64_t sub_100086F50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return cchkdf();
}

uint64_t sub_100086FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100086E90(v4, v5 + 8, (v5 + 40), va);
}

uint64_t sub_1000870AC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v14 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = sub_1000871B0(*(*(a5 + 24) + v10), *(*(a5 + 24) + v10) + *(*(*(a5 + 24) + v10) + 1) + 2, a1, a1 + a2);
      if (v12)
      {
        break;
      }

      ++v11;
      v10 += 40;
      if (v11 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v15 = (*(a5 + 24) + v10);
    if (v15[1])
    {
      v13 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v15[1] = a3;
      v15[2] = a3 + a4;
      v15[3] = a3;
      v15[4] = a3 + a4;
      v13 = 1;
    }

LABEL_10:
    v14 = v13 | !v12;
  }

  return v14 & 1;
}

BOOL sub_10008721C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000871B0(*a5, *a5 + *(*a5 + 1) + 2, a1, a1 + a2);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t sub_100087284(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_100087304(void **a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_1000873A0(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_1000873A0(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      v7 = v6 + v2[2];
      if (ccder_blob_decode_sequence_tl() && sub_1000871B0(a2, &v4[a2[1]], v6, v7))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_10008742C(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  v8 = sub_1000873A0(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = v8[1] + v8[2];
      v15[0] = v8[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (sub_1000B0168(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_10008750C(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_10008742C(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_1000AFE9C();
  }

  return v5;
}

uint64_t sub_10008756C(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_10008742C(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_1000B0118();
  }

  return v5;
}

uint64_t sub_1000875CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_100087304(a5, v7) && !sub_1000B04E8())
    {
      return 1;
    }
  }

  else
  {
    sub_1000B29F4();
  }

  sub_1000B2A5C();
  return 0;
}

uint64_t sub_10008772C(__int128 *a1, int a2, void **a3)
{
  v6 = *a3;
  v5 = a3[1];
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = sub_1000B0EB4(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    a3[1] = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t sub_1000877D8(__int128 *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = *a1;
  v5 = ccder_blob_decode_range();
  if (v5)
  {
    *a1 = v7;
  }

  return v5;
}

uint64_t sub_100087860(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  ccder_sizeof_implicit_raw_octet_string();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_100087930(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_100087998()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_1000879D0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v4 = 0;
  v6 = 0;

  return sub_1000B0318(va2, va, va1);
}

uint64_t sub_1000879F0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t sub_100087A40()
{

  return ccder_sizeof();
}

void *sub_100087A5C()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_100087A74(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t sub_100087AC4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11)
{

  return ccder_blob_decode_range();
}

uint64_t sub_100087AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000AFCE8();
}

uint64_t sub_100087C1C()
{
  sub_100086D14(&off_1000DDF30 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(sub_100081F24 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100081F24();
}

uint64_t sub_100087CD4(uint64_t a1, unsigned int a2)
{
  sub_100086D14(&off_1000DDF30 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(sub_100081F94 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100081F94(a1, a2);
}

uint64_t sub_100087DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100086D14(&off_1000DDF30 != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100087EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100086D14(&off_1000DDF30 != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100087FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100086D14(&off_1000DDF30 != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10008810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_100086D14(&off_1000DDF30 != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10008823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100086D14(&off_1000DDF30 != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_10008836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100086D14(&off_1000DDF30 != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5);
}

uint64_t sub_100088464()
{
  sub_100086D14(&off_1000DDF30 != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0]();
}

uint64_t sub_10008851C(uint64_t a1, uint64_t a2)
{
  sub_100086D14(&off_1000DDF30 != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2);
}

uint64_t sub_1000885EC(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1000886B4(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10008877C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100088844(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10008890C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1000889D4(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100088A9C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

char *sub_100088B70(_DWORD *a1, const void *a2, int a3)
{
  v3 = a1 + 1;
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 = (v3 + a3);
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      return v3 + v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_100088BF8(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_100088B70(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

void sub_100088DDC()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

id sub_100088E34(uint64_t a1)
{
  if (a1)
  {
    v2 = [@"encrypt" dataUsingEncoding:4];
    v3 = [v2 mutableCopy];

    [v3 appendData:a1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100088EAC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [@"encrypt" length];
    a1 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", &v3[[v2 bytes]], objc_msgSend(v2, "length") - v3);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100088F2C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_10008900C(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1000890EC(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1000890F8(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_100089160(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t sub_1000891C8(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t sub_100089230(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t sub_100089254(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1000892C8(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t sub_100089330(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t sub_100089398(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_10008945C(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t sub_1000894C4(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

uint64_t sub_100089618(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t sub_100089624(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100089778(uint64_t result)
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

uint64_t sub_100089784(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t sub_100089790(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_10008979C(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

void sub_1000897A8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_1000897B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_1000897C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1000897D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_1000897E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_1000897F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_100089808(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_100089818(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100089828(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100089838(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_100089848(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_100089858(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

uint64_t sub_100089868(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

void sub_100089874(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_100089884(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_100089894(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

void sub_1000898A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_1000898B4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_1000898C4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_1000898D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

void sub_1000898E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1000898F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

void sub_100089904()
{
  sub_100017D5C();
  v3 = [NSNumber numberWithUnsignedInt:?];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
  }

  v5 = v3;
  [v4 setObject:v3 forKeyedSubscript:v0];
}

void sub_10008997C(void *a1, uint64_t a2)
{
  [0 setObject:a1 forKeyedSubscript:a2];
}

void sub_1000899C0()
{
  sub_100017D5C();
  v3 = [NSNumber numberWithUnsignedInt:?];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 32);
  }

  v5 = v3;
  [v4 setObject:v3 forKeyedSubscript:v0];
}

uint64_t sub_100089A48(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    LODWORD(result) = v2(v1);
    if (v3 < 0)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100089A80(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100089A8C(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    return v2(v1) & ((v3 & 0x40000000u) >> 30);
  }

  return result;
}

uint64_t sub_100089AC4(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    if (v2(v1))
    {
      return v3 & 0x3FFFFFFF;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100089B00(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 >> 30)
  {
    if (qword_1000EB2C0 != -1)
    {
      dispatch_once(&qword_1000EB2C0, &stru_1000DD410);
    }

    v3 = qword_1000EB2B8;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v4 = sub_1000011A8(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v11[0] = 67109120;
        v11[1] = a2;
        v6 = _os_log_send_and_compose_impl(v5, &v10, 0, 0, &_mh_execute_header, v3, 16, "Failed to set comm page MultiUser Config: UID %u exceeds maximum allowable value", v11);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    return 0;
  }

  v8 = *(*(a1 + 16) + 16);

  return v8();
}

void sub_100089CB0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 8);
  }
}

void sub_100089CC4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

BOOL sub_100089EFC()
{
  v0 = malloc_type_malloc(0x16uLL, 0xA27D4BC3uLL);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  snprintf(v0, 0x16uLL, "%s%s", "IODeviceTree", ":/product");
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, v1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-ios-diagnostics", kCFAllocatorDefault, 0);
    v5 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  free(v1);
  return v5;
}

uint64_t sub_10008A438(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10008A1A8(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:kUMUserSessionIDKey];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

id sub_10008A4DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = sub_10008A2F4(a1, a2);
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectForKeyedSubscript:kUMUserSessionUUIDKey];
      if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10008A58C(uint64_t result)
{
  if (result)
  {
    v1 = sub_100088F2C(*(result + 8));
    v2 = sub_100089AC4(v1);

    return v2;
  }

  return result;
}

id sub_10008A5D0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = sub_1000013A0(v2);
    v49 = 0;
    v4 = [v3 dataWithContentsOfFile:@"/private/var/keybags/nextsession.kb" error:&v49];
    v5 = v49;

    if (v4)
    {
      v6 = sub_10009950C(v4);
      v7 = v6;
      if (!v6)
      {
        if (qword_1000EB3A8 != -1)
        {
          dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
        }

        if (sub_10005399C(qword_1000EB3A0))
        {
          sub_100053940();
          if (sub_1000539D0())
          {
            v18 = v1;
          }

          else
          {
            v18 = v1 & 0xFFFFFFFE;
          }

          if (v18)
          {
            sub_1000538D4();
            sub_100053914();
            v25 = _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v3, 16, v24);
            v26 = v25;
            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {
            v26 = 0;
          }

          free(v26);
        }

        goto LABEL_56;
      }

      v3 = sub_100099214(v6, @"BLOB");
      if (v3)
      {
        v8 = sub_100098D4C(v7, @"BLOBLEN", 0);
        if (v8)
        {
          if ([v3 length] == v8)
          {
            v3 = v3;
            v9 = v3;
LABEL_57:

            goto LABEL_58;
          }

          if (qword_1000EB3A8 != -1)
          {
            dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
          }

          v36 = qword_1000EB3A0;
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          sub_100053940();
          v39 = sub_1000539B4();
          if (sub_100053958(v39))
          {
LABEL_46:
            sub_1000538D4();
            sub_100053914();
            v46 = _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v36, 16, v45);
            v47 = v46;
            if (v46)
            {
              sub_100002A8C(v46);
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (qword_1000EB3A8 != -1)
          {
            dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
          }

          v36 = qword_1000EB3A0;
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          sub_100053940();
          v38 = sub_1000539B4();
          if (sub_100053958(v38))
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if (qword_1000EB3A8 != -1)
        {
          dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
        }

        v36 = qword_1000EB3A0;
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        sub_100053940();
        v37 = sub_1000539B4();
        if (sub_100053958(v37))
        {
          goto LABEL_46;
        }
      }

      v47 = 0;
LABEL_52:
      free(v47);
LABEL_53:

LABEL_56:
      v9 = 0;
      goto LABEL_57;
    }

    if ([v5 code] == 2)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      sub_100053940();
      v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (sub_10000230C(v10))
      {
        sub_1000538D4();
        sub_100053914();
        v17 = _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v7, 0, v16);
        if (!v17)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v27 = sub_100053940();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v27 &= ~1u;
      }

      if (v27)
      {
        v28 = v7;
        v29 = [v5 code];
        v50 = 67109120;
        v51 = v29;
        sub_1000538EC();
        sub_100053924();
        v17 = _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, v28, 16, v35);

        if (!v17)
        {
LABEL_49:
          free(v17);
LABEL_50:
          v9 = 0;
LABEL_58:

          goto LABEL_59;
        }

LABEL_31:
        sub_100002A8C(v17);
        goto LABEL_49;
      }
    }

    v17 = 0;
    goto LABEL_49;
  }

  v9 = 0;
LABEL_59:

  return v9;
}

uint64_t sub_10008AAA8(NSObject *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v34[0] = a3;
  v34[1] = a2;
  v4 = [NSData dataWithBytes:v34 length:32];
  v5 = v3[1].isa;
  v6 = sub_100089A80(v5);
  v31[0] = 0;
  v7 = [v6 dataWrappingDataWithDeviceClassF:v4 error:v31];
  v8 = v31[0];

  if (!v7)
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    if (!sub_10005399C(qword_1000EB3A0))
    {
      goto LABEL_30;
    }

    sub_100053940();
    v18 = sub_100053980();
    if (sub_100053930(v18))
    {
      sub_1000538FC();
      v32 = 2114;
      v33 = v8;
      sub_1000538EC();
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (![v7 length])
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    if (!sub_10005399C(qword_1000EB3A0))
    {
      goto LABEL_30;
    }

    sub_100053940();
    v19 = sub_100053980();
    if (sub_100053930(v19))
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (sub_100053130(v3, v7))
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_100053940();
      v9 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (sub_100053930(v9))
      {
        sub_1000538FC();
        sub_1000538EC();
        sub_100053914();
        v16 = _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v3, 0, v15);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v29 = 1;
    goto LABEL_31;
  }

  if (qword_1000EB3A8 != -1)
  {
    dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
  }

  if (sub_10005399C(qword_1000EB3A0))
  {
    sub_100053940();
    v20 = sub_100053980();
    if (sub_100053930(v20))
    {
LABEL_25:
      sub_1000538FC();
      sub_1000538EC();
LABEL_26:
      sub_100053914();
      v27 = _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v3, 16, v26);
      v28 = v27;
      if (v27)
      {
        sub_100002A8C(v27);
      }

      goto LABEL_29;
    }

LABEL_28:
    v28 = 0;
LABEL_29:
    free(v28);
  }

LABEL_30:
  v29 = 0;
LABEL_31:

  return v29;
}

uint64_t sub_10008AE10(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  *a2 = -1;
  *a3 = -1;
  v6 = sub_10008A5D0(a1);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = sub_100089A80(v7);
    v23 = 0;
    v9 = [v8 dataUnwrappingDataWithDeviceClassF:v6 error:&v23];
    v10 = v23;

    if (v9)
    {
      if ([v9 length] == 32)
      {
        v11 = [v9 bytes];
        *v4 = v11[1];
        *a3 = *v11;
        v12 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      if (sub_10005399C(qword_1000EB3A0))
      {
        sub_100053940();
        if (!sub_1000539D0())
        {
          LODWORD(v4) = v4 & 0xFFFFFFFE;
        }

        if (v4)
        {
          v13 = a3;
          v14 = [v9 length];
          v24 = 134217984;
          v25 = v14;
          sub_1000538EC();
          sub_100053924();
          v21 = _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, v13, 16, v20);

          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

id sub_10008B010(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1000013A0(*(a1 + 8));
  v2 = [v1 removeFileAtPath:@"/private/var/keybags/nextsession.kb" error:0];

  if (v2)
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v4 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      sub_100053968();
      sub_100053924();
      v12 = v3;
      v13 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v14 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      sub_100053968();
      sub_100053924();
      v12 = v3;
      v13 = 16;
LABEL_19:
      v16 = _os_log_send_and_compose_impl(v6, v7, v8, v9, v10, v12, v13, v11);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }

      goto LABEL_22;
    }
  }

  v17 = 0;
LABEL_22:
  free(v17);
LABEL_23:

  return v2;
}

void sub_10008B1C0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100089624(*(a1 + 8));
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008B254;
    v3[3] = &unk_1000DD770;
    v3[4] = a1;
    [v2 initializeLocalUsersAndGroups:v3];
  }
}

void sub_10008B254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  sub_10000166C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v12;
  [v16 removeAllObjects];
  [v17 removeAllObjects];
  sub_100001718();
  v18 = *(v14 + 32);
  if (v18)
  {
    v18 = v18[3];
  }

  v19 = v18;
  sub_1000017F4();
  v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = *a11;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*a11 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(a10 + 8 * i);
        v26 = sub_100053238(*(v14 + 32), v25);
        [v16 addObject:v26];

        v27 = sub_100053450(*(v14 + 32), v25);
        [v17 addObject:v27];
      }

      sub_1000017F4();
      v22 = [v19 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  sub_100001A48();
}

void sub_10008B3A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = sub_100098CCC(v5, kUMUserSessionIDKey, 0xFFFFFF9BLL);
    if (v7 == -1)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      if (sub_10005399C(qword_1000EB3A0))
      {
        v36 = 0;
        sub_1000011A8(0);
        if (sub_1000539D0())
        {
          v8 = v3;
        }

        else
        {
          v8 = v3 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v37 = 67109120;
          v38 = -1;
          sub_1000539EC();
          sub_100053924();
          v15 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v2, 16, v14);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }
    }

    v17 = *(a1 + 8);
    v18 = sub_100089624(v17);
    sub_1000022EC();
    v31 = 3221225472;
    v32 = sub_100053590;
    v33 = &unk_1000DD798;
    v34 = a1;
    v19 = v6;

    v35 = v19;
    LOBYTE(v19) = [v18 updateLocalUsersAndGroupsWithError:0 updater:v30];

    if ((v19 & 1) == 0)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v20 = qword_1000EB3A0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v36 = 0;
        sub_1000011A8(0);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (sub_10000230C(v21))
        {
          v37 = 67109120;
          v38 = v7;
          sub_1000539EC();
          sub_100053924();
          v28 = _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v20, 16, v27);
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }
    }
  }
}

void sub_10008B634(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = sub_100089624(v4);
    sub_1000022EC();
    v18 = 3221225472;
    v19 = sub_10005363C;
    v20 = &unk_1000DD7C0;
    v6 = v3;

    v21 = v6;
    LOBYTE(v4) = [v5 updateLocalUsersAndGroupsWithError:0 updater:v17];

    if ((v4 & 1) == 0)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100053940();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (sub_10000230C(v8))
        {
          v22 = 138543362;
          v23 = v6;
          sub_100053914();
          v15 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v7, 16, v14, &v22, 12);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }
    }
  }
}

void sub_10008B7DC(void *a1, uint64_t a2)
{
  v4 = [a1 se];
  v5 = *(a2 + 8);
  *(a2 + 8) = v4;

  objc_storeStrong((a2 + 16), a1);
}

void sub_10008B82C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = sub_1000013A0(*(a1 + 8));
  *a3 = [v5 atomicallyWriteData:a2 toPath:@"/private/var/keybags/nextsession.kb" error:0];
}

void sub_10008B8D8(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 16);
    if ((v2 + 1) > 1)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 1;
    }

    *(result + 16) = v3;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        sub_1000553F0();
        v9 = _os_log_send_and_compose_impl(v8, v11, 0, 0, &_mh_execute_header, v4, 0, "Generation incremented to %llu", v10);
        v7 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    sub_10008BA40(result);
    sub_10008BC70(result);
  }
}

void sub_10008BA00(uint64_t result)
{
  if (result)
  {
    sub_10008BA40(result);

    sub_10008BC70(result);
  }
}

void sub_10008BA40(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == -1 && (v2 = *(a1 + 24), sub_10008900C(v2), v3 = objc_claimAutoreleasedReturnValue(), v4 = *(a1 + 32), *(a1 + 8) = [v3 registerPlain:v4], v4, v2, v3, *(a1 + 8) == -1))
    {
      v11 = *(a1 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      sub_1000011A8(0);
      v23 = sub_10005540C();
      if (!sub_1000553E0(v23))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      v6 = sub_10008900C(v5);
      v8 = sub_100055380(a1, v7);
      v9 = *(a1 + 8);

      LOBYTE(v8) = [v6 setState:v8 forToken:v9];
      v10 = *(a1 + 40);
      v11 = v10;
      if (v8)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = sub_1000011A8(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            sub_1000553F0();
            sub_1000553D0();
            v21 = 1;
            goto LABEL_17;
          }

LABEL_19:
          v25 = 0;
LABEL_20:
          free(v25);
        }

LABEL_21:

        return;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      sub_1000011A8(0);
      v22 = sub_10005540C();
      if (!sub_1000553E0(v22))
      {
        goto LABEL_19;
      }
    }

    sub_100053968();
    sub_1000553D0();
    v21 = 16;
LABEL_17:
    v24 = _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v19, v21, v20);
    v25 = v24;
    if (v24)
    {
      sub_100002A8C(v24);
    }

    goto LABEL_20;
  }
}

void sub_10008BC70(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = sub_10008900C(v2);
    v4 = [v3 post:*(a1 + 32)];

    v5 = *(a1 + 40);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        sub_1000011A8(0);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
        if (sub_1000553E0(v7))
        {
          sub_100053968();
          sub_1000553D0();
          v15 = 1;
          goto LABEL_9;
        }

        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000011A8(0);
      v16 = sub_10005540C();
      if (sub_1000553E0(v16))
      {
        sub_100053968();
        sub_1000553D0();
        v15 = 16;
LABEL_9:
        v17 = _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, v15, v14);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }

        goto LABEL_12;
      }

LABEL_11:
      v18 = 0;
LABEL_12:
      free(v18);
    }
  }
}

uint64_t sub_10008BDA4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_10008BDEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    objc_opt_self();
    v3 = [&off_1000E15E8 mutableCopy];
    [v2 setObject:v3 forKeyedSubscript:@"UserPersonaBundleIDS"];
  }
}

void sub_10008BE6C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    objc_opt_self();
    v3 = [&off_1000E1600 mutableCopy];
    [v2 setObject:v3 forKeyedSubscript:@"UserPersonaBundleIDS"];
  }
}

uint64_t sub_10008BEEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_1000577C0(v3, @"UserPersonaType");
    if (v5 == 4)
    {
      v6 = &off_1000E15E8;
    }

    else
    {
      if (v5 != 3)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v6 = &off_1000E1600;
    }

    objc_opt_self();
    v7 = [v6 mutableCopy];
    a1 = sub_1000565AC(a1, v7, v4);
  }

LABEL_8:

  return a1;
}

uint64_t sub_10008BF90()
{
  sub_100057540();
  v3 = v2;
  v4 = v0;
  v5 = v4;
  if (v1)
  {
    v6 = v4;
    sub_1000017F4();
    v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
    if (v8)
    {
      v9 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v3 objectForKeyedSubscript:*(8 * i)];

          if (!v11)
          {
            v8 = 1;
            goto LABEL_12;
          }
        }

        sub_1000017F4();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10008C0C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    if ((a3 - 3) <= 2)
    {
      sub_100057558();
      a1 = sub_10008BF90();
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_10008C12C(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 < 7 && ((0x6Du >> a2) & 1) != 0)
    {
      v14 = qword_1000B8328[a2];
      v15 = dword_1000B8360[a2];

      return sub_10008C298(result, v15, v14);
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005731C(qword_1000EB3F0))
      {
        sub_1000572D0();
        v3 = sub_100057454();
        if (sub_100057088(v3))
        {
          sub_1000538EC();
          sub_100001800();
          v12 = sub_1000575B8(v4, v5, v6, v7, v8, v9, v10, v11);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10008C298(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (!a1)
  {
    return 0;
  }

  sub_100057170();
  if (!v9)
  {
    dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
  }

  v10 = sub_100057760();
  if (sub_10005757C(v10))
  {
    sub_10005737C();
    v11 = sub_10005717C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v4 &= ~1u;
    }

    if (v4)
    {
      v12 = *(a1 + 32);
      v13 = v3;
      v14 = [v12 userPersonas];
      [v14 count];
      sub_1000571B0();
      sub_100057148();
      sub_100053924();
      v21 = _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, v13, 2, v20);

      if (v21)
      {
        sub_100002A8C(v21);
      }

      v5 = &off_1000EB000;
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  if (a3 + a2 <= a2)
  {
LABEL_16:
    sub_100057170();
    if (!v9)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000577D8(v5[126]))
    {
      sub_10005734C();
      v22 = os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG);
      if (sub_1000570A8(v22))
      {
        sub_1000538EC();
        sub_100001688();
        v30 = _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v28, 2, v29);
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    a2 = 0xFFFFFFFFLL;
  }

  else
  {
    while (sub_10008C58C(a1, a2))
    {
      a2 = (a2 + 1);
      a3 = (a3 - 1);
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    sub_100057170();
    if (!v9)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000577D8(v5[126]))
    {
      sub_10005734C();
      v33 = sub_1000571D8();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
      if (sub_100057088(v34))
      {
        sub_1000538EC();
        sub_100001688();
        v42 = _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, v40, 2, v41);
        v43 = v42;
        if (v42)
        {
          sub_100002A8C(v42);
        }
      }

      else
      {
        v43 = 0;
      }

      free(v43);
    }
  }

  return a2;
}

uint64_t sub_10008C58C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v4 = [*(a1 + 32) userPersonas];
  sub_1000017F4();
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(8 * i);
        v11 = *(a1 + 32);
        v12 = [v11 userPersonas];
        v13 = [v12 objectForKeyedSubscript:v10];

        LOBYTE(v11) = sub_10008C8C4(a1, v2, v13);
        if (v11)
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      sub_1000017F4();
      v7 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

id sub_10008C6F0(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v4 = "FEEDEEEE-DDDD-CCCC-BBBB-0000";
    switch(a2)
    {
      case 0:
        goto LABEL_12;
      case 2:
      case 6:
        v5 = +[NSUUID UUID];
        v6 = [v5 UUIDString];
        v7 = [v6 uppercaseString];

        goto LABEL_13;
      case 3:
        v4 = "FEEDEEEE-DDDD-CCCC-BBBB-3333";
        goto LABEL_12;
      case 5:
        v4 = "FEEDEEEE-DDDD-CCCC-BBBB-5555";
LABEL_12:
        v5 = [NSMutableString stringWithUTF8String:v4];
        v7 = [NSString stringWithFormat:@"%@%08X", v5, a3];
LABEL_13:

        break;
      default:
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005731C(qword_1000EB3F0))
        {
          sub_1000572D0();
          v8 = sub_100057454();
          if (sub_100057088(v8))
          {
            sub_1000538EC();
            sub_100001800();
            v17 = sub_1000575B8(v9, v10, v11, v12, v13, v14, v15, v16);
            v18 = v17;
            if (v17)
            {
              sub_100002A8C(v17);
            }
          }

          else
          {
            v18 = 0;
          }

          free(v18);
        }

        goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10008C8C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    sub_1000571E4();
    if (!v49)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v6 = &off_1000EB000;
    if (sub_100057630(qword_1000EB3F0))
    {
      v7 = sub_100057424();
      if (sub_100057648())
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = v3;
        v69 = 134218240;
        v70 = [v5 count];
        v71 = 1024;
        v72 = a2;
        sub_1000553D0();
        v17 = _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, 2, v16, &v69, 18);

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      v6 = &off_1000EB000;
      free(v17);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v65;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v65 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v64 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v23 objectForKeyedSubscript:@"UserPersonaID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v23 unsignedIntValue] == a2)
              {
                sub_1000571E4();
                if (!v49)
                {
                  dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
                }

                if (sub_100057618(v6[126]))
                {
                  sub_1000577A8();
                  v50 = os_log_type_enabled(@"UserPersonaID", OS_LOG_TYPE_DEBUG);
                  if (sub_1000570A8(v50))
                  {
                    v73 = 67109120;
                    v74 = a2;
                    sub_100057050();
                    sub_100053924();
                    v59 = sub_100057600(v51, v52, v53, v54, v55, v56, v57, v58);
                    v60 = v59;
                    if (v59)
                    {
                      sub_100002A8C(v59);
                    }
                  }

                  else
                  {
                    v60 = 0;
                  }

                  free(v60);
                }

                v61 = 1;
                goto LABEL_59;
              }
            }

            else
            {
              sub_1000571E4();
              if (!v49)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              v31 = v6[126];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                sub_1000577A8();
                v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
                if (sub_1000570A8(v32))
                {
                  sub_100057020();
                  sub_100053924();
                  v37 = _os_log_send_and_compose_impl(v33, v34, v35, v36, &_mh_execute_header, v31, 2, "Ignoring persona with missing or invalid kernelID in array");
                  v38 = v37;
                  if (v37)
                  {
                    sub_100002A8C(v37);
                  }
                }

                else
                {
                  v38 = 0;
                }

                free(v38);
                v6 = &off_1000EB000;
              }
            }
          }

          else
          {
            sub_1000571E4();
            if (!v49)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_10005757C(v6[126]))
            {
              sub_1000577A8();
              v24 = sub_100057564();
              if (sub_1000570A8(v24))
              {
                sub_100057020();
                sub_100053924();
                v29 = _os_log_send_and_compose_impl(v25, v26, v27, v28, &_mh_execute_header, v23, 2, "Ignoring invalid persona in array");
                v30 = v29;
                if (v29)
                {
                  sub_100002A8C(v29);
                }
              }

              else
              {
                v30 = 0;
              }

              v6 = &off_1000EB000;
              free(v30);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    sub_1000571E4();
    if (!v49)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057630(v6[126]))
    {
      sub_1000577A8();
      v39 = sub_100057648();
      if (sub_1000570A8(v39))
      {
        v73 = 67109120;
        v74 = a2;
        sub_100057050();
        sub_100001728();
        v47 = _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v45, 2, v46);
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
      v61 = 0;
    }

    else
    {
      v61 = 0;
    }

LABEL_59:
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

id sub_10008CDD8(id a1, unsigned int a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = &off_1000EB000;
    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v6 = &off_1000EB000;
    v7 = qword_1000EB3F0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B7C();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (sub_100057088(v8))
      {
        v65 = 67109120;
        v66 = a2;
        sub_100057050();
        sub_1000553D0();
        v16 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 2, v15);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
      v6 = &off_1000EB000;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v19)
    {
      v20 = v19;
      v57 = v4;
      v21 = *v61;
      v22 = @"UserPersonaType";
      v23 = &MGCopyAnswer_ptr;
      v58 = *v61;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v25 objectForKeyedSubscript:v22];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v28 = v5[127];
            if (isKindOfClass)
            {
              if (v28 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              if (sub_100057730(v6[126]))
              {
                v29 = v22;
                v30 = v18;
                v31 = sub_100002B7C();
                if (!sub_100057778())
                {
                  v31 &= ~1u;
                }

                if (v31)
                {
                  v32 = v5;
                  v33 = v23;
                  v34 = [v26 unsignedIntValue];
                  v65 = 67109120;
                  v66 = v34;
                  sub_100057050();
                  sub_100053924();
                  v39 = _os_log_send_and_compose_impl(v35, v36, v37, v38, &_mh_execute_header, v33, 2, "personaWithType:inArray: by type:%u EXISTS, returning", v56);

                  if (v39)
                  {
                    sub_100002A8C(v39);
                  }

                  v5 = v32;
                  v6 = &off_1000EB000;
                }

                else
                {
                  v39 = 0;
                }

                free(v39);
                v18 = v30;
                v22 = v29;
                v21 = v58;
              }

              if ([v26 unsignedIntValue]== a2)
              {
                a1 = v25;

                goto LABEL_51;
              }

              v23 = &MGCopyAnswer_ptr;
            }

            else
            {
              if (v28 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              v47 = v6[126];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                sub_100002B7C();
                v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
                if (sub_100053930(v48))
                {
                  sub_100057020();
                  sub_100053924();
                  v53 = _os_log_send_and_compose_impl(v49, v50, v51, v52, &_mh_execute_header, v47, 2, "Ignoring persona with missing or invalid type in array");
                  v54 = v53;
                  if (v53)
                  {
                    sub_100002A8C(v53);
                  }
                }

                else
                {
                  v54 = 0;
                }

                free(v54);
                v23 = &MGCopyAnswer_ptr;
              }
            }
          }

          else
          {
            if (v5[127] != -1)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            v26 = v6[126];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              sub_100002B7C();
              v40 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
              if (sub_1000570A8(v40))
              {
                sub_100057020();
                sub_100053924();
                v45 = _os_log_send_and_compose_impl(v41, v42, v43, v44, &_mh_execute_header, v26, 2, "Ignoring invalid persona in array");
                v46 = v45;
                if (v45)
                {
                  sub_100002A8C(v45);
                }
              }

              else
              {
                v46 = 0;
              }

              free(v46);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      a1 = 0;
LABEL_51:
      v4 = v57;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10008D284(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100057264();
  v6 = v5;
  sub_10005768C();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v20 = v5;
  v10 = *v22;
LABEL_4:
  v11 = 0;
  while (1)
  {
    sub_10005743C();
    if (v12 != v10)
    {
      objc_enumerationMutation(v6);
    }

    v13 = *(v21 + 8 * v11);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = [v13 objectForKeyedSubscript:@"UserPersonaID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntValue] == a2)
    {
      break;
    }

LABEL_11:
    if (v9 == ++v11)
    {
      sub_10005768C();
      v9 = sub_100057660(v15, v16, v17, v18);
      if (v9)
      {
        goto LABEL_4;
      }

      v5 = v20;
      goto LABEL_16;
    }
  }

  v19 = v13;

  v5 = v20;
  if (!v19)
  {
    goto LABEL_17;
  }

  [v6 removeObjectIdenticalTo:v19];
  v6 = v19;
LABEL_16:

LABEL_17:
}