uint64_t sub_297FA8200(uint64_t a1)
{
  v2 = 1;
  v20 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDC9730];
  while (1)
  {
    v4 = sub_297F9DC04();
    pthread_mutex_lock((v4[3] + 8));
    v5 = v4[3];
    ++*v5;
    pthread_mutex_unlock((v5 + 8));
    v6 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FAB180;
    *&block[24] = &unk_29EE877D8;
    v18 = a1;
    v19 = v4;
    dispatch_async_and_wait(v6, block);
    if (!sub_297F9F694(v4))
    {
      v13 = 0;
      goto LABEL_24;
    }

    v7 = *v4;
    dispatch_get_specific(*v3);
    Logger = NFLogGetLogger();
    if (v7 == 67)
    {
      if (Logger)
      {
        Logger(3, "%s:%i eSE power-on failed! (%d/%d)", "_NFDriverValidateEEPROM", 769, v2, 3);
      }

      dispatch_get_specific(*v3);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *block = 136446978;
      *&block[4] = "_NFDriverValidateEEPROM";
      *&block[12] = 1024;
      *&block[14] = 769;
      *&block[18] = 1024;
      *&block[20] = v2;
      *&block[24] = 1024;
      *&block[26] = 3;
      v10 = v12;
      v11 = "%{public}s:%i eSE power-on failed! (%d/%d)";
      goto LABEL_13;
    }

    if (v7 != 255)
    {
      break;
    }

    if (Logger)
    {
      Logger(3, "%s:%i EEPROM validation failed (%d/%d)", "_NFDriverValidateEEPROM", 767, v2, 3);
    }

    dispatch_get_specific(*v3);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *block = 136446978;
    *&block[4] = "_NFDriverValidateEEPROM";
    *&block[12] = 1024;
    *&block[14] = 767;
    *&block[18] = 1024;
    *&block[20] = v2;
    *&block[24] = 1024;
    *&block[26] = 3;
    v10 = v9;
    v11 = "%{public}s:%i EEPROM validation failed (%d/%d)";
LABEL_13:
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, v11, block, 0x1Eu);
LABEL_14:
    sub_297F9FBDC(v4);
    if (++v2 == 4)
    {
      return 1;
    }
  }

  if (Logger)
  {
    Logger(3, "%s:%i failed to validate EEPROM: 0x%04llX", "_NFDriverValidateEEPROM", 779, *v4);
  }

  dispatch_get_specific(*v3);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *v4;
    *block = 136446722;
    *&block[4] = "_NFDriverValidateEEPROM";
    *&block[12] = 1024;
    *&block[14] = 779;
    *&block[18] = 2048;
    *&block[20] = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to validate EEPROM: 0x%04llX", block, 0x1Cu);
  }

  if (*v4 == 137)
  {
    v13 = 13;
  }

  else
  {
    v13 = 1;
  }

LABEL_24:
  sub_297F9FBDC(v4);
  return v13;
}

uint64_t sub_297FA8564(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v12 = 16864417;
  memset(v19, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v19))
  {
    return 8;
  }

  if (DWORD1(v19[0]) < 8 || (*(*(a1 + 24) + 587) & 0x10) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Enabling write counters", "_NFDriverEnableWriteCounters", 1639);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "_NFDriverEnableWriteCounters";
    v15 = 1024;
    v16 = 1639;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling write counters", buf, 0x12u);
  }

  v11 = sub_297FA02E4(4u, &v12);
  v7 = sub_297FA0380(a1, 37025, v11, 0);
  if (sub_297F9F694(v7))
  {
    dispatch_get_specific(*v4);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i Failed to enable write counters status:0x%08llx", "_NFDriverEnableWriteCounters", 1647, *v7);
    }

    dispatch_get_specific(*v4);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *v7;
      *buf = 136446722;
      v14 = "_NFDriverEnableWriteCounters";
      v15 = 1024;
      v16 = 1647;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to enable write counters status:0x%08llx", buf, 0x1Cu);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_297F9FBDC(v7);
  sub_297FA0714(&v11);
  return v2;
}

uint64_t sub_297FA879C(uint64_t a1)
{
  result = sub_297FBF5D0(a1);
  if ((*(a1 + 57) & 1) == 0)
  {
    *(a1 + 44) = 1;
  }

  return result;
}

uint64_t sub_297FA87E8(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(v16, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v16))
  {
    return 8;
  }

  if (DWORD1(v16[0]) > 6)
  {
    v7 = *(*(a1 + 24) + 584);
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if ((v7 & 0x2000000) != 0)
    {
      if (Logger)
      {
        Logger(4, "%s:%i LPCD assist disabled!", "_NFDriverEnableLpcdAssist", 1562);
      }

      dispatch_get_specific(*v8);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v13 = "_NFDriverEnableLpcdAssist";
        v14 = 1024;
        v15 = 1562;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i LPCD assist disabled!", buf, 0x12u);
      }

      result = 0;
      *(*(a1 + 24) + 596) = 0;
    }

    else
    {
      if (Logger)
      {
        Logger(6, "%s:%i enabling LPCD assist", "_NFDriverEnableLpcdAssist", 1580);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v13 = "_NFDriverEnableLpcdAssist";
        v14 = 1024;
        v15 = 1580;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enabling LPCD assist", buf, 0x12u);
      }

      result = 0;
      *(*(a1 + 24) + 596) = 1;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v3 = NFLogGetLogger();
    if (v3)
    {
      v3(6, "%s:%i Device does not support this feature", "_NFDriverEnableLpcdAssist", 1557);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 136446466;
      v13 = "_NFDriverEnableLpcdAssist";
      v14 = 1024;
      v15 = 1557;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_297FA8A78(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 756);
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v2 > 9)
  {
    if (Logger)
    {
      Logger(6, "%s:%i Enabling reader mode dynamic BBA control", "_NFDriverConfigureReaderModeDynamicBBA", 1611);
    }

    dispatch_get_specific(*v3);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v10 = "_NFDriverConfigureReaderModeDynamicBBA";
      v11 = 1024;
      v12 = 1611;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling reader mode dynamic BBA control", buf, 0x12u);
    }

    buf[0] = 1;
    return sub_297FCD864(a1, 41244, buf, 1u);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i Not supported - skipping on this hardware", "_NFDriverConfigureReaderModeDynamicBBA", 1606);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v6)
    {
      *buf = 136446466;
      v10 = "_NFDriverConfigureReaderModeDynamicBBA";
      v11 = 1024;
      v12 = 1606;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not supported - skipping on this hardware", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_297FA8C38(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 584);
  if (v2)
  {
    v3 = 2050;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((~*(*(a1 + 24) + 584) & 3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2175;
  }

  v6 = (v2 >> 4) & 0x200 | (v2 >> 10) & 0x1400 | (v2 >> 6) & 0x100 | v5;
  v7 = sub_297F9DC04();
  pthread_mutex_lock((v7[3] + 8));
  v8 = v7[3];
  ++*v8;
  pthread_mutex_unlock((v8 + 8));
  v9 = *(*(a1 + 24) + 560);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 0x40000000;
  *&block[16] = sub_297FAB304;
  *&block[24] = &unk_29EE877F8;
  v19 = v6;
  v17 = a1;
  v18 = v7;
  dispatch_async_and_wait(v9, block);
  if (sub_297F9F694(v7))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to configure RF logging : 0x%04llX", "_NFDriverConfigureRFLogging", 1111, *v7);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v7;
      *block = 136446722;
      *&block[4] = "_NFDriverConfigureRFLogging";
      *&block[12] = 1024;
      *&block[14] = 1111;
      *&block[18] = 2048;
      *&block[20] = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure RF logging : 0x%04llX", block, 0x1Cu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  sub_297F9FBDC(v7);
  return v14;
}

uint64_t sub_297FA8E44(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v12 = 900;
  if ((*(*(a1 + 24) + 587) & 1) == 0)
  {
    return 0;
  }

  if (NFIsRestoreOS())
  {
    return 0;
  }

  if (!NFProductHasThermistor())
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    return 0;
  }

  memset(v20, 0, 44);
  NFDriverGetControllerInfo(a1, v20);
  if (DWORD1(v20[0]) < 0xC)
  {
    return 0;
  }

  v13 = DWORD1(v20[0]) == 16;
  v11 = sub_297FA02E4(3u, &v12);
  v4 = sub_297FA0380(a1, 242, v11, 0);
  v5 = sub_297F9F694(v4);
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v5)
  {
    if (Logger)
    {
      Logger(3, "%s:%i Failed to configure Temperature monitoring : 0x%04llX", "_NFDriverConfigureTemperatureNotifications", 1157, *v4);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *v4;
      *buf = 136446722;
      v15 = "_NFDriverConfigureTemperatureNotifications";
      v16 = 1024;
      v17 = 1157;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure Temperature monitoring : 0x%04llX", buf, 0x1Cu);
    }

    if (*v4 == 137)
    {
      v2 = 13;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i Temperature monitoring configured", "_NFDriverConfigureTemperatureNotifications", 1160);
    }

    dispatch_get_specific(*v6);
    v10 = NFSharedLogGetLogger();
    v2 = 0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "_NFDriverConfigureTemperatureNotifications";
      v16 = 1024;
      v17 = 1160;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Temperature monitoring configured", buf, 0x12u);
      v2 = 0;
    }
  }

  sub_297F9FBDC(v4);
  sub_297FA0714(&v11);
  return v2;
}

uint64_t sub_297FA90B0(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = 0;
  v38 = 11;
  v37 = -24319;
  *&v52[5] = 0x294A0000000;
  *v52 = 0x64010A0BA1;
  if (NFProductIsWatch())
  {
    return 0;
  }

  if (NFIsRestoreOS())
  {
    return 0;
  }

  if (!NFProductHasThermistor())
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    return 0;
  }

  memset(v51, 0, 44);
  NFDriverGetControllerInfo(a1, v51);
  if (DWORD1(v51[0]) != 16)
  {
    return 0;
  }

  v40 = sub_297FA02E4(3u, &v37);
  v39 = sub_297FA02E4(v37 << 8, 0);
  v2 = sub_297FA0380(a1, 37026, v40, v39);
  v3 = sub_297F9F694(v2);
  v4 = MEMORY[0x29EDC9730];
  if (v3)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get RF settings.", "_NFDriverConfigureAIOTemperatureRestriction", 1203);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1203;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings.", buf, 0x12u);
    }

    sub_297FA0714(&v40);
    sub_297FA0714(&v39);
    sub_297F9FBDC(v2);
    return 1;
  }

  sub_297F9FBDC(v2);
  sub_297FA0714(&v40);
  v50 = 0u;
  memset(buf, 0, sizeof(buf));
  v8 = *(v39 + 2);
  v9 = *v39;
  dispatch_get_specific(*v4);
  v10 = NFLogGetLogger();
  dispatch_get_specific(*v4);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v39 + 2);
    *v41 = 136315906;
    v42 = "_NFDriverConfigureAIOTemperatureRestriction";
    v43 = 1024;
    v44 = 1212;
    v45 = 2082;
    v46 = "Thresholds are :";
    v47 = 2048;
    v48 = v12;
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v41, 0x26u);
  }

  if (v10)
  {
    v10(6, "%s:%i %s %lu bytes :", "_NFDriverConfigureAIOTemperatureRestriction", 1212, "Thresholds are :", *(v39 + 2));
  }

  if (v8)
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v15 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v13)];
      do
      {
        v16 = v9[v13++];
        v17 = sprintf(v15, "0x%02X ", v16);
        if (v14 > 6)
        {
          break;
        }

        v15 += v17;
        ++v14;
      }

      while (v13 < v8);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 136446210;
        v42 = buf;
        _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", v41, 0xCu);
      }

      if (v10)
      {
        v10(6, "%s", buf);
      }
    }

    while (v13 < v8);
  }

  if (*(v39 + 2) > 0xDu)
  {
    v22 = *v39;
    v19 = MEMORY[0x29EDC9730];
    if ((*(*v39 + 4) & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!*(*v39 + 5) && !v22[6])
    {
LABEL_39:
      if (v22[10] || v22[11])
      {
        dispatch_get_specific(*v19);
        v25 = NFLogGetLogger();
        if (v25)
        {
          v25(6, "%s:%i Re-using exit threhold", "_NFDriverConfigureAIOTemperatureRestriction", 1234);
        }

        dispatch_get_specific(*v19);
        v26 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
          *&buf[12] = 1024;
          *&buf[14] = 1234;
          _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Re-using exit threhold", buf, 0x12u);
        }

        v27 = *v39;
        v52[9] = *(*v39 + 10);
        v52[10] = v27[11];
      }

      goto LABEL_46;
    }

    if (!v22[10] && !v22[11])
    {
LABEL_72:
      if (*(*v39 + 5) || v22[6])
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(6, "%s:%i Re-using entry threhold", "_NFDriverConfigureAIOTemperatureRestriction", 1228);
        }

        dispatch_get_specific(*v19);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
          *&buf[12] = 1024;
          *&buf[14] = 1228;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Re-using entry threhold", buf, 0x12u);
        }

        v22 = *v39;
        v52[4] = *(*v39 + 5);
        v52[5] = v22[6];
      }

      goto LABEL_39;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v34(6, "%s:%i Setting already present - not updating", "_NFDriverConfigureAIOTemperatureRestriction", 1222);
    }

    dispatch_get_specific(*v19);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1222;
      _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting already present - not updating", buf, 0x12u);
    }

    sub_297FA0714(&v39);
    return 0;
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Unexpected length, using custom settings...", "_NFDriverConfigureAIOTemperatureRestriction", 1218);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
    *&buf[12] = 1024;
    *&buf[14] = 1218;
    _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length, using custom settings...", buf, 0x12u);
  }

LABEL_46:
  sub_297FA0714(&v39);
  v40 = sub_297FA02E4(0xDu, v52);
  v28 = sub_297FA0380(a1, 37025, v40, 0);
  v29 = sub_297F9F694(v28);
  dispatch_get_specific(*v19);
  v30 = NFLogGetLogger();
  if (v29)
  {
    if (v30)
    {
      v30(3, "%s:%i Failed to configure Temperature restrictor : 0x%04llX", "_NFDriverConfigureAIOTemperatureRestriction", 1246, *v28);
    }

    dispatch_get_specific(*v19);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *v28;
      *buf = 136446722;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1246;
      *&buf[18] = 2048;
      *&buf[20] = v32;
      _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure Temperature restrictor : 0x%04llX", buf, 0x1Cu);
    }

    if (*v28 == 137)
    {
      v7 = 13;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (v30)
    {
      v30(6, "%s:%i Temperature restrictor configured", "_NFDriverConfigureAIOTemperatureRestriction", 1249);
    }

    dispatch_get_specific(*v19);
    v33 = NFSharedLogGetLogger();
    v7 = 0;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1249;
      _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Temperature restrictor configured", buf, 0x12u);
      v7 = 0;
    }
  }

  sub_297F9FBDC(v28);
  sub_297FA0714(&v40);
  return v7;
}

uint64_t sub_297FA994C(uint64_t a1)
{
  *&v37[5] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 24) + 752);
  if (v1 >= 0xA00)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i timeout must be < %d", "_NFDriverSetGenericATxHappenedTimeout", 1268, 2550);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 5;
    }

    *buf = 136446722;
    v33 = "_NFDriverSetGenericATxHappenedTimeout";
    v34 = 1024;
    v35 = 1268;
    v36 = 1024;
    v37[0] = 2550;
    v5 = "%{public}s:%i timeout must be < %d";
LABEL_6:
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x18u);
    return 5;
  }

  v8 = sub_297FBA6E8(a1, 4);
  v31[0] = 1;
  v31[1] = HIBYTE(v8);
  v31[2] = v8;
  v30 = sub_297FA02E4(3u, v31);
  v29 = sub_297FA02E4(0x100u, 0);
  v9 = sub_297FA0380(a1, 37026, v30, v29);
  if (sub_297F9F694(v9))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Failed to get TO_BEFORE_STDBY_CFG.", "_NFDriverSetGenericATxHappenedTimeout", 1281);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "_NFDriverSetGenericATxHappenedTimeout";
      v34 = 1024;
      v35 = 1281;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get TO_BEFORE_STDBY_CFG.", buf, 0x12u);
    }

    sub_297F9FBDC(v9);
    sub_297FA0714(&v30);
    sub_297FA0714(&v29);
    return 1;
  }

  else
  {
    sub_297F9FBDC(v9);
    sub_297FA0714(&v30);
    if (*(v29 + 2) > 5u)
    {
      v17 = *(*v29 + 2);
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(6, "%s:%i toBeforeStdbyCfg=%d ms, requesting %d", "_NFDriverSetGenericATxHappenedTimeout", 1297, v17, v1);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v33 = "_NFDriverSetGenericATxHappenedTimeout";
        v34 = 1024;
        v35 = 1297;
        v36 = 1024;
        v37[0] = v17;
        LOWORD(v37[1]) = 1024;
        *(&v37[1] + 2) = v1;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i toBeforeStdbyCfg=%d ms, requesting %d", buf, 0x1Eu);
      }

      sub_297FA0714(&v29);
      if (v1 >= v17)
      {
        dispatch_get_specific(*v18);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i timeout must be < %dms", "_NFDriverSetGenericATxHappenedTimeout", 1303, v17);
        }

        dispatch_get_specific(*v18);
        v4 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          return 5;
        }

        *buf = 136446722;
        v33 = "_NFDriverSetGenericATxHappenedTimeout";
        v34 = 1024;
        v35 = 1303;
        v36 = 1024;
        v37[0] = v17;
        v5 = "%{public}s:%i timeout must be < %dms";
        goto LABEL_6;
      }

      v21 = sub_297FBA6E8(a1, 39);
      v28[0] = HIBYTE(v21);
      v28[1] = v21;
      v28[2] = 1;
      v28[3] = v1 / 0xA;
      v30 = sub_297FA02E4(4u, v28);
      v22 = sub_297FA0380(a1, 37025, v30, 0);
      if (sub_297F9F694(v22))
      {
        dispatch_get_specific(*v18);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(3, "%s:%i status=0x%04llX", "_NFDriverSetGenericATxHappenedTimeout", 1318, *v22);
        }

        dispatch_get_specific(*v18);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *v22;
          *buf = 136446722;
          v33 = "_NFDriverSetGenericATxHappenedTimeout";
          v34 = 1024;
          v35 = 1318;
          v36 = 2048;
          *v37 = v25;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_297F9FBDC(v22);
      sub_297FA0714(&v30);
    }

    else
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i Unexpected length for TO_BEFORE_STDBY_CFG : %d", "_NFDriverSetGenericATxHappenedTimeout", 1291, *(v29 + 2));
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v29 + 2);
        *buf = 136446722;
        v33 = "_NFDriverSetGenericATxHappenedTimeout";
        v34 = 1024;
        v35 = 1291;
        v36 = 1024;
        v37[0] = v16;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length for TO_BEFORE_STDBY_CFG : %d", buf, 0x18u);
      }

      sub_297FA0714(&v29);
      return 8;
    }
  }

  return v6;
}

uint64_t sub_297FA9F34(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = xmmword_297FDB4BB;
  v17 = 0;
  v9 = sub_297FA02E4(0x18u, &v16);
  v2 = sub_297FA0380(a1, 37025, v9, 0);
  if (sub_297F9F694(v2))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to set ECP VAS polling: 0x%08llx", "_NFDriverConfigureECPPolling", 1362, *v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *v2;
      *buf = 136446722;
      v11 = "_NFDriverConfigureECPPolling";
      v12 = 1024;
      v13 = 1362;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set ECP VAS polling: 0x%08llx", buf, 0x1Cu);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_297F9FBDC(v2);
  sub_297FA0714(&v9);
  return v7;
}

uint64_t sub_297FAA0A8(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  memset(v19, 0, 44);
  NFDriverGetControllerInfo(a1, v19);
  if (DWORD1(v19[0]) > 6)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = sub_297FAB44C;
    v12[3] = &unk_29EE87818;
    v12[4] = a1;
    v6 = sub_297FA1B10(a1, v12);
    if (sub_297F9F694(v6))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i failed to enable VAS CODES: 0x%04llX", "_NFDriverConfigureVASFieldDetectShortcuts", 1453, *v6);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *v6;
        *buf = 136446722;
        v14 = "_NFDriverConfigureVASFieldDetectShortcuts";
        v15 = 1024;
        v16 = 1453;
        v17 = 2048;
        v18 = v10;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to enable VAS CODES: 0x%04llX", buf, 0x1Cu);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_297F9FBDC(v6);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v3 = NFLogGetLogger();
    if (v3)
    {
      v3(6, "%s:%i Device does not support this feature", "_NFDriverConfigureVASFieldDetectShortcuts", 1382);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    v5 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "_NFDriverConfigureVASFieldDetectShortcuts";
      v15 = 1024;
      v16 = 1382;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_297FAA300(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = sub_297FBA6E8(a1, 24);
  v24 = 0;
  v25 = 0;
  v23[0] = 1;
  v23[1] = HIBYTE(v2);
  v23[2] = v2;
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i %d%% ASK modulation requested.", "_NFDriverChangeISO15693Modulation", 1475, 100);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v27 = "_NFDriverChangeISO15693Modulation";
    v28 = 1024;
    v29 = 1475;
    v30 = 1024;
    v31 = 100;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %d%% ASK modulation requested.", buf, 0x18u);
  }

  v6 = sub_297FA02E4(3u, v23);
  v25 = v6;
  v24 = sub_297FA02E4(0x100u, 0);
  v7 = sub_297FA0380(a1, 37026, v6, v24);
  if (sub_297F9F694(v7))
  {
    dispatch_get_specific(*v3);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i Failed to get RF settings.", "_NFDriverChangeISO15693Modulation", 1483);
    }

    dispatch_get_specific(*v3);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "_NFDriverChangeISO15693Modulation";
      v28 = 1024;
      v29 = 1483;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings.", buf, 0x12u);
    }

    sub_297FA0714(&v25);
    sub_297FA0714(&v24);
    sub_297F9FBDC(v7);
    return 1;
  }

  else
  {
    sub_297F9FBDC(v7);
    if (*(v24 + 8) == 5)
    {
      v11 = *(*v24 + 4);
      if (v11 < 0)
      {
        *(*v24 + 4) = v11 & 0x7F;
        sub_297FA0714(&v25);
        dispatch_get_specific(*v3);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v15(6, "%s:%i Setting polling modulation limit to 100%%", "_NFDriverChangeISO15693Modulation", 1524);
        }

        dispatch_get_specific(*v3);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v27 = "_NFDriverChangeISO15693Modulation";
          v28 = 1024;
          v29 = 1524;
          _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting polling modulation limit to 100%%", buf, 0x12u);
        }

        v25 = sub_297FA02E4(0x10u, 0);
        **v25 = *(*v24 + 1);
        v17 = v25;
        v18 = *v25;
        *(v18 + 1) = 0x37AF7632080002F0;
        v18[3] = -1051982618;
        v19 = sub_297FA0380(a1, 224, v17, 0);
        if (sub_297F9F694(v19))
        {
          dispatch_get_specific(*v3);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i Failed to set RF settings.", "_NFDriverChangeISO15693Modulation", 1538);
          }

          dispatch_get_specific(*v3);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v27 = "_NFDriverChangeISO15693Modulation";
            v28 = 1024;
            v29 = 1538;
            _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set RF settings.", buf, 0x12u);
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        sub_297F9FBDC(v19);
        sub_297FA0714(&v25);
        sub_297FA0714(&v24);
      }

      else
      {
        sub_297FA0714(&v25);
        sub_297FA0714(&v24);
        return 0;
      }
    }

    else
    {
      v12 = (*(v24 + 8) - 1);
      dispatch_get_specific(*v3);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Unexpected length for ISO modulation : %d, expected %d", "_NFDriverChangeISO15693Modulation", 1493, v12, 4);
      }

      dispatch_get_specific(*v3);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v27 = "_NFDriverChangeISO15693Modulation";
        v28 = 1024;
        v29 = 1493;
        v30 = 1024;
        v31 = v12;
        v32 = 1024;
        v33 = 4;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length for ISO modulation : %d, expected %d", buf, 0x1Eu);
      }

      sub_297FA0714(&v25);
      sub_297FA0714(&v24);
      return 8;
    }
  }

  return v10;
}

