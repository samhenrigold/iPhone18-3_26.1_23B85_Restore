void sub_10022E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_10024DE00(sub_10022E3B8, a2, a3, a4, a5, a6, a7, a8, v11);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_ReadLocalName");
      v10 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, v9);
  }
}

void sub_10022E154()
{
  if (sub_100243344() < 4)
  {

    sub_1003043EC(off_100AE7DA8);
  }

  else
  {
    v5 = sub_10024E040(sub_10022E628, 1, &unk_1008A3F20, v0, v1, v2, v3, v4);
    if (v5)
    {
      v6 = v5;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_WriteEIR");
        v7 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }

      sub_1003044D0(off_100AE7DA8, v6);
    }
  }
}

void sub_10022E21C()
{
  v0 = sub_10002223C();
  if (v0)
  {
    v1 = v0;
    sub_100304AF8("OI_LinkKeyStorage_Init failed %!\n", v0);
LABEL_7:

    sub_1003044D0(off_100AE7DA8, v1);
    return;
  }

  v2 = sub_1002FD254(&off_100AE7DD8);
  if (v2)
  {
    v1 = v2;
    sub_100304AF8("OI_SECMGR_RegisterESE failed %!\n", v2);
    goto LABEL_7;
  }

  v3 = sub_1002FD4B8(&off_100AE7E50);
  if (v3)
  {
    v1 = v3;
    sub_100304AF8("OI_SECMGR_RegisterSecurityDB failed %!\n", v3);
    goto LABEL_7;
  }

  sub_1002FCD94(1);

  sub_1003043EC(off_100AE7DA8);
}

void sub_10022E2F0(uint64_t a1)
{
  if ((a1 - 701) <= 0x44)
  {
    sub_100304AF8("writeStaticSettingsCb: ignoring HCI error %!\n", a1);
LABEL_8:

    sub_1003043EC(off_100AE7DA8);
    return;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeStaticSettingsCb");
    v2 = sub_10000C050(0x4Eu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  sub_1003044D0(off_100AE7DA8, a1);
}

void sub_10022E3B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (sub_10000C240())
    {
      sub_10000AF54("readNameCb");
      v3 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

LABEL_5:
    sub_1003044D0(off_100AE7DA8, v2);
    return;
  }

  if (*a2)
  {
    sub_100304AF8("Local device name is: %s\n", a2);
    v5 = *a2;
    byte_100B5F390 = *(a2 + 8);
    qword_100B5F388 = v5;
    byte_100B5F391 = 0;

    sub_1003043EC(off_100AE7DA8);
  }

  else
  {
    sub_100304AF8("Device has no name\n");
    v16 = 0;
    v15 = 0;
    if (sub_100243324(&v15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DEVMGR_GetCachedLocalBdAddr");
        v6 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }
    }

    sub_100304ACC(&qword_100B5F388, 10, "APPLE %2x", HIBYTE(v16));
    sub_100304AF8("Writing device name as %s\n", &qword_100B5F388);
    v13 = sub_10024DDD0(sub_10022E598, &qword_100B5F388, v7, v8, v9, v10, v11, v12);
    if (v13)
    {
      v2 = v13;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_ChangeLocalName");
        v14 = sub_10000C050(0x4Eu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }

      goto LABEL_5;
    }
  }
}

void sub_10022E598(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeNameCb");
      v3 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, a1);
  }

  else
  {

    sub_1003043EC(off_100AE7DA8);
  }
}

void sub_10022E628(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeEirCb");
      v3 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, a1);
  }

  else
  {

    sub_1003043EC(off_100AE7DA8);
  }
}

void sub_10022E6D8(uint64_t a1)
{
  sub_100304AF8("pinCodeHandler, providing pin code %s for %:\n", off_100B522E8, a1);
  v2 = strlen(off_100B522E8);
  v7 = off_100B522E8;

  sub_1002FFB74(1, a1, v7, v2, v3, v4, v5, v6);
}

void sub_10022E744(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerUserConfirmRequest\n");

  sub_1002FE3C8(1, a1, v2, v3, v4, v5, v6, v7);
}

void sub_10022E788(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerPassKeyRequest\n");

  sub_1002FE734(1, a1, 0, v2, v3, v4, v5, v6);
}

void sub_10022E7E8(uint64_t a1)
{
  sub_100304AF8("NEW SECURITY MODEL : securityManagerOOBRequest\n");

  sub_1002FEE28(0, a1, 0, 0, 0, 0, v2, v3);
}

uint64_t sub_10022E868(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return 2 * (sub_100238000(v3) - 4096 > 2);
}

unint64_t sub_10022E8A0()
{
  *buffer = 0;
  v0 = getenv("BT_BAUDRATE");
  if (v0)
  {
    return strtoul(v0, 0, 0);
  }

  v2 = IOServiceNameMatching("bluetooth");
  if (!v2)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"transport-speed", kCFAllocatorDefault, 1u);
  if (v5)
  {
    v6 = v5;
    v8.location = 0;
    v8.length = 4;
    CFDataGetBytes(v5, v8, buffer);
    CFRelease(v6);
    sub_100304AF8("DeviceTree speed = %d\n", *buffer);
  }

  IOObjectRelease(v4);
  result = *buffer;
  if (*buffer >> 9 <= 0xE0u)
  {
    return 0;
  }

  return result;
}

void sub_10022E988(id a1)
{
  if (sub_10022EC1C("marconi-bt"))
  {
    sub_10022EC1C("bluetooth");
  }

  bzero(__str, 0x400uLL);
  v7 = 1024;
  if (!sysctlbyname("kern.bootargs", __str, &v7, 0, 0))
  {
    v1 = strtok(__str, " ");
    if (v1)
    {
      v2 = v1;
      do
      {
        if (strstr(v2, "bt-transport-override"))
        {
          v3 = strchr(v2, 61);
          v4 = strtol(v3 + 1, 0, 10);
          v5 = v4;
          if (v4 < 0xC)
          {
            sub_100304AF8("transport override from boot-arg: %llu", v4);
            dword_100B52308 = v5;
          }

          else
          {
            sub_100304AF8("transport override from boot-arg is invalid: %llu");
          }
        }

        else if (strstr(v2, "bt_pcie_srs"))
        {
          v6 = strchr(v2, 61);
          if ((strtol(v6 + 1, 0, 10) - 1) <= 1)
          {
            dword_100B52308 = 8;
            sub_100304AF8("Found SRS\n");
          }
        }

        v2 = strtok(0, " ");
      }

      while (v2);
    }
  }
}

CFDictionaryRef sub_10022EB48(const void **keys, const void **values, int a3)
{
  v4 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, a3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFAutorelease(v4);
  *keys = @"IOPropertyMatch";
  return CFDictionaryCreate(kCFAllocatorDefault, keys, &v6, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

uint64_t sub_10022EC1C(const char *a1)
{
  v1 = IOServiceNameMatching(a1);
  if (v1)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      v4 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"transport-encoding", kCFAllocatorDefault, 1u);
      if (v4)
      {
        v5 = v4;
        v7.location = 0;
        v7.length = 4;
        CFDataGetBytes(v4, v7, &dword_100B52308);
        CFRelease(v5);
        IOObjectRelease(v3);
        sub_100304AF8("DeviceTree transport = 0x%08x\n", dword_100B52308);
        return 0;
      }

      IOObjectRelease(v3);
    }
  }

  return 1;
}

void sub_10022ECE8(int a1, int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = 0;
    v6 = qword_100BC9CB0;
    do
    {
      if (*v6 && **v6 == a1)
      {
        if (a2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Transport switch error %d with lm %x, contiguous %d, leRSSI %d, connTO %d:%d", a2, **v6, *(v6 + 224), *(v6 + 47), *(v6 + 40), *(v6 + 82));
            v7 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              sub_10081427C();
            }
          }

          v8 = ++*(v6 + 224);
          if (v8 > 8)
          {
            if (off_100BC9CA0)
            {
              off_100BC9CA0(*v6, 81, 297, 165);
            }

            sub_1001BAA68(5015, "TS Switch HW Error");
          }
        }

        else
        {
          if (*(v6 + 224))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Successful TS, clearing contiguous TS failures");
              v9 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = sub_10000C0FC();
                *buf = 136446210;
                v12 = v10;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          *(v6 + 224) = 0;
        }

        v2 = dword_100BC9C74;
      }

      ++v5;
      v6 += 134;
    }

    while (v5 < v2);
  }
}

uint64_t sub_10022EEF4(char a1, __int128 *a2)
{
  v37[0] = *off_100AE7ED0;
  v37[1] = *off_100AE7EE0;
  v38 = 0;
  sub_10029F8C8(sub_10022ECE8);
  v4 = sub_100197C9C("com.apple.BT.TS", 0xFuLL, 2, 10, 1, 0, 1, 1, v37);
  if (v4)
  {
    v5 = v4;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Failed to register TS service.");
    v6 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1002DB89C(off_100AE7EF8);
  if (v7)
  {
    v5 = v7;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Failed to register TS security.");
    v8 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1000E09C0();
LABEL_9:
    bzero(qword_100BC9CB0, 0x4300uLL);
    dword_100BC9C74 = 0;
    v10 = a2[1];
    v9 = a2[2];
    v11 = *a2;
    off_100BC9CA8 = *(a2 + 6);
    *&xmmword_100BC9C88 = v10;
    *&off_100BC9C98 = v9;
    *&qword_100BC9C78 = v11;
    return v5;
  }

  bzero(qword_100BC9CB0, 0x4300uLL);
  dword_100BC9C74 = 0;
  v14 = a2[1];
  v13 = a2[2];
  v15 = *a2;
  off_100BC9CA8 = *(a2 + 6);
  *&xmmword_100BC9C88 = v14;
  *&off_100BC9C98 = v13;
  *&qword_100BC9C78 = v15;
  v36 = 0;
  if (a1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v35 = 0;
  if ((a1 & 2) != 0 && !sub_100307990(&v36, &v35) && v36 && v35)
  {
    v17 = sub_100007618((v35 << 6) + 128, 0x10800401DCC41E5uLL);
    qword_100BC9C68 = v17;
    byte_100BC9C70 = v16 + v35;
    if (v35)
    {
      v25 = 0;
      v26 = v16 << 6;
      v27 = 80;
      do
      {
        v28 = v36;
        if (!*(v36 + v27 - 32))
        {
          sub_1000D660C();
          v28 = v36;
        }

        if (!*(v28 + v27 - 16))
        {
          sub_1000D660C();
          v28 = v36;
        }

        if (!*(v28 + v27 - 8))
        {
          sub_1000D660C();
          v28 = v36;
        }

        v29 = qword_100BC9C68 + v26;
        *v29 = v16 + v35;
        v30 = v28 + v27;
        *(v29 + 1) = *(v30 - 76);
        v31 = *(v30 - 68);
        *(v29 + 4) = *(v30 - 72);
        *(v29 + 8) = v31;
        v32 = *(v30 - 60);
        *(v29 + 10) = *(v30 - 64);
        *(v29 + 12) = *(v30 - 56);
        v33 = *(v30 - 52);
        *(v29 + 16) = v32;
        *(v29 + 20) = v33;
        *(v29 + 24) = *(v30 - 40);
        *(qword_100BC9C68 + v26 + 32) = *(v36 + v27 - 32);
        *(qword_100BC9C68 + v26 + 40) = *(v36 + v27 - 16);
        *(qword_100BC9C68 + v26 + 48) = *(v36 + v27 - 8);
        *(qword_100BC9C68 + v26 + 56) = *(v36 + v27 - 24);
        v34 = v36;
        if (*(v36 + v27 - 56) == 1 && !*(v36 + v27 - 24))
        {
          sub_1000D660C();
          *(qword_100BC9C68 + v26 + 12) = 0;
          v34 = v36;
        }

        sub_10025818C(*(qword_100BC9C68 + v26), *(v34 + v27 - 48), *(v34 + v27 - 46), *(v34 + v27));
        (*(v36 + v27 - 40))(*(v36 + v27 - 76));
        ++v25;
        v26 += 64;
        v27 += 88;
      }

      while (v25 < v35);
      v17 = qword_100BC9C68;
    }
  }

  else
  {
    v17 = sub_100007618(v16 << 6, 0x10800401DCC41E5uLL);
    qword_100BC9C68 = v17;
    byte_100BC9C70 = v16;
  }

  if (!v17)
  {
    return 106;
  }

  *v17 = 257;
  v17[2] = 1;
  v17[12] = 0;
  v18 = sub_1002C3A7C();
  v19 = sub_1002C3A7C();
  v20 = sub_1002C0F2C(v18, v19, 7500, 0x1Eu, 1, 1);
  *(qword_100BC9C68 + 4) = v20;
  if (!v20)
  {
    if (sub_10000C240())
    {
      v21 = sub_1002C3A7C();
      sub_10000AF54("Calculated tput is zero for data length %d and ce %d us", v21, 7500);
      v22 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v23 = qword_100BC9C68;
  *(qword_100BC9C68 + 8) = 1179678;
  *(v23 + 16) = 0xFFFFFC1800000000;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0;
  if (a1)
  {
    *(v23 + 64) = 514;
    *(v23 + 66) = 1;
    *(v23 + 76) = 0;
    *(v23 + 68) = 0x64000400000708;
    v24 = dword_100B52310;
    *(v23 + 80) = 300;
    *(v23 + 84) = v24;
    *(v23 + 88) = 0uLL;
    *(v23 + 104) = 0uLL;
    *(v23 + 120) = 0;
  }

  return 0;
}

void sub_10022F3E8(unsigned __int16 *a1, int a2, void *a3, int a4, uint64_t a5, int a6)
{
  if (a4 == 15 && *a3 == 0x6C7070612E6D6F63 && *(a3 + 7) == 0x53542E54422E656CLL)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Pipe 0x%4x is available for %p (lm 0x%4x) with priority %d", a2, a1, *a1, a6);
      v10 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v25 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v11 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_28;
    }

    v12 = &word_100BC9CB8;
    v13 = dword_100BC9C74;
    while (*(v12 - 1) != a1)
    {
      v12 += 536;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    if (*v12 != -1)
    {
      sub_1000D660C();
      v11 = dword_100BC9C74;
    }

    if (!v11)
    {
      goto LABEL_28;
    }

LABEL_17:
    v14 = v11;
    v15 = &word_100BC9CB8;
    while (*(v15 - 1) != a1)
    {
      v15 += 536;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    if (*v15 != -1)
    {
      if (off_100BC9CA0)
      {
        off_100BC9CA0(a1, 81, 3210, 133);
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Already have a TS pipe fot his handle !!!");
        v16 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
LABEL_28:
      v17 = &qword_100BC9CB0[134 * v11];
      bzero(v17, 0x430uLL);
      *v17 = a1;
      *(v17 + 4) = a2;
      *(v17 + 12) = 1;
      sub_1000CCC34(v11, 1u);
      v18 = &qword_100BC9CB0[134 * dword_100BC9C74];
      *(v18 + 77) = 0;
      v18[10] = 0x100000001;
      *(v18 + 29) = 0;
      *(v18 + 47) = -30;
      sub_1000D4354((v18 + 24));
      v19 = &qword_100BC9CB0[134 * dword_100BC9C74];
      *(v19 + 40) = *(v19 + 48);
      *(v19 + 82) = *(v19 + 98);
      sub_1000D4354((v19 + 26));
      sub_100194C6C(dword_100BC9C74);
      BYTE5(qword_100BC9CB0[134 * dword_100BC9C74 + 55]) = sub_100196770(a1);
      if (sub_10000C240())
      {
        sub_10000AF54("Storing pipe start %d:%d with tsTimeoutRequired %d", LODWORD(qword_100BC9CB0[134 * dword_100BC9C74 + 24]), SWORD2(qword_100BC9CB0[134 * dword_100BC9C74 + 24]), BYTE5(qword_100BC9CB0[134 * dword_100BC9C74 + 55]));
        v20 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10000C0FC();
          *buf = 136446210;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      ++dword_100BC9C74;
      if (sub_1000CC63C(a1))
      {
        sub_1000CBF60(a2, 2);
        if (sub_100084230() && sub_100084230() <= 0x7CF && sub_100084230() > 0xE || sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F)
        {
          sub_1002A87BC(a1, 1, 1);
        }

        if (sub_1000B6E74(a1))
        {
          sub_100232C94(a1);
        }
      }

      if (sub_100198764() && sub_10019496C(a1, 1) && sub_10000C240())
      {
        sub_10000AF54("Force upgrade TS not ready E");
        v22 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_10000C0FC();
          *buf = 136446210;
          v25 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

void sub_10022F82C(int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("pipe 0x%4x is gone, remaining peers %d", a1, dword_100BC9C74);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BC9C74)
  {
    v3 = 0;
    while (1)
    {
      v4 = &qword_100BC9CB0[134 * v3];
      if (*(v4 + 4) == a1)
      {
        break;
      }

      if (++v3 == dword_100BC9C74)
      {
        return;
      }
    }

    v28 = 0;
    sub_1000D4354(&v28);
    v5 = SWORD2(v28) + 1000 * v28;
    v6 = *(v4 + 98) + 1000 * *(v4 + 48);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 8 * *(v4 + 23) / v7;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Done with connection, %d total bytes sent in %d seconds (%d kbps)", *(v4 + 23), v7 / 0x3E8, v8);
      v9 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(&xmmword_100BC9C88 + 1))
    {
      (*(&xmmword_100BC9C88 + 1))(*(v4 + 56), 0, v4[24], v28);
    }

    v11 = *v4;
    if (*(v4 + 10))
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = &v4[2 * v12 + 2];
        v15 = *v14;
        if (*v14)
        {
          if (sub_1000B8B5C(*v14))
          {
            sub_1000D2538(v15, 19);
          }

          else if (*(v15 + 2) == 8)
          {
            v16 = byte_100BC9C70;
            if (byte_100BC9C70)
            {
              v17 = (qword_100BC9C68 + 48);
              while (*(v17 - 47) != *(v14 + 8))
              {
                v17 += 8;
                if (!--v16)
                {
                  goto LABEL_29;
                }
              }

              (*v17)(*v15);
            }
          }

LABEL_29:
          v13 = 1;
        }

        ++v12;
      }

      while (v12 < *(v4 + 10));
      if (v13)
      {
        goto LABEL_40;
      }
    }

    if (*(v4 + 12) != 8 || !sub_1000B6E74(v11))
    {
      goto LABEL_40;
    }

    if (v11[48])
    {
      if (v11[55] != 1 || v11[56])
      {
        goto LABEL_40;
      }

      v24 = 57;
    }

    else
    {
      v24 = 49;
    }

    sub_10024DE6C(0, &v11[v24], v18, v19, v20, v21, v22, v23);
LABEL_40:
    v25 = *(v4 + 13);
    if (v25)
    {
      sub_10002242C(v25);
    }

    if (sub_10002260C(*(v4 + 110)))
    {
      sub_10002242C(*(v4 + 110));
    }

    v26 = v4[8];
    if (v26)
    {
      sub_10000C1E8(v26);
      v4[8] = 0;
      *(v4 + 18) = 0;
    }

    v30[0] = xmmword_1008A4088;
    v30[1] = unk_1008A4098;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, v30, 2u);
    v27 = &qword_100BC9CB0[134 * --dword_100BC9C74];
    memcpy(v4, v27, 0x430uLL);
    bzero(v27, 0x430uLL);
  }
}

void sub_10022FBFC(uint64_t result, int a2)
{
  v2 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    for (i = (qword_100BC9C68 + 2); *(i - 1) != result; i += 64)
    {
      if (!--v2)
      {
        return;
      }
    }

    v4 = *i;
    *i = a2;
    if (v4 != a2 && dword_100BC9C74 != 0)
    {
      v6 = 0;
      v7 = *(i - 2);
      v8 = qword_100BC9CB0;
      do
      {
        sub_100233080(*v8, v7);
        ++v6;
        v8 += 134;
      }

      while (v6 < dword_100BC9C74);
    }
  }
}

void sub_10022FCA4(uint64_t result, int a2, int a3)
{
  v3 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    for (i = (qword_100BC9C68 + 8); *(i - 7) != result; i += 32)
    {
      if (!--v3)
      {
        return;
      }
    }

    if (*(i - 1) == a2)
    {
      v5 = *i;
      *(i - 1) = a2;
      *i = a3;
      if (v5 == a3)
      {
        return;
      }
    }

    else
    {
      *(i - 1) = a2;
      *i = a3;
    }

    if (dword_100BC9C74)
    {
      v6 = 0;
      v7 = *(i - 8);
      v8 = qword_100BC9CB0;
      do
      {
        sub_100233080(*v8, v7);
        ++v6;
        v8 += 134;
      }

      while (v6 < dword_100BC9C74);
    }
  }
}

uint64_t sub_10022FD68()
{
  sub_1002DB960(off_100AE7EF8);
  sub_1001987C4("com.apple.BT.TS", 0xFu, 2, 10);
  bzero(qword_100BC9CB0, 0x4300uLL);
  dword_100BC9C74 = 0;
  v0 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    v1 = 0;
    v2 = 0;
    v3 = qword_100BC9C68;
    do
    {
      v4 = *(v3 + v1 + 32);
      if (v4)
      {
        v4(*(v3 + v1));
        v3 = qword_100BC9C68;
        v0 = byte_100BC9C70;
      }

      ++v2;
      v1 += 64;
    }

    while (v2 < v0);
    if (v0)
    {
      sub_10000C1E8(qword_100BC9C68);
    }
  }

  qword_100BC9C68 = 0;
  byte_100BC9C70 = 0;

  return sub_100304754();
}

uint64_t sub_10022FE34(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (sub_1000CC63C(a1))
  {
    if (sub_1000B6E74(a1))
    {

      return sub_10022FF14(a1, v4, v3);
    }

    else
    {

      return sub_100230478(a1, v4, v3);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send upgrade");
      v7 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }
}

uint64_t sub_10022FF14(unsigned __int16 *a1, int a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    return 414;
  }

  for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
  {
    if (!--v3)
    {
      return 414;
    }
  }

  v8 = *i;
  __len[0] = 0;
  if (v8 == 0xFFFF)
  {
    return 414;
  }

  if ((sub_1000CC63C(a1) & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send caps changed");
      v13 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }

  v9 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_30;
  }

  v10 = &dword_100BC9CE0;
  while (*(v10 - 20) != v8)
  {
    v10 += 268;
    if (!--v9)
    {
      goto LABEL_30;
    }
  }

  if (*v10 != 6)
  {
LABEL_30:
    if (sub_10000C240())
    {
      v16 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v17 = &dword_100BC9CE0;
        while (*(v17 - 20) != v8)
        {
          v17 += 268;
          if (!--v16)
          {
            goto LABEL_35;
          }
        }

        v18 = *v17;
      }

      else
      {
LABEL_35:
        v18 = 0;
      }

      v19 = sub_1000CC6B0(v18);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v19);
      v20 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (!byte_100BC9C70)
  {
LABEL_24:
    if (!sub_10000C240())
    {
      return 120;
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v15 = "LE";
        goto LABEL_74;
      }

      if (a2 == 2)
      {
        v15 = "BT";
        goto LABEL_74;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          v15 = "WL";
          goto LABEL_74;
        case 16:
          v15 = "USB";
          goto LABEL_74;
        case 17:
          v15 = "AWDL";
          goto LABEL_74;
      }
    }

    v15 = "??";
LABEL_74:
    sub_10000AF54("Could not find transport tech %s.", v15);
    v28 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 120;
  }

  v14 = 0;
  while (*(qword_100BC9C68 + v14 + 1) != a2)
  {
    v14 += 64;
    if (byte_100BC9C70 << 6 == v14)
    {
      goto LABEL_24;
    }
  }

  if (*(qword_100BC9C68 + v14 + 12) == 1)
  {
    v21 = (*(qword_100BC9C68 + v14 + 56))(__len);
  }

  else
  {
    v21 = 0;
  }

  sub_1000CB7DC(a1);
  v22 = sub_100007618(__len[0] + 3, 0x6341E462uLL);
  if (v22)
  {
    v23 = v22;
    *v22 = 17;
    v22[1] = LOBYTE(__len[0]) + 1;
    v22[2] = *(qword_100BC9C68 + v14);
    if (v21 && __len[0])
    {
      memmove(v22 + 3, v21, __len[0]);
    }

    else if (!v21)
    {
      goto LABEL_55;
    }

    sub_10000C1E8(v21);
LABEL_55:
    sub_1000CBF60(v8, 7);
    if (dword_100BC9C74)
    {
      v24 = 0;
      while (1)
      {
        v25 = &qword_100BC9CB0[134 * v24];
        if (*v25 == a1)
        {
          break;
        }

        if (dword_100BC9C74 <= ++v24)
        {
          goto LABEL_61;
        }
      }

      *(v25 + 77) = a2;
    }

LABEL_61:
    if (a1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    if (!sub_10000C240())
    {
      goto LABEL_86;
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v27 = "LE";
        goto LABEL_84;
      }

      if (a2 == 2)
      {
        v27 = "BT";
        goto LABEL_84;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          v27 = "WL";
          goto LABEL_84;
        case 16:
          v27 = "USB";
          goto LABEL_84;
        case 17:
          v27 = "AWDL";
          goto LABEL_84;
      }
    }

    v27 = "??";
LABEL_84:
    sub_10000AF54("Sending UPGRADE for lmhandle 0x%4x pipe:0x%4X to %s", v26, v8, v27);
    v29 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10000C0FC();
      *&__len[1] = 136446210;
      *&__len[3] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", &__len[1], 0xCu);
    }

LABEL_86:
    v31 = sub_1000B7BFC(0, a1, v8, v23, (__len[0] + 3), 0);
    if (v31 == 412)
    {
      v11 = 0;
    }

    else
    {
      v11 = v31;
    }

    if (!v11)
    {
      v33 = 0u;
      v34 = 0u;
      LOBYTE(v33) = 1;
      WORD1(v33) = 4;
      DWORD2(v33) = 8;
      LOBYTE(v34) = 1;
      WORD1(v34) = 4;
      DWORD2(v34) = a2 | (a3 << 8);
      memcpy(&__len[1], "state", 0x200uLL);
      sub_1000CC0B0("Magnet Operation", &__len[1], &v33, 2u);
      sub_1000CC6D4(v8, 0x3A98u);
    }

    sub_10000C1E8(v23);
    return v11;
  }

  if (v21)
  {
    sub_10000C1E8(v21);
  }

  return 106;
}

