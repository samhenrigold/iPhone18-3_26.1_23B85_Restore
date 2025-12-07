void sub_1000008E8()
{
  *notification = 0;
  if (qword_100010218)
  {
    v0 = qword_100010218;
  }

  else
  {
    v0 = &_os_log_default;
  }

  sub_100007804(v0, "Going to discover services \n");
  if (dword_100010220)
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v1;
    v41 = v1;
    v39 = v1;
    v37 = v1;
    v38 = v1;
    v35 = v1;
    v36 = v1;
    *v34 = v1;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    time(&v32);
    v2 = localtime(&v32);
    strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v2);
    dprintf(dword_100010220, "%s ", v34);
    dprintf(dword_100010220, "Going to discover services \n");
  }

  v3 = IONotificationPortCreate(kIOMainPortDefault);
  if (qword_100010218)
  {
    v4 = qword_100010218;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (v3)
  {
    sub_100007804(v4, "Matching with -> Core match:'%s', Bundle ID match:'%s'\n", "AppleBCMWLANCore", "com.apple.driver.AppleBCMWLANCore");
    if (dword_100010220)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40 = v5;
      v41 = v5;
      v39 = v5;
      v37 = v5;
      v38 = v5;
      v35 = v5;
      v36 = v5;
      *v34 = v5;
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      v6 = localtime(&v32);
      strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v6);
      dprintf(dword_100010220, "%s ", v34);
      dprintf(dword_100010220, "Matching with -> Core match:'%s', Bundle ID match:'%s'\n", "AppleBCMWLANCore", "com.apple.driver.AppleBCMWLANCore");
    }

    RunLoopSource = IONotificationPortGetRunLoopSource(v3);
    v8 = IOServiceNameMatching("AppleBCMWLANCore");
    if (IOServiceAddMatchingNotification(v3, "IOServiceFirstMatch", v8, sub_100000ED4, notification, &notification[1]))
    {
      if (qword_100010218)
      {
        v9 = qword_100010218;
      }

      else
      {
        v9 = &_os_log_default;
      }

      sub_100007804(v9, "Failed to add matching notification\n");
      if (dword_100010220)
      {
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v10;
        v41 = v10;
        v39 = v10;
        v37 = v10;
        v38 = v10;
        v35 = v10;
        v36 = v10;
        *v34 = v10;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        time(&v32);
        v11 = localtime(&v32);
        strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v11);
        dprintf(dword_100010220, "%s ", v34);
        dprintf(dword_100010220, "Failed to add matching notification\n", v28);
      }
    }

    else
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      v15 = CFRunLoopGetCurrent();
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100000EC8;
      block[3] = &unk_10000C408;
      v30 = notification[0];
      v31 = notification[1];
      CFRunLoopPerformBlock(v15, kCFRunLoopDefaultMode, block);
      if (qword_100010218)
      {
        v16 = qword_100010218;
      }

      else
      {
        v16 = &_os_log_default;
      }

      sub_100007804(v16, "Waiting for firmware to load\n");
      if (dword_100010220)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v17;
        v41 = v17;
        v39 = v17;
        v37 = v17;
        v38 = v17;
        v35 = v17;
        v36 = v17;
        *v34 = v17;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        time(&v32);
        v18 = localtime(&v32);
        strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v18);
        dprintf(dword_100010220, "%s ", v34);
        dprintf(dword_100010220, "Waiting for firmware to load\n");
      }

      if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 300.0, 0) == kCFRunLoopRunTimedOut)
      {
        v19 = qword_100010218 ? qword_100010218 : &_os_log_default;
        sub_100007804(v19, "Runloop timed out\n");
        if (dword_100010220)
        {
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v40 = v20;
          v41 = v20;
          v39 = v20;
          v37 = v20;
          v38 = v20;
          v35 = v20;
          v36 = v20;
          *v34 = v20;
          v32 = 0xAAAAAAAAAAAAAAAALL;
          time(&v32);
          v21 = localtime(&v32);
          strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v21);
          dprintf(dword_100010220, "%s ", v34);
          dprintf(dword_100010220, "Runloop timed out\n");
        }
      }

      v22 = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(v22, RunLoopSource, kCFRunLoopDefaultMode);
      IONotificationPortDestroy(v3);
      v23 = dword_100010118 == 2 && dword_100010114 == 1 || dword_100010190 == 2 && dword_10001018C == 1;
      HIDWORD(qword_100010100) = v23;
      if (qword_100010218)
      {
        v25 = qword_100010218;
      }

      else
      {
        v25 = &_os_log_default;
      }

      sub_100007804(v25, "wifiFirmwareLoaderThread exiting with %d\n", v23);
      if (dword_100010220)
      {
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v26;
        v41 = v26;
        v39 = v26;
        v37 = v26;
        v38 = v26;
        v35 = v26;
        v36 = v26;
        *v34 = v26;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        time(&v32);
        v27 = localtime(&v32);
        strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v27);
        dprintf(dword_100010220, "%s ", v34);
        dprintf(dword_100010220, "wifiFirmwareLoaderThread exiting with %d\n");
      }
    }
  }

  else
  {
    sub_100007804(v4, "Failed to create notification port\n");
    if (dword_100010220)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40 = v12;
      v41 = v12;
      v39 = v12;
      v37 = v12;
      v38 = v12;
      v35 = v12;
      v36 = v12;
      *v34 = v12;
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      v13 = localtime(&v32);
      strftime(v34, 0x80uLL, "%b %d %H:%M:%S", v13);
      dprintf(dword_100010220, "%s ", v34);
      dprintf(dword_100010220, "Failed to create notification port\n");
    }
  }
}

uint64_t sub_100000ED4(io_registry_entry_t *a1, io_iterator_t a2)
{
  v2 = a1;
  v3 = &stru_100010000;
  while (1)
  {
    result = IOIteratorNext(a2);
    if (!result)
    {
      return result;
    }

    v5 = result;
    __strlcpy_chk();
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"DriverKitDriverPlatformType", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      TypeID = CFStringGetTypeID();
      v9 = TypeID == CFGetTypeID(v7);
      v3 = &stru_100010000;
      if (v9)
      {
        xmmword_100010031 = 0u;
        unk_100010041 = 0u;
        xmmword_100010011 = 0u;
        unk_100010021 = 0u;
        usedBufLen = 0;
        v51.length = CFStringGetLength(v7);
        v51.location = 0;
        if (!CFStringGetBytes(v7, v51, 0x8000100u, 0, 0, &xmmword_100010011, 64, &usedBufLen))
        {
          v10 = qword_100010218 ? qword_100010218 : &_os_log_default;
          sub_100007804(v10, "%s failed, no characters converted\n", "__serviceCallback");
          if (dword_100010220)
          {
            *&v11 = 0xAAAAAAAAAAAAAAAALL;
            *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v49 = v11;
            v50 = v11;
            v47 = v11;
            v48 = v11;
            v45 = v11;
            v46 = v11;
            *v43 = v11;
            v44 = v11;
            v41 = 0xAAAAAAAAAAAAAAAALL;
            time(&v41);
            v12 = localtime(&v41);
            strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v12);
            dprintf(dword_100010220, "%s ", v43);
            dprintf(dword_100010220, "%s failed, no characters converted\n", "__serviceCallback");
          }
        }

        CFRelease(v7);
      }
    }

    v13 = IORegistryEntryCreateCFProperty(v5, @"DriverKitDriver", kCFAllocatorDefault, 0);
    if (v13)
    {
      v14 = v13;
      LOBYTE(v3[1].__sig) = CFBooleanGetValue(v13) != 0;
      CFRelease(v14);
    }

    if (qword_100010218)
    {
      v15 = qword_100010218;
    }

    else
    {
      v15 = &_os_log_default;
    }

    if (LOBYTE(v3[1].__sig) == 1)
    {
      sub_100007804(v15, "We are using driverkit driver\n");
      if (dword_100010220)
      {
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49 = v16;
        v50 = v16;
        v47 = v16;
        v48 = v16;
        v45 = v16;
        v46 = v16;
        *v43 = v16;
        v44 = v16;
        usedBufLen = 0xAAAAAAAAAAAAAAAALL;
        time(&usedBufLen);
        v17 = localtime(&usedBufLen);
        strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v17);
        dprintf(dword_100010220, "%s ", v43);
        dprintf(dword_100010220, "We are using driverkit driver\n");
      }

      v18 = IORegistryEntryCreateCFProperty(v5, @"IOUserClass", kCFAllocatorDefault, 0);
      if (!v18)
      {
        if (qword_100010218)
        {
          v19 = qword_100010218;
        }

        else
        {
          v19 = &_os_log_default;
        }

        sub_100007804(v19, "Property read for %s returned NULL\n", "IOUserClass");
        if (dword_100010220)
        {
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v49 = v20;
          v50 = v20;
          v47 = v20;
          v48 = v20;
          v45 = v20;
          v46 = v20;
          *v43 = v20;
          v44 = v20;
          usedBufLen = 0xAAAAAAAAAAAAAAAALL;
          time(&usedBufLen);
          v21 = localtime(&usedBufLen);
          strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v21);
          dprintf(dword_100010220, "%s ", v43);
          dprintf(dword_100010220, "Property read for %s returned NULL\n", "IOUserClass");
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_100007804(v15, "We are using IOKit driver\n");
      if (dword_100010220)
      {
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49 = v22;
        v50 = v22;
        v47 = v22;
        v48 = v22;
        v45 = v22;
        v46 = v22;
        *v43 = v22;
        v44 = v22;
        usedBufLen = 0xAAAAAAAAAAAAAAAALL;
        time(&usedBufLen);
        v23 = localtime(&usedBufLen);
        strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v23);
        dprintf(dword_100010220, "%s ", v43);
        dprintf(dword_100010220, "We are using IOKit driver\n");
      }

      v18 = IOObjectCopyClass(v5);
      if (!v18)
      {
        goto LABEL_51;
      }
    }

    v24 = v18;
    if (CFStringCompare(v18, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
    {
      v25 = qword_100010218;
      CStringPtr = CFStringGetCStringPtr(v24, 0);
      v27 = &_os_log_default;
      if (v25)
      {
        v27 = v25;
      }

      sub_100007804(v27, "Matched class name '%s', starting ...\n", CStringPtr);
      if (dword_100010220)
      {
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49 = v28;
        v50 = v28;
        v47 = v28;
        v48 = v28;
        v45 = v28;
        v46 = v28;
        *v43 = v28;
        v44 = v28;
        usedBufLen = 0xAAAAAAAAAAAAAAAALL;
        time(&usedBufLen);
        v29 = localtime(&usedBufLen);
        strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v29);
        dprintf(dword_100010220, "%s ", v43);
        v30 = dword_100010220;
        v31 = CFStringGetCStringPtr(v24, 0);
        dprintf(v30, "Matched class name '%s', starting ...\n", v31);
      }

      if (qword_100010218)
      {
        v32 = qword_100010218;
      }

      else
      {
        v32 = &_os_log_default;
      }

      sub_100007804(v32, "%s()\n", "startWiFiFirmwareLoaderService");
      if (dword_100010220)
      {
        *&v33 = 0xAAAAAAAAAAAAAAAALL;
        *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49 = v33;
        v50 = v33;
        v47 = v33;
        v48 = v33;
        v45 = v33;
        v46 = v33;
        *v43 = v33;
        v44 = v33;
        usedBufLen = 0xAAAAAAAAAAAAAAAALL;
        time(&usedBufLen);
        v34 = localtime(&usedBufLen);
        strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v34);
        dprintf(dword_100010220, "%s ", v43);
        dprintf(dword_100010220, "%s()\n", "startWiFiFirmwareLoaderService");
      }

      v3 = &stru_100010000;
      if (qword_100010100 == 2)
      {
        if (qword_100010218)
        {
          v35 = qword_100010218;
        }

        else
        {
          v35 = &_os_log_default;
        }

        sub_100007804(v35, "No free interface slot, ignoring service..");
        v2 = a1;
        if (dword_100010220)
        {
          *&v36 = 0xAAAAAAAAAAAAAAAALL;
          *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v49 = v36;
          v50 = v36;
          v47 = v36;
          v48 = v36;
          v45 = v36;
          v46 = v36;
          *v43 = v36;
          v44 = v36;
          usedBufLen = 0xAAAAAAAAAAAAAAAALL;
          time(&usedBufLen);
          v37 = localtime(&usedBufLen);
          strftime(v43, 0x80uLL, "%b %d %H:%M:%S", v37);
          dprintf(dword_100010220, "%s ", v43);
          dprintf(dword_100010220, "No free interface slot, ignoring service..");
        }
      }

      else
      {
        if (qword_100010100 >= 2)
        {
          __break(0x5512u);
LABEL_55:
          __break(0x5500u);
LABEL_56:
          __break(0x5513u);
        }

        v2 = a1;
        if (120 * qword_100010100 > ~&unk_100010108)
        {
          goto LABEL_56;
        }

        v38 = &unk_100010058 + 120 * qword_100010100;
        *(v38 + 48) = 1;
        *(v38 + 46) = v5;
        pthread_create(v38 + 22, 0, sub_1000015F4, v38 + 176);
        if (__OFADD__(qword_100010100, 1))
        {
          goto LABEL_55;
        }

        LODWORD(qword_100010100) = qword_100010100 + 1;
      }
    }

    CFRelease(v24);
LABEL_51:
    if (!*v2)
    {
      *v2 = v5;
    }
  }
}

void sub_1000015F4(uint64_t a1)
{
  v1 = a1;
  *(a1 + 12) = 0x100000001;
  if (byte_100010010)
  {
    v2 = @"/System/Library/DriverExtensions/com.apple.DriverKit-AppleBCMWLAN.dext/Firmware/";
  }

  else
  {
    v2 = @"/usr/share/firmware/wifi/";
  }

  v362 = v2;
  if (*(&xmmword_1000100A0 + 1))
  {
    v3 = kCFAllocatorDefault;
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 255, *(&xmmword_1000100A0 + 1));
    *(v1 + 112) = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_15;
    }

    v5 = *(v1 + 8);
    v408 = 0u;
    v409 = 0u;
    v406 = 0u;
    v407 = 0u;
    v404 = 0u;
    v405 = 0u;
    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    memset(cStr, 0, sizeof(cStr));
    size[0] = 0;
    if (!v5)
    {
      goto LABEL_15;
    }

    if (!CFStringGetCStringPtr(MutableCopy, 0))
    {
      goto LABEL_15;
    }

    CFStringGetCStringPtr(*(v1 + 112), 0);
    __strlcpy_chk();
    if (!sub_1000073A0(cStr, size))
    {
      goto LABEL_15;
    }

    if (size[0] - 0x2000 <= 0xFFFFFFFFFFFFE080)
    {
      if (qword_100010218)
      {
        v96 = qword_100010218;
      }

      else
      {
        v96 = &_os_log_default;
      }

      sub_100007804(v96, "msf cal file is too big or too small\n");
      if (dword_100010220)
      {
        *&v97 = 0xAAAAAAAAAAAAAAAALL;
        *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v97;
        v386 = v97;
        v383 = v97;
        v384 = v97;
        v381 = v97;
        v382 = v97;
        outputStruct = v97;
        v380 = v97;
        length = 0xAAAAAAAAAAAAAAAALL;
        time(&length);
        v98 = localtime(&length);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v98);
        dprintf(dword_100010220, "%s ", &outputStruct);
        dprintf(dword_100010220, "msf cal file is too big or too small\n");
      }
    }

    else
    {
      v6 = malloc_type_malloc(size[0], 0x100004077774924uLL);
      if (v6)
      {
        v7 = v6;
        length = size[0];
        if (sub_100007AC8(cStr, v6, &length))
        {
          v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, length, kCFAllocatorNull);
          if (v8)
          {
            v9 = v8;
            IORegistryEntrySetCFProperty(v5, @"WiFiMSFCal", v8);
            free(v7);
            CFRelease(v9);
            goto LABEL_15;
          }

          if (qword_100010218)
          {
            v105 = qword_100010218;
          }

          else
          {
            v105 = &_os_log_default;
          }

          sub_100007804(v105, "failed to create MSF Data Ref\n");
          if (dword_100010220)
          {
            *&v106 = 0xAAAAAAAAAAAAAAAALL;
            *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v385 = v106;
            v386 = v106;
            v383 = v106;
            v384 = v106;
            v381 = v106;
            v382 = v106;
            outputStruct = v106;
            v380 = v106;
            v370 = 0xAAAAAAAAAAAAAAAALL;
            time(&v370);
            v107 = localtime(&v370);
            strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v107);
            dprintf(dword_100010220, "%s ", &outputStruct);
            dprintf(dword_100010220, "failed to create MSF Data Ref\n");
          }
        }

        else
        {
          if (qword_100010218)
          {
            v102 = qword_100010218;
          }

          else
          {
            v102 = &_os_log_default;
          }

          sub_100007804(v102, "copy MSF CAL failed\n");
          if (dword_100010220)
          {
            *&v103 = 0xAAAAAAAAAAAAAAAALL;
            *(&v103 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v385 = v103;
            v386 = v103;
            v383 = v103;
            v384 = v103;
            v381 = v103;
            v382 = v103;
            outputStruct = v103;
            v380 = v103;
            v370 = 0xAAAAAAAAAAAAAAAALL;
            time(&v370);
            v104 = localtime(&v370);
            strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v104);
            dprintf(dword_100010220, "%s ", &outputStruct);
            dprintf(dword_100010220, "copy MSF CAL failed\n");
          }
        }

        free(v7);
      }

      else
      {
        if (qword_100010218)
        {
          v99 = qword_100010218;
        }

        else
        {
          v99 = &_os_log_default;
        }

        sub_100007804(v99, "failed to alloc memory for msf cal\n");
        if (dword_100010220)
        {
          *&v100 = 0xAAAAAAAAAAAAAAAALL;
          *(&v100 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v385 = v100;
          v386 = v100;
          v383 = v100;
          v384 = v100;
          v381 = v100;
          v382 = v100;
          outputStruct = v100;
          v380 = v100;
          length = 0xAAAAAAAAAAAAAAAALL;
          time(&length);
          v101 = localtime(&length);
          strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v101);
          dprintf(dword_100010220, "%s ", &outputStruct);
          dprintf(dword_100010220, "failed to alloc memory for msf cal\n");
        }
      }
    }
  }

  else
  {
    *(a1 + 112) = 0;
    v3 = kCFAllocatorDefault;
  }