uint64_t sub_297FAA7D4(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 88;
  v3 = 134217888;
  memset(v5, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v5))
  {
    return 8;
  }

  if (DWORD1(v5[0]) == 22)
  {
    return 0;
  }

  return NFDriverEnableAntiRelay(a1, &v3, 5);
}

uint64_t sub_297FAA888(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (NFIsInternalBuild() && (*(*(a1 + 24) + 585) & 8) != 0)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Warning : Standby disabled.", "_NFDriverDisableStandby", 1722);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v7 = "_NFDriverDisableStandby";
      v8 = 1024;
      v9 = 1722;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Warning : Standby disabled.", buf, 0x12u);
    }

    sub_297FC05A4(a1, 0);
  }

  return 0;
}

void sub_297FAA9A4(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_GeneralNtfRegister();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 823, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v21 = "_NFDriverRegisterNCINotifications_block_invoke";
    v22 = 1024;
    v23 = 823;
    v24 = 1024;
    v25 = v3;
    v7 = "%{public}s:%i status=0x%04X";
    goto LABEL_6;
  }

  v8 = phLibNfc_SE_NtfRegister();
  if (v8)
  {
    v3 = v8;
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 830, v3);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "_NFDriverRegisterNCINotifications_block_invoke";
      v22 = 1024;
      v23 = 830;
      v24 = 1024;
      v25 = v3;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    phLibNfc_RemoteDev_NtfUnregister();
    goto LABEL_13;
  }

  v14 = phLibNfc_RemoteDev_NtfRegister();
  if (v14)
  {
    v3 = v14;
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 840, v3);
    }

    dispatch_get_specific(*v15);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v21 = "_NFDriverRegisterNCINotifications_block_invoke";
    v22 = 1024;
    v23 = 840;
    v24 = 1024;
    v25 = v3;
    v7 = "%{public}s:%i status=0x%04X";
    goto LABEL_6;
  }

  v17 = phLibNfc_CardEmulation_NtfRegister();
  if (!v17)
  {
    v12 = *(a1 + 40);
    v13 = 0;
    goto LABEL_14;
  }

  v3 = v17;
  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i HCE Register error = 0x%04x", "_NFDriverRegisterNCINotifications_block_invoke", 847, v3);
  }

  dispatch_get_specific(*v18);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v21 = "_NFDriverRegisterNCINotifications_block_invoke";
    v22 = 1024;
    v23 = 847;
    v24 = 1024;
    v25 = v3;
    v7 = "%{public}s:%i HCE Register error = 0x%04x";
LABEL_6:
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x18u);
  }

LABEL_13:
  v12 = *(a1 + 40);
  v13 = v3;
LABEL_14:
  sub_297F9FB20(v12, v13);
  sub_297F9FBDC(*(a1 + 40));
}

void sub_297FAAD7C(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_DnldGeneralNtfRegister();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to register notification callback.", "_NFDriverRegisterFWDLNotifications_block_invoke", 930);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "_NFDriverRegisterFWDLNotifications_block_invoke";
      v9 = 1024;
      v10 = 930;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to register notification callback.", buf, 0x12u);
    }

    sub_297F9FB20(*(a1 + 40), v3);
  }

  sub_297F9FB20(*(a1 + 40), 0);
  sub_297F9FBDC(*(a1 + 40));
}

void sub_297FAAEBC(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_GetstackCapabilities();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverSetControllerInfo_block_invoke", 560, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_NFDriverSetControllerInfo_block_invoke";
      v9 = 1024;
      v10 = 560;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_297FAAFF0(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_ConfigureHsuParams();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverConfigureBaudRate_block_invoke", 670, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_NFDriverConfigureBaudRate_block_invoke";
      v9 = 1024;
      v10 = 670;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v3);
    sub_297F9FBDC(*(a1 + 40));
  }
}

void sub_297FAB140(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FAB180(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_ValidateEepromSettings();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverValidateEEPROM_block_invoke", 746, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_Async_NFDriverValidateEEPROM_block_invoke";
      v9 = 1024;
      v10 = 746;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v3);
    sub_297F9FBDC(*(a1 + 40));
  }
}

void sub_297FAB2C4(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FAB304(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_ConfigureLogging();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverConfigureRFLogging_block_invoke", 1069, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_Async_NFDriverConfigureRFLogging_block_invoke";
      v9 = 1024;
      v10 = 1069;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v3);
    sub_297F9FBDC(*(a1 + 40));
  }
}

uint64_t sub_297FAB44C(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v10 = 3;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, 24);
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Enabling VAS CODES", "_NFDriverConfigureVASFieldDetectShortcuts_block_invoke", 1396);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "_NFDriverConfigureVASFieldDetectShortcuts_block_invoke";
    v8 = 1024;
    v9 = 1396;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling VAS CODES", buf, 0x12u);
  }

  BYTE2(v11) = 6;
  *(&v11 + 3) = 16958210;
  *(&v11 + 7) = 1;
  BYTE8(v12) = 4;
  *(&v12 + 9) = 180994;
  *(&v13[1] + 5) = 1025;
  *(&v13[1] + 7) = 364290;
  *(&v14 + 3) = 1025;
  *(&v14 + 5) = 362754;
  BYTE10(v15) = 4;
  *(&v15 + 11) = 311554;
  return phLibNfc_Mgt_SetNfccParams();
}

void *sub_297FAB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementCreate", 80, "driver");
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "NFDriverSecureElementCreate";
      v22 = 1024;
      v23 = 80;
      v24 = 2080;
      v25 = "driver";
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v5 = a3;
  v6 = a2;
  if (!sub_297FAB908(a2))
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004076067311uLL);
  if (!v8)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Failed to allocate se of type %d", "NFDriverSecureElementCreate", 88, v6);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "NFDriverSecureElementCreate";
      v22 = 1024;
      v23 = 88;
      v24 = 1024;
      LODWORD(v25) = v6;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate se of type %d", buf, 0x18u);
    }

    return 0;
  }

  v9 = v8;
  if ((sub_297FABA38(v8, a1, v6, v5, a4) & 1) == 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Failed to init se of type %d", "NFDriverSecureElementCreate", 93, v6);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "NFDriverSecureElementCreate";
      v22 = 1024;
      v23 = 93;
      v24 = 1024;
      LODWORD(v25) = v6;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to init se of type %d", buf, 0x18u);
    }

    free(v9);
    return 0;
  }

  return v9;
}

uint64_t sub_297FAB908(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = a1 - 2;
  if (a1 - 2) < 5 && ((0x1Du >> v2))
  {
    return dword_297FDB4E0[v2];
  }

  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Unknown SE type %d", "_seTypeToID", 53, a1);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v8 = "_seTypeToID";
    v9 = 1024;
    v10 = 53;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown SE type %d", buf, 0x18u);
    return 0;
  }

  return result;
}

uint64_t sub_297FABA38(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementInit", 103, "se");
    }

    dispatch_get_specific(*v23);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "NFDriverSecureElementInit";
      v30 = 1024;
      v31 = 103;
      v32 = 2080;
      v33 = "se";
LABEL_31:
      _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_32:
    abort();
  }

  if (!a2)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i FAILED: %s", "NFDriverSecureElementInit", 104, "driver");
    }

    dispatch_get_specific(*v26);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "NFDriverSecureElementInit";
      v30 = 1024;
      v31 = 104;
      v32 = 2080;
      v33 = "driver";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v10 = sub_297FAB908(a3);
  if (!v10)
  {
    return 0;
  }

  *(a1 + 16) = v10;
  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 24) = a4;
  if (a3 != 2)
  {
    v12 = &unk_2A1E98058;
    v13 = 4;
    while (--v13)
    {
      v11 = v12 + 4;
      v14 = v12[4];
      v12 += 4;
      if (v14 == a3)
      {
        goto LABEL_9;
      }
    }

    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Unknown SE type %d", "_createSE", 74, a3);
    }

    dispatch_get_specific(*v21);
    v19 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446722;
    v29 = "_createSE";
    v30 = 1024;
    v31 = 74;
    v32 = 1024;
    LODWORD(v33) = a3;
    v20 = "%{public}s:%i Unknown SE type %d";
LABEL_21:
    _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x18u);
    return 0;
  }

  v11 = &unk_2A1E98058;
LABEL_9:
  v15 = v11[1];
  if (!v15)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i missing creator for SE type %d", "_createSE", 67, a3);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446722;
    v29 = "_createSE";
    v30 = 1024;
    v31 = 67;
    v32 = 1024;
    LODWORD(v33) = a3;
    v20 = "%{public}s:%i missing creator for SE type %d";
    goto LABEL_21;
  }

  return v15(a1);
}

uint64_t sub_297FABE14(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_SetPower", 130, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_SetPower";
      v8 = 1024;
      v9 = 130;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FABF70(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSInfo", 140, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetOSInfo";
      v8 = 1024;
      v9 = 140;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC0CC(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSMode", 150, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetOSMode";
      v8 = 1024;
      v9 = 150;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC228(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSUpdateLog", 160, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetOSUpdateLog";
      v8 = 1024;
      v9 = 160;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC384(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetAttackCounterLog", 170, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetAttackCounterLog";
      v8 = 1024;
      v9 = 170;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 64);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC4E0(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetPresenceOfAttackLog", 180, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetPresenceOfAttackLog";
      v8 = 1024;
      v9 = 180;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC63C(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_UnlockRequestInfo", 190, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_UnlockRequestInfo";
      v8 = 1024;
      v9 = 190;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC798(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetManifestQuery", 200, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_GetManifestQuery";
      v8 = 1024;
      v9 = 200;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 88);
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t sub_297FAC8F4(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_IsOSReady", 221, "se");
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverSecureElement_IsOSReady";
      v8 = 1024;
      v9 = 221;
      v10 = 2080;
      v11 = "se";
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 104);
  if (!v1)
  {
    return 1;
  }

  return v1();
}

BOOL sub_297FACA50(uint64_t a1)
{
  if (a1)
  {
    dword_2A18BD374 = 0;
    *(a1 + 32) = sub_297FACB10;
    *(a1 + 40) = sub_297FACC18;
    *(a1 + 48) = sub_297FADAE8;
    *(a1 + 56) = sub_297FAE090;
    *(a1 + 64) = sub_297FAE4B8;
    *(a1 + 72) = sub_297FAE968;
    *(a1 + 88) = sub_297FAF108;
    *(a1 + 80) = sub_297FAF430;
    *(a1 + 96) = sub_297FAF438;
    *(a1 + 104) = sub_297FAF440;
    *(a1 + 20) = 6;
  }

  return a1 != 0;
}

BOOL sub_297FACB10(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i WARNING : power cycling SE", "SetPower_Eos", 76);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v9 = "SetPower_Eos";
    v10 = 1024;
    v11 = 76;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i WARNING : power cycling SE", buf, 0x12u);
  }

  return NFDriverSetEmbeddedSecureElementPower(*a1, v2);
}

BOOL sub_297FACC18(void *a1, uint64_t a2)
{
  v83 = *MEMORY[0x29EDCA608];
  result = sub_297FAF108(a1, a2);
  if (result)
  {
    v73 = 0;
    if (*(a2 + 1250) <= 0xA4uLL)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Invalid manifest length", "_EosParseManifestQuery", 98);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v76 = "_EosParseManifestQuery";
      v77 = 1024;
      v78 = 98;
      v8 = "%{public}s:%i Invalid manifest length";
      goto LABEL_44;
    }

    v9 = NFDataCreateWithBytes();
    v10 = MEMORY[0x29EDC9730];
    if (!v9)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v26(3, "%s:%i Failed to allocate manifest query data", "_EosParseManifestQuery", 104);
      }

      dispatch_get_specific(*v10);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v76 = "_EosParseManifestQuery";
      v77 = 1024;
      v78 = 104;
      v8 = "%{public}s:%i Failed to allocate manifest query data";
LABEL_44:
      v27 = v7;
      v28 = 18;
LABEL_45:
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, v8, buf, v28);
      return 0;
    }

    v11 = TLVCreateWithData();
    v74 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      do
      {
        v14 = *(v12 + 32);
        if (v14 == 134)
        {
          v15 = *(v12 + 40);
          v16 = *(v15 + 8);
          if (v16 >= 0x19)
          {
            dispatch_get_specific(*v10);
            v17 = NFLogGetLogger();
            if (v17)
            {
              v17(3, "%s:%i Error ! Unexpected serial number length ", "_EosParseManifestQuery", 116);
            }

            dispatch_get_specific(*v10);
            v18 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v76 = "_EosParseManifestQuery";
              v77 = 1024;
              v78 = 116;
              _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected serial number length ", buf, 0x12u);
            }

            v15 = *(v12 + 40);
            v16 = 24;
            v10 = v13;
          }

          memcpy((a2 + 1176), *v15, v16);
          v14 = *(v12 + 32);
        }

        if (v14 == 137)
        {
          v19 = *(v12 + 40);
          if (v19[1] == 32)
          {
            if (**v19 ^ 0x75A5ACE19525D904 | *(*v19 + 8) ^ 0x16F1101E35C189A6 | *(*v19 + 16) ^ 0xA4EEF336B936CDD0 | *(*v19 + 24) ^ 0xBDD1D60286D53B67)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }
          }

          else
          {
            dispatch_get_specific(*v10);
            v21 = NFLogGetLogger();
            if (v21)
            {
              v21(3, "%s:%i Error ! Unexpected cert length ", "_EosParseManifestQuery", 123);
            }

            dispatch_get_specific(*v10);
            v22 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v76 = "_EosParseManifestQuery";
              v77 = 1024;
              v78 = 123;
              _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected cert length ", buf, 0x12u);
            }

            v20 = 0;
            v10 = v13;
          }

          *(a2 + 1208) = v20;
        }

        v12 = *(v12 + 24);
      }

      while (v12);
      TLVRelease();
    }

    NFDataRelease();
    sub_297FA25B8(a1, a2);
    if (*(a2 + 1204) != 2)
    {
      dispatch_get_specific(*v10);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v29(6, "%s:%i Not updating the rest of OS Info : JCOP is not available", "GetOSInfo_Eos", 228);
      }

      dispatch_get_specific(*v10);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v76 = "GetOSInfo_Eos";
        v77 = 1024;
        v78 = 228;
        _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not updating the rest of OS Info : JCOP is not available", buf, 0x12u);
      }

      return 1;
    }

    v23 = NFDataCreateWithBytes();
    NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v23, &v73);
    NFDataRelease();
    switch(v73)
    {
      case 0x6614u:
        dispatch_get_specific(*v10);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v31(5, "%s:%i JCOP OS Update Mode detected", "GetOSInfo_Eos", 245);
        }

        dispatch_get_specific(*v10);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v76 = "GetOSInfo_Eos";
          v77 = 1024;
          v78 = 245;
          _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i JCOP OS Update Mode detected", buf, 0x12u);
        }

        *(a2 + 1256) = 1;
LABEL_57:
        if (*(a2 + 1204) == 3)
        {
          *(a2 + 1256) = 1;
        }

        if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
        {
          sub_297FA27E0(a1, a2);
        }

        v33 = NFDataCreateWithBytes();
        if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v33, &v73))
        {
          dispatch_get_specific(*v10);
          v38 = NFLogGetLogger();
          if (v38)
          {
            v38(3, "%s:%i Returned error: 0x%04x", "GetOSInfo_Eos", 273, v73);
          }

          dispatch_get_specific(*v10);
          v39 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v76 = "GetOSInfo_Eos";
            v77 = 1024;
            v78 = 273;
            v79 = 1024;
            *v80 = v73;
            _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
          }

          NFDataRelease();
          return 0;
        }

        NFDataRelease();
        sub_297FA25B8(a1, a2);
        v34 = sub_297FA2304(a1, 0, 0xFEu, 0xDF20u, 0);
        if (v34)
        {
          v35 = *(v34 + 8);
          if (v35 - 48 > 0xFFFFFFFFFFFFFFCELL)
          {
            memcpy((a2 + 1072), *v34, v35);
            *(a2 + 1072 + v35) = 0;
          }

          else
          {
            dispatch_get_specific(*v10);
            v36 = NFLogGetLogger();
            if (v36)
            {
              v36(4, "%s:%i Platform id too long: %ld", "GetOSInfo_Eos", 292, v35);
            }

            dispatch_get_specific(*v10);
            v37 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v76 = "GetOSInfo_Eos";
              v77 = 1024;
              v78 = 292;
              v79 = 2048;
              *v80 = v35;
              _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Platform id too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          dispatch_get_specific(*v10);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v42(4, "%s:%i Failed to get platform identifier", "GetOSInfo_Eos", 287);
          }

          dispatch_get_specific(*v10);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v76 = "GetOSInfo_Eos";
            v77 = 1024;
            v78 = 287;
            _os_log_impl(&dword_297F97000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get platform identifier", buf, 0x12u);
          }
        }

        v44 = sub_297FA2304(a1, 0, 0xFEu, 0xDF4Cu, 0);
        if (!v44)
        {
          dispatch_get_specific(*v10);
          v57 = NFLogGetLogger();
          if (v57)
          {
            v57(4, "%s:%i Failed to get JCOP Version", "GetOSInfo_Eos", 308);
          }

          dispatch_get_specific(*v10);
          v58 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v76 = "GetOSInfo_Eos";
            v77 = 1024;
            v78 = 308;
            _os_log_impl(&dword_297F97000, v58, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get JCOP Version", buf, 0x12u);
          }

          goto LABEL_99;
        }

        v45 = v44[1];
        if (v45 < 2)
        {
LABEL_89:
          dispatch_get_specific(*v10);
          v51 = NFLogGetLogger();
          if (v51)
          {
            v51(3, "%s:%i Did not find version tag!", "_NFDriverEosUpdateJCOPVersion", 155);
          }

          dispatch_get_specific(*v10);
          v52 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }

          *buf = 136446466;
          v76 = "_NFDriverEosUpdateJCOPVersion";
          v77 = 1024;
          v78 = 155;
          v53 = "%{public}s:%i Did not find version tag!";
          v54 = v52;
          v55 = OS_LOG_TYPE_ERROR;
          v56 = 18;
        }

        else
        {
          v46 = 0;
          v47 = *v44;
          v48 = 1;
          while (1)
          {
            v49 = *(v47 + v48);
            v50 = v46 + v49 + 2;
            if (*(v47 + v46) == 133)
            {
              break;
            }

            v48 = v46 + v49 + 3;
            v46 += v49 + 2;
            if (v50 + 1 >= v45)
            {
              goto LABEL_89;
            }
          }

          if (v49 != 4 || v50 > v45)
          {
            dispatch_get_specific(*v10);
            v66 = NFLogGetLogger();
            if (v66)
            {
              v66(3, "%s:%i Invalid version tag length %d", "_NFDriverEosUpdateJCOPVersion", 162, v49);
            }

            dispatch_get_specific(*v10);
            v67 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_94;
            }

            *buf = 136446722;
            v76 = "_NFDriverEosUpdateJCOPVersion";
            v77 = 1024;
            v78 = 162;
            v79 = 1024;
            *v80 = v49;
            v53 = "%{public}s:%i Invalid version tag length %d";
            v54 = v67;
            v55 = OS_LOG_TYPE_ERROR;
            v56 = 24;
          }

          else
          {
            *(a2 + 1200) = *(v47 + v46 + 2);
            *(a2 + 1201) = *(v47 + v46 + 3);
            *(a2 + 1202) = *(v47 + v46 + 5);
            dispatch_get_specific(*v10);
            v68 = NFLogGetLogger();
            if (v68)
            {
              v68(6, "%s:%i major = %d, minor %d, build = %d", "_NFDriverEosUpdateJCOPVersion", 171, *(a2 + 1200), *(a2 + 1201), *(a2 + 1202));
            }

            dispatch_get_specific(*v10);
            v69 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_94;
            }

            v70 = *(a2 + 1200);
            v71 = *(a2 + 1201);
            v72 = *(a2 + 1202);
            *buf = 136447234;
            v76 = "_NFDriverEosUpdateJCOPVersion";
            v77 = 1024;
            v78 = 171;
            v79 = 1024;
            *v80 = v70;
            *&v80[4] = 1024;
            *&v80[6] = v71;
            v81 = 1024;
            v82 = v72;
            v53 = "%{public}s:%i major = %d, minor %d, build = %d";
            v54 = v69;
            v55 = OS_LOG_TYPE_DEFAULT;
            v56 = 36;
          }
        }

        _os_log_impl(&dword_297F97000, v54, v55, v53, buf, v56);
LABEL_94:
        NFDataRelease();
