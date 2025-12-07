void sub_100002D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002E30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  *(*(*(a1 + 72) + 8) + 24) = 0;
  *(*(*(a1 + 80) + 8) + 24) = 0;
  v7 = *(*(a1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = [NSData dataWithBytes:a2 length:a3];
  v10 = *(*(a1 + 96) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 96) + 8) + 40);
  if (!v12 || ![v12 length])
  {
    sub_10000C144();
    goto LABEL_30;
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(*(a1 + 96) + 8) + 40);
    *buf = 138412290;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "manifestTicket: %@", buf, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    sub_10000C0E4();
    goto LABEL_30;
  }

  CFDictionarySetValue(*(a1 + 144), @"SeaCookiePairingOption", kCFBooleanTrue);
  CFDictionarySetValue(*(a1 + 144), @"PersonalizedFirmwareRootPath", @"/private/var/tmp/usr/standalone/firmware/Savage/");
  CFDictionarySetValue(*(a1 + 144), @"RestoreInternal", kCFBooleanTrue);
  CFDictionaryAddValue(*(*(*(a1 + 64) + 8) + 24), @"Options", *(a1 + 144));
  v15 = handleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Creating savage updater ...", buf, 2u);
  }

  *(*(*(a1 + 56) + 8) + 24) = SavageUpdaterCreate();
  v16 = *(*(*(a1 + 104) + 8) + 24);
  if (!*(*(*(a1 + 56) + 8) + 24) || v16)
  {
    v40 = *(*(a1 + 88) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v16;

    *(*(*(a1 + 104) + 8) + 24) = 0;
    *(*(*(a1 + 112) + 8) + 24) = -4;
    v42 = handleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10000BDD0();
    }

    goto LABEL_56;
  }

  if (SavageUpdaterIsDone())
  {
    goto LABEL_30;
  }

  v17 = *(*(*(a1 + 104) + 8) + 24);
  if (v17)
  {
    v48 = *(*(a1 + 88) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v17;

    *(*(*(a1 + 104) + 8) + 24) = 0;
    *(*(*(a1 + 112) + 8) + 24) = -5;
    v42 = handleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
LABEL_55:
      sub_10000BE5C();
    }

LABEL_56:

    goto LABEL_30;
  }

  *(*(*(a1 + 72) + 8) + 24) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v18 = *(*(*(a1 + 72) + 8) + 24);
  if (!v18)
  {
    sub_10000C084();
    goto LABEL_30;
  }

  CFDictionarySetValue(v18, @"Savage,Ticket", *(*(*(a1 + 96) + 8) + 40));
  *(*(*(a1 + 120) + 8) + 24) = SavageUpdaterExecCommand() != 0;
  v19 = *(*(*(a1 + 104) + 8) + 24);
  if (*(*(*(a1 + 120) + 8) + 24) != 1 || v19)
  {
    v43 = *(*(a1 + 88) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v19;

    *(*(*(a1 + 104) + 8) + 24) = 0;
    *(*(*(a1 + 112) + 8) + 24) = -5;
    v42 = handleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device info dict is %@", buf, 0xCu);
    }

    v22 = CFDictionaryGetValue(*(*(*(a1 + 40) + 8) + 24), @"Digest");
    v23 = *(*(a1 + 128) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = handleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*(*(a1 + 128) + 8) + 40);
      *buf = 138412290;
      v52 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Extracted patch digest: %@", buf, 0xCu);
    }

    v27 = [*(a1 + 32) getPatchDataWithDigest:*(*(*(a1 + 128) + 8) + 40)];
    v28 = *(*(a1 + 136) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v30 = *(*(*(a1 + 136) + 8) + 40);
    if (v30 && [v30 length])
    {
      v31 = handleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found patch files successfully", buf, 2u);
      }

      *(*(*(a1 + 80) + 8) + 24) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v32 = *(*(*(a1 + 80) + 8) + 24);
      if (v32)
      {
        CFDictionaryAddValue(v32, @"FirmwareData", *(*(*(a1 + 136) + 8) + 40));
        CFDictionaryAddValue(*(*(*(a1 + 80) + 8) + 24), @"Savage,Ticket", *(*(*(a1 + 96) + 8) + 40));
        *(*(*(a1 + 120) + 8) + 24) = SavageUpdaterExecCommand() != 0;
        v33 = *(*(*(a1 + 104) + 8) + 24);
        if (*(*(*(a1 + 120) + 8) + 24) != 1 || v33)
        {
          v45 = *(*(a1 + 88) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v33;

          *(*(*(a1 + 104) + 8) + 24) = 0;
          *(*(*(a1 + 112) + 8) + 24) = -5;
          v47 = handleForCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_10000BECC();
          }
        }

        else
        {
          v34 = handleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Update savage firmware successfully", buf, 2u);
          }

          *(*(*(a1 + 112) + 8) + 24) = 0;
        }
      }

      else
      {
        sub_10000BF54();
      }
    }

    else
    {
      sub_10000BFB4();
    }
  }

  else
  {
    sub_10000C014(a1);
  }

LABEL_30:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  objc_autoreleasePoolPop(v6);
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v35 = handleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10000C1A4();
    }

LABEL_33:

    return 0xFFFFFFFFLL;
  }

  v37 = [*(a1 + 32) detectCamera];
  if (v37 == 1)
  {
    v35 = handleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10000C214();
    }

    goto LABEL_33;
  }

  if (!v37)
  {
    v35 = handleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10000C250();
    }

    goto LABEL_33;
  }

  v38 = *(*(a1 + 88) + 8);
  obj = *(v38 + 40);
  v39 = [CRPearlController powerCycleSensor:&obj];
  objc_storeStrong((v38 + 40), obj);
  if ((v39 & 1) == 0)
  {
    v35 = handleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10000C28C();
    }

    goto LABEL_33;
  }

  return 0;
}

void sub_1000037E8(uint64_t a1, uint64_t a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = a1;
    v7 = 2080;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %s", &v5, 0x16u);
  }
}

uint64_t sub_1000038A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = objc_opt_new();
  v6 = [v5 sign:v4 keyBlob:*(a1 + 32)];

  if (v6)
  {
    v7 = [v6 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = handleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C2FC();
    }

    v7 = 0;
    *(*(*(a1 + 40) + 8) + 24) = -16;
  }

  return v7;
}

BOOL sub_100004E4C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t verifyFDRData(const void *a1, size_t a2)
{
  if (qword_100018B18 != -1)
  {
    sub_100005B34();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = a1;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "verifyFDRData %p %zu\n", &v13, 0x16u);
  }

  if (a1)
  {
    if (a2)
    {
      v5 = sub_1000050AC();
      if (v5)
      {
        sub_100005B48(v5, v5, &v13);
      }

      else
      {
        v6 = sub_100005148(dword_100018B10, 10, 0, a1, a2, 0, 0);
        v7 = 0;
        if (!v6)
        {
          goto LABEL_12;
        }

        sub_100005C48(v6, v6, &v13);
      }
    }

    else
    {
      sub_100005D48(&v13);
    }
  }

  else
  {
    sub_100005E48(&v13);
  }

  v7 = v13;