LABEL_15:
  if (xmmword_1000100A0)
  {
    v10 = CFStringCreateMutableCopy(v3, 255, xmmword_1000100A0);
  }

  else
  {
    v10 = 0;
  }

  *(v1 + 104) = v10;
  CFProperty = IORegistryEntryCreateCFProperty(*(v1 + 8), @"FirmwareLoaded", v3, 0);
  if (CFProperty)
  {
    v12 = CFProperty;
    v13 = CFBooleanGetValue(CFProperty) != 0;
    CFRelease(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + 8);
  length = 0;
  size[0] = 0;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v408 = v15;
  v409 = v15;
  v406 = v15;
  v407 = v15;
  v404 = v15;
  v405 = v15;
  v402 = v15;
  v403 = v15;
  v400 = v15;
  v401 = v15;
  v398 = v15;
  v399 = v15;
  v396 = v15;
  v397 = v15;
  *cStr = v15;
  *&cStr[16] = v15;
  v16 = *(v1 + 104);
  if (v16)
  {
    CFStringGetCStringPtr(v16, 0);
    __strlcpy_chk();
    v17 = 0;
  }

  else
  {
    v18 = IORegistryEntryCreateCFProperty(v14, @"PlatformConfigFileName", v3, 0);
    if (!v18)
    {
      if (qword_100010218)
      {
        v108 = qword_100010218;
      }

      else
      {
        v108 = &_os_log_default;
      }

      sub_100007804(v108, "no PlatformConfigFileName in ioreg\n");
      if (dword_100010220)
      {
        *&v109 = 0xAAAAAAAAAAAAAAAALL;
        *(&v109 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v109;
        v386 = v109;
        v383 = v109;
        v384 = v109;
        v381 = v109;
        v382 = v109;
        outputStruct = v109;
        v380 = v109;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v110 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v110);
        dprintf(dword_100010220, "%s ", &outputStruct);
        v17 = 0;
        v35 = 0;
        v31 = 0;
        v33 = 0;
        dprintf(dword_100010220, "no PlatformConfigFileName in ioreg\n");
        goto LABEL_177;
      }

      v17 = 0;
      goto LABEL_175;
    }

    v17 = v18;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v17))
    {
      if (qword_100010218)
      {
        v111 = qword_100010218;
      }

      else
      {
        v111 = &_os_log_default;
      }

      sub_100007804(v111, "PlatformConfigFileName is not CFstring!\n");
      if (dword_100010220)
      {
        *&v112 = 0xAAAAAAAAAAAAAAAALL;
        *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v112;
        v386 = v112;
        v383 = v112;
        v384 = v112;
        v381 = v112;
        v382 = v112;
        outputStruct = v112;
        v380 = v112;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v113 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v113);
        dprintf(dword_100010220, "%s ", &outputStruct);
        v35 = 0;
        v31 = 0;
        v33 = 0;
        dprintf(dword_100010220, "PlatformConfigFileName is not CFstring!\n");
        goto LABEL_177;
      }

      goto LABEL_175;
    }

    if (byte_100010010 == 1)
    {
      __strlcpy_chk();
      __strlcat_chk();
      __strlcat_chk();
      if (qword_100010218)
      {
        v20 = qword_100010218;
      }

      else
      {
        v20 = &_os_log_default;
      }

      sub_100007804(v20, "platformType:'%s' platformConfig path:'%s'\n", &xmmword_100010011, cStr);
      if (dword_100010220)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v21;
        v386 = v21;
        v383 = v21;
        v384 = v21;
        v381 = v21;
        v382 = v21;
        outputStruct = v21;
        v380 = v21;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v22 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v22);
        dprintf(dword_100010220, "%s ", &outputStruct);
        dprintf(dword_100010220, "platformType:'%s' platformConfig path:'%s'\n", &xmmword_100010011, cStr);
      }
    }

    else
    {
      __strlcpy_chk();
    }

    CFStringGetCStringPtr(v17, 0);
    __strlcat_chk();
  }

  v23 = sub_1000073A0(cStr, &length);
  if (qword_100010218)
  {
    v24 = qword_100010218;
  }

  else
  {
    v24 = &_os_log_default;
  }

  sub_100007804(v24, "config full name %s size %zu\n", cStr, length);
  if (dword_100010220)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v385 = v25;
    v386 = v25;
    v383 = v25;
    v384 = v25;
    v381 = v25;
    v382 = v25;
    outputStruct = v25;
    v380 = v25;
    v370 = 0xAAAAAAAAAAAAAAAALL;
    time(&v370);
    v26 = localtime(&v370);
    strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v26);
    dprintf(dword_100010220, "%s ", &outputStruct);
    dprintf(dword_100010220, "config full name %s size %zu\n", cStr, length);
  }

  if (!v23)
  {
LABEL_175:
    v35 = 0;
    v31 = 0;
LABEL_176:
    v33 = 0;
    goto LABEL_177;
  }

  if (qword_100010218)
  {
    v27 = qword_100010218;
  }

  else
  {
    v27 = &_os_log_default;
  }

  if ((length - 0x2000) <= 0xFFFFFFFFFFFFE080)
  {
    sub_100007804(v27, "Platform config file is too big or too small\n");
    if (dword_100010220)
    {
      *&v71 = 0xAAAAAAAAAAAAAAAALL;
      *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v71;
      v386 = v71;
      v383 = v71;
      v384 = v71;
      v381 = v71;
      v382 = v71;
      outputStruct = v71;
      v380 = v71;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v72 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(dword_100010220, "%s ", &outputStruct);
      v35 = 0;
      v31 = 0;
      v33 = 0;
      dprintf(dword_100010220, "Platform config file is too big or too small\n");
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  sub_100007804(v27, "config full name %s\n", cStr);
  if (dword_100010220)
  {
    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v385 = v28;
    v386 = v28;
    v383 = v28;
    v384 = v28;
    v381 = v28;
    v382 = v28;
    outputStruct = v28;
    v380 = v28;
    v370 = 0xAAAAAAAAAAAAAAAALL;
    time(&v370);
    v29 = localtime(&v370);
    strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v29);
    dprintf(dword_100010220, "%s ", &outputStruct);
    dprintf(dword_100010220, "config full name %s\n", cStr);
  }

  v30 = CFStringCreateWithCString(0, cStr, 0);
  if (!v30)
  {
    if (qword_100010218)
    {
      v73 = qword_100010218;
    }

    else
    {
      v73 = &_os_log_default;
    }

    sub_100007804(v73, "fail to create CFStringRef for file w path\n");
    if (dword_100010220)
    {
      *&v74 = 0xAAAAAAAAAAAAAAAALL;
      *(&v74 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v74;
      v386 = v74;
      v383 = v74;
      v384 = v74;
      v381 = v74;
      v382 = v74;
      outputStruct = v74;
      v380 = v74;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v75 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(dword_100010220, "%s ", &outputStruct);
      v35 = 0;
      v31 = 0;
      v33 = 0;
      dprintf(dword_100010220, "fail to create CFStringRef for file w path\n");
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  v31 = v30;
  v32 = CFURLCreateWithFileSystemPath(v3, v30, kCFURLPOSIXPathStyle, 0);
  if (!v32)
  {
    if (qword_100010218)
    {
      v76 = qword_100010218;
    }

    else
    {
      v76 = &_os_log_default;
    }

    sub_100007804(v76, "fail to create fileURL\n");
    if (dword_100010220)
    {
      *&v77 = 0xAAAAAAAAAAAAAAAALL;
      *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v77;
      v386 = v77;
      v383 = v77;
      v384 = v77;
      v381 = v77;
      v382 = v77;
      outputStruct = v77;
      v380 = v77;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v78 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v78);
      dprintf(dword_100010220, "%s ", &outputStruct);
      v35 = 0;
      v33 = 0;
      dprintf(dword_100010220, "fail to create fileURL\n");
      goto LABEL_177;
    }

    v35 = 0;
    goto LABEL_176;
  }

  v33 = v32;
  v34 = CFReadStreamCreateWithFile(v3, v32);
  if (!v34)
  {
    if (qword_100010218)
    {
      v79 = qword_100010218;
    }

    else
    {
      v79 = &_os_log_default;
    }

    sub_100007804(v79, "fail to create fileStream\n");
    if (dword_100010220)
    {
      *&v80 = 0xAAAAAAAAAAAAAAAALL;
      *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v80;
      v386 = v80;
      v383 = v80;
      v384 = v80;
      v381 = v80;
      v382 = v80;
      outputStruct = v80;
      v380 = v80;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v81 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v81);
      dprintf(dword_100010220, "%s ", &outputStruct);
      v35 = 0;
      dprintf(dword_100010220, "fail to create fileStream\n");
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_177;
  }

  v35 = v34;
  v36 = CFReadStreamOpen(v34);
  if (!v36)
  {
    if (qword_100010218)
    {
      v82 = qword_100010218;
    }

    else
    {
      v82 = &_os_log_default;
    }

    sub_100007804(v82, "fail to open fileStream\n");
    if (dword_100010220)
    {
      *&v83 = 0xAAAAAAAAAAAAAAAALL;
      *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v83;
      v386 = v83;
      v383 = v83;
      v384 = v83;
      v381 = v83;
      v382 = v83;
      outputStruct = v83;
      v380 = v83;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v84 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v84);
      dprintf(dword_100010220, "%s ", &outputStruct);
      dprintf(dword_100010220, "fail to open fileStream\n");
    }

LABEL_177:
    v48 = 0;
    v39 = 0;
    v366 = 0;
    v67 = v35 != 0;
    if (!v17)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

  v37 = v36;
  entry = v14;
  v38 = CFPropertyListCreateWithStream(v3, v35, 0, 2uLL, 0, size);
  v39 = v38;
  if (!v38)
  {
    CFReadStreamClose(v35);
LABEL_131:
    v48 = 0;
    v366 = 0;
    goto LABEL_90;
  }

  cf = v38;
  if (qword_100010218)
  {
    v40 = qword_100010218;
  }

  else
  {
    v40 = &_os_log_default;
  }

  sub_100007804(v40, "Setting property list  errorCode:%d, status:%u\n", 0, v37);
  if (dword_100010220)
  {
    *&v41 = 0xAAAAAAAAAAAAAAAALL;
    *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v385 = v41;
    v386 = v41;
    v383 = v41;
    v384 = v41;
    v381 = v41;
    v382 = v41;
    outputStruct = v41;
    v380 = v41;
    v370 = 0xAAAAAAAAAAAAAAAALL;
    time(&v370);
    v42 = localtime(&v370);
    strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v42);
    dprintf(dword_100010220, "%s ", &outputStruct);
    dprintf(dword_100010220, "Setting property list  errorCode:%d, status:%u\n", 0, v37);
  }

  if (size[0])
  {
    if (qword_100010218)
    {
      v85 = qword_100010218;
    }

    else
    {
      v85 = &_os_log_default;
    }

    sub_100007804(v85, "fail to create property list\n");
    v39 = cf;
    if (dword_100010220)
    {
      *&v86 = 0xAAAAAAAAAAAAAAAALL;
      *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v86;
      v386 = v86;
      v383 = v86;
      v384 = v86;
      v381 = v86;
      v382 = v86;
      outputStruct = v86;
      v380 = v86;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v87 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v87);
      dprintf(dword_100010220, "%s ", &outputStruct);
      dprintf(dword_100010220, "fail to create property list\n");
    }

    goto LABEL_131;
  }

  v43 = CFDictionaryGetTypeID();
  v39 = cf;
  if (v43 != CFGetTypeID(cf))
  {
    if (qword_100010218)
    {
      v88 = qword_100010218;
    }

    else
    {
      v88 = &_os_log_default;
    }

    sub_100007804(v88, "Propery list is not CFDictionary!\n");
    if (dword_100010220)
    {
      *&v89 = 0xAAAAAAAAAAAAAAAALL;
      *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v89;
      v386 = v89;
      v383 = v89;
      v384 = v89;
      v381 = v89;
      v382 = v89;
      outputStruct = v89;
      v380 = v89;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v90 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v90);
      dprintf(dword_100010220, "%s ", &outputStruct);
      dprintf(dword_100010220, "Propery list is not CFDictionary!\n");
    }

    goto LABEL_131;
  }

  Count = CFDictionaryGetCount(cf);
  if (Count != Count)
  {
    goto LABEL_621;
  }

  v358 = v17;
  v359 = v1;
  if (Count >> 61)
  {
LABEL_622:
    __break(0x550Cu);
    return;
  }

  v45 = 8 * Count;
  v46 = malloc_type_malloc(v45, 0x6004044C4A2DFuLL);
  if (v46)
  {
    v47 = v46;
    v356 = v35;
    v357 = v31;
    v361 = v13;
    CFDictionaryGetKeysAndValues(cf, v46, 0);
    v48 = 0;
    v49 = 0;
    v366 = v47;
    while (v49 < CFDictionaryGetCount(v39))
    {
      if (v49 >> 60 || ((v49 & 0x1000000000000000) != 0) == 8 * v49 <= ~v47)
      {
        goto LABEL_619;
      }

      if (v49 == v45 >> 3)
      {
        __break(1u);
LABEL_619:
        __break(0x5513u);
LABEL_620:
        __break(0x5500u);
      }

      CStringPtr = CFStringGetCStringPtr(v47[v49], 0);
      v51 = 0;
      v52 = qword_100010218;
      v53 = 1;
      do
      {
        if (!strcmp(CStringPtr, off_10000C468[v51]))
        {
          break;
        }

        v53 = v51++ < 0x32;
      }

      while (v51 != 51);
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = &_os_log_default;
      }

      sub_100007804(v54, "%5ld: %s allow: %d\n", v49, CStringPtr, v53);
      if (dword_100010220)
      {
        *&v55 = 0xAAAAAAAAAAAAAAAALL;
        *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v55;
        v386 = v55;
        v383 = v55;
        v384 = v55;
        v381 = v55;
        v382 = v55;
        outputStruct = v55;
        v380 = v55;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v56 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v56);
        dprintf(dword_100010220, "%s ", &outputStruct);
        v57 = 0;
        v58 = dword_100010220;
        v59 = 1;
        do
        {
          if (!strcmp(CStringPtr, off_10000C468[v57]))
          {
            break;
          }

          v59 = v57++ < 0x32;
        }

        while (v57 != 51);
        dprintf(v58, "%5ld: %s allow: %d\n", v49, CStringPtr, v59);
      }

      v60 = 0;
      v61 = 1;
      do
      {
        if (!strcmp(CStringPtr, off_10000C468[v60]))
        {
          break;
        }

        v61 = v60++ < 0x32;
      }

      while (v60 != 51);
      v39 = cf;
      if (!v61)
      {
        if (qword_100010218)
        {
          v68 = qword_100010218;
        }

        else
        {
          v68 = &_os_log_default;
        }

        sub_100007804(v68, "key not in allowList\n");
        if (dword_100010220)
        {
          *&v69 = 0xAAAAAAAAAAAAAAAALL;
          *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v385 = v69;
          v386 = v69;
          v383 = v69;
          v384 = v69;
          v381 = v69;
          v382 = v69;
          outputStruct = v69;
          v380 = v69;
          v370 = 0xAAAAAAAAAAAAAAAALL;
          time(&v370);
          v70 = localtime(&v370);
          strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v70);
          dprintf(dword_100010220, "%s ", &outputStruct);
          dprintf(dword_100010220, "key not in allowList\n");
        }

        v1 = v359;
        v13 = v361;
        v31 = v357;
        v17 = v358;
        v35 = v356;
        goto LABEL_90;
      }

      if (!strncmp(CStringPtr, "wlan.is.fdr.cal", 0x10uLL))
      {
        v48 = 1;
      }

      ++v49;
    }

    v62 = CFDictionaryGetTypeID();
    v63 = CFGetTypeID(v39);
    if (qword_100010218)
    {
      v64 = qword_100010218;
    }

    else
    {
      v64 = &_os_log_default;
    }

    v1 = v359;
    v35 = v356;
    if (v62 == v63)
    {
      sub_100007804(v64, "%s isFdrCal %d\n", "writePlatformConfig", v48);
      v17 = v358;
      v13 = v361;
      if (dword_100010220)
      {
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v65;
        v386 = v65;
        v383 = v65;
        v384 = v65;
        v381 = v65;
        v382 = v65;
        outputStruct = v65;
        v380 = v65;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v66 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v66);
        dprintf(dword_100010220, "%s ", &outputStruct);
        v39 = cf;
        dprintf(dword_100010220, "%s isFdrCal %d\n", "writePlatformConfig", v48);
      }

      IORegistryEntrySetCFProperty(entry, @"PlatformConfig", v39);
      v31 = v357;
    }

    else
    {
      sub_100007804(v64, "Propery list is not CFDictionary!\n");
      v17 = v358;
      v13 = v361;
      v31 = v357;
      if (dword_100010220)
      {
        *&v94 = 0xAAAAAAAAAAAAAAAALL;
        *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v94;
        v386 = v94;
        v383 = v94;
        v384 = v94;
        v381 = v94;
        v382 = v94;
        outputStruct = v94;
        v380 = v94;
        v370 = 0xAAAAAAAAAAAAAAAALL;
        time(&v370);
        v95 = localtime(&v370);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v95);
        dprintf(dword_100010220, "%s ", &outputStruct);
        dprintf(dword_100010220, "Propery list is not CFDictionary!\n");
      }

      v39 = cf;
    }
  }

  else
  {
    if (qword_100010218)
    {
      v91 = qword_100010218;
    }

    else
    {
      v91 = &_os_log_default;
    }

    sub_100007804(v91, "fail to allocate memory for keys\n");
    if (dword_100010220)
    {
      *&v92 = 0xAAAAAAAAAAAAAAAALL;
      *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v92;
      v386 = v92;
      v383 = v92;
      v384 = v92;
      v381 = v92;
      v382 = v92;
      outputStruct = v92;
      v380 = v92;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      time(&v370);
      v93 = localtime(&v370);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v93);
      dprintf(dword_100010220, "%s ", &outputStruct);
      dprintf(dword_100010220, "fail to allocate memory for keys\n");
    }

    v48 = 0;
    v366 = 0;
  }