LABEL_99:
        v59 = sub_297FA2304(a1, 0, 0xFEu, 0xDF21u, 0);
        if (v59)
        {
          v60 = *(v59 + 8);
          if (v60 < 0x19)
          {
            memcpy((a2 + 1152), *v59, v60);
          }

          else
          {
            dispatch_get_specific(*v10);
            v61 = NFLogGetLogger();
            if (v61)
            {
              v61(4, "%s:%i serial number too long: %ld", "GetJCOPOSSerialNumber", 188, v60);
            }

            dispatch_get_specific(*v10);
            v62 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v76 = "GetJCOPOSSerialNumber";
              v77 = 1024;
              v78 = 188;
              v79 = 2048;
              *v80 = v60;
              _os_log_impl(&dword_297F97000, v62, OS_LOG_TYPE_ERROR, "%{public}s:%i serial number too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          dispatch_get_specific(*v10);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v63(4, "%s:%i Failed to get serial number", "GetJCOPOSSerialNumber", 183);
          }

          dispatch_get_specific(*v10);
          v64 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v76 = "GetJCOPOSSerialNumber";
            v77 = 1024;
            v78 = 183;
            _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get serial number", buf, 0x12u);
          }
        }

        if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
        {
          sub_297FA30D8(a1, 0, a2);
        }

        return 1;
      case 0x9000u:
        *(a2 + 1255) = 0;
        goto LABEL_57;
      case 0x66A5u:
        dispatch_get_specific(*v10);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v24(5, "%s:%i Restricted Mode detected", "GetOSInfo_Eos", 241);
        }

        dispatch_get_specific(*v10);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v76 = "GetOSInfo_Eos";
          v77 = 1024;
          v78 = 241;
          _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restricted Mode detected", buf, 0x12u);
        }

        *(a2 + 1255) = 1;
        goto LABEL_57;
    }

    dispatch_get_specific(*v10);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v40(3, "%s:%i Returned error: 0x%04x", "GetOSInfo_Eos", 249, v73);
    }

    dispatch_get_specific(*v10);
    v41 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      v76 = "GetOSInfo_Eos";
      v77 = 1024;
      v78 = 249;
      v79 = 1024;
      *v80 = v73;
      v8 = "%{public}s:%i Returned error: 0x%04x";
      v27 = v41;
      v28 = 24;
      goto LABEL_45;
    }
  }

  return result;
}

BOOL sub_297FADAE8(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  if (!a1)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "GetOSMode_Eos", 347, "se");
    }

    dispatch_get_specific(*v2);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "GetOSMode_Eos";
      v29 = 1024;
      v30 = 347;
      v31 = 2080;
      v32 = "se";
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  *(a2 + 1220) = 7;
  *(a2 + 1224) = *(a1 + 20);
  dispatch_get_specific(*v2);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v5(6, "%s:%i SELECT OS Update AID", "GetOSMode_Eos", 352);
  }

  dispatch_get_specific(*v2);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "GetOSMode_Eos";
    v29 = 1024;
    v30 = 352;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SELECT OS Update AID", buf, 0x12u);
  }

  v7 = NFDataCreateWithBytes();
  v8 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 0, 164, 4, 0, 0, v7);
  NFDataRelease();
  if (v8)
  {
    v9 = v8[1];
    if (v9 < 2)
    {
      v10 = 0;
LABEL_22:
      dispatch_get_specific(*v2);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Unexpected status: 0x%X", "GetOSMode_Eos", 403, v10);
      }

      dispatch_get_specific(*v2);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v28 = "GetOSMode_Eos";
        v29 = 1024;
        v30 = 403;
        v31 = 1024;
        LODWORD(v32) = v10;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected status: 0x%X", buf, 0x18u);
      }

      v18 = 0;
LABEL_27:
      *(a2 + 1204) = v18;
      NFDataRelease();
      dword_2A18BD374 = *(a2 + 1204);
      return v8 != 0;
    }

    v13 = *v8;
    v10 = __rev16(*(*v8 + v9 - 2));
    if (v10 != 36864)
    {
      goto LABEL_22;
    }

    if (v9 <= 0x24)
    {
      if (*(a2 + 1253))
      {
LABEL_16:
        v15 = *(a2 + 1254);
        dispatch_get_specific(*v2);
        v16 = NFLogGetLogger();
        if (v15)
        {
          if (v16)
          {
            v16(6, "%s:%i Note : OS mode is JCOP", "GetOSMode_Eos", 398);
          }

          dispatch_get_specific(*v2);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v28 = "GetOSMode_Eos";
            v29 = 1024;
            v30 = 398;
            _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is JCOP", buf, 0x12u);
          }

          v18 = 2;
        }

        else
        {
          if (v16)
          {
            v16(6, "%s:%i Note : OS mode is System only", "GetOSMode_Eos", 395);
          }

          dispatch_get_specific(*v2);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v28 = "GetOSMode_Eos";
            v29 = 1024;
            v30 = 395;
            _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is System only", buf, 0x12u);
          }

          v18 = 3;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v14 = *(v13 + 9);
      *(a2 + 1253) = v14;
      *(a2 + 1242) = bswap32(*(v13 + 10)) >> 16;
      *(a2 + 1254) = *(v13 + 12);
      *(a2 + 1244) = bswap32(*(v13 + 13)) >> 16;
      *(a2 + 1232) = *(v13 + 17);
      *(a2 + 1252) = *(v13 + 18);
      *(a2 + 1228) = bswap32(*(v13 + 19));
      if (v14)
      {
        goto LABEL_16;
      }
    }

    dispatch_get_specific(*v2);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(6, "%s:%i Note : OS mode is Boot Loader", "GetOSMode_Eos", 392);
    }

    dispatch_get_specific(*v2);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v28 = "GetOSMode_Eos";
      v29 = 1024;
      v30 = 392;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is Boot Loader", buf, 0x12u);
    }

    v18 = 1;
    goto LABEL_27;
  }

  dispatch_get_specific(*v2);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Failed to select", "GetOSMode_Eos", 367);
  }

  dispatch_get_specific(*v2);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v28 = "GetOSMode_Eos";
    v29 = 1024;
    v30 = 367;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to select", buf, 0x12u);
  }

  return v8 != 0;
}

uint64_t sub_297FAE090(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  if (!v2)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Allocation failure", "GetOSUpdateLog_Eos", 427);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "GetOSUpdateLog_Eos";
      v27 = 1024;
      v28 = 427;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v3);
    v7 = v6;
    if (!v6 || (v8 = v6[1], v8 <= 1))
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Failed to get data", "GetOSUpdateLog_Eos", 439);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v26 = "GetOSUpdateLog_Eos";
        v27 = 1024;
        v28 = 439;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
      }

      if (v7)
      {
LABEL_22:
        NFDataRelease();
      }

      NFDataRelease();
      if (!v5)
      {
        return 0;
      }

      return NFDataCreateWithBytesNoCopy();
    }

    v9 = __rev16(*(*v6 + v8 - 2));
    if (v9 != 36864 && v9 != 25360)
    {
      v22 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(4, "%s:%i Got error 0x%2X", "GetOSUpdateLog_Eos", 458, v9);
      }

      dispatch_get_specific(*v22);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "GetOSUpdateLog_Eos";
        v27 = 1024;
        v28 = 458;
        v29 = 1024;
        v30 = v9;
        _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
      }

      goto LABEL_22;
    }

    v11 = reallocf(v5, v8 + v4 - 2);
    if (!v11)
    {
      break;
    }

    v5 = v11;
    memcpy(&v11[v4], *v7, v7[1] - 2);
    v4 = v4 + *(v7 + 2) - 2;
    NFDataRelease();
    if (v9 != 25360)
    {
      NFDataRelease();
      return NFDataCreateWithBytesNoCopy();
    }
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Allocation failure", "GetOSUpdateLog_Eos", 449);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v26 = "GetOSUpdateLog_Eos";
    v27 = 1024;
    v28 = 449;
    _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
  }

  NFDataRelease();
  NFDataRelease();
  return 0;
}

BOOL sub_297FAE4B8(uint64_t a1, void *a2, uint64_t *a3)
{
  result = 0;
  v39 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    *a3 = 0;
    v7 = NFDataCreateWithBytes();
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v8);
        v12 = v11;
        if (!v11)
        {
          break;
        }

        v13 = v11[1];
        if (v13 <= 1)
        {
          break;
        }

        v14 = __rev16(*(*v11 + v13 - 2));
        if (v14 != 36864 && v14 != 25360)
        {
          v30 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(4, "%s:%i Got error 0x%2X", "GetAttackCounterLog_Eos", 561, v14);
          }

          dispatch_get_specific(*v30);
          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v34 = "GetAttackCounterLog_Eos";
            v35 = 1024;
            v36 = 561;
            v37 = 1024;
            v38 = v14;
            _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
          }

LABEL_24:
          NFDataRelease();
          goto LABEL_25;
        }

        v16 = reallocf(v10, v13 + v9 - 2);
        if (!v16)
        {
          v27 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v28(3, "%s:%i Allocation failure", "GetAttackCounterLog_Eos", 552);
          }

          dispatch_get_specific(*v27);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v34 = "GetAttackCounterLog_Eos";
            v35 = 1024;
            v36 = 552;
            _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
          }

          NFDataRelease();
          NFDataRelease();
          return 0;
        }

        v10 = v16;
        memcpy(&v16[v9], *v12, v12[1] - 2);
        v9 = v9 + *(v12 + 2) - 2;
        NFDataRelease();
        if (v14 != 25360)
        {
          NFDataRelease();
          goto LABEL_26;
        }
      }

      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i Failed to get data", "GetAttackCounterLog_Eos", 542);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v34 = "GetAttackCounterLog_Eos";
        v35 = 1024;
        v36 = 542;
        _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
      }

      if (v12)
      {
        goto LABEL_24;
      }

LABEL_25:
      NFDataRelease();
      if (!v10)
      {
        return 0;
      }

LABEL_26:
      v23 = malloc_type_calloc(2uLL, 0x10uLL, 0x10200403A5D3213uLL);
      if (!v23)
      {
        free(v10);
        return 0;
      }

      v24 = v23;
      v23[2] = 57126;
      v25 = 1;
      *v23 = NFDataCreateWithBytesNoCopy();
      v26 = sub_297FAF560(a1);
      if (v26)
      {
        v24[6] = 57162;
        *(v24 + 2) = v26;
        v25 = 2;
      }

      *a2 = v24;
      *a3 = v25;
      return 1;
    }

    else
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(3, "%s:%i Allocation failure", "GetAttackCounterLog_Eos", 530);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v34 = "GetAttackCounterLog_Eos";
        v35 = 1024;
        v36 = 530;
        _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_297FAE968(uint64_t a1, _BYTE *a2)
{
  *(&v84[3] + 4) = *MEMORY[0x29EDCA608];
  if (a2)
  {
    *a2 = 0;
  }

  if (!sub_297FAF560(a1))
  {
    LOBYTE(v6) = 0;
    v4 = 0;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_110;
  }

  v3 = TLVCreateWithData();
  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = MEMORY[0x29EDC9730];
    while (1)
    {
      v8 = *(v5 + 32);
      if (v8 != 128)
      {
        goto LABEL_31;
      }

      v9 = *(v5 + 40);
      if (v9 && v9[1])
      {
        v10 = **v9;
        dispatch_get_specific(*v7);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          if (v10 == 90)
          {
            v12 = "YES";
          }

          else
          {
            v12 = "NO";
          }

          Logger(6, "%s:%i Primary = %s", "GetPresenceOfAttackLog_Eos", 621, v12);
        }

        v6 |= v10 == 90;
        dispatch_get_specific(*v7);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 136446722;
        if (v10 == 90)
        {
          v14 = "YES";
        }

        else
        {
          v14 = "NO";
        }

        v80 = "GetPresenceOfAttackLog_Eos";
        v81 = 1024;
        v82 = 621;
        v83 = 2080;
        v84[0] = v14;
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = "%{public}s:%i Primary = %s";
        v18 = 28;
      }

      else
      {
        dispatch_get_specific(*v7);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v20 = *(v5 + 40);
          if (v20)
          {
            v21 = *(v20 + 8);
          }

          else
          {
            v21 = -1;
          }

          v19(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 623, *(v5 + 32), v21);
        }

        dispatch_get_specific(*v7);
        v22 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v23 = *(v5 + 40);
        if (v23)
        {
          v24 = *(v23 + 8);
        }

        else
        {
          v24 = -1;
        }

        v25 = *(v5 + 32);
        *buf = 136446978;
        v80 = "GetPresenceOfAttackLog_Eos";
        v81 = 1024;
        v82 = 623;
        v83 = 1024;
        LODWORD(v84[0]) = v25;
        WORD2(v84[0]) = 2048;
        *(v84 + 6) = v24;
        v15 = v22;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
        v18 = 34;
      }

      _os_log_impl(&dword_297F97000, v15, v16, v17, buf, v18);
LABEL_30:
      v8 = *(v5 + 32);
LABEL_31:
      if (v8 != 144)
      {
        goto LABEL_55;
      }

      v26 = *(v5 + 40);
      if (v26 && v26[1])
      {
        v27 = **v26;
        dispatch_get_specific(*v7);
        v28 = NFLogGetLogger();
        if (v28)
        {
          if (v27 == 90)
          {
            v29 = "YES";
          }

          else
          {
            v29 = "NO";
          }

          v28(6, "%s:%i JCOP1 = %s", "GetPresenceOfAttackLog_Eos", 631, v29);
        }

        v6 |= v27 == 90;
        dispatch_get_specific(*v7);
        v30 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          if (v27 == 90)
          {
            v31 = "YES";
          }

          else
          {
            v31 = "NO";
          }

          v80 = "GetPresenceOfAttackLog_Eos";
          v81 = 1024;
          v82 = 631;
          v83 = 2080;
          v84[0] = v31;
          v32 = v30;
          v33 = OS_LOG_TYPE_DEFAULT;
          v34 = "%{public}s:%i JCOP1 = %s";
          v35 = 28;
LABEL_54:
          _os_log_impl(&dword_297F97000, v32, v33, v34, buf, v35);
        }
      }

      else
      {
        dispatch_get_specific(*v7);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = *(v5 + 40);
          if (v37)
          {
            v38 = *(v37 + 8);
          }

          else
          {
            v38 = -1;
          }

          v36(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 633, *(v5 + 32), v38);
        }

        dispatch_get_specific(*v7);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(v5 + 40);
          if (v40)
          {
            v41 = *(v40 + 8);
          }

          else
          {
            v41 = -1;
          }

          v42 = *(v5 + 32);
          *buf = 136446978;
          v80 = "GetPresenceOfAttackLog_Eos";
          v81 = 1024;
          v82 = 633;
          v83 = 1024;
          LODWORD(v84[0]) = v42;
          WORD2(v84[0]) = 2048;
          *(v84 + 6) = v41;
          v32 = v39;
          v33 = OS_LOG_TYPE_ERROR;
          v34 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
          v35 = 34;
          goto LABEL_54;
        }
      }

LABEL_55:
      v43 = *(v5 + 32);
      if (v43 != 160)
      {
        goto LABEL_80;
      }

      v44 = *(v5 + 40);
      if (v44 && v44[1])
      {
        v45 = **v44;
        dispatch_get_specific(*v7);
        v46 = NFLogGetLogger();
        if (v46)
        {
          if (v45 == 90)
          {
            v47 = "YES";
          }

          else
          {
            v47 = "NO";
          }

          v46(6, "%s:%i EUICC = %s", "GetPresenceOfAttackLog_Eos", 641, v47);
        }

        v6 |= v45 == 90;
        dispatch_get_specific(*v7);
        v48 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_79;
        }

        *buf = 136446722;
        if (v45 == 90)
        {
          v49 = "YES";
        }

        else
        {
          v49 = "NO";
        }

        v80 = "GetPresenceOfAttackLog_Eos";
        v81 = 1024;
        v82 = 641;
        v83 = 2080;
        v84[0] = v49;
        v50 = v48;
        v51 = OS_LOG_TYPE_DEFAULT;
        v52 = "%{public}s:%i EUICC = %s";
        v53 = 28;
      }

      else
      {
        dispatch_get_specific(*v7);
        v54 = NFLogGetLogger();
        if (v54)
        {
          v55 = *(v5 + 40);
          if (v55)
          {
            v56 = *(v55 + 8);
          }

          else
          {
            v56 = -1;
          }

          v54(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 643, *(v5 + 32), v56);
        }

        dispatch_get_specific(*v7);
        v57 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        v58 = *(v5 + 40);
        if (v58)
        {
          v59 = *(v58 + 8);
        }

        else
        {
          v59 = -1;
        }

        v60 = *(v5 + 32);
        *buf = 136446978;
        v80 = "GetPresenceOfAttackLog_Eos";
        v81 = 1024;
        v82 = 643;
        v83 = 1024;
        LODWORD(v84[0]) = v60;
        WORD2(v84[0]) = 2048;
        *(v84 + 6) = v59;
        v50 = v57;
        v51 = OS_LOG_TYPE_ERROR;
        v52 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
        v53 = 34;
      }

      _os_log_impl(&dword_297F97000, v50, v51, v52, buf, v53);
LABEL_79:
      v43 = *(v5 + 32);
LABEL_80:
      if (v43 == 129)
      {
        v61 = *(v5 + 40);
        if (v61 && v61[1])
        {
          v62 = **v61;
          dispatch_get_specific(*v7);
          v63 = NFLogGetLogger();
          if (v63)
          {
            if (v62 == 90)
            {
              v64 = "YES";
            }

            else
            {
              v64 = "NO";
            }

            v63(6, "%s:%i Secondary = %s", "GetPresenceOfAttackLog_Eos", 651, v64);
          }

          v6 |= v62 == 90;
          dispatch_get_specific(*v7);
          v65 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_104;
          }

          *buf = 136446722;
          if (v62 == 90)
          {
            v66 = "YES";
          }

          else
          {
            v66 = "NO";
          }

          v80 = "GetPresenceOfAttackLog_Eos";
          v81 = 1024;
          v82 = 651;
          v83 = 2080;
          v84[0] = v66;
          v67 = v65;
          v68 = OS_LOG_TYPE_DEFAULT;
          v69 = "%{public}s:%i Secondary = %s";
          v70 = 28;
        }

        else
        {
          dispatch_get_specific(*v7);
          v71 = NFLogGetLogger();
          if (v71)
          {
            v72 = *(v5 + 40);
            if (v72)
            {
              v73 = *(v72 + 8);
            }

            else
            {
              v73 = -1;
            }

            v71(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 653, *(v5 + 32), v73);
          }

          dispatch_get_specific(*v7);
          v74 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_104;
          }

          v75 = *(v5 + 40);
          if (v75)
          {
            v76 = *(v75 + 8);
          }

          else
          {
            v76 = -1;
          }

          v77 = *(v5 + 32);
          *buf = 136446978;
          v80 = "GetPresenceOfAttackLog_Eos";
          v81 = 1024;
          v82 = 653;
          v83 = 1024;
          LODWORD(v84[0]) = v77;
          WORD2(v84[0]) = 2048;
          *(v84 + 6) = v76;
          v67 = v74;
          v68 = OS_LOG_TYPE_ERROR;
          v69 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
          v70 = 34;
        }

        _os_log_impl(&dword_297F97000, v67, v68, v69, buf, v70);
      }

LABEL_104:
      v5 = *(v5 + 24);
      if (!v5)
      {
        TLVRelease();
        v4 = v4;
        goto LABEL_109;
      }
    }
  }

  LOBYTE(v6) = 0;
LABEL_109:
  NFDataRelease();
  if (a2)
  {
LABEL_110:
    *a2 = v6 & 1;
  }

  return v4;
}

BOOL sub_297FAF108(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = NFDataCreateWithBytes();
  v5 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v4);
  NFDataRelease();
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 < 2)
    {
      v7 = 0;
LABEL_14:
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i AID_MANIFESTQUERY returned error: 0x%04x", "GetManifestQuery_Eos", 53, v7);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v23 = "GetManifestQuery_Eos";
        v24 = 1024;
        v25 = 53;
        v26 = 1024;
        LODWORD(v27) = v7;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i AID_MANIFESTQUERY returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      return 0;
    }

    v12 = *v5;
    v7 = __rev16(*(*v5 + v6 - 2));
    if (v7 != 36864)
    {
      goto LABEL_14;
    }

    v13 = v6 - 2;
    if (v13)
    {
      if (v13 >= 0x100)
      {
        v21 = 256;
      }

      else
      {
        v21 = v13;
      }

      *(a2 + 1250) = v21;
      memcpy((a2 + 816), v12, v21);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Incorrect manifest query length: %zu", "GetManifestQuery_Eos", 63, *(v5 + 8));
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v5 + 8);
        *buf = 136446722;
        v23 = "GetManifestQuery_Eos";
        v24 = 1024;
        v25 = 63;
        v26 = 2048;
        v27 = v17;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect manifest query length: %zu", buf, 0x1Cu);
      }
    }

    NFDataRelease();
    return 1;
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_Eos", 48);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v23 = "GetManifestQuery_Eos";
      v24 = 1024;
      v25 = 48;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get ManifestQuery", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

BOOL sub_297FAF440(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = (dword_2A18BD374 & 0xFFFFFFFD) == 1 && a2 == 0;
  if ((a2 == 0) != v2 && dword_2A18BD374 == 0)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i WARNING ! Do not send data to JCOP in unknown state !!!!!", "IsOSReady_Eos", 697);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "IsOSReady_Eos";
      v10 = 1024;
      v11 = 697;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i WARNING ! Do not send data to JCOP in unknown state !!!!!", buf, 0x12u);
    }
  }

  return !v2;
}

uint64_t sub_297FAF560(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  if (v2)
  {
    v3 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v2);
    v4 = v3;
    if (v3)
    {
      v5 = v3[1];
      if (v5 >= 8 && __rev16(*(*v3 + v5 - 2)) == 36864)
      {
        v13 = NFDataCreateWithBytes();
LABEL_27:
        NFDataRelease();
        NFDataRelease();
        return v13;
      }

      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = v4[1];
        if (v8 >= 2)
        {
          v9 = __rev16(*(*v4 + v8 - 2));
        }

        else
        {
          v9 = 0;
        }

        Logger(3, "%s:%i Query AC log presence failed with 0x%02X", "_getACLogPresence", 502, v9);
      }

      dispatch_get_specific(*v6);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v13 = 0;
        goto LABEL_27;
      }

      v21 = v4[1];
      if (v21 >= 2)
      {
        v22 = __rev16(*(*v4 + v21 - 2));
      }

      else
      {
        v22 = 0;
      }

      *buf = 136446722;
      v25 = "_getACLogPresence";
      v26 = 1024;
      v27 = 502;
      v28 = 1024;
      v29 = v22;
      v17 = "%{public}s:%i Query AC log presence failed with 0x%02X";
      v18 = v20;
      v19 = 24;
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Unable to get presence of AC log", "_getACLogPresence", 495);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v25 = "_getACLogPresence";
      v26 = 1024;
      v27 = 495;
      v17 = "%{public}s:%i Unable to get presence of AC log";
      v18 = v16;
      v19 = 18;
    }

    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_26;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Allocation failure", "_getACLogPresence", 485);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v25 = "_getACLogPresence";
    v26 = 1024;
    v27 = 485;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
  }

  return 0;
}