LABEL_12:
  if (dword_100018B10)
  {
    IOServiceClose(dword_100018B10);
    dword_100018B10 = 0;
  }

  if (v7)
  {
    if (qword_100018B18 != -1)
    {
      sub_100005F48();
    }

    if (__osLogPearlLibTrace)
    {
      v8 = __osLogPearlLibTrace;
    }

    else
    {
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = v7;
      v9 = v8;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v9, v10, "verifyFDRData -> %d\n", &v13, 8u);
    }
  }

  else
  {
    if (qword_100018B18 != -1)
    {
      sub_100005F48();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_29;
    }
  }

  return v7;
}

uint64_t sub_1000050AC()
{
  v0 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100018B10);
    v4 = v3;
    if (v3)
    {
      sub_100005F70(v3);
    }

    IOObjectRelease(v2);
  }

  else
  {
    sub_10000607C(&v6);
    return v6;
  }

  return v4;
}

uint64_t sub_100005148(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v14 = calloc(a5 + 8, 1uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = 21072;
    v14[1] = a2;
    v14[2] = 1;
    v14[3] = a3;
    if (a5)
    {
      memmove(v14 + 4, a4, a5);
    }

    if (a7)
    {
      v18 = *a7;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
      *a7 = v18;
    }

    else
    {
      v18 = 0;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
    }

    free(v15);
  }

  else
  {
    sub_100006184(&v19);
    return v19;
  }

  return v16;
}

uint64_t pearlSeaCookieHandleMessage(int a1, const void *a2, size_t a3, void *a4, size_t *a5, id a6)
{
  v26 = a6;
  if (qword_100018B18 != -1)
  {
    sub_100005B34();
  }

  v11 = &NSObject__properties;
  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    *v32 = a3;
    *&v32[8] = 2048;
    *&v32[10] = a4;
    v33 = 2048;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage %d %p %zu %p %p\n", buf, 0x30u);
  }

  if (a1 && a1 != 7)
  {
    if (!a2)
    {
      sub_100006D84(buf, &v27);
      goto LABEL_63;
    }

    if (!a3)
    {
      sub_100006C78(buf, &v27);
      goto LABEL_63;
    }
  }

  if (a1 == 8 || a4)
  {
    if (a1 == 8 || a5)
    {
      if (a5)
      {
        v13 = *a5;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_1000050AC();
      if (v14)
      {
        sub_10000649C(v14, v14, buf, &v27);
        v16 = *buf;
        v23 = v27;
      }

      else
      {
        if (a3 >= 0xFFFFFFFFFFFFFFF3)
        {
          sub_100006B64(a3 >= 0xFFFFFFFFFFFFFFF3, buf, &v27);
        }

        else
        {
          v15 = malloc(a3 + 13);
          if (v15)
          {
            v16 = v15;
            *v15 = a1;
            v15[4] = 1;
            *(v15 + 5) = a3;
            memcpy(v15 + 13, a2, a3);
            v17 = sub_100005148(dword_100018B10, 70, 0, v16, a3 + 13, a4, a5);
            if (v17)
            {
              sub_1000065F4(v17, v16, v17, buf, &v27);
            }

            else
            {
              if (a1 == 2)
              {
LABEL_27:
                v16[4] = 0;
                *a5 = v13;
                v19 = sub_100005148(dword_100018B10, 70, 0, v16, a3 + 13, a4, a5);
                if (!v19)
                {
LABEL_28:
                  if (a4 && a5)
                  {
                    if (qword_100018B18 != -1)
                    {
                      sub_100005F48();
                    }

                    if (__osLogPearlLib)
                    {
                      v20 = __osLogPearlLib;
                    }

                    else
                    {
                      v20 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = *a5;
                      *buf = 67109890;
                      *&buf[4] = a1;
                      v29 = 2048;
                      v30 = v21;
                      v31 = 1040;
                      *v32 = v21;
                      *&v32[4] = 2096;
                      *&v32[6] = a4;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
                    }
                  }

                  if (qword_100018B18 != -1)
                  {
                    sub_100005F48();
                  }

                  if (__osLogPearlLibTrace)
                  {
                    v22 = __osLogPearlLibTrace;
                  }

                  else
                  {
                    v22 = &_os_log_default;
                  }

                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v29 = 1024;
                    LODWORD(v30) = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
                  }

                  v23 = 0;
LABEL_45:
                  free(v16);
                  goto LABEL_46;
                }

                sub_10000680C(v19, v16, v19, buf, &v27);
                goto LABEL_60;
              }

              if (a1 != 5)
              {
                goto LABEL_28;
              }

              if (v26)
              {
                v18 = v26[2]();
                if (!v18)
                {
                  goto LABEL_27;
                }

                sub_100006700(v18, v16, v18, buf, &v27);
              }

              else
              {
                sub_100006918(v16, buf, &v27);
              }
            }

LABEL_60:
            v16 = *buf;
            v23 = v27;
            goto LABEL_61;
          }

          sub_100006A48(buf, &v27);
        }

        v16 = *buf;
        v23 = v27;
      }

LABEL_61:
      v11 = &NSObject__properties;
      goto LABEL_64;
    }

    sub_100006390(buf, &v27);
  }

  else
  {
    sub_100006284(buf, &v27);
  }

LABEL_63:
  v16 = *buf;
  v23 = v27;
LABEL_64:
  if (qword_100018B18 != -1)
  {
    sub_100005F48();
  }

  if (v11[349])
  {
    v25 = v11[349];
  }

  else
  {
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v29 = 1024;
    LODWORD(v30) = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
  }

  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (dword_100018B10)
  {
    IOServiceClose(dword_100018B10);
    dword_100018B10 = 0;
  }

  return v23;
}

void sub_100005768(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-PearlFactory");
  v2 = __osLogPearlLib;
  __osLogPearlLib = v1;

  v3 = __osLogPearlLib;
  if (!__osLogPearlLib)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100006E90();
    }

    v3 = __osLogPearlLib;
  }

  objc_storeStrong(&__osLogPearlLibTrace, v3);
}

void sub_1000058D8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _os_log_impl(a1, v14, OS_LOG_TYPE_DEFAULT, a4, va, 0x30u);
}

BOOL sub_1000058F8@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100005918(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _os_log_impl(a1, v14, OS_LOG_TYPE_DEFAULT, a4, va, 0x30u);
}

BOOL sub_100005938@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_10000599C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _os_log_impl(a1, v14, OS_LOG_TYPE_DEFAULT, a4, va, 0x30u);
}

BOOL sub_1000059BC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100005A74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x30u);
}

BOOL sub_100005A8C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_100006ED8()
{

  return memset_s(v0, 8uLL, 0, 8uLL);
}

uint64_t sub_100006F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);

  return sub_10000CBE0(v4, va, va1);
}

uint64_t sub_100006F4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void *sub_100006FAC()
{

  return calloc(8uLL, 1uLL);
}

uint64_t sub_100006FD4()
{
  if (qword_100018B28 != -1)
  {
    sub_10000CA4C();
  }

  dispatch_sync(qword_100018B30, &stru_100014648);
  return dword_100018B20;
}

