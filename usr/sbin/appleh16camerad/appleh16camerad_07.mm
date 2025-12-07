void sub_10007E288()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E470()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E560()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E5D0()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E640()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E6B0()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E720()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E790()
{
  sub_1000082AC();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E80C(os_log_t log)
{
  v1 = 136315138;
  v2 = "sendMessageSync";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s - received reply\n", &v1, 0xCu);
}

void sub_10007E910()
{
  sub_1000082AC();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007EB70(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "createXpcFromType got a dictionary with null value (for key %s)", &v1, 0xCu);
}

void sub_10007EFC0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "MyIOHIDEventCallback";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - IOHID Service Client Reference is NULL\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F038(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "H16ISPPhotometerManager_block_invoke";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create the audio unit instance\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F0B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "H16ISPPhotometerManager_block_invoke";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Unable to create Flicker Detector\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F128(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create primary usage references\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F1A0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create device usage references\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F218(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create device matching array\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F290(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create device matching dictionary\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F308(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create a matching dictionary\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F380(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "InitializeHIDEventSystemClientForALS";
  sub_100018678(&_mh_execute_header, a1, a3, "%s - Could not create HID event system client\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007F3F8(uint64_t a1)
{
  v25 = 255;
  if (!a1)
  {
    return;
  }

  if (!sub_10005E5B8(a1, &v25))
  {
    goto LABEL_42;
  }

  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"LoadHPR", kCFAllocatorDefault, 0);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID() && !CFBooleanGetValue(v5))
    {
      CFRelease(v5);
      v24 = off_10041DCA8;
      if (off_10041DCA8 == &_os_log_default)
      {
        v24 = os_log_create("com.apple.isp", "general");
        off_10041DCA8 = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "LoadFrontIRHPRFile";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s - noHPR boot-arg set\n", buf, 0xCu);
      }

LABEL_42:
      v15 = 0;
      goto LABEL_43;
    }
  }

  v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageChipID", kCFAllocatorDefault, 3u);
  if (v7)
  {
    v8 = v7;
    v9 = AMFDRCreateInstanceString();
    if (v9)
    {
      v10 = v9;
      v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageUID", kCFAllocatorDefault, 3u);
      if (v11)
      {
        v12 = v11;
        v13 = AMFDRCreateInstanceString();
        if (v13)
        {
          v14 = v13;
          v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v10, v13);
          CFRelease(v12);
          CFRelease(v14);
          goto LABEL_11;
        }

        NSLog(@"Couldn't create SavageUID string ref");
        CFRelease(v12);
      }

      else
      {
        NSLog(@"Couldn't read SavageUID");
      }

      v15 = 0;
LABEL_11:
      CFRelease(v8);
      CFRelease(v10);
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    NSLog(@"Couldn't create SavageChipID string ref");
    CFRelease(v8);
  }

  else
  {
    NSLog(@"Couldn't read SavageChipID");
  }

  v15 = 0;
  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_13:
  if (!v15)
  {
    NSLog(@"Couldn't combine frontIR chipIDStr and uidStr");
LABEL_43:
    v21 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v16 = [NSData dataWithContentsOfFile:@"/usr/local/share/firmware/isp/Savage/FrontIRHPR.DER"];
  if (v16)
  {
    v17 = v16;
    NSLog(@"Found FrontIR override (has highest precedence) HPR file - camChannel = %d", v25);
    goto LABEL_16;
  }

  v17 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  if (v17)
  {
LABEL_16:
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v20 = sub_10005D4E0(a1, v25 | 0x80000000, BytePtr, Length, 0x501u);
    v21 = CFCopyDescription(v17);
    v22 = off_10041DCA8;
    if (off_10041DCA8 == &_os_log_default)
    {
      v22 = os_log_create("com.apple.isp", "general");
      off_10041DCA8 = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      CStringPtr = CFStringGetCStringPtr(v21, 0);
      *buf = 136315650;
      v27 = "LoadFrontIRHPRFile";
      v28 = 1024;
      v29[0] = v20;
      LOWORD(v29[1]) = 2080;
      *(&v29[1] + 2) = CStringPtr;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s - Status = %08x; HPR - %s\n", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  NSLog(@"No HPR file for frontIR found");
  v21 = 0;
LABEL_20:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void sub_10007F8D8(const void *a1)
{
  NSLog(@"pDevice is NULL");
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_10007F910(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 12);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "input/ouput buffer or parameter setting incorrect. win size %d \n\n", v3, 8u);
}

void sub_100080744()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_1000807BC()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_100080834(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to send Pearl Statistics into the diagnostics system %08X\n\n", v1, 8u);
}

void sub_1000808B0()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_100080928()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_1000809A0()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_100080A18()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_100080A90()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %08X\n\n", v2, v3, v4, v5, v6);
}

void sub_100080B08()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %d\n\n", v2, v3, v4, v5, v6);
}

void sub_100080B80()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %d\n\n", v2, v3, v4, v5, v6);
}

void sub_100080BF8(os_log_t log)
{
  v1 = 136315138;
  v2 = "com.apple.applecamerad.SpmiFaultStatus";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to send the %s event into the diagnostics system.\n\n", &v1, 0xCu);
}

void sub_100080C7C()
{
  v6 = 136315394;
  sub_10004E9BC();
  sub_100008260(&_mh_execute_header, v0, v1, "Failed to send the %s event into the diagnostics system %d\n\n", v2, v3, v4, v5, v6);
}

void sub_100080D74()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100080DF0()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000502D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100080EEC()
{
  sub_1000502F4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100080FEC()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081068()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000502D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100081164(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 136315650;
  v5 = "RPCFileRead";
  v6 = 2080;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Failed to seek file %s: offset %d\n", &v4, 0x1Cu);
}

void sub_100081204()
{
  v0 = __error();
  strerror(*v0);
  sub_1000502F4();
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000812A8()
{
  sub_100014130();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000813AC()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081428()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000502D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100081524()
{
  v0 = __error();
  strerror(*v0);
  sub_1000502F4();
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000815C8(char *a1)
{
  dirname(a1);
  sub_1000502F4();
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100081658()
{
  sub_100014130();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10008175C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000817D8()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000082F0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100081854()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000818D0()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000082F0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10008194C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000819C8()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000082F0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100081A44()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081AC0()
{
  sub_10001414C(__stack_chk_guard);
  sub_1000082F0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100081B3C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081BB8()
{
  sub_10001414C(__stack_chk_guard);
  sub_100050304();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100081C34()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081CB0()
{
  sub_100050304();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100081DC4()
{
  sub_10001414C(__stack_chk_guard);
  sub_100014130();
  sub_1000502C0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100081E4C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081EC8()
{
  sub_100014130();
  sub_1000502C0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100081F54()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081FD0()
{
  sub_10001414C(__stack_chk_guard);
  sub_100014130();
  sub_1000502C0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000825C0()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000826C8()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10008274C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000827D8()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000829F4()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100082A78()
{
  sub_10005F044(__stack_chk_guard);
  sub_100014130();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100082B00()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100082CF4(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "ISP_PowerOnCamera";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - FTC gain buffer allocation failed\n", buf, 0xCu);
}

void sub_100082DCC(uint8_t *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = 67109120;
  *a2 = -536870165;
  sub_10005F050(&_mh_execute_header, &_os_log_default, a3, "LoadSetFile returned 0x%08x - ignoring error\n", a1);
}

void sub_100082ED8(uint8_t *a1, int a2, _DWORD *a3)
{
  *a1 = 67109120;
  *a3 = a2;
  sub_10005F050(&_mh_execute_header, &_os_log_default, a3, "Error setting FW property: 0x%08x\n", a1);
}

void sub_100082F1C(uint8_t *a1, int a2, _DWORD *a3)
{
  *a1 = 67109120;
  *a3 = a2;
  sub_10005F050(&_mh_execute_header, &_os_log_default, a3, "Error: SetSensorCustomSettings returned an error: 0x%08X\n", a1);
}

void sub_100082F60()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100082FE4()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000831EC()
{
  sub_10005F044(__stack_chk_guard);
  sub_100014130();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100083274()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000833FC()
{
  sub_10005F01C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100083590()
{
  sub_10005F01C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100083724(uint8_t *a1, CFStringRef theString, const char **a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  *a1 = 136315138;
  *a3 = CStringPtr;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't read %s. Sensor is hosed/disconnected.\n", a1, 0xCu);
}

uint64_t sub_100083790(uint64_t a1)
{
  if (off_10041DCD8 == &_os_log_default)
  {
    off_10041DCD8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008294();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  return sub_10005D4E0(a1, 0x80000000, 0, 0, 0xCCCC0301);
}

void sub_100083844(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "LoadFDRDataFileCMPM";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - Can't create /var/mobile/Library/ISP\n", buf, 0xCu);
}

void sub_100083898(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "LoadFDRDataFileCMPM";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - Can't create /var/mobile/Library/ISP/CalData\n", buf, 0xCu);
}

uint64_t sub_100083BB0(char a1)
{
  sub_100008294();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

uint64_t sub_100083C48(char a1)
{
  sub_100008294();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

void sub_100083C9C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100083DA4(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a3[1062];
  v5 = a3[1063];
  v6 = a3[1064];
  v7 = a3[1065];
  v8 = a3[1066];
  v9 = a3[1067];
  v10 = a3[1068];
  v11 = 136317442;
  v12 = "GetProcNameAndAuditToken";
  v13 = 2080;
  v14 = a1;
  v15 = 1024;
  v16 = v3;
  v17 = 1024;
  v18 = v4;
  v19 = 1024;
  v20 = v5;
  v21 = 1024;
  v22 = v6;
  v23 = 1024;
  v24 = v7;
  v25 = 1024;
  v26 = v8;
  v27 = 1024;
  v28 = v9;
  v29 = 1024;
  v30 = v10;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s - procNameForCIL:%s / audit_token:0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x\n", &v11, 0x46u);
}

void sub_100083F9C()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10008400C()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10008407C()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000840EC()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000841DC()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100084258()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000842D4()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100084350()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000843CC()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000845B0()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084674(_DWORD *a1)
{
  v1 = sub_10006106C(a1);
  sub_100014170(v1, v2, "getProperty");
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Unable to get the remote connection object (pid %{private}d)\n", v4, 0x12u);
}

void sub_1000846B8(_DWORD *a1)
{
  v1 = sub_10006106C(a1);
  sub_100014170(v1, v2, "getProperty");
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Unable to create a reply dictionary (pid %{private}d)\n", v4, 0x12u);
}

void sub_1000846FC(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136315650;
  *(buf + 4) = "purgeTailspins";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  *(buf + 11) = 1024;
  *(buf + 6) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Failed to open directory %s, errno=%d\n", buf, 0x1Cu);
}

void sub_10008476C(xpc_connection_t *a1)
{
  xpc_connection_get_pid(*a1);
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_100084808(uint64_t a1)
{
  v1 = sub_100061060(a1);
  xpc_connection_get_pid(v1);
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10008488C(uint64_t a1)
{
  v1 = sub_100061060(a1);
  xpc_connection_get_pid(v1);
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100084910(uint64_t a1)
{
  v1 = sub_100061060(a1);
  xpc_connection_get_pid(v1);
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100084990(uint64_t a1)
{
  v1 = sub_100061060(a1);
  xpc_connection_get_pid(v1);
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100084A10(uint64_t a1)
{
  v1 = sub_100061060(a1);
  xpc_connection_get_pid(v1);
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100084A90(uint64_t a1)
{
  xpc_connection_get_pid(**(a1 + 40));
  sub_100014140();
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100084B18()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084B54()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084B90()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084C40()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100084CBC()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100084D2C()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100084D9C()
{
  sub_100061080();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100084E10()
{
  sub_100061080();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100084E84()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084EC0()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084F54()
{
  v0 = 136315138;
  v1 = "LSCComputeSNFVerticalGains";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - LSCComputeSNFVerticalGains: null ptr! pRadialGainAsymScaleSet.\n", &v0, 0xCu);
}

void sub_100085098()
{
  __error();
  sub_100008318();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100085130()
{
  v0 = __error();
  strerror(*v0);
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10008523C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[TAILSPIN]Failed to create CFString for reason: %s\n", &v2, 0xCu);
}

void sub_1000852B4(uint64_t a1)
{
  [*(a1 + 32) objectForKeyedSubscript:UnsafePointer];
  sub_100008318();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        a4[2] = a2 | 0xE000000000000000;
        a4[5] = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}