BOOL sub_297FAF8A0(uint64_t a1)
{
  if (a1)
  {
    dword_2A18BD370 = 0;
    *(a1 + 32) = sub_297FAF950;
    *(a1 + 40) = sub_297FAF958;
    *(a1 + 48) = sub_297FAF9B0;
    *(a1 + 56) = sub_297FAFE8C;
    *(a1 + 64) = sub_297FAFE90;
    *(a1 + 72) = sub_297FB0490;
    *(a1 + 88) = sub_297FB0630;
    *(a1 + 80) = sub_297FB0C88;
    *(a1 + 96) = sub_297FB0C90;
    *(a1 + 104) = 0;
    *(a1 + 20) = 2;
  }

  return a1 != 0;
}

BOOL sub_297FAF958(void *a1, uint64_t a2)
{
  result = sub_297FA3B84(a1, a2, 0, 0);
  if (result)
  {

    return sub_297FB0630(a1, a2);
  }

  return result;
}

BOOL sub_297FAF9B0(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  *(a2 + 1220) = 7;
  *(a2 + 1224) = *(a1 + 5);
  v24 = 0;
  v4 = MEMORY[0x29EDC9730];
  if (dword_2A18BD370 == 2)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i SELECT: ISD", "GetOSMode_P73", 127);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v26 = "GetOSMode_P73";
      v27 = 1024;
      v28 = 127;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SELECT: ISD", buf, 0x12u);
    }

    v7 = NFDataCreateWithBytes();
    if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v7, &v24))
    {
      dispatch_get_specific(*v4);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Returned error: 0x%04x", "GetOSMode_P73", 130, v24);
      }

      dispatch_get_specific(*v4);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "GetOSMode_P73";
        v27 = 1024;
        v28 = 130;
        v29 = 1024;
        LODWORD(v30) = v24;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
      }

LABEL_23:
      NFDataRelease();
      return 0;
    }

    NFDataRelease();
  }

  dispatch_get_specific(*v4);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(6, "%s:%i GET OS MODE", "GetOSMode_P73", 137);
  }

  dispatch_get_specific(*v4);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "GetOSMode_P73";
    v27 = 1024;
    v28 = 137;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i GET OS MODE", buf, 0x12u);
  }

  v10 = NFDataCreateWithBytes();
  v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 0, 164, 4, 0, 0, v10);
  NFDataRelease();
  if (v11)
  {
    v12 = v11[1];
    if (v12 <= 1)
    {
      v24 = 0;
LABEL_31:
      v20 = 2;
LABEL_32:
      *(a2 + 1204) = v20;
      NFDataRelease();
      dword_2A18BD370 = *(a2 + 1204);
      return 1;
    }

    v18 = *v11;
    v19 = __rev16(*(*v11 + v12 - 2));
    v24 = v19;
    if (v19 != 36864)
    {
      goto LABEL_31;
    }

    if (v12 >= 0xF)
    {
      *(a2 + 1253) = *(v18 + 9);
      *(a2 + 1242) = bswap32(*(v18 + 10)) >> 16;
      *(a2 + 1254) = *(v18 + 12);
      if (v12 >= 0x11)
      {
        *(a2 + 1244) = bswap32(*(v18 + 13)) >> 16;
        if (v12 >= 0x15)
        {
          *(a2 + 1228) = __rev16(*(v18 + 15));
          *(a2 + 1232) = *(v18 + 17);
          *(a2 + 1252) = *(v18 + 18);
        }
      }

      v20 = 1;
      goto LABEL_32;
    }

    dispatch_get_specific(*v4);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Unexpected length: %zu", "GetOSMode_P73", 178, v11[1]);
    }

    dispatch_get_specific(*v4);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v11[1];
      *buf = 136446722;
      v26 = "GetOSMode_P73";
      v27 = 1024;
      v28 = 178;
      v29 = 2048;
      v30 = v23;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length: %zu", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  dispatch_get_specific(*v4);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Failed to select", "GetOSMode_P73", 151);
  }

  dispatch_get_specific(*v4);
  v14 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v26 = "GetOSMode_P73";
    v27 = 1024;
    v28 = 151;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to select", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_297FAFE90(void *a1, void *a2, void *a3)
{
  v3 = 0;
  v46 = *MEMORY[0x29EDCA608];
  v37 = -1;
  if (a2 && a3)
  {
    *a3 = 0;
    memset(v44, 0, 512);
    if (sub_297FAF9B0(a1, v44))
    {
      if (v45 == 2)
      {
        v7 = NFDataCreateWithBytes();
        if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v7, &v37))
        {
          v31 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(4, "%s:%i SELECT returned error: 0x%04x", "GetAttackCounterLog_P73", 219, v37);
          }

          dispatch_get_specific(*v31);
          v33 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136446722;
          v39 = "GetAttackCounterLog_P73";
          v40 = 1024;
          v41 = 219;
          v42 = 1024;
          v43 = v37;
          v24 = "%{public}s:%i SELECT returned error: 0x%04x";
          v25 = v33;
          v26 = 24;
          goto LABEL_41;
        }

        NFDataRelease();
      }

      v8 = NFDataCreateWithBytes();
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = 0;
        v12 = MEMORY[0x29EDC9730];
        while (1)
        {
          v13 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 0, 254, 0, v9);
          v14 = v13;
          if (!v13)
          {
            break;
          }

          v15 = v13[1];
          if (v15 <= 1)
          {
            break;
          }

          v16 = __rev16(*(*v13 + v15 - 2));
          v37 = v16;
          if (v16 == 36864 || v16 == 25360)
          {
            v18 = reallocf(v11, v15 + v10 - 2);
            if (!v18)
            {
              dispatch_get_specific(*v12);
              v34 = NFLogGetLogger();
              if (v34)
              {
                v34(3, "%s:%i Allocation failure", "GetAttackCounterLog_P73", 253);
              }

              dispatch_get_specific(*v12);
              v35 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v39 = "GetAttackCounterLog_P73";
                v40 = 1024;
                v41 = 253;
                _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
              }

              NFDataRelease();
              NFDataRelease();
              return 0;
            }

            v11 = v18;
            memcpy(&v18[v10], *v14, v14[1] - 2);
            v10 = v10 + *(v14 + 2) - 2;
          }

          else
          {
            dispatch_get_specific(*v12);
            v19 = NFLogGetLogger();
            if (v19)
            {
              v19(4, "%s:%i Got error 0x%2X", "GetAttackCounterLog_P73", 262, v37);
            }

            dispatch_get_specific(*v12);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v39 = "GetAttackCounterLog_P73";
              v40 = 1024;
              v41 = 262;
              v42 = 1024;
              v43 = v37;
              _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
            }
          }

          NFDataRelease();
          if (v37 != 25360)
          {
            goto LABEL_34;
          }
        }

        dispatch_get_specific(*v12);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v27(3, "%s:%i Failed to get data", "GetAttackCounterLog_P73", 243);
        }

        dispatch_get_specific(*v12);
        v28 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v39 = "GetAttackCounterLog_P73";
          v40 = 1024;
          v41 = 243;
          _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
        }

        if (v14)
        {
          NFDataRelease();
        }

LABEL_34:
        NFDataRelease();
        if (!v11)
        {
          return 0;
        }

        v29 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
        if (v29)
        {
          v30 = v29;
          v29[2] = 57126;
          v3 = 1;
          *v29 = NFDataCreateWithBytesNoCopy();
          *a2 = v30;
          *a3 = 1;
          return v3;
        }

        free(v11);
        return 0;
      }

      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i Allocation failure", "GetAttackCounterLog_P73", 232);
      }

      dispatch_get_specific(*v21);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v39 = "GetAttackCounterLog_P73";
        v40 = 1024;
        v41 = 232;
        v24 = "%{public}s:%i Allocation failure";
        v25 = v23;
        v26 = 18;
LABEL_41:
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      }
    }

    return 0;
  }

  return v3;
}

BOOL sub_297FB0490(void *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(v12, 0, 512);
  if (!sub_297FAF9B0(a1, v12))
  {
    return 0;
  }

  if (v13 != 2)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i GetPresenseOfAttackLog will only work in JCOP mode", "GetPresenseOfAttackLog_P73", 298);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "GetPresenseOfAttackLog_P73";
      v10 = 1024;
      v11 = 298;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i GetPresenseOfAttackLog will only work in JCOP mode", buf, 0x12u);
    }

    return 0;
  }

  return sub_297FA4B94(a1, a2);
}

BOOL sub_297FB0630(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v39 = 0;
  if (*(a1 + 5) == 2 && *(a2 + 1242) <= 0x117u)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Manifest Query is not supported on this OS version (sequence counter: %d)", "GetManifestQuery_P73", 37, *(a2 + 1242));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 1242);
      *buf = 136446722;
      v41 = "GetManifestQuery_P73";
      v42 = 1024;
      v43 = 37;
      v44 = 1024;
      LODWORD(v45) = v7;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Manifest Query is not supported on this OS version (sequence counter: %d)", buf, 0x18u);
    }

    return 1;
  }

  if (*(a2 + 1204) == 1)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(6, "%s:%i Selecting OSU", "GetManifestQuery_P73", 44);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v41 = "GetManifestQuery_P73";
      v42 = 1024;
      v43 = 44;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Selecting OSU", buf, 0x12u);
    }
  }

  v11 = NFDataCreateWithBytes();
  if (v11)
  {
    v12 = NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v11, &v39);
    NFDataRelease();
    if (v12)
    {
      v13 = NFDataCreateWithBytes();
      v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 0, 254, 0, v13);
      NFDataRelease();
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15 > 1)
        {
          v28 = *v14;
          v29 = __rev16(*(*v14 + v15 - 2));
          v39 = v29;
          if (v29 == 36864)
          {
            v30 = v15 - 2;
            if (v30)
            {
              if (v30 >= 0x100)
              {
                v38 = 256;
              }

              else
              {
                v38 = v30;
              }

              *(a2 + 1250) = v38;
              memcpy((a2 + 816), v28, v38);
            }

            else
            {
              v31 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v32(3, "%s:%i Incorrect manifest query length: %zu", "GetManifestQuery_P73", 90, *(v14 + 8));
              }

              dispatch_get_specific(*v31);
              v33 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = *(v14 + 8);
                *buf = 136446722;
                v41 = "GetManifestQuery_P73";
                v42 = 1024;
                v43 = 90;
                v44 = 2048;
                v45 = v34;
                _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect manifest query length: %zu", buf, 0x1Cu);
              }
            }

            NFDataRelease();
            return 1;
          }
        }

        else
        {
          v39 = 0;
        }

        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(3, "%s:%i AID_P73_MANIFESTQUERY returned error: 0x%04x", "GetManifestQuery_P73", 80, v39);
        }

        dispatch_get_specific(*v35);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v41 = "GetManifestQuery_P73";
          v42 = 1024;
          v43 = 80;
          v44 = 1024;
          LODWORD(v45) = v39;
          _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i AID_P73_MANIFESTQUERY returned error: 0x%04x", buf, 0x18u);
        }

        NFDataRelease();
        return 0;
      }

      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_P73", 75);
      }

      dispatch_get_specific(*v26);
      v18 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v41 = "GetManifestQuery_P73";
        v42 = 1024;
        v43 = 75;
        v20 = "%{public}s:%i Failed to get ManifestQuery";
        goto LABEL_29;
      }
    }

    else
    {
      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i select returned error: 0x%04x", "GetManifestQuery_P73", 59, v39);
      }

      dispatch_get_specific(*v21);
      v23 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446722;
        v41 = "GetManifestQuery_P73";
        v42 = 1024;
        v43 = 59;
        v44 = 1024;
        LODWORD(v45) = v39;
        v20 = "%{public}s:%i select returned error: 0x%04x";
        v24 = v23;
        v25 = 24;
LABEL_30:
        _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, v20, buf, v25);
        return 0;
      }
    }
  }

  else
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_P73", 52);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v41 = "GetManifestQuery_P73";
      v42 = 1024;
      v43 = 52;
      v20 = "%{public}s:%i Failed to get ManifestQuery";
LABEL_29:
      v24 = v18;
      v25 = 18;
      goto LABEL_30;
    }
  }

  return result;
}

unint64_t sub_297FB0C90(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  v3 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 0, 128, 202, 0, 254, 0, v2);
  NFDataRelease();
  if (v3 && v3[1] == 15)
  {
    v4 = bswap64(*(*v3 + 5));
    v5 = v4 / 0x3E8;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i uptimne is %llu", "GetUptime_P73", 324, v4 / 0x3E8);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v16 = "GetUptime_P73";
      v17 = 1024;
      v18 = 324;
      v19 = 2048;
      v20 = v4 / 0x3E8;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i uptimne is %llu", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      if (v3)
      {
        v11 = v3[1];
      }

      else
      {
        v11 = -1;
      }

      v10(3, "%s:%i Data length is %ld", "GetUptime_P73", 326, v11);
    }

    dispatch_get_specific(*v9);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v13 = v3[1];
      }

      else
      {
        v13 = -1;
      }

      *buf = 136446722;
      v16 = "GetUptime_P73";
      v17 = 1024;
      v18 = 326;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Data length is %ld", buf, 0x1Cu);
    }

    v5 = 0;
  }

  NFDataRelease();
  return v5;
}

void NFDriverRFSettingsStoreValueForTagAtOffset(uint64_t a1, unsigned int a2, int a3, unsigned int a4, char a5, char a6)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + 2;
      v10 = bswap32(*(a1 + v8));
      v11 = v8 + 3;
      v12 = *(a1 + v9);
      if (a3 == HIWORD(v10))
      {
        break;
      }

      v8 = v11 + v12;
      if (v8 >= a2)
      {
        goto LABEL_5;
      }
    }

    v19 = v11 + a4;
    if (v19 < a2 && v12 > a4)
    {
      *(a1 + v19) = (*(a1 + v19) | a6) & (a5 | ~a6);
      return;
    }

    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid offset %d for tag 0x%04x", "NFDriverRFSettingsStoreValueForTagAtOffset", 87, a4, a3);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v24 = "NFDriverRFSettingsStoreValueForTagAtOffset";
      v25 = 1024;
      v26 = 87;
      v27 = 1024;
      v28 = a4;
      v29 = 1024;
      v30 = a3;
      v16 = "%{public}s:%i Invalid offset %d for tag 0x%04x";
      v17 = v22;
      v18 = 30;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Failed to find tag 0x%04x", "NFDriverRFSettingsStoreValueForTagAtOffset", 93, a3);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "NFDriverRFSettingsStoreValueForTagAtOffset";
      v25 = 1024;
      v26 = 93;
      v27 = 1024;
      v28 = a3;
      v16 = "%{public}s:%i Failed to find tag 0x%04x";
      v17 = v15;
      v18 = 24;
LABEL_9:
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    }
  }
}

UInt8 *NFDriverRFSettingsGetVendorParameters(unsigned int *a1, unsigned int *a2, const char *a3, uint64_t a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = CFDataCreate(0, *a4, *(a4 + 8));
  v8 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
  v9 = CFStringCreateWithCString(0, a3, 0x8000100u);
  v10 = CFStringCreateWithFormat(0, 0, @"%02X", *a1);
  if (a1[1] == 22)
  {
    v11 = 12;
  }

  else
  {
    v11 = 8;
  }

  v12 = CFStringCreateWithFormat(0, 0, @"%02X.%02X", a1[2], a1[3] >> v11);
  *a2 = 0;
  CFRelease(v7);
  if (!v8)
  {
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to decode plist", "NFDriverRFSettingsGetVendorParameters", 115);
    }

    dispatch_get_specific(*v28);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v40 = "NFDriverRFSettingsGetVendorParameters";
    v41 = 1024;
    v42 = 115;
    v31 = "%{public}s:%i Failed to decode plist";
LABEL_32:
    _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
    goto LABEL_33;
  }

  v13 = CFGetTypeID(v8);
  if (v13 != CFDictionaryGetTypeID())
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i Invalid format", "NFDriverRFSettingsGetVendorParameters", 120);
    }

    dispatch_get_specific(*v32);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v40 = "NFDriverRFSettingsGetVendorParameters";
    v41 = 1024;
    v42 = 120;
    v31 = "%{public}s:%i Invalid format";
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(v8, @"Config");
  if (!Value || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFArrayGetTypeID()))
  {
    v34 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v35(3, "%s:%i Invalid format", "NFDriverRFSettingsGetVendorParameters", 126);
    }

    dispatch_get_specific(*v34);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v40 = "NFDriverRFSettingsGetVendorParameters";
    v41 = 1024;
    v42 = 126;
    v31 = "%{public}s:%i Invalid format";
    goto LABEL_32;
  }

  if (CFArrayGetCount(v15) < 1)
  {
LABEL_33:
    v36 = 0;
    goto LABEL_34;
  }

  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(ValueAtIndex))
    {
      v20 = CFDictionaryGetValue(ValueAtIndex, @"HW");
      v21 = CFArrayGetTypeID();
      if (v21 == CFGetTypeID(v20))
      {
        v44.length = CFArrayGetCount(v20);
        v44.location = 0;
        if (CFArrayContainsValue(v20, v44, v10))
        {
          v22 = CFDictionaryGetValue(ValueAtIndex, @"antenna");
          v23 = CFStringGetTypeID();
          if (v23 == CFGetTypeID(v22) && CFStringCompare(v22, v9, 1uLL) == kCFCompareEqualTo)
          {
            v24 = CFDictionaryGetValue(ValueAtIndex, @"fwVersion");
            v25 = CFStringGetTypeID();
            if (v25 == CFGetTypeID(v24))
            {
              v46.location = 0;
              v46.length = 5;
              if (CFStringCompareWithOptions(v24, v12, v46, 1uLL) == kCFCompareEqualTo)
              {
                v26 = CFDictionaryGetValue(ValueAtIndex, @"settings");
                v27 = CFDataGetTypeID();
                if (v27 == CFGetTypeID(v26))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    if (CFArrayGetCount(v15) <= ++v17)
    {
      goto LABEL_33;
    }
  }

  Length = CFDataGetLength(v26);
  v36 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
  if (v36)
  {
    v45.location = 0;
    v45.length = Length;
    CFDataGetBytes(v26, v45, v36);
    *a2 = Length;
  }

LABEL_34:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v36;
}

uint64_t NFDriverConfigurRSTNDelay(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v16 = 103329;
  v15 = 33658017;
  v13 = &v16;
  v14 = 4;
  v2 = sub_297FB820C(&v13);
  v12 = v2;
  if (!v2)
  {
    return 3;
  }

  v3 = sub_297FA0380(a1, 37025, v2, 0);
  if (sub_297F9F694(v3))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to write IRQ", "NFDriverConfigurRSTNDelay", 939);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    v18 = "NFDriverConfigurRSTNDelay";
    v19 = 1024;
    v20 = 939;
    goto LABEL_7;
  }

  sub_297F9FBDC(v3);
  sub_297FA0714(&v12);
  v13 = &v15;
  LODWORD(v14) = 4;
  v8 = sub_297FB820C(&v13);
  v12 = v8;
  if (!v8)
  {
    return 3;
  }

  v3 = sub_297FA0380(a1, 37025, v8, 0);
  if (!sub_297F9F694(v3))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Failed to write IRQ", "NFDriverConfigurRSTNDelay", 955);
  }

  dispatch_get_specific(*v9);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v18 = "NFDriverConfigurRSTNDelay";
    v19 = 1024;
    v20 = 955;
LABEL_7:
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write IRQ", buf, 0x12u);
  }

LABEL_8:
  v7 = 1;
LABEL_9:
  sub_297F9FBDC(v3);
  sub_297FA0714(&v12);
  return v7;
}

uint64_t NFDriverConfigureSPMIIRQ(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 == 3)
  {
    v3 = 49;
  }

  else
  {
    v3 = 1;
  }

  v16 = 2721;
  v17 = 1;
  v18 = v3;
  v15[0] = &v16;
  if (a2 && a2 != 3)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid I/O selected", "NFDriverConfigureSPMIIRQ", 981);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "NFDriverConfigureSPMIIRQ";
      v21 = 1024;
      v22 = 981;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid I/O selected", buf, 0x12u);
    }

    return 5;
  }

  else
  {
    v15[1] = 4;
    v4 = sub_297FB820C(v15);
    v14 = v4;
    if (v4)
    {
      v5 = sub_297FA0380(a1, 37025, v4, 0);
      if (sub_297F9F694(v5))
      {
        v6 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v7 = NFLogGetLogger();
        if (v7)
        {
          v7(3, "%s:%i Failed to write IRQ", "NFDriverConfigureSPMIIRQ", 992);
        }

        dispatch_get_specific(*v6);
        v8 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v20 = "NFDriverConfigureSPMIIRQ";
          v21 = 1024;
          v22 = 992;
          _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write IRQ", buf, 0x12u);
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_297F9FBDC(v5);
      sub_297FA0714(&v14);
    }

    else
    {
      return 3;
    }
  }

  return v9;
}

uint64_t NFDriverConfigureI2CForLPM(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 1;
  v11 = 587340192;
  v10[0] = &v11;
  v10[1] = 5;
  v2 = sub_297FB820C(v10);
  v9 = v2;
  if (!v2)
  {
    return 3;
  }

  v3 = sub_297FA0380(a1, 37025, v2, 0);
  if (sub_297F9F694(v3))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to write I2C config", "NFDriverConfigureI2CForLPM", 1015);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "NFDriverConfigureI2CForLPM";
      v15 = 1024;
      v16 = 1015;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write I2C config", buf, 0x12u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_297F9FBDC(v3);
  sub_297FA0714(&v9);
  return v7;
}