void sub_10000701C(id a1)
{
  if (!dword_100018B20)
  {
    dword_100018B20 = sub_100007088("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_100007088(char *path, const char *a2)
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

uint64_t sub_100007228(void **a1)
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

uint64_t sub_1000072A8(void **a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_100007344(a1, a2);
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

void *sub_100007344(void *a1, unsigned __int8 *a2)
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
      if (ccder_blob_decode_sequence_tl() && sub_1000071BC(a2, &v4[a2[1]], v6, v7))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_1000073D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_1000072A8(a5, v7) && !sub_10000CDB0())
    {
      return 1;
    }
  }

  else
  {
    sub_10000D1E4();
  }

  sub_10000D24C();
  return 0;
}

uint64_t sub_1000074C0(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_1000074EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

uint64_t sub_100007518()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_100007538(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

void *sub_100007594()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_1000075AC(size_t a1)
{

  return calloc(a1, 1uLL);
}

BOOL sub_1000075F0()
{
  *buffer = 0;
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"development-cert", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v3);
      if ((Length - 1) <= 3)
      {
        v8.length = Length;
        v8.location = 0;
        CFDataGetBytes(v3, v8, buffer);
      }
    }

    CFRelease(v3);
  }

  IOObjectRelease(v1);
  return *buffer == 0;
}

uint64_t sub_1000076C4(const void *a1, CFMutableDictionaryRef *a2, CFErrorRef *a3, uint64_t a4)
{
  v32 = 88;
  if (!a1 || !a2)
  {
    AMSupportLogInternal(3, "_HSCGetPearlInfo", "Invalid Arguments", a4);
    return 0;
  }

  v5 = a4;
  v37 = 0;
  v36 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = sub_100007FD8(2, 0, 0, 0, &v33, &v32, 0, 0);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "pearlStatus: %d Size: %d", v9, v32);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "chipID: %u Size: %llu", &v33 + 4, &v33 + 4);
  AMSupportLogDumpMemory();
  if (v9)
  {
    if (a3)
    {
      *a3 = sub_100007EEC(11, @"Unable to get Pearl Information");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  CFDictionarySetValue(Mutable, @"Command", a1);
  v11 = sub_100007EE4(&v33 + 4, 4u);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"ApChipID", v13);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "ApChipID: %@", v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v14 = sub_100007EE4(&v33 + 8, 8u);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"ApECID", v16);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "ApECID: %@", v15);
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = sub_100007EE4(&v34, 0x10u);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorUID", v19);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "SensorUID: %@", v18);
  if (v18)
  {
    CFRelease(v18);
  }

  v20 = sub_100007EE4(v35, 0x20u);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SepNonce", v22);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "SepNonce : %@", v21);
  if (v21)
  {
    CFRelease(v21);
  }

  v23 = sub_100007EE4(&v36, 4u);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorChipID", v25);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "SensorChipID: %@", v24);
  if (v24)
  {
    CFRelease(v24);
  }

  v26 = sub_100007EE4(&v36 + 4, 0x14u);
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorSNUM", v28);
  AMSupportLogInternal(6, "_HSCGetPearlInfo", "SensorSNUM: %@", v27);
  if (v27)
  {
    CFRelease(v27);
  }

  if (AMFDRSealingMapGetFDRDataVersionForDevice() == 2)
  {
    v29 = sub_100007CA4(kCFAllocatorDefault);
    v30 = v29;
    v31 = v29 ? v29 : kCFNull;
    CFDictionarySetValue(Mutable, @"SIK", v31);
    AMSupportLogInternal(6, "_HSCGetPearlInfo", "SIK : %@", v30);
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if (v5)
  {
    CFDictionarySetValue(Mutable, @"isSSR", kCFBooleanTrue);
  }

  if (!sub_1000075F0())
  {
    CFDictionarySetValue(Mutable, @"useProdMasterKey", kCFBooleanFalse);
  }

  *a2 = Mutable;
  return 1;
}

uint64_t sub_100007B18(int a1, const void *a2, size_t a3, void *a4, size_t *a5, uint64_t a6)
{
  AMSupportLogInternal(6, "_HSCHandlePearlMessage", "PearlFactoryLib seacookie message handling.");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_100007BE0;
  v13[3] = &unk_1000146B0;
  v13[4] = a6;
  return pearlSeaCookieHandleMessage(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_100007BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    AMSupportLogInternal(3, "_HSCHandlePearlMessage_block_invoke", "Unknown callback type.");
    return 1;
  }

  else
  {
    AMSupportLogInternal(6, "_HSCHandlePearlMessage_block_invoke", "Calling pearl patch loading.");
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }
}

__CFString *sub_100007DFC(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"0x");
  result = 0;
  if (a2 && a3)
  {
    v8 = a3 - a2;
    if (a3 > a2 && v8 >= 1)
    {
      do
      {
        CFStringAppend(MutableCopy, @"00");
        --v8;
      }

      while (v8);
    }

    v9 = a2;
    do
    {
      v10 = *a1++;
      v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%.2X", v10);
      CFStringAppend(MutableCopy, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      --v9;
    }

    while (v9);
    return MutableCopy;
  }

  return result;
}

CFErrorRef sub_100007EEC(int a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  AMSupportLogInternal(3, "createError", "ErrorString : %@\n", a2);
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, kCFErrorLocalizedDescriptionKey, a2);

    return CFErrorCreate(kCFAllocatorDefault, @"HorizonSeaCookieErrorDomain", a1, Mutable);
  }

  else
  {
    AMSupportLogInternal(3, "createError", "Unable to create Error object\n");
    return 0;
  }
}

uint64_t sub_100007FD8(int a1, uint64_t a2, const void *a3, size_t a4, void *a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = a2;
  if (a1 == 2)
  {

    return sub_100007B18(a2, a3, a4, a5, a6, a8);
  }

  else
  {
    if (a1 != 1)
    {
      AMSupportLogInternal(3, "_HSCHandleMessage", "Unknown SeaCookie type");
      return 1;
    }

    if (a7)
    {
      AMSupportLogInternal(6, "_HSCHandleMesaMessage", "TrustedAccessoryFactory seacookie message handling.", a4, a5, a6, a7, a8);
      AMSupportLogInternal(3, "_HSCHandleMesaMessage", "Not supported.");
      return 1;
    }

    AMSupportLogInternal(6, "_HSCHandleMesaMessage", "MesaFactoryC seacookie message handling.", a4, a5, a6, 0, a8);

    return sub_10000A390(v12, a3, a4, a5, a6);
  }
}