LABEL_90:
  CFReadStreamClose(v35);
  v67 = 1;
  if (v17)
  {
LABEL_178:
    CFRelease(v17);
  }

LABEL_179:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v67)
  {
    CFRelease(v35);
  }

  if (size[0])
  {
    CFRelease(size[0]);
  }

  size[0] = 0;
  if (v39)
  {
    CFRelease(v39);
  }

  if (v366)
  {
    free(v366);
  }

  v114 = *(v1 + 8);
  if (!qword_100010210)
  {
    pthread_once(&stru_100010000, sub_100007164);
  }

  Instance = _CFRuntimeCreateInstance();
  v116 = &stru_100010000;
  if (!Instance)
  {
    goto LABEL_584;
  }

  v117 = Instance;
  *(Instance + 20) = 0;
  v118 = (Instance + 20);
  *(Instance + 16) = v114;
  if (IOServiceOpen(v114, mach_task_self_, 0x57694669u, (Instance + 20)) || IOConnectCallScalarMethod(*v118, 0, 0, 0, 0, 0))
  {
    CFRelease(v117);
LABEL_584:
    *(v1 + 24) = 0;
    goto LABEL_475;
  }

  *(v117 + 24) = 1;
  *(v1 + 24) = v117;
  v119 = IORegistryEntryCreateCFProperty(*(v117 + 16), @"RequestedFiles", v3, 0);
  *(v1 + 32) = v119;
  if (!v119)
  {
    goto LABEL_475;
  }

  *(v1 + 40) = IORegistryEntryCreateCFProperty(*(*(v1 + 24) + 16), @"FileExtensions", v3, 0);
  v120 = IORegistryEntryCreateCFProperty(*(*(v1 + 24) + 16), @"RequestedFilesOverride", v3, 0);
  *(v1 + 48) = v120;
  v121 = *(v1 + 32);
  if (v120)
  {
    Value = CFDictionaryGetValue(v120, @"wifi-fw-path");
    v123 = *(&xmmword_100010070 + 1);
    if (!*(&xmmword_100010070 + 1))
    {
      v124 = Value;
      if (Value)
      {
        v125 = CFGetTypeID(Value);
        if (v125 == CFDataGetTypeID())
        {
          v126 = CFStringCreateFromExternalRepresentation(v3, v124, 0);
          goto LABEL_205;
        }
      }

      goto LABEL_204;
    }

LABEL_203:
    v126 = CFStringCreateMutableCopy(v3, 255, v123);
    goto LABEL_205;
  }

  v123 = *(&xmmword_100010070 + 1);
  if (*(&xmmword_100010070 + 1))
  {
    goto LABEL_203;
  }

LABEL_204:
  v126 = sub_1000082E0(v121, @"Firmware", dword_1000100E8, v362);
LABEL_205:
  v127 = v126;
  v128 = &stru_100010000;
  if (BYTE1(dword_1000100B0) == 1)
  {
    v129 = CFStringGetCStringPtr(v126, 0);
    v130 = &unk_10000A556;
    if (v129)
    {
      v130 = v129;
    }

    fprintf(__stdoutp, "Resolved to Firmware file path: %s\n", v130);
  }

  *(v1 + 64) = v127;
  if (!v127)
  {
    goto LABEL_383;
  }

  if (qword_100010218)
  {
    v131 = qword_100010218;
  }

  else
  {
    v131 = &_os_log_default;
  }

  sub_100007804(v131, "%s: enter\n", "handleFdr");
  v132 = &stru_100010000;
  if (dword_100010220)
  {
    *&v133 = 0xAAAAAAAAAAAAAAAALL;
    *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v133;
    v401 = v133;
    v398 = v133;
    v399 = v133;
    v396 = v133;
    v397 = v133;
    *cStr = v133;
    *&cStr[16] = v133;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v134 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v134);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "%s: enter\n", "handleFdr");
  }

  if (v48)
  {
    if (qword_100010218)
    {
      v135 = qword_100010218;
    }

    else
    {
      v135 = &_os_log_default;
    }

    if (BYTE1(dword_1000100B0) == 1)
    {
      sub_100007804(v135, "%s: showFilesOnly mode does not need FDR.\n", "handleFdr");
      if (dword_100010220)
      {
        *&v136 = 0xAAAAAAAAAAAAAAAALL;
        *(&v136 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v136;
        v401 = v136;
        v398 = v136;
        v399 = v136;
        v396 = v136;
        v397 = v136;
        *cStr = v136;
        *&cStr[16] = v136;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v137 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v137);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s: showFilesOnly mode does not need FDR.\n");
      }

      goto LABEL_295;
    }

    sub_100007804(v135, "%s enter\n", "getFDRCal");
    if (dword_100010220)
    {
      *&v141 = 0xAAAAAAAAAAAAAAAALL;
      *(&v141 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v141;
      v401 = v141;
      v398 = v141;
      v399 = v141;
      v396 = v141;
      v397 = v141;
      *cStr = v141;
      *&cStr[16] = v141;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v142 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v142);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "%s enter\n", "getFDRCal");
    }

    LODWORD(v370) = 0;
    if (qword_100010218)
    {
      v143 = qword_100010218;
    }

    else
    {
      v143 = &_os_log_default;
    }

    sub_100007804(v143, "%s enter\n", "findHwIdentifiersPolling");
    *&v144 = 0xAAAAAAAAAAAAAAAALL;
    *(&v144 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v144;
    v401 = v144;
    v398 = v144;
    v399 = v144;
    v396 = v144;
    v397 = v144;
    *cStr = v144;
    *&cStr[16] = v144;
    if (dword_100010220)
    {
      v385 = v144;
      v386 = v144;
      v383 = v144;
      v384 = v144;
      v381 = v144;
      v382 = v144;
      outputStruct = v144;
      v380 = v144;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v145 = localtime(size);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v145);
      dprintf(dword_100010220, "%s ", &outputStruct);
      dprintf(dword_100010220, "%s enter\n", "findHwIdentifiersPolling");
    }

    cfa = IORegistryGetRootEntry(kIOMainPortDefault);
    if (!cfa || IORegistryCreateIterator(kIOMainPortDefault, "IOService", 0, &v370))
    {
      v165 = 1;
    }

    else
    {
      v146 = v3;
      v147 = 1;
      v367 = 1;
      while (1)
      {
        v148 = IOIteratorNext(v370);
        if (!v148)
        {
          break;
        }

        v149 = v148;
        strcpy(cStr, "IOPlatformExpertDevice");
        if (IOObjectConformsTo(v148, cStr))
        {
          v360 = v1;
          do
          {
            if (qword_100010218)
            {
              v150 = qword_100010218;
            }

            else
            {
              v150 = &_os_log_default;
            }

            sub_100007804(v150, "%s Find HWIdentifiers...%d\n", "findHwIdentifiersPolling", v147);
            if (dword_100010220)
            {
              *&v151 = 0xAAAAAAAAAAAAAAAALL;
              *(&v151 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v385 = v151;
              v386 = v151;
              v383 = v151;
              v384 = v151;
              v381 = v151;
              v382 = v151;
              outputStruct = v151;
              v380 = v151;
              size[0] = 0xAAAAAAAAAAAAAAAALL;
              time(size);
              v152 = localtime(size);
              strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v152);
              dprintf(dword_100010220, "%s ", &outputStruct);
              dprintf(dword_100010220, "%s Find HWIdentifiers...%d\n", "findHwIdentifiersPolling", v147);
            }

            v153 = IORegistryEntrySearchCFProperty(v149, "IOService", @"HWIdentifiers", v146, 1u);
            v154 = v153;
            if (v147 <= 2 && !v153)
            {
              usleep(0x222E0u);
            }

            v155 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              goto LABEL_620;
            }

            if (v155 > 3)
            {
              break;
            }

            ++v147;
          }

          while (!v154);
          if (v154)
          {
            v156 = CFDictionaryGetValue(v154, @"P");
            *&v157 = 0xAAAAAAAAAAAAAAAALL;
            *(&v157 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v374[12] = v157;
            v373 = v157;
            *v374 = v157;
            *size = v157;
            CFStringGetCString(v156, size, 60, 0x8000100u);
            v158 = CFDictionaryGetValue(v154, @"C");
            LODWORD(valuePtr) = -1431655766;
            CFNumberGetValue(v158, kCFNumberIntType, &valuePtr);
            if (qword_100010218)
            {
              v159 = qword_100010218;
            }

            else
            {
              v159 = &_os_log_default;
            }

            sub_100007804(v159, "%s HWIdentifiers: chipNumber %d platformName %s\n", "findHwIdentifiersPolling", valuePtr, size);
            if (dword_100010220)
            {
              *&v160 = 0xAAAAAAAAAAAAAAAALL;
              *(&v160 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v385 = v160;
              v386 = v160;
              v383 = v160;
              v384 = v160;
              v381 = v160;
              v382 = v160;
              outputStruct = v160;
              v380 = v160;
              length = 0xAAAAAAAAAAAAAAAALL;
              time(&length);
              v161 = localtime(&length);
              strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v161);
              dprintf(dword_100010220, "%s ", &outputStruct);
              dprintf(dword_100010220, "%s HWIdentifiers: chipNumber %d platformName %s\n", "findHwIdentifiersPolling", valuePtr, size);
            }

            v367 = 0;
          }

          else
          {
            if (qword_100010218)
            {
              v162 = qword_100010218;
            }

            else
            {
              v162 = &_os_log_default;
            }

            sub_100007804(v162, "%s No %s in ioreg\n", "findHwIdentifiersPolling", "HWIdentifiers");
            if (dword_100010220)
            {
              *&v163 = 0xAAAAAAAAAAAAAAAALL;
              *(&v163 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v385 = v163;
              v386 = v163;
              v383 = v163;
              v384 = v163;
              v381 = v163;
              v382 = v163;
              outputStruct = v163;
              v380 = v163;
              size[0] = 0xAAAAAAAAAAAAAAAALL;
              time(size);
              v164 = localtime(size);
              strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v164);
              dprintf(dword_100010220, "%s ", &outputStruct);
              dprintf(dword_100010220, "%s No %s in ioreg\n", "findHwIdentifiersPolling", "HWIdentifiers");
            }
          }

          IOObjectRelease(v149);
          v147 = v155;
          v1 = v360;
        }
      }

      if (v147 >= 3)
      {
        IORegistryEntrySetCFProperty(*(v1 + 8), @"HWIdentifiersLate", kCFBooleanTrue);
      }

      v3 = v146;
      v132 = &stru_100010000;
      v128 = &stru_100010000;
      v165 = v367;
    }

    if (v370)
    {
      IOObjectRelease(v370);
    }

    v116 = &stru_100010000;
    if (cfa)
    {
      IOObjectRelease(cfa);
    }

    if (!v165)
    {
      if (qword_100010218)
      {
        v222 = qword_100010218;
      }

      else
      {
        v222 = &_os_log_default;
      }

      sub_100007804(v222, "%s dataClass %s\n", "getFDRCal", "BWCl");
      if (dword_100010220)
      {
        *&v223 = 0xAAAAAAAAAAAAAAAALL;
        *(&v223 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v223;
        v401 = v223;
        v398 = v223;
        v399 = v223;
        v396 = v223;
        v397 = v223;
        *cStr = v223;
        *&cStr[16] = v223;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v224 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v224);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s dataClass %s\n", "getFDRCal", "BWCl");
      }

      v225 = CFStringCreateWithCString(0, "BWCl", 0);
      *&outputStruct = 0;
      v226 = AMFDRSealingMapCopyLocalDictForClass();
      v227 = outputStruct;
      v228 = 1;
      if (v226 && !outputStruct)
      {
        if (qword_100010218)
        {
          v229 = qword_100010218;
        }

        else
        {
          v229 = &_os_log_default;
        }

        sub_100007804(v229, "%s successful fdr\n", "getFDRCal");
        if (dword_100010220)
        {
          *&v230 = 0xAAAAAAAAAAAAAAAALL;
          *(&v230 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v400 = v230;
          v401 = v230;
          v398 = v230;
          v399 = v230;
          v396 = v230;
          v397 = v230;
          *cStr = v230;
          *&cStr[16] = v230;
          size[0] = 0xAAAAAAAAAAAAAAAALL;
          time(size);
          v231 = localtime(size);
          strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v231);
          dprintf(dword_100010220, "%s ", cStr);
          dprintf(dword_100010220, "%s successful fdr\n", "getFDRCal");
        }

        v232 = CFDictionaryGetValue(v226, @"WCAL");
        v228 = v232 == 0;
        if (qword_100010218)
        {
          v233 = qword_100010218;
        }

        else
        {
          v233 = &_os_log_default;
        }

        if (v232)
        {
          sub_100007804(v233, "%s add fdr cal\n", "getFDRCal");
          if (dword_100010220)
          {
            *&v234 = 0xAAAAAAAAAAAAAAAALL;
            *(&v234 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v400 = v234;
            v401 = v234;
            v398 = v234;
            v399 = v234;
            v396 = v234;
            v397 = v234;
            *cStr = v234;
            *&cStr[16] = v234;
            size[0] = 0xAAAAAAAAAAAAAAAALL;
            time(size);
            v235 = localtime(size);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v235);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s add fdr cal\n", "getFDRCal");
          }

          IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiFdrCal", v232);
          v132 = &stru_100010000;
          v116 = &stru_100010000;
        }

        else
        {
          sub_100007804(v233, "%s failed dict get value\n", "getFDRCal");
          v132 = &stru_100010000;
          if (dword_100010220)
          {
            *&v331 = 0xAAAAAAAAAAAAAAAALL;
            *(&v331 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v400 = v331;
            v401 = v331;
            v398 = v331;
            v399 = v331;
            v396 = v331;
            v397 = v331;
            *cStr = v331;
            *&cStr[16] = v331;
            size[0] = 0xAAAAAAAAAAAAAAAALL;
            time(size);
            v332 = localtime(size);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v332);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s failed dict get value\n", "getFDRCal");
          }
        }

        v227 = outputStruct;
      }

      if (v227)
      {
        CFRelease(v227);
      }

      *&outputStruct = 0;
      if (v225)
      {
        CFRelease(v225);
      }

      if (v226)
      {
        CFRelease(v226);
      }

      CFRelease(@"WCAL");
      if (!v228)
      {
        v173 = "fdr";
LABEL_288:
        v174 = strlen(v173);
        v175 = CFStringCreateWithBytes(v3, v173, v174, 0x8000100u, 0);
        if (qword_100010218)
        {
          v176 = qword_100010218;
        }

        else
        {
          v176 = &_os_log_default;
        }

        if (v175)
        {
          sub_100007804(v176, "%s add msfSource %s\n", "handleFdr", v173);
          if (dword_100010220)
          {
            *&v177 = 0xAAAAAAAAAAAAAAAALL;
            *(&v177 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v400 = v177;
            v401 = v177;
            v398 = v177;
            v399 = v177;
            v396 = v177;
            v397 = v177;
            *cStr = v177;
            *&cStr[16] = v177;
            *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
            time(&outputStruct);
            v178 = localtime(&outputStruct);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v178);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s add msfSource %s\n", "handleFdr", v173);
          }

          IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiMSFSource", v175);
        }

        else
        {
          sub_100007804(v176, "%s failed to create msfSourceRef\n", "handleFdr");
          if (dword_100010220)
          {
            *&v236 = 0xAAAAAAAAAAAAAAAALL;
            *(&v236 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v400 = v236;
            v401 = v236;
            v398 = v236;
            v399 = v236;
            v396 = v236;
            v397 = v236;
            *cStr = v236;
            *&cStr[16] = v236;
            *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
            time(&outputStruct);
            v237 = localtime(&outputStruct);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v237);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s failed to create msfSourceRef\n");
          }
        }

        goto LABEL_295;
      }

      if (qword_100010218)
      {
        v333 = qword_100010218;
      }

      else
      {
        v333 = &_os_log_default;
      }

      sub_100007804(v333, "%s failed\n", "getFDRCal");
      if (dword_100010220)
      {
        *&v334 = 0xAAAAAAAAAAAAAAAALL;
        *(&v334 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v334;
        v401 = v334;
        v398 = v334;
        v399 = v334;
        v396 = v334;
        v397 = v334;
        *cStr = v334;
        *&cStr[16] = v334;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v335 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v335);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s failed\n", "getFDRCal");
      }
    }

    v408 = 0u;
    v409 = 0u;
    v406 = 0u;
    v407 = 0u;
    v404 = 0u;
    v405 = 0u;
    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    memset(cStr, 0, sizeof(cStr));
    length = 0;
    v393 = 0u;
    v394 = 0u;
    v391 = 0u;
    v392 = 0u;
    v389 = 0u;
    v390 = 0u;
    v387 = 0u;
    v388 = 0u;
    v385 = 0u;
    v386 = 0u;
    v383 = 0u;
    v384 = 0u;
    v381 = 0u;
    v382 = 0u;
    outputStruct = 0u;
    v380 = 0u;
    if (byte_100010010 == 1)
    {
      goto LABEL_286;
    }

    if (!sub_100005784(v1, cStr, "cal"))
    {
      if (sub_1000073A0(cStr, &length))
      {
        if ((length - 0x2000) >= 0xFFFFFFFFFFFFE081)
        {
          v166 = malloc_type_malloc(length, 0x100004077774924uLL);
          if (v166)
          {
            v167 = v166;
            v370 = length;
            if (sub_100007AC8(cStr, v166, &v370))
            {
              v168 = CFDataCreateWithBytesNoCopy(v3, v167, v370, kCFAllocatorNull);
              if (v168)
              {
                v169 = v168;
                if (qword_100010218)
                {
                  v170 = qword_100010218;
                }

                else
                {
                  v170 = &_os_log_default;
                }

                sub_100007804(v170, "%s writes %s size %zu to %s\n", "getGenericCalibrationData", cStr, length, "wifi-calibration-gen");
                if (dword_100010220)
                {
                  *&v171 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v171 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v378 = v171;
                  v376 = v171;
                  v377 = v171;
                  *&v374[16] = v171;
                  v375 = v171;
                  v373 = v171;
                  *v374 = v171;
                  *size = v171;
                  valuePtr = 0xAAAAAAAAAAAAAAAALL;
                  time(&valuePtr);
                  v172 = localtime(&valuePtr);
                  strftime(size, 0x80uLL, "%b %d %H:%M:%S", v172);
                  dprintf(dword_100010220, "%s ", size);
                  dprintf(dword_100010220, "%s writes %s size %zu to %s\n", "getGenericCalibrationData", cStr, length, "wifi-calibration-gen");
                }

                IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiGenericCal", v169);
                v132 = &stru_100010000;
                v116 = &stru_100010000;
                if (!sub_100005784(v1, &outputStruct, "clmb"))
                {
                  HIBYTE(dword_1000100B0) = 1;
                  qword_100010088 = CFStringCreateWithCString(0, &outputStruct, 0);
                  free(v167);
LABEL_286:
                  v173 = "genCal";
LABEL_287:
                  v128 = &stru_100010000;
                  goto LABEL_288;
                }
              }
            }

            free(v167);
          }
        }
      }
    }

    v173 = "unavailable";
    goto LABEL_287;
  }

  if (qword_100010218)
  {
    v138 = qword_100010218;
  }

  else
  {
    v138 = &_os_log_default;
  }

  sub_100007804(v138, "%s: platform does not need FDR.\n", "handleFdr");
  if (dword_100010220)
  {
    *&v139 = 0xAAAAAAAAAAAAAAAALL;
    *(&v139 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v139;
    v401 = v139;
    v398 = v139;
    v399 = v139;
    v396 = v139;
    v397 = v139;
    *cStr = v139;
    *&cStr[16] = v139;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v140 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v140);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "%s: platform does not need FDR.\n");
  }