uint64_t NFDriverRFSettingsSetup(uint64_t a1, const char *a2, uint64_t a3)
{
  v114 = *MEMORY[0x29EDCA608];
  memset(v90, 0, 44);
  if (!a3)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No RF settings.", "NFDriverRFSettingsSetup", 1373);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1373;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i No RF settings.", buf, 0x12u);
    }

    return 5;
  }

  if (!NFDriverGetControllerInfo(a1, v90))
  {
    return 1;
  }

  if (DWORD1(v90[0]) < 5)
  {
    return 0;
  }

  v87 = 0;
  v6 = NFCalibrationCopyAntennaName();
  v7 = MEMORY[0x29EDC9730];
  if (v6)
  {
    v8 = v6;
    NFGetProductType();
    CString = CFStringGetCString(v8, byte_2A13A5DA8, 31, 0x600u);
    dispatch_get_specific(*v7);
    v10 = NFLogGetLogger();
    if (CString)
    {
      if (v10)
      {
        v10(6, "%s:%i EDT antenna name: %s", "_NFDriverRFSettingsGetAntennaName", 1071, byte_2A13A5DA8);
      }

      dispatch_get_specific(*v7);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
        *&buf[12] = 1024;
        *&buf[14] = 1071;
        *&buf[18] = 2080;
        *&buf[20] = byte_2A13A5DA8;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EDT antenna name: %s", buf, 0x1Cu);
      }

      CFRelease(v8);
      v12 = byte_2A13A5DA8;
      goto LABEL_55;
    }

    if (v10)
    {
      v10(3, "%s:%i Failed to get antenna name from EDT : %s", "_NFDriverRFSettingsGetAntennaName", 1076, byte_2A13A5DA8);
    }

    dispatch_get_specific(*v7);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
      *&buf[12] = 1024;
      *&buf[14] = 1076;
      *&buf[18] = 2080;
      *&buf[20] = byte_2A13A5DA8;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get antenna name from EDT : %s", buf, 0x1Cu);
    }

    CFRelease(v8);
  }

  if (NFProductIsWatch())
  {
    v12 = "Bermuda";
  }

  else
  {
    v12 = "RTM";
  }

  switch(NFGetProductType())
  {
    case 0x1Bu:
    case 0x1Du:
      v12 = "BMA7A_2";
      break;
    case 0x1Cu:
    case 0x1Eu:
      v12 = "BMA7A_1";
      break;
    case 0x1Fu:
      v12 = "BMA7A_3";
      break;
    case 0x20u:
    case 0x21u:
      v12 = "BMA7B_1";
      break;
    case 0x22u:
    case 0x23u:
      v12 = "BMA7B_2";
      break;
    case 0x24u:
    case 0x26u:
      v12 = "BMA7C_2";
      break;
    case 0x25u:
    case 0x27u:
      v12 = "BMA7C_1";
      break;
    case 0x28u:
      v12 = "BMA7C_5";
      break;
    case 0x29u:
    case 0x2Bu:
      v12 = "BMA7C_4";
      break;
    case 0x2Au:
    case 0x2Cu:
      v12 = "BMA7C_3";
      break;
    case 0x36u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_3_2";
      goto LABEL_47;
    case 0x37u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_4_2";
      goto LABEL_47;
    case 0x38u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_1";
      goto LABEL_47;
    case 0x39u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_2";
LABEL_47:
      v20 = "RTM7A_xS";
      goto LABEL_48;
    case 0x3Au:
      v18 = *(a1 + 56);
      v19 = "RTM7B_3";
      goto LABEL_43;
    case 0x3Bu:
      v18 = *(a1 + 56);
      v19 = "RTM7B_4";
      goto LABEL_43;
    case 0x3Cu:
      v18 = *(a1 + 56);
      v19 = "RTM7B_1";
      goto LABEL_43;
    case 0x3Du:
      v18 = *(a1 + 56);
      v19 = "RTM7B_2";
LABEL_43:
      v20 = "RTM7B_xS";
      goto LABEL_48;
    case 0x3Eu:
      v18 = *(a1 + 56);
      v19 = "RTM7C_1";
      v20 = "RTM7C_1S";
      goto LABEL_48;
    case 0x3Fu:
      v18 = *(a1 + 56);
      v19 = "RTM7C_2";
      v20 = "RTM7C_2S";
      goto LABEL_48;
    case 0x40u:
      v18 = *(a1 + 56);
      v19 = "RTM7C_3";
      v20 = "RTM7C_3S";
      goto LABEL_48;
    case 0x41u:
      v18 = *(a1 + 56);
      v19 = "RTM7C_4";
      v20 = "RTM7C_4S";
LABEL_48:
      if (v18)
      {
        v12 = v20;
      }

      else
      {
        v12 = v19;
      }

      break;
    case 0x43u:
      v12 = "RTM7C_5";
      break;
    default:
      break;
  }

  dispatch_get_specific(*v7);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i Using default antenna name %s", "_NFDriverRFSettingsGetAntennaName", 1362, v12);
  }

  dispatch_get_specific(*v7);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
    *&buf[12] = 1024;
    *&buf[14] = 1362;
    *&buf[18] = 2080;
    *&buf[20] = v12;
    _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using default antenna name %s", buf, 0x1Cu);
  }

LABEL_55:
  VendorParameters = NFDriverRFSettingsGetVendorParameters(v90, &v87, v12, a3);
  v24 = v87;
  dispatch_get_specific(*v7);
  v25 = NFLogGetLogger();
  if (VendorParameters && v24)
  {
    if (v25)
    {
      v25(6, "%s:%i Pushing vendor RF settings for %s", "NFDriverRFSettingsSetup", 1392, v12);
    }

    dispatch_get_specific(*v7);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1392;
      *&buf[18] = 2080;
      *&buf[20] = v12;
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Pushing vendor RF settings for %s", buf, 0x1Cu);
    }

    if (sub_297FB873C(a1, VendorParameters, v87, 1))
    {
      dispatch_get_specific(*v7);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i Failed to push builtin RF settings.", "NFDriverRFSettingsSetup", 1394);
      }

      dispatch_get_specific(*v7);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverRFSettingsSetup";
        *&buf[12] = 1024;
        *&buf[14] = 1394;
        _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push builtin RF settings.", buf, 0x12u);
      }

      free(VendorParameters);
      return 1;
    }

    free(VendorParameters);
  }

  else
  {
    if (v25)
    {
      v25(4, "%s:%i No vendor RF settings found for %s!", "NFDriverRFSettingsSetup", 1400, v12);
    }

    dispatch_get_specific(*v7);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1400;
      *&buf[18] = 2080;
      *&buf[20] = v12;
      _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i No vendor RF settings found for %s!", buf, 0x1Cu);
    }
  }

  v30 = sub_297FB4FD8(a1, v90, a2);
  v16 = 8;
  if (v30 <= 0xB && ((1 << v30) & 0xE01) != 0)
  {
    if (*(a1 + 56))
    {
      return 0;
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(buffer, 0, sizeof(buffer));
    *theString = 0u;
    *v89 = 0u;
    v32 = &off_29EE87860;
    v33 = 46;
    v34 = NFGetProductType();
    while (*(v32 - 10) != v34)
    {
      v32 += 6;
      if (!--v33)
      {
        goto LABEL_88;
      }
    }

    if (v34)
    {
      dispatch_get_specific(*v7);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v35(6, "%s:%i Using local RF settings", "_NFDriverRFSettingsSetup", 750);
      }

      dispatch_get_specific(*v7);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v97 = 136446466;
        *&v97[4] = "_NFDriverRFSettingsSetup";
        *&v97[12] = 1024;
        *&v97[14] = 750;
        _os_log_impl(&dword_297F97000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using local RF settings", v97, 0x12u);
      }

      CStringPtr = *(v32 - 1);
      v38 = *v32;
      goto LABEL_135;
    }

LABEL_88:
    RFConfigTLVs = NFCalibrationGetRFConfigTLVs();
    dispatch_get_specific(*v7);
    v40 = NFLogGetLogger();
    if (!RFConfigTLVs)
    {
      if (v40)
      {
        v40(4, "%s:%i No custom RF settings found!", "_NFDriverRFSettingsSetup", 825);
      }

      dispatch_get_specific(*v7);
      v46 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *v97 = 136446466;
      *&v97[4] = "_NFDriverRFSettingsSetup";
      *&v97[12] = 1024;
      *&v97[14] = 825;
      v47 = "%{public}s:%i No custom RF settings found!";
      v48 = v97;
      goto LABEL_104;
    }

    if (v40)
    {
      v40(6, "%s:%i Using EDT RF settings", "_NFDriverRFSettingsSetup", 756);
    }

    dispatch_get_specific(*v7);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v97 = 136446466;
      *&v97[4] = "_NFDriverRFSettingsSetup";
      *&v97[12] = 1024;
      *&v97[14] = 756;
      _os_log_impl(&dword_297F97000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using EDT RF settings", v97, 0x12u);
    }

    if (theString[0])
    {
      CStringPtr = CFStringGetCStringPtr(theString[0], 0x600u);
      if (!CStringPtr)
      {
        CStringPtr = buf;
        if (!CFStringGetCString(theString[0], buf, 256, 0x600u))
        {
          dispatch_get_specific(*v7);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v42(3, "%s:%i failed to get clock TLV", "_NFDriverRFSettingsSetup", 769);
          }

          dispatch_get_specific(*v7);
          v43 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_159;
          }

          *v97 = 136446466;
          *&v97[4] = "_NFDriverRFSettingsSetup";
          *&v97[12] = 1024;
          *&v97[14] = 769;
          v44 = "%{public}s:%i failed to get clock TLV";
          v45 = v97;
LABEL_156:
          v53 = v43;
          v54 = OS_LOG_TYPE_ERROR;
          goto LABEL_157;
        }
      }
    }

    else
    {
      CStringPtr = buf;
    }

    if (theString[1])
    {
      v49 = CFStringGetCStringPtr(theString[1], 0x600u);
      if (v49)
      {
LABEL_109:
        v38 = v49;
LABEL_135:
        if (NFProductIsDevBoard())
        {
          v56 = *CStringPtr;
          memset(v97, 0, 44);
          if (NFDriverGetControllerInfo(a1, v97))
          {
            v57 = v56 == 0;
            if ((*&v97[4] - 7) <= 1)
            {
              dispatch_get_specific(*v7);
              v58 = NFLogGetLogger();
              if (v58)
              {
                v58(3, "%s:%i Not supported on SN100V dev boards - skipping..", "_NFDriverRFSettingsSetup", 844);
              }

              dispatch_get_specific(*v7);
              v46 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v91 = 136446466;
              v92 = "_NFDriverRFSettingsSetup";
              v93 = 1024;
              v94 = 844;
              v47 = "%{public}s:%i Not supported on SN100V dev boards - skipping..";
              v48 = v91;
LABEL_104:
              _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_ERROR, v47, v48, 0x12u);
LABEL_105:
              v16 = 0;
              goto LABEL_160;
            }

            goto LABEL_144;
          }
        }

        else
        {
          memset(v97, 0, 44);
          if (NFDriverGetControllerInfo(a1, v97))
          {
            v57 = 1;
LABEL_144:
            v59 = NFDataCreateWithHexString();
            if (v59)
            {
              v60 = v59;
              if (v38)
              {
                v61 = v57;
              }

              else
              {
                v61 = 0;
              }

              if (!v61)
              {
                v16 = 8;
LABEL_173:
                if (*(v60 + 8) > 3uLL)
                {
                  v73 = NFDataAsHexString();
                  if (v73)
                  {
                    v74 = v73;
                    dispatch_get_specific(*v7);
                    v75 = NFLogGetLogger();
                    if (v75)
                    {
                      v75(6, "%s:%i RF config to set: %s", "_NFDriverRFSettingsSetup", 881, v74);
                    }

                    dispatch_get_specific(*v7);
                    v76 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      *v91 = 136446722;
                      v92 = "_NFDriverRFSettingsSetup";
                      v93 = 1024;
                      v94 = 881;
                      v95 = 2080;
                      v96 = v74;
                      _os_log_impl(&dword_297F97000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RF config to set: %s", v91, 0x1Cu);
                    }

                    free(v74);
                  }

                  v77 = sub_297FB873C(a1, *v60, *(v60 + 8), 0);
                  if (!v77)
                  {
                    if (sub_297FB4098(a1, *v60, *(v60 + 8)))
                    {
                      v16 = 0;
                    }

                    else
                    {
                      v16 = 8;
                    }

                    goto LABEL_203;
                  }

                  v16 = v77;
                  dispatch_get_specific(*v7);
                  v78 = NFLogGetLogger();
                  if (v78)
                  {
                    v78(3, "%s:%i Failed to set RF settings.", "_NFDriverRFSettingsSetup", 890);
                  }

                  dispatch_get_specific(*v7);
                  v79 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_203;
                  }

                  *v91 = 136446466;
                  v92 = "_NFDriverRFSettingsSetup";
                  v93 = 1024;
                  v94 = 890;
                  v70 = "%{public}s:%i Failed to set RF settings.";
                  v71 = v79;
                  v72 = 18;
                }

                else
                {
                  dispatch_get_specific(*v7);
                  v67 = NFLogGetLogger();
                  if (v67)
                  {
                    v67(3, "%s:%i RF settings is too short: length=%zu", "_NFDriverRFSettingsSetup", 874, *(v60 + 8));
                  }

                  dispatch_get_specific(*v7);
                  v68 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_203;
                  }

                  v69 = *(v60 + 8);
                  *v91 = 136446722;
                  v92 = "_NFDriverRFSettingsSetup";
                  v93 = 1024;
                  v94 = 874;
                  v95 = 2048;
                  v96 = v69;
                  v70 = "%{public}s:%i RF settings is too short: length=%zu";
                  v71 = v68;
                  v72 = 28;
                }

                _os_log_impl(&dword_297F97000, v71, OS_LOG_TYPE_ERROR, v70, v91, v72);
LABEL_203:
                NFDataRelease();
                goto LABEL_160;
              }

              if (NFDataCreateWithHexString())
              {
                v62 = NFDataAppend();
                NFDataRelease();
                if (v62)
                {
                  v16 = 0;
                  goto LABEL_173;
                }

                dispatch_get_specific(*v7);
                v85 = NFLogGetLogger();
                if (v85)
                {
                  v85(3, "%s:%i Failed to merge RF settings", "_NFDriverRFSettingsSetup", 867);
                }

                dispatch_get_specific(*v7);
                v86 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_199;
                }

                *v91 = 136446466;
                v92 = "_NFDriverRFSettingsSetup";
                v93 = 1024;
                v94 = 867;
                v82 = "%{public}s:%i Failed to merge RF settings";
                v83 = v86;
                v84 = 18;
              }

              else
              {
                dispatch_get_specific(*v7);
                v80 = NFLogGetLogger();
                if (v80)
                {
                  v80(3, "%s:%i Failed to create RF settings from TLV string %s", "_NFDriverRFSettingsSetup", 859, v38);
                }

                dispatch_get_specific(*v7);
                v81 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_199;
                }

                *v91 = 136446722;
                v92 = "_NFDriverRFSettingsSetup";
                v93 = 1024;
                v94 = 859;
                v95 = 2080;
                v96 = v38;
                v82 = "%{public}s:%i Failed to create RF settings from TLV string %s";
                v83 = v81;
                v84 = 28;
              }

              _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_ERROR, v82, v91, v84);
LABEL_199:
              NFDataRelease();
              goto LABEL_159;
            }

            dispatch_get_specific(*v7);
            v65 = NFLogGetLogger();
            if (v65)
            {
              v65(3, "%s:%i Failed to create RF settings from clock TLV string %s", "_NFDriverRFSettingsSetup", 852, CStringPtr);
            }

            dispatch_get_specific(*v7);
            v66 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_159;
            }

            *v91 = 136446722;
            v92 = "_NFDriverRFSettingsSetup";
            v93 = 1024;
            v94 = 852;
            v95 = 2080;
            v96 = CStringPtr;
            v44 = "%{public}s:%i Failed to create RF settings from clock TLV string %s";
            v45 = v91;
            v53 = v66;
            v54 = OS_LOG_TYPE_ERROR;
            v64 = 28;
LABEL_158:
            _os_log_impl(&dword_297F97000, v53, v54, v44, v45, v64);
LABEL_159:
            v16 = 8;
LABEL_160:
            if (theString[0])
            {
              CFRelease(theString[0]);
            }

            if (theString[1])
            {
              CFRelease(theString[1]);
            }

            if (v89[1])
            {
              CFRelease(v89[1]);
            }

            if (v89[0])
            {
              CFRelease(v89[0]);
            }

            return v16;
          }
        }

        dispatch_get_specific(*v7);
        v63 = NFLogGetLogger();
        if (v63)
        {
          v63(3, "%s:%i Failed to get controller info", "_NFDriverRFSettingsSetup", 838);
        }

        dispatch_get_specific(*v7);
        v43 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_159;
        }

        *v91 = 136446466;
        v92 = "_NFDriverRFSettingsSetup";
        v93 = 1024;
        v94 = 838;
        v44 = "%{public}s:%i Failed to get controller info";
        v45 = v91;
        goto LABEL_156;
      }

      v38 = buffer;
      if (CFStringGetCString(theString[1], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v52(6, "%s:%i failed to get config TLV", "_NFDriverRFSettingsSetup", 785);
      }

      dispatch_get_specific(*v7);
      v51 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v97 = 136446466;
      *&v97[4] = "_NFDriverRFSettingsSetup";
      *&v97[12] = 1024;
      *&v97[14] = 785;
      v44 = "%{public}s:%i failed to get config TLV";
    }

    else if (sub_297FB3E60("JDI"))
    {
      if (!v89[1])
      {
        v38 = buffer;
        goto LABEL_135;
      }

      v49 = CFStringGetCStringPtr(v89[1], 0x600u);
      if (v49)
      {
        goto LABEL_109;
      }

      v38 = buffer;
      if (CFStringGetCString(v89[1], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v50(6, "%s:%i failed to get config TLV JDI", "_NFDriverRFSettingsSetup", 801);
      }

      dispatch_get_specific(*v7);
      v51 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v97 = 136446466;
      *&v97[4] = "_NFDriverRFSettingsSetup";
      *&v97[12] = 1024;
      *&v97[14] = 801;
      v44 = "%{public}s:%i failed to get config TLV JDI";
    }

    else
    {
      v38 = buffer;
      if (!sub_297FB3E60("LGD") || !v89[0])
      {
        goto LABEL_135;
      }

      v49 = CFStringGetCStringPtr(v89[0], 0x600u);
      if (v49)
      {
        goto LABEL_109;
      }

      v38 = buffer;
      if (CFStringGetCString(v89[0], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v55(6, "%s:%i failed to get config TLV LGD", "_NFDriverRFSettingsSetup", 818);
      }

      dispatch_get_specific(*v7);
      v51 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v97 = 136446466;
      *&v97[4] = "_NFDriverRFSettingsSetup";
      *&v97[12] = 1024;
      *&v97[14] = 818;
      v44 = "%{public}s:%i failed to get config TLV LGD";
    }

    v45 = v97;
    v53 = v51;
    v54 = OS_LOG_TYPE_DEFAULT;
LABEL_157:
    v64 = 18;
    goto LABEL_158;
  }

  return v16;
}

BOOL NFDriverRFSettingsCopy(uint64_t a1, uint64_t a2, void **a3, _WORD *a4)
{
  v7 = sub_297FB6264(a1, a2, a3, a4);
  if (v7)
  {
    __src = 0;
    v13 = 0;
    if (sub_297FB3100(a1, &__src, &v13))
    {
      v8 = v13;
      v9 = malloc_type_calloc(1uLL, v13 + *a4, 0x8F150FFBuLL);
      v10 = __src;
      if (v9)
      {
        v11 = v9;
        memcpy(v9, __src, v8);
        memcpy(&v11[v8], *a3, *a4);
        *a4 += v8;
        free(*a3);
        *a3 = v11;
      }

      free(v10);
    }
  }

  return v7;
}

BOOL sub_297FB3100(uint64_t a1, void *a2, _WORD *a3)
{
  v52 = *MEMORY[0x29EDCA608];
  v40 = 0;
  v41 = 0;
  v39 = 2401;
  v49[0] = 12;
  v49[1] = sub_297FBA6E8(a1, 1) >> 8;
  v49[2] = sub_297FBA6E8(a1, 1);
  v49[3] = sub_297FBA6E8(a1, 7) >> 8;
  v49[4] = sub_297FBA6E8(a1, 7);
  v49[5] = sub_297FBA6E8(a1, 35) >> 8;
  v49[6] = sub_297FBA6E8(a1, 35);
  v49[7] = sub_297FBA6E8(a1, 25) >> 8;
  v49[8] = sub_297FBA6E8(a1, 25);
  v49[9] = sub_297FBA6E8(a1, 30) >> 8;
  v49[10] = sub_297FBA6E8(a1, 30);
  v49[11] = sub_297FBA6E8(a1, 23) >> 8;
  v49[12] = sub_297FBA6E8(a1, 23);
  v50 = 0x13A09EA098A094A0;
  v51 = 178325664;
  memset(v48, 0, sizeof(v48));
  if ((NFDriverGetControllerInfo(a1, v48) & 1) == 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Failed to query controller info.", "_NFDriverRFSettingsGetRFProp", 207);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "_NFDriverRFSettingsGetRFProp";
      v44 = 1024;
      v45 = 207;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to query controller info.", buf, 0x12u);
    }

    return 1;
  }

  if (*&v48[4] > 6u)
  {
    *a2 = 0;
    *a3 = 0;
    v13 = sub_297FA02E4(0x19u, v49);
    v41 = v13;
    v14 = sub_297FA02E4(0xC00u, 0);
    v40 = v14;
    if (!v13 || !v14)
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(4, "%s:%i Failed to allocate buffer.", "_NFDriverRFSettingsGetRFProp", 222);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v43 = "_NFDriverRFSettingsGetRFProp";
        v44 = 1024;
        v45 = 222;
        _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer.", buf, 0x12u);
      }

      sub_297FA0714(&v41);
      sub_297FA0714(&v40);
      return 0;
    }

    v15 = sub_297FA0380(a1, 37026, v13, v14);
    v16 = sub_297F9F694(v15);
    if (v16 != 18 && v16)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to get RF settings; status=0x%04llX", "_NFDriverRFSettingsGetRFProp", 240, *v15);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *v15;
        *buf = 136446722;
        v43 = "_NFDriverRFSettingsGetRFProp";
        v44 = 1024;
        v45 = 240;
        v46 = 2048;
        v47 = v26;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings; status=0x%04llX", buf, 0x1Cu);
      }

      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, *(v40 + 2), 0x100004077774924uLL);
      v18 = v17;
      if (v17)
      {
        memcpy(v17, *v40, *(v40 + 2));
        v19 = *(v40 + 2);
LABEL_29:
        sub_297F9FBDC(v15);
        sub_297FA0714(&v41);
        sub_297FA0714(&v40);
        v41 = sub_297FA02E4(2u, &v39);
        v27 = sub_297FA02E4(0x100u, 0);
        v40 = v27;
        if (v27 && v41)
        {
          v28 = sub_297FA0380(a1, 37027, v41, v27);
          if (sub_297F9F694(v28))
          {
            v29 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v30 = NFLogGetLogger();
            if (v30)
            {
              v30(3, "%s:%i Failed to get RF settings registers.", "_NFDriverRFSettingsGetRFProp", 276);
            }

            dispatch_get_specific(*v29);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v43 = "_NFDriverRFSettingsGetRFProp";
              v44 = 1024;
              v45 = 276;
              _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings registers.", buf, 0x12u);
            }
          }

          else
          {
            v35 = malloc_type_realloc(v18, *(v40 + 2) + v19 + 5, 0x4BE86634uLL);
            if (v35)
            {
              v36 = v35;
              v37 = sub_297FBA6E8(a1, 6);
              v38 = &v36[v19];
              *v38 = __rev16(v37);
              v38[2] = *(v40 + 8) + 2;
              *&v36[(v19 + 3)] = v39;
              memcpy(&v36[(v19 + 5)], *v40, *(v40 + 2));
              LOWORD(v19) = v19 + 5 + *(v40 + 4);
              v18 = v36;
            }
          }

          sub_297FA0714(&v41);
          sub_297FA0714(&v40);
          sub_297F9FBDC(v28);
          if (v18 && v19)
          {
            *a2 = v18;
            *a3 = v19;
            return 1;
          }

          if (!v18)
          {
            return 0;
          }
        }

        else
        {
          v32 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v33 = NFLogGetLogger();
          if (v33)
          {
            v33(4, "%s:%i Failed to allocate outParams buffer.", "_NFDriverRFSettingsGetRFProp", 249);
          }

          dispatch_get_specific(*v32);
          v34 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v43 = "_NFDriverRFSettingsGetRFProp";
            v44 = 1024;
            v45 = 249;
            _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate outParams buffer.", buf, 0x12u);
          }

          sub_297FA0714(&v41);
          sub_297FA0714(&v40);
        }

        free(v18);
        return 0;
      }
    }

    LOWORD(v19) = 0;
    goto LABEL_29;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(4, "%s:%i Unsupported hardware.", "_NFDriverRFSettingsGetRFProp", 211);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v43 = "_NFDriverRFSettingsGetRFProp";
    v44 = 1024;
    v45 = 211;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Unsupported hardware.", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t NFDriverDisableBoost(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  memset(v21, 0, 44);
  v14 = -520024159;
  if (*(a1 + 58) != 1)
  {
    return 0;
  }

  if (!NFDriverGetControllerInfo(a1, v21))
  {
    return 8;
  }

  if ((DWORD1(v21[0]) - 13) < 0xFFFFFFFD)
  {
    return 0;
  }

  v3 = sub_297FA02E4(4u, &v14);
  v13 = v3;
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Disabling boost", "NFDriverDisableBoost", 1476);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "NFDriverDisableBoost";
    v17 = 1024;
    v18 = 1476;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling boost", buf, 0x12u);
  }

  v8 = sub_297FA0380(a1, 37025, v4, 0);
  if (sub_297F9F694(v8))
  {
    dispatch_get_specific(*v5);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i status=0x%04llX", "NFDriverDisableBoost", 1479, *v8);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *v8;
      *buf = 136446722;
      v16 = "NFDriverDisableBoost";
      v17 = 1024;
      v18 = 1479;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_297F9FBDC(v8);
  sub_297FA0714(&v13);
  return v2;
}