CFComparisonResult sub_100008104(CFComparisonResult result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (result + 24);
    do
    {
      if (CFStringCompare(*v3, @"C4", 0) == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"ReprovisionSensor";
      }

      if (CFStringCompare(*v3, @"C6", 0) == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"RePairingSessionKeyExchange";
      }

      result = CFStringCompare(*v3, @"C7", 0);
      if (result == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"ReprovisionSensor";
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1000081C4(int a1, const void *a2, CFMutableDictionaryRef *a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v8 = a6;
  if (a1 == 2)
  {

    return sub_1000076C4(a2, a3, a4, a6);
  }

  else
  {
    if (a1 != 1)
    {
      AMSupportLogInternal(3, "_HSCGetModuleInfo", "Unknown SeaCookie type", a4, a5, a6, a7, a8);
      if (a4)
      {
        v16 = sub_100007EEC(-1, @"Unknown SeaCookie type");
        result = 0;
        *a4 = v16;
        return result;
      }

      return 0;
    }

    v48 = 102;
    if (!a2 || !a3)
    {
      AMSupportLogInternal(3, "_HSCGetMesaInfo", "Invalid Arguments", a4, a5, a6, a7, a8);
      return 0;
    }

    v46 = a5;
    memset(v52, 0, 38);
    memset(v51, 0, sizeof(v51));
    v49 = 0u;
    v50 = 0u;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = sub_100007FD8(1, 0, 0, 0, &v49, &v48, a8, 0);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "mesaStatus: %d Size: %d", v14, v48);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "chipID: %u Size: %llu", &v49 + 4, &v49 + 4);
    AMSupportLogDumpMemory();
    if (v14)
    {
      if (a4)
      {
        *a4 = sub_100007EEC(11, @"Unable to get Mesa Information");
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    CFDictionarySetValue(Mutable, @"Command", a2);
    v17 = sub_100007DFC(&v49 + 4, 4u, 4u);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"ApChipID", v19);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "ApChipID: %@", v18);
    if (v18)
    {
      CFRelease(v18);
    }

    v20 = sub_100007DFC(&v49 + 8, 8u, 8u);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"ApECID", v22);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "ApECID: %@", v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v23 = sub_100007DFC(&v50, 0x10u, 0x10u);
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SensorSN", v25);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "SensorSN: %@", v24);
    if (v24)
    {
      CFRelease(v24);
    }

    v26 = sub_100007DFC(v51, 0x20u, 0x20u);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SepNonce", v28);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "SepNonce : %@", v27);
    if (v27)
    {
      CFRelease(v27);
    }

    v29 = *(v52 + 2);
    v30 = bswap32(*(v52 + 2));
    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", v30);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"Version", v33);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "Protocol Version : %@", v32);
    if (v32)
    {
      CFRelease(v32);
    }

    if (v29 == 0x2000000)
    {
      v34 = sub_100007DFC(v52 + 6, 0x20u, 0x20u);
      v35 = v34;
      v36 = v34 ? v34 : kCFNull;
      CFDictionarySetValue(Mutable, @"SensorNonce", v36);
      AMSupportLogInternal(6, "_HSCGetMesaInfo", "SensorNonce : %@", v35);
      if (v35)
      {
        CFRelease(v35);
      }
    }

    v37 = sub_100007DFC(v52, 2u, 4u);
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SensorChipID", v39);
    AMSupportLogInternal(6, "_HSCGetMesaInfo", "SensorChipID : %@", v38);
    if (v38)
    {
      CFRelease(v38);
    }

    if (!a8 && AMFDRSealingMapGetFDRDataVersionForDevice() >= 2)
    {
      v40 = sub_100007CA4(kCFAllocatorDefault);
      v41 = v40;
      v42 = v40 ? v40 : kCFNull;
      CFDictionarySetValue(Mutable, @"SIK", v42);
      AMSupportLogInternal(6, "_HSCGetMesaInfo", "SIK : %@", v41);
      if (v41)
      {
        CFRelease(v41);
      }
    }

    if (v46)
    {
      v43 = sub_100007DFC(v52, 2u, 2u);
      v44 = v43;
      v45 = v43 ? v43 : kCFNull;
      CFDictionarySetValue(Mutable, @"SensorType", v45);
      AMSupportLogInternal(6, "_HSCGetMesaInfo", "SensorType : %@", v44);
      if (v44)
      {
        CFRelease(v44);
      }
    }

    if (v8)
    {
      CFDictionarySetValue(Mutable, @"isSSR", kCFBooleanTrue);
    }

    if (a7)
    {
      *a7 = v30;
    }

    *a3 = Mutable;
    return 1;
  }
}

uint64_t sub_1000087A0()
{
  v0 = __chkstk_darwin();
  if (!v1 || (v8 = v2) == 0)
  {
    AMSupportLogInternal(3, "_HSCSeaCookieHandler", "Invalid Argument");
    return 0;
  }

  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v13 = v3;
  v14 = v1;
  v15 = v0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  AMSupportLogInternal(3, "_HSCSeaCookieHandler", "Processing Message  %@ --> %@", v14[2], v14[1]);
  if (!CFDictionaryContainsKey(v8, v14[2]))
  {
    AMSupportLogInternal(3, "_HSCSeaCookieHandler", "appropriate command is not present");
    if (v12)
    {
      v25 = @"appropriate command is not present";
LABEL_16:
      v26 = sub_100007EEC(11, v25);
      result = 0;
      *v12 = v26;
      return result;
    }

    return 0;
  }

  v30 = v10;
  v31 = v13;
  Value = CFDictionaryGetValue(v8, v14[2]);
  CFDataGetBytePtr(Value);
  CFDataGetLength(Value);
  AMSupportLogDumpMemory();
  v18 = CFDataGetLength(Value);
  BytePtr = CFDataGetBytePtr(Value);
  AMSupportLogInternal(6, "_HSCSeaCookieHandler", "inputData --> %@ inputSize --> %lu", Value, v18);
  bzero(bytes, 0x2000uLL);
  length = 0x2000;
  v20 = sub_100007FD8(v15, *v14, BytePtr, v18, bytes, &length, v11, v9);
  if (v20 || length >> 13)
  {
    AMSupportLogInternal(3, "_HSCSeaCookieHandler", "_HSCHandleMessage returned : %d", v20);
    if (v12)
    {
      v25 = @"_HSCHandleMessage Failed";
      goto LABEL_16;
    }

    return 0;
  }

  AMSupportLogInternal(6, "_HSCSeaCookieHandler", "moduleStatus = %d reply[%lu] \n", 0, length);
  v21 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  CFDictionarySetValue(Mutable, v14[3], v21);
  AMSupportLogInternal(6, "_HSCSeaCookieHandler", "Payload = %@\n", v14[3]);
  if (v30)
  {
    if (v15 == 2)
    {
      v22 = v14[3];
      v23 = @"C4";
      goto LABEL_18;
    }

    if (v15 == 1)
    {
      v22 = v14[3];
      v23 = @"C5";
LABEL_18:
      if (CFStringCompare(v22, v23, 0) == kCFCompareEqualTo)
      {
        v27 = (*(v30 + 16))(v30, bytes, length);
        v28 = v27;
        v29 = v27 ? v27 : kCFNull;
        CFDictionarySetValue(Mutable, @"signature", v29);
        AMSupportLogInternal(6, "_HSCSeaCookieHandler", "Signature = %@\n", v28);
        if (v28)
        {
          CFRelease(v28);
        }
      }
    }
  }

  AMSupportLogInternal(6, "_HSCSeaCookieHandler", "Command = %@\n", v14[1]);
  CFDictionarySetValue(Mutable, @"Command", v14[1]);
  *v31 = Mutable;
  if (v21)
  {
    CFRelease(v21);
  }

  AMSupportLogInternal(6, "_HSCSeaCookieHandler", "Output - Module Function = %@\n", Mutable);
  return 1;
}