LABEL_295:
  if (BYTE2(dword_1000100B0))
  {
    v179 = 0;
  }

  else
  {
    v179 = v13;
  }

  if (v179 && !BYTE1(dword_1000100B0))
  {
    if (qword_100010218)
    {
      v180 = qword_100010218;
    }

    else
    {
      v180 = &_os_log_default;
    }

    sub_100007804(v180, "Already loaded, bailing use '-r' to force load\n");
    if (dword_100010220)
    {
      *&v181 = 0xAAAAAAAAAAAAAAAALL;
      *(&v181 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v181;
      v401 = v181;
      v398 = v181;
      v399 = v181;
      v396 = v181;
      v397 = v181;
      *cStr = v181;
      *&cStr[16] = v181;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v182 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v182);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "Already loaded, bailing use '-r' to force load\n");
    }

    fwrite("Already loaded, bailing, use '-r' to force load\n", 0x30uLL, 1uLL, __stderrp);
    goto LABEL_474;
  }

  if (byte_1000101F8 == 1)
  {
    v183 = v3;
    v184 = v128;
    if ((qword_1000101FC - 1) > 3)
    {
      v185 = @"PreventUserIdleSystemSleep";
    }

    else
    {
      v185 = off_10000C600[(qword_1000101FC - 1)];
    }

    v186 = HIDWORD(qword_1000101FC);
    v187 = SHIDWORD(qword_1000101FC);
    v188 = qword_100010218;
    v189 = CFStringGetCStringPtr(v185, 0);
    v190 = CFStringGetCStringPtr(@"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", 0);
    v191 = CFStringGetCStringPtr(@"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0);
    v192 = CFStringGetCStringPtr(@"TimeoutActionTurnOff", 0);
    v193 = &_os_log_default;
    if (v188)
    {
      v193 = v188;
    }

    sub_100007804(v193, "_createIOPMHelperCreateAssertion assertionType[%s] assertionName[%s] details[%s] reason[%s] bundle[%s] timeout[%f sec] assertionID[%p] assertionLevel[0x%08x]\n", v189, v190, v191, &unk_10000A556, &unk_10000A556, v187, v192, 0);
    v132 = &stru_100010000;
    if (dword_100010220)
    {
      *&v194 = 0xAAAAAAAAAAAAAAAALL;
      *(&v194 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v194;
      v401 = v194;
      v398 = v194;
      v399 = v194;
      v396 = v194;
      v397 = v194;
      *cStr = v194;
      *&cStr[16] = v194;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v195 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v195);
      dprintf(dword_100010220, "%s ", cStr);
      v196 = dword_100010220;
      v197 = CFStringGetCStringPtr(v185, 0);
      v198 = CFStringGetCStringPtr(@"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", 0);
      v199 = CFStringGetCStringPtr(@"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0);
      v200 = CFStringGetCStringPtr(@"TimeoutActionTurnOff", 0);
      outputStructCnt = v198;
      v132 = &stru_100010000;
      dprintf(v196, "_createIOPMHelperCreateAssertion assertionType[%s] assertionName[%s] details[%s] reason[%s] bundle[%s] timeout[%f sec] assertionID[%p] assertionLevel[0x%08x]\n", v197, outputStructCnt, v199, &unk_10000A556, &unk_10000A556, v187, v200, 0);
    }

    v128 = v184;
    if (v186 <= 0)
    {
      v205 = dword_100010208;
      v201 = -536870911;
      v3 = v183;
      v116 = &stru_100010000;
    }

    else
    {
      LODWORD(size[0]) = 0;
      v201 = IOPMAssertionCreateWithDescription(v185, @"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", @"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0, 0, v187, @"TimeoutActionTurnOff", size);
      if (qword_100010218)
      {
        v202 = qword_100010218;
      }

      else
      {
        v202 = &_os_log_default;
      }

      sub_100007804(v202, "_createIOPMHelperCreateAssertion 'IOPMAssertionCreateWithDescription': return [0x%08x], id[0x%08x]\n", v201, LODWORD(size[0]));
      v3 = v183;
      if (dword_100010220)
      {
        *&v203 = 0xAAAAAAAAAAAAAAAALL;
        *(&v203 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v203;
        v401 = v203;
        v398 = v203;
        v399 = v203;
        v396 = v203;
        v397 = v203;
        *cStr = v203;
        *&cStr[16] = v203;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v204 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v204);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "_createIOPMHelperCreateAssertion 'IOPMAssertionCreateWithDescription': return [0x%08x], id[0x%08x]\n", v201, LODWORD(size[0]));
      }

      v205 = size[0];
      v116 = &stru_100010000;
      dword_100010208 = size[0];
    }

    if (qword_100010218)
    {
      v206 = qword_100010218;
    }

    else
    {
      v206 = &_os_log_default;
    }

    sub_100007804(v206, "wifiFirmwareLoaderServiceThread: _createIOPMHelperCreateAssertion return[0x%08x], id[0x%08x]\n", v201, v205);
    if (dword_100010220)
    {
      *&v207 = 0xAAAAAAAAAAAAAAAALL;
      *(&v207 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v207;
      v401 = v207;
      v398 = v207;
      v399 = v207;
      v396 = v207;
      v397 = v207;
      *cStr = v207;
      *&cStr[16] = v207;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v208 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v208);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: _createIOPMHelperCreateAssertion return[0x%08x], id[0x%08x]\n", v201, dword_100010208);
    }
  }

  v209 = CFStringGetCStringPtr(*(v1 + 64), 0);
  if (qword_100010218)
  {
    v210 = qword_100010218;
  }

  else
  {
    v210 = &_os_log_default;
  }

  sub_100007804(v210, "full path firmwareName is %s\n", v209);
  if (dword_100010220)
  {
    *&v211 = 0xAAAAAAAAAAAAAAAALL;
    *(&v211 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v211;
    v401 = v211;
    v398 = v211;
    v399 = v211;
    v396 = v211;
    v397 = v211;
    *cStr = v211;
    *&cStr[16] = v211;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v212 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v212);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "full path firmwareName is %s\n", v209);
  }

  if ((sub_1000073A0(v209, &qword_1000100B8) & 1) == 0)
  {
    goto LABEL_383;
  }

  if (!sub_100008458(*(v1 + 32), @"Signature"))
  {
    v221 = 0;
    goto LABEL_374;
  }

  v213 = *(v1 + 32);
  v214 = *(v1 + 48);
  if (!v214)
  {
    v216 = qword_100010080;
    if (!qword_100010080)
    {
LABEL_364:
      v220 = sub_1000082E0(v213, @"Signature", &qword_1000100C0, v362);
      goto LABEL_365;
    }

    goto LABEL_363;
  }

  v215 = CFDictionaryGetValue(v214, @"wifi-signature-path");
  v216 = qword_100010080;
  if (qword_100010080)
  {
LABEL_363:
    v220 = CFStringCreateMutableCopy(v3, 255, v216);
    goto LABEL_365;
  }

  v217 = v215;
  if (!v215)
  {
    goto LABEL_364;
  }

  v218 = CFGetTypeID(v215);
  v219 = v218 == CFDataGetTypeID();
  v132 = &stru_100010000;
  if (!v219)
  {
    goto LABEL_364;
  }

  v220 = CFStringCreateFromExternalRepresentation(v3, v217, 0);
LABEL_365:
  v238 = v220;
  if (!v220)
  {
    *(v1 + 72) = 0;
    goto LABEL_383;
  }

  v239 = CFStringGetCStringPtr(v220, 0);
  v240 = &unk_10000A556;
  if (v239)
  {
    v240 = v239;
  }

  fprintf(__stdoutp, "Resolved to signature file path: %s\n", v240);
  *(v1 + 72) = v238;
  v221 = CFStringGetCStringPtr(v238, 0);
  v241 = sub_1000073A0(v221, &qword_1000100C0);
  if (qword_100010218)
  {
    v242 = qword_100010218;
  }

  else
  {
    v242 = &_os_log_default;
  }

  sub_100007804(v242, "full path signatureName is %s (%zu bytes)\n", v221, qword_1000100C0);
  if (LODWORD(v132[34].__sig))
  {
    *&v243 = 0xAAAAAAAAAAAAAAAALL;
    *(&v243 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v243;
    v401 = v243;
    v398 = v243;
    v399 = v243;
    v396 = v243;
    v397 = v243;
    *cStr = v243;
    *&cStr[16] = v243;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v244 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v244);
    dprintf(v132[34].__sig, "%s ", cStr);
    dprintf(v132[34].__sig, "full path signatureName is %s (%zu bytes)\n", v221, qword_1000100C0);
  }

  if ((v241 & 1) == 0)
  {
    goto LABEL_383;
  }

LABEL_374:
  if (!sub_100008458(*(v1 + 32), @"Platcfg"))
  {
    v253 = 0;
    goto LABEL_400;
  }

  v245 = *(v1 + 32);
  v246 = *(v1 + 48);
  if (v246)
  {
    v247 = CFDictionaryGetValue(v246, @"wifi-platcfg-path");
    v248 = *(&xmmword_100010090 + 1);
    if (!*(&xmmword_100010090 + 1))
    {
      v249 = v247;
      if (v247)
      {
        v250 = v128;
        v251 = CFGetTypeID(v247);
        v219 = v251 == CFDataGetTypeID();
        v128 = v250;
        if (v219)
        {
          v252 = CFStringCreateFromExternalRepresentation(v3, v249, 0);
          goto LABEL_387;
        }
      }

      goto LABEL_386;
    }

LABEL_385:
    v252 = CFStringCreateMutableCopy(v3, 255, v248);
    goto LABEL_387;
  }

  v248 = *(&xmmword_100010090 + 1);
  if (*(&xmmword_100010090 + 1))
  {
    goto LABEL_385;
  }

LABEL_386:
  v252 = sub_1000082E0(v245, @"Platcfg", &qword_1000100E0, v362);
LABEL_387:
  v254 = v252;
  if (v252)
  {
    v255 = CFStringGetCStringPtr(v252, 0);
    v256 = &unk_10000A556;
    if (v255)
    {
      v256 = v255;
    }

    fprintf(__stdoutp, "Resolved to platcfg file path: %s\n", v256);
    *(v1 + 96) = v254;
    v253 = CFStringGetCStringPtr(v254, 0);
    v257 = sub_1000073A0(v253, &qword_1000100E0);
    if (*(v1 + 96) && v257)
    {
      v258 = qword_1000100E0;
      goto LABEL_395;
    }
  }

  else
  {
    v253 = 0;
    *(v1 + 96) = 0;
  }

  v258 = 0;
  qword_1000100E0 = 0;
LABEL_395:
  if (qword_100010218)
  {
    v259 = qword_100010218;
  }

  else
  {
    v259 = &_os_log_default;
  }

  sub_100007804(v259, "full path platcfgName is %s (%zu bytes)\n", v253, v258);
  if (LODWORD(v132[34].__sig))
  {
    *&v260 = 0xAAAAAAAAAAAAAAAALL;
    *(&v260 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v260;
    v401 = v260;
    v398 = v260;
    v399 = v260;
    v396 = v260;
    v397 = v260;
    *cStr = v260;
    *&cStr[16] = v260;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v261 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v261);
    dprintf(v132[34].__sig, "%s ", cStr);
    dprintf(v132[34].__sig, "full path platcfgName is %s (%zu bytes)\n", v253, qword_1000100E0);
  }

LABEL_400:
  v368 = v253;
  v262 = *(v1 + 32);
  v263 = *(v1 + 48);
  if (v263)
  {
    v264 = CFDictionaryGetValue(v263, @"wifi-nvram-path");
    v265 = xmmword_100010070;
    if (!xmmword_100010070)
    {
      v266 = v264;
      if (v264)
      {
        v267 = v221;
        v268 = CFGetTypeID(v264);
        v219 = v268 == CFDataGetTypeID();
        v221 = v267;
        if (v219)
        {
          v269 = CFStringCreateFromExternalRepresentation(v3, v266, 0);
          goto LABEL_409;
        }
      }

      goto LABEL_408;
    }

LABEL_407:
    v269 = CFStringCreateMutableCopy(v3, 255, v265);
    goto LABEL_409;
  }

  v265 = xmmword_100010070;
  if (xmmword_100010070)
  {
    goto LABEL_407;
  }

LABEL_408:
  v269 = sub_1000082E0(v262, @"NVRAM", dword_1000100F0, v362);
LABEL_409:
  v270 = v269;
  if (BYTE1(v128[11].__sig) == 1)
  {
    v271 = CFStringGetCStringPtr(v269, 0);
    v272 = &unk_10000A556;
    if (v271)
    {
      v272 = v271;
    }

    fprintf(__stdoutp, "Resolved to NVRAM file path: %s\n", v272);
  }

  *(v1 + 56) = v270;
  if (!v270)
  {
    goto LABEL_383;
  }

  cfb = v221;
  v273 = CFStringGetCStringPtr(v270, 0);
  if (qword_100010218)
  {
    v274 = qword_100010218;
  }

  else
  {
    v274 = &_os_log_default;
  }

  sub_100007804(v274, "full path NVRAM is %s\n", v273);
  if (LODWORD(v132[34].__sig))
  {
    *&v275 = 0xAAAAAAAAAAAAAAAALL;
    *(&v275 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v275;
    v401 = v275;
    v398 = v275;
    v399 = v275;
    v396 = v275;
    v397 = v275;
    *cStr = v275;
    *&cStr[16] = v275;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v276 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v276);
    dprintf(v132[34].__sig, "%s ", cStr);
    dprintf(v132[34].__sig, "full path NVRAM is %s\n", v273);
  }

  if ((sub_1000073A0(v273, &qword_1000100C8) & 1) == 0)
  {
    goto LABEL_383;
  }

  if (dword_1000100B0 == 1 && HIBYTE(dword_1000100B0) != 1)
  {
    v283 = v3;
    v284 = 0;
    goto LABEL_451;
  }

  if (qword_100010088)
  {
    v277 = CFStringCreateMutableCopy(v3, 255, qword_100010088);
LABEL_424:
    v278 = v277;
    goto LABEL_432;
  }

  if (!*(v1 + 40))
  {
    v277 = sub_1000082E0(*(v1 + 32), @"Regulatory", &qword_1000100F8, v362);
    goto LABEL_424;
  }

  if (qword_100010218)
  {
    v279 = qword_100010218;
  }

  else
  {
    v279 = &_os_log_default;
  }

  sub_100007964(v279, "Deprecated feature\n");
  if (LODWORD(v132[34].__sig))
  {
    *&v280 = 0xAAAAAAAAAAAAAAAALL;
    *(&v280 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v400 = v280;
    v401 = v280;
    v398 = v280;
    v399 = v280;
    v396 = v280;
    v397 = v280;
    *cStr = v280;
    *&cStr[16] = v280;
    *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
    time(&outputStruct);
    v281 = localtime(&outputStruct);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v281);
    dprintf(v132[34].__sig, "%s ", cStr);
    dprintf(v132[34].__sig, "Deprecated feature\n");
  }

  v278 = 0;
LABEL_432:
  if (BYTE1(v128[11].__sig) == 1)
  {
    if (v278)
    {
      v282 = CFStringGetCStringPtr(v278, 0);
    }

    else
    {
      v282 = 0;
    }

    v285 = &unk_10000A556;
    if (v282)
    {
      v285 = v282;
    }

    fprintf(__stdoutp, "Resolved to Regulatory file path: %s\n", v285);
  }

  v283 = v3;
  *(v1 + 80) = v278;
  if (v278)
  {
    v284 = CFStringGetCStringPtr(v278, 0);
    if (qword_100010218)
    {
      v286 = qword_100010218;
    }

    else
    {
      v286 = &_os_log_default;
    }

    sub_100007804(v286, "full path Regulatory is %s\n", v284);
    if (LODWORD(v132[34].__sig))
    {
      *&v287 = 0xAAAAAAAAAAAAAAAALL;
      *(&v287 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v287;
      v401 = v287;
      v398 = v287;
      v399 = v287;
      v396 = v287;
      v397 = v287;
      *cStr = v287;
      *&cStr[16] = v287;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v288 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v288);
      dprintf(v132[34].__sig, "%s ", cStr);
      dprintf(v132[34].__sig, "full path Regulatory is %s\n", v284);
    }

    if ((sub_1000073A0(v284, &qword_1000100D0) & 1) == 0 || qword_1000100D0 >= 0x19000 || qword_1000100D0 <= 0x20)
    {
      goto LABEL_383;
    }
  }

  else
  {
    v284 = 0;
    qword_1000100F8 = -1;
  }

LABEL_451:
  if (dword_1000100B0 == 1 && word_1000100B4 != 1)
  {
    v290 = 0;
    goto LABEL_473;
  }

  if (xmmword_100010090)
  {
    v289 = CFStringCreateMutableCopy(v283, 255, xmmword_100010090);
  }

  else
  {
    v289 = sub_1000082E0(*(v1 + 32), @"TxCap", cStr, v362);
  }

  v290 = v289;
  if (BYTE1(v128[11].__sig) == 1)
  {
    if (v289)
    {
      v291 = CFStringGetCStringPtr(v289, 0);
    }

    else
    {
      v291 = 0;
    }

    v292 = &unk_10000A556;
    if (v291)
    {
      v292 = v291;
    }

    fprintf(__stdoutp, "Resolved to TxCap file path: %s\n", v292);
  }

  *(v1 + 88) = v290;
  if (v290)
  {
    v290 = CFStringGetCStringPtr(v290, 0);
    if (qword_100010218)
    {
      v293 = qword_100010218;
    }

    else
    {
      v293 = &_os_log_default;
    }

    sub_100007804(v293, "full path TxCap is %s\n", v290);
    if (LODWORD(v132[34].__sig))
    {
      *&v294 = 0xAAAAAAAAAAAAAAAALL;
      *(&v294 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v294;
      v401 = v294;
      v398 = v294;
      v399 = v294;
      v396 = v294;
      v397 = v294;
      *cStr = v294;
      *&cStr[16] = v294;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v295 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v295);
      dprintf(v132[34].__sig, "%s ", cStr);
      dprintf(v132[34].__sig, "full path TxCap is %s\n", v290);
    }

    if ((sub_1000073A0(v290, &qword_1000100D8) & 1) == 0 || qword_1000100D8 >= 0x8000 || qword_1000100D8 <= 0x20)
    {
LABEL_383:
      IOConnectCallScalarMethod(*(*(v1 + 24) + 20), 4u, 0, 0, 0, 0);
      goto LABEL_475;
    }
  }

LABEL_473:
  if ((v128[11].__sig & 0x100) != 0)
  {
LABEL_474:
    *(v1 + 12) = 0;
    goto LABEL_475;
  }

  v400 = 0u;
  v401 = 0u;
  v398 = 0u;
  v399 = 0u;
  v396 = 0u;
  v397 = 0u;
  memset(cStr, 0, sizeof(cStr));
  if (byte_100010010 != 1)
  {
    v323 = *(v1 + 24);
    *&outputStruct = 128;
    v319 = IOConnectCallMethod(*(v323 + 20), 2u, 0, 0, &qword_1000100B8, 0x48uLL, 0, 0, cStr, &outputStruct);
    if (qword_100010218)
    {
      v324 = qword_100010218;
    }

    else
    {
      v324 = &_os_log_default;
    }

    sub_100007804(v324, "WiFiUserClientPrepareMapping return %x firmwarebuffer len %lld nvrambuffer len %lld reg len %lld signatureBuffer len %lld platcfgBuffer len %lld\n", v319, *&cStr[8], v396, *(&v399 + 1), v397, v398);
    if (LODWORD(v132[34].__sig))
    {
      *&v325 = 0xAAAAAAAAAAAAAAAALL;
      *(&v325 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v325;
      v386 = v325;
      v383 = v325;
      v384 = v325;
      v381 = v325;
      v382 = v325;
      outputStruct = v325;
      v380 = v325;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v326 = localtime(size);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v326);
      dprintf(v132[34].__sig, "%s ", &outputStruct);
      dprintf(v132[34].__sig, "WiFiUserClientPrepareMapping return %x firmwarebuffer len %lld nvrambuffer len %lld reg len %lld signatureBuffer len %lld platcfgBuffer len %lld\n", v319, *&cStr[8], v396, *(&v399 + 1), v397, v398);
    }

    goto LABEL_542;
  }

  *&v317 = 0xAAAAAAAAAAAAAAAALL;
  *(&v317 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v385 = v317;
  v386 = v317;
  v383 = v317;
  v384 = v317;
  v381 = v317;
  v382 = v317;
  outputStruct = v317;
  v380 = v317;
  v318 = *(v1 + 24);
  size[0] = 128;
  v319 = IOConnectCallMethod(*(v318 + 20), 2u, 0, 0, &qword_1000100B8, 0x48uLL, 0, 0, &outputStruct, size);
  if (qword_100010218)
  {
    v320 = qword_100010218;
  }

  else
  {
    v320 = &_os_log_default;
  }

  sub_100007804(v320, "WiFiUserClientPrepareMappingDK return %x firmware len %lld nvram len %lld reg len %lld txcap len %lld signature len %lld platcfg len %lld\n", v319, *(&outputStruct + 1), v381, *(&v384 + 1), v386, v382, v383);
  if (LODWORD(v132[34].__sig))
  {
    *&v321 = 0xAAAAAAAAAAAAAAAALL;
    *(&v321 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v378 = v321;
    v376 = v321;
    v377 = v321;
    *&v374[16] = v321;
    v375 = v321;
    v373 = v321;
    *v374 = v321;
    *size = v321;
    length = 0xAAAAAAAAAAAAAAAALL;
    time(&length);
    v322 = localtime(&length);
    strftime(size, 0x80uLL, "%b %d %H:%M:%S", v322);
    dprintf(v132[34].__sig, "%s ", size);
    dprintf(v132[34].__sig, "WiFiUserClientPrepareMappingDK return %x firmware len %lld nvram len %lld reg len %lld txcap len %lld signature len %lld platcfg len %lld\n", v319, *(&outputStruct + 1), v381, *(&v384 + 1), v386, v382, v383);
  }

  if (*(&outputStruct + 1))
  {
    if (DWORD1(outputStruct))
    {
      goto LABEL_621;
    }

    *cStr = sub_100007278(*(*(v1 + 24) + 20), outputStruct, &cStr[8]);
    *&cStr[16] = v380;
  }

  if (v381)
  {
    if (HIDWORD(v380))
    {
      goto LABEL_621;
    }

    *&cStr[24] = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v380), &v396);
  }

  if (*(&v384 + 1))
  {
    if (DWORD1(v384))
    {
      goto LABEL_621;
    }

    *&v399 = sub_100007278(*(*(v1 + 24) + 20), v384, &v399 + 1);
    LOBYTE(v400) = v385;
  }

  if (v386)
  {
    if (HIDWORD(v385))
    {
      goto LABEL_621;
    }

    *(&v400 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v385), &v401);
    BYTE8(v401) = BYTE8(v386);
  }

  if (!v382)
  {
    goto LABEL_534;
  }

  if (HIDWORD(v381))
  {
LABEL_621:
    __break(0x5507u);
    goto LABEL_622;
  }

  *(&v396 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v381), &v397);