uint64_t NFDriverDisableLPCDAssist(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = sub_297FA02E4(4u, &unk_297FDB538);
  v9 = v2;
  if (!v2)
  {
    return 3;
  }

  v3 = sub_297FA0380(a1, 37025, v2, 0);
  if (sub_297F9F694(v3))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to setup LPCD_CFG", "NFDriverDisableLPCDAssist", 1502);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "NFDriverDisableLPCDAssist";
      v12 = 1024;
      v13 = 1502;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup LPCD_CFG", buf, 0x12u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_297F9FBDC(v3);
  sub_297FA0714(&v9);
  return v7;
}

uint64_t NFDriverEnableSERMPowerSave(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 12;
  v13 = 33776289;
  v2 = sub_297FA02E4(6u, &v13);
  v12 = v2;
  if (!v2)
  {
    return 3;
  }

  if ((*(*(a1 + 24) + 588) & 2) != 0)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i WARNING : Disabling SE reader mode Power save. Temperature will rise much faster !", "NFDriverEnableSERMPowerSave", 1525);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    v7 = 0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "NFDriverEnableSERMPowerSave";
      v17 = 1024;
      v18 = 1525;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i WARNING : Disabling SE reader mode Power save. Temperature will rise much faster !", buf, 0x12u);
      v7 = 0;
    }
  }

  else
  {
    v3 = sub_297FA0380(a1, 37025, v2, 0);
    if (sub_297F9F694(v3))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v5 = NFLogGetLogger();
      if (v5)
      {
        v5(3, "%s:%i Failed to setup SERM power save", "NFDriverEnableSERMPowerSave", 1533);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v16 = "NFDriverEnableSERMPowerSave";
        v17 = 1024;
        v18 = 1533;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup SERM power save", buf, 0x12u);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    sub_297F9FBDC(v3);
  }

  sub_297FA0714(&v12);
  return v7;
}

uint64_t sub_297FB3E60(const char *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 1;
  }

  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("disp0");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"bics-param-set", 0, 0);
    if (!CFProperty)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    if (v8 == CFDataGetTypeID() && CFDataGetLength(v7) >= 4)
    {
      BytePtr = CFDataGetBytePtr(v7);
      if (!strcmp("LGD", a1))
      {
        v15 = *BytePtr;
        v13 = 1;
        v16 = v15 > 0x2D || ((1 << v15) & 0x200340000500) == 0;
        if (!v16 || v15 == 93)
        {
          goto LABEL_13;
        }
      }

      else if (!strcmp("JDI", a1))
      {
        v17 = *BytePtr;
        if ((v17 - 31) <= 0x3F && ((1 << (v17 - 31)) & 0x8000000000000009) != 0 || v17 == 12)
        {
          v13 = 1;
          goto LABEL_13;
        }
      }

      else
      {
        v10 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Unknown parameter !", "watchDisplayCheck", 526);
        }

        dispatch_get_specific(*v10);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v21 = "watchDisplayCheck";
          v22 = 1024;
          v23 = 526;
          _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown parameter !", buf, 0x12u);
        }
      }
    }

    v13 = 0;
LABEL_13:
    CFRelease(v7);
LABEL_17:
    IOObjectRelease(v5);
    return v13;
  }

  return 0;
}

uint64_t sub_297FB4098(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v72 = *MEMORY[0x29EDCA608];
  v62 = 0;
  v61 = 0;
  if (!sub_297FB3100(a1, &v62, &v61))
  {
    v8 = 1;
    return v8 & 1;
  }

  v5 = v62;
  v6 = v61;
  if (NFDataCreateWithBytes())
  {
    NFDataPrintAsHexString();
    NFDataRelease();
  }

  if (!v5)
  {
    v52 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_NFDriverRFSettingsValidate", 438, "actualRfConfig");
    }

    dispatch_get_specific(*v52);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverRFSettingsValidate";
      *&buf[12] = 1024;
      *&buf[14] = 438;
      *&buf[18] = 2080;
      *&buf[20] = "actualRfConfig";
      _os_log_impl(&dword_297F97000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v7 = a3;
  v55 = v5;
  if (a3 < 3u)
  {
    v8 = 1;
    goto LABEL_7;
  }

  v10 = 0;
  v58 = v5 + 1;
  v57 = (v6 - 1);
  v8 = 1;
  v11 = 3;
  v59 = a3;
  v56 = a2;
  do
  {
    v12 = *(a2 + v10 + 2);
    if (v11 + v12 > v7)
    {
      break;
    }

    v13 = *(a2 + v10 + 1) | (*(a2 + v10) << 8);
    v60 = v11 + v12;
    if (v13 > 41065)
    {
      if (v13 > 41117)
      {
        if (v13 > 41134)
        {
          if (v13 == 41135)
          {
            v14 = "APC_CONTROL_TAG";
          }

          else
          {
            if (v13 != 41226)
            {
              goto LABEL_101;
            }

            v14 = "VGPIO_CONFIG_TAG";
          }

          goto LABEL_55;
        }

        if (v13 != 41118)
        {
          if (v13 == 41133)
          {
            v15 = "FELICA_HIGHZ_RX_TAG";
            goto LABEL_45;
          }

LABEL_101:
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v50 = NFLogGetLogger();
          if (v50)
          {
            v50(6, "%s:%i Unmatched tag 0x%04x", "_NFDriverRFSettingsNameForTag", 414, v13);
          }

          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v51 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_99;
          }

          *buf = 136446722;
          *&buf[4] = "_NFDriverRFSettingsNameForTag";
          *&buf[12] = 1024;
          *&buf[14] = 414;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          v18 = v51;
          v19 = "%{public}s:%i Unmatched tag 0x%04x";
          v20 = 24;
LABEL_50:
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
          goto LABEL_99;
        }

        v14 = "RX_CTRL";
      }

      else if (v13 > 41111)
      {
        if (v13 == 41112)
        {
          v14 = "LMA_RSSI";
        }

        else
        {
          if (v13 != 41114)
          {
            goto LABEL_101;
          }

          v14 = "GC_RSSI_THRESHOLD_TAG";
        }
      }

      else
      {
        if (v13 != 41066)
        {
          if (v13 == 41108)
          {
            v15 = "CEF_FILTERING_CONFIG_TAG";
            goto LABEL_45;
          }

          goto LABEL_101;
        }

        v14 = "PHASE_OFFSET_TAG";
      }
    }

    else if (v13 > 40976)
    {
      if (v13 > 41015)
      {
        v15 = "NFCLD_THRESHOLD_TAG";
        if (v13 == 41016)
        {
          goto LABEL_45;
        }

        if (v13 != 41064)
        {
          goto LABEL_101;
        }

        v14 = "LPCD_CONFIG_TAG";
      }

      else
      {
        if (v13 == 40977)
        {
          v15 = "CLOCK_SEL_CFG_SN100v";
LABEL_45:
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v16 = NFLogGetLogger();
          if (v16)
          {
            v16(6, "%s:%i %s(%04X) skipped", "_NFDriverRFSettingsValidate", 465, v15, v13);
          }

          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v17 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_99;
          }

          *buf = 136446978;
          *&buf[4] = "_NFDriverRFSettingsValidate";
          *&buf[12] = 1024;
          *&buf[14] = 465;
          *&buf[18] = 2080;
          *&buf[20] = v15;
          *&buf[28] = 1024;
          *&buf[30] = v13;
          v18 = v17;
          v19 = "%{public}s:%i %s(%04X) skipped";
LABEL_49:
          v20 = 34;
          goto LABEL_50;
        }

        if (v13 != 40979)
        {
          goto LABEL_101;
        }

        v14 = "PMU_CONFIG_TAG";
      }
    }

    else if (v13 > 40972)
    {
      if (v13 == 40973)
      {
        v14 = "RF_REGISTER_SETTINGS/FDT";
      }

      else
      {
        if (v13 != 40974)
        {
          goto LABEL_101;
        }

        v14 = "PMU_CFG_TAG";
      }
    }

    else
    {
      v14 = "CLOCK_SEL_CFG";
      if (v13 != 40963)
      {
        if (v13 != 40968)
        {
          goto LABEL_101;
        }

        v14 = "SPMI_CONFIG_TAG";
      }
    }

LABEL_55:
    v21 = 0;
    v22 = (a2 + v11);
    do
    {
      v23 = v21 + 3;
      if (v21 + 3 > v57 || (v24 = v58[v21 + 2], v23 + v24 > v57))
      {
        v26 = 0;
        v24 = 0;
LABEL_66:
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v29(3, "%s:%i Failed to verify %s(%04X)", "_NFDriverRFSettingsValidateTag", 338, v14, v13);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v30 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "_NFDriverRFSettingsValidateTag";
          *&buf[12] = 1024;
          *&buf[14] = 338;
          *&buf[18] = 2080;
          *&buf[20] = v14;
          *&buf[28] = 1024;
          *&buf[30] = v13;
          _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to verify %s(%04X)", buf, 0x22u);
        }

        memset(buf, 0, sizeof(buf));
        v31 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v32 = NFLogGetLogger();
        dispatch_get_specific(*v31);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v63 = 136315906;
          v64 = "_NFDriverRFSettingsValidateTag";
          v65 = 1024;
          v66 = 339;
          v67 = 2082;
          v68 = "Expected tag value : ";
          v69 = 2048;
          v70 = v12;
          _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v63, 0x26u);
        }

        if (v32)
        {
          v32(3, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsValidateTag", 339, "Expected tag value : ", v12);
        }

        if (v12)
        {
          v34 = 0;
          do
          {
            v35 = 0;
            v36 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v34)];
            do
            {
              v37 = v22[v34++];
              v38 = sprintf(v36, "0x%02X ", v37);
              if (v35 > 6)
              {
                break;
              }

              v36 += v38;
              ++v35;
            }

            while (v34 < v12);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v39 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *v63 = 136446210;
              v64 = buf;
              _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s", v63, 0xCu);
            }

            if (v32)
            {
              v32(3, "%s", buf);
            }
          }

          while (v34 < v12);
        }

        memset(buf, 0, sizeof(buf));
        v40 = v24;
        v41 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v42 = NFLogGetLogger();
        dispatch_get_specific(*v41);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *v63 = 136315906;
          v64 = "_NFDriverRFSettingsValidateTag";
          v65 = 1024;
          v66 = 340;
          v67 = 2082;
          v68 = "Received tag value : ";
          v69 = 2048;
          v70 = v24;
          _os_log_impl(&dword_297F97000, v43, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v63, 0x26u);
        }

        a2 = v56;
        if (v42)
        {
          v42(3, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsValidateTag", 340, "Received tag value : ", v24);
        }

        if (v24)
        {
          v44 = 0;
          do
          {
            v45 = 0;
            v46 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v44)];
            do
            {
              v47 = v26[v44++];
              v48 = sprintf(v46, "0x%02X ", v47);
              if (v45 > 6)
              {
                break;
              }

              v46 += v48;
              ++v45;
            }

            while (v44 < v40);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v49 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *v63 = 136446210;
              v64 = buf;
              _os_log_impl(&dword_297F97000, v49, OS_LOG_TYPE_ERROR, "%{public}s", v63, 0xCu);
            }

            if (v42)
            {
              v42(3, "%s", buf);
            }
          }

          while (v44 < v40);
        }

        v8 = 0;
        v7 = v59;
        goto LABEL_99;
      }

      v25 = v58[v21 + 1] | (v58[v21] << 8);
      v21 = v23 + v24;
    }

    while (v25 != v13);
    v26 = &v58[v23];
    if (v24 != v12)
    {
      goto LABEL_66;
    }

    v24 = v12;
    if (memcmp(v22, &v58[v23], v12))
    {
      goto LABEL_66;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(6, "%s:%i %s(%04X) is OK", "_NFDriverRFSettingsValidateTag", 344, v14, v13);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFSharedLogGetLogger();
    v7 = v59;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "_NFDriverRFSettingsValidateTag";
      *&buf[12] = 1024;
      *&buf[14] = 344;
      *&buf[18] = 2080;
      *&buf[20] = v14;
      *&buf[28] = 1024;
      *&buf[30] = v13;
      v18 = v28;
      v19 = "%{public}s:%i %s(%04X) is OK";
      goto LABEL_49;
    }

LABEL_99:
    v10 = v60;
    v11 = v60 + 3;
  }

  while (v60 + 3 <= v7);
LABEL_7:
  free(v55);
  return v8 & 1;
}

CFStringRef NFDriverCopySEIDFromFDR()
{
  v30 = *MEMORY[0x29EDCA608];
  v0 = AMFDRCreateTypeWithOptions();
  if (v0)
  {
    v1 = v0;
    v2 = AMFDRSealingMapCopyManifestProperties();
    if (v2)
    {
      v3 = v2;
      Value = CFDictionaryGetValue(v2, @"seid");
      if (Value)
      {
        v5 = Value;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v5))
        {
          Copy = CFStringCreateCopy(0, v5);
          v8 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(6, "%s:%i SEID in manifest is %@", "NFDriverCopySEIDFromFDR", 270, Copy);
          }

          dispatch_get_specific(*v8);
          v10 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v25 = "NFDriverCopySEIDFromFDR";
            v26 = 1024;
            v27 = 270;
            v28 = 2112;
            v29 = Copy;
            _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SEID in manifest is %@", buf, 0x1Cu);
          }

          goto LABEL_29;
        }

        v21 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v22(3, "%s:%i Unexpected type", "NFDriverCopySEIDFromFDR", 264);
        }

        dispatch_get_specific(*v21);
        v19 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_28:
          Copy = 0;
LABEL_29:
          CFRelease(v1);
          CFRelease(v3);
          return Copy;
        }

        *buf = 136446466;
        v25 = "NFDriverCopySEIDFromFDR";
        v26 = 1024;
        v27 = 264;
        v20 = "%{public}s:%i Unexpected type";
      }

      else
      {
        v17 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(3, "%s:%i No SEID in manifest", "NFDriverCopySEIDFromFDR", 259);
        }

        dispatch_get_specific(*v17);
        v19 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 136446466;
        v25 = "NFDriverCopySEIDFromFDR";
        v26 = 1024;
        v27 = 259;
        v20 = "%{public}s:%i No SEID in manifest";
      }

      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
      goto LABEL_28;
    }

    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i No sealing manifest", "NFDriverCopySEIDFromFDR", 252);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "NFDriverCopySEIDFromFDR";
      v26 = 1024;
      v27 = 252;
      _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i No sealing manifest", buf, 0x12u);
    }

    CFRelease(v1);
  }

  else
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i amfdr is NULL", "NFDriverCopySEIDFromFDR", 246);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "NFDriverCopySEIDFromFDR";
      v26 = 1024;
      v27 = 246;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i amfdr is NULL", buf, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_297FB4FD8(uint64_t a1, uint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(a1 + 56))
  {
    return 10;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Restoring RF", "NFDriverRFSettingsSetupSigned", 395);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "NFDriverRFSettingsSetupSigned";
    v24 = 1024;
    v25 = 395;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restoring RF", buf, 0x12u);
  }

  v9 = sub_297FB53B4(a1, @"ShMC", a3);
  if (v9)
  {
    v10 = sub_297FB5E54(a1, v9);
    NFDataRelease();
    if (!v10)
    {
      dispatch_get_specific(*v6);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Failed to write RF cal data to NFCC", "NFDriverRFSettingsSetupSigned", 404);
      }

      dispatch_get_specific(*v6);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 136446466;
      v23 = "NFDriverRFSettingsSetupSigned";
      v24 = 1024;
      v25 = 404;
LABEL_34:
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write RF cal data to NFCC", buf, 0x12u);
      return 1;
    }
  }

  else if (NFProductHasModuleCal())
  {
    dispatch_get_specific(*v6);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to read Module cal data from FDR.", "NFDriverRFSettingsSetupSigned", 409);
    }

    dispatch_get_specific(*v6);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "NFDriverRFSettingsSetupSigned";
      v24 = 1024;
      v25 = 409;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read Module cal data from FDR.", buf, 0x12u);
    }

    v15 = sub_297FB606C() == 0;
    v16 = 10;
    goto LABEL_27;
  }

  v17 = sub_297FB53B4(a1, @"ShSC", a3);
  if (v17)
  {
    v18 = sub_297FB5E54(a1, v17);
    NFDataRelease();
    if (v18)
    {
      return 0;
    }

    dispatch_get_specific(*v6);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Failed to write RF cal data to NFCC", "NFDriverRFSettingsSetupSigned", 424);
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 136446466;
    v23 = "NFDriverRFSettingsSetupSigned";
    v24 = 1024;
    v25 = 424;
    goto LABEL_34;
  }

  dispatch_get_specific(*v6);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Failed to read RF cal data from FDR.", "NFDriverRFSettingsSetupSigned", 417);
  }

  dispatch_get_specific(*v6);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v23 = "NFDriverRFSettingsSetupSigned";
    v24 = 1024;
    v25 = 417;
    _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read RF cal data from FDR.", buf, 0x12u);
  }

  v15 = sub_297FB606C() == 0;
  v16 = 11;
LABEL_27:
  if (v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

void *sub_297FB53B4(uint64_t a1, const __CFString *a2, const char *a3)
{
  v87 = *MEMORY[0x29EDCA608];
  cf = 0;
  *v64 = 0;
  UniqueFDRKey = NFDriverGetUniqueFDRKey(a1, v64);
  if (!UniqueFDRKey)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get FDR key : %d", "_NFDriverCreateInstanceNameForClassData", 286, *v64);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 286;
      *&buf[18] = 1024;
      *&buf[20] = *v64;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get FDR key : %d", buf, 0x18u);
    }

    goto LABEL_71;
  }

  v6 = UniqueFDRKey;
  if (CFStringCompare(a2, @"ShMC", 0) == kCFCompareEqualTo)
  {
    v10 = CFStringCreateWithCString(0, v6, 0x600u);
    goto LABEL_34;
  }

  if (CFStringCompare(a2, @"ShSC", 0))
  {
LABEL_4:
    free(v6);
LABEL_71:
    v53 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v54(3, "%s:%i Failed to get instance name", "_NFDriverRFSettingsReadCalDataFromFDR", 338);
    }

    dispatch_get_specific(*v53);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
      *&buf[12] = 1024;
      *&buf[14] = 338;
      _os_log_impl(&dword_297F97000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get instance name", buf, 0x12u);
    }

    return 0;
  }

  v11 = MGCopyAnswer();
  v12 = MGCopyAnswer();
  if (!v12 || !v11)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to get MG types", "_NFDriverCreateInstanceNameForClassData", 323);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 323;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get MG types", buf, 0x12u);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_4;
  }

  v13 = AMFDRCreateInstanceString();
  v14 = AMFDRCreateInstanceString();
  v15 = v14;
  if (v13 && v14)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v17 = Mutable;
    if (Mutable)
    {
      CFStringAppendCString(Mutable, v6, 0x600u);
      CFStringAppend(v17, @"-");
      CFStringAppend(v17, v13);
      CFStringAppend(v17, @"-");
      CFStringAppend(v17, v15);
    }

    CFRelease(v13);
  }

  else
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to get CF types", "_NFDriverCreateInstanceNameForClassData", 315);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 315;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get CF types", buf, 0x12u);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v17 = 0;
    v10 = 0;
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  CFRelease(v15);
  v10 = v17;
LABEL_33:
  CFRelease(v11);
  CFRelease(v12);