uint64_t sub_100008B70(int a1, const __CFURL *a2, const void *a3, CFComparisonResult a4, int a5, CFErrorRef *a6, uint64_t a7)
{
  cf = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = -1;
  if (sub_1000081C4(a1, @"startPairing", &v26, a6, 0, a7 != 0, &v22, 0) == 1)
  {
    v13 = CFUUIDCreate(kCFAllocatorDefault);
    v14 = CFUUIDCreateString(kCFAllocatorDefault, v13);
    if (sub_100009320(v14, v23, v26, 1, &cf, a6) == 1)
    {
      if (sub_1000095A8(a2, cf, &v28, a3, a6, 1) == 1)
      {
        AMSupportLogInternal(6, "_HSCPairProxy", "requestData : %@ responseData : %@", cf, v28);
        if (sub_100009C3C(v28, &v24, &v23, a6) == 1)
        {
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v28)
          {
            CFRelease(v28);
            v28 = 0;
          }

          if (a1 == 1 && v22 == 2)
          {
            sub_100008104(a4, a5);
          }

          if (a5 < 1)
          {
            v18 = 1;
            goto LABEL_31;
          }

          v21 = v13;
          v15 = a5;
          while (1)
          {
            v16 = sub_1000087A0();
            if (v24)
            {
              CFRelease(v24);
              v24 = 0;
            }

            if (!v16)
            {
              v13 = v21;
              AMSupportLogInternal(3, "_HSCPairProxy", "Unable to relay response to SEP and obtain information \n");
              goto LABEL_43;
            }

            v17 = v25;
            if (sub_100009320(v14, v23, v25, 0, &cf, a6) != 1)
            {
              v20 = "unable to create a request \n";
              goto LABEL_42;
            }

            if (sub_1000095A8(a2, cf, &v28, a3, a6, 0) != 1)
            {
              v20 = "Unable to send/receive data with SeaCookie server\n";
              goto LABEL_42;
            }

            AMSupportLogInternal(6, "_HSCPairProxy", "requestData : %@ responseData : %@", cf, v28);
            if (sub_100009C3C(v28, &v24, &v23, a6) != 1)
            {
              break;
            }

            if (v24)
            {
              AMSupportLogInternal(6, "_HSCPairProxy", "responseDict : %@", v24);
            }

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v28)
            {
              CFRelease(v28);
              v28 = 0;
            }

            if (v17)
            {
              CFRelease(v17);
              v25 = 0;
            }

            a4 += 40;
            if (!--v15)
            {
              v18 = 1;
              v13 = v21;
              goto LABEL_31;
            }
          }

          v20 = "Unable to parse response data from SeaCookie server\n";
LABEL_42:
          v13 = v21;
          AMSupportLogInternal(3, "_HSCPairProxy", v20);
        }

        else
        {
          AMSupportLogInternal(3, "_HSCPairProxy", "Unable to parse response data from SeaCookie server\n");
        }
      }

      else
      {
        AMSupportLogInternal(3, "_HSCPairProxy", "Unable to send/receive data with SeaCookie server\n");
      }
    }

    else
    {
      AMSupportLogInternal(3, "_HSCPairProxy", "unable to create a request \n");
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    AMSupportLogInternal(3, "_HSCPairProxy", "Unable to receive Module Information\n");
  }

LABEL_43:
  v18 = 0;
LABEL_31:
  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  AMSupportLogInternal(6, "_HSCPairProxy", "result : %d", v18);
  return v18;
}

uint64_t HSCGetPearlNonce()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(bytes, 0x2000uLL);
  length = 0x2000;
  if (!v3)
  {
    if (v2)
    {
      v4 = @"Invalid Arguments";
      v5 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  if (sub_100007B18(7, 0, 0, bytes, &length, 0))
  {
    if (v2)
    {
      v4 = @"Unable to get pearl nonce";
      v5 = 11;
LABEL_7:
      v6 = sub_100007EEC(v5, v4);
      result = 0;
      *v2 = v6;
      return result;
    }

    return 0;
  }

  *v3 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  AMSupportLogInternal(6, "HSCGetPearlNonce", "Pearl Nonce Size: %d", length);
  AMSupportLogInternal(6, "HSCGetPearlNonce", "Pearl Nonce: %@", *v3);
  return 1;
}

uint64_t HSCSecurePairPearlWithProxy(const __CFURL *a1, const void *a2, CFDataRef theData, CFErrorRef *a4, uint64_t a5, uint64_t a6)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (sub_100007B18(8, BytePtr, Length, 0, 0, 0))
    {
      if (a4)
      {
        *a4 = sub_100007EEC(11, @"Unable to validate tatsu ticket");
      }

      return 0;
    }

    AMSupportLogInternal(6, "HSCSecurePairPearlWithProxy", "Validate tatsu ticket succeeded.");
  }

  return sub_100007C7C(a1, a2, a4, a5, a6);
}

CFDataRef sub_100009224(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  v3 = malloc_type_malloc(Length, 0x9DAD2D97uLL);
  v4 = CFDataGetLength(a1);
  v5 = malloc_type_malloc(v4, 0x26C37980uLL);
  v12.length = CFDataGetLength(a1);
  v12.location = 0;
  CFDataGetBytes(a1, v12, v5);
  if (v3 && CFDataGetLength(a1) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v5[v6];
      if ((v8 - 9) >= 2)
      {
        v3[v7++] = v8;
      }

      ++v6;
    }

    while (CFDataGetLength(a1) > v6);
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDataCreate(kCFAllocatorDefault, v3, v9);
  free(v3);
  free(v5);
  return v10;
}

uint64_t sub_100009320(const void *a1, const void *a2, const void *a3, int a4, const __CFData **a5, CFErrorRef *a6)
{
  error = 0;
  if (!a6)
  {
    return 0;
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0;
      *a6 = sub_100007EEC(3, @"Request Dictionary Creation failed\n");
    }

    CFDictionarySetValue(Mutable, @"SpecVersion", @"1.2");
    CFDictionarySetValue(Mutable, @"UUID", a1);
    if (a4)
    {
      AMSupportLogInternal(6, "createRequestData", "Resetting session\n");
      v14 = @"Request";
    }

    else
    {
      CFDictionarySetValue(Mutable, @"Session", a2);
      v14 = @"Response";
    }

    CFDictionarySetValue(Mutable, v14, a3);
    AMSupportLogInternal(6, "createRequestData", "--------------------------------------------------------------\n", Mutable);
    AMSupportLogInternal(6, "createRequestData", "Request data is : %@\n", Mutable);
    AMSupportLogInternal(6, "createRequestData", "--------------------------------------------------------------\n", Mutable);
    v15 = CFPropertyListCreateData(kCFAllocatorDefault, Mutable, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v15)
    {
      v16 = v15;
      Length = CFDataGetLength(v15);
      AMSupportLogInternal(6, "createRequestData", "XML datalen: %lu data is : %@\n", Length, v16);
      *a5 = v16;
      if (CFDictionaryContainsKey(a3, @"Command"))
      {
        Value = CFDictionaryGetValue(a3, @"Command");
        v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/tmp/%@", Value);
        if (v19)
        {
          CFRelease(v19);
        }
      }
    }

    else
    {
      AMSupportLogInternal(3, "createRequestData", "CFPropertyListCreateData failed : %@\n", error);
      v13 = 0;
      *a6 = sub_100007EEC(10, @"CFPropertyListCreateData failed\n");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v13 = 0;
    *a6 = sub_100007EEC(1, @"Input argument req_dict is empty or NULL\n");
  }

  if (error)
  {
    CFRelease(error);
  }

  return v13;
}