LABEL_534:
  if (v383)
  {
    if (!HIDWORD(v382))
    {
      *(&v397 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v382), &v398);
      BYTE8(v398) = BYTE8(v383);
      goto LABEL_542;
    }

    goto LABEL_621;
  }

LABEL_542:
  if (!v319)
  {
    if ((sub_100007AC8(v209, *cStr, &cStr[8]) & 1) == 0)
    {
      if (qword_100010218)
      {
        v336 = qword_100010218;
      }

      else
      {
        v336 = &_os_log_default;
      }

      sub_100007804(v336, "copy FW to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v337 = 0xAAAAAAAAAAAAAAAALL;
        *(&v337 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v337;
        v386 = v337;
        v383 = v337;
        v384 = v337;
        v381 = v337;
        v382 = v337;
        outputStruct = v337;
        v380 = v337;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v338 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v338);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy FW to image map fail\n");
      }

      goto LABEL_475;
    }

    if (*(&v399 + 1) && v399 && (sub_100007AC8(v284, v399, &v399 + 1) & 1) == 0)
    {
      if (qword_100010218)
      {
        v339 = qword_100010218;
      }

      else
      {
        v339 = &_os_log_default;
      }

      sub_100007804(v339, "copy RegTable to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v340 = 0xAAAAAAAAAAAAAAAALL;
        *(&v340 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v340;
        v386 = v340;
        v383 = v340;
        v384 = v340;
        v381 = v340;
        v382 = v340;
        outputStruct = v340;
        v380 = v340;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v341 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v341);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy RegTable to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v401 && *(&v400 + 1) && (sub_100007AC8(v290, *(&v400 + 1), &v401) & 1) == 0)
    {
      if (qword_100010218)
      {
        v342 = qword_100010218;
      }

      else
      {
        v342 = &_os_log_default;
      }

      sub_100007804(v342, "copy txCapTable to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v343 = 0xAAAAAAAAAAAAAAAALL;
        *(&v343 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v343;
        v386 = v343;
        v383 = v343;
        v384 = v343;
        v381 = v343;
        v382 = v343;
        outputStruct = v343;
        v380 = v343;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v344 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v344);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy txCapTable to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v396 && *&cStr[24] && (sub_100007AC8(v273, *&cStr[24], &v396) & 1) == 0)
    {
      if (qword_100010218)
      {
        v345 = qword_100010218;
      }

      else
      {
        v345 = &_os_log_default;
      }

      sub_100007804(v345, "copy NVRAM to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v346 = 0xAAAAAAAAAAAAAAAALL;
        *(&v346 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v346;
        v386 = v346;
        v383 = v346;
        v384 = v346;
        v381 = v346;
        v382 = v346;
        outputStruct = v346;
        v380 = v346;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v347 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v347);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy NVRAM to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v397 && *(&v396 + 1) && (sub_100007AC8(cfb, *(&v396 + 1), &v397) & 1) == 0)
    {
      if (qword_100010218)
      {
        v348 = qword_100010218;
      }

      else
      {
        v348 = &_os_log_default;
      }

      sub_100007804(v348, "copy Signature to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v349 = 0xAAAAAAAAAAAAAAAALL;
        *(&v349 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v349;
        v386 = v349;
        v383 = v349;
        v384 = v349;
        v381 = v349;
        v382 = v349;
        outputStruct = v349;
        v380 = v349;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v350 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v350);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy Signature to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v398 && *(&v397 + 1) && (sub_100007AC8(v368, *(&v397 + 1), &v398) & 1) == 0)
    {
      if (qword_100010218)
      {
        v351 = qword_100010218;
      }

      else
      {
        v351 = &_os_log_default;
      }

      sub_100007804(v351, "copy PLatcfg to image map fail\n");
      if (LODWORD(v132[34].__sig))
      {
        *&v352 = 0xAAAAAAAAAAAAAAAALL;
        *(&v352 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v385 = v352;
        v386 = v352;
        v383 = v352;
        v384 = v352;
        v381 = v352;
        v382 = v352;
        outputStruct = v352;
        v380 = v352;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v353 = localtime(size);
        strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v353);
        dprintf(v132[34].__sig, "%s ", &outputStruct);
        dprintf(v132[34].__sig, "copy PLatcfg to image map fail\n");
      }

      goto LABEL_475;
    }

    *&cStr[16] = dword_1000100B0;
    LOBYTE(v400) = HIBYTE(dword_1000100B0);
    BYTE8(v398) = HIBYTE(word_1000100B4);
    BYTE8(v401) = word_1000100B4;
    v327 = IOConnectCallMethod(*(*(v1 + 24) + 20), 3u, 0, 0, cStr, 0x80uLL, 0, 0, 0, 0);
    if (qword_100010218)
    {
      v328 = qword_100010218;
    }

    else
    {
      v328 = &_os_log_default;
    }

    sub_100007804(v328, "WiFiUserClientCompleteMapping return %x\n", v327);
    if (LODWORD(v132[34].__sig))
    {
      *&v329 = 0xAAAAAAAAAAAAAAAALL;
      *(&v329 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v385 = v329;
      v386 = v329;
      v383 = v329;
      v384 = v329;
      v381 = v329;
      v382 = v329;
      outputStruct = v329;
      v380 = v329;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v330 = localtime(size);
      strftime(&outputStruct, 0x80uLL, "%b %d %H:%M:%S", v330);
      dprintf(v132[34].__sig, "%s ", &outputStruct);
      dprintf(v132[34].__sig, "WiFiUserClientCompleteMapping return %x\n", v327);
    }

    if (!v327)
    {
      goto LABEL_474;
    }
  }

LABEL_475:
  if (*v116[32].__opaque)
  {
    if (dword_100010204)
    {
      if (qword_100010218)
      {
        v296 = qword_100010218;
      }

      else
      {
        v296 = &_os_log_default;
      }

      sub_100007804(v296, "wifiFirmwareLoaderServiceThread: delay[%u sec] - started\n", dword_100010204);
      if (dword_100010220)
      {
        *&v297 = 0xAAAAAAAAAAAAAAAALL;
        *(&v297 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v297;
        v401 = v297;
        v398 = v297;
        v399 = v297;
        v396 = v297;
        v397 = v297;
        *cStr = v297;
        *&cStr[16] = v297;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v298 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v298);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: delay[%u sec] - started\n", dword_100010204);
      }

      sleep(dword_100010204);
      if (qword_100010218)
      {
        v299 = qword_100010218;
      }

      else
      {
        v299 = &_os_log_default;
      }

      sub_100007804(v299, "wifiFirmwareLoaderServiceThread: delay[%u sec] - ended\n", dword_100010204);
      if (dword_100010220)
      {
        *&v300 = 0xAAAAAAAAAAAAAAAALL;
        *(&v300 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v400 = v300;
        v401 = v300;
        v398 = v300;
        v399 = v300;
        v396 = v300;
        v397 = v300;
        *cStr = v300;
        *&cStr[16] = v300;
        *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
        time(&outputStruct);
        v301 = localtime(&outputStruct);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v301);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: delay[%u sec] - ended\n", dword_100010204);
      }
    }

    v302 = *v116[32].__opaque;
    v303 = IOPMAssertionRelease(v302);
    *v116[32].__opaque = 0;
    if (qword_100010218)
    {
      v304 = qword_100010218;
    }

    else
    {
      v304 = &_os_log_default;
    }

    sub_100007804(v304, "wifiFirmwareLoaderServiceThread: _releaseIOPMHelperAssertionRelease return[0x%08x], id[0x%08x], release id[0x%08x]\n", v303, v302, 0);
    if (dword_100010220)
    {
      *&v305 = 0xAAAAAAAAAAAAAAAALL;
      *(&v305 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v400 = v305;
      v401 = v305;
      v398 = v305;
      v399 = v305;
      v396 = v305;
      v397 = v305;
      *cStr = v305;
      *&cStr[16] = v305;
      *&outputStruct = 0xAAAAAAAAAAAAAAAALL;
      time(&outputStruct);
      v306 = localtime(&outputStruct);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v306);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: _releaseIOPMHelperAssertionRelease return[0x%08x], id[0x%08x], release id[0x%08x]\n", v303, v302, *v116[32].__opaque);
    }
  }

  *(v1 + 16) = 2;
  v307 = *(v1 + 24);
  if (v307)
  {
    CFRelease(v307);
  }

  *(v1 + 24) = 0;
  v308 = *(v1 + 32);
  if (v308)
  {
    CFRelease(v308);
  }

  *(v1 + 32) = 0;
  v309 = *(v1 + 40);
  if (v309)
  {
    CFRelease(v309);
  }

  *(v1 + 40) = 0;
  v310 = *(v1 + 48);
  if (v310)
  {
    CFRelease(v310);
  }

  *(v1 + 48) = 0;
  v311 = *(v1 + 64);
  if (v311)
  {
    CFRelease(v311);
  }

  *(v1 + 64) = 0;
  v312 = *(v1 + 56);
  if (v312)
  {
    CFRelease(v312);
  }

  *(v1 + 56) = 0;
  v313 = *(v1 + 80);
  if (v313)
  {
    CFRelease(v313);
  }

  *(v1 + 80) = 0;
  v314 = *(v1 + 88);
  if (v314)
  {
    CFRelease(v314);
  }

  *(v1 + 88) = 0;
  v315 = *(v1 + 96);
  if (v315)
  {
    CFRelease(v315);
  }

  *(v1 + 96) = 0;
  v316 = *(v1 + 8);
  if (v316)
  {
    IOObjectRelease(v316);
    *(v1 + 8) = 0;
  }

  CFRunLoopStop(qword_100010060);
}

CFIndex sub_100005784(uint64_t a1, char *a2, const char *a3)
{
  if (!CFStringGetCStringPtr(*(a1 + 64), 0))
  {
    return 1;
  }

  result = CFStringGetLength(*(a1 + 64));
  if (__OFSUB__(result, 4))
  {
    __break(0x5515u);
    goto LABEL_12;
  }

  v7 = result - 3;
  if (result == 3)
  {
LABEL_12:
    __break(0x5500u);
    return result;
  }

  CStringPtr = CFStringGetCStringPtr(*(a1 + 64), 0);
  strlcpy(a2, CStringPtr, v7);
  strlcat(a2, "_gen.", 0xFFuLL);
  strlcat(a2, a3, 0xFFuLL);
  v9 = qword_100010218;
  v10 = CFStringGetCStringPtr(*(a1 + 64), 0);
  v11 = &_os_log_default;
  if (v9)
  {
    v11 = v9;
  }

  sub_100007804(v11, "%s %s from FW path %s\n", "createGenericPath", a2, v10);
  if (dword_100010220)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v12;
    v24 = v12;
    v21 = v12;
    v22 = v12;
    v19 = v12;
    v20 = v12;
    *v17 = v12;
    v18 = v12;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    time(&v16);
    v13 = localtime(&v16);
    strftime(v17, 0x80uLL, "%b %d %H:%M:%S", v13);
    dprintf(dword_100010220, "%s ", v17);
    v14 = dword_100010220;
    v15 = CFStringGetCStringPtr(*(a1 + 64), 0);
    dprintf(v14, "%s %s from FW path %s\n", "createGenericPath", a2, v15);
  }

  return 0;
}

uint64_t start(int a1, char *const *a2)
{
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, &stru_10000C448);
  errorbuf = 0;
  if (sandbox_init("wifiFirmwareLoader", 1uLL, &errorbuf) == -1)
  {
    fprintf(__stderrp, "wifiFirmwareLoader sandbox_init: %s, attempting default compiled profile\n", errorbuf);
    sandbox_free_error(errorbuf);
    if (qword_100010218)
    {
      v4 = qword_100010218;
    }

    else
    {
      v4 = &_os_log_default;
    }

    sub_100007804(v4, "Sandboxing init issue, couldn't find profile in default paths, attempting default compiled profile");
    if (dword_100010220)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v143 = v5;
      v141 = v5;
      v142 = v5;
      v139 = v5;
      v140 = v5;
      v137 = v5;
      v138 = v5;
      *valuePtr = v5;
      v134 = 0xAAAAAAAAAAAAAAAALL;
      time(&v134);
      v6 = localtime(&v134);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v6);
      dprintf(dword_100010220, "%s ", valuePtr);
      dprintf(dword_100010220, "Sandboxing init issue, couldn't find profile in default paths, attempting default compiled profile");
    }

    if (sandbox_init("(version 1)(deny default)(import system.sb)(allow file-read-metadata (literal /Library/Preferences))(allow file-read-data (literal /private/var/preferences/SystemConfiguration/com.apple.wifi.plist))(allow file-read-data (literal /Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist))(allow mach-lookup (global-name com.apple.system.logger))(allow mach-lookup (global-name com.apple.system.notification_center))(allow mach-lookup (global-name com.apple.corecaptured))(allow mach-lookup (global-name com.apple.PowerManagement.control))(allow ipc-posix-shm-read-data (ipc-posix-name apple.shm.notification_center))(allow sysctl-read)(allow iokit-open (iokit-user-client-class IOUserUserClient))(allow iokit-open (iokit-user-client-class AppleBCMWLANUserClient))(allow iokit-open (iokit-user-client-class AppleKeyStoreUserClient))(allow iokit-set-properties (iokit-property PlatformConfig))(allow iokit-set-properties (iokit-property WiFiMSFCal))(allow iokit-set-properties (iokit-property WiFiFdrCal))(allow iokit-set-properties (iokit-property WiFiGenericCal))(allow iokit-set-properties (iokit-property WiFiMSFSource))(allow iokit-set-properties (iokit-property HWIdentifiersLate))(allow file-read* (subpath /usr/share/firmware/wifi))(allow file-read* (subpath /usr/local/share/firmware))(allow file-read* (subpath /AppleInternal))(allow file-read-metadata (literal /usr))(allow file-read-metadata (regex #^/usr/.*$))(allow file-read-metadata (literal /var))(allow file-write* (literal /private/var/logs/wifiFirmwareLoader.log))(allow file-read* (literal /private/var/logs/wifiFirmwareLoader.log))(allow file-read-metadata (regex #^/private/var/db/timezone/.*$))(allow file-read-data (regex #^/usr/share/zoneinfo.default/.*$))(allow file-read-data (literal /Library/Preferences/SystemConfiguration/com.apple.wifiFirmwareLoader.plist))", 0, &errorbuf) == -1)
    {
      v10 = errorbuf;
      if (!errorbuf)
      {
        v10 = &unk_10000A556;
      }

      fprintf(__stderrp, "wifiFirmwareLoader sandbox_init: %s \nwifiFirmwareLoader failed to run, check profile\n", v10);
      sandbox_free_error(errorbuf);
      if (qword_100010218)
      {
        v11 = qword_100010218;
      }

      else
      {
        v11 = &_os_log_default;
      }

      sub_100007804(v11, "Sandboxing init issue failed, wifiFirmwareLoader failed to run, check profile");
      if (dword_100010220)
      {
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v12;
        v141 = v12;
        v142 = v12;
        v139 = v12;
        v140 = v12;
        v137 = v12;
        v138 = v12;
        *valuePtr = v12;
        v134 = 0xAAAAAAAAAAAAAAAALL;
        time(&v134);
        v13 = localtime(&v134);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v13);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Sandboxing init issue failed, wifiFirmwareLoader failed to run, check profile");
      }
    }

    else
    {
      fwrite("wifiFirmwareLoader sandbox_init: Success\n", 0x29uLL, 1uLL, __stderrp);
      if (qword_100010218)
      {
        v7 = qword_100010218;
      }

      else
      {
        v7 = &_os_log_default;
      }

      sub_100007804(v7, "Sandboxing init issue resolved: Success");
      if (dword_100010220)
      {
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v8;
        v141 = v8;
        v142 = v8;
        v139 = v8;
        v140 = v8;
        v137 = v8;
        v138 = v8;
        *valuePtr = v8;
        v134 = 0xAAAAAAAAAAAAAAAALL;
        time(&v134);
        v9 = localtime(&v134);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v9);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Sandboxing init issue resolved: Success");
      }
    }
  }

  v14 = 0;
  qword_100010100 = &_mh_execute_header;
  dword_100010110 = 0;
  dword_100010118 = 0;
  dword_100010188 = 0;
  dword_100010190 = 0;
  *&qword_1000100B8 = 0u;
  *&qword_1000100C8 = 0u;
  *&qword_1000100D8 = 0u;
  dword_1000100B0 = 0;
  word_1000100B4 = 0;
  xmmword_100010070 = 0u;
  *&qword_100010080 = 0u;
  xmmword_100010090 = 0u;
  *&xmmword_1000100A0 = 0;
  while (1)
  {
    v15 = getopt(a1, a2, "fF:N:C:S:rR:T:MmP:p:");
    if (v15 < 0)
    {
      break;
    }

    if (v15 > 82)
    {
      if (v15 > 108)
      {
        switch(v15)
        {
          case 'm':
            goto LABEL_42;
          case 'p':
            if (!optarg)
            {
              goto LABEL_64;
            }

            *(&xmmword_100010090 + 1) = CFStringCreateWithCString(0, optarg, 0);
            HIBYTE(word_1000100B4) = 1;
            break;
          case 'r':
            BYTE2(dword_1000100B0) = 1;
            break;
          default:
            goto LABEL_64;
        }
      }

      else
      {
        switch(v15)
        {
          case 'S':
            if (!optarg)
            {
              goto LABEL_64;
            }

            qword_100010080 = CFStringCreateWithCString(0, optarg, 0);
            break;
          case 'T':
            if (!optarg)
            {
              goto LABEL_64;
            }

            *&xmmword_100010090 = CFStringCreateWithCString(0, optarg, 0);
            LOBYTE(word_1000100B4) = 1;
            break;
          case 'f':
            BYTE1(dword_1000100B0) = 1;
            break;
          default:
            goto LABEL_64;
        }
      }
    }

    else if (v15 > 77)
    {
      if (v15 == 78)
      {
        if (!optarg)
        {
          goto LABEL_64;
        }

        *&xmmword_100010070 = CFStringCreateWithCString(0, optarg, 0);
      }

      else if (v15 == 80)
      {
        if (!optarg)
        {
          goto LABEL_64;
        }

        *&xmmword_1000100A0 = CFStringCreateWithCString(0, optarg, 0);
      }

      else
      {
        if (v15 != 82 || !optarg)
        {
LABEL_64:
          puts("\nUsage:\n\n  -F <filename> [mfg]\n                    uploads firmware data from a file \n                    <filename>  specifies the path to a binary image of firmware.\n                    mfg denotes a manufacturing firmware; if given the driver will omit initial setup after writing the firmware.\n  -N <filename>     uploads nvram data from a file\n                    <filename>  specifies the path to a text file of NVRAM data\n  -S <filename>     uploads signature data from a file\n                    <filename>  specifies the path to a text file of signature data\n  -p <filename>     uploads platcfg blob data from a file\n                    <filename>  specifies the path to a binary file of platcfg blob data\n  -R <filename>     uploads regulatory table from a file\n                    <filename>  specifies the path to a text file of clmb data\n  -T <filename>     uploads tx cap table from a file\n                    <filename>  specifies the path to a text file of cap tx table\n  -P <filename>     Sets the Platform Config from a file\n                    <filename>  specifies the path to a the PlatformConfig file\n  -f                Prints the file paths for Firmware image and NVRAM file (doesn't perform an upload).\n  -r                Force to load Firmware\n  -M                Set MFG firmware flag\n  -m                Clear MFG firmware flag\n");
          return 1;
        }

        qword_100010088 = CFStringCreateWithCString(0, optarg, 0);
        HIBYTE(dword_1000100B0) = 1;
      }
    }

    else
    {
      switch(v15)
      {
        case 'C':
          if (!optarg)
          {
            goto LABEL_64;
          }

          *(&xmmword_1000100A0 + 1) = CFStringCreateWithCString(0, optarg, 0);
          break;
        case 'F':
          if (!optarg)
          {
            goto LABEL_64;
          }

          *(&xmmword_100010070 + 1) = CFStringCreateWithCString(0, optarg, 0);
          if (v14)
          {
            v16 = dword_1000100B0;
          }

          else
          {
            v16 = strcasestr(optarg, "mfg") != 0;
          }

          LOBYTE(dword_1000100B0) = v16;
          break;
        case 'M':
LABEL_42:
          LOBYTE(dword_1000100B0) = v15 == 77;
          v14 = 1;
          break;
        default:
          goto LABEL_64;
      }
    }
  }

  v17 = SCPreferencesCreate(0, @"com.apple.wifiFirmwareLoader", @"/Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist");
  *valuePtr = 0;
  if (v17)
  {
    v18 = v17;
    Value = SCPreferencesGetValue(v17, @"LoggingEnabled");
    if (Value)
    {
      v20 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v20))
      {
        v23 = CFBooleanGetTypeID();
        if (v23 == CFGetTypeID(v20))
        {
          IntValue = CFEqual(v20, kCFBooleanTrue);
        }

        else
        {
          v25 = CFStringGetTypeID();
          if (v25 != CFGetTypeID(v20))
          {
            goto LABEL_71;
          }

          IntValue = CFStringGetIntValue(v20);
        }

        *valuePtr = IntValue;
        goto LABEL_71;
      }

      CFNumberGetValue(v20, kCFNumberIntType, valuePtr);
    }