LABEL_34:
  free(v6);
  if (!v10)
  {
    goto LABEL_71;
  }

  v24 = sub_297FB6F0C(a2, v10, &cf, @"Local", a3);
  if (!v24)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(6, "%s:%i Failed to get FDR data from local store, trying memory", "_NFDriverRFSettingsReadCalDataFromFDR", 345);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
      *&buf[12] = 1024;
      *&buf[14] = 345;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to get FDR data from local store, trying memory", buf, 0x12u);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v24 = sub_297FB6F0C(a2, v10, &cf, @"Memory", a3);
    if (!v24)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      memset(buf, 0, sizeof(buf));
      v56 = CFErrorCopyDescription(cf);
      CFStringGetCString(v56, buf, 255, 0x8000100u);
      dispatch_get_specific(*v25);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v58 = v57;
        Code = CFErrorGetCode(cf);
        v58(3, "%s:%i Failed to get FDR data : %ld - %s", "_NFDriverRFSettingsReadCalDataFromFDR", 356, Code, buf);
      }

      dispatch_get_specific(*v25);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = CFErrorGetCode(cf);
        *v64 = 136446978;
        v65 = "_NFDriverRFSettingsReadCalDataFromFDR";
        v66 = 1024;
        v67 = 356;
        v68 = 2048;
        v69 = v61;
        v70 = 2080;
        v71 = buf;
        _os_log_impl(&dword_297F97000, v60, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get FDR data : %ld - %s", v64, 0x26u);
      }

      CFRelease(v10);
      if (v56)
      {
        CFRelease(v56);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  v28 = v24;
  if (cf)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    memset(buf, 0, sizeof(buf));
    v29 = CFErrorCopyDescription(cf);
    CFStringGetCString(v29, buf, 255, 0x8000100u);
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = CFErrorGetCode(cf);
      v32(4, "%s:%i Got FDR data but an error is set : %ld - %s", "_NFDriverRFSettingsReadCalDataFromFDR", 366, v33, buf);
    }

    dispatch_get_specific(*v30);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = CFErrorGetCode(cf);
      *v64 = 136446978;
      v65 = "_NFDriverRFSettingsReadCalDataFromFDR";
      v66 = 1024;
      v67 = 366;
      v68 = 2048;
      v69 = v35;
      v70 = 2080;
      v71 = buf;
      _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i Got FDR data but an error is set : %ld - %s", v64, 0x26u);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFDataGetBytePtr(v28);
  CFDataGetLength(v28);
  v36 = NFDataCreateWithBytes();
  CFRelease(v28);
  CFRelease(v10);
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v37(6, "%s:%i Found FDR data, %ld bytes", "_NFDriverRFSettingsReadCalDataFromFDR", 375, v36[1]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v38 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v36[1];
    *buf = 136446722;
    *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
    *&buf[12] = 1024;
    *&buf[14] = 375;
    *&buf[18] = 2048;
    *&buf[20] = v39;
    _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found FDR data, %ld bytes", buf, 0x1Cu);
  }

  v73 = 0u;
  memset(buf, 0, sizeof(buf));
  v40 = *v36;
  v41 = v36[1];
  v42 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v43 = NFLogGetLogger();
  dispatch_get_specific(*v42);
  v44 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v36[1];
    *v64 = 136315906;
    v65 = "_NFDriverRFSettingsReadCalDataFromFDR";
    v66 = 1024;
    v67 = 376;
    v68 = 2082;
    v69 = "FDR: ";
    v70 = 2048;
    v71 = v45;
    _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v64, 0x26u);
  }

  if (v43)
  {
    v43(6, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsReadCalDataFromFDR", 376, "FDR: ", v36[1]);
  }

  v62 = v36;
  if (v41)
  {
    v46 = 0;
    do
    {
      v47 = 0;
      v48 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v46)];
      do
      {
        v49 = *(v40 + v46++);
        v50 = sprintf(v48, "0x%02X ", v49);
        if (v47 > 6)
        {
          break;
        }

        v48 += v50;
        ++v47;
      }

      while (v46 < v41);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 136446210;
        v65 = buf;
        _os_log_impl(&dword_297F97000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s", v64, 0xCu);
      }

      if (v43)
      {
        v43(6, "%s", buf);
      }
    }

    while (v46 < v41);
  }

  return v62;
}

BOOL sub_297FB5E54(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (sub_297FB77BC(*a2, a2[1]))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to parse TLVs, is the format correct ?", "_NFDriverRFSettingsWriteSignedCalData", 505);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "_NFDriverRFSettingsWriteSignedCalData";
      v18 = 1024;
      v19 = 505;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse TLVs, is the format correct ?", buf, 0x12u);
    }

    return 0;
  }

  else
  {
    v15 = sub_297FA02E4(*(a2 + 2), *a2);
    v8 = sub_297FA0380(a1, 222, v15, 0);
    v9 = sub_297F9F694(v8);
    v7 = v9 == 0;
    if (v9)
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Failed to push Cal to NFCC : 0x%4llx", "_NFDriverRFSettingsWriteSignedCalData", 514, *v8);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *v8;
        *buf = 136446722;
        v17 = "_NFDriverRFSettingsWriteSignedCalData";
        v18 = 1024;
        v19 = 514;
        v20 = 2048;
        v21 = v13;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push Cal to NFCC : 0x%4llx", buf, 0x1Cu);
      }
    }

    sub_297F9FBDC(v8);
    sub_297FA0714(&v15);
  }

  return v7;
}

uint64_t sub_297FB606C()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = AMFDRCreateWithOptions();
  v1 = MEMORY[0x29EDC9730];
  if (v0)
  {
    v2 = v0;
    v3 = AMFDRSealingMapVerifySealing();
    CFRelease(v2);
  }

  else
  {
    v3 = 1;
  }

  dispatch_get_specific(*v1);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Sealing status is %d", "_NFDriverRFSettingsFDRSealed", 101, v3);
  }

  dispatch_get_specific(*v1);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "_NFDriverRFSettingsFDRSealed";
    v9 = 1024;
    v10 = 101;
    v11 = 1024;
    LODWORD(v12) = v3;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Sealing status is %d", buf, 0x18u);
  }

  return v3;
}

BOOL sub_297FB6264(uint64_t a1, uint64_t a2, void **a3, _WORD *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = sub_297FA02E4(0x400u, 0);
  v21 = v7;
  *a3 = 0;
  *a4 = 0;
  v8 = sub_297FA0380(a1, 223, 0, v7);
  v9 = sub_297F9F694(v8);
  if (v9)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get RF settings; status=0x%04llX.", "NFDriverRFSettingsCopySigned", 481, *v8);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v8;
      *buf = 136446722;
      v23 = "NFDriverRFSettingsCopySigned";
      v24 = 1024;
      v25 = 481;
      v26 = 2048;
      v27 = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings; status=0x%04llX.", buf, 0x1Cu);
    }
  }

  else
  {
    *a3 = malloc_type_calloc(1uLL, v7[2], 0x100004077774924uLL);
    v14 = v7[2];
    if (v14 >= 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 4;
      do
      {
        v18 = *(*v7 + v15 + 3);
        if (v14 - v15 - 4 < v18)
        {
          break;
        }

        *(*a3 + v16) = *(*v7 + v15);
        *(*a3 + v16 + 2) = *(*v7 + v15 + 2 + 1);
        v19 = v16 + 3;
        memcpy(*a3 + v19, (*v7 + v17), v18);
        v16 = v19 + v18;
        v15 = v17 + v18;
        v17 += v18 + 4;
        v14 = v7[2];
      }

      while (v17 <= v14);
    }

    *a4 = v14 - 1;
  }

  sub_297FA0714(&v21);
  sub_297F9FBDC(v8);
  return v9 == 0;
}

BOOL NFDriverRFSettingsPushSetting(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a3 != 1)
  {
    if (a3 == 3)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Error : unable to write to transition registers", "NFDriverRFSettingsPushSetting", 529);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v23 = "NFDriverRFSettingsPushSetting";
      v24 = 1024;
      v25 = 529;
      v8 = "%{public}s:%i Error : unable to write to transition registers";
    }

    else
    {
      v10 = sub_297FA02E4(*(a2 + 8), *a2);
      v21 = v10;
      if (v10)
      {
        if (a3 == 2)
        {
          v11 = 222;
        }

        else
        {
          v11 = 37025;
        }

        v12 = sub_297FA0380(a1, v11, v10, 0);
        v13 = sub_297F9F694(v12);
        v14 = v13 == 0;
        if (v13)
        {
          v15 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v16 = NFLogGetLogger();
          if (v16)
          {
            v16(3, "%s:%i Failed to push Cal to NFCC : 0x%4llx", "NFDriverRFSettingsPushSetting", 546, *v12);
          }

          dispatch_get_specific(*v15);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *v12;
            *buf = 136446722;
            v23 = "NFDriverRFSettingsPushSetting";
            v24 = 1024;
            v25 = 546;
            v26 = 2048;
            v27 = v18;
            _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push Cal to NFCC : 0x%4llx", buf, 0x1Cu);
          }
        }

        sub_297F9FBDC(v12);
        sub_297FA0714(&v21);
        return v14;
      }

      v19 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsPushSetting", 540);
      }

      dispatch_get_specific(*v19);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v23 = "NFDriverRFSettingsPushSetting";
      v24 = 1024;
      v25 = 540;
      v8 = "%{public}s:%i Error : Allocation failure";
    }

    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    return 0;
  }

  return sub_297FB5E54(a1, a2);
}

uint64_t NFDriverRFSettingsReadSetting(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v58 = *MEMORY[0x29EDCA608];
  if (a3 == 3)
  {
    v4 = 37027;
  }

  else
  {
    v4 = 37026;
  }

  if (a3 == 1)
  {
    v4 = 223;
  }

  v43 = v4;
  v57 = 0u;
  memset(v56, 0, sizeof(v56));
  v5 = *a2;
  v6 = a2[1];
  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2[1];
    *buf = 136315906;
    v49 = "NFDriverRFSettingsReadSetting";
    v50 = 1024;
    v51 = 574;
    v52 = 2082;
    v53 = "Reading registers";
    v54 = 2048;
    v55 = v10;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
  }

  if (Logger)
  {
    Logger(6, "%s:%i %s %lu bytes :", "NFDriverRFSettingsReadSetting", 574, "Reading registers", a2[1]);
  }

  if (v6)
  {
    v11 = 0;
    do
    {
      v12 = 0;
      v13 = &v56[__sprintf_chk(v56, 0, 0x30uLL, "%04lX: ", v11)];
      do
      {
        v14 = *(v5 + v11++);
        v15 = sprintf(v13, "0x%02X ", v14);
        if (v12 > 6)
        {
          break;
        }

        v13 += v15;
        ++v12;
      }

      while (v11 < v6);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v49 = v56;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      if (Logger)
      {
        Logger(6, "%s", v56);
      }
    }

    while (v11 < v6);
  }

  v47 = sub_297FA02E4(*(a2 + 2), *a2);
  if (v47)
  {
    v17 = sub_297FA02E4(0x400u, 0);
    v46 = v17;
    if (v17)
    {
      v18 = v17;
      v19 = sub_297FA0380(a1, v43, v47, v17);
      if (sub_297F9F694(v19))
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v20 = NFLogGetLogger();
        if (v20)
        {
          v20(3, "%s:%i Failed to read registers from NFCC : 0x%4llx", "NFDriverRFSettingsReadSetting", 591, *v19);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *v19;
          *v56 = 136446722;
          *&v56[4] = "NFDriverRFSettingsReadSetting";
          *&v56[12] = 1024;
          *&v56[14] = 591;
          *&v56[18] = 2048;
          *&v56[20] = v22;
          _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read registers from NFCC : 0x%4llx", v56, 0x1Cu);
        }

        v23 = v18[2];
        if (v23)
        {
          v45 = v19;
          v57 = 0u;
          memset(v56, 0, sizeof(v56));
          v24 = *v18;
          v25 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v26 = NFLogGetLogger();
          dispatch_get_specific(*v25);
          v27 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = v18[2];
            *buf = 136315906;
            v49 = "NFDriverRFSettingsReadSetting";
            v50 = 1024;
            v51 = 593;
            v52 = 2082;
            v53 = "Error data :";
            v54 = 2048;
            v55 = v28;
            _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", buf, 0x26u);
          }

          if (v26)
          {
            v26(3, "%s:%i %s %lu bytes :", "NFDriverRFSettingsReadSetting", 593, "Error data :", v18[2]);
          }

          v29 = 0;
          do
          {
            v30 = 0;
            v31 = &v56[__sprintf_chk(v56, 0, 0x30uLL, "%04lX: ", v29)];
            do
            {
              v32 = *(v24 + v29++);
              v33 = sprintf(v31, "0x%02X ", v32);
              if (v30 > 6)
              {
                break;
              }

              v31 += v33;
              ++v30;
            }

            while (v29 < v23);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v34 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v49 = v56;
              _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
            }

            if (v26)
            {
              v26(3, "%s", v56);
            }
          }

          while (v29 < v23);
          v35 = 0;
          v19 = v45;
          goto LABEL_59;
        }
      }

      else
      {
        if (v18[2])
        {
          v35 = NFDataCreateWithBytes();
LABEL_59:
          sub_297F9FBDC(v19);
          sub_297FA0714(&v47);
          sub_297FA0714(&v46);
          return v35;
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v40 = NFLogGetLogger();
        if (v40)
        {
          v40(3, "%s:%i No data received.", "NFDriverRFSettingsReadSetting", 596);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v56 = 136446466;
          *&v56[4] = "NFDriverRFSettingsReadSetting";
          *&v56[12] = 1024;
          *&v56[14] = 596;
          _os_log_impl(&dword_297F97000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i No data received.", v56, 0x12u);
        }
      }

      v35 = 0;
      goto LABEL_59;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v38(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsReadSetting", 584);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v56 = 136446466;
      *&v56[4] = "NFDriverRFSettingsReadSetting";
      *&v56[12] = 1024;
      *&v56[14] = 584;
      _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : Allocation failure", v56, 0x12u);
    }

    sub_297FA0714(&v47);
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v36(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsReadSetting", 578);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v56 = 136446466;
      *&v56[4] = "NFDriverRFSettingsReadSetting";
      *&v56[12] = 1024;
      *&v56[14] = 578;
      _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : Allocation failure", v56, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_297FB6F0C(uint64_t a1, uint64_t a2, CFErrorRef *a3, uint64_t a4, const char *a5)
{
  v47 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
    }

    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i dataClass is NULL", "_NF_AMFDRSealingMapCopyLocalDataForClass", 160);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v45 = 1024;
    v46 = 160;
    v14 = "%{public}s:%i dataClass is NULL";
LABEL_18:
    _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    return 0;
  }

  v7 = AMFDRCreateTypeWithOptions();
  if (!v7)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
    }

    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i amfdr is NULL", "_NF_AMFDRSealingMapCopyLocalDataForClass", 162);
    }

    dispatch_get_specific(*v15);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v45 = 1024;
    v46 = 162;
    v14 = "%{public}s:%i amfdr is NULL";
    goto LABEL_18;
  }

  v8 = v7;
  if (AMFDRDataApTicketPopulate())
  {
    v9 = AMFDRDataApTicketCopyObjectProperty();
    if (v9)
    {
      v10 = v9;
      AMFDRSetOption();
      goto LABEL_27;
    }

    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 199, 0);
    }

    v39 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v40(3, "%s:%i Unable to extract trust object digest from AP Ticket", "_NF_AMFDRSealingMapCopyLocalDataForClass", 173);
    }

    dispatch_get_specific(*v39);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v45 = 1024;
      v46 = 173;
      _os_log_impl(&dword_297F97000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i Unable to extract trust object digest from AP Ticket", buf, 0x12u);
    }

    CFRelease(v8);
    return 0;
  }

  if (a3)
  {
    *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Unable to read AP Ticket", "_NF_AMFDRSealingMapCopyLocalDataForClass", 179);
  }

  dispatch_get_specific(*v18);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v45 = 1024;
    v46 = 179;
    _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Unable to read AP Ticket", buf, 0x12u);
  }

  v10 = 0;
LABEL_27:
  v21 = AMFDRSealingMapCopyInstanceForClass();
  if (!v21)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 199, 0);
    }

    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(3, "%s:%i Could not get Sealed Data Instance", "_NF_AMFDRSealingMapCopyLocalDataForClass", 188);
    }

    dispatch_get_specific(*v23);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v45 = 1024;
      v46 = 188;
      _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not get Sealed Data Instance", buf, 0x12u);
    }

    v26 = 0;
    v17 = 0;
    goto LABEL_68;
  }

  v22 = v21;
  AMFDRSetOption();
  AMFDRSetOption();
  AMFDRSetOption();
  AMFDRDataCopyTrustObject();
  v27 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v28 = NFLogGetLogger();
  if (v28)
  {
    v28(3, "%s:%i AMFDRDataCopyTrustObject failed", "_NF_AMFDRSealingMapCopyLocalDataForClass", 200);
  }

  dispatch_get_specific(*v27);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v45 = 1024;
    v46 = 200;
    _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i AMFDRDataCopyTrustObject failed", buf, 0x12u);
  }

  v26 = AMFDRDataCopy();
  if (v26)
  {
    AMFDRSetOption();
  }

  else
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i sealingManifestData DataCopy failed", "_NF_AMFDRSealingMapCopyLocalDataForClass", 209);
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v45 = 1024;
      v46 = 209;
      _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i sealingManifestData DataCopy failed", buf, 0x12u);
    }
  }

  AMFDRSetOption();
  AMFDRSetOption();
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v34 = Mutable;
    if (a5 && *a5)
    {
      CFStringAppendCString(Mutable, a5, 0x8000100u);
    }

    else
    {
      if (!NFIsRestoreOS())
      {
        v35 = v34;
LABEL_66:
        CFRelease(v35);
        goto LABEL_67;
      }

      CFStringAppend(v34, @"/mnt1");
    }

    CFStringAppend(v34, @"/System/Library/Caches/com.apple.factorydata");
    v35 = CFURLCreateWithString(0, v34, 0);
    CFRelease(v34);
    if (v35)
    {
      v36 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v37(6, "%s:%i Forcing FDR path.", "_NF_AMFDRSealingMapCopyLocalDataForClass", 219);
      }

      dispatch_get_specific(*v36);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v44 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
        v45 = 1024;
        v46 = 219;
        _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Forcing FDR path.", buf, 0x12u);
      }

      AMFDRSetOption();
      goto LABEL_66;
    }
  }

LABEL_67:
  v17 = AMFDRDataCopy();
  CFRelease(v22);
LABEL_68:
  CFRelease(v8);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v17;
}

uint64_t sub_297FB77BC(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v30 = *MEMORY[0x29EDCA608];
  while (1)
  {
    if (a2 - v4 <= 1)
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Invalid length : no room for tag", "_NFDriverRFSettingsTLVParser", 43);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return -1;
      }

      *buf = 136446466;
      v25 = "_NFDriverRFSettingsTLVParser";
      v26 = 1024;
      v27 = 43;
      v14 = "%{public}s:%i Invalid length : no room for tag";
      v15 = v13;
      v16 = 18;
      goto LABEL_18;
    }

    v5 = __rev16(*(a1 + v4));
    if (a2 - (v4 + 2) <= 1)
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(3, "%s:%i Invalid length for tag 0x%x", "_NFDriverRFSettingsTLVParser", 50, v5);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return -1;
      }

      *buf = 136446722;
      v25 = "_NFDriverRFSettingsTLVParser";
      v26 = 1024;
      v27 = 50;
      v28 = 1024;
      v29 = v5;
      v14 = "%{public}s:%i Invalid length for tag 0x%x";
      v15 = v19;
      v16 = 24;
LABEL_18:
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      return -1;
    }

    v6 = v4 + 4;
    v7 = *(a1 + v4 + 3) | (*(a1 + v4 + 2) << 8);
    if ((v5 & 0xFFFE) != 0xF000)
    {
      v10 = v7;
      goto LABEL_8;
    }

    v8 = sub_297FB77BC(a1 + v6, *(a1 + v4 + 3) | (*(a1 + v4 + 2) << 8));
    v9 = v8;
    if (v8 < 0)
    {
      break;
    }

    v10 = v7 - v8;
LABEL_8:
    v4 = v10 + v6;
    v9 = a2 - v4;
    if (a2 <= v4)
    {
      return v9;
    }
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(3, "%s:%i Failure for tag 0x%x", "_NFDriverRFSettingsTLVParser", 62, v5);
  }

  dispatch_get_specific(*v21);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v25 = "_NFDriverRFSettingsTLVParser";
    v26 = 1024;
    v27 = 62;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Failure for tag 0x%x", buf, 0x18u);
  }

  return v9;
}

void NFDriverDumpUART(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FB7B1C;
  block[3] = &unk_29EE880F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_297FB7B1C(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 32) + 24) + 576))
  {
    v1 = phTmlNfc_IoCtl();
    if (v1)
    {
      v2 = v1;
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i status=0x%04X", "NFDriverDumpUART_block_invoke", 125, v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v7 = "NFDriverDumpUART_block_invoke";
        v8 = 1024;
        v9 = 125;
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }
    }
  }
}

BOOL NFDriverNFCCPowerOff(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(*(a1 + 24) + 560);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_297FB7CF8;
  v4[3] = &unk_29EE88120;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(v1, v4);
  v2 = *(v6 + 12) == 0;
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_297FB7CF8(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phTmlNfc_IoCtl();
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v2)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "NFDriverNFCCPowerOff_block_invoke", 152, *(*(*(a1 + 32) + 8) + 24));
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446722;
      v8 = "NFDriverNFCCPowerOff_block_invoke";
      v9 = 1024;
      v10 = 152;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }
}

uint64_t sub_297FB7E3C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!*(*(a1 + 24) + 576))
  {
    return 0;
  }

  if (*a1 == 3)
  {
    return 16;
  }

  v1 = phTmlNfc_IoCtl();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i status=0x%04X", "_NFDriverDebugFailedHW", 173, v2);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v8 = "_NFDriverDebugFailedHW";
    v9 = 1024;
    v10 = 173;
    v11 = 1024;
    v12 = v2;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
  }

  if (v2 == 11)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

uint64_t NFDriverIsHostWakeCapable(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(*(a1 + 24) + 560);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_297FB8030;
  v4[3] = &unk_29EE88148;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_297FB8030(uint64_t a1)
{
  result = phTmlNfc_IoCtl();
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

BOOL sub_297FB8080(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 24) + 767))
  {
    v2 = 666000000000;
  }

  else
  {
    v2 = 20000000000;
  }

  v3 = dispatch_time(0, v2);
  v4 = dispatch_semaphore_wait(*(*(a1 + 24) + 552), v3);
  if (v4)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Error : timeout occured !!!", "_NFDriverAcquireSE", 284);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_NFDriverAcquireSE";
      v11 = 1024;
      v12 = 284;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : timeout occured !!!", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_297F97000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Error : timeout occured !!!", buf, 2u);
    }
  }

  return v4 == 0;
}