uint64_t sub_1000095A8(CFURLRef url, const __CFData *a2, CFDataRef *a3, const void *a4, CFErrorRef *a5, uint64_t a6)
{
  if (!a5)
  {
    AMSupportLogInternal(3, "sendRequestSync", "Error is empty", a4, 0, a6);
    v13 = 0;
    v14 = 1;
    goto LABEL_41;
  }

  v6 = a6;
  v8 = a4;
  if (!a4)
  {
    v8 = AMSupportHttpCopyProxySettings();
    if (!v8)
    {
      AMSupportLogInternal(6, "sendRequestSync", "Could not create proxy settings, system default proxy will be used.");
    }
  }

  Request = CFHTTPMessageCreateRequest(kCFAllocatorDefault, @"POST", url, kCFHTTPVersion1_1);
  if (!Request)
  {
    v14 = 0;
    v13 = 0;
    *a5 = sub_100007EEC(3, @"could not create httpRequest\n");
    goto LABEL_41;
  }

  v12 = Request;
  CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"application/xml");
  if (v6)
  {
    if (qword_100018B38)
    {
      CFRelease(qword_100018B38);
    }

    qword_100018B38 = 0;
  }

  else if (qword_100018B38)
  {
    CFHTTPMessageSetHeaderFieldValue(v12, @"X-Apple-SeaCookie-IP", qword_100018B38);
  }

  v15 = sub_100009224(a2);
  CFHTTPMessageSetBody(v12, v15);
  Length = CFDataGetLength(v15);
  v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lu", Length);
  if (!v17)
  {
    v26 = sub_100007EEC(3, @"could not create contentLengthStr\n");
    v13 = 0;
LABEL_47:
    v14 = 0;
    v20 = 0;
    goto LABEL_51;
  }

  CFHTTPMessageSetHeaderFieldValue(v12, @"Content-Length", v17);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = Mutable;
  if (!Mutable)
  {
    v26 = sub_100007EEC(3, @"Failed to create connection options dictionary.\n");
    goto LABEL_47;
  }

  if (v8)
  {
    CFDictionarySetValue(Mutable, kAMSupportHttpOptionSocksProxySettings, v8);
  }

  SetFromCFIndexArray = AMSupportCreateSetFromCFIndexArray();
  CFDictionaryAddValue(v13, kAMSupportHttpOptionValidResponses, SetFromCFIndexArray);
  if (SetFromCFIndexArray)
  {
    CFRelease(SetFromCFIndexArray);
  }

  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_100018AE0);
  if (v20)
  {
    CFDictionaryAddValue(v13, kAMSupportHttpOptionTimeout, v20);
    CFRelease(v20);
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_100018AE4);
    if (v20)
    {
      CFDictionaryAddValue(v13, kAMSupportHttpOptionMaxAttempts, v20);
      CFRelease(v20);
      AMSupportLogInternal(6, "sendRequestSync", "Disabling SSL validation");
      CFDictionarySetValue(v13, kAMSupportHttpOptionDisableSSLValidation, kCFBooleanTrue);
      AMSupportLogInternal(6, "sendRequestSync", "------- CLIENT REQUEST -------\n");
      v21 = CFHTTPMessageCopyAllHeaderFields(v12);
      v20 = v21;
      if (v21)
      {
        AMSupportLogInternal(6, "sendRequestSync", "%@\n", v21);
        AMSupportLogInternal(6, "sendRequestSync", "%@\n", v15);
      }

      AMSupportLogInternal(6, "sendRequestSync", "------- END CLIENT REQUEST -------\n");
      v22 = AMSupportHttpSendSync();
      if (v22)
      {
        v23 = v22;
        AMSupportLogInternal(3, "sendRequestSync", "Send request status: %d http status: %ld error: %@\n", v22, 0, 0);
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"HTTP send error: %d\n", v23);
        switch(v23)
        {
          case 0xB:
            v25 = 13;
            break;
          case 0xC:
            v25 = 14;
            break;
          case 0x10:
            v25 = 12;
            break;
          default:
            v25 = 15;
            break;
        }
      }

      else
      {
        AMSupportLogInternal(3, "sendRequestSync", "SeaCookie server returned HTTP status: %ld\n", 0);
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SeaCookie server returned HTTP status: %ld\n", 0);
        v25 = 16;
      }

      v26 = sub_100007EEC(v25, v24);
      v14 = 0;
      goto LABEL_33;
    }

    v28 = @"Failed to create max attempts\n";
  }

  else
  {
    v28 = @"Failed to create timeout\n";
  }

  v26 = sub_100007EEC(3, v28);
  v14 = 0;
LABEL_51:
  v24 = 0;
LABEL_33:
  *a5 = v26;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  CFRelease(v12);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_41:
  if (v13)
  {
    CFRelease(v13);
  }

  AMSupportLogInternal(3, "sendRequestSync", "result = %d\n", v14);
  return v14;
}