LABEL_71:
    CFRelease(v18);
    if (*valuePtr)
    {
      v26 = qword_100010218;
      if (!qword_100010218)
      {
        qword_100010218 = os_log_create("com.apple.wififirmwareloaderdaemon", "wififirmwareloader");
        dword_100010220 = open("/private/var/logs/wifiFirmwareLoader.log", 522, 420);
        if (qword_100010218)
        {
          v26 = qword_100010218;
        }

        else
        {
          v26 = &_os_log_default;
        }
      }

      sub_100007804(v26, "WiFi Firmware Loader logging enabled\n");
      if (dword_100010220)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v27;
        v141 = v27;
        v142 = v27;
        v139 = v27;
        v140 = v27;
        v137 = v27;
        v138 = v27;
        *valuePtr = v27;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v28 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v28);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "WiFi Firmware Loader logging enabled\n");
      }

      if (qword_100010218)
      {
        v29 = qword_100010218;
      }

      else
      {
        v29 = &_os_log_default;
      }

      sub_100007804(v29, "Kicking corecaptured to start logging...\n");
      if (dword_100010220)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v30;
        v141 = v30;
        v142 = v30;
        v139 = v30;
        v140 = v30;
        v137 = v30;
        v138 = v30;
        *valuePtr = v30;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v31 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v31);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Kicking corecaptured to start logging...\n");
      }

      if (&_CoreCaptureControlCreate)
      {
        CoreCaptureControlCreate();
      }

      if (&_CoreCaptureControlStart)
      {
        CoreCaptureControlStart();
      }
    }
  }

  qword_1000101FC = 0xA00000002;
  dword_100010204 = 0;
  v32 = SCPreferencesCreate(0, @"com.apple.wifiFirmwareLoader", @"/Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist");
  LODWORD(v134) = 0;
  if (!v32)
  {
LABEL_137:
    if (*(&xmmword_100010070 + 1) || ((vaddvq_s32(vbicq_s8(xmmword_100008C40, vuzp1q_s32(vceqzq_s64(*&qword_100010088), vceqzq_s64(xmmword_1000100A0)))) & 0xF) == 0 ? (v68 = xmmword_100010070 == 0) : (v68 = 0), v68 ? (v69 = *(&xmmword_100010090 + 1) == 0) : (v69 = 0), !v69))
    {
      if (qword_100010218)
      {
        v70 = qword_100010218;
      }

      else
      {
        v70 = &_os_log_default;
      }

      sub_100007804(v70, "Settings:\n");
      if (dword_100010220)
      {
        *&v71 = 0xAAAAAAAAAAAAAAAALL;
        *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v71;
        v141 = v71;
        v142 = v71;
        v139 = v71;
        v140 = v71;
        v137 = v71;
        v138 = v71;
        *valuePtr = v71;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v72 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v72);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Settings:\n");
      }

      if (xmmword_1000100A0 && CFStringGetCStringPtr(xmmword_1000100A0, 0))
      {
        v73 = qword_100010218;
        CStringPtr = CFStringGetCStringPtr(xmmword_1000100A0, 0);
        v75 = (v73 ? v73 : &_os_log_default);
        sub_100007804(v75, "    pathPlatformConfig: %s\n", CStringPtr);
        if (dword_100010220)
        {
          *&v76 = 0xAAAAAAAAAAAAAAAALL;
          *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v76;
          v141 = v76;
          v142 = v76;
          v139 = v76;
          v140 = v76;
          v137 = v76;
          v138 = v76;
          *valuePtr = v76;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v77 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v77);
          dprintf(dword_100010220, "%s ", valuePtr);
          v78 = dword_100010220;
          v79 = CFStringGetCStringPtr(xmmword_1000100A0, 0);
          dprintf(v78, "    pathPlatformConfig: %s\n", v79);
        }
      }

      if (*(&xmmword_100010070 + 1) && CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0))
      {
        v80 = qword_100010218;
        v81 = CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0);
        if (v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = &_os_log_default;
        }

        sub_100007804(v82, "          pathFirmware: %s\n", v81);
        if (dword_100010220)
        {
          *&v83 = 0xAAAAAAAAAAAAAAAALL;
          *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v83;
          v141 = v83;
          v142 = v83;
          v139 = v83;
          v140 = v83;
          v137 = v83;
          v138 = v83;
          *valuePtr = v83;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v84 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v84);
          dprintf(dword_100010220, "%s ", valuePtr);
          v85 = dword_100010220;
          v86 = CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0);
          dprintf(v85, "          pathFirmware: %s\n", v86);
        }

        if (qword_100010218)
        {
          v87 = qword_100010218;
        }

        else
        {
          v87 = &_os_log_default;
        }

        sub_100007804(v87, "                   mfg: %d\n", dword_1000100B0);
        if (dword_100010220)
        {
          *&v88 = 0xAAAAAAAAAAAAAAAALL;
          *(&v88 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v88;
          v141 = v88;
          v142 = v88;
          v139 = v88;
          v140 = v88;
          v137 = v88;
          v138 = v88;
          *valuePtr = v88;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v89 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v89);
          dprintf(dword_100010220, "%s ", valuePtr);
          dprintf(dword_100010220, "                   mfg: %d\n", dword_1000100B0);
        }
      }

      if (xmmword_100010070 && CFStringGetCStringPtr(xmmword_100010070, 0))
      {
        v90 = qword_100010218;
        v91 = CFStringGetCStringPtr(xmmword_100010070, 0);
        v92 = (v90 ? v90 : &_os_log_default);
        sub_100007804(v92, "             pathNVRAM: %s\n", v91);
        if (dword_100010220)
        {
          *&v93 = 0xAAAAAAAAAAAAAAAALL;
          *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v93;
          v141 = v93;
          v142 = v93;
          v139 = v93;
          v140 = v93;
          v137 = v93;
          v138 = v93;
          *valuePtr = v93;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v94 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v94);
          dprintf(dword_100010220, "%s ", valuePtr);
          v95 = dword_100010220;
          v96 = CFStringGetCStringPtr(xmmword_100010070, 0);
          dprintf(v95, "             pathNVRAM: %s\n", v96);
        }
      }

      if (qword_100010080 && CFStringGetCStringPtr(qword_100010080, 0))
      {
        v97 = qword_100010218;
        v98 = CFStringGetCStringPtr(qword_100010080, 0);
        v99 = (v97 ? v97 : &_os_log_default);
        sub_100007804(v99, "             pathSignature: %s\n", v98);
        if (dword_100010220)
        {
          *&v100 = 0xAAAAAAAAAAAAAAAALL;
          *(&v100 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v100;
          v141 = v100;
          v142 = v100;
          v139 = v100;
          v140 = v100;
          v137 = v100;
          v138 = v100;
          *valuePtr = v100;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v101 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v101);
          dprintf(dword_100010220, "%s ", valuePtr);
          v102 = dword_100010220;
          v103 = CFStringGetCStringPtr(qword_100010080, 0);
          dprintf(v102, "             pathSignature: %s\n", v103);
        }
      }

      if (*(&xmmword_100010090 + 1) && CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0))
      {
        v104 = qword_100010218;
        v105 = CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0);
        v106 = (v104 ? v104 : &_os_log_default);
        sub_100007804(v106, "             pathPlatcfg: %s\n", v105);
        if (dword_100010220)
        {
          *&v107 = 0xAAAAAAAAAAAAAAAALL;
          *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v107;
          v141 = v107;
          v142 = v107;
          v139 = v107;
          v140 = v107;
          v137 = v107;
          v138 = v107;
          *valuePtr = v107;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v108 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v108);
          dprintf(dword_100010220, "%s ", valuePtr);
          v109 = dword_100010220;
          v110 = CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0);
          dprintf(v109, "             pathPlatcfg: %s\n", v110);
        }
      }

      if (qword_100010088 && CFStringGetCStringPtr(qword_100010088, 0))
      {
        v111 = qword_100010218;
        v112 = CFStringGetCStringPtr(qword_100010088, 0);
        v113 = (v111 ? v111 : &_os_log_default);
        sub_100007804(v113, "               pathReg: %s\n", v112);
        if (dword_100010220)
        {
          *&v114 = 0xAAAAAAAAAAAAAAAALL;
          *(&v114 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v114;
          v141 = v114;
          v142 = v114;
          v139 = v114;
          v140 = v114;
          v137 = v114;
          v138 = v114;
          *valuePtr = v114;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v115 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v115);
          dprintf(dword_100010220, "%s ", valuePtr);
          v116 = dword_100010220;
          v117 = CFStringGetCStringPtr(qword_100010088, 0);
          dprintf(v116, "               pathReg: %s\n", v117);
        }
      }

      if (xmmword_100010090 && CFStringGetCStringPtr(xmmword_100010090, 0))
      {
        v118 = qword_100010218;
        v119 = CFStringGetCStringPtr(xmmword_100010090, 0);
        v120 = (v118 ? v118 : &_os_log_default);
        sub_100007804(v120, "             pathTxCap: %s\n", v119);
        if (dword_100010220)
        {
          *&v121 = 0xAAAAAAAAAAAAAAAALL;
          *(&v121 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v121;
          v141 = v121;
          v142 = v121;
          v139 = v121;
          v140 = v121;
          v137 = v121;
          v138 = v121;
          *valuePtr = v121;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v122 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v122);
          dprintf(dword_100010220, "%s ", valuePtr);
          v123 = dword_100010220;
          v124 = CFStringGetCStringPtr(xmmword_100010090, 0);
          dprintf(v123, "             pathTxCap: %s\n", v124);
        }
      }

      if (*(&xmmword_1000100A0 + 1) && CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0))
      {
        v125 = qword_100010218;
        v126 = CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0);
        v127 = (v125 ? v125 : &_os_log_default);
        sub_100007804(v127, "             pathMSFCal: %s\n", v126);
        if (dword_100010220)
        {
          *&v128 = 0xAAAAAAAAAAAAAAAALL;
          *(&v128 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v143 = v128;
          v141 = v128;
          v142 = v128;
          v139 = v128;
          v140 = v128;
          v137 = v128;
          v138 = v128;
          *valuePtr = v128;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v129 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v129);
          dprintf(dword_100010220, "%s ", valuePtr);
          v130 = dword_100010220;
          v131 = CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0);
          dprintf(v130, "             pathMSFCal: %s\n", v131);
        }
      }
    }

    signal(2, sub_100007048);
    signal(3, sub_100007048);
    signal(15, sub_100007048);
    signal(1, sub_100007048);
    qword_100010060 = CFRunLoopGetCurrent();
    os_transaction_create();
    Current = CFAbsoluteTimeGetCurrent();
    v133 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 360.0, 0.0, 0, 0, sub_100007020, 0);
    qword_100010068 = v133;
    if (v133)
    {
      CFRunLoopAddTimer(qword_100010060, v133, kCFRunLoopDefaultMode);
      sub_1000008E8();
      CFRunLoopRemoveTimer(qword_100010060, qword_100010068, kCFRunLoopDefaultMode);
      sub_100006EB4();
    }

    return HIDWORD(qword_100010100);
  }

  v33 = v32;
  if (qword_100010218)
  {
    v34 = qword_100010218;
  }

  else
  {
    v34 = &_os_log_default;
  }

  sub_100007804(v34, "WiFi Firmware processing preferences\n");
  if (dword_100010220)
  {
    *&v35 = 0xAAAAAAAAAAAAAAAALL;
    *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v143 = v35;
    v141 = v35;
    v142 = v35;
    v139 = v35;
    v140 = v35;
    v137 = v35;
    v138 = v35;
    *valuePtr = v35;
    errorbuf = 0xAAAAAAAAAAAAAAAALL;
    time(&errorbuf);
    v36 = localtime(&errorbuf);
    strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v36);
    dprintf(dword_100010220, "%s ", valuePtr);
    dprintf(dword_100010220, "WiFi Firmware processing preferences\n");
  }

  v37 = SCPreferencesGetValue(v33, @"assertionEnabled");
  if (v37)
  {
    v38 = v37;
    v39 = CFBooleanGetTypeID();
    if (v39 == CFGetTypeID(v38))
    {
      byte_1000101F8 = CFEqual(v38, kCFBooleanTrue) != 0;
    }
  }

  v40 = SCPreferencesGetValue(v33, @"assertionType");
  if (v40)
  {
    v41 = v40;
    v42 = CFNumberGetTypeID();
    if (v42 == CFGetTypeID(v41))
    {
      if (CFNumberGetValue(v41, kCFNumberIntType, &v134))
      {
        LODWORD(qword_1000101FC) = v134;
      }
    }
  }

  v43 = SCPreferencesGetValue(v33, @"assertionTimeout");
  if (v43)
  {
    v44 = v43;
    v45 = CFNumberGetTypeID();
    if (v45 == CFGetTypeID(v44) && CFNumberGetValue(v44, kCFNumberIntType, &v134) && (v134 - 1) <= 9)
    {
      HIDWORD(qword_1000101FC) = v134;
    }
  }

  v46 = SCPreferencesGetValue(v33, @"assertionReleaseDelay");
  if (!v46 || (v47 = v46, v48 = CFNumberGetTypeID(), v48 != CFGetTypeID(v47)) || (result = CFNumberGetValue(v47, kCFNumberIntType, &v134), !result) || v134 > 3 || (dword_100010204 = v134) == 0)
  {
LABEL_116:
    v53 = qword_100010218;
    v54 = byte_1000101F8;
    v55 = qword_1000101FC;
    if (qword_100010218)
    {
      v56 = @"PreventUserIdleSystemSleep";
      v57 = @"NoIdleSleepAssertion";
      v58 = @"NoDisplaySleepAssertion";
      if (qword_1000101FC != 4)
      {
        v58 = @"PreventUserIdleSystemSleep";
      }

      if (qword_1000101FC != 3)
      {
        v57 = v58;
      }

      if (qword_1000101FC == 2)
      {
        v56 = @"PreventSystemSleep";
      }

      if (qword_1000101FC == 1)
      {
        v56 = @"PreventUserIdleDisplaySleep";
      }

      if (qword_1000101FC <= 2)
      {
        v59 = v56;
      }

      else
      {
        v59 = v57;
      }
    }

    else if ((qword_1000101FC - 1) > 3)
    {
      v53 = &_os_log_default;
      v59 = @"PreventUserIdleSystemSleep";
    }

    else
    {
      v59 = off_10000C600[(qword_1000101FC - 1)];
      v53 = &_os_log_default;
    }

    v60 = CFStringGetCStringPtr(v59, 0);
    sub_100007804(v53, "WiFi Firmware processing preferences using: assertionEnabled:%u, assertionType:%u mapped['%s'], timeout[%u sec], assertionReleaseDelay[%u sec]\n", v54, v55, v60, HIDWORD(qword_1000101FC), dword_100010204);
    if (dword_100010220)
    {
      *&v61 = 0xAAAAAAAAAAAAAAAALL;
      *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v143 = v61;
      v141 = v61;
      v142 = v61;
      v139 = v61;
      v140 = v61;
      v137 = v61;
      v138 = v61;
      *valuePtr = v61;
      errorbuf = 0xAAAAAAAAAAAAAAAALL;
      time(&errorbuf);
      v62 = localtime(&errorbuf);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v62);
      dprintf(dword_100010220, "%s ", valuePtr);
      v63 = dword_100010220;
      v64 = byte_1000101F8;
      v65 = qword_1000101FC;
      if ((qword_1000101FC - 1) > 3)
      {
        v66 = @"PreventUserIdleSystemSleep";
      }

      else
      {
        v66 = off_10000C600[(qword_1000101FC - 1)];
      }

      v67 = CFStringGetCStringPtr(v66, 0);
      dprintf(v63, "WiFi Firmware processing preferences using: assertionEnabled:%u, assertionType:%u mapped['%s'], timeout[%u sec], assertionReleaseDelay[%u sec]\n", v64, v65, v67, HIDWORD(qword_1000101FC), dword_100010204);
    }

    CFRelease(v33);
    goto LABEL_137;
  }

  v49 = HIDWORD(qword_1000101FC) + v134;
  if (!__OFADD__(HIDWORD(qword_1000101FC), v134))
  {
    HIDWORD(qword_1000101FC) += v134;
    if (qword_100010218)
    {
      v50 = qword_100010218;
    }

    else
    {
      v50 = &_os_log_default;
    }

    sub_100007804(v50, "WiFi Firmware processing preferences, adjusting timeout -> timeout[%u sec], adjusted[%u sec]\n", v49, v134);
    if (dword_100010220)
    {
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v143 = v51;
      v141 = v51;
      v142 = v51;
      v139 = v51;
      v140 = v51;
      v137 = v51;
      v138 = v51;
      *valuePtr = v51;
      errorbuf = 0xAAAAAAAAAAAAAAAALL;
      time(&errorbuf);
      v52 = localtime(&errorbuf);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v52);
      dprintf(dword_100010220, "%s ", valuePtr);
      dprintf(dword_100010220, "WiFi Firmware processing preferences, adjusting timeout -> timeout[%u sec], adjusted[%u sec]\n", HIDWORD(qword_1000101FC), dword_100010204);
    }

    goto LABEL_116;
  }

  __break(0x5500u);
  return result;
}