uint64_t sub_100230478(unsigned __int16 *a1, int a2, int a3)
{
  v22 = 0;
  v21 = 272;
  LODWORD(v3) = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    return 120;
  }

  v6 = 0;
  v7 = &dword_100BC9CE0;
  while (1)
  {
    v8 = &qword_100BC9CB0[134 * v6];
    if (*v8 == a1)
    {
      break;
    }

LABEL_4:
    if (v3 <= ++v6)
    {
      return 120;
    }
  }

  v3 = v3;
  while (*(v7 - 20) != *(v8 + 4))
  {
    v7 += 268;
    if (!--v3)
    {
      goto LABEL_30;
    }
  }

  if (*v7 != 6)
  {
LABEL_30:
    if (sub_10000C240())
    {
      v14 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v15 = &dword_100BC9CE0;
        while (*(v15 - 20) != *(v8 + 4))
        {
          v15 += 268;
          if (!--v14)
          {
            goto LABEL_35;
          }
        }

        v16 = *v15;
      }

      else
      {
LABEL_35:
        v16 = 0;
      }

      v18 = sub_1000CC6B0(v16);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v18);
      v19 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (sub_10000C240())
  {
    if (a2 <= 2)
    {
      v9 = "LE";
      if (a2 == 1)
      {
        goto LABEL_23;
      }

      if (a2 == 2)
      {
        v9 = "BT";
        goto LABEL_23;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          v9 = "WL";
          goto LABEL_23;
        case 16:
          v9 = "USB";
          goto LABEL_23;
        case 17:
          v9 = "AWDL";
          goto LABEL_23;
      }
    }

    v9 = "??";
LABEL_23:
    sub_10000AF54("Sending UPGRADE_REQ for lmhandle 0x%4x tech %s", *a1, v9);
    v10 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  LOBYTE(v24) = 1;
  WORD1(v24) = 4;
  DWORD2(v24) = 7;
  LOBYTE(v25) = 1;
  WORD1(v25) = 4;
  DWORD2(v25) = a3;
  memcpy(buf, "state", sizeof(buf));
  sub_1000CC0B0("Magnet Operation", buf, &v24, 2u);
  v12 = byte_100BC9C70;
  if (!byte_100BC9C70)
  {
LABEL_29:
    LODWORD(v3) = dword_100BC9C74;
    v7 = &dword_100BC9CE0;
    goto LABEL_4;
  }

  v13 = (qword_100BC9C68 + 1);
  while (*v13 != a2)
  {
    v13 += 64;
    if (!--v12)
    {
      goto LABEL_29;
    }
  }

  v22 = *(v13 - 1);
  LODWORD(result) = sub_1000B7BFC(0, a1, *(v8 + 4), &v21, 3uLL, 0);
  if (result == 412)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1002307C0(unsigned __int16 *a1, char a2, uint64_t a3)
{
  result = sub_1000CB010(a1, a3);
  if (!result)
  {
    v6 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a1; i += 134)
      {
        if (!--v6)
        {
          return result;
        }
      }

      *(i + 77) = a2;
    }
  }

  return result;
}

void sub_100230828(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("PhyStatsEnabled with error %!", result);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_10023089C(uint64_t result, int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = qword_100BC9CB0; *i != result; i += 134)
    {
      if (!--v2)
      {
        return result;
      }
    }

    *(i + 47) = a2;
  }

  return result;
}

uint64_t sub_1002308D4(unsigned int a1)
{
  if (dword_100BC9C74 <= a1)
  {
    return 0;
  }

  else
  {
    return HIDWORD(qword_100BC9CB0[134 * a1 + 23]);
  }
}

void sub_100230904(uint64_t result, int a2, int a3)
{
  if (!dword_100BC9C74)
  {
    return;
  }

  v6 = 0;
  for (i = qword_100BC9CB0; ; i += 134)
  {
    if (*i != result)
    {
      goto LABEL_9;
    }

    v8 = *(i + 76);
    if (v8 == 2)
    {
      break;
    }

    if (v8 == 1)
    {
      if (*(result + 144) == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = 460;
      v13 = 456;
      v14 = 452;
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      v9 = sub_1000CC6B0(*(i + 76));
      sub_10000AF54("Unexpected transport : %s. Don't collect stats", v9);
      v10 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10081427C();
      }
    }

LABEL_9:
    if (++v6 >= dword_100BC9C74)
    {
      return;
    }
  }

  if (sub_10019943C(result))
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = 680;
  v13 = 676;
  v14 = 672;
LABEL_19:
  *(i + v14) = v11;
  *(i + v13) += a2;
  *(i + v12) += a3;
}

void sub_100230A88(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *__dst, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, void *a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (dword_100BC9C74)
  {
    v23 = 0;
    v24 = &byte_100BCA0D7;
    v45 = a2;
    v46 = a3;
    do
    {
      *a1 = *(v24 - 611);
      *a2 = *(v24 - 607);
      *a3 = *(v24 - 603);
      *a4 = *(v24 - 595);
      *a5 = *(v24 - 599);
      v25 = *(v24 - 593);
      v26 = *(v24 - 561);
      *(a7 + 16) = *(v24 - 577);
      *(a7 + 32) = v26;
      *a7 = v25;
      v27 = *(v24 - 545);
      v28 = *(v24 - 529);
      v29 = *(v24 - 513);
      *(a7 + 96) = *(v24 - 497);
      *(a7 + 64) = v28;
      *(a7 + 80) = v29;
      *(a7 + 48) = v27;
      v31 = *(v24 - 429);
      v30 = *(v24 - 413);
      v32 = *(v24 - 445);
      *(a8 + 96) = *(v24 - 397);
      *(a8 + 64) = v31;
      *(a8 + 80) = v30;
      *(a8 + 48) = v32;
      v33 = *(v24 - 493);
      v34 = *(v24 - 461);
      *(a8 + 16) = *(v24 - 477);
      *(a8 + 32) = v34;
      *a8 = v33;
      memcpy(__dst, v24 - 171, 4 * *(v24 - 1));
      *a9 = *(v24 - 391);
      *a10 = *(v24 - 387);
      *a11 = *(v24 - 383);
      *a12 = *(v24 - 375);
      *a13 = *(v24 - 379);
      v36 = *(v24 - 357);
      v35 = *(v24 - 341);
      *a15 = *(v24 - 373);
      *(a15 + 16) = v36;
      *(a15 + 32) = v35;
      v38 = *(v24 - 309);
      v37 = *(v24 - 293);
      v39 = *(v24 - 325);
      *(a15 + 96) = *(v24 - 277);
      *(a15 + 64) = v38;
      *(a15 + 80) = v37;
      *(a15 + 48) = v39;
      v40 = *(v24 - 241);
      v41 = *(v24 - 273);
      *(a16 + 16) = *(v24 - 257);
      *(a16 + 32) = v40;
      *a16 = v41;
      v42 = *(v24 - 209);
      v43 = *(v24 - 193);
      v44 = *(v24 - 225);
      *(a16 + 96) = *(v24 - 177);
      *(a16 + 64) = v42;
      *(a16 + 80) = v43;
      *(a16 + 48) = v44;
      memcpy(a14, v24 - 91, 4 * *v24);
      *a17 = *(v24 - 11);
      bzero(v24 - 611, 0x264uLL);
      a2 = v45;
      a3 = v46;
      ++v23;
      v24 += 1072;
    }

    while (v23 < dword_100BC9C74);
  }
}

void sub_100230CD8(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("SetBidirectionalMaxPowerMode completed with error %!", result);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_100230D4C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = a1;
  result = sub_100084230();
  if (result >= 0x7D0)
  {
    result = sub_100084230();
    if (result <= 0xF9F)
    {
      if (sub_10000C240())
      {
        v5 = "Disabling";
        if (v3)
        {
          v5 = "Enabling";
        }

        sub_10000AF54("%s bidirectional max power mode for handle 0x%x", v5, *a2);
        v6 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v8 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return sub_1002A8D5C();
    }
  }

  return result;
}

void sub_100230E6C()
{
  sub_100304AF8("Transport Switch: lNbTsPeers %d\n", dword_100BC9C74);
  if (!dword_100BC9C74)
  {
LABEL_66:
    v25 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = "No Transport Switching.\n";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    return;
  }

  v0 = 0;
  v1 = "BT";
  do
  {
    v2 = v1;
    v3 = &qword_100BC9CB0[134 * v0];
    v4 = *v3;
    if (*v3)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v3 + 14);
    v7 = *(v3 + 4);
    v8 = *(v3 + 10);
    v9 = sub_1000CC6B0(*(v3 + 12));
    v10 = *(v3 + 76);
    if (v10 <= 2)
    {
      v11 = "LE";
      if (v10 == 1)
      {
        goto LABEL_17;
      }

      if (v10 == 2)
      {
        v11 = v2;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v10)
      {
        case 3u:
          v11 = "WL";
          goto LABEL_17;
        case 0x10u:
          v11 = "USB";
          goto LABEL_17;
        case 0x11u:
          v11 = "AWDL";
          goto LABEL_17;
      }
    }

    v11 = "??";
LABEL_17:
    v12 = *(v3 + 77);
    if (v12 <= 2)
    {
      v13 = "LE";
      if (v12 == 1)
      {
        goto LABEL_28;
      }

      if (v12 == 2)
      {
        v13 = v2;
        goto LABEL_28;
      }
    }

    else
    {
      switch(v12)
      {
        case 3u:
          v13 = "WL";
          goto LABEL_28;
        case 0x10u:
          v13 = "USB";
          goto LABEL_28;
        case 0x11u:
          v13 = "AWDL";
          goto LABEL_28;
      }
    }

    v13 = "??";
LABEL_28:
    v14 = *(v3 + 20);
    if (v14 <= 2)
    {
      v15 = "LE";
      if (v14 == 1)
      {
        goto LABEL_39;
      }

      if (v14 == 2)
      {
        v15 = v2;
        goto LABEL_39;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v15 = "WL";
          goto LABEL_39;
        case 16:
          v15 = "USB";
          goto LABEL_39;
        case 17:
          v15 = "AWDL";
          goto LABEL_39;
      }
    }

    v15 = "??";
LABEL_39:
    v16 = *(v3 + 21);
    if (v16 <= 2)
    {
      v17 = "LE";
      if (v16 == 1)
      {
        goto LABEL_50;
      }

      if (v16 == 2)
      {
        v17 = v2;
        goto LABEL_50;
      }
    }

    else
    {
      switch(v16)
      {
        case 3:
          v17 = "WL";
          goto LABEL_50;
        case 16:
          v17 = "USB";
          goto LABEL_50;
        case 17:
          v17 = "AWDL";
          goto LABEL_50;
      }
    }

    v17 = "??";
LABEL_50:
    sub_100304AF8(">> Peer %d: version %d, connectionHandle=%p, lm=0x%4x, pipeID=0x%4x, nbTransportHandles=%d, state=%s, nbCaps=%d, currenTech=%s, updateTech=%s, localReq=%s, remoteReq=%s, leRSSI=%d\n", v0, v6, v4, v5, v7, v8, v9, *(v3 + 18), v11, v13, v15, v17, *(v3 + 47));
    sub_100304AF8("messageTimer=0x%x, samplingConfirmCount=%d, totalBytesQueued=%d, bytesSentOnTransport=%d, chipFull=%d, weightedLength=%d\n", *(v3 + 13), *(v3 + 78), *(v3 + 22), *(v3 + 23), *(v3 + 24), *(v3 + 25));
    sub_100304AF8("weightedInterPacketGap=%d, numOfEwmaSamples=%d, transportSelectReason=0x%x, calculatedTransportIndex=%d, actionToBeConfirm=%d, prevTSAction=%d, upgradeCount=%d\n", *(v3 + 26), *(v3 + 27), *(v3 + 28), *(v3 + 29), *(v3 + 30), *(v3 + 31), *(v3 + 50));
    sub_100304AF8("timeSpentUpgraded=%d, overrideIncomingRate=%d, overrideOutgoingRate=%d, overridePacketRate=%d, forceClassic=%d, bidirectionalMaxPowerModeAction=%d, bidirectionalMaxPowerModeActionPending=%d\n", *(v3 + 56), *(v3 + 444), *(v3 + 51), *(v3 + 54), *(v3 + 55), *(v3 + 447), *(v3 + 446));
    v1 = v2;
    if (*(v3 + 18))
    {
      v18 = 0;
      for (i = 0; i < *(v3 + 18); ++i)
      {
        v20 = v3[8];
        v21 = *(v20 + v18 + 1);
        if (v21 <= 2)
        {
          v22 = "LE";
          if (v21 != 1)
          {
            if (v21 != 2)
            {
LABEL_62:
              v22 = "??";
              goto LABEL_63;
            }

            v22 = v2;
          }
        }

        else
        {
          switch(v21)
          {
            case 3u:
              v22 = "WL";
              break;
            case 0x10u:
              v22 = "USB";
              break;
            case 0x11u:
              v22 = "AWDL";
              break;
            default:
              goto LABEL_62;
          }
        }

LABEL_63:
        v23 = *(v20 + v18);
        v24 = v20 + v18;
        sub_100304AF8("Cap %d is {id=%d, tech=%s, usable=%d, tput=%d, latency=%d, power=%d, extra=%d, common=%d}", i, v23, v22, *(v24 + 2), *(v24 + 4), *(v24 + 8), *(v24 + 10), *(v24 + 12), *(v24 + 13));
        v18 += 64;
      }
    }

    ++v0;
  }

  while (v0 < dword_100BC9C74);
  if (!dword_100BC9C74)
  {
    goto LABEL_66;
  }
}

uint64_t sub_10023130C(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _BYTE *a7, void *a8, void *a9)
{
  v18 = 0;
  result = sub_1000D4354(&v18);
  if (a1)
  {
    *a1 = dword_100BC9C74 != 0;
  }

  if (dword_100BC9C74)
  {
    if (a2)
    {
      *a2 = dword_100BC9D70;
    }

    if (a3)
    {
      *a3 = v18;
    }

    if (a4)
    {
      *a4 = dword_100BC9D78;
    }

    if (a5)
    {
      *a5 = dword_100BC9D7C;
    }

    if (a9)
    {
      *a9 = qword_100BC9CB0[0];
    }

    if (a6)
    {
      *a6 = dword_100BC9CE0;
    }

    if (a7)
    {
      *a7 = byte_100BC9CFC;
    }

    if (a8)
    {
      *a8 = 1000 * (v18 - dword_100BC9D80) - word_100BC9D84 + SWORD2(v18);
    }
  }

  return result;
}