uint64_t sub_100009C3C(CFDataRef data, CFDictionaryRef *a2, CFDataRef *a3, CFErrorRef *a4)
{
  error = 0;
  if (!a4)
  {
    v8 = 0;
    goto LABEL_42;
  }

  if (!data || !a2)
  {
    v8 = 0;
    *a4 = sub_100007EEC(1, @"DataRef or responseDict is NULL.");
    goto LABEL_40;
  }

  v7 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0x64uLL, 0, &error);
  v8 = v7;
  if (!v7)
  {
    AMSupportLogInternal(3, "parseResponse", "Create xmlData failed, error: %@", error);
    *a4 = sub_100007EEC(7, @"Create xmlData failed.");
    *a2 = 0;
    goto LABEL_40;
  }

  v9 = CFGetTypeID(v7);
  if (v9 == CFDictionaryGetTypeID())
  {
    AMSupportLogInternal(6, "parseResponse", "xmlData : %@", v8);
    v10 = CFDictionaryContainsKey(v8, @"ErrorCode");
    v11 = CFDictionaryContainsKey(v8, @"ErrorMessage");
    if (v10 != 1 && v11 != 1)
    {
      if (a3 && !*a3)
      {
        if (!CFDictionaryContainsKey(v8, @"Session"))
        {
          v23 = @"Server did not return session cookie";
          v24 = 9;
LABEL_29:
          *a4 = sub_100007EEC(v24, v23);
          goto LABEL_39;
        }

        Value = CFDictionaryGetValue(v8, @"Session");
        *a3 = CFDataCreateCopy(kCFAllocatorDefault, Value);
      }

      v17 = @"Request";
      if (CFDictionaryContainsKey(v8, @"Request") == 1 || (v17 = @"Response", CFDictionaryContainsKey(v8, @"Response") == 1))
      {
        v18 = CFDictionaryGetValue(v8, v17);
        Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v18);
        if (Copy)
        {
          v20 = Copy;
          AMSupportLogInternal(6, "parseResponse", "Response Dictionary : %@\n", Copy);
          if (CFDictionaryContainsKey(v20, @"Command"))
          {
            v21 = CFDictionaryGetValue(v20, @"Command");
            v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/tmp/%@-from-server", v21);
            *a2 = CFDictionaryCreateCopy(kCFAllocatorDefault, v20);
            if (v22)
            {
              CFRelease(v22);
            }
          }

          else
          {
            *a2 = CFDictionaryCreateCopy(kCFAllocatorDefault, v20);
          }

          CFRelease(v8);
          CFRelease(v20);
          v8 = 1;
          goto LABEL_40;
        }
      }

      AMSupportLogInternal(3, "parseResponse", "responseDict NULL. Unable to parse Response\n");
      v23 = @"responseDict NULL. Unable to parse Response\n";
      v24 = 8;
      goto LABEL_29;
    }

    v13 = v11;
    if (v10)
    {
      v14 = CFDictionaryGetValue(v8, @"ErrorCode");
      if (v13)
      {
LABEL_13:
        v15 = CFDictionaryGetValue(v8, @"ErrorMessage");
        AMSupportLogInternal(3, "parseResponse", "ErrorMessage - %@", v15);
        goto LABEL_32;
      }
    }

    else
    {
      v14 = 0;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    v15 = 0;
LABEL_32:
    *a2 = 0;
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 1024);
    CFStringAppend(Mutable, @"Server returned an ");
    if (v14)
    {
      v26 = CFGetTypeID(v14);
      if (v26 == CFStringGetTypeID())
      {
        AMSupportLogInternal(3, "parseResponse", "ErrorCode is String Type");
        CFStringAppend(Mutable, @"\terrorCode: ");
        CFStringAppend(Mutable, v14);
      }
    }

    if (v15)
    {
      CFStringAppend(Mutable, @"\terrorString: ");
      CFStringAppend(Mutable, v15);
    }

    *a4 = sub_100007EEC(6, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_39;
  }

  *a4 = sub_100007EEC(7, @"xmlData is not CFDictionary type.");
  *a2 = 0;
LABEL_39:
  CFRelease(v8);
  v8 = 0;
LABEL_40:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

LABEL_42:
  AMSupportLogInternal(6, "parseResponse", "Exiting parse_response : %d", v8);
  return v8;
}

void sub_10000A064(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-MesaFactory");
  qword_100018AF8 = v1;
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000A9EC(&v2);
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  qword_100018B00 = v1;
}

uint64_t sub_10000A0D0(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v8 = a5 + 8;
  if (a5 >= 0xFFFFFFFFFFFFFFF8)
  {
    sub_10000AB28(a5 >= 0xFFFFFFFFFFFFFFF8, &outputStructCnt);
    return outputStructCnt;
  }

  v15 = malloc_type_malloc(a5 + 8, 0x85702932uLL);
  if (!v15)
  {
    sub_10000AA4C();
    return outputStructCnt;
  }

  v16 = v15;
  *v15 = 19778;
  v15[1] = a2;
  v15[2] = 1;
  v15[3] = a3;
  if (a5)
  {
    memmove(v15 + 4, a4, a5);
  }

  if (a7)
  {
    outputStructCnt = *a7;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
    *a7 = outputStructCnt;
  }

  else
  {
    outputStructCnt = 0;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
  }

  free(v16);
  return v17;
}

uint64_t sub_10000A204()
{
  v0 = sub_10000A0D0(dword_100018B0C, 2, 1, 0, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    sub_10000AC28();
  }

  return v1;
}

uint64_t sub_10000A25C()
{
  v2 = 0;
  v1 = 4;
  if (sub_10000A0D0(dword_100018B0C, 16, 0, 0, 0, &v2, &v1))
  {
    sub_10000AD04();
  }

  else if (v1 != 4)
  {
    sub_10000ADE0(&v2);
  }

  return v2;
}

uint64_t sub_10000A2D4()
{
  if (!dword_100018B0C)
  {
    v0 = IOServiceMatching("AppleBiometricServices");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
    if (!MatchingService)
    {
      sub_10000AFA4();
      return v5;
    }

    v2 = MatchingService;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100018B0C))
    {
      sub_10000AEC0();
      return v4;
    }

    IOObjectRelease(v2);
  }

  if (!sub_10000A25C())
  {
    sub_10000A204();
  }

  return 0;
}

uint64_t sub_10000A390(int a1, const void *a2, size_t a3, void *a4, void *a5)
{
  if (qword_100018B40 != -1)
  {
    sub_10000B084();
  }

  if (qword_100018B00)
  {
    v10 = qword_100018B00;
  }

  else
  {
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *v23 = a1;
    *&v23[4] = 2048;
    *&v23[6] = a2;
    v24 = 2048;
    *v25 = a3;
    *&v25[8] = 2048;
    *&v25[10] = a4;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage(type:%d, message:%p, messageLength:%zu, reply:%p, replySize:%p)\n", buf, 0x30u);
  }

  size = 0;
  if ((a1 & 0xFFFFFFF7) != 0 && !a2)
  {
    sub_10000B7C8();
LABEL_43:
    v15 = *buf;
LABEL_51:
    if (qword_100018B40 != -1)
    {
      sub_10000B244();
    }

    if (qword_100018B00)
    {
      v18 = qword_100018B00;
    }

    else
    {
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v23 = a1;
      *&v23[4] = 1024;
      *&v23[6] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "seaCookieHandleMessage(type:%d) -> err:0x%x\n", buf, 0xEu);
    }

    return v15;
  }

  if ((a1 & 0xFFFFFFF7) != 0 && !a3)
  {
    sub_10000B6EC();
    goto LABEL_43;
  }

  if (a1 != 9 && !a4)
  {
    sub_10000B098();
    goto LABEL_43;
  }

  if (a1 != 9 && !a5)
  {
    sub_10000B174(qword_100018B40 == -1);
    goto LABEL_43;
  }

  if (qword_100018B40 != -1)
  {
    sub_10000B244();
  }

  if (qword_100018AF8)
  {
    v11 = qword_100018AF8;
  }

  else
  {
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *v23 = a3;
    *&v23[8] = 1040;
    *&v23[10] = a3;
    v24 = 2096;
    *v25 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage message[%zu] %.*P\n", buf, 0x1Cu);
  }

  if (sub_10000A2D4())
  {
    sub_10000B26C();
    goto LABEL_43;
  }

  if (a3 >= 0xFFFFFFFFFFFFFFF4)
  {
    sub_10000B5EC(a3 >= 0xFFFFFFFFFFFFFFF4, buf);
LABEL_46:
    v15 = *buf;
    goto LABEL_51;
  }

  size = 8200;
  v12 = malloc_type_malloc(a3 + 12, 0x10000403E1C8BA9uLL);
  if (!v12)
  {
    sub_10000B50C();
    goto LABEL_46;
  }

  v13 = v12;
  v14 = malloc_type_malloc(size, 0x100004000313F17uLL);
  *v13 = a1;
  *(v13 + 4) = a3;
  memcpy(v13 + 12, a2, a3);
  v15 = sub_10000A0D0(dword_100018B0C, 77, 0, v13, a3 + 12, v14, &size);
  if (v15)
  {
    sub_10000B350();
    goto LABEL_48;
  }

  if (!a4 || !a5)
  {
LABEL_48:
    free(v13);
    if (!v14)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (*a5 < *v14)
  {
    sub_10000B42C();
    v15 = *buf;
  }

  else
  {
    memcpy(a4, v14 + 1, *v14);
    *a5 = *v14;
    if (qword_100018B40 != -1)
    {
      sub_10000B244();
    }

    if (qword_100018AF8)
    {
      v16 = qword_100018AF8;
    }

    else
    {
      v16 = &_os_log_default;
    }

    v15 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a5;
      *buf = 67109890;
      *v23 = a1;
      *&v23[4] = 2048;
      *&v23[6] = v17;
      v24 = 1040;
      *v25 = v17;
      *&v25[4] = 2096;
      *&v25[6] = a4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
      v15 = 0;
    }
  }

  free(v13);