void sub_100006EB4()
{
  signal(2, 1);
  signal(3, 1);
  signal(15, 1);
  signal(1, 1);
  if (qword_100010218)
  {
    v0 = qword_100010218;
  }

  else
  {
    v0 = &_os_log_default;
  }

  sub_100007804(v0, "Shutting down\n");
  if (dword_100010220)
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10 = v1;
    v11 = v1;
    v8 = v1;
    v9 = v1;
    v6 = v1;
    v7 = v1;
    *v4 = v1;
    v5 = v1;
    v3 = 0xAAAAAAAAAAAAAAAALL;
    time(&v3);
    v2 = localtime(&v3);
    strftime(v4, 0x80uLL, "%b %d %H:%M:%S", v2);
    dprintf(dword_100010220, "%s ", v4);
    dprintf(dword_100010220, "Shutting down\n");
  }

  if (xmmword_100010070)
  {
    CFRelease(xmmword_100010070);
  }

  *&xmmword_100010070 = 0;
  if (*(&xmmword_100010070 + 1))
  {
    CFRelease(*(&xmmword_100010070 + 1));
  }

  *(&xmmword_100010070 + 1) = 0;
  if (qword_100010088)
  {
    CFRelease(qword_100010088);
  }

  qword_100010088 = 0;
  if (xmmword_100010090)
  {
    CFRelease(xmmword_100010090);
  }

  *&xmmword_100010090 = 0;
  if (dword_100010220)
  {
    close(dword_100010220);
    dword_100010220 = 0;
  }

  if (qword_100010218)
  {
    qword_100010218 = 0;
  }

  exit(SHIDWORD(qword_100010100));
}

void sub_100007020()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t sub_100007048(uint64_t result)
{
  if (result <= 0xF && ((1 << result) & 0x800C) != 0)
  {
    sub_100006EB4();
  }

  return result;
}

void sub_100007078(id a1, void *a2)
{
  if (qword_100010218)
  {
    v2 = qword_100010218;
  }

  else
  {
    v2 = &_os_log_default;
  }

  sub_100007804(v2, "Woken up by IOKit matching\n");
  if (dword_100010220)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v3;
    v13 = v3;
    v10 = v3;
    v11 = v3;
    v8 = v3;
    v9 = v3;
    *v6 = v3;
    v7 = v3;
    v5 = 0xAAAAAAAAAAAAAAAALL;
    time(&v5);
    v4 = localtime(&v5);
    strftime(v6, 0x80uLL, "%b %d %H:%M:%S", v4);
    dprintf(dword_100010220, "%s ", v6);
    dprintf(dword_100010220, "Woken up by IOKit matching\n");
  }
}