uint64_t sub_10023143C(int a1)
{
  if (!dword_100BC9C74)
  {
    return 0;
  }

  v1 = 0;
  for (i = &qword_100BC9CC0; ; i += 134)
  {
    v3 = &qword_100BC9CB0[134 * v1];
    if (*(v3 + 4) == a1)
    {
      v4 = *(v3 + 10);
      v5 = i;
      if (*(v3 + 10))
      {
        break;
      }
    }

LABEL_7:
    if (++v1 == dword_100BC9C74)
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = *v5;
    if (*v5)
    {
      return v6;
    }

    v5 += 2;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1002314B8(unsigned __int16 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Force disconnecting this channel %p", a1);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (dword_100BC9C74)
  {
    v3 = 0;
    v4 = &qword_100BC9CC0;
    while (1)
    {
      v5 = &qword_100BC9CB0[134 * v3];
      if (*v5 == a1)
      {
        break;
      }

      v6 = *(v5 + 10);
      v7 = v4;
      if (*(v5 + 10))
      {
        while (*v7 != a1)
        {
          v7 += 2;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting peer %d", *(v5 + 4));
          v10 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }

        return sub_1002CDF48(*v5);
      }

LABEL_10:
      ++v3;
      v4 += 134;
      if (v3 == dword_100BC9C74)
      {
        goto LABEL_11;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting peer %d", *(v5 + 4));
      v11 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        sub_1000E09C0();
      }
    }

    return sub_1002CDF48(*v5);
  }

  else
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown lmhandle 0x%4x", *a1);
      v8 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }
}

void sub_100231674(uint64_t a1, int *a2, unsigned __int16 *a3)
{
  v14 = 0;
  v15 = *a2;
  v16 = *(a2 + 2);
  v5 = sub_1000E5EA8(&v14);
  if (a1 && sub_10000C240() && (!a3 ? (v6 = 0) : (v6 = *a3), sub_10000AF54("TS connection completed with status %! with lmhandle 0x%4x (0x%x)", a1, v6, a3), v7 = sub_10000C050(0x56u), os_log_type_enabled(v7, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (v5)
    {
LABEL_8:
      if (a3)
      {
        v8 = sub_1002FCEB8(a3);
        if (!a1 && *(v5 + 70))
        {
          v9 = dword_100BC9C74;
          if (!dword_100BC9C74)
          {
            goto LABEL_23;
          }

          v10 = &qword_100BC9CD0;
          while (*(v10 - 4) != v5)
          {
            v10 += 134;
            if (!--v9)
            {
              goto LABEL_23;
            }
          }

          if (*(v10 - 2) != a3 && *v10 != a3)
          {
LABEL_23:
            if (!sub_10023189C(v5, a3, a1, v8))
            {
              sub_10023B994(a3);
            }

            return;
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("TS connection complete, classicHandle is invalid");
          v11 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v8 = 0;
      }

      sub_10023189C(v5, a3, a1, v8);
      return;
    }
  }

  else if (v5)
  {
    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ACL connection complete, not a TS handle");
    v12 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_10000C0FC();
      *buf = 136446210;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_10023189C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1 && !a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No LE connection for this new connection.");
      v8 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 5009;
  }

  if (!a1 && a3)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("BT connection failed and LE is gone anyways - dropping the message.");
    v10 = sub_10000C050(0x56u);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

LABEL_35:
    *buf = 136446210;
    v45 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    return 0;
  }

  if (dword_100BC9C74)
  {
    v11 = 0;
    v12 = qword_100BC9CB0;
    while (*v12 != a1)
    {
      ++v11;
      v12 += 134;
      if (dword_100BC9C74 == v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    LODWORD(v11) = 16;
  }

  if (v11 >= dword_100BC9C74)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Ignoring connection complete - connected a device from an LE but we weren't tracking it.");
    v10 = sub_10000C050(0x56u);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (a1 && a3)
  {
    if (off_100BC9CA0)
    {
      off_100BC9CA0(a1, 81, 1647, a3);
    }

    if (sub_1000B6E74(a1))
    {
      sub_1000D4200(a1);
      if (a3 == 708)
      {
        v29 = &qword_100BC9CB0[134 * v11];
        if (*(v29 + 445) == 1)
        {
          sub_1000D4354((v29 + 20));
          if (sub_10000C240())
          {
            sub_10000AF54("TS Connection timeout timestamped at %d:%d. Connection start %d:%d", *(v29 + 40), *(v29 + 82), *(v29 + 48), *(v29 + 48));
            v30 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (a3 == 717)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Controller returning transport switch with error %!, retry. Current count %d, version 0x%x", 717, HIBYTE(qword_100BC9CB0[134 * v11 + 9]), LODWORD(qword_100BC9CB0[134 * v11 + 7]));
          v13 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v14 = &qword_100BC9CB0[134 * v11];
        if (*(v14 + 79) > 7u)
        {
          if (!sub_10000C240())
          {
            goto LABEL_94;
          }

          sub_10000AF54("Error count exceeds threshold %d and RSSI was %d", 8, *(v14 + 47));
          v43 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v15 = sub_10023324C(a1);
          if (!v15)
          {
            goto LABEL_94;
          }

          v16 = v15;
          if (!sub_10000C240())
          {
            goto LABEL_94;
          }

          sub_10000AF54("Upgrade retry failed with status %!", v16);
          v17 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        sub_10080F604();
LABEL_94:
        result = 0;
        ++*(v14 + 79);
        return result;
      }

      v31 = a1;
      v32 = 4;
LABEL_61:
      sub_1002334C8(v31, v32);
      return 0;
    }

    v14 = &qword_100BC9CB0[134 * v11];
    if (*(v14 + 79) <= 7u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Peripheral connection complete with status %!, retry %d is under limit. Version 0x%x", a3, *(v14 + 79), *(v14 + 14));
        v26 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      goto LABEL_94;
    }

    v27 = a1;
    v28 = 4;
    goto LABEL_55;
  }

  if (!a1 || a3)
  {
    sub_1000D660C();
  }

  v18 = &qword_100BC9CB0[134 * v11];
  v19 = *(v18 + 79);
  *(v18 + 79) = 0;
  v20 = sub_1000B6E74(a1);
  v21 = *(v18 + 4);
  v22 = dword_100BC9C74;
  if (v20)
  {
    if (!dword_100BC9C74)
    {
      goto LABEL_65;
    }

    v23 = &dword_100BC9CE0;
    while (*(v23 - 20) != v21)
    {
      v23 += 268;
      if (!--v22)
      {
        goto LABEL_65;
      }
    }

    if (*v23 != 8)
    {
LABEL_65:
      if (sub_10000C240())
      {
        sub_10000AF54("Got an upgrade we were not tracking !");
        v33 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 5010;
    }
  }

  else
  {
    if (!dword_100BC9C74)
    {
      goto LABEL_87;
    }

    v24 = &dword_100BC9CE0;
    v25 = dword_100BC9C74;
    while (*(v24 - 20) != v21)
    {
      v24 += 268;
      if (!--v25)
      {
        goto LABEL_70;
      }
    }

    if (*v24 == 8)
    {
      goto LABEL_75;
    }

LABEL_70:
    v34 = &dword_100BC9CE0;
    while (*(v34 - 20) != v21)
    {
      v34 += 268;
      if (!--v22)
      {
        goto LABEL_87;
      }
    }

    if (*v34 != 10)
    {
LABEL_87:
      if (sub_10000C240())
      {
        sub_10000AF54("Got an upgrade we were not tracking !");
        v42 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 5011;
    }
  }

LABEL_75:
  v35 = *(v18 + 10);
  if (v35)
  {
    v36 = *(v18 + 10);
    v37 = v18 + 2;
    while (*v37 != a2)
    {
      v37 += 2;
      if (!--v36)
      {
        do
        {
          v38 = &v18[2 * v36 + 2];
          if (*v38 == a2)
          {
            *v38 = 0;
            if (!v36)
            {
              *v38 = v18[4];
              *(v38 + 8) = *(v18 + 40);
              v18[4] = 0;
            }

            LODWORD(v36) = 0;
            *(v18 + 10) = --v35;
          }

          LODWORD(v36) = v36 + 1;
        }

        while (v36 < v35);
        goto LABEL_84;
      }
    }

    goto LABEL_99;
  }

LABEL_84:
  v39 = v18 + 2;
  v18[2 * v35 + 2] = a2;
  if (*(a2 + 2) == 8)
  {
    v40 = &v39[2 * v35];
    v41 = 17;
  }

  else
  {
    if (*(a2 + 2))
    {
      sub_1000D660C();
      v35 = *(v18 + 10);
      goto LABEL_98;
    }

    v40 = &v39[2 * v35];
    v41 = 2;
  }

  *(v40 + 8) = v41;
LABEL_98:
  *(v18 + 10) = v35 + 1;
LABEL_99:
  sub_1000D303C(v18, 0, 1u, v19);
  sub_1000CB7DC(a2);
  if (!*(a2 + 2) && !sub_1000B6E74(a1))
  {
    *(a2 + 196) = 1;
  }

  if (!sub_1000CC63C(a1) || (a4 & 1) != 0)
  {
    if (sub_1000B6E74(a1))
    {
      sub_1000CCE84(a1, a2);
      v31 = a1;
      v32 = 0;
      goto LABEL_61;
    }

    v27 = a1;
    v28 = 0;
LABEL_55:
    sub_10023362C(v27, v28);
    return 0;
  }

  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  sub_1000CBF60(*(v18 + 4), 9);
  result = sub_1000B6E74(a1);
  if (result)
  {
    result = sub_100300CD8(sub_100233A34, a2 + 48, 1048579, &unk_1008A4078, *(v18 + 4), 0);
    if (result)
    {
      sub_1002334C8(a1, 4);
      return 5012;
    }
  }

  return result;
}

uint64_t sub_100232034(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5230C != 1 || !dword_100BC9C74)
  {
    return 101;
  }

  LODWORD(v8) = 0;
  while (1)
  {
    if (a1)
    {
      v9 = &qword_100BC9CB0[134 * v8];
      if (*v9 == a1)
      {
        if (*(v9 + 76) != 2)
        {
          return 5008;
        }

        if (v8 < *(v9 + 10))
        {
          break;
        }
      }
    }

LABEL_12:
    LODWORD(v8) = v8 + 1;
    if (v8 >= dword_100BC9C74)
    {
      return 101;
    }
  }

  v8 = v8;
  while (*(v9 + 24) != 2 || !v9[2])
  {
    ++v8;
    v10 = *(v9 + 1082);
    v9 += 134;
    if (v8 >= v10)
    {
      goto LABEL_12;
    }
  }

  v13 = (858993460 * (8 * a2)) >> 32;
  v11 = sub_100018960(85, 0, a3, a4, a5, a6, a7, a8, v9[2]);
  if (sub_10000C240())
  {
    sub_10000AF54("TS setting flush timeout to %d ms with status %!", v13, v11);
    v14 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v11;
}

uint64_t sub_1002321C0(unsigned __int16 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Lmhandle 0x%4x drained", *a1);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002592C4(0, 0, 0);
  return sub_100194DC0();
}

uint64_t sub_10023229C(unsigned __int16 *a1, int a2, unsigned __int16 *a3)
{
  v6 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v7 = &word_100BC9CB8;
    while (*(v7 - 1) != a1)
    {
      v7 += 536;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
  }

  else
  {
LABEL_5:
    v8 = 0xFFFFLL;
  }

  v18 = 289;
  v19 = a2;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending DOWNGRADE_CFM to 0x%x", *a1);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v10 = sub_1000B7BFC(0, a1, v8, &v18, 3uLL, 0);
  if (v10 == 412)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (!a2 && !v11 && dword_100BC9C74)
  {
    v12 = 0;
    for (i = &byte_100BC9CFC; *(i - 76) != a1; i += 1072)
    {
      if (dword_100BC9C74 == ++v12)
      {
        return v11;
      }
    }

    sub_1000CBF60(*(i - 34), 6);
    v14 = *i;
    sub_1000CCC34(v12, 1u);
    sub_1000CCE84(a3, a1);
    sub_1000D29F4(a1, 0);
    sub_1000D4200(a1);
    sub_1000D2C0C(v12, v14, 0);
    if (i[1] != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Requesting transport upgrade since this downgrade was triggered by a upgrade to different alternate transport");
        v15 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_10000C0FC();
          *buf = 136446210;
          v21 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_100230478(a1, i[1], *(i + 9));
    }
  }

  return v11;
}

void sub_1002324F8(unsigned __int16 *a1)
{
  if (dword_100BC9C74)
  {
    v2 = 0;
    for (i = &dword_100BC9CE0; *(i - 6) != a1; i += 268)
    {
      if (dword_100BC9C74 == ++v2)
      {
        return;
      }
    }

    if (*(i - 38))
    {
      v4 = 0;
      v5 = 0;
      v6 = (i - 6);
      while (1)
      {
        if (sub_10000C240())
        {
          v7 = *i == 6 ? " " : "not ";
          sub_10000AF54("New channel created while TS is %sIdle, state:%d index [%d, %d], transport [tech:%d, currentInUseTech:%d]", v7, *i, v2, v4, *v6, *(i + 28));
          v8 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = sub_10000C0FC();
            *buf = 136446210;
            v19 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v10 = *v6;
        v11 = *(i + 28);
        if (v10 != v11)
        {
          if (v10 <= v11 || (*i - 7) > 3)
          {
            goto LABEL_23;
          }

          if (sub_10000C240())
          {
            v12 = *(v6 - 1);
            if (v12)
            {
              LODWORD(v12) = *v12;
            }

            if (v5)
            {
              v13 = *v5;
            }

            else
            {
              v13 = 0;
            }

            sub_10000AF54("Updating lmhandle 0x%x -> 0x%x during encryption pending state", v12, v13);
            v14 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = sub_10000C0FC();
              *buf = 136446210;
              v19 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }

        v5 = *(v6 - 1);
LABEL_23:
        ++v4;
        v6 += 16;
        if (v4 >= *(i - 38))
        {
          goto LABEL_29;
        }
      }
    }

    v5 = 0;
LABEL_29:
    if (*i >= 7)
    {
      sub_1000CB7DC(a1);
    }

    if (v5 && v5 != a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Faster tech available at the time of channel creation.  Moving channels\n");
        v16 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_10000C0FC();
          *buf = 136446210;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1000CCE84(a1, v5);
    }
  }
}

uint64_t sub_1002327CC(uint64_t a1, void *a2, int *a3)
{
  result = sub_1000B77E0(a1, a3);
  if (!result)
  {
    v6 = sub_100007618(*a3, 0x746AD4CAuLL);
    *a2 = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return 106;
    }
  }

  return result;
}

void sub_100232830(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("TS_LE_EncryptionCompleteCb completed with error %! with connectionHandle= %p ", a2, a1);
      v5 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a1)
  {
    if (a3)
    {
      v6 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
        {
          if (!--v6)
          {
            return;
          }
        }

        v8 = *i;
        if (v8 != 0xFFFF)
        {
          v9 = sub_1002DF928((a1 + 48));
          v10 = sub_10000C240();
          if (v9)
          {
            if (v10)
            {
              sub_10000AF54("Got encrypted but pairing is still in progress, waiting for pairing completion");
              v11 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v20 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          else
          {
            if (v10)
            {
              v12 = dword_100BC9C74;
              if (dword_100BC9C74)
              {
                v13 = &dword_100BC9CE0;
                while (*(v13 - 20) != v8)
                {
                  v13 += 268;
                  if (!--v12)
                  {
                    goto LABEL_22;
                  }
                }

                v14 = *v13;
              }

              else
              {
LABEL_22:
                v14 = 0;
              }

              v15 = sub_1000CC6B0(v14);
              sub_10000AF54("Encryption complete, pipe state is %s", v15);
              v16 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v20 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v17 = dword_100BC9C74;
            if (dword_100BC9C74)
            {
              for (j = &dword_100BC9CE0; *(j - 20) != v8; j += 268)
              {
                if (!--v17)
                {
                  return;
                }
              }

              if (*j == 1)
              {
                sub_1000CBF60(v8, 2);
                if (sub_1000B6E74(a1))
                {
                  sub_100232C94(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100232A94(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("TS_LE_PairingCompleteCb completed with error %! with address=%: publicAddress=%: ", a3, a1, a2);
      v6 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v7 = sub_1000E5EA8(a1);
  if (v7)
  {
    v8 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v9 = v7;
      for (i = &word_100BC9CB8; *(i - 1) != v7; i += 536)
      {
        if (!--v8)
        {
          return;
        }
      }

      v11 = *i;
      if (v11 != 0xFFFF)
      {
        if (sub_10000C240())
        {
          v12 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v13 = &dword_100BC9CE0;
            while (*(v13 - 20) != v11)
            {
              v13 += 268;
              if (!--v12)
              {
                goto LABEL_17;
              }
            }

            v14 = *v13;
          }

          else
          {
LABEL_17:
            v14 = 0;
          }

          v15 = sub_1000CC6B0(v14);
          sub_10000AF54("Got paired, pipe state is %s", v15);
          v16 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v20 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v17 = dword_100BC9C74;
        if (dword_100BC9C74)
        {
          for (j = &dword_100BC9CE0; *(j - 20) != v11; j += 268)
          {
            if (!--v17)
            {
              return;
            }
          }

          if (*j == 1)
          {
            sub_1000CBF60(v11, 2);
            if (sub_1000B6E74(v9))
            {
              sub_100232C94(v9);
            }
          }
        }
      }
    }
  }
}

void sub_100232C94(unsigned __int16 *a1)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v3 = &word_100BC9CB8;
    while (*(v3 - 1) != a1)
    {
      v3 += 536;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *v3;
  }

  else
  {
LABEL_5:
    v4 = 0xFFFFLL;
  }

  if (sub_1000CC63C(a1))
  {
    v5 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v6 = &dword_100BC9CE0;
      while (*(v6 - 20) != v4)
      {
        v6 += 268;
        if (!--v5)
        {
          goto LABEL_22;
        }
      }

      if (*v6 == 2)
      {
        v8 = 13 * byte_100BC9C70;
        v9 = sub_100007618(v8 + 7, 0x2603B3BuLL);
        if (v9)
        {
          v10 = v9;
          *v9 = 1;
          v9[1] = v8 + 5;
          *(v9 + 2) = 2;
          sub_100232F6C((v9 + 6));
          sub_1000CBF60(v4, 3);
          if (sub_10000C240())
          {
            sub_10000AF54("Sending VERSION_IND to lmhandle 0x%4x for pipe 0x%4x", *a1, v4);
            v11 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v19 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1000B7BFC(0, a1, v4, v10, v8 + 7, 0);
          sub_10000C1E8(v10);
          return;
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Failed to allocate %d bytes (%d transports)", v8 + 7, byte_100BC9C70);
        v17 = sub_10000C050(0x56u);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_30:
        sub_1000E09C0();
        return;
      }
    }

LABEL_22:
    if (sub_10000C240())
    {
      v12 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v13 = &dword_100BC9CE0;
        while (*(v13 - 20) != v4)
        {
          v13 += 268;
          if (!--v12)
          {
            goto LABEL_27;
          }
        }

        v14 = *v13;
      }

      else
      {
LABEL_27:
        v14 = 0;
      }

      v15 = sub_1000CC6B0(v14);
      sub_10000AF54("VERSION should only be send when in ENCRYPTED state. Current state is %s", v15);
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Link is not encrypted, can't send version");
    v7 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100232F6C(uint64_t result)
{
  v1 = byte_100BC9C70;
  *result = byte_100BC9C70;
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = result + 6;
  LODWORD(result) = 1;
  do
  {
    *(v4 - 5) = 12;
    *(v4 - 4) = *(qword_100BC9C68 + v2);
    *(v4 - 3) = *(qword_100BC9C68 + v2 + 1);
    *(v4 - 2) = *(qword_100BC9C68 + v2 + 2);
    *(v4 - 1) = *(qword_100BC9C68 + v2 + 12);
    *v4 = *(qword_100BC9C68 + v2 + 4);
    *(v4 + 2) = *(qword_100BC9C68 + v2 + 6);
    *(v4 + 3) = *(qword_100BC9C68 + v2 + 7);
    *(v4 + 4) = *(qword_100BC9C68 + v2 + 8);
    *(v4 + 5) = *(qword_100BC9C68 + v2 + 9);
    *(v4 + 6) = *(qword_100BC9C68 + v2 + 10);
    *(v4 + 7) = *(qword_100BC9C68 + v2 + 11);
    ++v3;
    v2 += 64;
    v4 += 13;
    result = (result + 13);
  }

  while (v3 < byte_100BC9C70);
  return result;
}

void sub_100233080(__int128 *a1, int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = &word_100BC9CB8; *(i - 1) != a1; i += 536)
    {
      if (!--v2)
      {
        return;
      }
    }

    v6 = *i;
    if (v6 != 0xFFFF)
    {
      if (sub_1000CC63C(a1))
      {
        if (byte_100BC9C70)
        {
          v7 = 0;
          while (*(qword_100BC9C68 + v7) != a2)
          {
            v7 += 64;
            if (byte_100BC9C70 << 6 == v7)
            {
              return;
            }
          }

          v9 = sub_100007618(0xAuLL, 0xEEC5A5ABuLL);
          if (v9)
          {
            v10 = v9;
            *v9 = 2053;
            *(v9 + 2) = a2;
            *(v9 + 3) = *(qword_100BC9C68 + v7 + 2);
            v9[2] = *(qword_100BC9C68 + v7 + 4);
            *(v9 + 6) = *(qword_100BC9C68 + v7 + 6);
            *(v9 + 7) = *(qword_100BC9C68 + v7 + 7);
            v11 = qword_100BC9C68 + v7;
            *(v9 + 8) = *(qword_100BC9C68 + v7 + 8);
            *(v9 + 9) = *(v11 + 9);
            sub_1000B7BFC(0, a1, v6, v9, 0xAuLL, 0);

            sub_10000C1E8(v10);
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Link is not encrypted, can't send cpas changed");
        v8 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_10023324C(uint64_t a1)
{
  if (sub_1000B8B5C(a1))
  {
    if (!sub_10000C240())
    {
      return 1;
    }

    sub_10000AF54("Already connected to classic");
    v2 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 1;
    }

    sub_10000AF54("Invalid LE handle");
    v4 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

LABEL_12:
    sub_1000E09C0();
    return 1;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 55) != 1 || *(a1 + 56))
    {
      return 1;
    }

    v3 = 57;
  }

  else
  {
    v3 = 49;
  }

  v6 = (a1 + v3);
  v20 = *v6;
  v21 = *(v6 + 2);
  if (sub_100084230() > 0xE)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_10024DE3C(sub_100233E10, a1, v7, v8, v9, v10, v11, v12);
    if (v13)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Read RSSI failed with status %!", v13);
        v14 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  sub_1000CB7DC(a1);
  v15 = sub_1000E1FE8(&v20);
  v16 = sub_1000B6E74(a1);
  if (!v15)
  {
    if (!v16)
    {
LABEL_29:
      if (!v13)
      {
        return 0;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to start upgrade %!.", v13);
        v18 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000D4200(a1);
      return 4;
    }

LABEL_28:
    v13 = sub_10023B6AC(sub_100231674, &v20);
    goto LABEL_29;
  }

  if (v16)
  {
    goto LABEL_28;
  }

  result = 0;
  v17 = *(v15 + 54);
  if (v17 <= 5 && ((1 << v17) & 0x39) != 0)
  {
    v19[1] = &v20;
    v19[0] = 6;
    sub_10023B994(v15);
    sub_1000228C0(sub_100233EB4, v19, 0);
    return 0;
  }

  return result;
}

uint64_t sub_1002334C8(unsigned __int16 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = &word_100BC9CB8;
    while (*(v5 - 1) != a1)
    {
      v5 += 536;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_5:
    v6 = 0xFFFFLL;
  }

  *(&v11 + 5) = 275;
  HIBYTE(v11) = a2;
  if (a1)
  {
    v7 = *a1;
  }

  else
  {
    v7 = 0;
  }

  if (sub_10000C240())
  {
    v8 = sub_100233F18(v2);
    sub_10000AF54("Sending UPGRADE_COMPLETE to lmhandle 0x%4x p:%0x%4X with %s", v7, v6, v8, v11);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = sub_1000B7BFC(0, a1, v6, &v11 + 5, 3uLL, 0);
  if (result == 412 || !result)
  {
    return sub_1000CC6D4(v6, 0x3A98u);
  }

  return result;
}

void sub_10023362C(unsigned __int16 *a1, uint64_t a2)
{
  if (!dword_100BC9C74)
  {
    LODWORD(v6) = 0xFFFF;
LABEL_17:
    if (sub_10000C240())
    {
      v12 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v13 = &dword_100BC9CE0;
        while (*(v13 - 20) != v6)
        {
          v13 += 268;
          if (!--v12)
          {
            goto LABEL_22;
          }
        }

        v14 = *v13;
      }

      else
      {
LABEL_22:
        v14 = 0;
      }

      v15 = sub_1000CC6B0(v14);
      sub_10000AF54("Not sending UPGRADE_COMPLETE_CFM, since the state is %s", v15);
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return;
  }

  v2 = a2;
  v4 = &word_100BC9CB8;
  v5 = dword_100BC9C74;
  while (*(v4 - 1) != a1)
  {
    v4 += 536;
    if (!--v5)
    {
      v6 = 0xFFFFLL;
      goto LABEL_8;
    }
  }

  v6 = *v4;
LABEL_8:
  *(&v22 + 5) = 276;
  HIBYTE(v22) = a2;
  v7 = &dword_100BC9CE0;
  v8 = dword_100BC9C74;
  while (*(v7 - 20) != v6)
  {
    v7 += 268;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (*v7 != 10)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  while (qword_100BC9CB0[v9] != a1)
  {
    ++v10;
    v9 += 134;
    if (134 * dword_100BC9C74 == v9)
    {
      v11 = 0;
      goto LABEL_32;
    }
  }

  v17 = &qword_100BC9CB0[v9];
  v6 = LOWORD(qword_100BC9CB0[v9 + 1]);
  sub_1000CBF60(LOWORD(qword_100BC9CB0[v9 + 1]), 6);
  sub_1000CCC34(v10, *(v17 + 77));
  *(v17 + 77) = 1;
  sub_1000D29F4(a1, 1);
  sub_1000D4200(a1);
  ++*(v17 + 50);
  ++*(v17 + 526);
  sub_100016250((v17 + 16));
  v11 = sub_1000B78F0(v17);
  if (!sub_1000B8B5C(v11) && !sub_1000C0E08(v11) && !sub_1000ABD24(v11) && !sub_1000B7994(v11))
  {
LABEL_32:
    v18 = 1;
    if (a1)
    {
LABEL_33:
      v19 = *a1;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v2)
  {
    sub_1000D2538(v11, 19);
    goto LABEL_32;
  }

  sub_1000CCE84(a1, v11);
  sub_1000D4200(v11);
  if (*(v11 + 2))
  {
    v18 = 17;
  }

  else
  {
    v18 = 2;
  }

  if (a1)
  {
    goto LABEL_33;
  }

LABEL_38:
  v19 = 0;
LABEL_39:
  if (sub_10000C240())
  {
    v20 = sub_100233F18(v2);
    sub_10000AF54("Sending UPGRADE_COMPLETE_CFM to lmhandle 0x%4x p:%0x%4X with %s", v19, v6, v20, v22);
    v21 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1000B7BFC(0, a1, v6, &v22 + 5, 3uLL, 0);
  if (!v2 && qword_100BC9C78)
  {
    if (sub_1000B8B5C(v11))
    {
      if (!v11)
      {
        sub_1000D660C();
      }

      (qword_100BC9C78)(a1, v18, v11 + 48, *(v11 + 278));
    }

    else
    {
      (qword_100BC9C78)(a1, v18, 0, 0);
    }
  }

  v24 = 0u;
  v25 = 0u;
  LOBYTE(v24) = 1;
  WORD1(v24) = 4;
  DWORD2(v24) = 9;
  LOBYTE(v25) = 1;
  WORD1(v25) = 4;
  DWORD2(v25) = v2;
  memcpy(buf, "state", sizeof(buf));
  sub_1000CC0B0("Magnet Operation", buf, &v24, 2u);
}

void sub_100233A34(uint64_t a1, unsigned __int16 a2)
{
  if (!dword_100BC9C74)
  {
    goto LABEL_30;
  }

  v3 = 0;
  v4 = &word_100BC9CB8;
  while (*v4 != a2)
  {
    ++v3;
    v4 += 536;
    if (dword_100BC9C74 == v3)
    {
      goto LABEL_30;
    }
  }

  v5 = *(v4 - 1);
  if (!v5)
  {
LABEL_30:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("No more connection handle for this pipeID");
    v15 = sub_10000C050(0x56u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_32;
  }

  v6 = &qword_100BC9CB0[134 * v3];
  if (*(v6 + 12) != 9)
  {
    sub_1000D660C();
    if (*(v6 + 12) != 9)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Got an encryption complete although we were not pending an encryption");
      v16 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_32:
      sub_1000E09C0();
      return;
    }
  }

  if ((sub_1000CC63C(v5) & 1) == 0)
  {
    sub_1000D660C();
  }

  if (*(v6 + 10) || (sub_1000D660C(), *(v6 + 10)))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = &qword_100BC9CB0[134 * v3 + 2];
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 2);
      if ((*(*v10 + 2) == 0) == (*(v10 + 8) != 2))
      {
        sub_1000D660C();
        v11 = *v10;
        v12 = *(*v10 + 2);
      }

      v13 = v12 == 0;
      if (sub_1000B8B5C(v11))
      {
        v8 = *v10;
      }

      v9 |= v13;
      ++v7;
      v10 += 2;
    }

    while (v7 < *(v6 + 10));
    if (v8)
    {
      if (v9)
      {
        if (a1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Error from security callback %!", a1);
            v14 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v20 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (off_100BC9CA0)
          {
            off_100BC9CA0(v5, 81, 2023, a1);
          }
        }

        if (sub_1002FCEB8(v8))
        {
          if (sub_1000B6E74(v5))
          {
            sub_1000CCE84(v5, v8);
            sub_1002334C8(v5, 0);
          }

          else
          {
            sub_10023362C(v5, 0);
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to encrypt : %!", a1);
            v18 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_1000CBF60(v3, 8);
          if (sub_1000B6E74(v5))
          {
            sub_1000D2538(v8, 5);
            sub_1002334C8(v5, 6);
            sub_10019518C(v5);
          }
        }

        return;
      }
    }

    else
    {
      sub_1000D660C();
      if (v9)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  sub_1000D660C();
LABEL_41:
  if (off_100BC9CA0)
  {
    off_100BC9CA0(v5, 81, 2015, a1);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No classic connection for this handle...");
    v17 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100233E10(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read RSSI CB failed with status %!", result);
      v4 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v5 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a2; i += 134)
      {
        if (!--v5)
        {
          return;
        }
      }

      *(i + 47) = a3;
    }
  }
}

uint64_t sub_100233EB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 4);
  v5 = *v1;
  v6 = v2;
  v3 = sub_1000E1FE8(&v5);
  if (v3)
  {
    sub_100231674(0, &v5, v3);
  }

  return sub_1000D2538(v3, 19);
}

const char *sub_100233F18(unsigned int a1)
{
  if (a1 > 8)
  {
    return "ERROR_Unknown";
  }

  else
  {
    return off_100AE7F78[a1];
  }
}

void sub_100233F3C(unsigned __int16 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v68 = 0;
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v7 = &word_100BC9CB8;
    while (*(v7 - 1) != a1)
    {
      v7 += 536;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    if (*v7 != -1)
    {
      if (sub_1000B6E74(a1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("VERSION_IND not supposed to get a version from the peripheral.");
          v8 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v9 = a1;
        v10 = 2;
LABEL_53:
        sub_100236DDC(v9, 1, v10);
        return;
      }

      v12 = dword_100BC9C74;
      if (!dword_100BC9C74)
      {
        goto LABEL_26;
      }

      v13 = &word_100BC9CB8;
      v14 = dword_100BC9C74;
      while (*(v13 - 1) != a1)
      {
        v13 += 536;
        if (!--v14)
        {
          v15 = 0xFFFF;
          goto LABEL_21;
        }
      }

      v15 = *v13;
LABEL_21:
      v16 = &dword_100BC9CE0;
      while (*(v16 - 20) != v15)
      {
        v16 += 268;
        if (!--v12)
        {
          goto LABEL_26;
        }
      }

      if (*v16 != 2)
      {
LABEL_26:
        if (sub_10000C240())
        {
          v17 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v18 = &word_100BC9CB8;
            v19 = dword_100BC9C74;
            while (*(v18 - 1) != a1)
            {
              v18 += 536;
              if (!--v19)
              {
                v20 = 0xFFFF;
                goto LABEL_33;
              }
            }

            v20 = *v18;
LABEL_33:
            v21 = &dword_100BC9CE0;
            while (*(v21 - 20) != v20)
            {
              v21 += 268;
              if (!--v17)
              {
                goto LABEL_36;
              }
            }

            v22 = *v21;
          }

          else
          {
LABEL_36:
            v22 = 0;
          }

          v23 = sub_1000CC6B0(v22);
          sub_10000AF54("VERSION_IND as peripheral but the current state is %s", v23);
          v24 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v25 = a3 - 4;
      if (a3 < 4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("VERSION_IND bad length for version PDU : %d", a3);
          v32 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v9 = a1;
        v10 = 1;
        goto LABEL_53;
      }

      v26 = *a2;
      v27 = v26 | (a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24);
      if (sub_10000C240())
      {
        sub_10000AF54("Received VERSION_IND for lmhandle 0x%4x version %d", *a1, v27);
        v28 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v69 = 0;
      v29 = sub_100236E5C(a2 + 4, v25, &v69, &v68);
      if (v29)
      {
        v30 = v29;
        if (sub_10000C240())
        {
          sub_10000AF54("Parsing error with status %!", v30);
          v31 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v9 = a1;
        v10 = v30;
        goto LABEL_53;
      }

      v33 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v34 = &dword_100BC9CF8;
        while (*(v34 - 9) != a1)
        {
          v34 += 268;
          if (!--v33)
          {
            goto LABEL_63;
          }
        }

        v35 = *(v34 - 1);
        if (v35)
        {
          sub_10000C1E8(v35);
        }

        *(v34 - 1) = v69;
        *v34 = v68;
        *(v34 - 4) = v27;
      }

LABEL_63:
      v67 = v27;
      sub_100194E7C(a1);
      if (xmmword_100BC9C88)
      {
        xmmword_100BC9C88(a1, v26, *(a1 + 26), *(a1 + 37) == 2);
      }

      v36 = dword_100BC9C74;
      if (!dword_100BC9C74)
      {
        goto LABEL_77;
      }

      v37 = &word_100BC9CB8;
      while (*(v37 - 1) != a1)
      {
        v37 += 536;
        if (!--v36)
        {
          goto LABEL_77;
        }
      }

      v38 = *v37;
      if (v38 == 0xFFFF)
      {
LABEL_77:
        if (sub_10000C240())
        {
          sub_10000AF54("Not tracking this device.");
          v41 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }
        }
      }

      else if (sub_1000CC63C(a1))
      {
        v39 = dword_100BC9C74;
        if (!dword_100BC9C74)
        {
          goto LABEL_114;
        }

        v40 = &dword_100BC9CE0;
        while (*(v40 - 20) != v38)
        {
          v40 += 268;
          if (!--v39)
          {
            goto LABEL_114;
          }
        }

        if (*v40 != 2)
        {
LABEL_114:
          if (!sub_10000C240())
          {
            goto LABEL_80;
          }

          v61 = dword_100BC9C74;
          if (dword_100BC9C74)
          {
            v62 = &dword_100BC9CE0;
            while (*(v62 - 20) != v38)
            {
              v62 += 268;
              if (!--v61)
              {
                goto LABEL_119;
              }
            }

            v63 = *v62;
          }

          else
          {
LABEL_119:
            v63 = 0;
          }

          v64 = sub_1000CC6B0(v63);
          sub_10000AF54("Caps response should only be send when in ENCRYPTED state. Current state is %s", v64);
          v65 = sub_10000C050(0x56u);
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        sub_1000CBF60(v38, 6);
        v55 = 13 * byte_100BC9C70;
        v56 = sub_100007618(v55 + 7, 0xA9A8C58CuLL);
        if (v56)
        {
          v57 = v56;
          *v56 = 2;
          v56[1] = v55 + 5;
          *(v56 + 2) = 2;
          if (v55 + 1 != sub_100232F6C((v56 + 6)))
          {
            sub_1000D660C();
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Sending CAPS_IND on lmhandle 0x%4x to version %d", *a1, 2);
            v58 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = sub_10000C0FC();
              *buf = 136446210;
              *&buf[4] = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v60 = sub_1000B7BFC(0, a1, v38, v57, v55 + 7, 0);
          sub_10000C1E8(v57);
          if (!v60 || v60 == 412)
          {
            goto LABEL_100;
          }

          goto LABEL_80;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Failed to allocate %d bytes (%d transports)", v55 + 7, byte_100BC9C70);
          v66 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
LABEL_79:
            sub_1000E09C0();
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Link is not encrypted, can't send caps");
        v54 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }
      }

LABEL_80:
      sub_100236DDC(a1, 1, 1);
      v42 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v43 = 0;
        do
        {
          v44 = &qword_100BC9CB0[134 * v43];
          if (*v44 == a1)
          {
            *&v71 = 0;
            sub_1000D4354(&v71);
            v45 = SWORD2(v71) + 1000 * v71;
            v46 = *(v44 + 98) + 1000 * *(v44 + 48);
            v47 = v45 - v46;
            if (v45 == v46)
            {
              v48 = 0xFFFFFFFFLL;
            }

            else
            {
              v48 = 8 * *(v44 + 23) / v47;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Done with connection, %d total bytes sent in %d seconds (%d kbps)", *(v44 + 23), v47 / 0x3E8, v48);
              v49 = sub_10000C050(0x56u);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = sub_10000C0FC();
                *buf = 136446210;
                *&buf[4] = v50;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if (off_100BC9C80)
            {
              off_100BC9C80(a1, 1, v48);
            }

            v51 = *(v44 + 13);
            if (v51)
            {
              sub_10002242C(v51);
            }

            v52 = v44[8];
            if (v52)
            {
              sub_10000C1E8(v52);
              v44[8] = 0;
              *(v44 + 18) = 0;
            }

            v53 = dword_100BC9C74;
            v42 = --dword_100BC9C74;
            if (v53 != 1)
            {
              memcpy(&qword_100BC9CB0[134 * (v53 - 2)], v44, 0x430uLL);
            }

            bzero(&qword_100BC9CB0[134 * v42], 0x430uLL);
            v43 = 0;
          }

          else
          {
            ++v43;
          }
        }

        while (v43 < v42);
      }

LABEL_100:
      v71 = 0u;
      v72 = 0u;
      LOBYTE(v71) = 1;
      WORD1(v71) = 4;
      DWORD2(v71) = 2;
      LOBYTE(v72) = 1;
      WORD1(v72) = 4;
      DWORD2(v72) = v67;
      memcpy(buf, "state", sizeof(buf));
      sub_1000CC0B0("Magnet Operation", buf, &v71, 2u);
      return;
    }
  }

LABEL_12:
  if (sub_10000C240())
  {
    sub_10000AF54("VERSION_IND not tracking this device.");
    v11 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100234880(unsigned __int16 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v43 = 0;
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_13;
    }
  }

  if (*v7 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("CAPS_IND not tracking this device.");
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (!sub_1000B6E74(a1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("CAPS_IND not supposed to get a caps from the central.");
        v13 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v14 = a1;
      v15 = 2;
      goto LABEL_59;
    }

    v8 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_26;
    }

    v9 = &word_100BC9CB8;
    v10 = dword_100BC9C74;
    while (*(v9 - 1) != a1)
    {
      v9 += 536;
      if (!--v10)
      {
        v11 = 0xFFFF;
        goto LABEL_21;
      }
    }

    v11 = *v9;
LABEL_21:
    v16 = &dword_100BC9CE0;
    while (*(v16 - 20) != v11)
    {
      v16 += 268;
      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    if (*v16 != 3)
    {
LABEL_26:
      if (sub_10000C240())
      {
        v17 = dword_100BC9C74;
        if (dword_100BC9C74)
        {
          v18 = &word_100BC9CB8;
          v19 = dword_100BC9C74;
          while (*(v18 - 1) != a1)
          {
            v18 += 536;
            if (!--v19)
            {
              v20 = 0xFFFF;
              goto LABEL_33;
            }
          }

          v20 = *v18;
LABEL_33:
          v21 = &dword_100BC9CE0;
          while (*(v21 - 20) != v20)
          {
            v21 += 268;
            if (!--v17)
            {
              goto LABEL_36;
            }
          }

          v22 = *v21;
        }

        else
        {
LABEL_36:
          v22 = 0;
        }

        v23 = sub_1000CC6B0(v22);
        sub_10000AF54("CAPS_IND as central but the current state is %s", v23);
        v24 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v25 = a3 - 4;
    if (a3 <= 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Wrong size for caps.");
        v26 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v14 = a1;
      v15 = 3;
LABEL_59:
      sub_100236DDC(v14, 2, v15);
      return;
    }

    v27 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v28 = &word_100BC9CB8;
      while (*(v28 - 1) != a1)
      {
        v28 += 536;
        if (!--v27)
        {
          goto LABEL_49;
        }
      }

      v29 = *v28;
    }

    else
    {
LABEL_49:
      v29 = 0xFFFF;
    }

    sub_1000CBF60(v29, 4);
    v30 = *a2;
    v31 = v30 | (a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24);
    if (sub_10000C240())
    {
      sub_10000AF54("Received CAPS_IND for lmhandle 0x%4x with version %d", *a1, v31);
      v32 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v44 = 0;
    v33 = sub_100236E5C(a2 + 4, v25, &v44, &v43);
    if (v33)
    {
      v34 = v33;
      if (sub_10000C240())
      {
        sub_10000AF54("CAPS_IND parser error %!", v34);
        v35 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v14 = a1;
      v15 = v34;
      goto LABEL_59;
    }

    if (dword_100BC9C74)
    {
      v36 = 0;
      while (1)
      {
        v37 = &qword_100BC9CB0[134 * v36];
        if (*v37 == a1)
        {
          break;
        }

        if (dword_100BC9C74 <= ++v36)
        {
          goto LABEL_74;
        }
      }

      v38 = v37[8];
      if (v38)
      {
        sub_10000C1E8(v38);
      }

      v37[8] = v44;
      *(v37 + 18) = v43;
      *(v37 + 14) = v31;
      if (sub_100084230() == 15 && *(v37 + 14) <= 1u)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invoking TS WAR");
          v39 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002A2F84(a1, sub_1002370B4);
      }
    }

LABEL_74:
    sub_100194E7C(a1);
    sub_100194FFC(a1);
    v40 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v41 = &word_100BC9CB8;
      while (*(v41 - 1) != a1)
      {
        v41 += 536;
        if (!--v40)
        {
          goto LABEL_78;
        }
      }

      v42 = *v41;
    }

    else
    {
LABEL_78:
      v42 = 0xFFFF;
    }

    sub_1000CBF60(v42, 6);
    if (xmmword_100BC9C88)
    {
      xmmword_100BC9C88(a1, v30, *(a1 + 26), *(a1 + 37) == 2);
    }

    v46 = 0u;
    v47 = 0u;
    LOBYTE(v46) = 1;
    WORD1(v46) = 4;
    DWORD2(v46) = 3;
    LOBYTE(v47) = 1;
    WORD1(v47) = 4;
    DWORD2(v47) = v31;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, &v46, 2u);
  }
}

void sub_100234E50(uint64_t a1, unsigned __int8 *a2)
{
  v2 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v2)
    {
      goto LABEL_13;
    }
  }

  if (*v5 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Not tracking this device.");
      v8 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (sub_1000B6E74(a1))
  {
    if (dword_100BC9C74)
    {
      v6 = 0;
      while (1)
      {
        v7 = &qword_100BC9CB0[134 * v6];
        if (*v7 == a1)
        {
          break;
        }

        if (dword_100BC9C74 <= ++v6)
        {
          return;
        }
      }

      v10 = *(v7 + 18);
      if (v10)
      {
        v11 = 0;
        v12 = v7[8];
        while (*(v12 + (v11 << 6)) != *a2)
        {
          if (v10 <= ++v11)
          {
            return;
          }
        }

        v13 = v12 + (v11 << 6);
        *(v13 + 2) = a2[1] != 0;
        v14 = a2[2];
        *(v13 + 4) = v14;
        v15 = v14 | (a2[3] << 8);
        *(v13 + 4) = v15;
        v16 = v15 | (a2[4] << 16);
        *(v13 + 4) = v16;
        *(v13 + 4) = v16 | (a2[5] << 24);
        *(v13 + 8) = a2[6];
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("CAPS_CHANGED_IND not supposed to get a caps info response from the central.");
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", &v17, 0xCu);
    }
  }
}

void sub_100235068(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_12;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_12;
    }
  }

  if (*v7 == -1)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE not tracking this device.");
      v9 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (!sub_1000B6E74(a1))
  {
    if (!a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("UPGRADE wrong size for upgrade req.");
        v20 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v21 = a1;
      v22 = 3;
      v23 = 0;
      goto LABEL_67;
    }

    v12 = *a2;
    v10 = a2 + 1;
    v11 = v12;
    v13 = a3 - 1;
    if (a3 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    v15 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v16 = 0;
      v17 = qword_100BC9CB0;
      while (*v17 != a1)
      {
        ++v16;
        v17 += 134;
        if (dword_100BC9C74 == v16)
        {
          v18 = 0;
          v19 = 4;
          LODWORD(v16) = dword_100BC9C74;
          goto LABEL_44;
        }
      }

      v24 = &dword_100BC9CE0;
      while (*(v24 - 20) != *(v17 + 4))
      {
        v24 += 268;
        if (!--v15)
        {
          goto LABEL_40;
        }
      }

      if (*v24 != 6)
      {
LABEL_40:
        if (sub_10000C240())
        {
          v27 = sub_1000CC6B0(*(v17 + 12));
          sub_10000AF54("UPGRADE upgrade should only be received when in IDLE state. Current state is %s", v27);
          v28 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v18 = 1;
        v19 = 5;
        goto LABEL_44;
      }

      v25 = *(v17 + 18);
      if (v25)
      {
        v26 = (v17[8] + 1);
        while (*(v26 - 1) != v11)
        {
          v26 += 64;
          if (!--v25)
          {
            goto LABEL_39;
          }
        }

        v18 = *v26;
      }

      else
      {
LABEL_39:
        v18 = 0;
      }

      if (sub_100194E4C(v16, 1u))
      {
        sub_1000CBF60(*(v17 + 4), 8);
        *(v17 + 77) = v18;
        goto LABEL_29;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("RSSI is not sufficient for upgrade rssi=%d", *(v17 + 47));
        v32 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v18 = 1;
      v19 = 8;
    }

    else
    {
      LODWORD(v16) = 0;
      v18 = 0;
LABEL_29:
      v19 = 4;
    }

LABEL_44:
    if (!sub_10000C240())
    {
LABEL_59:
      v34 = 0u;
      v35 = 0u;
      LOBYTE(v34) = 1;
      WORD1(v34) = 4;
      DWORD2(v34) = 4;
      LOBYTE(v35) = 1;
      WORD1(v35) = 4;
      DWORD2(v35) = v18;
      memcpy(buf, "state", sizeof(buf));
      sub_1000CC0B0("Magnet Operation", buf, &v34, 2u);
      if (v18 == 1 || (v18 != 2 ? (v31 = sub_100237368(v18, a1, v14, v13, 0)) : (v31 = sub_10023324C(a1)), v19 = v31, v31))
      {
        BYTE5(qword_100BC9CB0[134 * v16 + 9]) = 0;
      }

      else
      {
        sub_1000D4354(&qword_100BC9CB0[134 * v16 + 19]);
      }

      v22 = v19;
      v21 = a1;
      v23 = v18;
LABEL_67:
      sub_100237128(v21, v22, v23);
      return;
    }

    if (v18 <= 2)
    {
      if (v18 == 1)
      {
        v29 = "LE";
        goto LABEL_57;
      }

      if (v18 == 2)
      {
        v29 = "BT";
        goto LABEL_57;
      }
    }

    else
    {
      switch(v18)
      {
        case 3:
          v29 = "WL";
          goto LABEL_57;
        case 16:
          v29 = "USB";
          goto LABEL_57;
        case 17:
          v29 = "AWDL";
          goto LABEL_57;
      }
    }

    v29 = "??";
LABEL_57:
    sub_10000AF54("Received UPGRADE for lmhandle 0x%4x to transport ID %d (tech %s)", *a1, v11, v29);
    v30 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("UPGRADE not supposed to get a upgrade from the peripheral.");
    v8 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100236DDC(a1, 17, 2);
}

void sub_100235580(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_14;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_14;
    }
  }

  if (*v7 == -1)
  {
LABEL_14:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ not tracking this device.");
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (!sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ not supposed to get a upgrade req from the central.");
      v13 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v36 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v14 = a1;
    v15 = 2;
    goto LABEL_56;
  }

  if (!a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_REQ wrong size for upgrade req.");
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v14 = a1;
    v15 = 3;
    goto LABEL_56;
  }

  v8 = *a2;
  if (!dword_100BC9C74)
  {
    LODWORD(v9) = 0;
LABEL_30:
    v11 = 0;
    goto LABEL_31;
  }

  v9 = 0;
  v10 = &qword_100BC9CF0;
  while (*(v10 - 8) != a1)
  {
    ++v9;
    v10 += 134;
    if (dword_100BC9C74 == v9)
    {
      v11 = 0;
      LODWORD(v9) = dword_100BC9C74;
      goto LABEL_31;
    }
  }

  v17 = *(v10 + 2);
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = (*v10 + 1);
  while (*(v18 - 1) != v8)
  {
    v18 += 64;
    if (!--v17)
    {
      goto LABEL_30;
    }
  }

  v11 = *v18;
LABEL_31:
  if (!sub_10000C240())
  {
    goto LABEL_47;
  }

  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v19 = "LE";
      goto LABEL_45;
    }

    if (v11 == 2)
    {
      v19 = "BT";
      goto LABEL_45;
    }
  }

  else
  {
    switch(v11)
    {
      case 3:
        v19 = "WL";
        goto LABEL_45;
      case 16:
        v19 = "USB";
        goto LABEL_45;
      case 17:
        v19 = "AWDL";
        goto LABEL_45;
    }
  }

  v19 = "??";
LABEL_45:
  sub_10000AF54("Received UPGRADE_REQ to tech %s (2) from lmhandle 0x%4x", v19, v8);
  v20 = sub_10000C050(0x56u);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v36 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
  }

LABEL_47:
  if (!v11)
  {
    v14 = a1;
    v15 = 4;
LABEL_56:
    sub_100236DDC(v14, 16, v15);
    return;
  }

  v21 = &qword_100BC9CB0[134 * v9];
  *(v21 + 21) = v11;
  if (v11 == *(v21 + 76))
  {
    if (sub_10000C240())
    {
      if (v11 <= 2)
      {
        v22 = v11 == 1 ? "LE" : "BT";
      }

      else if (v11 == 3)
      {
        v22 = "WL";
      }

      else if (v11 == 16)
      {
        v22 = "USB";
      }

      else
      {
        v22 = v11 == 17 ? "AWDL" : "??";
      }

      sub_10000AF54("UPGRADE_REQ lmhandle 0x%4x already using tech %s", *a1, v22);
      v26 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }
    }
  }

  else
  {
    v23 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_72;
    }

    v24 = &dword_100BC9CE0;
    while (*(v24 - 20) != *(v21 + 4))
    {
      v24 += 268;
      if (!--v23)
      {
        goto LABEL_72;
      }
    }

    if (*v24 == 6)
    {
      if (*(v21 + 40) == *(v21 + 48) || *(v21 + 82) == *(v21 + 98))
      {
        v25 = 0;
      }

      else
      {
        v34 = 0;
        sub_1000D4354(&v34);
        v31 = 1000 * (v34 - *(v21 + 40)) - *(v21 + 82) + SWORD2(v34);
        v25 = v31 >> 2 < 0x465;
        if (v31 >> 2 >= 0x465)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("TS connection timeout detected %d mseconds ago, allow remote transport switch request", v31);
            v32 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = sub_10000C0FC();
              *buf = 136446210;
              v36 = v33;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          *(v21 + 40) = *(v21 + 48);
          *(v21 + 82) = *(v21 + 98);
        }
      }

      if (v11 == 2 && (v25 | !sub_100194E4C(v9, 1u)) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received UPGRADE_REQ to tech BT but RSSI was not sufficient or uncertainty was %d, ignoring", v25);
          v26 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = sub_10000C0FC();
            *buf = 136446210;
            v36 = v27;
LABEL_87:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received UPGRADE_REQ to tech BT. RSSI:  %d: %d", *(v21 + 47), v25);
          v28 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = sub_10000C0FC();
            *buf = 136446210;
            v36 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_10022FF14(a1, v11, 32);
      }
    }

    else
    {
LABEL_72:
      if (sub_10000C240())
      {
        sub_10000AF54("UPGRADE_REQ got a request when already switching (state %d) !", *(v21 + 12));
        v26 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
LABEL_86:
          v30 = sub_10000C0FC();
          *buf = 136446210;
          v36 = v30;
          goto LABEL_87;
        }
      }
    }
  }
}

void sub_100235C60(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_10;
  }

  v7 = &word_100BC9CB8;
  while (*(v7 - 1) != a1)
  {
    v7 += 536;
    if (!--v3)
    {
      goto LABEL_10;
    }
  }

  if (*v7 == -1)
  {
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_CFM not tracking this device.");
      v9 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (sub_1000B6E74(a1))
    {
      if (a3)
      {
        v8 = *a2;
      }

      else
      {
        v8 = 0;
      }

      v11 = a3 - 1;
      if (a3 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 + 1;
      }

      if (sub_10000C240())
      {
        v13 = *a1;
        v14 = sub_100233F18(v8);
        sub_10000AF54("Received UPGRADE_CFM from lmhandle 0x%4x with %s", v13, v14);
        v15 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v20 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (dword_100BC9C74)
      {
        v16 = 0;
        v17 = qword_100BC9CB0;
        while (*v17 != a1)
        {
          ++v16;
          v17 += 134;
          if (dword_100BC9C74 == v16)
          {
            v18 = 0;
            LODWORD(v16) = dword_100BC9C74;
            goto LABEL_30;
          }
        }

        sub_1000CCE28(*(v17 + 4));
        if (v8)
        {
          *(v17 + 77) = 1;
          sub_1000CBF60(*(v17 + 4), 6);
          sub_1000D4200(a1);
          return;
        }

        sub_1000CBF60(*(v17 + 4), 8);
        v18 = *(v17 + 77);
        if (v18 == 2)
        {
          if (!sub_10023324C(a1))
          {
            goto LABEL_36;
          }

          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v16) = 0;
        v18 = 0;
      }

LABEL_30:
      if (!sub_100237368(v18, a1, v12, v11, 1))
      {
LABEL_36:
        sub_1000D4354(&qword_100BC9CB0[134 * v16 + 19]);
        return;
      }

LABEL_31:
      sub_1002334C8(a1, 1);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_CFM not supposed to get a upgrade CFM from the central.");
      v10 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v20 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }
}

void sub_100235F34(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_9;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  if (*v5 == -1)
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_COMPLETE not tracking this device.");
      v7 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (a3)
    {
      v6 = *a2;
    }

    else
    {
      v6 = 0;
    }

    if (sub_10000C240())
    {
      v8 = *a1;
      v9 = sub_100233F18(v6);
      sub_10000AF54("Received UPGRADE_COMPLETE from lmhandle 0x%4x with %s", v8, v9);
      v10 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v11 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      for (i = qword_100BC9CB0; *i != a1; i += 134)
      {
        if (!--v11)
        {
          return;
        }
      }

      sub_1000CCE28(*(i + 4));
      sub_1000CBF60(*(i + 4), 10);
      if (v6)
      {
        *(i + 77) = 1;
        sub_1000B78F0(i);
LABEL_25:
        sub_10023362C(a1, v6);
        return;
      }

      if (sub_1000B78F0(i))
      {
        goto LABEL_25;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Received UPGRADE_COMPLETE but the transport isn't up yet. Waiting until transport is up.");
        v13 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_10000C0FC();
          *buf = 136446210;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

void sub_100236178(unsigned __int16 *a1, _BYTE *a2, int a3)
{
  v3 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_13;
  }

  v5 = &word_100BC9CB8;
  while (*(v5 - 1) != a1)
  {
    v5 += 536;
    if (!--v3)
    {
      goto LABEL_13;
    }
  }

  if (*v5 == -1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("UPGRADE_COMPLETE_CFM not tracking this device.");
      v11 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (a3 && (v6 = *a2, *a2))
    {
      if (sub_10000C240())
      {
        v7 = *a1;
        v8 = sub_100233F18(v6);
        sub_10000AF54("Received UPGRADE_COMPLETE_CFM from lmhandle 0x%4x with %s", v7, v8);
        v9 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v10 = 0;
    }

    else
    {
      if (sub_10000C240())
      {
        v12 = *a1;
        v13 = sub_100233F18(0);
        sub_10000AF54("Received UPGRADE_COMPLETE_CFM from lmhandle 0x%4x with %s", v12, v13);
        v14 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v6 = 0;
      v10 = 1;
    }

    if (dword_100BC9C74)
    {
      v15 = 0;
      v16 = 0;
      while (qword_100BC9CB0[v15] != a1)
      {
        ++v16;
        v15 += 134;
        if (134 * dword_100BC9C74 == v15)
        {
          return;
        }
      }

      v17 = &qword_100BC9CB0[v15];
      sub_1000CCE28(LOWORD(qword_100BC9CB0[v15 + 1]));
      sub_1000CBF60(*(v17 + 4), 6);
      sub_1000D4200(a1);
      sub_1000CCC34(v16, *(v17 + 77));
      *(v17 + 77) = 1;
      ++*(v17 + 50);
      ++*(v17 + 526);
      sub_100016250((v17 + 16));
      v18 = sub_1000B78F0(v17);
      if (v6 == 4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting upgraded connection due to remote transport error");
          v19 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1000D2538(v18, 19);
        goto LABEL_52;
      }

      sub_1000D29F4(a1, 1);
      if (v18)
      {
        sub_1000D4200(v18);
        if (*(v18 + 2))
        {
          v20 = 17;
        }

        else
        {
          v20 = 2;
        }

        if (qword_100BC9C78)
        {
          v21 = v10;
        }

        else
        {
          v21 = 0;
        }

        if (v21 != 1)
        {
          goto LABEL_52;
        }

        if (sub_1000B8B5C(v18))
        {
          (qword_100BC9C78)(a1, v20, v18 + 48, *(v18 + 278));
LABEL_52:
          v26 = 0u;
          v27 = 0u;
          LOBYTE(v26) = 1;
          WORD1(v26) = 4;
          DWORD2(v26) = 5;
          LOBYTE(v27) = 1;
          WORD1(v27) = 4;
          DWORD2(v27) = v6;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v26, 2u);
          return;
        }
      }

      else
      {
        if (qword_100BC9C78)
        {
          v22 = v10;
        }

        else
        {
          v22 = 0;
        }

        if ((v22 & 1) == 0)
        {
          goto LABEL_52;
        }

        v20 = 1;
      }

      if (sub_10000C240())
      {
        v23 = "Invalid";
        if (!v18)
        {
          v23 = "Empty";
        }

        sub_10000AF54("%s alternate handle for Peer %d, connectionHandle=%p, pipeID=0x%4x", v23, v16, *v17, *(v17 + 4));
        v24 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      (qword_100BC9C78)(a1, v20, 0, 0);
      goto LABEL_52;
    }
  }
}

uint64_t sub_1002365A8(unsigned __int16 *a1)
{
  if (sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE not supposed to get a downgrade from the peripheral.");
      v2 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v3 = a1;
    v4 = 2;
    return sub_100236DDC(v3, 32, v4);
  }

  v5 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_23;
  }

  v6 = qword_100BC9CB0;
  while (*v6 != a1)
  {
    v6 += 134;
    if (!--v5)
    {
      goto LABEL_23;
    }
  }

  v7 = *(v6 + 4);
  if (*(v6 + 10))
  {
    v8 = v6[2];
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE no alternate handle to downgrade from.");
      v9 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v8 = 0;
  }

  if (v7 == 0xFFFF)
  {
LABEL_23:
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE invalid handle for downgrade");
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v3 = a1;
    v4 = 1;
    return sub_100236DDC(v3, 32, v4);
  }

  v10 = dword_100BC9C74;
  if (!dword_100BC9C74)
  {
    goto LABEL_35;
  }

  v11 = &dword_100BC9CE0;
  while (*(v11 - 20) != v7)
  {
    v11 += 268;
    if (!--v10)
    {
      goto LABEL_35;
    }
  }

  if (*v11 == 6)
  {
    if ((sub_1000B8B5C(v8) || sub_1000C0E08(v8) || sub_1000ABD24(v8) || sub_1000B7994(v8)) && sub_1000CBF58(v8))
    {
      sub_1000CB7DC(v8);
      sub_1000CBF60(v7, 11);
      return sub_1002592C4(1, v8, sub_1002321C0);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Received DOWNGRADE from lmhandle 0x%4x", *a1);
      v19 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v21[0] = xmmword_1008A40A8;
    v21[1] = unk_1008A40B8;
    memcpy(buf, "state", sizeof(buf));
    sub_1000CC0B0("Magnet Operation", buf, v21, 2u);
    v16 = a1;
    v17 = 0;
    v18 = v8;
  }

  else
  {
LABEL_35:
    if (sub_10000C240())
    {
      v14 = sub_1000CC6B0(*(v6 + 12));
      sub_10000AF54("DOWNGRADE can't downgrade state isn't IDLE it's %s", v14);
      v15 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v16 = a1;
    v17 = 5;
    v18 = 0;
  }

  return sub_10023229C(v16, v17, v18);
}

void sub_10023693C(unsigned __int16 *a1)
{
  if (sub_1000B6E74(a1))
  {
    v2 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v3 = 0;
      v4 = qword_100BC9CB0;
      while (*v4 != a1)
      {
        ++v3;
        v4 += 134;
        if (dword_100BC9C74 == v3)
        {
          v5 = 0;
          LODWORD(v3) = dword_100BC9C74;
          goto LABEL_22;
        }
      }

      *(v4 + 21) = 1;
      v7 = &dword_100BC9CE0;
      while (*(v7 - 20) != *(v4 + 4))
      {
        v7 += 268;
        if (!--v2)
        {
          goto LABEL_18;
        }
      }

      if (*v7 == 6)
      {
        v5 = *(v4 + 29) == 0;
        goto LABEL_22;
      }

LABEL_18:
      if (sub_10000C240())
      {
        v8 = sub_1000CC6B0(*(v4 + 12));
        sub_10000AF54("DOWNGRADE_REQ not downgrading, state is %s", v8);
        v9 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v14 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v5 = 0;
    }

    else
    {
      LODWORD(v3) = 0;
      v5 = 0;
    }

LABEL_22:
    if (sub_10000C240())
    {
      v10 = "postponing";
      if (v5)
      {
        v10 = "accepting";
      }

      sub_10000AF54("Received DOWNGRADE_REQ from peer %d, %s", v3, v10);
      v11 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_10000C0FC();
        *buf = 136446210;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v5)
    {
      sub_1000CB3A0(a1, 32);
    }

    else if (v3 == dword_100BC9C74)
    {
      sub_1000D660C();
    }

    else
    {
      sub_100194DDC(3u, 0, v3);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE_REQ not supposed to get a downgrade request from the central.");
      v6 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v14 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_100236DDC(a1, 34, 2);
  }
}

void sub_100236BF8(unsigned int a1)
{
  if (sub_10000C240())
  {
    v2 = sub_100233F18(a1);
    sub_10000AF54("Remote side sent fatal %s", v2);
    v3 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v5 = sub_10000C0FC();
      v6 = 1024;
      v7 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    }
  }

  sub_1001BAA68(a1 + 5050, "TS Remote Error");
}

const char *sub_100236CAC(int a1)
{
  if (a1 > 18)
  {
    if (a1 <= 32)
    {
      switch(a1)
      {
        case 19:
          return "UPGRADE_COMPLETE";
        case 20:
          return "COMPLETE_CFM";
        case 32:
          return "DOWNGRADE";
      }
    }

    else if (a1 > 253)
    {
      if (a1 == 254)
      {
        return "FATAL_ERROR";
      }

      if (a1 == 255)
      {
        return "ERROR";
      }
    }

    else
    {
      if (a1 == 33)
      {
        return "DOWNGRADE_CFM";
      }

      if (a1 == 34)
      {
        return "DOWNGRADE_REQ";
      }
    }

    return "Unknown";
  }

  if (a1 <= 15)
  {
    switch(a1)
    {
      case 1:
        return "VERSION_IND";
      case 2:
        return "CAPS_IND";
      case 5:
        return "CAPS_CHANGED_IND";
    }

    return "Unknown";
  }

  if (a1 == 16)
  {
    return "UPGRADE_REQ";
  }

  if (a1 == 17)
  {
    return "UPGRADE";
  }

  return "UPGRADE_CFM";
}

uint64_t sub_100236DDC(__int128 *a1, char a2, char a3)
{
  v7 = 767;
  v8 = a2;
  v9 = a3;
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v4 = &word_100BC9CB8;
    while (*(v4 - 1) != a1)
    {
      v4 += 536;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v5 = *v4;
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFLL;
  }

  return sub_1000B7BFC(0, a1, v5, &v7, 4uLL, 0);
}

uint64_t sub_100236E5C(_BYTE *a1, unsigned int a2, void *a3, _DWORD *a4)
{
  *a4 = 0;
  *a3 = 0;
  v4 = *a1;
  if (!*a1)
  {
    return 3;
  }

  if (13 * v4 > a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid size, got %d, expected %d", a2, 13 * v4);
      v6 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 3;
  }

  v11 = sub_100007618(*a1 << 6, 0x10800401DCC41E5uLL);
  result = 1;
  if (v11)
  {
    v12 = 0;
    v13 = qword_100BC9C68 + 16;
    v14 = 1;
    while (1)
    {
      v15 = a1[v14];
      if (v14 + v15 > a2)
      {
        break;
      }

      v16 = &v11[64 * v12];
      *v16 = a1[v14 + 1];
      v17 = a1[v14 + 2];
      v16[1] = v17;
      v16[2] = a1[v14 + 3] != 0;
      v16[12] = a1[v14 + 4] != 0;
      v18 = a1[v14 + 5];
      *(v16 + 1) = v18;
      v19 = v18 | (a1[v14 + 6] << 8);
      *(v16 + 1) = v19;
      v20 = v19 | (a1[v14 + 7] << 16);
      *(v16 + 1) = v20;
      *(v16 + 1) = v20 | (a1[v14 + 8] << 24);
      LOWORD(v20) = a1[v14 + 9];
      *(v16 + 4) = v20;
      *(v16 + 4) = v20 | (a1[v14 + 10] << 8);
      LOWORD(v20) = a1[v14 + 11];
      *(v16 + 5) = v20;
      *(v16 + 5) = v20 | (a1[v14 + 12] << 8);
      v21 = byte_100BC9C70;
      v22 = v13;
      if (byte_100BC9C70)
      {
        while (*(v22 - 15) != v17)
        {
          v22 += 8;
          if (!--v21)
          {
            goto LABEL_15;
          }
        }

        v16[13] = 1;
        *(v16 + 2) = *v22;
      }

LABEL_15:
      v14 += 1 + v15;
      if (++v12 == v4)
      {
        goto LABEL_20;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("pos(%d) + transportSize(%d) > dataSize(%d)", v14, v15, a2);
      v23 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_20:
    result = 0;
    *a3 = v11;
    *a4 = v4;
  }

  return result;
}

void sub_1002370B4(int a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("_writeLeRemotePublicAddressCB:  %d", a1);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100237128(unsigned __int16 *a1, unsigned int a2, int a3)
{
  v5 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v6 = &word_100BC9CB8;
    while (*(v6 - 1) != a1)
    {
      v6 += 536;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v7 = *v6;
  }

  else
  {
LABEL_5:
    v7 = 0xFFFFLL;
  }

  __len[0] = 0;
  if (a2)
  {
    sub_1000CBF60(v7, 6);
LABEL_9:
    v8 = 0;
    v9 = 3;
    goto LABEL_10;
  }

  v12 = byte_100BC9C70;
  if (!byte_100BC9C70)
  {
    goto LABEL_9;
  }

  v13 = qword_100BC9C68;
  v9 = 3;
  while (*(v13 + 1) != a3)
  {
    v13 += 64;
    if (!--v12)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (*(v13 + 12) != 1)
  {
    goto LABEL_9;
  }

  v8 = (*(v13 + 56))(__len);
  v9 = __len[0] + 3;
LABEL_10:
  v10 = sub_100007618(v9, 0x99480D8FuLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 18;
    v10[1] = LOBYTE(__len[0]) + 1;
    v10[2] = a2;
    if (v8 && __len[0])
    {
      memmove(v10 + 3, v8, __len[0]);
    }

    else if (!v8)
    {
      goto LABEL_23;
    }

    sub_10000C1E8(v8);
LABEL_23:
    v14 = *a1;
    if (sub_10000C240())
    {
      v15 = sub_100233F18(a2);
      sub_10000AF54("Sending UPGRADE_CFM to lmhandle 0x%4x p:0x%4x with %s", v14, v7, v15);
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_10000C0FC();
        *&__len[1] = 136446210;
        *&__len[3] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", &__len[1], 0xCu);
      }
    }

    v18 = sub_1000B7BFC(0, a1, v7, v11, (__len[0] + 3), 0);
    if (v18 == 412 || !v18)
    {
      sub_1000CC6D4(v7, 0x61A8u);
    }

    v8 = v11;
    goto LABEL_30;
  }

  if (v8)
  {
LABEL_30:
    sub_10000C1E8(v8);
  }
}

uint64_t sub_100237368(int a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CB7DC(a2);
  v10 = byte_100BC9C70;
  if (byte_100BC9C70)
  {
    v11 = (qword_100BC9C68 + 40);
    while (*(v11 - 39) != a1)
    {
      v11 += 8;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    if (*v11 && !(*v11)(a2, a5, a3, a4, sub_10023743C, sub_100237570))
    {
      return 0;
    }
  }

LABEL_8:
  sub_1000D4200(a2);
  return 4;
}

void sub_10023743C(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v5 = a1;
  if (!sub_1000ABD24(a1))
  {
    v5 = 0;
  }

  if (sub_1000ABB80(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error : collision between external transport LMHandle and exiting connection : %d already in use", a2);
      v6 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (sub_1000ABB80(a2))
    {
      sub_1000D660C();
    }
  }

  else
  {
    if (a3)
    {
      v7 = 0;
    }

    else
    {
      v8 = sub_10025645C(v5);
      v7 = v8;
      if (v8)
      {
        *v8 = a2;
        v8[60] = 0;
        v9 = byte_100BC9C70;
        if (byte_100BC9C70)
        {
          v10 = (qword_100BC9C68 + 1);
          while (*v10 != 17)
          {
            v10 += 64;
            if (!--v9)
            {
              goto LABEL_12;
            }
          }

          *(v8 + 14) = *(v10 - 1);
        }
      }
    }

LABEL_12:

    sub_10023189C(v5, v7, a3, 1);
  }
}

void sub_100237570(int a1)
{
  v1 = sub_1000ABB80(a1);
  if (v1)
  {
    v2 = v1;
    sub_1000CDA54(v1, 0);

    sub_1000E12C4(v2);
  }

  else
  {

    sub_1000D660C();
  }
}

void sub_1002375D0(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v3 = &dword_100BC9CE0;
    while (*(v3 - 20) != v1)
    {
      v3 += 268;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *v3;
    v6 = *v3 + 4993;
    if (v4 - 7 >= 6)
    {
      v5 = 5014;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
    v5 = 5014;
  }

  if (sub_10000C240())
  {
    v7 = sub_1000CC6B0(v4);
    sub_10000AF54("Critical timeout elapsed during %s - disconnecting device, due to error %! on pipe ID 0x%2x", v7, v5, v1);
    v8 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v9 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v10 = &word_100BC9CB8;
    while (*v10 != v1)
    {
      v10 += 536;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    v11 = *(v10 - 1);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (off_100BC9CA0)
  {
    off_100BC9CA0(v11, 81, 1273, v5);
  }

  if (v11 && sub_1000ABD24(v11))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting device %x", v11);
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002CDF48(v11);
  }
}

uint64_t sub_100237758(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t, const char *))
{
  off_100BCDFB0 = 0;
  sub_10030511C();
  sub_100304588();
  if (a3)
  {
    v8 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Invoking customization callback\n";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    a3();
  }

  if (sub_1003047F4())
  {
    v9 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Support code initialization failed\n";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }
  }

  v10 = sub_1003045A0(0x30u);
  v11 = sub_1001BBB30(v10);
  if (v11)
  {
    v24 = v11;
    v25 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Memory Manager initialization failed\n";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    sub_1000C52F4(v24);
    goto LABEL_40;
  }

  sub_100304C58(0, a2);
  if ((sub_1001C3A3C(0) & 1) == 0)
  {
    v12 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Sniffer initialization failed\n";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }
  }

  v13 = sub_10023B4D0(0);
  if (v13)
  {
LABEL_40:
    v15 = v13;
    v26 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 136446210;
    v28 = "Device Manager initialization failed\n";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    goto LABEL_47;
  }

  v14 = sub_10022DC98();
  v15 = v14;
  if (!a1 && v14 == 109)
  {
    do
    {
      sub_10000C198();
      sub_1001BAECC(100);
      sub_1000031B0();
      v16 = sub_10022DD38();
    }

    while (v16 == 109);
    v15 = v16;
  }

  if (v15)
  {
    v17 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "Transport layer initialization failed\n";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    if (a4)
    {
      v18 = "Transport layer initialization failed";
LABEL_35:
      a4(v15, v18);
      return v15;
    }

    goto LABEL_47;
  }

  v19 = sub_10024D21C(0);
  if (v19)
  {
    v15 = v19;
    v26 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 136446210;
    v28 = "OI_HCIAPI_Init_Vars failed\n";
    goto LABEL_46;
  }

  v20 = sub_10029F820();
  if (v20)
  {
    v15 = v20;
    v26 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "BT VSC init failed\n";
      goto LABEL_46;
    }

LABEL_47:
    sub_1000C52F4(v15);
    goto LABEL_48;
  }

  if (a1)
  {
    off_100BCDFB0 = a1;
    v15 = sub_10024D5C8(sub_100237BF0);
    if (!v15)
    {
      return v15;
    }

LABEL_32:
    v22 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "HCI initialization failed\n";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s", &v27, 0xCu);
    }

    v18 = "HCI initialization failed";
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_48:
    sub_1001BAA68(v15, v18);
  }

  for (i = sub_10024D5C8(0); ; i = sub_10024D680())
  {
    v15 = i;
    if (i != 109)
    {
      break;
    }

    sub_10000C198();
    sub_1001BAECC(10);
    sub_1000031B0();
  }

  if (i)
  {
    goto LABEL_32;
  }

  sub_100237BF0(0);
  return v15;
}

void sub_100237BF0(NSObject *a1)
{
  if (a1)
  {
    v6 = a1;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "HCI initialization failed\n";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
    goto LABEL_23;
  }

  v1 = sub_1003059D4(0);
  if (v1)
  {
    v6 = v1;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "Policy Manager initialization failed\n";
    goto LABEL_22;
  }

  v2 = sub_100296410(0);
  if (v2)
  {
    v6 = v2;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "L2CAP initialization failed\n";
    goto LABEL_22;
  }

  v3 = sub_1002FC9C4();
  if (v3)
  {
    v6 = v3;
    v5 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v8 = 136446210;
    v9 = "Security Manager initialization failed\n";
    goto LABEL_22;
  }

  v4 = sub_1002D2784();
  if (v4)
  {
    v6 = v4;
    v5 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "LE GAP initialization failed\n";
      goto LABEL_22;
    }

LABEL_23:
    sub_1000C52F4(v6);
LABEL_24:
    if (v7)
    {
      v8 = 136446210;
      v9 = "SDP Server initialization failed\n";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
    }

    sub_1000C52F4(v5);
  }

  v5 = sub_1002FA134(0);
  v6 = sub_10000C050(0x5Cu);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    goto LABEL_24;
  }

  if (v7)
  {
    v8 = 136446210;
    v9 = "Stack initialization complete\n";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  if (off_100BCDFB0)
  {
    off_100BCDFB0(0);
  }
}

uint64_t sub_100237EAC()
{
  sub_10022DD58();
  sub_1002D2D48();
  sub_10029F06C();
  sub_100259790();
  sub_10022DD48();
  sub_1001BBB94();
  return 0;
}

BOOL sub_100237EDC(int a1, void *a2)
{
  HIDWORD(v6) = 0x100000;
  if (!a2)
  {
    sub_1000D660C();
  }

  LODWORD(v6) = a1;
  return *a2 == v6 && a2[1] == 0xFB349B5F80000080;
}

BOOL sub_100237F64(uint64_t a1, uint64_t a2)
{
  if (*a1 != 3 || *a2 != 3)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  if (v2 == 2)
  {
LABEL_6:
    v3 = *(a1 + 8);
    if (*(a2 + 2) == 16)
    {
      return sub_100237EDC(v3, *(a2 + 8));
    }

    return v3 == *(a2 + 8);
  }

  if (v2 != 16)
  {
    if (v2 == 4)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a2 + 2) != 16)
  {
    return sub_100237EDC(*(a2 + 8), *(a1 + 8));
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v7 = *v4;
  v6 = v4[1];
  v9 = *v5;
  v8 = v5[1];
  return v7 == v9 && v6 == v8;
}

uint64_t sub_100238000(uint64_t a1)
{
  v4 = xmmword_1008A3890;
  if (*a1 != 3)
  {
    return 0;
  }

  v1 = *(a1 + 2);
  if (v1 == 2)
  {
    return *(a1 + 8);
  }

  if (v1 != 16)
  {
    if (v1 == 4)
    {
      return *(a1 + 8);
    }

    return 0;
  }

  v3 = *(a1 + 8);
  LODWORD(v4) = *v3;
  if (*v3 == v4)
  {
    return *v3;
  }

  else
  {
    return 0;
  }
}

const char *sub_1002380B8(uint64_t a1)
{
  if (*a1 != 3)
  {
    sub_1000D660C();
  }

  if (*(a1 + 2) == 16)
  {
    v2 = *(a1 + 8);

    return sub_100302240(v2);
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_10030253C(v4);
  }
}

uint64_t sub_100238128(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = a2;
  if (*a2 == 32)
  {
    v4 = *(a2 + 1);
  }

  sub_1000BE324(a1, a3);
  sub_100062468(a1, "<");
  v6 = *(a1 + 4);
  switch(*v4)
  {
    case 0u:
      v7 = "null";
      goto LABEL_11;
    case 1u:
      v10 = "uint";
      goto LABEL_16;
    case 2u:
      v10 = "sint";
      goto LABEL_16;
    case 3u:
      v10 = "uuid";
LABEL_16:
      sub_100062468(a1, v10);
      sub_100307718(a1, 8 * *(v4 + 1));
      break;
    case 4u:
      v8 = "text";
      goto LABEL_21;
    case 5u:
      if (v4[8])
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

LABEL_11:
      sub_100062468(a1, v7);
      v9 = "/>\n";
      goto LABEL_67;
    case 6u:
      v8 = "seq";
      goto LABEL_21;
    case 7u:
      v8 = "alt";
      goto LABEL_21;
    case 8u:
      v8 = "url";
      goto LABEL_21;
    case 0x11u:
      v8 = "bdaddr";
      goto LABEL_21;
    case 0x12u:
      v8 = "rawbytes";
      goto LABEL_21;
    case 0x13u:
      v8 = "status";
      goto LABEL_21;
    case 0x14u:
      v8 = "text16";
LABEL_21:
      sub_100062468(a1, v8);
      break;
    default:
      break;
  }

  v11 = *(a1 + 4);
  sub_1002385E0(a1, v4);
  sub_100062468(a1, ">");
  v12 = *v4;
  if (v12 > 7)
  {
    if (*v4 > 0x11u)
    {
      switch(v12)
      {
        case 0x12u:
          sub_100238754(a1, *(v4 + 1), *(v4 + 1), (a3 + 4));
          break;
        case 0x13u:
LABEL_55:
          sub_100307718(a1, *(v4 + 2));
          goto LABEL_66;
        case 0x14u:
          sub_100238684(a1, *(v4 + 1), *(v4 + 1), (a3 + 4));
          break;
        default:
LABEL_56:
          sub_100062468(a1, "!!!Corrupt Data Element!!!");
          goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (v12 != 8)
    {
      if (v12 == 17)
      {
        for (i = 0; i != 6; ++i)
        {
          if (i)
          {
            sub_100062468(a1, ":");
          }

          sub_1000623D8(a1, *(*(v4 + 1) + i), 2);
        }

        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (*v4 <= 3u)
    {
      if (v12 - 1 < 2)
      {
        if (*(v4 + 1) >= 5u)
        {
          sub_100062468(a1, "0x");
          v13 = *(v4 + 1);
          if (*(v4 + 1) == 8)
          {
            sub_1000623D8(a1, *v13, 8);
            v14 = *(*(v4 + 1) + 4);
          }

          else
          {
            sub_1000623D8(a1, *v13, 8);
            sub_1000623D8(a1, *(*(v4 + 1) + 4), 8);
            sub_1000623D8(a1, *(*(v4 + 1) + 8), 8);
            v14 = *(*(v4 + 1) + 12);
          }

          v19 = a1;
          v18 = 8;
          goto LABEL_65;
        }

        if (v12 == 1)
        {
          sub_100062468(a1, "0x");
          v14 = *(v4 + 2);
          v17 = *(v4 + 1);
LABEL_54:
          v18 = 2 * v17;
          v19 = a1;
LABEL_65:
          sub_1000623D8(v19, v14, v18);
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      if (v12 == 3)
      {
        sub_100062468(a1, "0x");
        v17 = *(v4 + 1);
        if (v17 > 4)
        {
          sub_1000623D8(a1, **(v4 + 1), 8);
          sub_100062468(a1, ",");
          for (j = 0; j != 12; ++j)
          {
            sub_1000623D8(a1, *(*(v4 + 1) + j + 4), 2);
            if (j == 5 || (j & 0xD) == 1)
            {
              sub_100062468(a1, ",");
            }
          }

          goto LABEL_66;
        }

        v14 = *(v4 + 2);
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v12 - 6 < 2)
    {
      sub_100062468(a1, "\n");
      if (*(v4 + 1))
      {
        v15 = 0;
        do
        {
          sub_100238128(a1, (*(v4 + 1) + 16 * v15++), (a3 + 4));
        }

        while (*(v4 + 1) > v15);
      }

LABEL_51:
      sub_1000BE324(a1, a3);
      goto LABEL_66;
    }

    if (v12 != 4)
    {
      goto LABEL_56;
    }
  }

  sub_100307498(a1, *(v4 + 1), *(v4 + 1));
LABEL_66:
  sub_100062468(a1, "</");
  sub_100307498(a1, (*(a1 + 8) + v6), (v11 - v6));
  sub_100062468(a1, ">");
  v9 = "\n";
LABEL_67:

  return sub_100062468(a1, v9);
}

uint64_t sub_1002385E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 3)
  {
    if (*(a2 + 1) > 4u)
    {
      return 0;
    }

    v4 = sub_10030253C(*(a2 + 2));
  }

  else
  {
    if (v3 != 19)
    {
      return 0;
    }

    sub_1000CDD74(*(a2 + 2));
  }

  v5 = v4;
  if (v4)
  {
    sub_100062468(a1, " id=");
    sub_100062468(a1, v5);
    sub_100062468(a1, "");
    sub_100062468(a1, "\t");
    return 1;
  }

  return 0;
}

uint64_t sub_100238684(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_100062468(a1, "\n");
  sub_1000BE324(a1, a4);
  if (a3)
  {
    v8 = 0;
    do
    {
      if (v8 && (v8 & 0xF) == 0)
      {
        sub_100062468(a1, "\n");
        sub_1000BE324(a1, a4);
      }

      sub_1000623D8(a1, *(a2 + 2 * v8), 4);
      sub_1000BE324(a1, 1);
      ++v8;
    }

    while (a3 != v8);
  }

  return sub_100062468(a1, "\n");
}

uint64_t sub_100238754(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_100062468(a1, "\n");
  sub_1000BE324(a1, a4);
  if (a3)
  {
    v8 = 0;
    do
    {
      if (v8 && (v8 & 0x1F) == 0)
      {
        sub_100062468(a1, "\n");
        sub_1000BE324(a1, a4);
      }

      sub_1000623D8(a1, *(a2 + v8), 2);
      sub_1000BE324(a1, 1);
      ++v8;
    }

    while (a3 != v8);
  }

  return sub_100062468(a1, "\n");
}

uint64_t sub_100238824(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_100062468(a1, "|");
  if (*a2 == 32)
  {
    a2 = *(a2 + 1);
  }

  sub_1000BE324(a1, a3);
  v6 = "null";
  switch(*a2)
  {
    case 0u:
      goto LABEL_69;
    case 1u:
      v7 = "uint";
      goto LABEL_14;
    case 2u:
      v7 = "sint";
      goto LABEL_14;
    case 3u:
      v7 = "uuid";
LABEL_14:
      sub_100062468(a1, v7);
      sub_100307718(a1, 8 * *(a2 + 1));
      break;
    case 4u:
      v8 = "text";
      goto LABEL_19;
    case 5u:
      if (a2[8])
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      goto LABEL_69;
    case 6u:
      v8 = "seq";
      goto LABEL_19;
    case 7u:
      v8 = "alt";
      goto LABEL_19;
    case 8u:
      v8 = "url";
      goto LABEL_19;
    case 0x11u:
      v8 = "bdaddr";
      goto LABEL_19;
    case 0x12u:
      v8 = "rawbytes";
      goto LABEL_19;
    case 0x13u:
      v8 = "status";
      goto LABEL_19;
    case 0x14u:
      v8 = "text16";
LABEL_19:
      sub_100062468(a1, v8);
      break;
    default:
      break;
  }

  sub_1000BE324(a1, 3);
  v9 = sub_1002385E0(a1, a2);
  if (v9)
  {
    sub_100062468(a1, "(");
  }

  v10 = *a2;
  if (v10 > 7)
  {
    if (*a2 > 0x11u)
    {
      switch(v10)
      {
        case 0x12u:
          sub_100238754(a1, *(a2 + 1), *(a2 + 1), (a3 + 4));
          break;
        case 0x13u:
LABEL_55:
          sub_100307718(a1, *(a2 + 2));
          goto LABEL_66;
        case 0x14u:
          sub_100238684(a1, *(a2 + 1), *(a2 + 1), (a3 + 4));
          break;
        default:
LABEL_56:
          sub_100062468(a1, "!!!Corrupt Data Element!!!");
          goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (v10 != 8)
    {
      if (v10 == 17)
      {
        for (i = 0; i != 6; ++i)
        {
          if (i)
          {
            sub_100062468(a1, ":");
          }

          sub_1000623D8(a1, *(*(a2 + 1) + i), 2);
        }

        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (*a2 <= 3u)
    {
      if (v10 - 1 < 2)
      {
        if (*(a2 + 1) >= 5u)
        {
          sub_100062468(a1, "0x");
          v11 = *(a2 + 1);
          if (*(a2 + 1) == 8)
          {
            sub_1000623D8(a1, *v11, 8);
            v12 = *(*(a2 + 1) + 4);
          }

          else
          {
            sub_1000623D8(a1, *v11, 8);
            sub_1000623D8(a1, *(*(a2 + 1) + 4), 8);
            sub_1000623D8(a1, *(*(a2 + 1) + 8), 8);
            v12 = *(*(a2 + 1) + 12);
          }

          v17 = a1;
          v16 = 8;
          goto LABEL_65;
        }

        if (v10 == 1)
        {
          sub_100062468(a1, "0x");
          v12 = *(a2 + 2);
          v15 = *(a2 + 1);
LABEL_54:
          v16 = 2 * v15;
          v17 = a1;
LABEL_65:
          sub_1000623D8(v17, v12, v16);
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      if (v10 == 3)
      {
        sub_100062468(a1, "0x");
        v15 = *(a2 + 1);
        if (v15 > 4)
        {
          sub_1000623D8(a1, **(a2 + 1), 8);
          sub_100062468(a1, ",");
          for (j = 0; j != 12; ++j)
          {
            sub_1000623D8(a1, *(*(a2 + 1) + j + 4), 2);
            if (j == 5 || (j & 0xD) == 1)
            {
              sub_100062468(a1, ",");
            }
          }

          goto LABEL_66;
        }

        v12 = *(a2 + 2);
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v10 - 6 < 2)
    {
      sub_100062468(a1, "\n");
      if (*(a2 + 1))
      {
        v13 = 0;
        do
        {
          sub_100238824(a1, (*(a2 + 1) + 16 * v13++), (a3 + 4));
        }

        while (*(a2 + 1) > v13);
      }

LABEL_51:
      sub_1000BE324(a1, a3);
      goto LABEL_66;
    }

    if (v10 != 4)
    {
      goto LABEL_56;
    }
  }

  sub_100307498(a1, *(a2 + 1), *(a2 + 1));
LABEL_66:
  if (v9)
  {
    sub_100062468(a1, ")");
  }

  v6 = "\n";
LABEL_69:

  return sub_100062468(a1, v6);
}

void sub_100238CA8(unsigned __int8 *a1, char *__s)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = strlen(__s);
  sub_100307404(v8, (v4 + 1));
  sub_100062468(v8, "\n");
  v5 = strlen(__s);
  sub_100307498(v8, __s, v5);
  sub_100238824(v8, a1, 5);
  v6 = sub_10000C050(0x5Cu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100307920(v8);
    *buf = 136446210;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  sub_10030745C(v8);
}

uint64_t sub_100238DB8(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  ptr = xmmword_1008A43D8;
  v78 = 0;
  LOWORD(ptr) = 0;
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    p_ptr = &ptr;
LABEL_3:
    if (a2)
    {
      sub_1000D660C();
    }

    goto LABEL_5;
  }

  p_ptr = &ptr;
  while (1)
  {
    v12 = *a3;
    if (v12 == 32)
    {
      a3 = *(a3 + 1);
      v12 = *a3;
    }

    v13 = *(a3 + 1);
    if (v12 <= 5)
    {
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          if (v13 == 4)
          {
            if (*(a3 + 2) >= 0x10000u)
            {
              LODWORD(v13) = 4;
            }

            else
            {
              LODWORD(v13) = 2;
            }
          }
        }

        else if (v12 == 4)
        {
          goto LABEL_48;
        }
      }

      else if ((v12 - 1) >= 2)
      {
        if (!v12)
        {
          if (a2)
          {
            a2 = (a2 - 1);
          }

          else
          {
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 174, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_178:
              v73 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_180:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 174, v73);
            }

            if (v4 <= v5)
            {
              goto LABEL_178;
            }

            if (*(a1 + 14) != 2)
            {
              v73 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
              goto LABEL_180;
            }

            a2 = 0;
            v45 = *a1;
            *(a1 + 6) = v5 + 1;
            *(v45 + v5) = 0;
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

LABEL_56:
      if (a2 > v13)
      {
        a2 = (a2 + ~v13);
        goto LABEL_123;
      }

      if (v13 > 3)
      {
        if (v13 != 4)
        {
          if (v13 == 8)
          {
            if (a2)
            {
              v40 = (a2 - 1);
            }

            else
            {
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 222, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_189:
                v76 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_191:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 222, v76);
              }

              if (v4 <= v5)
              {
                goto LABEL_189;
              }

              if (*(a1 + 14) != 2)
              {
                v76 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_191;
              }

              v40 = 0;
              v46 = *a1;
              *(a1 + 6) = v5 + 1;
              *(v46 + v5) = (8 * v12) | 3;
            }

            v47 = sub_100239930(a1, v40, **(a3 + 1));
            v48 = *(*(a3 + 1) + 4);
          }

          else
          {
            if (v13 != 16)
            {
              goto LABEL_74;
            }

            if (a2)
            {
              v31 = (a2 - 1);
            }

            else
            {
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 234, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_185:
                v75 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_187:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 234, v75);
              }

              if (v4 <= v5)
              {
                goto LABEL_185;
              }

              if (*(a1 + 14) != 2)
              {
                v75 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_187;
              }

              v31 = 0;
              v49 = *a1;
              *(a1 + 6) = v5 + 1;
              *(v49 + v5) = (8 * v12) | 4;
              v12 = *a3;
            }

            v50 = *(a3 + 1);
            if (v12 == 3)
            {
              v51 = sub_100239930(a1, v31, *v50);
              if (v51 == -1)
              {
                goto LABEL_5;
              }

              v52 = v51;
              v53 = *(a1 + 6);
              LOWORD(v54) = *(a1 + 5) - v53;
              v55 = *a1;
              v56 = *(a3 + 1);
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 246, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
                v57 = 0;
              }

              else
              {
                v57 = *(a1 + 5) - v53;
              }

              v62 = (12 - v52);
              v63 = v54;
              if (v62 >= v54)
              {
                v54 = v54;
              }

              else
              {
                v54 = (12 - v52);
              }

              if (v57 < v54)
              {
                v74 = "ByteStream_NumReadBytesAvail(*ByteStream) >= ((((size) > (bytesAllowed)) ? (bytesAllowed) : (size)))";
LABEL_183:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 246, v74);
              }

              if (*(a1 + 14) != 2)
              {
                v74 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_183;
              }

              memmove((v55 + v53), (v56 + v52 + 4), v54);
              *(a1 + 6) += v54;
              if (v62 > v63)
              {
                goto LABEL_5;
              }

LABEL_83:
              a2 = 0;
              goto LABEL_123;
            }

            v58 = sub_100239930(a1, v31, *v50);
            v59 = sub_100239930(a1, v58, *(*(a3 + 1) + 4));
            v47 = sub_100239930(a1, v59, *(*(a3 + 1) + 8));
            v48 = *(*(a3 + 1) + 12);
          }

          v60 = sub_100239930(a1, v47, v48);
          if (v60 == -1)
          {
            goto LABEL_5;
          }

          a2 = v60;
          goto LABEL_123;
        }

        if (v6 < 5u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 215, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_154:
          v67 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_156:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 215, v67);
        }

        if (v4 <= v5)
        {
          goto LABEL_154;
        }

        if (*(a1 + 14) != 2)
        {
          v67 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_156;
        }

        v38 = *a1;
        *(a1 + 6) = v5 + 1;
        *(v38 + v5) = (8 * v12) | 2;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 216, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_158:
          v68 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 4";
LABEL_160:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 216, v68);
        }

        v39 = *(a1 + 6);
        if (*(a1 + 5) - v39 <= 3)
        {
          goto LABEL_158;
        }

        if (*(a1 + 14) != 2)
        {
          v68 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_160;
        }

        *(*a1 + v39 + 3) = *(a3 + 2);
        *(*a1 + *(a1 + 6) + 2) = BYTE1(*(a3 + 2));
        *(*a1 + *(a1 + 6) + 1) = *(a3 + 5);
        *(*a1 + *(a1 + 6)) = a3[11];
        v34 = *(a1 + 6) + 4;
LABEL_92:
        *(a1 + 6) = v34;
        goto LABEL_123;
      }

      if (v13 == 1)
      {
        if (v6 < 2u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 201, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_170:
          v71 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_172:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 201, v71);
        }

        if (v4 <= v5)
        {
          goto LABEL_170;
        }

        if (*(a1 + 14) != 2)
        {
          v71 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_172;
        }

        v41 = *a1;
        *(a1 + 6) = v5 + 1;
        *(v41 + v5) = 8 * v12;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 202, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_174:
          v72 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_176:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 202, v72);
        }

        v42 = *(a1 + 6);
        if (*(a1 + 5) <= v42)
        {
          goto LABEL_174;
        }

        if (*(a1 + 14) != 2)
        {
          v72 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_176;
        }

        v43 = *(a3 + 2);
        v44 = *a1;
        *(a1 + 6) = v42 + 1;
        *(v44 + v42) = v43;
        goto LABEL_123;
      }

      if (v13 == 2)
      {
        if (v6 < 3u)
        {
          goto LABEL_5;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 208, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_162:
          v69 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
LABEL_164:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 208, v69);
        }

        if (v4 <= v5)
        {
          goto LABEL_162;
        }

        if (*(a1 + 14) != 2)
        {
          v69 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_164;
        }

        v32 = *a1;
        *(a1 + 6) = v5 + 1;
        *(v32 + v5) = (8 * v12) | 1;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 209, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_166:
          v70 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
LABEL_168:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 209, v70);
        }

        v33 = *(a1 + 6);
        if (*(a1 + 5) - v33 <= 1)
        {
          goto LABEL_166;
        }

        if (*(a1 + 14) != 2)
        {
          v70 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_168;
        }

        *(*a1 + v33 + 1) = *(a3 + 2);
        *(*a1 + *(a1 + 6)) = BYTE1(*(a3 + 2));
        v34 = *(a1 + 6) + 2;
        goto LABEL_92;
      }

LABEL_74:
      sub_1000D660C();
      goto LABEL_123;
    }

    if (v12 > 16)
    {
      if ((v12 - 17) < 2)
      {
        goto LABEL_48;
      }

      if (v12 != 19)
      {
        if (v12 == 20)
        {
          v14 = sub_100239A2C(a1, a2, 2 * v13, 20);
          if (v14 == -1)
          {
            goto LABEL_5;
          }

          a2 = v14;
          if (v13)
          {
            v15 = 0;
            v16 = *(a1 + 6);
            v17 = *(a1 + 5) - v16;
            while (1)
            {
              if (a2)
              {
                a2 = (a2 - 2);
              }

              else
              {
                if (v17 < 2u)
                {
                  goto LABEL_5;
                }

                if (*(a1 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 301, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
LABEL_147:
                  v65 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
LABEL_149:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 301, v65);
                }

                if (*(a1 + 5) - v16 <= 1)
                {
                  goto LABEL_147;
                }

                if (*(a1 + 14) != 2)
                {
                  v65 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_149;
                }

                a2 = 0;
                *(*a1 + v16 + 1) = *(*(a3 + 1) + v15);
                *(*a1 + *(a1 + 6)) = *(*(a3 + 1) + v15 + 1);
                v16 = *(a1 + 6) + 2;
                *(a1 + 6) = v16;
                v17 -= 2;
              }

              v15 += 2;
              if (2 * v13 == v15)
              {
                goto LABEL_123;
              }
            }
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

      goto LABEL_56;
    }

    if ((v12 - 6) >= 2)
    {
      break;
    }

    v18 = sub_100239CA8(a3);
    if (!v18)
    {
      goto LABEL_5;
    }

    v19 = v18 - 2;
    if (((v18 - 2) & 0xFF00) != 0)
    {
      v19 = v18 - 3;
    }

    v20 = v19;
    v21 = sub_100239A2C(a1, a2, v19, *a3);
    if (v21 == -1)
    {
      goto LABEL_5;
    }

    a2 = v21;
    if (v21 >= v20)
    {
      a2 = v21 - v20;
      goto LABEL_123;
    }

    if (!*(a3 + 1) || !*(a3 + 1))
    {
      goto LABEL_123;
    }

    v22 = sub_100007618(0x18uLL, 0x1060040EB5A7A7CuLL);
    if (!v22)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("MarshalElement: %!", 106);
        v64 = sub_10000C050(0x2Bu);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100813FF0();
        }
      }

LABEL_5:
      if (p_ptr != &ptr)
      {
        do
        {
          v8 = *(p_ptr + 2);
          sub_10000C1E8(p_ptr);
          p_ptr = v8;
        }

        while (v8 != &ptr);
      }

      return 0xFFFFFFFFLL;
    }

    *(p_ptr + 1) = a3;
    *(v22 + 2) = p_ptr;
    v23 = *(a3 + 1);
    *v22 = v23;
    a3 = *(a3 + 1);
    p_ptr = v22;
LABEL_131:
    *p_ptr = v23 - 1;
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    v6 = v4 - v5;
    if (v4 == v5)
    {
      goto LABEL_3;
    }
  }

  if (v12 != 8)
  {
    goto LABEL_74;
  }

LABEL_48:
  v24 = sub_100239A2C(a1, a2, *(a3 + 1), v12);
  if (v24 == -1)
  {
    goto LABEL_5;
  }

  v25 = v24;
  a2 = v24 - v13;
  if (v24 < v13)
  {
    v26 = *(a1 + 6);
    LOWORD(v27) = *(a1 + 5) - v26;
    v28 = *a1;
    v29 = *(a3 + 1);
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 278, "int32_t MarshalElement(OI_BYTE_STREAM *, int32_t, const OI_DATAELEM *)");
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 5) - v26;
    }

    v35 = v13 - v25;
    v36 = (v13 - v25);
    v37 = v27;
    if (v27 >= v35)
    {
      v27 = v36;
    }

    else
    {
      v27 = v27;
    }

    if (v30 < v27)
    {
      v66 = "ByteStream_NumReadBytesAvail(*ByteStream) >= ((((size) > (bytesAllowed)) ? (bytesAllowed) : (size)))";
    }

    else
    {
      if (*(a1 + 14) == 2)
      {
        memmove((v28 + v26), (v29 + v25), v27);
        *(a1 + 6) += v27;
        if (v37 < v36)
        {
          goto LABEL_5;
        }

        goto LABEL_83;
      }

      v66 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 278, v66);
  }

LABEL_123:
  if (p_ptr != &ptr)
  {
    if (*p_ptr)
    {
      a3 += 16;
    }

    else
    {
      while (1)
      {
        v61 = p_ptr;
        p_ptr = *(p_ptr + 2);
        sub_10000C1E8(v61);
        if (p_ptr == &ptr)
        {
          break;
        }

        if (*p_ptr)
        {
          a3 = (*(p_ptr + 1) + 16);
          break;
        }
      }
    }
  }

  if (p_ptr != &ptr)
  {
    v23 = *p_ptr;
    goto LABEL_131;
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1000D660C();
  }

  return a2;
}

uint64_t sub_100239930(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 != -1)
  {
    if (a2 >= 4)
    {
      return (a2 - 4);
    }

    v3 = *(a1 + 12);
    v4 = *(a1 + 10) - v3;
    if ((v4 & 0xFFFC) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 119, "int32_t MarshalUINT32(OI_BYTE_STREAM *, int32_t, uint32_t)");
    }

    else if (v4 > 3)
    {
      if (*(a1 + 14) == 2)
      {
        *(*a1 + v3 + 3) = a3;
        *(*a1 + *(a1 + 12) + 2) = BYTE1(a3);
        *(*a1 + *(a1 + 12) + 1) = BYTE2(a3);
        *(*a1 + *(a1 + 12)) = HIBYTE(a3);
        *(a1 + 12) += 4;
        return a2;
      }

      v6 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_14:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 119, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 4";
    goto LABEL_14;
  }

  return a2;
}

uint64_t sub_100239A2C(uint64_t *a1, int a2, unsigned int a3, char a4)
{
  if (a3 > 0xFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 6);
  v7 = *(a1 + 5) - v6;
  if (a3 < 0x100)
  {
    if ((v7 & 0xFFFE) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2)
    {
      v4 = (a2 - 2);
      if (a2 - 2 >= 0)
      {
        return v4;
      }

      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 91, "int32_t MarshalVarSizeDescriptor(OI_BYTE_STREAM *, int32_t, uint32_t, uint8_t)");
    }

    else if (v7 > 0)
    {
      if (*(a1 + 14) == 2)
      {
        v8 = *a1;
        *(a1 + 6) = v6 + 1;
        *(v8 + v6) = (8 * a4) | 5;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 92, "int32_t MarshalVarSizeDescriptor(OI_BYTE_STREAM *, int32_t, uint32_t, uint8_t)");
        }

        else
        {
          v9 = *(a1 + 6);
          if (*(a1 + 5) > v9)
          {
            if (*(a1 + 14) == 2)
            {
              v4 = 0;
              v10 = *a1;
              *(a1 + 6) = v9 + 1;
              *(v10 + v9) = a3;
              return v4;
            }

            v14 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 92, v14);
          }
        }

        v14 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
        goto LABEL_34;
      }

      v13 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 91, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
    goto LABEL_30;
  }

  if ((*(a1 + 5) - v6) >= 3u)
  {
    if (a2)
    {
      v4 = (a2 - 3);
      if (a2 - 3 >= 0)
      {
        return v4;
      }

      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 78, "int32_t MarshalVarSizeDescriptor(OI_BYTE_STREAM *, int32_t, uint32_t, uint8_t)");
    }

    else if (v7 > 0)
    {
      if (*(a1 + 14) == 2)
      {
        v11 = *a1;
        *(a1 + 6) = v6 + 1;
        *(v11 + v6) = (8 * a4) | 6;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 79, "int32_t MarshalVarSizeDescriptor(OI_BYTE_STREAM *, int32_t, uint32_t, uint8_t)");
        }

        else
        {
          v12 = *(a1 + 6);
          if (*(a1 + 5) - v12 > 1)
          {
            if (*(a1 + 14) == 2)
            {
              v4 = 0;
              *(*a1 + v12 + 1) = a3;
              *(*a1 + *(a1 + 6)) = BYTE1(a3);
              *(a1 + 6) += 2;
              return v4;
            }

            v16 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 79, v16);
          }
        }

        v16 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 2";
        goto LABEL_42;
      }

      v15 = "(*ByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 78, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(*ByteStream) >= 1";
    goto LABEL_38;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100239CA8(unsigned __int8 *a1)
{
  ptr = xmmword_1008A43D8;
  v20 = 0;
  v2 = 1;
  for (i = &ptr; ; v2 = *i)
  {
    *i = v2 - 1;
    v4 = *(i + 1) + 1;
    *(i + 1) = v4;
    v5 = *a1;
    if (v5 == 32)
    {
      a1 = *(a1 + 1);
      v5 = *a1;
    }

    v6 = *(a1 + 1);
    if (v5 <= 5)
    {
      if (v5 <= 2)
      {
        if ((v5 - 1) < 2)
        {
          goto LABEL_32;
        }

        if (!v5)
        {
          goto LABEL_34;
        }

LABEL_45:
        sub_1000D660C();
        goto LABEL_34;
      }

      if (v5 == 3)
      {
        if (v6 == 4)
        {
          if (*(a1 + 2) >= 0x10000u)
          {
            LOWORD(v6) = 4;
          }

          else
          {
            LOWORD(v6) = 2;
          }
        }
      }

      else if (v5 == 4)
      {
LABEL_23:
        v7 = v6 + v4;
LABEL_24:
        if (v6 <= 0xFF)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        v10 = v7 + v9;
LABEL_33:
        *(i + 1) = v10;
        goto LABEL_34;
      }

LABEL_32:
      v10 = v6 + v4;
      goto LABEL_33;
    }

    if (v5 > 16)
    {
      if ((v5 - 17) < 2)
      {
        goto LABEL_23;
      }

      if (v5 == 19)
      {
        goto LABEL_32;
      }

      if (v5 == 20)
      {
        v7 = v4 + 2 * v6;
        goto LABEL_24;
      }

      goto LABEL_45;
    }

    if ((v5 - 6) >= 2)
    {
      if (v5 == 8)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }

    if (*(a1 + 1) && *(a1 + 1))
    {
      break;
    }

LABEL_34:
    if (i != &ptr)
    {
      if (*i)
      {
        a1 += 16;
      }

      else
      {
        while (1)
        {
          v11 = i;
          v12 = *(i + 1);
          v13 = v12 <= 0xFF ? 1 : 2;
          v14 = v13 + v12;
          *(i + 1) = v14;
          i = *(i + 2);
          *(i + 1) += v14;
          sub_10000C1E8(v11);
          if (i == &ptr)
          {
            break;
          }

          if (*i)
          {
            a1 = (*(i + 1) + 16);
            break;
          }
        }
      }
    }

    if (i == &ptr)
    {
      return WORD1(ptr);
    }

LABEL_44:
    ;
  }

  v8 = sub_100007618(0x18uLL, 0x1060040EB5A7A7CuLL);
  if (v8)
  {
    *(i + 1) = a1;
    *(v8 + 2) = i;
    *v8 = *(a1 + 1);
    a1 = *(a1 + 1);
    i = v8;
    goto LABEL_44;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_DataElement_MarshalledSize: %!", 106);
    v16 = sub_10000C050(0x2Bu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10000C0FC();
      *buf = 136446466;
      v22 = v18;
      v23 = 1024;
      v24 = 106;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    }
  }

  if (i != &ptr)
  {
    do
    {
      v17 = *(i + 2);
      sub_10000C1E8(i);
      i = v17;
    }

    while (v17 != &ptr);
  }

  return 0;
}

BOOL sub_100239FBC(uint64_t *a1, _WORD *a2, unsigned __int8 *a3)
{
  v4 = sub_100238DB8(a1, *a2, a3);
  if (v4 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return v4 != -1;
}

uint64_t sub_100239FF8(uint64_t *a1, _BYTE *a2, _WORD *a3)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 782, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *(a1 + 6);
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 782, "OI_STATUS OI_DataElement_Peek(OI_BYTE_STREAM *, uint8_t *, uint16_t *)");
LABEL_8:
    *(a1 + 15) = 1;
    result = 843;
    goto LABEL_9;
  }

  if (*(a1 + 5) <= v4)
  {
    goto LABEL_8;
  }

  v6 = *a1;
  *(a1 + 6) = v4 + 1;
  v7 = *(v6 + v4);
  *a2 = v7 >> 3;
  if (a3)
  {
    if (v7 >= 8)
    {
      v10 = sub_10023A120(a1, v7 & 7);
      *a3 = v10;
      v8 = v10 - v4 + *(a1 + 6);
      if (v8 >= 0x10000)
      {
        return 808;
      }
    }

    else
    {
      LOWORD(v8) = 1;
    }

    *a3 = v8;
  }

  if (*(a1 + 15))
  {
    result = 843;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  if (v4 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 806, "(size_t)(pos) <= (size_t)((*ByteStream).__size)");
  }

  *(a1 + 6) = v4;
  return result;
}

uint64_t sub_10023A120(uint64_t *a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        return 16;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 589, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (!*(a1 + 15))
      {
        v9 = *(a1 + 6);
        if (*(a1 + 5) > v9)
        {
          v10 = *a1;
          *(a1 + 6) = v9 + 1;
          return *(v10 + v9);
        }

LABEL_25:
        result = 0;
        *(a1 + 15) = 1;
        return result;
      }

      v6 = 589;
LABEL_24:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", v6, "uint16_t UnmarshalElementSize(OI_BYTE_STREAM *, uint8_t)");
      goto LABEL_25;
    }

    if (a2 == 6)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 596, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        v6 = 596;
        goto LABEL_24;
      }

      v7 = *(a1 + 6);
      if (*(a1 + 5) - v7 < 2)
      {
        goto LABEL_25;
      }

      result = bswap32(*(*a1 + v7)) >> 16;
      v8 = v7 + 2;
    }

    else
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 603, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        v6 = 603;
        goto LABEL_24;
      }

      v11 = *(a1 + 6);
      if (*(a1 + 5) - v11 < 4)
      {
        goto LABEL_25;
      }

      result = bswap32(*(*a1 + v11 + 2)) >> 16;
      v8 = v11 + 4;
    }

    *(a1 + 6) = v8;
    return result;
  }

  if (a2 == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a2 <= 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10023A2F0(uint64_t a1, _WORD *a2, _WORD *a3)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 818, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 818, "OI_STATUS OI_DataElement_UnmarshallListHeader(OI_BYTE_STREAM *, uint16_t *, uint16_t *)");
LABEL_10:
    *(a1 + 15) = 1;
    return 843;
  }

  v4 = *(a1 + 12);
  if (*(a1 + 10) <= v4)
  {
    goto LABEL_10;
  }

  v5 = *a1;
  *(a1 + 12) = v4 + 1;
  v6 = *(v5 + v4);
  if ((v6 & 0xF0) != 0x30)
  {
    return 808;
  }

  v7 = v6 & 7;
  if ((v7 - 5) > 2)
  {
    return 808;
  }

  *a2 = 0x500030002uLL >> (16 * (v7 - 5));
  *a3 = sub_10023A120(a1, v7);
  if (*(a1 + 15))
  {
    return 843;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10023A3E8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = "UnmarshalListElement corrupt data element";
  v7 = a2;
  while (2)
  {
    while (2)
    {
      if (*v7 == 33)
      {
        v7 = *(v7 + 8);
        goto LABEL_174;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 873, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 873, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
        goto LABEL_188;
      }

      v8 = *(a1 + 10);
      v9 = *(a1 + 12);
      if (v8 <= v9)
      {
LABEL_188:
        *(a1 + 15) = 1;
        return 808;
      }

      v10 = *a1;
      v11 = v9 + 1;
      *(a1 + 12) = v9 + 1;
      v12 = *(v10 + v9);
      v13 = v12 >> 3;
      *v7 = *(v10 + v9) >> 3;
      if (!v12)
      {
        *(v7 + 2) = 0;
        goto LABEL_174;
      }

      if ((a3 & 1) == 0 && (v13 - 21) >= 0xFFFFFFFC)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Reserved BHAPI Desc Rxed, discarded: %2x\n", v12);
          v83 = sub_10000C050(0x2Bu);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_200;
          }
        }

        return 808;
      }

      v14 = v12 & 7;
      if (v12 >> 3 <= 3)
      {
        if ((v13 - 1) < 2)
        {
          goto LABEL_27;
        }

        if (v13)
        {
          if (v13 == 3)
          {
            v15 = (v12 & 7) == 0 || v14 == 3;
            if (v15)
            {
              return 808;
            }

            goto LABEL_27;
          }

          goto LABEL_198;
        }

LABEL_57:
        if ((v12 & 7) != 0)
        {
          return 808;
        }

LABEL_58:
        if (v8 <= v11)
        {
          v26 = 0;
          *(a1 + 15) = 1;
        }

        else
        {
          *(a1 + 12) = v9 + 2;
          v26 = *(v10 + v11);
        }

        *(v7 + 8) = v26;
        *(v7 + 2) = 1;
        goto LABEL_173;
      }

      if (v13 > 0x14)
      {
        goto LABEL_198;
      }

      if (((1 << v13) & 0x1601D0) == 0)
      {
        if (v13 != 5)
        {
          if (v13 == 19)
          {
LABEL_27:
            if (v14 > 4)
            {
              return 808;
            }

            goto LABEL_28;
          }

LABEL_198:
          if (sub_10000C240())
          {
            sub_10000AF54("Reserved Elem Desc Rxed, discarded: %2x\n", v12);
            v85 = sub_10000C050(0x2Bu);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_200;
            }
          }

          return 808;
        }

        goto LABEL_57;
      }

      if (v14 < 5)
      {
        return 808;
      }

LABEL_28:
      if ((v12 & 7) <= 2)
      {
        if ((v12 & 7) != 0)
        {
          v16 = v8 - v11;
          if (v14 == 1)
          {
            if (v16 < 2)
            {
              v17 = 0;
              *(a1 + 15) = 1;
            }

            else
            {
              v17 = __rev16(*(v10 + v11));
              *(a1 + 12) = v9 + 3;
            }

            *(v7 + 8) = v17;
            *(v7 + 2) = 2;
          }

          else
          {
            if (v16 < 4)
            {
              v27 = 0;
              *(a1 + 15) = 1;
            }

            else
            {
              v27 = bswap32(*(v10 + v11));
              *(a1 + 12) = v9 + 5;
            }

            *(v7 + 8) = v27;
            *(v7 + 2) = 4;
          }

          goto LABEL_173;
        }

        goto LABEL_58;
      }

      if (v14 - 5 >= 3)
      {
        if (v14 == 3)
        {
          v24 = sub_100007618(8uLL, 0x100004000313F17uLL);
          *(v7 + 8) = v24;
          if (!v24)
          {
            return 106;
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 988, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 988, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
            v25 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v25 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 989, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }
          }

          else
          {
            v51 = *(a1 + 12);
            if (*(a1 + 10) - v51 > 3)
            {
              *v24 = bswap32(*(*a1 + v51));
              *(a1 + 12) = v51 + 4;
              if (*(a1 + 10) - (v51 + 4) >= 4)
              {
                *(*(v7 + 8) + 4) = bswap32(*(*a1 + (v51 + 4)));
                *(a1 + 12) = v51 + 8;
LABEL_148:
                v75 = 8;
LABEL_172:
                *(v7 + 2) = v75;
                goto LABEL_173;
              }

LABEL_147:
              *(a1 + 15) = 1;
              goto LABEL_148;
            }

            *(a1 + 15) = 1;
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 989, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
          goto LABEL_147;
        }

        v32 = sub_100007618(0x10uLL, 0x1000040451B5BE8uLL);
        *(v7 + 8) = v32;
        if (v13 == 3)
        {
          if (!v32)
          {
            return 106;
          }

          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 998, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 998, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
            v33 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v33 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 999, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_164;
          }

          v67 = *(a1 + 12);
          if (*(a1 + 10) - v67 <= 3)
          {
            *(a1 + 15) = 1;
LABEL_164:
            v78 = 999;
LABEL_169:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", v78, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
            goto LABEL_170;
          }

          v68 = *a1;
          *v32 = bswap32(*(*a1 + v67));
          v69 = v67 + 4;
          *(a1 + 12) = v67 + 4;
          if (*(a1 + 10) - (v67 + 4) >= 0xC)
          {
            v70 = 0;
            v71 = *(v7 + 8);
            v72 = v68 + v69;
            do
            {
              *(v71 + 4 + v70) = *(v72 + v70);
              ++v70;
            }

            while (v70 != 12);
            v73 = *(a1 + 12) + 12;
            goto LABEL_139;
          }

          goto LABEL_170;
        }

        if (!v32)
        {
          return 106;
        }

        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1006, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1006, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
          v42 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v42 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1007, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
          }
        }

        else
        {
          v74 = *(a1 + 12);
          if (*(a1 + 10) - v74 > 3)
          {
            *v32 = bswap32(*(*a1 + v74));
            *(a1 + 12) = v74 + 4;
            if (*(a1 + 10) - (v74 + 4) > 3)
            {
              *(*(v7 + 8) + 4) = bswap32(*(*a1 + (v74 + 4)));
              *(a1 + 12) = v74 + 8;
              if (*(a1 + 10) - (v74 + 8) > 3)
              {
                *(*(v7 + 8) + 8) = bswap32(*(*a1 + (v74 + 8)));
                *(a1 + 12) = v74 + 12;
                if (*(a1 + 10) - (v74 + 12) >= 4)
                {
                  *(*(v7 + 8) + 12) = bswap32(*(*a1 + (v74 + 12)));
                  v73 = v74 + 16;
LABEL_139:
                  *(a1 + 12) = v73;
LABEL_171:
                  v75 = 16;
                  goto LABEL_172;
                }

LABEL_170:
                *(a1 + 15) = 1;
                goto LABEL_171;
              }

              *(a1 + 15) = 1;
LABEL_168:
              v78 = 1009;
              goto LABEL_169;
            }

            *(a1 + 15) = 1;
LABEL_167:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1008, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
            v80 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v80 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1009, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_168;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1007, "OI_STATUS UnmarshalElement(OI_BYTE_STREAM *, OI_DATAELEM *, _Bool)");
        v79 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v79 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 1008, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_167;
      }

      v18 = 808;
      if (v13 <= 7)
      {
        if ((v13 - 6) >= 2)
        {
          if (v13 != 4)
          {
            return v18;
          }

LABEL_90:
          v43 = sub_10023A120(a1, v14);
          *(v7 + 2) = v43;
          if (*(a1 + 15))
          {
            return v18;
          }

          v44 = sub_100007618(v43 + 2, 0x100004077774924uLL);
          *(v7 + 8) = v44;
          if (v44)
          {
            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 694, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
            }

            v45 = v44;
            v46 = *a1;
            v47 = *(a1 + 12);
            v48 = *(v7 + 2);
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 694, "OI_STATUS UnmarshalTextElement(OI_BYTE_STREAM *, uint8_t, OI_DATAELEM *)");
              v49 = 0;
            }

            else
            {
              v49 = *(a1 + 10) - v47;
            }

            v50 = *(v7 + 2);
            if (v49 >= v50)
            {
              if (v48)
              {
                v64 = (v46 + v47);
                v65 = &v45[v48];
                do
                {
                  v66 = *v64++;
                  *v45++ = v66;
                }

                while (v45 < v65);
                v50 = *(v7 + 2);
              }

              *(a1 + 12) += v50;
            }

            else
            {
              *(a1 + 15) = 1;
            }

            *(*(v7 + 8) + v50) = 0;
            *(*(v7 + 8) + *(v7 + 2) + 1) = 0;
            if (!*(a1 + 15))
            {
              goto LABEL_174;
            }

            return 808;
          }

          return 106;
        }

        v28 = sub_10023A120(a1, v14);
        if (*(a1 + 15))
        {
          if (sub_10000C240())
          {
            v29 = v6;
            sub_10000AF54(v6);
            v30 = sub_10000C050(0x2Bu);
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
LABEL_68:
              v31 = 0;
              v6 = v29;
              goto LABEL_180;
            }

LABEL_186:
            v81 = sub_10000C0FC();
            *buf = 136446466;
            v88 = v81;
            v89 = 1024;
            v90 = 808;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            goto LABEL_68;
          }

          v31 = 0;
        }

        else
        {
          *(v7 + 2) = 0;
          *(v7 + 8) = 0;
          if (v28)
          {
            v52 = *(a1 + 12);
            v86 = v28;
            v53 = v52 + v28;
            if (v52 >= (v52 + v28))
            {
              v54 = 0;
              v56 = *(a1 + 12);
            }

            else
            {
              v54 = 0;
              v55 = 0;
              v56 = *(a1 + 12);
              do
              {
                if (*(a1 + 15))
                {
                  break;
                }

                if (*(a1 + 14) != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 645, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
                }

                if (*(a1 + 10) <= v56)
                {
                  *(a1 + 15) = 1;
                }

                else
                {
                  v57 = *a1;
                  v58 = v56++;
                  *(a1 + 12) = v56;
                  v55 = *(v57 + v58);
                }

                if (v55)
                {
                  v59 = sub_10023A120(a1, v55 & 7);
                  if (*(a1 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 648, "uint16_t CountListElements(OI_BYTE_STREAM *, uint16_t)");
                    v60 = 0;
                  }

                  else
                  {
                    v60 = *(a1 + 10) - *(a1 + 12);
                  }

                  if (v60 >= v59)
                  {
                    v56 = *(a1 + 12) + v59;
                    *(a1 + 12) = v56;
                  }

                  else
                  {
                    *(a1 + 15) = 1;
                    v56 = *(a1 + 12);
                  }
                }

                ++v54;
              }

              while (v56 < v53);
            }

            v6 = "UnmarshalListElement corrupt data element";
            if (v56 != v53)
            {
              *(a1 + 15) = 1;
            }

            if (v52 > *(a1 + 10))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 665, "(size_t)(startPos) <= (size_t)((*ByteStream).__size)");
            }

            *(a1 + 12) = v52;
            if (*(a1 + 15) || !v54)
            {
              if (sub_10000C240())
              {
                v29 = "UnmarshalListElement corrupt data element";
                sub_10000AF54("UnmarshalListElement corrupt data element");
                v30 = sub_10000C050(0x2Bu);
                v18 = 808;
                if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_68;
                }

                goto LABEL_186;
              }

              v31 = 0;
              v18 = 808;
            }

            else
            {
              v76 = sub_1001BBBD8(16 * v54 + 16, 0x10F2040C8FBA5E1uLL);
              if (v76)
              {
                v18 = 0;
                v77 = &v76[16 * v54];
                *v77 = 33;
                *(v77 + 1) = v86;
                *(v77 + 1) = v7;
                *(v7 + 2) = v54;
                *(v7 + 8) = v76;
                v31 = 1;
              }

              else
              {
                v31 = 0;
                v18 = 106;
              }
            }
          }

          else
          {
            v18 = 0;
            v31 = 1;
          }
        }

LABEL_180:
        if (*(v7 + 2))
        {
          v7 = *(v7 + 8);
          if (v31)
          {
            continue;
          }
        }

        else if (v31)
        {
          goto LABEL_173;
        }

        return v18;
      }

      break;
    }

    if ((v13 - 17) < 2)
    {
      v34 = sub_10023A120(a1, v14);
      *(v7 + 2) = v34;
      if (*(a1 + 15))
      {
        return v18;
      }

      v35 = sub_100007618(v34, 0x100004077774924uLL);
      *(v7 + 8) = v35;
      if (!v35)
      {
        return 106;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 762, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      v36 = v35;
      v37 = *a1;
      v38 = *(a1 + 12);
      v39 = *(v7 + 2);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 762, "OI_STATUS UnmarshalRawBytesElement(OI_BYTE_STREAM *, uint8_t, OI_DATAELEM *)");
        v40 = 0;
      }

      else
      {
        v40 = *(a1 + 10) - v38;
      }

      v41 = *(v7 + 2);
      if (v40 >= v41)
      {
        if (v39)
        {
          v61 = (v37 + v38);
          v62 = &v36[v39];
          do
          {
            v63 = *v61++;
            *v36++ = v63;
          }

          while (v36 < v62);
          LOWORD(v41) = *(v7 + 2);
        }

        *(a1 + 12) += v41;
        if (!*(a1 + 15))
        {
          goto LABEL_174;
        }

        return 808;
      }

      goto LABEL_188;
    }

    if (v13 == 8)
    {
      goto LABEL_90;
    }

    if (v13 != 20)
    {
      return v18;
    }

    v19 = sub_10023A120(a1, v14) >> 1;
    *(v7 + 2) = v19;
    if (*(a1 + 15))
    {
      return v18;
    }

    v20 = sub_100007618(2 * (v19 + 2), 0x1000040BDFB0063uLL);
    *(v7 + 8) = v20;
    if (!v20)
    {
      return 106;
    }

    if (!*(v7 + 2))
    {
      v23 = 0;
      if (*(a1 + 15))
      {
        return 808;
      }

      goto LABEL_150;
    }

    v21 = 0;
    do
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 733, "(*ByteStream).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/dataelem/marshaller.c", 733, "OI_STATUS UnmarshalText16Element(OI_BYTE_STREAM *, uint8_t, OI_DATAELEM *)");
      }

      else if (*(a1 + 10) - *(a1 + 12) >= 2)
      {
        v22 = 0;
        *(*(v7 + 8) + 2 * v21) = bswap32(*(*a1 + *(a1 + 12))) >> 16;
        *(a1 + 12) += 2;
        goto LABEL_48;
      }

      v22 = 1;
      *(a1 + 15) = 1;
LABEL_48:
      ++v21;
      v23 = *(v7 + 2);
    }

    while (v21 < v23);
    if (v22)
    {
      return 808;
    }

LABEL_150:
    *(*(v7 + 8) + 2 * v23) = 0;
LABEL_173:
    if (*(a1 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unmarshal error");
        v84 = sub_10000C050(0x2Bu);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
LABEL_200:
          sub_1008142C8();
        }
      }

      return 808;
    }

LABEL_174:
    v15 = v7 == a2;
    v7 += 16;
    if (!v15)
    {
      continue;
    }

    return 0;
  }
}