LABEL_49:
  free(v14);
LABEL_50:
  if (v15)
  {
    goto LABEL_51;
  }

  if (qword_100018B40 != -1)
  {
    sub_10000B244();
  }

  if (qword_100018B00)
  {
    v19 = qword_100018B00;
  }

  else
  {
    v19 = &_os_log_default;
  }

  v15 = 0;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v23 = a1;
    *&v23[4] = 1024;
    *&v23[6] = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage(type:%d) -> err:0x%x\n", buf, 0xEu);
    return 0;
  }

  return v15;
}

void sub_10000A914(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

BOOL sub_10000A934@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_10000A954(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

BOOL sub_10000A974@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL sub_10000A9BC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_10000A9EC(void *a1)
{
  *v2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create OS Log for 'com.apple.BiometricKit.Library-MesaFactory'!\n", v2, 2u);
  *a1 = qword_100018AF8;
}

void sub_10000AA4C()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A9DC();
}

void sub_10000AB28(uint64_t a1, _DWORD *a2)
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A9BC(qword_100018AF8))
  {
    sub_10000A8DC();
    sub_10000A9A4();
    sub_10000A8C8();
    sub_10000A994();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
}

void sub_10000AC28()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A8A8();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void sub_10000AD04()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A8A8();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void sub_10000ADE0(_DWORD *a1)
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void sub_10000AEC0()
{
  sub_1000058B8();
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A974(qword_100018AF8))
  {
    sub_10000A868();
    sub_10000A8C8();
    sub_10000A954(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A9B0();
}

void sub_10000AFA4()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A904(0x2BCu);
}

void sub_10000B098()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A8F0();
}

void sub_10000B174(char a1)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  sub_10000A8F0();
}

void sub_10000B26C()
{
  sub_1000058B8();
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A974(qword_100018AF8))
  {
    sub_10000A868();
    sub_10000A8C8();
    sub_10000A954(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A9B0();
}

void sub_10000B350()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A8A8();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void sub_10000B42C()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A904(0x2DBu);
}

void sub_10000B50C()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A904(0x2BDu);
}

void sub_10000B5EC(uint64_t a1, _DWORD *a2)
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A9BC(qword_100018AF8))
  {
    sub_10000A8DC();
    sub_10000A9A4();
    sub_10000A8C8();
    sub_10000A994();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
}

void sub_10000B6EC()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A8F0();
}

void sub_10000B7C8()
{
  if (qword_100018B40 != -1)
  {
    dispatch_once(&qword_100018B40, &stru_1000146F0);
  }

  if (sub_10000A934(qword_100018AF8))
  {
    sub_10000A888();
    sub_10000A8C8();
    sub_10000A914(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sub_10000A8F0();
}

void sub_10000B8A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "URL: %@ scheme is invalid", &v2, 0xCu);
}

void sub_10000B91C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "URL: %@ is invalid", &v2, 0xCu);
}

void sub_10000B9D8()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BA14()
{
  sub_100004E64();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000BA84()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BAC0()
{
  sub_100004E64();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000BC18()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BD58()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BD94()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BDD0()
{
  sub_100004E30();
  sub_100004E3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000BE5C()
{
  sub_100004DF4(__stack_chk_guard);
  sub_100004E30();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BECC()
{
  sub_100004DF4(__stack_chk_guard);
  sub_100004E30();
  sub_100004E3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000BF54()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000BFB4()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000C014(uint64_t a1)
{
  *(*(*(a1 + 112) + 8) + 24) = -5;
  v2 = handleForCategory();
  if (sub_100004E4C(v2))
  {
    sub_100004E08();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void sub_10000C084()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000C0E4()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000C144()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000C1A4()
{
  sub_100004DF4(__stack_chk_guard);
  sub_100004E30();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C214()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C250()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C28C()
{
  sub_100004DF4(__stack_chk_guard);
  sub_100004E30();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C2FC()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C3AC()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C3E8()
{
  sub_100004E30();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C45C()
{
  sub_100004E64();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000C4CC()
{
  sub_100004E64();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000C53C()
{
  sub_100004E30();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C5B0()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C5EC()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000C64C()
{
  v1 = handleForCategory();
  if (sub_100004E4C(v1))
  {
    sub_100004E30();
    sub_100004E08();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10000C6E8()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C724()
{
  sub_100004E24();
  sub_100004E18();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10000C760()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = sub_100006FD4();
  if (v10)
  {
    if (v8)
    {
      v11 = v10;
      v12 = 3758097090;
      if (sub_10000CA60(v8, v8 + v6) == v6)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v9;
        v12 = IOConnectCallMethod(v11, 0x2Bu, &input, 1u, v8, v6, 0, 0, __src, &__count);
        if (!v12 && v4 && v2)
        {
          v13 = calloc(__count, 1uLL);
          *v4 = v13;
          if (v13)
          {
            memcpy(v13, __src, __count);
            v12 = 0;
            *v2 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", &unk_10000EC93, -1, &unk_10000EC93, &unk_10000EC93, &unk_10000EC93, &unk_10000EC93, "_aks_operation", ":", 457, &unk_10000EC93, &unk_10000EC93);
    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  return v12;
}

uint64_t sub_10000CA60(uint64_t a1, uint64_t a2)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CAC8()
{
  sub_100007588();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_1000075D8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000CB98(uint64_t a1)
{
  if (a1)
  {
    return sub_10000CAC8() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_10000CBE0(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10000D0B8);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_10000CDB0()
{
  result = sub_1000075E4();
  if (v0 && v3 && v4 && v5)
  {
    if (sub_10000CA60(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!sub_1000075AC(v6))
      {
        return 4294967279;
      }

      sub_10000755C();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        sub_1000074EC(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        sub_1000074DC();
        sub_100007538(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        sub_1000074DC();
        if (v23 == v1)
        {
          v24 = sub_100007594();
          if (v24)
          {
            return sub_1000074C0(v24);
          }
        }
      }

      sub_100007518();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10000CEB4(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(&v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_1000074DC(), sub_100007570(), ccder_blob_encode_tl(), sub_1000074DC(), v16 == v14) && sub_100007594())
      {
        result = sub_10000757C();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10000D0B8(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}