unsigned int *sub_297FB820C(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 8);
    v2[2] = v4;
    v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
    *v3 = v5;
    if (v5)
    {
      memcpy(v5, *a1, v3[2]);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

BOOL NFDriverRunIntegrityDebug(uint64_t a1)
{
  v79 = *MEMORY[0x29EDCA608];
  v2 = sub_297FA02E4(0x30u, 0);
  v43 = v2;
  memset(v78, 0, 44);
  if (*(a1 + 57) == 1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i This API is available in DL mode only", "NFDriverRunIntegrityDebug", 613);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v45 = "NFDriverRunIntegrityDebug";
    v46 = 1024;
    v47 = 613;
    v6 = "%{public}s:%i This API is available in DL mode only";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v9 = v2;
  if (!NFDriverGetControllerInfo(a1, v78))
  {
    goto LABEL_13;
  }

  if ((DWORD1(v78[0]) - 21) > 1)
  {
    v15 = sub_297FA0380(a1, 241, 0, v9);
    v16 = sub_297F9F694(v15);
    v13 = v16 == 0;
    if (v16)
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(3, "%s:%i Failed to get integrity check", "NFDriverRunIntegrityDebug", 632);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v45 = "NFDriverRunIntegrityDebug";
      v46 = 1024;
      v47 = 632;
      v20 = "%{public}s:%i Failed to get integrity check";
      v21 = v19;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 18;
    }

    else
    {
      v24 = *v9;
      v25 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v26(6, "%s:%i Session State=%d,                     HW Version=0x%x,                     ROM=0x%x,                     Model=0x%x,                     FW=%x.%x,                     MW=%x.%x r%llx,                     Chip=%x                     Life cycle=%x,                     Data section count=%d,                     Code section count=%d,                     CRC=0x%x,                     status=0x%x", "NFDriverRunIntegrityDebug", 663, *v24, v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], *(v24 + 2), *(v24 + 12), *(v24 + 13), v24[32], v24[33], *(v24 + 9), *(v24 + 20));
      }

      dispatch_get_specific(*v25);
      v27 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v28 = *v24;
      v29 = v24[8];
      v30 = v24[9];
      v31 = v24[10];
      v32 = v24[11];
      v33 = v24[12];
      v34 = v24[13];
      v35 = v24[14];
      v36 = *(v24 + 2);
      v37 = *(v24 + 12);
      v38 = *(v24 + 13);
      v39 = v24[32];
      v40 = v24[33];
      v41 = *(v24 + 9);
      v42 = *(v24 + 20);
      *buf = 136450306;
      v45 = "NFDriverRunIntegrityDebug";
      v46 = 1024;
      v47 = 663;
      v48 = 1024;
      v49 = v28;
      v50 = 1024;
      v51 = v29;
      v52 = 1024;
      v53 = v30;
      v54 = 1024;
      v55 = v31;
      v56 = 1024;
      v57 = v32;
      v58 = 1024;
      v59 = v33;
      v60 = 1024;
      v61 = v34;
      v62 = 1024;
      v63 = v35;
      v64 = 2048;
      v65 = v36;
      v66 = 1024;
      v67 = v37;
      v68 = 1024;
      v69 = v38;
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v40;
      v74 = 1024;
      v75 = v41;
      v76 = 1024;
      v77 = v42;
      v20 = "%{public}s:%i Session State=%d,                     HW Version=0x%x,                     ROM=0x%x,                     Model=0x%x,                     FW=%x.%x,                     MW=%x.%x r%llx,                     Chip=%x                     Life cycle=%x,                     Data section count=%d,                     Code section count=%d,                     CRC=0x%x,                     status=0x%x";
      v21 = v27;
      v22 = OS_LOG_TYPE_DEFAULT;
      v23 = 112;
    }

    _os_log_impl(&dword_297F97000, v21, v22, v20, buf, v23);
LABEL_25:
    sub_297F9FBDC(v15);
    goto LABEL_14;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(6, "%s:%i Device does not support this feature", "NFDriverRunIntegrityDebug", 625);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  *buf = 136446466;
  v45 = "NFDriverRunIntegrityDebug";
  v46 = 1024;
  v47 = 625;
  v6 = "%{public}s:%i Device does not support this feature";
  v7 = v12;
  v8 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
  _os_log_impl(&dword_297F97000, v7, v8, v6, buf, 0x12u);
LABEL_13:
  v13 = 0;
LABEL_14:
  sub_297FA0714(&v43);
  return v13;
}

uint64_t sub_297FB873C(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v8 + 2) = a3;
    v10 = sub_297F9DC04();
    pthread_mutex_lock((v10[3] + 8));
    v11 = v10[3];
    ++*v11;
    pthread_mutex_unlock((v11 + 8));
    v12 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FB8A50;
    block[3] = &unk_29EE88188;
    v24 = a4;
    block[4] = a1;
    block[5] = v9;
    block[6] = v10;
    dispatch_async_and_wait(v12, block);
    if (sub_297F9F694(v10))
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i status=0x%04llX", "_NFDriverSetRFSettings", 1132, *v10);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v10;
        *buf = 136446722;
        *&buf[4] = "_NFDriverSetRFSettings";
        *&buf[12] = 1024;
        *&buf[14] = 1132;
        *&buf[18] = 2048;
        *&buf[20] = v16;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      if (*v10 == 137)
      {
        v17 = 13;
      }

      else
      {
        v17 = 1;
      }

      v18 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      v26 = a1;
      dispatch_async(v18, buf);
    }

    else
    {
      v17 = 0;
    }

    sub_297F9FBDC(v10);
    free(v9);
  }

  else
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Allocation failure", "_NFDriverSetRFSettings", 1107);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverSetRFSettings";
      *&buf[12] = 1024;
      *&buf[14] = 1107;
      _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    return 3;
  }

  return v17;
}

void sub_297FB8A50(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_SetRfSettings();
  if (v2)
  {
    v3 = v2 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to set RF settings : status=0x%04X", "_NFDriverSetRFSettings_block_invoke", 1125, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_NFDriverSetRFSettings_block_invoke";
      v10 = 1024;
      v11 = 1125;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set RF settings : status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v4);
    sub_297F9FBDC(*(a1 + 48));
  }
}

void sub_297FB8BA0(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

__CFDictionary *NFDriverCopyAndClearAssertion(uint64_t a1, int a2, int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10100405651454EuLL);
  if (v6)
  {
    if (!a2)
    {
      Mutable = 0;
      if (!a3)
      {
        return Mutable;
      }

      goto LABEL_25;
    }

    v7 = v6;
    v8 = sub_297FB8FC8(a1, 1, v6);
    if (sub_297F9F694(v8))
    {
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i status=0x%04llX", "NFDriverCopyAndClearAssertion", 1493, *v8);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *v8;
        *buf = 136446722;
        v30 = "NFDriverCopyAndClearAssertion";
        v31 = 1024;
        v32 = 1493;
        v33 = 2048;
        v34 = v12;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }
    }

    else
    {
      sub_297FB908C(v7);
      if (*(*(a1 + 24) + 764) == 1)
      {
        sub_297FBA53C(a1);
        postAnalyticsHardwareExceptionEvent();
      }
    }

    sub_297F9FBDC(v8);
    Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v17 = CFNumberCreate(0, kCFNumberSInt32Type, v7);
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(Mutable, @"PC", v17);
        CFRelease(v18);
      }

      v19 = v7[54];
      if (v19)
      {
        v20 = *(v7 + 26);
        if (v20)
        {
          v21 = CFDataCreate(0, v20, v19);
          if (v21)
          {
            v22 = v21;
            CFDictionaryAddValue(Mutable, @"Assert", v21);
            CFRelease(v22);
          }
        }
      }
    }

    free(v7);
    if (a3)
    {
LABEL_25:
      v23 = sub_297FB8FC8(a1, 0, 0);
      if (sub_297F9F694(v23))
      {
        v24 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v25 = NFLogGetLogger();
        if (v25)
        {
          v25(3, "%s:%i status=0x%04llX", "NFDriverCopyAndClearAssertion", 1519, *v23);
        }

        dispatch_get_specific(*v24);
        v26 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *v23;
          *buf = 136446722;
          v30 = "NFDriverCopyAndClearAssertion";
          v31 = 1024;
          v32 = 1519;
          v33 = 2048;
          v34 = v27;
          _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
        }
      }

      sub_297F9FBDC(v23);
    }
  }

  else
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Allocation failed", "NFDriverCopyAndClearAssertion", 1485);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "NFDriverCopyAndClearAssertion";
      v31 = 1024;
      v32 = 1485;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failed", buf, 0x12u);
    }

    return 0;
  }

  return Mutable;
}

void *sub_297FB8FC8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_297F9DC04();
  pthread_mutex_lock((v6[3] + 8));
  v7 = v6[3];
  ++*v7;
  pthread_mutex_unlock((v7 + 8));
  v8 = *(*(a1 + 24) + 560);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = sub_297FD54EC;
  v10[3] = &unk_29EE88A40;
  v11 = a2;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = v6;
  dispatch_async_and_wait(v8, v10);
  return v6;
}

void sub_297FB908C(int *a1)
{
  v143 = *MEMORY[0x29EDCA608];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i PC: %d", "_NFDriverLogAssert", 1147, *a1);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    *buf = 136446722;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1147;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&dword_297F97000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%i PC: %d", buf, 0x18u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v5(3, "%s:%i ---- HARD FAULT ----", "_NFDriverLogAssert", 1148);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1148;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- HARD FAULT ----", buf, 0x12u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(3, "%s:%i R0=0x%04x R1=0x%04x R2=0x%04x R3=0x%04x R12=0x%04x", "_NFDriverLogAssert", 1152, a1[25], a1[26], a1[27], a1[28], a1[29]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[25];
    v10 = a1[26];
    v11 = a1[27];
    v12 = a1[28];
    v13 = a1[29];
    *buf = 136447746;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1152;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v10;
    *&buf[30] = 1024;
    LODWORD(v138) = v11;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v12;
    WORD5(v138) = 1024;
    HIDWORD(v138) = v13;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i R0=0x%04x R1=0x%04x R2=0x%04x R3=0x%04x R12=0x%04x", buf, 0x30u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i LR=0x%04x PC=0x%04x XPSR=0x%04x", "_NFDriverLogAssert", 1155, a1[30], a1[31], a1[32]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = a1[30];
    v17 = a1[31];
    v18 = a1[32];
    *buf = 136447234;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1155;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    *&buf[24] = 1024;
    *&buf[26] = v17;
    *&buf[30] = 1024;
    LODWORD(v138) = v18;
    _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i LR=0x%04x PC=0x%04x XPSR=0x%04x", buf, 0x24u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i HFLR=0x%04x PSP=0x%04x MSP=0x%04x", "_NFDriverLogAssert", 1158, a1[33], a1[34], a1[35]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = a1[33];
    v22 = a1[34];
    v23 = a1[35];
    *buf = 136447234;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1158;
    *&buf[18] = 1024;
    *&buf[20] = v21;
    *&buf[24] = 1024;
    *&buf[26] = v22;
    *&buf[30] = 1024;
    LODWORD(v138) = v23;
    _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i HFLR=0x%04x PSP=0x%04x MSP=0x%04x", buf, 0x24u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(3, "%s:%i ---- WATCHDOG ----", "_NFDriverLogAssert", 1159);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1159;
    _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- WATCHDOG ----", buf, 0x12u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v26(3, "%s:%i RF-proc: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1162, a1[1], a1[2], a1[3], a1[4]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v27 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = a1[1];
    v29 = a1[2];
    v30 = a1[3];
    v31 = a1[4];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1162;
    *&buf[18] = 1024;
    *&buf[20] = v28;
    *&buf[24] = 1024;
    *&buf[26] = v29;
    *&buf[30] = 1024;
    LODWORD(v138) = v30;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v31;
    _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i RF-proc: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v32 = NFLogGetLogger();
  if (v32)
  {
    v32(3, "%s:%i SWP-proc: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1165, a1[5], a1[6], a1[7], a1[8]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v33 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = a1[5];
    v35 = a1[6];
    v36 = a1[7];
    v37 = a1[8];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1165;
    *&buf[18] = 1024;
    *&buf[20] = v34;
    *&buf[24] = 1024;
    *&buf[26] = v35;
    *&buf[30] = 1024;
    LODWORD(v138) = v36;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v37;
    _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i SWP-proc: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v38 = NFLogGetLogger();
  if (v38)
  {
    v38(3, "%s:%i kernel: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1168, a1[9], a1[10], a1[11], a1[12]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v39 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = a1[9];
    v41 = a1[10];
    v42 = a1[11];
    v43 = a1[12];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1168;
    *&buf[18] = 1024;
    *&buf[20] = v40;
    *&buf[24] = 1024;
    *&buf[26] = v41;
    *&buf[30] = 1024;
    LODWORD(v138) = v42;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v43;
    _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i kernel: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v44 = NFLogGetLogger();
  if (v44)
  {
    v44(3, "%s:%i host: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1171, a1[13], a1[14], a1[15], a1[16]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v45 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v46 = a1[13];
    v47 = a1[14];
    v48 = a1[15];
    v49 = a1[16];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1171;
    *&buf[18] = 1024;
    *&buf[20] = v46;
    *&buf[24] = 1024;
    *&buf[26] = v47;
    *&buf[30] = 1024;
    LODWORD(v138) = v48;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v49;
    _os_log_impl(&dword_297F97000, v45, OS_LOG_TYPE_ERROR, "%{public}s:%i host: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v50 = NFLogGetLogger();
  if (v50)
  {
    v50(3, "%s:%i mailbox: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1174, a1[17], a1[18], a1[19], a1[20]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v51 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v52 = a1[17];
    v53 = a1[18];
    v54 = a1[19];
    v55 = a1[20];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1174;
    *&buf[18] = 1024;
    *&buf[20] = v52;
    *&buf[24] = 1024;
    *&buf[26] = v53;
    *&buf[30] = 1024;
    LODWORD(v138) = v54;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v55;
    _os_log_impl(&dword_297F97000, v51, OS_LOG_TYPE_ERROR, "%{public}s:%i mailbox: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v56 = NFLogGetLogger();
  if (v56)
  {
    v56(3, "%s:%i host-LP: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", "_NFDriverLogAssert", 1177, a1[21], a1[22], a1[23], a1[24]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v57 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v58 = a1[21];
    v59 = a1[22];
    v60 = a1[23];
    v61 = a1[24];
    *buf = 136447490;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1177;
    *&buf[18] = 1024;
    *&buf[20] = v58;
    *&buf[24] = 1024;
    *&buf[26] = v59;
    *&buf[30] = 1024;
    LODWORD(v138) = v60;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v61;
    _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i host-LP: pc=0x%04x sp=0x%04x obj=0x%04x state=0x%04x", buf, 0x2Au);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v62 = NFLogGetLogger();
  if (v62)
  {
    v62(3, "%s:%i ---- TICKS ----", "_NFDriverLogAssert", 1179);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v63 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1179;
    _os_log_impl(&dword_297F97000, v63, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- TICKS ----", buf, 0x12u);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v64 = NFLogGetLogger();
  if (v64)
  {
    v64(3, "%s:%i RF=0x%04x, SWP=0x%04x, Kernel=0x%04x, Host=0x%04x, SMB=0x%04x, LowPwr=0x%04x, sys=0x%04x", "_NFDriverLogAssert", 1180, a1[36], a1[37], a1[38], a1[39], a1[40], a1[41], a1[42]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v65 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v66 = a1[36];
    v67 = a1[37];
    v68 = a1[38];
    v69 = a1[39];
    v70 = a1[40];
    v71 = a1[41];
    v72 = a1[42];
    *buf = 136448258;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1180;
    *&buf[18] = 1024;
    *&buf[20] = v66;
    *&buf[24] = 1024;
    *&buf[26] = v67;
    *&buf[30] = 1024;
    LODWORD(v138) = v68;
    WORD2(v138) = 1024;
    *(&v138 + 6) = v69;
    WORD5(v138) = 1024;
    HIDWORD(v138) = v70;
    v139 = 1024;
    v140 = v71;
    v141 = 1024;
    v142 = v72;
    _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_ERROR, "%{public}s:%i RF=0x%04x, SWP=0x%04x, Kernel=0x%04x, Host=0x%04x, SMB=0x%04x, LowPwr=0x%04x, sys=0x%04x", buf, 0x3Cu);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v73 = NFLogGetLogger();
  if (v73)
  {
    v73(3, "%s:%i ---- SPMI ----", "_NFDriverLogAssert", 1182);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v74 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1182;
    _os_log_impl(&dword_297F97000, v74, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- SPMI ----", buf, 0x12u);
  }

  v75 = a1[46];
  v127 = a1;
  if (v75)
  {
    v76 = *(a1 + 22);
    if (v76)
    {
      v138 = 0u;
      memset(buf, 0, sizeof(buf));
      v77 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v78 = NFLogGetLogger();
      dispatch_get_specific(*v77);
      v79 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v80 = a1[46];
        *v129 = 136315906;
        v130 = "_NFDriverLogAssert";
        v131 = 1024;
        v132 = 1184;
        v133 = 2082;
        v134 = "SPMI RAM info";
        v135 = 2048;
        v136 = v80;
        _os_log_impl(&dword_297F97000, v79, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v129, 0x26u);
      }

      if (v78)
      {
        v78(3, "%s:%i %s %lu bytes :", "_NFDriverLogAssert", 1184, "SPMI RAM info", a1[46]);
      }

      v81 = 0;
      do
      {
        v82 = 0;
        v83 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v81)];
        do
        {
          v84 = *(v76 + v81++);
          v85 = sprintf(v83, "0x%02X ", v84);
          if (v82 > 6)
          {
            break;
          }

          v83 += v85;
          ++v82;
        }

        while (v81 < v75);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v86 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *v129 = 136446210;
          v130 = buf;
          _os_log_impl(&dword_297F97000, v86, OS_LOG_TYPE_ERROR, "%{public}s", v129, 0xCu);
        }

        if (v78)
        {
          v78(3, "%s", buf);
        }
      }

      while (v81 < v75);
      a1 = v127;
    }
  }

  v87 = a1[50];
  if (v87)
  {
    v88 = *(a1 + 24);
    if (v88)
    {
      v138 = 0u;
      memset(buf, 0, sizeof(buf));
      v89 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v90 = NFLogGetLogger();
      dispatch_get_specific(*v89);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = a1[50];
        *v129 = 136315906;
        v130 = "_NFDriverLogAssert";
        v131 = 1024;
        v132 = 1187;
        v133 = 2082;
        v134 = "SPMI Flash info";
        v135 = 2048;
        v136 = v92;
        _os_log_impl(&dword_297F97000, v91, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v129, 0x26u);
      }

      if (v90)
      {
        v90(3, "%s:%i %s %lu bytes :", "_NFDriverLogAssert", 1187, "SPMI Flash info", a1[50]);
      }

      v93 = 0;
      do
      {
        v94 = 0;
        v95 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v93)];
        do
        {
          v96 = *(v88 + v93++);
          v97 = sprintf(v95, "0x%02X ", v96);
          if (v94 > 6)
          {
            break;
          }

          v95 += v97;
          ++v94;
        }

        while (v93 < v87);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v98 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *v129 = 136446210;
          v130 = buf;
          _os_log_impl(&dword_297F97000, v98, OS_LOG_TYPE_ERROR, "%{public}s", v129, 0xCu);
        }

        if (v90)
        {
          v90(3, "%s", buf);
        }
      }

      while (v93 < v87);
      a1 = v127;
    }
  }

  if (a1[54] && *(a1 + 26))
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v99 = NFLogGetLogger();
    if (v99)
    {
      v99(3, "%s:%i ---- ASSERT ----", "_NFDriverLogAssert", 1191);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v100 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverLogAssert";
      *&buf[12] = 1024;
      *&buf[14] = 1191;
      _os_log_impl(&dword_297F97000, v100, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- ASSERT ----", buf, 0x12u);
    }

    v138 = 0u;
    memset(buf, 0, sizeof(buf));
    v101 = a1[54];
    v102 = *(a1 + 26);
    v103 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v104 = NFLogGetLogger();
    dispatch_get_specific(*v103);
    v105 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v106 = a1[54];
      *v129 = 136315906;
      v130 = "_NFDriverLogAssert";
      v131 = 1024;
      v132 = 1192;
      v133 = 2082;
      v134 = "Assert info";
      v135 = 2048;
      v136 = v106;
      _os_log_impl(&dword_297F97000, v105, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v129, 0x26u);
    }

    if (v104)
    {
      v104(3, "%s:%i %s %lu bytes :", "_NFDriverLogAssert", 1192, "Assert info", a1[54]);
    }

    if (v101)
    {
      v107 = 0;
      do
      {
        v108 = 0;
        v109 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v107)];
        do
        {
          v110 = *(v102 + v107++);
          v111 = sprintf(v109, "0x%02X ", v110);
          if (v108 > 6)
          {
            break;
          }

          v109 += v111;
          ++v108;
        }

        while (v107 < v101);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v112 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          *v129 = 136446210;
          v130 = buf;
          _os_log_impl(&dword_297F97000, v112, OS_LOG_TYPE_ERROR, "%{public}s", v129, 0xCu);
        }

        if (v104)
        {
          v104(3, "%s", buf);
        }
      }

      while (v107 < v101);
    }

    a1 = v127;
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v113 = NFLogGetLogger();
  if (v113)
  {
    v113(3, "%s:%i ---- Core Dump ----", "_NFDriverLogAssert", 1195);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v114 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLogAssert";
    *&buf[12] = 1024;
    *&buf[14] = 1195;
    _os_log_impl(&dword_297F97000, v114, OS_LOG_TYPE_ERROR, "%{public}s:%i ---- Core Dump ----", buf, 0x12u);
  }

  v115 = a1[58];
  if (v115)
  {
    v128 = *(a1 + 28);
    if (v128)
    {
      v138 = 0u;
      memset(buf, 0, sizeof(buf));
      v116 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v117 = NFLogGetLogger();
      dispatch_get_specific(*v116);
      v118 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = a1[58];
        *v129 = 136315906;
        v130 = "_NFDriverLogAssert";
        v131 = 1024;
        v132 = 1197;
        v133 = 2082;
        v134 = "Core Dump";
        v135 = 2048;
        v136 = v119;
        _os_log_impl(&dword_297F97000, v118, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v129, 0x26u);
      }

      if (v117)
      {
        v117(3, "%s:%i %s %lu bytes :", "_NFDriverLogAssert", 1197, "Core Dump", a1[58]);
      }

      v120 = 0;
      do
      {
        v121 = 0;
        v122 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v120)];
        do
        {
          v123 = v121 + 1;
          v124 = v121 + 1 + v120;
          v125 = sprintf(v122, "0x%02X ", *(v128 + v120 + v121));
          if (v121 > 6)
          {
            break;
          }

          v122 += v125;
          ++v121;
        }

        while (v124 < v115);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v126 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          *v129 = 136446210;
          v130 = buf;
          _os_log_impl(&dword_297F97000, v126, OS_LOG_TYPE_ERROR, "%{public}s", v129, 0xCu);
        }

        if (v117)
        {
          v117(3, "%s", buf);
        }

        v120 += v123;
      }

      while (v124 < v115);
    }
  }
}