uint64_t sub_100007164()
{
  result = _CFRuntimeRegisterClass();
  qword_100010210 = result;
  return result;
}

uint64_t sub_100007218(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 20);
    if (v2)
    {
      IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
    }
  }

  result = *(a1 + 20);
  if (result)
  {
    result = IOServiceClose(result);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return result;
}

mach_vm_address_t sub_100007278(io_connect_t a1, uint32_t a2, mach_vm_size_t *ofSize)
{
  atAddress = 0xAAAAAAAAAAAAAAAALL;
  v4 = IOConnectMapMemory(a1, a2, mach_task_self_, &atAddress, ofSize, 1u);
  if (qword_100010218)
  {
    v5 = qword_100010218;
  }

  else
  {
    v5 = &_os_log_default;
  }

  sub_100007804(v5, "WiFiUserClientGetMemoryDescriptorForType return %d for type %d\n", v4, a2);
  if (dword_100010220)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v6;
    v18 = v6;
    v15 = v6;
    v16 = v6;
    v13 = v6;
    v14 = v6;
    *v11 = v6;
    v12 = v6;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    v7 = localtime(&v9);
    strftime(v11, 0x80uLL, "%b %d %H:%M:%S", v7);
    dprintf(dword_100010220, "%s ", v11);
    dprintf(dword_100010220, "WiFiUserClientGetMemoryDescriptorForType return %d for type %d\n", v4, a2);
  }

  return atAddress;
}

uint64_t sub_1000073A0(const char *a1, off_t *a2)
{
  memset(&v40, 0, sizeof(v40));
  bzero(v39, 0x401uLL);
  if (!a1 || !a2)
  {
    if (qword_100010218)
    {
      v26 = qword_100010218;
    }

    else
    {
      v26 = &_os_log_default;
    }

    sub_100007804(v26, "'%s' failed !!\n", "getSizeFromFile");
    if (dword_100010220)
    {
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v27;
      v38 = v27;
      v35 = v27;
      v36 = v27;
      v33 = v27;
      v34 = v27;
      *v31 = v27;
      v32 = v27;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      time(&v30);
      v28 = localtime(&v30);
      strftime(v31, 0x80uLL, "%b %d %H:%M:%S", v28);
      dprintf(dword_100010220, "%s ", v31);
      dprintf(dword_100010220, "'%s' failed !!\n");
    }

    return 0;
  }

  realpath_DARWIN_EXTSN(a1, v39);
  v4 = &_os_log_default;
  if (qword_100010218)
  {
    v5 = qword_100010218;
  }

  else
  {
    v5 = &_os_log_default;
  }

  sub_100007804(v5, "%s: path['%s'], resolved['%s']\n", "getSizeFromFile", a1, v39);
  if (dword_100010220)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v6;
    v38 = v6;
    v35 = v6;
    v36 = v6;
    v33 = v6;
    v34 = v6;
    *v31 = v6;
    v32 = v6;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    v7 = localtime(&v30);
    strftime(v31, 0x80uLL, "%b %d %H:%M:%S", v7);
    dprintf(dword_100010220, "%s ", v31);
    dprintf(dword_100010220, "%s: path['%s'], resolved['%s']\n", "getSizeFromFile", a1, v39);
  }

  if (lstat(v39, &v40))
  {
    v8 = qword_100010218;
    v9 = __error();
    if (!v8)
    {
      v8 = &_os_log_default;
    }

    v10 = strerror(*v9);
    sub_100007964(v8, "Error: Could not stat %s (%s)\n", v39, v10);
    if (!dword_100010220)
    {
      return 0;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v11;
    v38 = v11;
    v35 = v11;
    v36 = v11;
    v33 = v11;
    v34 = v11;
    *v31 = v11;
    v32 = v11;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    v12 = localtime(&v30);
    strftime(v31, 0x80uLL, "%b %d %H:%M:%S", v12);
    dprintf(dword_100010220, "%s ", v31);
    v13 = dword_100010220;
    v14 = __error();
    v29 = strerror(*v14);
    v15 = "Error: Could not stat %s (%s)\n";
    goto LABEL_13;
  }

  v17 = open(v39, 0);
  if (qword_100010218)
  {
    v4 = qword_100010218;
  }

  if (v17 < 0)
  {
    v21 = __error();
    v22 = strerror(*v21);
    sub_100007804(v4, "Could not Open file %s (%s)\n", v39, v22);
    if (!dword_100010220)
    {
      return 0;
    }

    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v23;
    v38 = v23;
    v35 = v23;
    v36 = v23;
    v33 = v23;
    v34 = v23;
    *v31 = v23;
    v32 = v23;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    v24 = localtime(&v30);
    strftime(v31, 0x80uLL, "%b %d %H:%M:%S", v24);
    dprintf(dword_100010220, "%s ", v31);
    v13 = dword_100010220;
    v25 = __error();
    v29 = strerror(*v25);
    v15 = "Could not Open file %s (%s)\n";
LABEL_13:
    dprintf(v13, v15, v39, v29);
    return 0;
  }

  v18 = v17;
  sub_100007804(v4, "Get size of %s, size = %d bytes\n", v39, LODWORD(v40.st_size));
  if (dword_100010220)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v19;
    v38 = v19;
    v35 = v19;
    v36 = v19;
    v33 = v19;
    v34 = v19;
    *v31 = v19;
    v32 = v19;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    v20 = localtime(&v30);
    strftime(v31, 0x80uLL, "%b %d %H:%M:%S", v20);
    dprintf(dword_100010220, "%s ", v31);
    dprintf(dword_100010220, "Get size of %s, size = %d bytes\n", v39, LODWORD(v40.st_size));
  }

  *a2 = v40.st_size;
  close(v18);
  return 1;
}

void sub_100007804(NSObject *a1, const char *a2, ...)
{
  va_start(va, a2);
  bzero(__str, 0x800uLL);
  vsnprintf(__str, 0x800uLL, a2, va);
  v4 = mach_continuous_time();
  *info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(info);
  if (is_mul_ok(v4, *info) && *&info[4])
  {
    v5 = v4 * *info / *&info[4];
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *info = 134218498;
    *&info[4] = v5 / 0x3B9ACA00;
    v7 = 2048;
    v8 = v5 % 0x3B9ACA00 / 0x3E8;
    v9 = 2082;
    v10 = __str;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "%06llu.%06llu %{public}s", info, 0x20u);
  }
}

void sub_100007964(NSObject *a1, const char *a2, ...)
{
  va_start(va, a2);
  bzero(__str, 0x800uLL);
  vsnprintf(__str, 0x800uLL, a2, va);
  v4 = mach_continuous_time();
  *info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(info);
  if (is_mul_ok(v4, *info) && *&info[4])
  {
    v5 = v4 * *info / *&info[4];
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *info = 134218498;
    *&info[4] = v5 / 0x3B9ACA00;
    v7 = 2048;
    v8 = v5 % 0x3B9ACA00 / 0x3E8;
    v9 = 2082;
    v10 = __str;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%06llu.%06llu %{public}s", info, 0x20u);
  }
}

uint64_t sub_100007AC8(char *a1, void *a2, off_t *a3)
{
  memset(&v76, 0, sizeof(v76));
  bzero(v75, 0x401uLL);
  if (!a2 || !a3)
  {
    if (qword_100010218)
    {
      v15 = qword_100010218;
    }

    else
    {
      v15 = &_os_log_default;
    }

    sub_100007964(v15, "Error: copyDataFromFile data/datalength is null\n");
    if (!dword_100010220)
    {
      return 0;
    }

    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v73 = v16;
    v74 = v16;
    v71 = v16;
    v72 = v16;
    v69 = v16;
    v70 = v16;
    *v67 = v16;
    v68 = v16;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    time(&v66);
    v17 = localtime(&v66);
    strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v17);
    dprintf(dword_100010220, "%s ", v67);
    v14 = dword_100010220;
    v13 = "Error: copyDataFromFile data/datalength is null\n";
    goto LABEL_14;
  }

  if (!lstat(a1, &v76))
  {
    v20 = realpath_DARWIN_EXTSN(a1, v75);
    v21 = qword_100010218;
    if (!v20)
    {
      v32 = __error();
      if (v21)
      {
        v33 = v21;
      }

      else
      {
        v33 = &_os_log_default;
      }

      v34 = strerror(*v32);
      sub_100007964(v33, "Error: Could not resolve path %s (%s)\n", a1, v34);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v35;
      v74 = v35;
      v71 = v35;
      v72 = v35;
      v69 = v35;
      v70 = v35;
      *v67 = v35;
      v68 = v35;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      v36 = localtime(&v66);
      strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v36);
      dprintf(dword_100010220, "%s ", v67);
      v11 = dword_100010220;
      v37 = __error();
      v64 = a1;
      v65 = strerror(*v37);
      v13 = "Error: Could not resolve path %s (%s)\n";
      goto LABEL_8;
    }

    if (qword_100010218)
    {
      v22 = qword_100010218;
    }

    else
    {
      v22 = &_os_log_default;
    }

    sub_100007804(v22, "%s: path['%s'], resolved['%s']\n", "copyDataFromFile", a1, v75);
    if (dword_100010220)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v23;
      v74 = v23;
      v71 = v23;
      v72 = v23;
      v69 = v23;
      v70 = v23;
      *v67 = v23;
      v68 = v23;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      v24 = localtime(&v66);
      strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v24);
      dprintf(dword_100010220, "%s ", v67);
      dprintf(dword_100010220, "%s: path['%s'], resolved['%s']\n", "copyDataFromFile", a1, v75);
    }

    if (lstat(v75, &v76))
    {
      v25 = qword_100010218;
      v26 = __error();
      if (!v25)
      {
        v25 = &_os_log_default;
      }

      v27 = strerror(*v26);
      sub_100007964(v25, "Error: Could not stat %s (%s)\n", v75, v27);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v28;
      v74 = v28;
      v71 = v28;
      v72 = v28;
      v69 = v28;
      v70 = v28;
      *v67 = v28;
      v68 = v28;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      v29 = localtime(&v66);
      strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v29);
      dprintf(dword_100010220, "%s ", v67);
      v30 = dword_100010220;
      v31 = __error();
      v64 = v75;
      v65 = strerror(*v31);
      v13 = "Error: Could not stat %s (%s)\n";
LABEL_28:
      v14 = v30;
      goto LABEL_14;
    }

    v38 = open(v75, 0);
    if (qword_100010218)
    {
      v39 = qword_100010218;
    }

    else
    {
      v39 = &_os_log_default;
    }

    if (v38 < 0)
    {
      v47 = __error();
      v48 = strerror(*v47);
      sub_100007804(v39, "Could not Open file %s (%s)\n", v75, v48);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v49 = 0xAAAAAAAAAAAAAAAALL;
      *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v49;
      v74 = v49;
      v71 = v49;
      v72 = v49;
      v69 = v49;
      v70 = v49;
      *v67 = v49;
      v68 = v49;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      v50 = localtime(&v66);
      strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v50);
      dprintf(dword_100010220, "%s ", v67);
      v30 = dword_100010220;
      v51 = __error();
      v64 = v75;
      v65 = strerror(*v51);
      v13 = "Could not Open file %s (%s)\n";
      goto LABEL_28;
    }

    v40 = v38;
    sub_100007804(v39, "Copying %s, file size = %d bytes\n", v75, LODWORD(v76.st_size));
    if (dword_100010220)
    {
      *&v41 = 0xAAAAAAAAAAAAAAAALL;
      *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v41;
      v74 = v41;
      v71 = v41;
      v72 = v41;
      v69 = v41;
      v70 = v41;
      *v67 = v41;
      v68 = v41;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      v42 = localtime(&v66);
      strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v42);
      dprintf(dword_100010220, "%s ", v67);
      dprintf(dword_100010220, "Copying %s, file size = %d bytes\n", v75, LODWORD(v76.st_size));
    }

    st_size = v76.st_size;
    if (v76.st_size > *a3)
    {
      if (qword_100010218)
      {
        v44 = qword_100010218;
      }

      else
      {
        v44 = &_os_log_default;
      }

      sub_100007964(v44, "Error: copyDataFromFile ilestat.st_size %lld is bigger then supplied buffer %lld\n", v76.st_size, *a3);
      if (dword_100010220)
      {
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v73 = v45;
        v74 = v45;
        v71 = v45;
        v72 = v45;
        v69 = v45;
        v70 = v45;
        *v67 = v45;
        v68 = v45;
        v66 = 0xAAAAAAAAAAAAAAAALL;
        time(&v66);
        v46 = localtime(&v66);
        strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v46);
        dprintf(dword_100010220, "%s ", v67);
        dprintf(dword_100010220, "Error: copyDataFromFile ilestat.st_size %lld is bigger then supplied buffer %lld\n", v76.st_size, *a3);
      }

      close(v40);
      return 0;
    }

    *a3 = v76.st_size;
    v52 = read(v40, a2, st_size);
    if (v52 < 0)
    {
      v54 = qword_100010218;
      v55 = __error();
      if (!v54)
      {
        v54 = &_os_log_default;
      }

      v56 = strerror(*v55);
      sub_100007964(v54, "Error: read %s (%s)\n", a1, v56);
      if (dword_100010220)
      {
        *&v57 = 0xAAAAAAAAAAAAAAAALL;
        *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v73 = v57;
        v74 = v57;
        v71 = v57;
        v72 = v57;
        v69 = v57;
        v70 = v57;
        *v67 = v57;
        v68 = v57;
        v66 = 0xAAAAAAAAAAAAAAAALL;
        time(&v66);
        v58 = localtime(&v66);
        strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v58);
        dprintf(dword_100010220, "%s ", v67);
        v59 = dword_100010220;
        v60 = __error();
        strerror(*v60);
        dprintf(v59, "Error: read %s (%s)\n");
      }
    }

    else
    {
      v53 = v52;
      if (v52 == v76.st_size)
      {
        v18 = 1;
LABEL_62:
        close(v40);
        return v18;
      }

      if (qword_100010218)
      {
        v61 = qword_100010218;
      }

      else
      {
        v61 = &_os_log_default;
      }

      sub_100007964(v61, "Error: Only read %ld of %d files\n", v53, LODWORD(v76.st_size));
      if (dword_100010220)
      {
        *&v62 = 0xAAAAAAAAAAAAAAAALL;
        *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v73 = v62;
        v74 = v62;
        v71 = v62;
        v72 = v62;
        v69 = v62;
        v70 = v62;
        *v67 = v62;
        v68 = v62;
        v66 = 0xAAAAAAAAAAAAAAAALL;
        time(&v66);
        v63 = localtime(&v66);
        strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v63);
        dprintf(dword_100010220, "%s ", v67);
        dprintf(dword_100010220, "Error: Only read %ld of %d files\n");
      }
    }

    v18 = 0;
    goto LABEL_62;
  }

  v6 = qword_100010218;
  v7 = __error();
  if (!v6)
  {
    v6 = &_os_log_default;
  }

  v8 = strerror(*v7);
  sub_100007964(v6, "Error: Could not stat %s (%s)\n", a1, v8);
  if (!dword_100010220)
  {
    return 0;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73 = v9;
  v74 = v9;
  v71 = v9;
  v72 = v9;
  v69 = v9;
  v70 = v9;
  *v67 = v9;
  v68 = v9;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  time(&v66);
  v10 = localtime(&v66);
  strftime(v67, 0x80uLL, "%b %d %H:%M:%S", v10);
  dprintf(dword_100010220, "%s ", v67);
  v11 = dword_100010220;
  v12 = __error();
  v64 = a1;
  v65 = strerror(*v12);
  v13 = "Error: Could not stat %s (%s)\n";
LABEL_8:
  v14 = v11;
LABEL_14:
  dprintf(v14, v13, v64, v65);
  return 0;
}

CFMutableStringRef sub_1000082E0(const __CFArray *a1, const void *a2, _DWORD *a3, const __CFString *a4)
{
  *a3 = -1;
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    if (!CFDictionaryGetValue(ValueAtIndex, a2))
    {
      goto LABEL_12;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, a2);
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 255, Value);
    if (!MutableCopy)
    {
      goto LABEL_12;
    }

    v14 = MutableCopy;
    v15 = CFGetTypeID(MutableCopy);
    if (v15 == CFStringGetTypeID())
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v16 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a4);
      CFStringAppend(v16, v14);
      CStringPtr = CFStringGetCStringPtr(v16, 0);
      if ((sub_1000073A0(CStringPtr, &v19) & 1) == 0)
      {
        CFRelease(v16);
        goto LABEL_11;
      }

      if (v16)
      {
        break;
      }
    }

LABEL_11:
    CFRelease(v14);
LABEL_12:
    if (v9 == ++v10)
    {
      return 0;
    }
  }

  CFRelease(v14);
  *a3 = v10;
  return v16;
}

BOOL sub_100008458(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v5 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        result = Value != 0;
        if (Value)
        {
          break;
        }
      }

      while (v5 != v6++);
    }
  }

  return result;
}