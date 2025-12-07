uint64_t __os_log_helper_16_2_3_8_32_8_32_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t otPlatSettingsDeinit(uint64_t a1)
{
  v12 = "com.apple.wpantund.ncp";
  v13 = "default";
  v14 = "otPlatSettingsDeinit";
  v21 = a1;
  result = IsSystemDryRun();
  if ((result & 1) == 0 && sSettingsFd != -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v19 = logging_obg;
      v18 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = v19;
        *type = v18;
        buf = v23;
        __os_log_helper_16_2_2_8_32_4_0(v23, v14, sSettingsFd);
        _os_log_impl(&_mh_execute_header, v19, v18, "%s: FileName: Deinit with fd = %d", v23, 0x12u);
      }
    }

    else if (!logging_obg)
    {
      v17 = &_os_log_default;
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = v17;
        *v7 = v16;
        v8 = v22;
        __os_log_helper_16_2_2_8_32_8_32(v22, v12, v13);
        _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
      }
    }

    result = close(sSettingsFd);
    if (result)
    {
      v15 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v15)
      {
        v5 = v15 + 1;
      }

      else
      {
        v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v3 = v5;
      v4 = 5;
      v2 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsDeinit", v5, 327, v2);
      handle_daemon_exit();
      exit(v4);
    }

    sSettingsFd = -1;
  }

  return result;
}

uint64_t otPlatSettingsGet(uint64_t a1, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 23;
  if ((IsSystemDryRun() & 1) == 0)
  {
    v11 = ot::Posix::PlatformSettingsGet(v16, v15, v14, v13, v12);
  }

  if (v11 == 6)
  {
    v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v10)
    {
      v9 = v10 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v7 = v9;
    v8 = 1;
    v5 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsGet", v9, 353, v5);
    handle_daemon_exit();
    exit(v8);
  }

  return v11;
}

uint64_t ot::Posix::PlatformSettingsGet(uint64_t a1, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 23;
  if (sSettingsFd == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v13 = logging_obg;
      v12 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v23, "PlatformSettingsGet", sSettingsFd);
        _os_log_impl(&_mh_execute_header, v13, v12, "%s: sSettingsFd not valid [%d]", v23, 0x12u);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v22, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v10, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
      }
    }

    return 23;
  }

  else
  {
    v9 = lseek(sSettingsFd, 0, 2);
    *&v8[1] = lseek(sSettingsFd, 0, 0);
    if (*&v8[1] || v9 < 0)
    {
      return 6;
    }

    while (*&v8[1] < v9)
    {
      v8[0] = 0;
      if (read(sSettingsFd, v8 + 2, 2uLL) != 2)
      {
        v15 = 6;
        break;
      }

      if (read(sSettingsFd, v8, 2uLL) != 2)
      {
        v15 = 6;
        break;
      }

      if (HIWORD(v8[0]) == v19)
      {
        if (!v18)
        {
          v15 = 0;
          if (v16)
          {
            if (!v17 || (LOWORD(v8[0]) > *v16 ? (v7 = *v16) : (v7 = v8[0]), read(sSettingsFd, v17, v7) == v7))
            {
              *v16 = v8[0];
            }

            else
            {
              v15 = 6;
            }
          }

          break;
        }

        --v18;
      }

      *&v8[1] += LOWORD(v8[0]) + 4;
      v6 = *&v8[1];
      if (v6 != lseek(sSettingsFd, LOWORD(v8[0]), 1))
      {
        v15 = 6;
        break;
      }
    }

    return v15;
  }
}

void ot::Posix::PlatformSettingsSet(uint64_t a1, __int16 a2, const void *a3, unsigned __int16 a4)
{
  v15 = a1;
  __buf = a2;
  v13 = a3;
  v12 = a4;
  v11 = -1;
  v9 = ot::Posix::PlatformSettingsDelete(a1, a2, -1, &v11);
  if (v9 && v9 != 23)
  {
    __assert_rtn("PlatformSettingsSet", "settings.cpp", 506, "false");
  }

  if (write(v11, &__buf, 2uLL) != 2 || write(v11, &v12, 2uLL) != 2 || (v4 = write(v11, v13, v12), v4 != v12))
  {
    v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v10)
    {
      v8 = v10 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v6 = v8;
    v7 = 1;
    v5 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "PlatformSettingsSet", v8, 513, v5);
    handle_daemon_exit();
    exit(v7);
  }

  swapPersist(v15, v11);
}

void ot::Posix::PlatformSettingsAdd(uint64_t a1, __int16 a2, const void *a3, unsigned __int16 a4)
{
  v19 = "com.apple.wpantund.ncp";
  v22 = "default";
  v20 = "default";
  v21 = "PlatformSettingsAdd";
  v35 = a1;
  __buf = a2;
  v33 = a3;
  v32 = a4;
  v31 = lseek(sSettingsFd, 0, 2);
  v30 = swapOpen(v35);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v28 = logging_obg;
    v27 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v28;
      *type = v27;
      buf = v37;
      __os_log_helper_16_2_2_8_32_4_0(v37, v21, v30);
      _os_log_impl(&_mh_execute_header, v28, v27, "%s: FileName: Swap file updated with fd = %d", v37, 0x12u);
    }
  }

  else if (!logging_obg)
  {
    v26 = &_os_log_default;
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = v26;
      *v14 = v25;
      v15 = v36;
      __os_log_helper_16_2_2_8_32_8_32(v36, v19, v20);
      _os_log_error_impl(&_mh_execute_header, v26, v25, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }
  }

  if (v31 > 0)
  {
    if (lseek(sSettingsFd, 0, 0))
    {
      v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v24)
      {
        v12 = v24 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v10 = v12;
      v11 = 5;
      v4 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "PlatformSettingsAdd", v12, 531, v4);
      handle_daemon_exit();
      exit(v11);
    }

    swapWrite(v35, v30, v31);
  }

  if (write(v30, &__buf, 2uLL) != 2 || write(v30, &v32, 2uLL) != 2 || (v5 = write(v30, v33, v32), v5 != v32))
  {
    v23 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v23)
    {
      v9 = v23 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v7 = v9;
    v8 = 1;
    v6 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "PlatformSettingsAdd", v9, 538, v6);
    handle_daemon_exit();
    exit(v8);
  }

  swapPersist(v35, v30);
}

uint64_t ot::Posix::PlatformSettingsDelete(uint64_t a1, __int16 a2, int a3, unsigned int *a4)
{
  v16 = "com.apple.wpantund.ncp";
  v21 = "default";
  v17 = "default";
  v18 = "PlatformSettingsDelete";
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = 23;
  p_class_meths = &OBJC_PROTOCOL___NSCopying.class_meths;
  v20 = 0;
  v33 = lseek(sSettingsFd, 0, 2);
  v32 = lseek(sSettingsFd, 0, 0);
  v31 = swapOpen(v38);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v29 = logging_obg;
    v28 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v29;
      *type = v28;
      buf = v40;
      __os_log_helper_16_2_2_8_32_4_0(v40, v18, v31);
      _os_log_impl(&_mh_execute_header, v29, v28, "%s: FileName: Swap file delete with fd = %d", v40, 0x12u);
    }
  }

  else if (!logging_obg)
  {
    v27 = &_os_log_default;
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = v27;
      *v11 = v26;
      v12 = v39;
      __os_log_helper_16_2_2_8_32_8_32(v39, v16, v17);
      _os_log_error_impl(&_mh_execute_header, v27, v26, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
    }
  }

  if (v31 == -1)
  {
    __assert_rtn("PlatformSettingsDelete", "settings.cpp", 554, "swapFd != -1");
  }

  if (v32)
  {
    __assert_rtn("PlatformSettingsDelete", "settings.cpp", 555, "offset == 0");
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      while (1)
      {
        if (v32 >= v33)
        {
          goto LABEL_35;
        }

        __buf = 0;
        v24 = 0;
        *v23 = read(sSettingsFd, &__buf, 2uLL);
        if (*v23 != 2)
        {
          v34 = 1;
          goto LABEL_35;
        }

        *v23 = read(sSettingsFd, &v24, 2uLL);
        if (*v23 != 2)
        {
          v34 = 1;
          goto LABEL_35;
        }

        v32 += v24 + 4;
        if (v37 == __buf)
        {
          break;
        }

LABEL_30:
        *v23 = write(v31, &__buf, 2uLL);
        if (*v23 != 2)
        {
          handle_settings_captureABC(1, *v23);
          goto LABEL_35;
        }

        *v23 = write(v31, &v24, 2uLL);
        if (*v23 != 2)
        {
          handle_settings_captureABC(0, *v23);
          goto LABEL_35;
        }

        swapWrite(v38, v31, v24);
      }

      if (!v36)
      {
        v9 = v32;
        if (v9 == lseek(sSettingsFd, v24, 1))
        {
          swapWrite(v38, v31, v33 - v32);
          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        goto LABEL_35;
      }

      if (v36 != -1)
      {
        --v36;
        goto LABEL_30;
      }

      v8 = v32;
      if (v8 != lseek(sSettingsFd, v24, 1))
      {
        v34 = 1;
        goto LABEL_35;
      }

      v34 = 0;
    }
  }

  v34 = 1;
LABEL_35:
  if (v35)
  {
    *v35 = v31;
  }

  else if (v34)
  {
    if (v34 == 23)
    {
      swapDiscard(v38, v31);
    }

    else if (v34 == 1)
    {
      swapDiscard(v38, v31);
      v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v22)
      {
        v7 = v22 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v6 = v7;
      v4 = otExitCodeToString(v34);
      otLogCritPlat("%s() at %s:%d: %s", "PlatformSettingsDelete", v7, 630, v4);
      handle_daemon_exit();
      exit(v34);
    }
  }

  else
  {
    swapPersist(v38, v31);
  }

  return v34;
}

uint64_t otPlatSettingsWipe(uint64_t a1)
{
  v12 = "com.apple.wpantund.ncp";
  v13 = "default";
  v14 = "otPlatSettingsWipe";
  v21 = a1;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v19 = logging_obg;
    v18 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v19;
      *type = v18;
      buf = v23;
      __os_log_helper_16_2_2_8_32_4_0(v23, v14, sSettingsFd);
      _os_log_impl(&_mh_execute_header, v19, v18, "%s: FileName: wipe with fd = %d", v23, 0x12u);
    }
  }

  else if (!logging_obg)
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = v17;
      *v7 = v16;
      v8 = v22;
      __os_log_helper_16_2_2_8_32_8_32(v22, v12, v13);
      _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
    }
  }

  result = ftruncate(sSettingsFd, 0);
  if (result)
  {
    v15 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v15)
    {
      v5 = v15 + 1;
    }

    else
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v3 = v5;
    v4 = 5;
    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsWipe", v5, 424, v2);
    handle_daemon_exit();
    exit(v4);
  }

  return result;
}

void swapPersist(uint64_t a1, int a2)
{
  v28 = "com.apple.wpantund.ncp";
  v31 = "default";
  v29 = "default";
  v30 = "swapPersist";
  v46 = a1;
  v45 = a2;
  getSettingsFileName(a1, &__from, 1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      *v26 = type;
      buf = v50;
      __os_log_helper_16_2_3_8_32_8_32_4_0(v50, v30, &__from, v45);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: FileName: %s swap file opened with fd = %d", v50, 0x1Cu);
    }
  }

  else if (!logging_obg)
  {
    v41 = &_os_log_default;
    v40 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = v41;
      *v23 = v40;
      v24 = v49;
      __os_log_helper_16_2_2_8_32_8_32(v49, v28, v29);
      _os_log_error_impl(&_mh_execute_header, v41, v40, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v49, 0x16u);
    }
  }

  getSettingsFileName(v46, &__to, 0);
  v39 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v39 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v38 = v39;
    v37 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v19 = v38;
      *v20 = v37;
      v21 = v48;
      __os_log_helper_16_2_3_8_32_8_32_4_0(v48, v30, &__to, sSettingsFd);
      _os_log_impl(&_mh_execute_header, v38, v37, "%s: FileName: %s data fiile opened with fd = %d", v48, 0x1Cu);
    }
  }

  else if (!v39)
  {
    v36 = &_os_log_default;
    v35 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = v36;
      *v17 = v35;
      v18 = v47;
      __os_log_helper_16_2_2_8_32_8_32(v47, v28, v29);
      _os_log_error_impl(&_mh_execute_header, v36, v35, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
    }
  }

  if (close(sSettingsFd))
  {
    v34 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v34)
    {
      v15 = v34 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v13 = v15;
    v14 = 5;
    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapPersist", v15, 190, v2);
    handle_daemon_exit();
    exit(v14);
  }

  if (fsync(v45))
  {
    v33 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v33)
    {
      v12 = v33 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v10 = v12;
    v11 = 5;
    v4 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapPersist", v12, 191, v4);
    handle_daemon_exit();
    exit(v11);
  }

  rename(&__from, &__to, v3);
  if (v5)
  {
    v32 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v32)
    {
      v9 = v32 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v7 = v9;
    v8 = 5;
    v6 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapPersist", v9, 192, v6);
    handle_daemon_exit();
    exit(v8);
  }

  sSettingsFd = v45;
}

uint64_t swapOpen(uint64_t a1)
{
  v12 = "com.apple.wpantund.ncp";
  v16 = "default";
  v13 = "default";
  v14 = "swapOpen";
  v24 = a1;
  v15 = v27;
  getSettingsFileName(a1, v27, 1);
  v23 = open(v27, 16778754, 384);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      *v10 = type;
      buf = v26;
      __os_log_helper_16_2_3_8_32_8_32_4_0(v26, v14, v27, v23);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: FileName: %s swap file opened with fd = %d", v26, 0x1Cu);
    }
  }

  else if (!logging_obg)
  {
    v19 = &_os_log_default;
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = v19;
      *v7 = v18;
      v8 = v25;
      __os_log_helper_16_2_2_8_32_8_32(v25, v12, v13);
      _os_log_error_impl(&_mh_execute_header, v19, v18, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
    }
  }

  if (v23 == -1)
  {
    v17 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v17)
    {
      v5 = v17 + 1;
    }

    else
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v3 = v5;
    v4 = 5;
    v1 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapOpen", v5, 139, v1);
    handle_daemon_exit();
    exit(v4);
  }

  return v23;
}

ssize_t swapWrite(uint64_t a1, int a2, unsigned __int16 a3)
{
  while (a3)
  {
    if (a3 < 0x200uLL)
    {
      v6 = a3;
    }

    else
    {
      v6 = 512;
    }

    v8 = read(sSettingsFd, __buf, v6);
    if (v8 <= 0)
    {
      v7 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v7)
      {
        v5 = v7 + 1;
      }

      else
      {
        v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v3 = otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", "swapWrite", v5, 163, v3);
      handle_daemon_exit();
      exit(1);
    }

    result = write(a2, __buf, v8);
    if (result != v8)
    {
      __assert_rtn("swapWrite", "settings.cpp", 166, "rval == count");
    }

    a3 -= v8;
  }

  return result;
}

uint64_t swapDiscard(uint64_t a1, int a2)
{
  v17 = "com.apple.wpantund.ncp";
  v18 = "default";
  v19 = "swapDiscard";
  v28 = a1;
  v27 = a2;
  if (close(a2))
  {
    v26 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v26)
    {
      v16 = v26 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v14 = v16;
    v15 = 5;
    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapDiscard", v16, 201, v2);
    handle_daemon_exit();
    exit(v15);
  }

  getSettingsFileName(v28, v31, 1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      *v12 = type;
      buf = v30;
      __os_log_helper_16_2_3_8_32_8_32_4_0(v30, v19, v31, v27);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: FileName: %s swap file closed and unlinked with fd = %d", v30, 0x1Cu);
    }
  }

  else if (!logging_obg)
  {
    v22 = &_os_log_default;
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = v22;
      *v9 = v21;
      v10 = v29;
      __os_log_helper_16_2_2_8_32_8_32(v29, v17, v18);
      _os_log_error_impl(&_mh_execute_header, v22, v21, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }
  }

  result = unlink(v31);
  if (result)
  {
    v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    if (v20)
    {
      v7 = v20 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
    }

    v5 = v7;
    v6 = 5;
    v4 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "swapDiscard", v7, 208, v4);
    handle_daemon_exit();
    exit(v6);
  }

  return result;
}

unint64_t ot::BigEndian::HostSwap64(ot::BigEndian *this, unint64_t a2)
{
  return ot::Swap64(this);
}

{
  return ot::BigEndian::HostSwap64(this, a2);
}

unint64_t ot::BigEndian::ReadUint64(ot::BigEndian *this, const unsigned __int8 *a2)
{
  return _byteswap_uint64(*this);
}

{
  return ot::BigEndian::ReadUint64(this, a2);
}

unint64_t ot::Swap64(unint64_t this)
{
  return ((this & 0xFF00) << 40) | (this << 56) | ((this & 0xFF0000) << 24) | ((this & 0xFF000000) << 8) | ((this & 0xFF00000000) >> 8) | ((this & 0xFF0000000000) >> 24) | ((this & 0xFF000000000000) >> 40) | ((this & 0xFF00000000000000) >> 56);
}

{
  return ot::Swap64(this);
}

ot::Posix::ConfigFile *ot::Posix::ConfigFile::ConfigFile(ot::Posix::ConfigFile *this, const char *a2)
{
  v11 = this;
  v10 = a2;
  v8 = this;
  v12 = this;
  *this = "#";
  *(this + 1) = ".swap";
  *(this + 2) = v10;
  if (!*(this + 2))
  {
    __assert_rtn("ConfigFile", "config_file.cpp", 49, "mFilePath != nullptr");
  }

  v7 = strlen(*(v8 + 2));
  if (v7 + strlen(*(v8 + 1)) >= 0xFF)
  {
    v9 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
    if (v9)
    {
      v6 = v9 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
    }

    v4 = v6;
    v5 = 1;
    v2 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "ConfigFile", v6, 50, v2);
    handle_daemon_exit();
    exit(v5);
  }

  return v12;
}

{
  ot::Posix::ConfigFile::ConfigFile(this, a2);
  return this;
}

BOOL ot::Posix::ConfigFile::HasKey(ot::Posix::ConfigFile *this, char *a2)
{
  v5 = this;
  v4 = a2;
  v3 = 0;
  return ot::Posix::ConfigFile::Get(this, a2, &v3, 0, 0) == 0;
}

uint64_t ot::Posix::ConfigFile::Get(ot::Posix::ConfigFile *this, char *a2, int *a3, char *a4, int a5)
{
  v33 = this;
  __s1 = a2;
  v31 = a3;
  *&__n[1] = a4;
  __n[0] = a5;
  v19 = this;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  __lasts = 0;
  v25 = 0;
  if (a2)
  {
    v28 = fopen(*(v19 + 2), "r");
    if (v28)
    {
      if (fseek(v28, *v31, 0))
      {
        v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
        if (v24)
        {
          v18 = v24 + 1;
        }

        else
        {
          v18 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
        }

        v16 = v18;
        v17 = 5;
        v5 = otExitCodeToString(5);
        otLogCritPlat("%s() at %s:%d: %s", "Get", v18, 73, v5);
        handle_daemon_exit();
        exit(v17);
      }

      while (1)
      {
        v27 = fgets(__s, 513, v28);
        if (!v27)
        {
          break;
        }

        v23 = 0;
        __s2 = 0;
        v21 = 0;
        if (strlen(__s) != 512)
        {
          v6 = *v19;
          v15 = __s;
          strtok_r(__s, v6, &__lasts);
          v23 = strstr[abi:dn200100](__s, "=");
          if (v23)
          {
            v7 = v19;
            *v23 = 0;
            __s2 = __s;
            ot::Posix::ConfigFile::Strip(v7, __s);
            if (!strcmp(__s1, __s))
            {
              if (*&__n[1])
              {
                v21 = v23 + 1;
                ot::Posix::ConfigFile::Strip(v19, v23 + 1);
                v14 = __n[0] - 1;
                if (__n[0] - 1 >= strlen(v23 + 1))
                {
                  v13 = strlen(v21);
                }

                else
                {
                  v13 = __n[0] - 1;
                }

                __n[0] = v13;
                memcpy(*&__n[1], v21, v13);
                *(*&__n[1] + __n[0]) = 0;
              }

              break;
            }
          }
        }
      }

      if (v27)
      {
        v25 = ftell(v28);
        if (v25 < 0)
        {
          v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
          if (v20)
          {
            v12 = v20 + 1;
          }

          else
          {
            v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
          }

          v10 = v12;
          v11 = 5;
          v8 = otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", "Get", v12, 117, v8);
          handle_daemon_exit();
          exit(v11);
        }

        *v31 = v25;
      }

      else
      {
        v29 = 23;
      }
    }

    else
    {
      v29 = 23;
    }
  }

  else
  {
    v29 = 7;
  }

  if (v28)
  {
    fclose(v28);
  }

  return v29;
}

void ot::Posix::ConfigFile::Strip(ot::Posix::ConfigFile *this, char *a2)
{
  v4 = 0;
  for (i = 0; a2[i]; ++i)
  {
    if (a2[i] != 32 && a2[i] != 13 && a2[i] != 10)
    {
      v2 = v4++;
      a2[v2] = a2[i];
    }
  }

  a2[v4] = 0;
}

uint64_t ot::Posix::ConfigFile::Add(ot::Posix::ConfigFile *this, const char *a2, const char *a3)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v20 = this;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  if (a2 && v30)
  {
    v27 = strdup(*(v20 + 2));
    if (!v27)
    {
      v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v24)
      {
        v19 = v24 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v17 = v19;
      v18 = 5;
      v3 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Add", v19, 138, v3);
      handle_daemon_exit();
      exit(v18);
    }

    v26 = dirname(v27);
    if (stat(v26, &v25) == -1 && mkdir(v26, 0x1B0u))
    {
      v23 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v23)
      {
        v16 = v23 + 1;
      }

      else
      {
        v16 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v14 = v16;
      v15 = 5;
      v4 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Add", v16, 143, v4);
      handle_daemon_exit();
      exit(v15);
    }

    v28 = fopen(*(v20 + 2), "at");
    if (!v28)
    {
      v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v22)
      {
        v13 = v22 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v11 = v13;
      v12 = 5;
      v5 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Add", v13, 146, v5);
      handle_daemon_exit();
      exit(v12);
    }

    if (fprintf(v28, "%s=%s\n", v31, v30) <= 0)
    {
      v21 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v21)
      {
        v10 = v21 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v8 = v10;
      v9 = 5;
      v6 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Add", v10, 147, v6);
      handle_daemon_exit();
      exit(v9);
    }
  }

  else
  {
    v29 = 7;
  }

  if (v28)
  {
    fclose(v28);
  }

  if (v27)
  {
    free(v27);
  }

  return v29;
}

uint64_t ot::Posix::ConfigFile::Clear(ot::Posix::ConfigFile *this, const char *a2, std::error_code *a3)
{
  v32 = this;
  v31 = a2;
  v21 = this;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  if (a2)
  {
    v29 = fopen(*(v21 + 2), "r");
    if (!v29)
    {
      v27 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v27)
      {
        v20 = v27 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v18 = v20;
      v19 = 5;
      v3 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Clear", v20, 172, v3);
      handle_daemon_exit();
      exit(v19);
    }

    snprintf(__str, 0xFFuLL, "%s%s", *(v21 + 2), *(v21 + 1));
    v28 = fopen(__str, "w+");
    if (!v28)
    {
      v26 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v26)
      {
        v17 = v26 + 1;
      }

      else
      {
        v17 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v15 = v17;
      v16 = 5;
      v4 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Clear", v17, 174, v4);
      handle_daemon_exit();
      exit(v16);
    }

    while (fgets(v33, 512, v29))
    {
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v5 = *v21;
      v13 = v33;
      v24 = strstr[abi:dn200100](v33, v5);
      v23 = strstr[abi:dn200100](v33, v31);
      v14 = 0;
      if (v23)
      {
        v12 = 1;
        if (v24)
        {
          v12 = v23 < v24;
        }

        v14 = v12;
      }

      v25 = v14;
      if (!v14)
      {
        fputs(v33, v28);
      }
    }
  }

  else
  {
    v30 = 7;
  }

  if (v29)
  {
    fclose(v29);
  }

  if (v28)
  {
    fclose(v28);
  }

  if (!v30)
  {
    rename(__str, *(v21 + 2), a3);
    if (v6)
    {
      v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      if (v22)
      {
        v11 = v22 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp";
      }

      v9 = v11;
      v10 = 5;
      v7 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Clear", v11, 207, v7);
      handle_daemon_exit();
      exit(v10);
    }
  }

  return v30;
}

uint64_t RcpHostContext::GetRcpHostContext(RcpHostContext *this)
{
  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  return RcpHostContext::sRcpHostContext;
}

{
  return RcpHostContext::GetRcpHostContext(this);
}

void platformBackboneMulticastRoutingInit(const std::string::value_type *a1)
{
  v5 = a1;
  v1 = std::string::basic_string[abi:dn200100]<0>(&v4, a1);
  v2 = ot::Posix::InfraNetif::Get(v1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  ot::Posix::MulticastRoutingManager::Init(MulticastRoutingManager, &v4);
  std::string::~string(&v4);
}

uint64_t ot::Posix::InfraNetif::GetMulticastRoutingManager(ot::Posix::InfraNetif *this)
{
  return this + 40;
}

{
  return ot::Posix::InfraNetif::GetMulticastRoutingManager(this);
}

uint64_t platformUpdateBackboneInterfaceStatus(ot::Posix::InfraNetif *a1, char a2, char a3)
{
  v3 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v3);
  BackboneInterface = ot::Posix::MulticastRoutingManager::getBackboneInterface(MulticastRoutingManager);
  return ot::Posix::BackboneIPv6Interface::updateBackboneInterfaceInfo(BackboneInterface, a1, a2 & 1, a3 & 1);
}

uint64_t ot::Posix::MulticastRoutingManager::getBackboneInterface(ot::Posix::MulticastRoutingManager *this)
{
  return this + 42032;
}

{
  return ot::Posix::MulticastRoutingManager::getBackboneInterface(this);
}

void platformBackboneProcessMulticast(ot::Posix::InfraNetif *a1, uint64_t a2)
{
  v2 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesToBackBone(MulticastRoutingManager, a1, a2);
}

void platformSendPacketToBackBone(ot::Posix::InfraNetif *a1, size_t a2)
{
  v2 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  BackboneInterface = ot::Posix::MulticastRoutingManager::getBackboneInterface(MulticastRoutingManager);
  ot::Posix::BackboneIPv6Interface::send_bmlr_packet(BackboneInterface, a1, a2);
}

_BYTE *platformInitRcpMode(uint64_t a1)
{
  v1 = get802154RadioUrl(a1 + 16);
  result = platformRadioInit(v1);
  if ((*(a1 + 49) & 1) == 0)
  {
    platformRandomInit();
    v4 = ot::Posix::InfraNetif::Get(v3);
    ot::Posix::InfraNetif::Init(v4);
    gNetifName = 0;
    v5 = platformNetifInit(a1);
    v7 = ot::Posix::Udp::Get(v5);
    ThreadNetifName = otSysGetThreadNetifName();
    return ot::Posix::Udp::Init(v7, ThreadNetifName);
  }

  return result;
}

uint64_t get802154RadioUrl(uint64_t a1)
{
  v12 = a1;
  v11 = 0;
  for (i = 0; i < *(v12 + 16); ++i)
  {
    v1 = *(v12 + 8 * i);
    v8 = v13;
    ot::Posix::RadioUrl::RadioUrl(v13, v1);
    Protocol = ot::Url::Url::GetProtocol(v13);
    if (strcmp(Protocol, "trel"))
    {
      v11 = *(v12 + 8 * i);
      break;
    }
  }

  if (!v11)
  {
    v9 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
    if (v9)
    {
      v7 = v9 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp";
    }

    v5 = v7;
    v6 = 2;
    v3 = otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", "get802154RadioUrl", v7, 109, v3);
    handle_daemon_exit();
    exit(v6);
  }

  return v11;
}

void platformInit(int *a1)
{
  platformBacktraceInit();
  platformAlarmInit(a1[11], a1[10]);
  if (!sCoprocessorType)
  {
    v1 = get802154RadioUrl((a1 + 4));
    sCoprocessorType = platformSpinelManagerInit(v1);
  }

  if (sCoprocessorType == 1)
  {
    platformInitRcpMode(a1);
  }

  else
  {
    if (sCoprocessorType != 2)
    {
      otPlatLog(1u, 13, "Unknown type of the co-processor!\n");
      exit(1);
    }

    platformInitNcpMode();
  }

  a1[13] = sCoprocessorType;
}

ot::Posix::InfraNetif **platformSetUp(ot::Posix::InfraNetif **result)
{
  v18 = result;
  if ((gDryRun & 1) == 0)
  {
    if (*result)
    {
      result = strlen(*result);
      if (result)
      {
        otSysSetInfraNetif (*v18);
      }
    }

    v1 = ot::Posix::InfraNetif::Get(result);
    ot::Posix::InfraNetif::SetUp(v1);
    v2 = platformNetifSetUp();
    v3 = ot::Posix::Udp::Get(v2);
    v4 = ot::Posix::Udp::SetUp(v3);
    v5 = ot::Posix::Daemon::Get(v4);
    ot::Posix::Daemon::EnableCliForXpc(v5);
    v17 = otSetStateChangedCallback(gInstance, processStateChange, gInstance);
    if (v17)
    {
      v16 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
      if (v16)
      {
        v13 = v16 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp";
      }

      if (v17 == 7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      v7 = otExitCodeToString(v6);
      otLogCritPlat("%s() at %s:%d: %s", "platformSetUp", v13, 323, v7);
      handle_daemon_exit();
      if (v17 == 7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      exit(v8);
    }

    result = otSetStateChangedCallback(gInstance, processOtNotifyEvent, 0);
    v15 = result;
    if (result)
    {
      v14 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
      if (v14)
      {
        v12 = v14 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp";
      }

      if (v15 == 7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = otExitCodeToString(v9);
      otLogCritPlat("%s() at %s:%d: %s", "platformSetUp", v12, 326, v10);
      handle_daemon_exit();
      if (v15 == 7)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      exit(v11);
    }
  }

  return result;
}

void processStateChange(uint64_t a1, uint64_t a2)
{
  platformNetifStateChange(a2, a1);
  v3 = ot::Posix::InfraNetif::Get(v2);
  ot::Posix::InfraNetif::HandleBackboneStateChange(v3, a2, a1);
}

uint64_t otSysInitCoprocessor(uint64_t a1)
{
  v1 = get802154RadioUrl(a1);
  sCoprocessorType = platformSpinelManagerInit(v1);
  return sCoprocessorType;
}

uint64_t otSysInit(uint64_t a1)
{
  if (gInstance)
  {
    __assert_rtn("otSysInit", "system.cpp", 342, "gInstance == nullptr");
  }

  platformInit(a1);
  gDryRun = *(a1 + 49) & 1;
  if (sCoprocessorType == 1)
  {
    gInstance = otInstanceInitSingle(v1);
    if (!gInstance)
    {
      __assert_rtn("otSysInit", "system.cpp", 350, "gInstance != nullptr");
    }

    platformSetUp(a1);
  }

  return gInstance;
}

ot::Posix::Daemon *platformTearDown(ot::Posix::Daemon *result)
{
  if ((gDryRun & 1) == 0)
  {
    v1 = ot::Posix::Daemon::Get(result);
    ot::Posix::Daemon::TearDown(v1);
    v3 = ot::Posix::Udp::Get(v2);
    ot::Posix::Udp::TearDown(v3);
    platformNetifTearDown();
    v5 = ot::Posix::InfraNetif::Get(v4);
    return ot::Posix::InfraNetif::TearDown(v5);
  }

  return result;
}

void platformDeinitRcpMode(void)
{
  platformRadioDeinit();
  platformSpinelManagerDeinit();
  sCoprocessorType = 0;
  if ((gDryRun & 1) == 0)
  {
    v1 = ot::Posix::Udp::Get(v0);
    ot::Posix::Udp::Deinit(v1);
    v2 = platformNetifDeinit();
    v3 = ot::Posix::InfraNetif::Get(v2);
    ot::Posix::InfraNetif::Deinit(v3);
  }
}

void otSysDeinit(ot::Posix::Daemon *result)
{
  if (sCoprocessorType == 1)
  {
    if (!gInstance)
    {
      __assert_rtn("otSysDeinit", "system.cpp", 430, "gInstance != nullptr");
    }

    platformTearDown(result);
    otInstanceFinalize(gInstance);
    gInstance = 0;
    platformDeinitRcpMode();
  }

  else if (sCoprocessorType == 2)
  {
    platformDeinitNcpMode();
  }
}

ot::Cli::Interpreter *otSysCliInitUsingDaemon(ot::Instance *a1)
{
  v3 = otSysCliInitUsingDaemon::$_0::operator int (*)(void *,char const*,char *)();
  v1 = ot::Posix::Daemon::Get(v3);
  return otCliInit(a1, v3, v1);
}

uint64_t ot::Url::Url::GetProtocol(ot::Url::Url *this)
{
  return *this;
}

{
  return ot::Url::Url::GetProtocol(this);
}

uint64_t otSysCliInitUsingDaemon::$_0::__invoke(otSysCliInitUsingDaemon::$_0 *this, const char *a2, char *a3, char *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  return otSysCliInitUsingDaemon::$_0::operator()(&v5, this, a2, a3);
}

uint64_t otPlatUdpSocket(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 56))
  {
    __assert_rtn("otPlatUdpSocket", "udp.cpp", 222, "aUdpSocket->mHandle == nullptr");
  }

  v2 = SocketWithCloseExec(30, 2, 17, 1);
  if ((v2 & 0x80000000) != 0)
  {
    return 1;
  }

  else
  {
  }

  return v3;
}

uint64_t otPlatUdpClose(uint64_t a1, void *a2)
{
  v4 = 0;
  if (*(a1 + 56))
  {
    if (close(v2))
    {
      return 1;
    }

    else
    {
      *(a1 + 56) = 0;
    }
  }

  return v4;
}

uint64_t otPlatUdpBind(__n128 *a1, void *a2)
{
  v20 = a1;
  v19 = 0;
  v18 = 0;
  if (!gNetifIndex)
  {
    __assert_rtn("otPlatUdpBind", "udp.cpp", 256, "gNetifIndex != 0");
  }

  if (!v20[3].n128_u64[1])
  {
    __assert_rtn("otPlatUdpBind", "udp.cpp", 257, "aUdpSocket->mHandle != nullptr");
  }

  if (v20[1].n128_u16[0])
  {
    v18 = v2;
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v16 = 0;
    v17 = 0;
    v13 = _OSSwapInt16(v20[1].n128_u16[0]);
    *v15.sa_data = v13;
    v15.sa_family = 30;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v20, &v15.sa_data[6]);
    if (bind(v18, &v15, 0x1Cu))
    {
      v19 = 1;
    }

    else
    {
      v14 = 1;
      if (setsockopt(v18, 41, 37, &v14, 4u))
      {
        v19 = 1;
      }

      else if (setsockopt(v18, 41, 61, &v14, 4u))
      {
        v19 = 1;
      }
    }
  }

  else
  {
    v19 = 7;
  }

  if (v19 == 1)
  {
    v3 = __error();
    v4 = strerror(*v3);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("Failed to bind UDP socket: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  return v19;
}

uint64_t otPlatUdpBindToNetif (uint64_t a1, void *a2)
{
  v25 = a1;
  v24 = a2;
  v23 = 0;
  v22 = v2;
  v21 = 1;
  v20 = 0;
  v17 = v24;
  if (v24)
  {
    if (v17 == 1)
    {
      if (setsockopt(v22, 41, 125, &gNetifIndex, 4u))
      {
        v23 = 1;
        goto LABEL_20;
      }
    }

    else if (v17 == 2)
    {
      InfraNetifName = otSysGetInfraNetifName(v2);
      if (!InfraNetifName || (v11 = otSysGetInfraNetifName(InfraNetifName), !*v11))
      {
        ot::Posix::Logger<ot::Posix::Udp>::LogWarn2("No backbone interface given, %s fails.", v4, v5, v6, v7, v8, v9, v10, "otPlatUdpBindToNetif");
        v23 = 7;
        goto LABEL_20;
      }

      InfraNetifIndex = otSysGetInfraNetifIndex(v11);
      if (setsockopt(v22, 41, 125, &InfraNetifIndex, 4u))
      {
        v23 = 1;
        goto LABEL_20;
      }

      if (setsockopt(v22, 41, 10, &v21, 4u))
      {
        v23 = 1;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v19 = 0;
    if (setsockopt(v22, 41, 125, &v19, 4u))
    {
      v23 = 1;
      goto LABEL_20;
    }
  }

  if (setsockopt(v22, 41, 11, &v20, 4u))
  {
    v23 = 1;
  }

LABEL_20:
  if (v23)
  {
    v15 = v22;
    v16 = v24;
    v12 = __error();
    v13 = strerror(*v12);
    otLogWarnPlat("otPlatUdpBindToNetif failed for fd:%d, netIdentifier:%d, errorno:%s", v15, v16, v13);
  }

  return v23;
}

uint64_t otPlatUdpConnect(uint64_t a1)
{
  v25 = a1;
  v24 = 0;
  v20 = 0;
  *v18 = 0;
  if (ot::Posix::Ip6Utils::IsIp6AddressUnspecified(a1 + 18))
  {
    *v18 = *(v25 + 34) == 0;
  }

  v19 = v18[0];
  if (*(v25 + 56))
  {
    v20 = v2;
    *&v21.sa_len = 0;
    *&v21.sa_data[6] = 0;
    v22 = 0;
    v23 = 0;
    v17 = _OSSwapInt16(*(v25 + 34));
    *v21.sa_data = v17;
    if (v19)
    {
      v21.sa_family = 0;
    }

    else
    {
      v21.sa_family = 30;
      ot::Posix::Ip6Utils::CopyIp6AddressTo((v25 + 18), &v21.sa_data[6]);
    }

    if (connect(v20, &v21, 0x1Cu) && *__error() == 47 && v19)
    {
      v14 = v26;
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v26, (v25 + 18));
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v26);
      v15 = v3;
      v16 = *(v25 + 34);
      v4 = __error();
      v5 = strerror(*v4);
      ot::Posix::Logger<ot::Posix::Udp>::LogWarn2("Failed to connect to [%s]:%u: %s", v6, v7, v8, v9, v10, v11, v12, v15, v16, v5);
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v24;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressUnspecified(uint64_t a1)
{
  return otIp6IsAddressUnspecified(a1);
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressUnspecified(a1);
}

uint64_t otPlatUdpSend(uint64_t a1, void *a2, __n128 *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = 0;
  v19 = 0;
  Length = 0;
  if (*(a1 + 56))
  {
    v19 = v3;
    Length = otMessageGetLength(v22);
    v13 = Length;
    if (Length == otMessageRead(v22, 0, v24, Length))
    {
      if ((v21[2].n128_u8[5] & 0x10) != 0)
      {
        v17 = 1;
        if (setsockopt(v19, 41, 11, &v17, 4u))
        {
          v16 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
          if (v16)
          {
            v12 = v16 + 1;
          }

          else
          {
            v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp";
          }

          v10 = v12;
          v11 = 5;
          v4 = otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", "otPlatUdpSend", v12, 441, v4);
          handle_daemon_exit();
          exit(v11);
        }
      }

      if ((v21[2].n128_u8[5] & 0x10) != 0)
      {
        v15 = 0;
        if (setsockopt(v19, 41, 11, &v15, 4u))
        {
          v14 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
          if (v14)
          {
            v9 = v14 + 1;
          }

          else
          {
            v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp";
          }

          v7 = v9;
          v8 = 5;
          v5 = otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", "otPlatUdpSend", v9, 450, v5);
          handle_daemon_exit();
          exit(v8);
        }
      }
    }

    else
    {
      v20 = 7;
    }
  }

  else
  {
    v20 = 7;
  }

  if (!v20)
  {
    otMessageFree(v22);
  }

  return v20;
}

uint64_t anonymous namespace::transmitPacket(int a1, uint64_t a2, unsigned __int16 a3, __n128 *a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 128;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0;
  WORD1(v22) = _OSSwapInt16(a4[2].n128_u16[1]);
  BYTE1(v22) = 30;
  ot::Posix::Ip6Utils::CopyIp6AddressTo(v26 + 1, &v23);
  if (ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(&v26[1]) && (v26[2].n128_u8[5] & 4) == 0)
  {
    v24 = gNetifIndex;
  }

  memset(__b, 0, sizeof(__b));
  v20[0] = v28;
  v20[1] = v27;
  v19.msg_name = &v22;
  v19.msg_namelen = 28;
  v19.msg_control = __b;
  v19.msg_controllen = 128;
  v19.msg_iov = v20;
  v19.msg_iovlen = 1;
  v19.msg_flags = 0;
  if (v26[2].n128_u8[4])
  {
    v12 = v26[2].n128_u8[4];
  }

  else
  {
    v12 = 64;
  }

  v15 = v12;
  if (v19.msg_controllen < 0xCuLL)
  {
    msg_control = 0;
  }

  else
  {
    msg_control = v19.msg_control;
  }

  v18 = msg_control;
  msg_control[1] = 41;
  v18[2] = 47;
  *v18 = 16;
  v18[3] = v15;
  v21 += 16;
  if (!ot::Posix::Ip6Utils::IsIp6AddressMulticast(v26) && !ot::Posix::Ip6Utils::IsIp6AddressUnspecified(v26))
  {
    if (v18)
    {
      if ((v18 + ((*v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12) > v19.msg_control + v19.msg_controllen)
      {
        v8 = 0;
      }

      else
      {
        v8 = v18 + ((*v18 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      }

      v9 = v8;
    }

    else
    {
      if (v19.msg_controllen < 0xCuLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = v19.msg_control;
      }

      v9 = v10;
    }

    v18 = v9;
    v9[1] = 41;
    v18[2] = 46;
    *v18 = 32;
    if ((v26[2].n128_u8[5] & 4) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = gNetifIndex;
    }

    v14 = v7;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v26, &v13);
    v4 = v18;
    *(v18 + 3) = v13;
    v4[7] = v14;
    v21 += 32;
  }

  v19.msg_controllen = v21;
  v17 = sendmsg(v29, &v19, 0);
  if (v17 <= 0)
  {
    perror("sendmsg");
  }

  if (v17 == -1)
  {
    if (*__error() == 22)
    {
      return 13;
    }

    else
    {
      return 1;
    }
  }

  return v16;
}

uint64_t otPlatUdpJoinMulticastGroup(uint64_t a1, void *a2, __n128 *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v16 = 0;
  if (*(a1 + 56))
  {
    v16 = v3;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v20, &v17);
    v15 = v21;
    if (v21)
    {
      if (v15 == 1)
      {
        InfraNetifIndex = gNetifIndex;
      }

      else if (v15 == 2)
      {
        InfraNetifIndex = otSysGetInfraNetifIndex(v4);
      }
    }

    if (setsockopt(v16, 41, 12, &v17, 0x14u) && *__error() != 48)
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 7;
  }

  if (v19)
  {
    v5 = __error();
    v6 = strerror(*v5);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("IPV6_JOIN_GROUP failed: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v19;
}

uint64_t otPlatUdpLeaveMulticastGroup(uint64_t a1, void *a2, __n128 *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v16 = 0;
  if (*(a1 + 56))
  {
    v16 = v3;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v20, &v17);
    v15 = v21;
    if (v21)
    {
      if (v15 == 1)
      {
        InfraNetifIndex = gNetifIndex;
      }

      else if (v15 == 2)
      {
        InfraNetifIndex = otSysGetInfraNetifIndex(v4);
      }
    }

    if (setsockopt(v16, 41, 13, &v17, 0x14u) && *__error() != 48)
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 7;
  }

  if (v19)
  {
    v5 = __error();
    v6 = strerror(*v5);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("IPV6_LEAVE_GROUP failed: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v19;
}

uint64_t ot::Posix::Udp::Init(uint64_t this, const char *a2)
{
  v19 = this;
  v18 = a2;
  if (!a2)
  {
    v17 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
    if (v17)
    {
      v14 = v17 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp";
    }

    v12 = v14;
    v13 = 2;
    v2 = otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", "Init", v14, 579, v2);
    handle_daemon_exit();
    exit(v13);
  }

  if (v18 != &gNetifName)
  {
    if (strlen(v18) >= 0xF)
    {
      v16 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
      if (v16)
      {
        v11 = v16 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp";
      }

      v9 = v11;
      v10 = 2;
      v3 = otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", "Init", v11, 584, v3);
      handle_daemon_exit();
      exit(v10);
    }

    if (gNetifIndex)
    {
      __assert_rtn("Init", "udp.cpp", 585, "gNetifIndex == 0");
    }

    v8 = &gNetifName;
    strcpy(&gNetifName, v18);
    this = if_nametoindex(&gNetifName);
    gNetifIndex = this;
    if (!this)
    {
      v15 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
      if (v15)
      {
        v7 = v15 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp";
      }

      v5 = v7;
      v6 = 5;
      v4 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "Init", v7, 588, v4);
      handle_daemon_exit();
      exit(v6);
    }
  }

  if (!gNetifIndex)
  {
    __assert_rtn("Init", "udp.cpp", 591, "gNetifIndex != 0");
  }

  return this;
}

uint64_t (***ot::Posix::Udp::Get(ot::Posix::Udp *this))()
{
  {
    __cxa_atexit(std::allocator<char>::allocator[abi:dn200100], &ot::Posix::Udp::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::Udp::Get(void)::sInstance;
}

BOOL anonymous namespace::receivePacket(int a1, uint64_t a2, unsigned __int16 *a3, __n128 *a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v13 = 0;
  v15[0] = a2;
  v15[1] = *a3;
  v14.msg_name = &v16;
  v14.msg_namelen = 28;
  v14.msg_control = &v23;
  v14.msg_controllen = 1280;
  v14.msg_iov = v15;
  v14.msg_iovlen = 1;
  v14.msg_flags = 0;
  v13 = recvmsg(a1, &v14, 0);
  if (v13 > 0)
  {
    *v20 = v13;
    if (v14.msg_controllen < 0xCuLL)
    {
      msg_control = 0;
    }

    else
    {
      msg_control = v14.msg_control;
    }

    for (i = msg_control; i; i = v6)
    {
      if (i[1] == 41)
      {
        if (i[2] == 47)
        {
          v11 = 0;
          v11 = i[3];
          v19[2].n128_u8[4] = v11;
        }

        else if (i[2] == 46)
        {
          v9 = *(i + 3);
          v10 = i[7];
          v19[2].n128_u8[5] = v19[2].n128_u8[5] & 0xFB | (4 * (v10 != gNetifIndex));
          ot::Posix::Ip6Utils::ReadIp6AddressFrom(&v9, v19);
        }
      }

      if (i)
      {
        if ((i + ((*i + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12) > v14.msg_control + v14.msg_controllen)
        {
          v5 = 0;
        }

        else
        {
          v5 = i + ((*i + 3) & 0xFFFFFFFFFFFFFFFCLL);
        }

        v6 = v5;
      }

      else
      {
        if (v14.msg_controllen < 0xCuLL)
        {
          v7 = 0;
        }

        else
        {
          v7 = v14.msg_control;
        }

        v6 = v7;
      }
    }

    v19[2].n128_u16[1] = _OSSwapInt16(v17);
    ot::Posix::Ip6Utils::ReadIp6AddressFrom(&v18, v19 + 1);
  }

  else
  {
    perror("recvmsg");
  }

  return v13 <= 0;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(unsigned __int8 *a1)
{
  v2 = 0;
  if (*a1 == 254)
  {
    return (a1[1] & 0xC0) == 128;
  }

  return v2;
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(a1);
}

uint64_t ot::Power::Domain::Set(ot::Power::Domain *this, const char *a2)
{
  *&__n[4] = 0;
  *__n = strlen(a2);
  if (*__n <= 8u)
  {
    memcpy(this, a2, *__n);
    *(this + *__n) = 0;
  }

  else
  {
    *&__n[2] = 7;
  }

  return *&__n[2];
}

uint64_t ot::Power::TargetPower::FromString(ot::Power::TargetPower *this, char *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  __lasts = 0;
  v8 = strtok_r(a2, ",", &__lasts);
  if (v8)
  {
    v9 = ot::Utils::CmdLineParser::ParseAsUint8(v8, this, v2);
    if (!v9)
    {
      v8 = strtok_r(0, ",", &__lasts);
      if (v8)
      {
        v9 = ot::Utils::CmdLineParser::ParseAsUint8(v8, this + 1, v3);
        if (!v9)
        {
          v8 = strtok_r(0, ",", &__lasts);
          if (v8)
          {
            return ot::Utils::CmdLineParser::ParseAsInt16(v8, this + 2, v4);
          }

          else
          {
            return 6;
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    return 6;
  }

  return v9;
}

char *ot::String<(unsigned short)12>::String(char *a1)
{
  ot::String<(unsigned short)12>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, a1 + 12, 12);
  return a1;
}

uint64_t ot::Power::RawPowerSetting::Set(ot::Power::RawPowerSetting *this, ot::Utils::CmdLineParser *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  *v6 = 16;
  v7 = ot::Utils::CmdLineParser::ParseAsHexString(a2, v6, this, a4);
  if (!v7)
  {
    *(this + 8) = v6[0];
  }

  return v7;
}

char *ot::String<(unsigned short)33>::String(char *a1)
{
  ot::String<(unsigned short)33>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, a1 + 12, 33);
  return a1;
}

uint64_t ot::Power::CalibratedPower::FromString(ot::Power::CalibratedPower *this, char *a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  __lasts = 0;
  v10 = strtok_r(a2, ",", &__lasts);
  if (v10)
  {
    v11 = ot::Utils::CmdLineParser::ParseAsUint8(v10, this, v2);
    if (!v11)
    {
      v10 = strtok_r(0, ",", &__lasts);
      if (v10)
      {
        v11 = ot::Utils::CmdLineParser::ParseAsUint8(v10, this + 1, v3);
        if (!v11)
        {
          v10 = strtok_r(0, ",", &__lasts);
          if (v10)
          {
            v11 = ot::Utils::CmdLineParser::ParseAsInt16(v10, this + 2, v4);
            if (!v11)
            {
              return ot::Power::RawPowerSetting::Set((this + 4), __lasts, v5, v6);
            }
          }

          else
          {
            return 6;
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    return 6;
  }

  return v11;
}

ot::StringWriter *ot::Power::CalibratedPower::ToString@<X0>(ot::StringWriter *__return_ptr a1@<X8>, ot::Power::CalibratedPower *this@<X0>)
{
  ot::String<(unsigned short)53>::String(a1);
  v5 = *this;
  v6 = *(this + 1);
  v7 = *(this + 1);
  ot::Power::RawPowerSetting::ToString((this + 4), v9);
  v2 = ot::String<(unsigned short)33>::AsCString(v9);
  return ot::StringWriter::Append(a1, "%u,%u,%d,%s", v5, v6, v7, v2);
}

char *ot::String<(unsigned short)53>::String(char *a1)
{
  ot::String<(unsigned short)53>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, a1 + 12, 53);
  return a1;
}

uint64_t ot::String<(unsigned short)33>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)33>::AsCString(a1);
}

void *mbedtls_aes_free(void *result)
{
  if (result)
  {
    return mbedtls_platform_zeroize(result, 0x120uLL);
  }

  return result;
}

uint64_t mbedtls_aes_setkey_enc(int *a1, uint64_t a2, unsigned int a3)
{
  switch(a3)
  {
    case 0x80u:
      *a1 = 10;
      break;
    case 0xC0u:
      *a1 = 12;
      break;
    case 0x100u:
      *a1 = 14;
      break;
    default:
      return -32;
  }

  *(a1 + 1) = mbedtls_aes_rk_offset();
  v9 = &a1[*(a1 + 1) + 4];
  for (i = 0; i < a3 >> 5; ++i)
  {
    v9[i] = *(a2 + 4 * i);
  }

  v4 = *a1;
  if (*a1 == 10)
  {
    for (j = 0; j < 0xA; ++j)
    {
      v9[4] = *v9 ^ round_constants[j] ^ FSb[BYTE1(v9[3])] ^ (FSb[BYTE2(v9[3])] << 8) ^ (FSb[HIBYTE(v9[3])] << 16) ^ (FSb[*(v9 + 12)] << 24);
      v9[5] = v9[1] ^ v9[4];
      v9[6] = v9[2] ^ v9[5];
      v9[7] = v9[3] ^ v9[6];
      v9 += 4;
    }
  }

  else if (v4 == 12)
  {
    for (k = 0; k < 8; ++k)
    {
      v9[6] = *v9 ^ round_constants[k] ^ FSb[BYTE1(v9[5])] ^ (FSb[BYTE2(v9[5])] << 8) ^ (FSb[HIBYTE(v9[5])] << 16) ^ (FSb[*(v9 + 20)] << 24);
      v9[7] = v9[1] ^ v9[6];
      v9[8] = v9[2] ^ v9[7];
      v9[9] = v9[3] ^ v9[8];
      v9[10] = v9[4] ^ v9[9];
      v9[11] = v9[5] ^ v9[10];
      v9 += 6;
    }
  }

  else if (v4 == 14)
  {
    for (m = 0; m < 7; ++m)
    {
      v9[8] = *v9 ^ round_constants[m] ^ FSb[BYTE1(v9[7])] ^ (FSb[BYTE2(v9[7])] << 8) ^ (FSb[HIBYTE(v9[7])] << 16) ^ (FSb[*(v9 + 28)] << 24);
      v9[9] = v9[1] ^ v9[8];
      v9[10] = v9[2] ^ v9[9];
      v9[11] = v9[3] ^ v9[10];
      v9[12] = v9[4] ^ FSb[*(v9 + 44)] ^ (FSb[BYTE1(v9[11])] << 8) ^ (FSb[BYTE2(v9[11])] << 16) ^ (FSb[HIBYTE(v9[11])] << 24);
      v9[13] = v9[5] ^ v9[12];
      v9[14] = v9[6] ^ v9[13];
      v9[15] = v9[7] ^ v9[14];
      v9 += 8;
    }
  }

  return 0;
}

uint64_t mbedtls_aes_setkey_dec(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v29 = 0;
  v22 = &v26;
  bzero(&v26, 0x120uLL);
  v25 = 0;
  mbedtls_aes_init(&v26);
  *(v33 + 8) = mbedtls_aes_rk_offset();
  v25 = v33 + 16 + 4 * *(v33 + 8);
  v29 = mbedtls_aes_setkey_enc(&v26, v32, v31);
  if (!v29)
  {
    *v33 = v26;
    v3 = &v28[4 * v26 + v27];
    v30 = v3 + 1;
    LODWORD(v3) = *v3;
    v4 = v25;
    v25 += 4;
    *v4 = v3;
    v5 = v30++;
    LODWORD(v5) = *v5;
    v6 = v25;
    v25 += 4;
    *v6 = v5;
    v7 = v30++;
    LODWORD(v7) = *v7;
    v8 = v25;
    v25 += 4;
    *v8 = v7;
    v9 = v30++;
    LODWORD(v9) = *v9;
    v10 = v25;
    v25 += 4;
    *v10 = v9;
    v30 -= 8;
    v24 = *v33 - 1;
    while (v24 > 0)
    {
      v23 = 0;
      while (v23 < 4)
      {
        v11 = RT0[FSb[*v30]] ^ RT1[FSb[BYTE1(*v30)]] ^ RT2[FSb[BYTE2(*v30)]] ^ RT3[FSb[HIBYTE(*v30)]];
        v12 = v25;
        v25 += 4;
        *v12 = v11;
        ++v23;
        ++v30;
      }

      --v24;
      v30 -= 8;
    }

    v13 = v30++;
    LODWORD(v13) = *v13;
    v14 = v25;
    v25 += 4;
    *v14 = v13;
    v15 = v30++;
    LODWORD(v15) = *v15;
    v16 = v25;
    v25 += 4;
    *v16 = v15;
    v17 = v30++;
    LODWORD(v17) = *v17;
    v18 = v25;
    v25 += 4;
    *v18 = v17;
    v19 = v30++;
    LODWORD(v19) = *v19;
    v20 = v25;
    v25 += 4;
    *v20 = v19;
  }

  mbedtls_aes_free(&v26);
  return v29;
}

uint64_t mbedtls_internal_aes_encrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  i = 0;
  v26 = a1 + 16 + 4 * *(a1 + 8);
  v24 = 0u;
  v25 = 0u;
  v38 = a2;
  v37 = 0;
  v37 = *a2;
  LODWORD(v24) = v37;
  v3 = v26;
  v26 += 4;
  LODWORD(v24) = v37 ^ *v3;
  v36 = a2 + 1;
  v35 = 0;
  v35 = a2[1];
  DWORD1(v24) = v35;
  v4 = v26;
  v26 += 4;
  DWORD1(v24) = v35 ^ *v4;
  v34 = a2 + 2;
  v33 = 0;
  v33 = a2[2];
  DWORD2(v24) = v33;
  v5 = v26;
  v26 += 4;
  DWORD2(v24) = v33 ^ *v5;
  v32 = a2 + 3;
  v31 = 0;
  v31 = a2[3];
  HIDWORD(v24) = v31;
  v6 = v26;
  v26 += 4;
  HIDWORD(v24) = v31 ^ *v6;
  for (i = (*a1 >> 1) - 1; i > 0; --i)
  {
    v7 = v26;
    v26 += 4;
    LODWORD(v25) = *v7 ^ FT0[v24] ^ FT1[BYTE5(v24)] ^ FT2[BYTE10(v24)] ^ FT3[HIBYTE(v24)];
    v8 = v26;
    v26 += 4;
    DWORD1(v25) = *v8 ^ FT0[BYTE4(v24)] ^ FT1[BYTE9(v24)] ^ FT2[BYTE14(v24)] ^ FT3[BYTE3(v24)];
    v9 = v26;
    v26 += 4;
    DWORD2(v25) = *v9 ^ FT0[BYTE8(v24)] ^ FT1[BYTE13(v24)] ^ FT2[BYTE2(v24)] ^ FT3[BYTE7(v24)];
    v10 = v26;
    v26 += 4;
    HIDWORD(v25) = *v10 ^ FT0[BYTE12(v24)] ^ FT1[BYTE1(v24)] ^ FT2[BYTE6(v24)] ^ FT3[BYTE11(v24)];
    v11 = v26;
    v26 += 4;
    LODWORD(v24) = *v11 ^ FT0[v25] ^ FT1[BYTE5(v25)] ^ FT2[BYTE10(v25)] ^ FT3[HIBYTE(v25)];
    v12 = v26;
    v26 += 4;
    DWORD1(v24) = *v12 ^ FT0[BYTE4(v25)] ^ FT1[BYTE9(v25)] ^ FT2[BYTE14(v25)] ^ FT3[BYTE3(v25)];
    v13 = v26;
    v26 += 4;
    DWORD2(v24) = *v13 ^ FT0[BYTE8(v25)] ^ FT1[BYTE13(v25)] ^ FT2[BYTE2(v25)] ^ FT3[BYTE7(v25)];
    v14 = v26;
    v26 += 4;
    HIDWORD(v24) = *v14 ^ FT0[BYTE12(v25)] ^ FT1[BYTE1(v25)] ^ FT2[BYTE6(v25)] ^ FT3[BYTE11(v25)];
  }

  v15 = v26;
  v26 += 4;
  LODWORD(v25) = *v15 ^ FT0[v24] ^ FT1[BYTE5(v24)] ^ FT2[BYTE10(v24)] ^ FT3[HIBYTE(v24)];
  v16 = v26;
  v26 += 4;
  DWORD1(v25) = *v16 ^ FT0[BYTE4(v24)] ^ FT1[BYTE9(v24)] ^ FT2[BYTE14(v24)] ^ FT3[BYTE3(v24)];
  v17 = v26;
  v26 += 4;
  DWORD2(v25) = *v17 ^ FT0[BYTE8(v24)] ^ FT1[BYTE13(v24)] ^ FT2[BYTE2(v24)] ^ FT3[BYTE7(v24)];
  v18 = v26;
  v26 += 4;
  HIDWORD(v25) = *v18 ^ FT0[BYTE12(v24)] ^ FT1[BYTE1(v24)] ^ FT2[BYTE6(v24)] ^ FT3[BYTE11(v24)];
  v19 = v26;
  v26 += 4;
  LODWORD(v24) = *v19 ^ FSb[v25] ^ (FSb[BYTE5(v25)] << 8) ^ (FSb[BYTE10(v25)] << 16) ^ (FSb[HIBYTE(v25)] << 24);
  v20 = v26;
  v26 += 4;
  DWORD1(v24) = *v20 ^ FSb[BYTE4(v25)] ^ (FSb[BYTE9(v25)] << 8) ^ (FSb[BYTE14(v25)] << 16) ^ (FSb[BYTE3(v25)] << 24);
  v21 = v26;
  v26 += 4;
  DWORD2(v24) = *v21 ^ FSb[BYTE8(v25)] ^ (FSb[BYTE13(v25)] << 8) ^ (FSb[BYTE2(v25)] << 16) ^ (FSb[BYTE7(v25)] << 24);
  v22 = v26;
  v26 += 4;
  HIDWORD(v24) = *v22 ^ FSb[BYTE12(v25)] ^ (FSb[BYTE1(v25)] << 8) ^ (FSb[BYTE6(v25)] << 16) ^ (FSb[BYTE11(v25)] << 24);
  v46 = v28;
  v45 = v24;
  __memcpy_chk();
  v44 = v28 + 4;
  v43 = DWORD1(v24);
  __memcpy_chk();
  v42 = v28 + 8;
  v41 = DWORD2(v24);
  __memcpy_chk();
  v40 = v28 + 12;
  v39 = HIDWORD(v24);
  __memcpy_chk();
  mbedtls_platform_zeroize(&v24, 0x20uLL);
  return 0;
}

uint64_t mbedtls_internal_aes_decrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  i = 0;
  v26 = a1 + 16 + 4 * *(a1 + 8);
  v24 = 0u;
  v25 = 0u;
  v38 = a2;
  v37 = 0;
  v37 = *a2;
  LODWORD(v24) = v37;
  v3 = v26;
  v26 += 4;
  LODWORD(v24) = v37 ^ *v3;
  v36 = a2 + 1;
  v35 = 0;
  v35 = a2[1];
  DWORD1(v24) = v35;
  v4 = v26;
  v26 += 4;
  DWORD1(v24) = v35 ^ *v4;
  v34 = a2 + 2;
  v33 = 0;
  v33 = a2[2];
  DWORD2(v24) = v33;
  v5 = v26;
  v26 += 4;
  DWORD2(v24) = v33 ^ *v5;
  v32 = a2 + 3;
  v31 = 0;
  v31 = a2[3];
  HIDWORD(v24) = v31;
  v6 = v26;
  v26 += 4;
  HIDWORD(v24) = v31 ^ *v6;
  for (i = (*a1 >> 1) - 1; i > 0; --i)
  {
    v7 = v26;
    v26 += 4;
    LODWORD(v25) = *v7 ^ RT0[v24] ^ RT1[BYTE13(v24)] ^ RT2[BYTE10(v24)] ^ RT3[BYTE7(v24)];
    v8 = v26;
    v26 += 4;
    DWORD1(v25) = *v8 ^ RT0[BYTE4(v24)] ^ RT1[BYTE1(v24)] ^ RT2[BYTE14(v24)] ^ RT3[BYTE11(v24)];
    v9 = v26;
    v26 += 4;
    DWORD2(v25) = *v9 ^ RT0[BYTE8(v24)] ^ RT1[BYTE5(v24)] ^ RT2[BYTE2(v24)] ^ RT3[HIBYTE(v24)];
    v10 = v26;
    v26 += 4;
    HIDWORD(v25) = *v10 ^ RT0[BYTE12(v24)] ^ RT1[BYTE9(v24)] ^ RT2[BYTE6(v24)] ^ RT3[BYTE3(v24)];
    v11 = v26;
    v26 += 4;
    LODWORD(v24) = *v11 ^ RT0[v25] ^ RT1[BYTE13(v25)] ^ RT2[BYTE10(v25)] ^ RT3[BYTE7(v25)];
    v12 = v26;
    v26 += 4;
    DWORD1(v24) = *v12 ^ RT0[BYTE4(v25)] ^ RT1[BYTE1(v25)] ^ RT2[BYTE14(v25)] ^ RT3[BYTE11(v25)];
    v13 = v26;
    v26 += 4;
    DWORD2(v24) = *v13 ^ RT0[BYTE8(v25)] ^ RT1[BYTE5(v25)] ^ RT2[BYTE2(v25)] ^ RT3[HIBYTE(v25)];
    v14 = v26;
    v26 += 4;
    HIDWORD(v24) = *v14 ^ RT0[BYTE12(v25)] ^ RT1[BYTE9(v25)] ^ RT2[BYTE6(v25)] ^ RT3[BYTE3(v25)];
  }

  v15 = v26;
  v26 += 4;
  LODWORD(v25) = *v15 ^ RT0[v24] ^ RT1[BYTE13(v24)] ^ RT2[BYTE10(v24)] ^ RT3[BYTE7(v24)];
  v16 = v26;
  v26 += 4;
  DWORD1(v25) = *v16 ^ RT0[BYTE4(v24)] ^ RT1[BYTE1(v24)] ^ RT2[BYTE14(v24)] ^ RT3[BYTE11(v24)];
  v17 = v26;
  v26 += 4;
  DWORD2(v25) = *v17 ^ RT0[BYTE8(v24)] ^ RT1[BYTE5(v24)] ^ RT2[BYTE2(v24)] ^ RT3[HIBYTE(v24)];
  v18 = v26;
  v26 += 4;
  HIDWORD(v25) = *v18 ^ RT0[BYTE12(v24)] ^ RT1[BYTE9(v24)] ^ RT2[BYTE6(v24)] ^ RT3[BYTE3(v24)];
  v19 = v26;
  v26 += 4;
  LODWORD(v24) = *v19 ^ RSb[v25] ^ (RSb[BYTE13(v25)] << 8) ^ (RSb[BYTE10(v25)] << 16) ^ (RSb[BYTE7(v25)] << 24);
  v20 = v26;
  v26 += 4;
  DWORD1(v24) = *v20 ^ RSb[BYTE4(v25)] ^ (RSb[BYTE1(v25)] << 8) ^ (RSb[BYTE14(v25)] << 16) ^ (RSb[BYTE11(v25)] << 24);
  v21 = v26;
  v26 += 4;
  DWORD2(v24) = *v21 ^ RSb[BYTE8(v25)] ^ (RSb[BYTE5(v25)] << 8) ^ (RSb[BYTE2(v25)] << 16) ^ (RSb[HIBYTE(v25)] << 24);
  v22 = v26;
  v26 += 4;
  HIDWORD(v24) = *v22 ^ RSb[BYTE12(v25)] ^ (RSb[BYTE9(v25)] << 8) ^ (RSb[BYTE6(v25)] << 16) ^ (RSb[BYTE3(v25)] << 24);
  v46 = v28;
  v45 = v24;
  __memcpy_chk();
  v44 = v28 + 4;
  v43 = DWORD1(v24);
  __memcpy_chk();
  v42 = v28 + 8;
  v41 = DWORD2(v24);
  __memcpy_chk();
  v40 = v28 + 12;
  v39 = HIDWORD(v24);
  __memcpy_chk();
  mbedtls_platform_zeroize(&v24, 0x20uLL);
  return 0;
}

uint64_t mbedtls_aes_crypt_ecb(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  if (a2 < 2)
  {
    if (a2)
    {
      return mbedtls_internal_aes_encrypt(a1, a3, a4);
    }

    else
    {
      return mbedtls_internal_aes_decrypt(a1, a3, a4);
    }
  }

  else
  {
    return -33;
  }
}

uint64_t mbedtls_asn1_get_len(_BYTE **a1, uint64_t a2, void *a3)
{
  if (a2 - *a1 >= 1)
  {
    if ((**a1 & 0x80) != 0)
    {
      v6 = **a1 & 0x7F;
      if ((**a1 & 0x7F) == 0 || (**a1 & 0x7Fu) > 4)
      {
        return -100;
      }

      if (a2 - *a1 <= (**a1 & 0x7Fu))
      {
        return -96;
      }

      *a3 = 0;
      ++*a1;
      while (v6--)
      {
        *a3 = *(*a1)++ | (*a3 << 8);
      }
    }

    else
    {
      v3 = (*a1)++;
      *a3 = *v3;
    }

    if (*a3 <= (a2 - *a1))
    {
      return 0;
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_get_tag(unsigned __int8 **a1, uint64_t a2, void *a3, int a4)
{
  if (a2 - *a1 >= 1)
  {
    if (**a1 == a4)
    {
      ++*a1;
      return mbedtls_asn1_get_len(a1, a2, a3);
    }

    else
    {
      return -98;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_get_BOOL(unsigned __int8 **a1, uint64_t a2, _DWORD *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 1);
  if (tag)
  {
    return tag;
  }

  else if (v4 == 1)
  {
    *v6 = *(*v8)++ != 0;
    return 0;
  }

  else
  {
    return -100;
  }
}

uint64_t asn1_get_tagged_int(unsigned __int8 **a1, uint64_t a2, int a3, int *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  tag = -110;
  v7 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v7, a3);
  if (tag)
  {
    return tag;
  }

  else if (v7)
  {
    if ((**v12 & 0x80) != 0)
    {
      return -100;
    }

    else
    {
      while (1)
      {
        v6 = 0;
        if (v7)
        {
          v6 = **v12 == 0;
        }

        if (!v6)
        {
          break;
        }

        ++*v12;
        --v7;
      }

      if (v7 <= 4)
      {
        if (v7 == 4 && (**v12 & 0x80) != 0)
        {
          return -100;
        }

        else
        {
            ;
          }

          return 0;
        }
      }

      else
      {
        return -100;
      }
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_asn1_get_mpi(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 2);
  if (!tag)
  {
    tag = mbedtls_mpi_read_binary(v6, *v8, v4);
    *v8 += v4;
  }

  return tag;
}

uint64_t mbedtls_asn1_get_bitstring(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  tag = mbedtls_asn1_get_tag(a1, a2, a3, 3);
  if (tag)
  {
    return tag;
  }

  else if (*a3)
  {
    --*a3;
    *(a3 + 8) = **a1;
    if (*(a3 + 8) <= 7u)
    {
      *(a3 + 16) = ++*a1;
      *a1 += *a3;
      if (*a1 == a2)
      {
        return 0;
      }

      else
      {
        return -102;
      }
    }

    else
    {
      return -100;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_traverse_sequence_of(_BYTE **a1, _BYTE *a2, char a3, unsigned __int8 a4, char a5, unsigned __int8 a6, uint64_t (*a7)(uint64_t, void, void, uint64_t), uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a7;
  v13 = a8;
  tag = 0;
  v11 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v11, 48);
  if (tag)
  {
    return tag;
  }

  else if (&(*v20)[v11] == v19)
  {
    while (*v20 < v19)
    {
      v8 = (*v20)++;
      v10 = *v8;
      if ((*v8 & v18) != v17)
      {
        return -98;
      }

      tag = mbedtls_asn1_get_len(v20, v19, &v11);
      if (tag)
      {
        return tag;
      }

      if ((v10 & v16) == v15)
      {
        if (v14)
        {
          tag = v14(v13, v10, *v20, v11);
          if (tag)
          {
            return tag;
          }
        }
      }

      *v20 += v11;
    }

    return 0;
  }

  else
  {
    return -102;
  }
}

uint64_t mbedtls_asn1_get_bitstring_null(unsigned __int8 **a1, uint64_t a2, void *a3)
{
  tag = mbedtls_asn1_get_tag(a1, a2, a3, 3);
  if (tag)
  {
    return tag;
  }

  else if (*a3)
  {
    --*a3;
    if (**a1)
    {
      return -104;
    }

    else
    {
      ++*a1;
      return 0;
    }
  }

  else
  {
    return -104;
  }
}

uint64_t mbedtls_asn1_sequence_free(uint64_t result)
{
  for (i = result; i; i = v1)
  {
    v1 = *(i + 24);
    result = mbedtls_free(i);
  }

  return result;
}

uint64_t mbedtls_asn1_get_sequence_of(_BYTE **a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = a4;
  v5[1] = a3;
  __memset_chk();
  return mbedtls_asn1_traverse_sequence_of(v9, v8, 255, v6, 0, 0, asn1_get_sequence_of_cb, v5);
}

uint64_t asn1_get_sequence_of_cb(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  *(v5 + 24) = mbedtls_calloc(1, 32);
  if (*(v5 + 24))
  {
    v5 = *(v5 + 24);
LABEL_5:
    *(v5 + 16) = a3;
    *(v5 + 8) = a4;
    *v5 = a2;
    *(a1 + 8) = v5;
    return 0;
  }

  return -106;
}

uint64_t mbedtls_asn1_get_alg(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  tag = -110;
  v6 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v6, 48);
  if (tag)
  {
    return tag;
  }

  else if (v10 - *v11 < 1)
  {
    return -96;
  }

  else
  {
    *v9 = **v11;
    v10 = &(*v11)[v6];
    v4 = mbedtls_asn1_get_tag(v11, v10, (v9 + 8), 6);
    tag = v4;
    if (v4)
    {
      return tag;
    }

    else
    {
      *(v9 + 16) = *v11;
      *v11 += *(v9 + 8);
      if (*v11 == v10)
      {
        mbedtls_platform_zeroize(v8, 0x18uLL);
        return 0;
      }

      else
      {
        *v8 = *(*v11)++;
        tag = mbedtls_asn1_get_len(v11, v10, v8 + 1);
        if (tag)
        {
          return tag;
        }

        else
        {
          *(v8 + 2) = *v11;
          *v11 += *(v8 + 1);
          if (*v11 == v10)
          {
            return 0;
          }

          else
          {
            return -102;
          }
        }
      }
    }
  }
}

uint64_t mbedtls_asn1_get_alg_null(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  alg = -110;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  alg = mbedtls_asn1_get_alg(a1, a2, a3, &v4);
  if (alg)
  {
    return alg;
  }

  else if (v4 != 5 && v4 || v5)
  {
    return -104;
  }

  else
  {
    return 0;
  }
}

uint64_t *mbedtls_asn1_free_named_data(uint64_t *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_free(result[2]);
    mbedtls_free(v1[5]);
    return mbedtls_platform_zeroize(v1, 0x40uLL);
  }

  return result;
}

uint64_t **mbedtls_asn1_free_named_data_list(uint64_t **result)
{
  v2 = result;
  while (1)
  {
    v1 = *v2;
    if (!*v2)
    {
      break;
    }

    *v2 = v1[6];
    mbedtls_free(v1[2]);
    mbedtls_free(v1[5]);
    result = mbedtls_free(v1);
  }

  return result;
}

uint64_t mbedtls_asn1_free_named_data_list_shallow(uint64_t result)
{
  for (i = result; i; i = v1)
  {
    v1 = *(i + 48);
    result = mbedtls_free(i);
  }

  return result;
}

uint64_t mbedtls_asn1_find_named_data(uint64_t a1, const void *a2, size_t a3)
{
  while (a1 && (*(a1 + 8) != a3 || memcmp(*(a1 + 16), a2, a3)))
  {
    a1 = *(a1 + 48);
  }

  return a1;
}

uint64_t mbedtls_asn1_write_len(void *a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  if (a3 <= 0xFFFFFFFF)
  {
    v7 = 1;
    if (a3 >= 0x80)
    {
      for (i = a3; i; i >>= 8)
      {
        ++v7;
      }
    }

    if (v7 <= *a1 - a2)
    {
      do
      {
        v3 = (*a1 - 1);
        *a1 = v3;
        *v3 = v8;
        v8 >>= 8;
      }

      while (v8);
      if (v7 > 1)
      {
        v4 = (*a1 - 1);
        *a1 = v4;
        *v4 = v7 + 127;
      }

      return v7;
    }

    else
    {
      return -108;
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_asn1_write_tag(void *a1, uint64_t a2, char a3)
{
  if (*a1 - a2 < 1)
  {
    return -108;
  }

  else
  {
    v3 = (*a1 - 1);
    *a1 = v3;
    *v3 = a3;
    return 1;
  }
}

uint64_t mbedtls_asn1_write_raw_buffer(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  if (*a1 >= a2 && *a1 - a2 >= a4)
  {
    *a1 -= a4;
    __memcpy_chk();
    return v5;
  }

  else
  {
    return -108;
  }
}

uint64_t mbedtls_asn1_write_mpi(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = mbedtls_mpi_size(a3);
  if (!v5)
  {
    v5 = 1;
  }

  if (*a1 >= a2 && *a1 - a2 >= v5)
  {
    *a1 -= v5;
    v6 = mbedtls_mpi_write_binary(a3, *a1, v5);
    if (!v6)
    {
      if (*(a3 + 8) == 1 && (**a1 & 0x80) != 0)
      {
        if ((*a1 - a2) < 1)
        {
          return -108;
        }

        v3 = (*a1 - 1);
        *a1 = v3;
        *v3 = 0;
        ++v5;
      }

      return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 2);
    }

    return v6;
  }

  return -108;
}

uint64_t mbedtls_asn1_write_len_and_tag(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = a3;
  v5 = mbedtls_asn1_write_len(a1, a2, a3);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    v9 = v8 + v5;
    v6 = mbedtls_asn1_write_tag(a1, a2, a4);
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }

    else
    {
      return v9 + v6;
    }
  }
}

uint64_t mbedtls_asn1_write_oid(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_asn1_write_raw_buffer(a1, a2, a3, a4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 6);
  }
}

uint64_t mbedtls_asn1_write_algorithm_identifier_ext(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = 0;
  if (a6)
  {
    if (a5)
    {
      v7 = a5;
    }

    else
    {
      v8 = mbedtls_asn1_write_null(a1, a2);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v7 = v8;
    }
  }

  v9 = mbedtls_asn1_write_oid(a1, a2, a3, a4);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v7 + v9, 48);
  }
}

uint64_t mbedtls_asn1_write_BOOL(void *a1, uint64_t a2, int a3)
{
  if (*a1 - a2 >= 1)
  {
    if (a3)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v4 = (*a1)--;
    *(v4 - 1) = v3;
    return mbedtls_asn1_write_len_and_tag(a1, a2, 1uLL, 1);
  }

  else
  {
    return -108;
  }
}

uint64_t asn1_write_tagged_int(void *a1, uint64_t a2, int a3, char a4)
{
  v7 = 0;
  do
  {
    if (*a1 - a2 < 1)
    {
      return -108;
    }

    ++v7;
    v4 = (*a1)--;
    *(v4 - 1) = a3;
    a3 >>= 8;
  }

  while (a3 > 0);
  if ((**a1 & 0x80) == 0)
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v7, a4);
  }

  if (*a1 - a2 >= 1)
  {
    v5 = (*a1 - 1);
    *a1 = v5;
    *v5 = 0;
    return mbedtls_asn1_write_len_and_tag(a1, a2, ++v7, a4);
  }

  return -108;
}

uint64_t mbedtls_asn1_write_tagged_string(unint64_t *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = mbedtls_asn1_write_raw_buffer(a1, a2, a4, a5);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v6, a3);
  }
}

uint64_t mbedtls_asn1_write_named_bitstring(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4;
  if (a4)
  {
    v7 = (a3 + (a4 + 7) / 8 - 1);
    v6 = *v7 >> (8 * ((a4 + 7) / 8) - a4);
    while (1)
    {
      v5 = v6 & 1;
      v6 = v6 >> 1;
      if (v5)
      {
        break;
      }

      if (!--v8)
      {
        break;
      }

      if (!(v8 % 8))
      {
        v6 = *--v7;
      }
    }
  }

  return mbedtls_asn1_write_bitstring(a1, a2, a3, v8);
}

uint64_t mbedtls_asn1_write_bitstring(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + 7) / 8uLL;
  v10 = 8 * v8 - a4;
  if (*a1 >= a2 && *a1 - a2 >= v8 + 1)
  {
    v11 = v8 + 1;
    if (v8)
    {
      v9 = v8 - 1;
      v4 = *(a3 + v9) & ~((1 << v10) - 1);
      v5 = (*a1 - 1);
      *a1 = v5;
      *v5 = v4;
      *a1 -= v9;
      __memcpy_chk();
    }

    v6 = (*a1)--;
    *(v6 - 1) = v10;
    return mbedtls_asn1_write_len_and_tag(a1, a2, v11, 3);
  }

  else
  {
    return -108;
  }
}

uint64_t mbedtls_asn1_write_octet_string(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_asn1_write_raw_buffer(a1, a2, a3, a4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 4);
  }
}

void *mbedtls_asn1_store_named_data(uint64_t *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  named_data = mbedtls_asn1_find_named_data(*a1, a2, a3);
  if (named_data)
  {
    if (a5)
    {
      if (named_data[4] != a5)
      {
        v6 = mbedtls_calloc(1, a5);
        if (!v6)
        {
          return 0;
        }

        mbedtls_free(named_data[5]);
        named_data[5] = v6;
        named_data[4] = a5;
      }
    }

    else
    {
      mbedtls_free(named_data[5]);
      named_data[5] = 0;
    }
  }

  else
  {
    named_data = mbedtls_calloc(1, 64);
    if (!named_data)
    {
      return 0;
    }

    named_data[1] = a3;
    named_data[2] = mbedtls_calloc(1, a3);
    if (!named_data[2])
    {
      mbedtls_free(named_data);
      return 0;
    }

    __memcpy_chk();
    named_data[4] = a5;
    if (a5)
    {
      named_data[5] = mbedtls_calloc(1, a5);
      if (!named_data[5])
      {
        mbedtls_free(named_data[2]);
        mbedtls_free(named_data);
        return 0;
      }
    }

    named_data[6] = *a1;
    *a1 = named_data;
  }

  if (a4 && a5)
  {
    __memcpy_chk();
  }

  return named_data;
}

uint64_t mbedtls_base64_encode(_BYTE *a1, unint64_t a2, void *a3, unsigned __int8 *a4, unint64_t a5)
{
  if (a5)
  {
    v24 = a5 / 3 + (a5 % 3 != 0);
    if (v24 <= 0x3FFFFFFFFFFFFFFFLL)
    {
      v25 = 4 * v24;
      if (a2 >= v25 + 1 && a1)
      {
        v26 = 3 * (a5 / 3);
        v27 = 0;
        v17 = a1;
        while (v27 < v26)
        {
          v22 = *a4;
          v21 = a4[1];
          v5 = a4 + 2;
          a4 += 3;
          v20 = *v5;
          *v17 = mbedtls_ct_base64_enc_char((v22 >> 2) & 0x3F);
          v17[1] = mbedtls_ct_base64_enc_char(((v21 >> 4) + 16 * (v22 & 3)) & 0x3F);
          v17[2] = mbedtls_ct_base64_enc_char(((v20 >> 6) + 4 * (v21 & 0xF)) & 0x3F);
          v6 = mbedtls_ct_base64_enc_char(v20 & 0x3F);
          v7 = v17 + 3;
          v17 += 4;
          *v7 = v6;
          v27 += 3;
        }

        if (v27 < a5)
        {
          v8 = a4;
          v30 = a4 + 1;
          v23 = *v8;
          if (v27 + 1 >= a5)
          {
            v16 = 0;
          }

          else
          {
            v16 = *v30;
          }

          *v17 = mbedtls_ct_base64_enc_char((v23 >> 2) & 0x3F);
          v9 = mbedtls_ct_base64_enc_char(((v16 >> 4) + 16 * (v23 & 3)) & 0x3F);
          v10 = v17 + 1;
          v18 = v17 + 2;
          *v10 = v9;
          if (v27 + 1 >= a5)
          {
            v13 = v18;
            v19 = v18 + 1;
            *v13 = 61;
          }

          else
          {
            v11 = mbedtls_ct_base64_enc_char((4 * (v16 & 0xF)) & 0x3F);
            v12 = v18;
            v19 = v18 + 1;
            *v12 = v11;
          }

          v14 = v19;
          v17 = v19 + 1;
          *v14 = 61;
        }

        *a3 = v17 - a1;
        *v17 = 0;
        return 0;
      }

      else
      {
        *a3 = v25 + 1;
        return -42;
      }
    }

    else
    {
      *a3 = -1;
      return -42;
    }
  }

  else
  {
    *a3 = 0;
    return 0;
  }
}

uint64_t mbedtls_ct_base64_enc_char(unsigned __int8 a1)
{
  v2 = mbedtls_ct_uchar_in_range_if (0, 0x19u, a1, a1 + 65);
  v3 = v2 | mbedtls_ct_uchar_in_range_if (0x1Au, 0x33u, a1, a1 + 71);
  v4 = v3 | mbedtls_ct_uchar_in_range_if (0x34u, 0x3Du, a1, a1 - 4);
  v5 = v4 | mbedtls_ct_uchar_in_range_if (0x3Eu, 0x3Eu, a1, 0x2Bu);
  return (v5 | mbedtls_ct_uchar_in_range_if (0x3Fu, 0x3Fu, a1, 0x2Fu));
}

uint64_t mbedtls_base64_decode(_BYTE *a1, unint64_t a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5)
{
  v14 = 0;
  v12 = 0;
  v16 = 0;
  for (i = 0; i < a5; ++i)
  {
    for (j = 0; ; j = 1)
    {
      v9 = 0;
      if (i < a5)
      {
        v9 = a4[i] == 32;
      }

      if (!v9)
      {
        break;
      }

      ++i;
    }

    if (i == a5)
    {
      break;
    }

    if ((a5 - i < 2 || a4[i] != 13 || a4[i + 1] != 10) && a4[i] != 10)
    {
      if (j)
      {
        return -44;
      }

      if (a4[i] > 0x7Fu)
      {
        return -44;
      }

      if (a4[i] == 61)
      {
        if (++v12 > 2)
        {
          return -44;
        }
      }

      else
      {
        if (v12)
        {
          return -44;
        }

        if ((mbedtls_ct_base64_dec_value(a4[i]) & 0x80000000) != 0)
        {
          return -44;
        }
      }

      ++v16;
    }
  }

  if (v16)
  {
    v17 = 6 * (v16 >> 3) + ((6 * (v16 & 7) + 7) >> 3) - v12;
    if (a1 && a2 >= v17)
    {
      v13 = 0;
      v15 = 0;
      v10 = a1;
      while (i)
      {
        if (*a4 != 13 && *a4 != 10 && *a4 != 32)
        {
          v15 <<= 6;
          if (*a4 == 61)
          {
            ++v13;
          }

          else
          {
            v15 |= mbedtls_ct_base64_dec_value(*a4);
          }

          if (++v14 == 4)
          {
            v14 = 0;
            v5 = v10++;
            *v5 = BYTE2(v15);
            if (v13 <= 1)
            {
              v6 = v10++;
              *v6 = BYTE1(v15);
            }

            if (!v13)
            {
              v7 = v10++;
              *v7 = v15;
            }
          }
        }

        --i;
        ++a4;
      }

      *a3 = v10 - a1;
      return 0;
    }

    else
    {
      *a3 = v17;
      return -42;
    }
  }

  else
  {
    *a3 = 0;
    return 0;
  }
}

uint64_t mbedtls_ct_base64_dec_value(unsigned __int8 a1)
{
  v2 = mbedtls_ct_uchar_in_range_if (0x41u, 0x5Au, a1, a1 - 64);
  v3 = v2 | mbedtls_ct_uchar_in_range_if (0x61u, 0x7Au, a1, a1 - 70);
  v4 = v3 | mbedtls_ct_uchar_in_range_if (0x30u, 0x39u, a1, a1 + 5);
  v5 = v4 | mbedtls_ct_uchar_in_range_if (0x2Bu, 0x2Bu, a1, a1 + 20);
  return ((v5 | mbedtls_ct_uchar_in_range_if (0x2Fu, 0x2Fu, a1, a1 + 17)) - 1);
}

uint64_t mbedtls_ct_uchar_in_range_if (unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  mbedtls_ct_compiler_opaque();
  v7 = v4;
  mbedtls_ct_compiler_opaque();
  return (~(((v7 - a1) >> 8) | ((a2 - v7) >> 8)) & v5);
}

uint64_t mbedtls_mpi_lt_mpi_ct(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  if (*(a1 + 5) == *(a2 + 5))
  {
    v10 = mbedtls_ct_BOOL((a1[1] & 2) >> 1);
    v9 = mbedtls_ct_BOOL((a2[1] & 2) >> 1);
    v11 = mbedtls_ct_BOOL_ne(v10, v9);
    v8 = mbedtls_ct_BOOL_and(v11, v10);
    v16 = 0;
    v17 = 0;
    v16 = *a1;
    v17 = *a2;
    v7 = mbedtls_ct_BOOL_and(v10, 1);
    v6 = mbedtls_mpi_core_lt_ct(*(&v16 + v7), *(&v16 + (v7 ^ 1)), *(a1 + 5));
    v3 = mbedtls_ct_BOOL_not(v11);
    v4 = mbedtls_ct_BOOL_and(v3, v6);
    LODWORD(v8) = mbedtls_ct_BOOL_or(v8, v4);
    *a3 = mbedtls_ct_uint_if_else_0(v8, 1u);
    return 0;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_safe_cond_assign(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = mbedtls_mpi_grow(a1, *(a2 + 10));
  if (!v7)
  {
    v6 = mbedtls_ct_BOOL(a3);
    *(a1 + 8) = mbedtls_ct_mpi_sign_if (v6, *(a2 + 8), *(a1 + 8));
    mbedtls_mpi_core_cond_assign(*a1, *a2, *(a2 + 10), v6);
    v5 = mbedtls_ct_BOOL_not(v6);
    for (i = *(a2 + 10); i < *(a1 + 10); ++i)
    {
      *(*a1 + 8 * i) = mbedtls_ct_BOOL_and(v5, *(*a1 + 8 * i));
    }
  }

  return v7;
}

uint64_t mbedtls_mpi_grow(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if (a2 <= 0x2710)
  {
    if (*(a1 + 10) < a2)
    {
      v3 = mbedtls_calloc(a2, 8);
      if (!v3)
      {
        return -16;
      }

      if (*a1)
      {
        __memcpy_chk();
        mbedtls_zeroize_and_free(*a1, 8 * *(a1 + 10));
      }

      *(a1 + 10) = v4;
      *a1 = v3;
    }

    return 0;
  }

  return -16;
}

uint64_t mbedtls_mpi_safe_cond_swap(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    v4 = mbedtls_ct_BOOL(a3);
    v6 = mbedtls_mpi_grow(a1, *(a2 + 10));
    if (!v6)
    {
      v6 = mbedtls_mpi_grow(a2, *(a1 + 10));
      if (!v6)
      {
        v5 = *(a1 + 8);
        *(a1 + 8) = mbedtls_ct_mpi_sign_if (v4, *(a2 + 8), v5);
        *(a2 + 8) = mbedtls_ct_mpi_sign_if (v4, v5, *(a2 + 8));
        mbedtls_mpi_core_cond_swap(*a1, *a2, *(a1 + 10), v4);
      }
    }

    return v6;
  }
}

uint64_t mbedtls_mpi_init(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 10) = 0;
  *result = 0;
  return result;
}

uint64_t mbedtls_mpi_free(uint64_t result)
{
  v1 = result;
  if (result)
  {
    if (*result)
    {
      result = mbedtls_zeroize_and_free(*result, 8 * *(result + 10));
    }

    *(v1 + 8) = 1;
    *(v1 + 10) = 0;
    *v1 = 0;
  }

  return result;
}

uint64_t mbedtls_mpi_shrink(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x2710)
  {
    if (*(a1 + 10) > a2)
    {
        ;
      }

      v4 = i + 1;
      if (v4 < a2)
      {
        v4 = a2;
      }

      v5 = mbedtls_calloc(v4, 8);
      if (v5)
      {
        if (*a1)
        {
          __memcpy_chk();
          mbedtls_zeroize_and_free(*a1, 8 * *(a1 + 10));
        }

        *(a1 + 10) = v4;
        *a1 = v5;
        return 0;
      }

      else
      {
        return -16;
      }
    }

    else
    {
      return mbedtls_mpi_grow(a1, a2);
    }
  }

  else
  {
    return -16;
  }
}

uint64_t mbedtls_mpi_copy(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a1 == a2)
  {
    return 0;
  }

  if (*(a2 + 10))
  {
      ;
    }

    v4 = i + 1;
    *(a1 + 8) = *(a2 + 8);
    if (*(a1 + 10) >= v4)
    {
      __memset_chk();
    }

    else
    {
      v5 = mbedtls_mpi_grow(a1, v4);
      if (v5)
      {
        return v5;
      }
    }

    __memcpy_chk();
    return v5;
  }

  if (*(a1 + 10))
  {
    *(a1 + 8) = 1;
    __memset_chk();
  }

  return 0;
}

uint64_t mbedtls_mpi_lset(uint64_t a1, unint64_t a2)
{
  v3 = mbedtls_mpi_grow(a1, 1uLL);
  if (!v3)
  {
    __memset_chk();
    **a1 = mpi_sint_abs(a2);
    *(a1 + 8) = -2 * (a2 >> 63) + 1;
  }

  return v3;
}

uint64_t mpi_sint_abs(uint64_t a1)
{
  if (a1 < 0)
  {
    return -a1;
  }

  else
  {
    return a1;
  }
}

uint64_t mbedtls_mpi_get_bit(uint64_t a1, unint64_t a2)
{
  if (a2 < *(a1 + 10) << 6)
  {
    return (*(*a1 + 8 * (a2 / 0x40)) >> (a2 % 0x40)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_mpi_set_bit(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = 0;
  v5 = a2 / 0x40;
  v4 = a2 % 0x40;
  if (!a3 || a3 == 1)
  {
    if (a2 < *(a1 + 10) << 6)
    {
      goto LABEL_8;
    }

    if (!a3)
    {
      return 0;
    }

    v6 = mbedtls_mpi_grow(a1, v5 + 1);
    if (!v6)
    {
LABEL_8:
      *(*a1 + 8 * v5) &= ~(1 << v4);
      *(*a1 + 8 * v5) |= a3 << v4;
    }

    return v6;
  }

  return -4;
}

unint64_t mbedtls_mpi_lsb(uint64_t a1)
{
  for (i = 0; i < *(a1 + 10); ++i)
  {
    if (*(*a1 + 8 * i))
    {
      return __clz(__rbit64(*(*a1 + 8 * i))) + (i << 6);
    }
  }

  return 0;
}

uint64_t mbedtls_mpi_read_string(uint64_t a1, int a2, const char *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  digit = -110;
  i = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 1;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (a2 >= 2 && v13 <= 16)
  {
    mbedtls_mpi_init(v4);
    if (!*v12)
    {
      mbedtls_mpi_free(v14);
      return 0;
    }

    if (*v12 == 45)
    {
      ++v12;
      v6 = -1;
    }

    v8 = strlen(v12);
    if (v13 == 16)
    {
      if (v8 > 0x3FFFFFFFFFFFFFFFLL)
      {
        return -4;
      }

      v7 = 4 * v8 / 0x40 + (4 * v8 % 0x40 != 0);
      digit = mbedtls_mpi_grow(v14, v7);
      if (!digit)
      {
        digit = mbedtls_mpi_lset(v14, 0);
        if (!digit)
        {
          i = v8;
          v9 = 0;
          while (i)
          {
            digit = mpi_get_digit(&v5, v13, v12[i - 1]);
            if (digit)
            {
              goto LABEL_28;
            }

            *(*v14 + 8 * (v9 / 0x10)) |= v5 << (4 * (v9 % 0x10));
            --i;
            ++v9;
          }

LABEL_25:
          if (v6 < 0 && mbedtls_mpi_bitlen(v14))
          {
            *(v14 + 8) = -1;
          }
        }
      }
    }

    else
    {
      digit = mbedtls_mpi_lset(v14, 0);
      if (!digit)
      {
        for (i = 0; i < v8; ++i)
        {
          digit = mpi_get_digit(&v5, v13, v12[i]);
          if (digit)
          {
            goto LABEL_28;
          }

          digit = mbedtls_mpi_mul_int(v4, v14, v13);
          if (digit)
          {
            goto LABEL_28;
          }

          digit = mbedtls_mpi_add_int(v14, v4, v5);
          if (digit)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_28:
    mbedtls_mpi_free(v4);
    return digit;
  }

  return -4;
}

uint64_t mpi_get_digit(void *a1, int a2, char a3)
{
  *a1 = 255;
  if (a3 >= 48 && a3 <= 57)
  {
    *a1 = a3 - 48;
  }

  if (a3 >= 65 && a3 <= 70)
  {
    *a1 = a3 - 55;
  }

  if (a3 >= 97 && a3 <= 102)
  {
    *a1 = a3 - 87;
  }

  if (*a1 < a2)
  {
    return 0;
  }

  else
  {
    return -6;
  }
}

uint64_t mbedtls_mpi_mul_int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 10); ; --i)
  {
    v4 = 0;
    if (i)
    {
      v4 = *(*a2 + 8 * (i - 1)) == 0;
    }

    if (!v4)
    {
      break;
    }
  }

  if (a3 && i)
  {
    v5 = mbedtls_mpi_grow(a1, i + 1);
    if (!v5)
    {
      v5 = mbedtls_mpi_copy(a1, a2);
      if (!v5)
      {
        mbedtls_mpi_core_mla(*a1, *(a1 + 10), *a2, i, a3 - 1);
      }
    }

    return v5;
  }

  else
  {
    return mbedtls_mpi_lset(a1, 0);
  }
}

uint64_t mbedtls_mpi_add_int(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v4 = 0;
  v5 = 0;
  v9 = mpi_sint_abs(a3);
  LOWORD(v5) = -2 * (v6 >> 63) + 1;
  WORD1(v5) = 1;
  v4 = &v9;
  return mbedtls_mpi_add_mpi(v8, v7, &v4);
}

uint64_t mbedtls_mpi_write_string(uint64_t a1, int a2, char *a3, unint64_t a4, unint64_t *a5)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  if (a2 >= 2 && v24 <= 16)
  {
    v19 = mbedtls_mpi_bitlen(v25);
    if (v24 >= 4)
    {
      v19 >>= 1;
    }

    if (v24 >= 16)
    {
      v19 >>= 1;
    }

    v19 += 3 + ((v19 + 3) & 1);
    if (v22 < v19)
    {
      *v21 = v19;
      return -8;
    }

    v18 = v23;
    mbedtls_mpi_init(&v16);
    if (*(v25 + 8) == -1)
    {
      v5 = v18++;
      *v5 = 45;
      --v22;
    }

    if (v24 == 16)
    {
      v14 = *(v25 + 10);
      v12 = 0;
      while (v14)
      {
        for (i = 8; i; --i)
        {
          v15 = (*(*v25 + 8 * (v14 - 1)) >> (8 * (i - 1)));
          if ((*(*v25 + 8 * (v14 - 1)) >> (8 * (i - 1))) || v12 || v14 + i == 2)
          {
            v6 = a0123456789abcd_0[v15 / 16];
            v7 = v18++;
            *v7 = v6;
            v8 = a0123456789abcd_0[v15 % 16];
            v9 = v18++;
            *v9 = v8;
            v12 = 1;
          }
        }

        --v14;
      }
    }

    else
    {
      v20 = mbedtls_mpi_copy(&v16, v25);
      if (v20)
      {
        goto LABEL_29;
      }

      if (v17 == -1)
      {
        LOWORD(v17) = 1;
      }

      v20 = mpi_write_hlp(&v16, v24, &v18, v22);
      if (v20)
      {
        goto LABEL_29;
      }
    }

    v10 = v18++;
    *v10 = 0;
    *v21 = v18 - v23;
LABEL_29:
    mbedtls_mpi_free(&v16);
    return v20;
  }

  return -4;
}

uint64_t mpi_write_hlp(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = -110;
  v7 = 0;
  v6 = 0;
  v5 = (*a3 + a4);
  while (1)
  {
    if (v6 >= v9)
    {
      return -8;
    }

    v8 = mbedtls_mpi_mod_int(&v7, v12, v11);
    if (v8)
    {
      break;
    }

    v8 = mbedtls_mpi_div_int(v12, 0, v12, v11);
    if (v8)
    {
      break;
    }

    --v5;
    if (v7 >= 0xA)
    {
      *v5 = v7 + 55;
    }

    else
    {
      *v5 = v7 + 48;
    }

    ++v6;
    if (!mbedtls_mpi_cmp_int(v12, 0))
    {
      __memmove_chk();
      *v10 += v6;
      break;
    }
  }

  return v8;
}

uint64_t mbedtls_mpi_read_binary_le(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = mbedtls_mpi_resize_clear(a1, a3 / 8 + (a3 % 8 != 0));
  if (!v4)
  {
    return mbedtls_mpi_core_read_le(*a1, *(a1 + 10), a2, a3);
  }

  return v4;
}

uint64_t mbedtls_mpi_resize_clear(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 10) == a2)
    {
      __memset_chk();
      *(a1 + 8) = 1;
      return 0;
    }

    else
    {
      mbedtls_mpi_free(a1);
      return mbedtls_mpi_grow(a1, a2);
    }
  }

  else
  {
    mbedtls_mpi_free(a1);
    return 0;
  }
}

uint64_t mbedtls_mpi_read_binary(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = mbedtls_mpi_resize_clear(a1, a3 / 8 + (a3 % 8 != 0));
  if (!v4)
  {
    return mbedtls_mpi_core_read_be(*a1, *(a1 + 10), a2, a3);
  }

  return v4;
}

uint64_t mbedtls_mpi_shift_l(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_mpi_bitlen(a1) + a2;
  if (v3 <= *(a1 + 10) << 6 || (v4 = mbedtls_mpi_grow(a1, v3 / 0x40 + (v3 % 0x40 != 0))) == 0)
  {
    v4 = 0;
    mbedtls_mpi_core_shift_l(*a1, *(a1 + 10), a2);
  }

  return v4;
}

uint64_t mbedtls_mpi_shift_r(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 10))
  {
    mbedtls_mpi_core_shift_r(*a1, *(a1 + 10), a2);
  }

  return 0;
}

uint64_t mbedtls_mpi_cmp_abs(uint64_t a1, uint64_t a2)
{
    ;
  }

    ;
  }

  if (i <= j)
  {
    if (j <= i)
    {
      while (i)
      {
        if (*(*a1 + 8 * (i - 1)) > *(*a2 + 8 * (i - 1)))
        {
          return 1;
        }

        if (*(*a1 + 8 * (i - 1)) < *(*a2 + 8 * (i - 1)))
        {
          return -1;
        }

        --i;
      }

      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t mbedtls_mpi_cmp_mpi(uint64_t a1, uint64_t a2)
{
    ;
  }

    ;
  }

  if (i || j)
  {
    if (i <= j)
    {
      if (j <= i)
      {
        if (*(a1 + 8) > 0 && *(a2 + 8) < 0)
        {
          return 1;
        }

        else if (*(a2 + 8) > 0 && *(a1 + 8) < 0)
        {
          return -1;
        }

        else
        {
          while (i)
          {
            if (*(*a1 + 8 * (i - 1)) > *(*a2 + 8 * (i - 1)))
            {
              return *(a1 + 8);
            }

            if (*(*a1 + 8 * (i - 1)) < *(*a2 + 8 * (i - 1)))
            {
              return -*(a1 + 8);
            }

            --i;
          }

          return 0;
        }
      }

      else
      {
        return -*(a2 + 8);
      }
    }

    else
    {
      return *(a1 + 8);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_mpi_cmp_int(uint64_t a1, unint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v3 = 0;
  v4 = 0;
  v7 = mpi_sint_abs(a2);
  LOWORD(v4) = -2 * (v5 >> 63) + 1;
  WORD1(v4) = 1;
  v3 = &v7;
  return mbedtls_mpi_cmp_mpi(v6, &v3);
}

uint64_t mbedtls_mpi_add_abs(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a2;
  v9 = a3;
  if (a1 == a3)
  {
    v10 = a1;
    v9 = a2;
  }

  if (a1 != v10)
  {
    v8 = mbedtls_mpi_copy(a1, v10);
    if (v8)
    {
      return v8;
    }
  }

  *(a1 + 4) = 1;
    ;
  }

  if (i)
  {
    v8 = mbedtls_mpi_grow(a1, i);
    if (!v8)
    {
      v5 = *a1;
      v4 = mbedtls_mpi_core_add(*a1, *a1, *v9, i);
      v6 = (v5 + 8 * i);
      while (v4)
      {
        if (i >= *(a1 + 5))
        {
          v8 = mbedtls_mpi_grow(a1, i + 1);
          if (v8)
          {
            return v8;
          }

          v6 = (*a1 + 8 * i);
        }

        *v6 += v4;
        v4 = *v6 < v4;
        ++i;
        ++v6;
      }
    }

    return v8;
  }

  return 0;
}

uint64_t mbedtls_mpi_sub_abs(uint64_t a1, uint64_t a2, uint64_t a3)
{
    ;
  }

  if (i <= *(a2 + 10))
  {
    v6 = mbedtls_mpi_grow(a1, *(a2 + 10));
    if (!v6)
    {
      if (*(a2 + 10) > i && a2 != a1)
      {
        __memcpy_chk();
      }

      if (*(a1 + 10) > *(a2 + 10))
      {
        __memset_chk();
      }

      v4 = mbedtls_mpi_core_sub(*a1, *a2, *a3, i);
      if (v4 && mbedtls_mpi_core_sub_int(*a1 + 8 * i, *a1 + 8 * i, v4, *(a1 + 10) - i))
      {
        return -10;
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }
  }

  else
  {
    return -10;
  }

  return v6;
}

uint64_t add_sub_mpi(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 8);
  if (v7 * *(a3 + 8) * a4 < 0)
  {
    v6 = mbedtls_mpi_cmp_abs(a2, a3);
    if (v6 < 0)
    {
      v8 = mbedtls_mpi_sub_abs(a1, a3, a2);
      if (!v8)
      {
        *(a1 + 8) = -v7;
      }
    }

    else
    {
      v8 = mbedtls_mpi_sub_abs(a1, a2, a3);
      if (!v8)
      {
        if (v6)
        {
          v5 = v7;
        }

        else
        {
          v5 = 1;
        }

        *(a1 + 8) = v5;
      }
    }
  }

  else
  {
    v8 = mbedtls_mpi_add_abs(a1, a2, a3);
    if (!v8)
    {
      *(a1 + 8) = v7;
    }
  }

  return v8;
}

uint64_t mbedtls_mpi_sub_int(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v4 = 0;
  v5 = 0;
  v9 = mpi_sint_abs(a3);
  LOWORD(v5) = -2 * (v6 >> 63) + 1;
  WORD1(v5) = 1;
  v4 = &v9;
  return mbedtls_mpi_sub_mpi(v8, v7, &v4);
}

uint64_t mbedtls_mpi_mul_mpi(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -110;
  i = 0;
  j = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4 = 0;
  mbedtls_mpi_init(v6);
  mbedtls_mpi_init(v5);
  if (v12 == v11)
  {
    v9 = mbedtls_mpi_copy(v6, v11);
    if (v9)
    {
      goto LABEL_24;
    }

    v11 = v6;
  }

  if (v12 == v10)
  {
    v9 = mbedtls_mpi_copy(v5, v10);
    if (v9)
    {
      goto LABEL_24;
    }

    v10 = v5;
  }

    ;
  }

  if (!i)
  {
    v4 = 1;
  }

    ;
  }

  if (!j)
  {
    v4 = 1;
  }

  v9 = mbedtls_mpi_grow(v12, i + j);
  if (!v9)
  {
    v9 = mbedtls_mpi_lset(v12, 0);
    if (!v9)
    {
      mbedtls_mpi_core_mul(*v12, *v11, i, *v10, j);
      if (v4)
      {
        *(v12 + 4) = 1;
      }

      else
      {
        *(v12 + 4) = *(v11 + 4) * *(v10 + 4);
      }
    }
  }

LABEL_24:
  mbedtls_mpi_free(v5);
  mbedtls_mpi_free(v6);
  return v9;
}

uint64_t mbedtls_mpi_div_mpi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = -110;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v9 = 0;
  v10 = 0;
  if (mbedtls_mpi_cmp_int(a4, 0))
  {
    mbedtls_mpi_init(&v15);
    mbedtls_mpi_init(&v13);
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v11);
    LODWORD(v10) = 196609;
    v9 = v27;
    if ((mbedtls_mpi_cmp_abs(v23, v22) & 0x80000000) != 0)
    {
      if ((!v25 || (v21 = mbedtls_mpi_lset(v25, 0)) == 0) && (!v24 || (v21 = mbedtls_mpi_copy(v24, v23)) == 0))
      {
        return 0;
      }

LABEL_59:
      mbedtls_mpi_free(&v15);
      mbedtls_mpi_free(&v13);
      mbedtls_mpi_free(v12);
      mbedtls_mpi_free(v11);
      mbedtls_platform_zeroize(v27, 0x18uLL);
      return v21;
    }

    v21 = mbedtls_mpi_copy(&v15, v23);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_copy(&v13, v22);
    if (v21)
    {
      goto LABEL_59;
    }

    LOWORD(v14) = 1;
    LOWORD(v16) = 1;
    v21 = mbedtls_mpi_grow(v12, *(v23 + 10) + 2);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_lset(v12, 0);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_grow(v11, *(v23 + 10) + 2);
    if (v21)
    {
      goto LABEL_59;
    }

    v17 = mbedtls_mpi_bitlen(&v13) % 0x40;
    if (v17 >= 0x3F)
    {
      v17 = 0;
    }

    else
    {
      v17 = 63 - v17;
      v21 = mbedtls_mpi_shift_l(&v15, v17);
      if (v21)
      {
        goto LABEL_59;
      }

      v21 = mbedtls_mpi_shift_l(&v13, v17);
      if (v21)
      {
        goto LABEL_59;
      }
    }

    v19 = WORD1(v16) - 1;
    v18 = WORD1(v14) - 1;
    v21 = mbedtls_mpi_shift_l(&v13, (v19 - v18) << 6);
    if (v21)
    {
      goto LABEL_59;
    }

    while ((mbedtls_mpi_cmp_mpi(&v15, &v13) & 0x80000000) == 0)
    {
      ++*(v12[0] + 8 * (v19 - v18));
      v21 = mbedtls_mpi_sub_mpi(&v15, &v15, &v13);
      if (v21)
      {
        goto LABEL_59;
      }
    }

    v21 = mbedtls_mpi_shift_r(&v13, (v19 - v18) << 6);
    if (v21)
    {
      goto LABEL_59;
    }

    v20 = v19;
    while (2)
    {
      if (v20 > v18)
      {
        if (*(v15 + 8 * v20) >= *(v13 + 8 * v18))
        {
          *(v12[0] + 8 * (v20 - v18 - 1)) = -1;
        }

        else
        {
          v4 = mbedtls_int_div_int(*(v15 + 8 * v20), *(v15 + 8 * (v20 - 1)), *(v13 + 8 * v18), 0);
          *(v12[0] + 8 * (v20 - v18 - 1)) = v4;
        }

        if (v20 >= 2)
        {
          v8 = *(v15 + 8 * (v20 - 2));
        }

        else
        {
          v8 = 0;
        }

        *v9 = v8;
        if (v20)
        {
          v7 = *(v15 + 8 * (v20 - 1));
        }

        else
        {
          v7 = 0;
        }

        v9[1] = v7;
        v9[2] = *(v15 + 8 * v20);
        ++*(v12[0] + 8 * (v20 - v18 - 1));
        do
        {
          --*(v12[0] + 8 * (v20 - v18 - 1));
          v21 = mbedtls_mpi_lset(v11, 0);
          if (!v21)
          {
            v6 = v18 ? *(v13 + 8 * (v18 - 1)) : 0;
            *v11[0] = v6;
            *(v11[0] + 8) = *(v13 + 8 * v18);
            v21 = mbedtls_mpi_mul_int(v11, v11, *(v12[0] + 8 * (v20 - v18 - 1)));
            if (!v21)
            {
              continue;
            }
          }

          goto LABEL_59;
        }

        while (mbedtls_mpi_cmp_mpi(v11, &v9) > 0);
        v21 = mbedtls_mpi_mul_int(v11, &v13, *(v12[0] + 8 * (v20 - v18 - 1)));
        if (v21)
        {
          goto LABEL_59;
        }

        v21 = mbedtls_mpi_shift_l(v11, (v20 - v18 - 1) << 6);
        if (v21)
        {
          goto LABEL_59;
        }

        v21 = mbedtls_mpi_sub_mpi(&v15, &v15, v11);
        if (v21)
        {
          goto LABEL_59;
        }

        if ((mbedtls_mpi_cmp_int(&v15, 0) & 0x80000000) != 0)
        {
          v21 = mbedtls_mpi_copy(v11, &v13);
          if (v21)
          {
            goto LABEL_59;
          }

          v21 = mbedtls_mpi_shift_l(v11, (v20 - v18 - 1) << 6);
          if (v21)
          {
            goto LABEL_59;
          }

          v21 = mbedtls_mpi_add_mpi(&v15, &v15, v11);
          if (v21)
          {
            goto LABEL_59;
          }

          --*(v12[0] + 8 * (v20 - v18 - 1));
        }

        --v20;
        continue;
      }

      break;
    }

    if (v25)
    {
      v21 = mbedtls_mpi_copy(v25, v12);
      if (v21)
      {
        goto LABEL_59;
      }

      *(v25 + 8) = *(v23 + 8) * *(v22 + 8);
    }

    if (v24)
    {
      v21 = mbedtls_mpi_shift_r(&v15, v17);
      if (!v21)
      {
        LOWORD(v16) = *(v23 + 8);
        v21 = mbedtls_mpi_copy(v24, &v15);
        if (!v21 && !mbedtls_mpi_cmp_int(v24, 0))
        {
          *(v24 + 8) = 1;
        }
      }
    }

    goto LABEL_59;
  }

  return -12;
}

uint64_t mbedtls_int_div_int(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 && a1 < a3)
  {
    v6 = __udivti3();
    if (v4)
    {
      v6 = -1;
    }

    if (a4)
    {
      *a4 = a2 - v6 * a3;
    }

    return v6;
  }

  else
  {
    if (a4)
    {
      *a4 = -1;
    }

    return -1;
  }
}

uint64_t mbedtls_mpi_div_int(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v5 = 0;
  v6 = 0;
  v11 = mpi_sint_abs(a4);
  LOWORD(v6) = -2 * (v7 >> 63) + 1;
  WORD1(v6) = 1;
  v5 = &v11;
  return mbedtls_mpi_div_mpi(v10, v9, v8, &v5);
}

uint64_t mbedtls_mpi_mod_mpi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((mbedtls_mpi_cmp_int(a3, 0) & 0x80000000) != 0)
  {
    return -10;
  }

  else
  {
    v4 = mbedtls_mpi_div_mpi(0, a1, a2, a3);
    if (!v4)
    {
      while ((mbedtls_mpi_cmp_int(a1, 0) & 0x80000000) != 0)
      {
        v4 = mbedtls_mpi_add_mpi(a1, a1, a3);
        if (v4)
        {
          return v4;
        }
      }

      do
      {
        if ((mbedtls_mpi_cmp_mpi(a1, a3) & 0x80000000) != 0)
        {
          break;
        }

        v4 = mbedtls_mpi_sub_mpi(a1, a1, a3);
      }

      while (!v4);
    }

    return v4;
  }
}

uint64_t mbedtls_mpi_mod_int(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      return -10;
    }

    else if (a3 != 1 && *(a2 + 10))
    {
      if (a3 == 2)
      {
        *a1 = **a2 & 1;
        return 0;
      }

      else
      {
        v6 = *(a2 + 10);
        v4 = 0;
        while (v6)
        {
          v5 = *(*a2 + 8 * (v6 - 1));
          v4 = (v5 | (((HIDWORD(v5) | (v4 << 32)) % a3) << 32)) % a3;
          --v6;
        }

        if (*(a2 + 8) < 0 && v4)
        {
          v4 = a3 - v4;
        }

        *a1 = v4;
        return 0;
      }
    }

    else
    {
      *a1 = 0;
      return 0;
    }
  }

  else
  {
    return -12;
  }
}

uint64_t mbedtls_mpi_exp_mod(void *a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  mont_r2_unsafe = -110;
  if (mbedtls_mpi_cmp_int(a4, 0) <= 0 || (**v14 & 1) == 0)
  {
    return -4;
  }

  if ((mbedtls_mpi_cmp_int(v15, 0) & 0x80000000) != 0)
  {
    return -4;
  }

  if (mbedtls_mpi_bitlen(v15) > 0x100 || mbedtls_mpi_bitlen(v14) > 0x100)
  {
    return -4;
  }

  if (!*(v15 + 10))
  {
    return mbedtls_mpi_lset(v17, 1uLL);
  }

  v11 = mbedtls_mpi_core_exp_mod_working_limbs(*(v14 + 5), *(v15 + 10));
  v10 = mbedtls_calloc(v11, 8);
  if (!v10)
  {
    return -16;
  }

  v9 = 0uLL;
  mbedtls_mpi_init(&v9);
  if (v13 && *v13)
  {
    mont_r2_unsafe = mbedtls_mpi_grow(v13, *(v14 + 5));
    if (!mont_r2_unsafe)
    {
      v9 = *v13;
LABEL_21:
      mont_r2_unsafe = mbedtls_mpi_copy(v17, v16);
      if (!mont_r2_unsafe)
      {
        *(v17 + 4) = 1;
        if ((mbedtls_mpi_cmp_mpi(v17, v14) & 0x80000000) != 0 || (mont_r2_unsafe = mbedtls_mpi_mod_mpi(v17, v17, v14)) == 0)
        {
          mont_r2_unsafe = mbedtls_mpi_grow(v17, *(v14 + 5));
          if (!mont_r2_unsafe)
          {
            v8 = mbedtls_mpi_core_montmul_init(*v14);
            mbedtls_mpi_core_to_mont_rep(*v17, *v17, *v14, *(v14 + 5), v8, v9, v10);
            mbedtls_mpi_core_exp_mod(*v17, *v17, *v14, *(v14 + 5), *v15, *(v15 + 10), v9, v10);
            mbedtls_mpi_core_from_mont_rep(*v17, *v17, *v14, *(v14 + 5), v8, v10);
            if (*(v16 + 8) == -1 && (**v15 & 1) != 0)
            {
              v7 = mbedtls_mpi_core_check_zero_ct(*v17, *(v17 + 5));
              v5 = mbedtls_ct_mpi_sign_if (v7, -1, 1);
              *(v17 + 4) = v5;
              mont_r2_unsafe = mbedtls_mpi_add_mpi(v17, v14, v17);
            }
          }
        }
      }
    }
  }

  else
  {
    mont_r2_unsafe = mbedtls_mpi_core_get_mont_r2_unsafe(&v9, v14);
    if (!mont_r2_unsafe)
    {
      if (v13)
      {
        *v13 = v9;
      }

      goto LABEL_21;
    }
  }

  mbedtls_zeroize_and_free(v10, 8 * v11);
  if (!v13 || !*v13)
  {
    mbedtls_mpi_free(&v9);
  }

  return mont_r2_unsafe;
}

uint64_t mbedtls_mpi_gcd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -110;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  mbedtls_mpi_init(&v8);
  mbedtls_mpi_init(&v6);
  v12 = mbedtls_mpi_copy(&v8, v14);
  if (!v12)
  {
    v12 = mbedtls_mpi_copy(&v6, v13);
    if (!v12)
    {
      v11 = mbedtls_mpi_lsb(&v8);
      v10 = mbedtls_mpi_lsb(&v6);
      if (v10 || mbedtls_mpi_get_bit(&v6, 0))
      {
        if (v10 < v11)
        {
          v11 = v10;
        }

        LOWORD(v7) = 1;
        LOWORD(v9) = 1;
        while (mbedtls_mpi_cmp_int(&v8, 0))
        {
          v3 = mbedtls_mpi_lsb(&v8);
          v12 = mbedtls_mpi_shift_r(&v8, v3);
          if (v12)
          {
            goto LABEL_21;
          }

          v4 = mbedtls_mpi_lsb(&v6);
          v12 = mbedtls_mpi_shift_r(&v6, v4);
          if (v12)
          {
            goto LABEL_21;
          }

          if ((mbedtls_mpi_cmp_mpi(&v8, &v6) & 0x80000000) != 0)
          {
            v12 = mbedtls_mpi_sub_abs(&v6, &v6, &v8);
            if (v12)
            {
              goto LABEL_21;
            }

            v12 = mbedtls_mpi_shift_r(&v6, 1uLL);
            if (v12)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v12 = mbedtls_mpi_sub_abs(&v8, &v8, &v6);
            if (v12)
            {
              goto LABEL_21;
            }

            v12 = mbedtls_mpi_shift_r(&v8, 1uLL);
            if (v12)
            {
              goto LABEL_21;
            }
          }
        }

        v12 = mbedtls_mpi_shift_l(&v6, v11);
        if (!v12)
        {
          v12 = mbedtls_mpi_copy(v15, &v6);
        }
      }

      else
      {
        v12 = mbedtls_mpi_copy(v15, v14);
      }
    }
  }

LABEL_21:
  mbedtls_mpi_free(&v8);
  mbedtls_mpi_free(&v6);
  return v12;
}

uint64_t mbedtls_mpi_fill_random(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_mpi_resize_clear(a1, a2 / 8 + (a2 % 8 != 0));
  if (v5)
  {
    return v5;
  }

  if (a2)
  {
    return mbedtls_mpi_core_fill_random(*a1, *(a1 + 10), a2, a3, a4);
  }

  return 0;
}

uint64_t mbedtls_mpi_random(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -4;
  }

  else if (mbedtls_mpi_cmp_int(a3, a2) > 0)
  {
    v6 = mbedtls_mpi_resize_clear(a1, *(a3 + 10));
    if (v6)
    {
      return v6;
    }

    else
    {
      return mbedtls_mpi_core_random(*a1, a2, *a3, *(a1 + 10), a4, a5);
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_inv_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = -110;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (mbedtls_mpi_cmp_int(a3, 1uLL) > 0)
  {
    mbedtls_mpi_init(v11);
    mbedtls_mpi_init(v10);
    mbedtls_mpi_init(v9);
    mbedtls_mpi_init(v8);
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v7);
    mbedtls_mpi_init(v6);
    mbedtls_mpi_init(v5);
    mbedtls_mpi_init(v4);
    v13 = mbedtls_mpi_gcd(v12, v15, v14);
    if (!v13)
    {
      if (mbedtls_mpi_cmp_int(v12, 1uLL))
      {
        v13 = -14;
      }

      else
      {
        v13 = mbedtls_mpi_mod_mpi(v11, v15, v14);
        if (!v13)
        {
          v13 = mbedtls_mpi_copy(v10, v11);
          if (!v13)
          {
            v13 = mbedtls_mpi_copy(v7, v14);
            if (!v13)
            {
              v13 = mbedtls_mpi_copy(v6, v14);
              if (!v13)
              {
                v13 = mbedtls_mpi_lset(v9, 1uLL);
                if (!v13)
                {
                  v13 = mbedtls_mpi_lset(v8, 0);
                  if (!v13)
                  {
                    v13 = mbedtls_mpi_lset(v5, 0);
                    if (!v13)
                    {
                      v13 = mbedtls_mpi_lset(v4, 1uLL);
                      if (!v13)
                      {
                        do
                        {
                          while ((*v10[0] & 1) == 0)
                          {
                            v13 = mbedtls_mpi_shift_r(v10, 1uLL);
                            if (!v13 && ((*v9[0] & 1) == 0 && (*v8[0] & 1) == 0 || (v13 = mbedtls_mpi_add_mpi(v9, v9, v7)) == 0 && (v13 = mbedtls_mpi_sub_mpi(v8, v8, v11)) == 0))
                            {
                              v13 = mbedtls_mpi_shift_r(v9, 1uLL);
                              if (!v13)
                              {
                                v13 = mbedtls_mpi_shift_r(v8, 1uLL);
                                if (!v13)
                                {
                                  continue;
                                }
                              }
                            }

                            goto LABEL_48;
                          }

                          while ((*v6[0] & 1) == 0)
                          {
                            v13 = mbedtls_mpi_shift_r(v6, 1uLL);
                            if (!v13 && ((*v5[0] & 1) == 0 && (*v4[0] & 1) == 0 || (v13 = mbedtls_mpi_add_mpi(v5, v5, v7)) == 0 && (v13 = mbedtls_mpi_sub_mpi(v4, v4, v11)) == 0))
                            {
                              v13 = mbedtls_mpi_shift_r(v5, 1uLL);
                              if (!v13)
                              {
                                v13 = mbedtls_mpi_shift_r(v4, 1uLL);
                                if (!v13)
                                {
                                  continue;
                                }
                              }
                            }

                            goto LABEL_48;
                          }

                          if ((mbedtls_mpi_cmp_mpi(v10, v6) & 0x80000000) != 0)
                          {
                            v13 = mbedtls_mpi_sub_mpi(v6, v6, v10);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v5, v5, v9);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v4, v4, v8);
                            if (v13)
                            {
                              goto LABEL_48;
                            }
                          }

                          else
                          {
                            v13 = mbedtls_mpi_sub_mpi(v10, v10, v6);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v9, v9, v5);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v8, v8, v4);
                            if (v13)
                            {
                              goto LABEL_48;
                            }
                          }
                        }

                        while (mbedtls_mpi_cmp_int(v10, 0));
                        while ((mbedtls_mpi_cmp_int(v5, 0) & 0x80000000) != 0)
                        {
                          v13 = mbedtls_mpi_add_mpi(v5, v5, v14);
                          if (v13)
                          {
                            goto LABEL_48;
                          }
                        }

                        while ((mbedtls_mpi_cmp_mpi(v5, v14) & 0x80000000) == 0)
                        {
                          v13 = mbedtls_mpi_sub_mpi(v5, v5, v14);
                          if (v13)
                          {
                            goto LABEL_48;
                          }
                        }

                        v13 = mbedtls_mpi_copy(v16, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    mbedtls_mpi_free(v11);
    mbedtls_mpi_free(v10);
    mbedtls_mpi_free(v9);
    mbedtls_mpi_free(v8);
    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v7);
    mbedtls_mpi_free(v6);
    mbedtls_mpi_free(v5);
    mbedtls_mpi_free(v4);
    return v13;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_ccm_setkey(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = mbedtls_cipher_info_from_values(a2, a4, 1);
  if (v5)
  {
    if (mbedtls_cipher_info_get_block_size(v5) == 16)
    {
      mbedtls_cipher_free((a1 + 72));
      v6 = mbedtls_cipher_setup((a1 + 72), v5);
      if (v6)
      {
        return v6;
      }

      else
      {
        v7 = mbedtls_cipher_setkey(a1 + 72, a3, a4, 1u);
        if (v7)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return -13;
    }
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_cipher_info_get_block_size(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) & 0x1F;
  }

  else
  {
    return 0;
  }
}

char *mbedtls_ccm_free(char *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_cipher_free(result + 72);
    return mbedtls_platform_zeroize(v1, 0xA0uLL);
  }

  return result;
}

uint64_t mbedtls_ccm_starts(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 7 && a4 <= 0xD)
  {
    *(a1 + 68) = a2;
    *(a1 + 64) = 15 - a4;
    __memset_chk();
    *(a1 + 16) = *(a1 + 64) - 1;
    __memcpy_chk();
    __memset_chk();
    *(a1 + 31) = 1;
    __memcpy_chk();
    *(a1 + 152) |= 1u;
    return ccm_calculate_first_block_if_ready(a1);
  }

  else
  {
    return -13;
  }
}

uint64_t ccm_calculate_first_block_if_ready(uint64_t a1)
{
  v6 = a1;
  v5 = -110;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  if ((*(a1 + 152) & 1) != 0 && (*(v6 + 152) & 2) != 0)
  {
    if (!*(v6 + 48))
    {
      if (*(v6 + 68) != 3 && *(v6 + 68) != 2)
      {
        return -13;
      }

      *(v6 + 32) = 0;
    }

    *v6 |= (*(v6 + 40) != 0) << 6;
    *v6 |= 8 * ((*(v6 + 48) - 2) / 2uLL);
    *v6 |= *(v6 + 64) - 1;
    v4 = 0;
    v3 = *(v6 + 32);
    while (v4 < *(v6 + 64))
    {
      *(v6 + 15 - v4++) = v3;
      v3 >>= 8;
    }

    if (v3)
    {
      *(v6 + 152) |= 0x10u;
      return -13;
    }

    else
    {
      v5 = mbedtls_cipher_update(v6 + 72, v6, 0x10uLL, v6, &v2);
      if (v5)
      {
        *(v6 + 152) |= 0x10u;
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ccm_set_lengths(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 == 2 || a4 > 0x10 || a4 % 2)
  {
    return -13;
  }

  else if (a2 < 0xFF00)
  {
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    *(a1 + 48) = a4;
    *(a1 + 56) = 0;
    *(a1 + 152) |= 2u;
    return ccm_calculate_first_block_if_ready(a1);
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_update_ad(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -110;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -13;
  }

  if (!v8)
  {
    return 0;
  }

  if ((*(v10 + 152) & 8) != 0)
  {
    return -13;
  }

  if ((*(v10 + 152) & 4) != 0)
  {
    if (*(v10 + 56) + v8 > *(v10 + 40))
    {
      return -13;
    }

LABEL_12:
    while (v8)
    {
      v5 = (*(v10 + 56) + 2) % 0x10uLL;
      v6 = 16 - v5;
      if (16 - v5 > v8)
      {
        v6 = v8;
      }

      v24 = v10 + v5;
      v23 = v10 + v5;
      v22 = v9;
      v21 = v6;
      for (i = 0; i + 16 <= v21; i += 16)
      {
        v19 = 0u;
        v18 = 0u;
        v18 = *(v23 + i);
        v17 = v18;
        v19 = v18;
        v16 = 0u;
        v15 = 0u;
        v15 = *(v22 + i);
        v14 = v15;
        v16 = v15;
        v27 = v18;
        v26 = v15;
        v25 = veorq_s8(v18, v15);
        v13 = v25;
        v12 = v25;
        *(v24 + i) = v25;
      }

      while (i < v21)
      {
        *(v24 + i) = *(v23 + i) ^ *(v22 + i);
        ++i;
      }

      *(v10 + 56) += v6;
      v8 -= v6;
      v9 += v6;
      if (v6 + v5 == 16 || *(v10 + 56) == *(v10 + 40))
      {
        v7 = mbedtls_cipher_update(v10 + 72, v10, 0x10uLL, v10, &v4);
        if (v7)
        {
          *(v10 + 152) |= 0x10u;
          return v7;
        }
      }
    }

    if (*(v10 + 56) == *(v10 + 40))
    {
      *(v10 + 152) |= 8u;
      *(v10 + 56) = 0;
    }

    return 0;
  }

  if (v8 <= *(v10 + 40))
  {
    *v10 ^= BYTE1(*(v10 + 40));
    *(v10 + 1) ^= *(v10 + 40);
    *(v10 + 152) |= 4u;
    goto LABEL_12;
  }

  return -13;
}

uint64_t mbedtls_ccm_update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = -110;
  k = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -13;
  }

  else if (*(v19 + 48) && *(v19 + 56) + v17 > *(v19 + 32))
  {
    return -13;
  }

  else if (v15 >= v17)
  {
    *v14 = v17;
    v13 = 0;
    while (v17)
    {
      v10 = *(v19 + 56) % 0x10uLL;
      v11 = 16 - v10;
      if (16 - v10 > v17)
      {
        v11 = v17;
      }

      *(v19 + 56) += v11;
      if (*(v19 + 68) == 1 || *(v19 + 68) == 3)
      {
        v46 = v19 + v10;
        v45 = v19 + v10;
        v44 = v18;
        v43 = v11;
        for (i = 0; i + 16 <= v43; i += 16)
        {
          v41 = 0u;
          v40 = 0u;
          v40 = *(v45 + i);
          v39 = v40;
          v41 = v40;
          v38 = 0u;
          v37 = 0u;
          v37 = *(v44 + i);
          v36 = v37;
          v38 = v37;
          v49 = v40;
          v48 = v37;
          v47 = veorq_s8(v40, v37);
          v35 = v47;
          v34 = v47;
          *(v46 + i) = v47;
        }

        while (i < v43)
        {
          *(v46 + i) = *(v45 + i) ^ *(v44 + i);
          ++i;
        }

        if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
        {
          v13 = mbedtls_cipher_update(v19 + 72, v19, 0x10uLL, v19, &v9);
          if (v13)
          {
            *(v19 + 152) |= 0x10u;
            break;
          }
        }

        v13 = mbedtls_ccm_crypt(v19, v10, v11, v18, v16);
        if (v13)
        {
          break;
        }
      }

      if (!*(v19 + 68) || *(v19 + 68) == 2)
      {
        v13 = mbedtls_ccm_crypt(v19, v10, v11, v18, v53);
        if (v13)
        {
          break;
        }

        v33 = v19 + v10;
        v32 = v19 + v10;
        v31 = v53;
        v30 = v11;
        for (j = 0; j + 16 <= v30; j += 16)
        {
          v28 = 0u;
          v27 = 0u;
          v27 = *(v32 + j);
          v26 = v27;
          v28 = v27;
          v25 = 0u;
          v24 = 0u;
          v24 = *&v31[j];
          v23 = v24;
          v25 = v24;
          v52 = v27;
          v51 = v24;
          v50 = veorq_s8(v27, v24);
          v22 = v50;
          v21 = v50;
          *(v33 + j) = v50;
        }

        while (j < v30)
        {
          *(v33 + j) = *(v32 + j) ^ v31[j];
          ++j;
        }

        __memcpy_chk();
        if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
        {
          v13 = mbedtls_cipher_update(v19 + 72, v19, 0x10uLL, v19, &v9);
          if (v13)
          {
            *(v19 + 152) |= 0x10u;
            break;
          }
        }
      }

      if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
      {
        for (k = 0; k < *(v19 + 64); ++k)
        {
          v6 = 15 - k;
          v7 = *(v19 + 16 + v6) + 1;
          *(v19 + 16 + v6) = v7;
          if (v7)
          {
            break;
          }
        }
      }

      v17 -= v11;
      v18 += v11;
      v16 += v11;
    }

    mbedtls_platform_zeroize(v53, 0x10uLL);
    return v13;
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_crypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = -110;
  v30[0] = 0;
  v30[1] = 0;
  v6 = 0;
  v7 = mbedtls_cipher_update(a1 + 72, a1 + 16, 0x10uLL, v30, &v6);
  if (v7)
  {
    *(v12 + 152) |= 0x10u;
    mbedtls_platform_zeroize(v30, 0x10uLL);
    return v7;
  }

  else
  {
    v26 = v8;
    v25 = v9;
    v24 = v30 + v11;
    v23 = v10;
    for (i = 0; i + 16 <= v23; i += 16)
    {
      v21 = 0u;
      v20 = 0u;
      v20 = *(v25 + i);
      v19 = v20;
      v21 = v20;
      v18 = 0u;
      v17 = 0u;
      v17 = *&v24[i];
      v16 = v17;
      v18 = v17;
      v29 = v20;
      v28 = v17;
      v27 = veorq_s8(v20, v17);
      v15 = v27;
      v14 = v27;
      *(v26 + i) = v27;
    }

    while (i < v23)
    {
      *(v26 + i) = *(v25 + i) ^ v24[i];
      ++i;
    }

    mbedtls_platform_zeroize(v30, 0x10uLL);
    return v7;
  }
}

uint64_t mbedtls_ccm_finish(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -110;
  }

  else if (!*(a1 + 40) || (*(a1 + 152) & 8) != 0)
  {
    if (!*(a1 + 32) || *(a1 + 56) == *(a1 + 32))
    {
      for (i = 0; i < *(a1 + 64); ++i)
      {
        *(a1 + 16 + 15 - i) = 0;
      }

      v5 = mbedtls_ccm_crypt(a1, 0, 0x10uLL, a1, a1);
      if (v5)
      {
        return v5;
      }

      else
      {
        if (a2)
        {
          __memcpy_chk();
        }

        mbedtls_ccm_clear_state(a1);
        return 0;
      }
    }

    else
    {
      return -13;
    }
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_clear_state(uint64_t a1)
{
  *(a1 + 152) = 0;
  __memset_chk();
  return __memset_chk();
}

uint64_t ccm_auth_crypt(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v16 = a9;
  v15 = a10;
  v14 = a11;
  v12 = 0;
  updated = mbedtls_ccm_starts(a1, a2, a4, a5);
  if (updated)
  {
    return updated;
  }

  else
  {
    updated = mbedtls_ccm_set_lengths(v24, v18, v22, v14);
    if (updated)
    {
      return updated;
    }

    else
    {
      updated = mbedtls_ccm_update_ad(v24, v19, v18);
      if (updated)
      {
        return updated;
      }

      else
      {
        updated = mbedtls_ccm_update(v24, v17, v22, v16, v22, &v12);
        if (updated)
        {
          return updated;
        }

        else
        {
          updated = mbedtls_ccm_finish(v24, v15, v14);
          if (updated)
          {
            return updated;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t ccm_auth_decrypt(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11)
{
  v12 = ccm_auth_crypt(a1, a2, a3, a4, a5, a6, a7, a8, a9, v16, a11);
  if (v12)
  {
    return v12;
  }

  else
  {
    v13 = mbedtls_ccm_compare_tags(a10, v16, a11);
    if (v13)
    {
      mbedtls_platform_zeroize(a9, a3);
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_ccm_compare_tags(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (mbedtls_ct_memcmp(a1, a2, a3))
  {
    return -15;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_cipher_list()
{
  if (!supported_init)
  {
    v4 = &mbedtls_cipher_definitions;
    v3 = &mbedtls_cipher_supported;
    while (*v4)
    {
      v0 = v4;
      v4 += 4;
      v1 = v3++;
      *v1 = *v0;
    }

    *v3 = 0;
    supported_init = 1;
  }

  return &mbedtls_cipher_supported;
}

uint64_t mbedtls_cipher_info_from_type(int a1)
{
  for (i = &mbedtls_cipher_definitions; i[1]; i += 2)
  {
    if (*i == a1)
    {
      return i[1];
    }
  }

  return 0;
}

uint64_t mbedtls_cipher_info_from_string(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &mbedtls_cipher_definitions; *(i + 1); i += 16)
  {
    if (!strcmp(**(i + 1), a1))
    {
      return *(i + 1);
    }
  }

  return 0;
}

uint64_t mbedtls_cipher_info_from_values(int a1, int a2, int a3)
{
  for (i = &mbedtls_cipher_definitions; i[1]; i += 2)
  {
    if (*mbedtls_cipher_get_base(i[1]) == a1 && mbedtls_cipher_info_get_key_bitlen(i[1]) == a2 && HIBYTE(*(i[1] + 8)) >> 4 == a3)
    {
      return i[1];
    }
  }

  return 0;
}

unint64_t mbedtls_cipher_info_get_key_bitlen(uint64_t a1)
{
  if (a1)
  {
    return ((*(a1 + 8) >> 8) & 0xF) << 6;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_cipher_free(void *result)
{
  v2 = result;
  if (result)
  {
    if (*(result + 9))
    {
      mbedtls_zeroize_and_free(*(result + 9), 0x28uLL);
    }

    if (v2[8])
    {
      base = mbedtls_cipher_get_base(*v2);
      (*(base + 40))(v2[8]);
    }

    return mbedtls_platform_zeroize(v2, 0x50uLL);
  }

  return result;
}

uint64_t mbedtls_cipher_setup(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    __memset_chk();
    if (!*(mbedtls_cipher_get_base(a2) + 32) || (base = mbedtls_cipher_get_base(a2), (a1[8] = (*(base + 32))()) != 0))
    {
      *a1 = a2;
      return 0;
    }

    else
    {
      return -24960;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_setkey(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a4 < 2)
  {
    if (*a1)
    {
      if ((*(*a1 + 8) & 0x2000000) != 0 || mbedtls_cipher_info_get_key_bitlen(*a1) == a3)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a4;
        if (a4 == 1 || HIBYTE(*(*a1 + 8)) >> 4 == 3 || HIBYTE(*(*a1 + 8)) >> 4 == 4 || HIBYTE(*(*a1 + 8)) >> 4 == 5)
        {
          base = mbedtls_cipher_get_base(*a1);
          return (*(base + 16))(*(a1 + 64), a2, *(a1 + 8));
        }

        else if (a4)
        {
          return -24832;
        }

        else
        {
          v5 = mbedtls_cipher_get_base(*a1);
          return (*(v5 + 24))(*(a1 + 64), a2, *(a1 + 8));
        }
      }

      else
      {
        return -24832;
      }
    }

    else
    {
      return -24832;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_set_iv(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    if (a3 <= 0x10)
    {
      if ((*(*a1 + 8) & 0x1000000) != 0)
      {
        iv_size = a3;
      }

      else
      {
        iv_size = mbedtls_cipher_info_get_iv_size(*a1);
        if (iv_size > a3)
        {
          return -24832;
        }
      }

      if (HIBYTE(*(*a1 + 8)) >> 4 == 9)
      {
        v5 = mbedtls_ccm_set_lengths(a1[8], 0, 0, 0);
        if (!v5)
        {
          if (*(a1 + 3))
          {
            if (*(a1 + 3) != 1)
            {
              return -24832;
            }

            return mbedtls_ccm_starts(a1[8], 3, a2, a3);
          }

          else
          {
            return mbedtls_ccm_starts(a1[8], 2, a2, a3);
          }
        }

        return v5;
      }

      else
      {
        if (iv_size)
        {
          __memcpy_chk();
          a1[7] = iv_size;
        }

        return 0;
      }
    }

    else
    {
      return -24704;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_info_get_iv_size(uint64_t a1)
{
  if (a1)
  {
    return 4 * ((*(a1 + 8) >> 5) & 7);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_reset(void *a1)
{
  if (*a1)
  {
    a1[4] = 0;
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (*a1)
  {
    *a5 = 0;
    block_size = mbedtls_cipher_get_block_size(a1);
    if (block_size)
    {
      if (HIBYTE(*(*a1 + 8)) >> 4 == 1)
      {
        if (a3 == block_size)
        {
          *a5 = a3;
          base = mbedtls_cipher_get_base(*a1);
          v8 = (*(base + 8))(*(a1 + 64), *(a1 + 12), a2, a4);
          if (v8)
          {
            return v8;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return -25216;
        }
      }

      else if (HIBYTE(*(*a1 + 8)) >> 4 == 9)
      {
        return mbedtls_ccm_update(*(a1 + 64), a2, a3, a4, a3, a5);
      }

      else if (a2 == a4 && (*(a1 + 32) || a3 % block_size))
      {
        return -24832;
      }

      else
      {
        return -24704;
      }
    }

    else
    {
      return -25472;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_get_block_size(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 8) & 0x1F;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_finish(void *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    *a3 = 0;
    if (HIBYTE(*(*a1 + 8)) >> 4 == 3 || HIBYTE(*(*a1 + 8)) >> 4 == 4 || HIBYTE(*(*a1 + 8)) >> 4 == 5 || HIBYTE(*(*a1 + 8)) >> 4 == 6 || HIBYTE(*(*a1 + 8)) >> 4 == 9 || HIBYTE(*(*a1 + 8)) >> 4 == 10 || HIBYTE(*(*a1 + 8)) >> 4 == 7)
    {
      return 0;
    }

    else if (BYTE2(*(*a1 + 8)) == 76 || BYTE2(*(*a1 + 8)) == 77)
    {
      return 0;
    }

    else if (HIBYTE(*(*a1 + 8)) >> 4 == 1)
    {
      if (a1[4])
      {
        return -25216;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -24704;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_crypt(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v8 = 0;
  v9 = mbedtls_cipher_set_iv(a1, a2, a3);
  if (v9)
  {
    return v9;
  }

  else
  {
    v9 = mbedtls_cipher_reset(v16);
    if (v9)
    {
      return v9;
    }

    else
    {
      v9 = mbedtls_cipher_update(v16, v13, v12, v11, v10);
      if (v9)
      {
        return v9;
      }

      else
      {
        v9 = mbedtls_cipher_finish(v16, v11 + *v10, &v8);
        if (v9)
        {
          return v9;
        }

        else
        {
          *v10 += v8;
          return 0;
        }
      }
    }
  }
}

uint64_t mbedtls_cipher_auth_encrypt_ext(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, unint64_t a11)
{
  if (a9 >= a7 + a11)
  {
    v11 = mbedtls_cipher_aead_encrypt(a1, a2, a3, a4, a5, a6, a7, a8, a10, a8 + a7, a11);
    *a10 += a11;
    return v11;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_aead_encrypt(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10, unint64_t a11)
{
  if (HIBYTE(*(*a1 + 8)) >> 4 == 8)
  {
    *a9 = a7;
    return mbedtls_ccm_encrypt_and_tag(a1[8], a7, a2, a3, a4, a5, a6, a8, a10, a11);
  }

  else
  {
    return -24704;
  }
}

uint64_t mbedtls_cipher_auth_decrypt_ext(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, unint64_t *a10, unint64_t a11)
{
  if (a7 >= a11 && a9 >= a7 - a11)
  {
    return mbedtls_cipher_aead_decrypt(a1, a2, a3, a4, a5, a6, a7 - a11, a8, a10, a6 + a7 - a11, a11);
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_aead_decrypt(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t *a9, uint64_t a10, unint64_t a11)
{
  if (HIBYTE(*(*a1 + 8)) >> 4 == 8)
  {
    *a9 = a7;
    v12 = mbedtls_ccm_auth_decrypt(a1[8], a7, a2, a3, a4, a5, a6, a8, a10, a11);
    if (v12 == -15)
    {
      return -25344;
    }

    return v12;
  }

  else
  {
    return -24704;
  }
}

uint64_t aes_ctx_alloc()
{
  v1 = mbedtls_calloc(1, 288);
  if (!v1)
  {
    return 0;
  }

  mbedtls_aes_init(v1);
  return v1;
}

uint64_t ccm_ctx_alloc()
{
  v1 = mbedtls_calloc(1, 160);
  if (v1)
  {
    mbedtls_ccm_init(v1);
  }

  return v1;
}

uint64_t mbedtls_cipher_cmac_starts(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1 && *a1 && a2)
  {
    v6 = mbedtls_cipher_setkey(a1, a2, a3, 1u);
    if (v6)
    {
      return v6;
    }

    else
    {
      type = mbedtls_cipher_info_get_type(*a1);
      if ((type - 2) <= 2 || type == 36)
      {
        v3 = mbedtls_calloc(1, 40);
        if (v3)
        {
          a1[9] = v3;
          mbedtls_platform_zeroize(v3, 0x10uLL);
          return 0;
        }

        else
        {
          return -24960;
        }
      }

      else
      {
        return -24832;
      }
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_info_get_type(uint64_t a1)
{
  if (a1)
  {
    return BYTE2(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_cmac_update(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  j = 0;
  v5 = 0;
  if (a1 && *v13 && v12 && v13[9])
  {
    v10 = v13[9];
    block_size = mbedtls_cipher_info_get_block_size(*v13);
    v9 = v13[9];
    if (*(v10 + 32) && v11 > block_size - *(v10 + 32))
    {
      __memcpy_chk();
      v26 = v9;
      v25 = v10 + 16;
      v24 = v9;
      v23 = block_size;
      for (i = 0; i + 8 <= v23; i += 8)
      {
        v30 = v25 + i;
        v29 = 0;
        v29 = *(v25 + i);
        v28 = v24 + i;
        v27 = 0;
        v27 = *(v24 + i);
        v21 = v29 ^ v27;
        v36 = v26 + i;
        v35 = v29 ^ v27;
        __memcpy_chk();
      }

      while (i < v23)
      {
        *(v26 + i) = *(v25 + i) ^ *(v24 + i);
        ++i;
      }

      v8 = mbedtls_cipher_update(v13, v9, block_size, v9, &v5);
      if (v8)
      {
        return v8;
      }

      v12 += block_size - *(v10 + 32);
      v11 -= block_size - *(v10 + 32);
      *(v10 + 32) = 0;
    }

    v7 = (v11 + block_size - 1) / block_size;
    for (j = 1; j < v7; ++j)
    {
      v20 = v9;
      v19 = v12;
      v18 = v9;
      v17 = block_size;
      for (k = 0; k + 8 <= v17; k += 8)
      {
        v34 = v19 + k;
        v33 = 0;
        v33 = *(v19 + k);
        v32 = v18 + k;
        v31 = 0;
        v31 = *(v18 + k);
        v15 = v33 ^ v31;
        v38 = v20 + k;
        v37 = v33 ^ v31;
        __memcpy_chk();
      }

      while (k < v17)
      {
        *(v20 + k) = *(v19 + k) ^ *(v18 + k);
        ++k;
      }

      v8 = mbedtls_cipher_update(v13, v9, block_size, v9, &v5);
      if (v8)
      {
        return v8;
      }

      v11 -= block_size;
      v12 += block_size;
    }

    if (v11)
    {
      __memcpy_chk();
      *(v10 + 32) += v11;
    }

    return v8;
  }

  return -24832;
}

uint64_t mbedtls_cipher_cmac_finish(uint64_t *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = -110;
  v4 = 0;
  if (a1 && *v10 && v10[9] && v9)
  {
    v8 = v10[9];
    block_size = mbedtls_cipher_info_get_block_size(*v10);
    v7 = v8;
    mbedtls_platform_zeroize(v62, 0x10uLL);
    mbedtls_platform_zeroize(v61, 0x10uLL);
    cmac_generate_subkeys(v10, v62, v61);
    v6 = v8 + 2;
    if (v8[4] >= block_size)
    {
      v37 = v60;
      v36 = v6;
      v35 = v62;
      v34 = block_size;
      for (i = 0; i + 16 <= v34; i += 16)
      {
        v32 = 0u;
        v31 = 0u;
        v31 = *(v36 + i);
        v30 = v31;
        v32 = v31;
        v29 = 0u;
        v28 = 0u;
        v28 = *&v35[i];
        v27 = v28;
        v29 = v28;
        v56 = v31;
        v55 = v28;
        v54 = veorq_s8(v31, v28);
        v26 = v54;
        v25 = v54;
        *&v37[i] = v54;
      }

      while (i < v34)
      {
        v37[i] = *(v36 + i) ^ v35[i];
        ++i;
      }
    }

    else
    {
      cmac_pad(v60, block_size, v6, v8[4]);
      v50 = v60;
      v49 = v60;
      v48 = v61;
      v47 = block_size;
      for (j = 0; j + 16 <= v47; j += 16)
      {
        v45 = 0u;
        v44 = 0u;
        v44 = *&v49[j];
        v43 = v44;
        v45 = v44;
        v42 = 0u;
        v41 = 0u;
        v41 = *&v48[j];
        v40 = v41;
        v42 = v41;
        v53 = v44;
        v52 = v41;
        v51 = veorq_s8(v44, v41);
        v39 = v51;
        v38 = v51;
        *&v50[j] = v51;
      }

      while (j < v47)
      {
        v50[j] = v49[j] ^ v48[j];
        ++j;
      }
    }

    v24 = v7;
    v23 = v60;
    v22 = v7;
    v21 = block_size;
    for (k = 0; k + 16 <= v21; k += 16)
    {
      v19 = 0u;
      v18 = 0u;
      v18 = *&v23[k];
      v17 = v18;
      v19 = v18;
      v16 = 0u;
      v15 = 0u;
      v15 = *(v22 + k);
      v14 = v15;
      v16 = v15;
      v59 = v18;
      v58 = v15;
      v57 = veorq_s8(v18, v15);
      v13 = v57;
      v12 = v57;
      *(v24 + k) = v57;
    }

    while (k < v21)
    {
      *(v24 + k) = v23[k] ^ *(v22 + k);
      ++k;
    }

    v5 = mbedtls_cipher_update(v10, v7, block_size, v7, &v4);
    if (!v5)
    {
      __memcpy_chk();
    }

    mbedtls_platform_zeroize(v62, 0x10uLL);
    mbedtls_platform_zeroize(v61, 0x10uLL);
    v8[4] = 0;
    mbedtls_platform_zeroize(v8 + 2, 0x10uLL);
    mbedtls_platform_zeroize(v7, 0x10uLL);
    return v5;
  }

  else
  {
    return -24832;
  }
}

uint64_t cmac_generate_subkeys(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5 = 0;
  mbedtls_platform_zeroize(v10, 0x10uLL);
  block_size = mbedtls_cipher_info_get_block_size(*v9);
  v6 = mbedtls_cipher_update(v9, v10, block_size, v10, &v5);
  if (!v6)
  {
    v6 = cmac_multiply_by_u(v8, v10, block_size);
    if (!v6)
    {
      v6 = cmac_multiply_by_u(v7, v8, block_size);
    }
  }

  mbedtls_platform_zeroize(v10, 0x10uLL);
  return v6;
}

uint64_t cmac_pad(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  for (i = 0; i < a2; ++i)
  {
    if (i >= a4)
    {
      if (i == a4)
      {
        *(result + i) = 0x80;
      }

      else
      {
        *(result + i) = 0;
      }
    }

    else
    {
      *(result + i) = *(a3 + i);
    }
  }

  return result;
}

uint64_t mbedtls_cipher_cmac_reset(void *a1)
{
  if (a1 && *a1 && a1[9])
  {
    v2 = a1[9];
    v2[4] = 0;
    mbedtls_platform_zeroize(v2 + 2, 0x10uLL);
    mbedtls_platform_zeroize(v2, 0x10uLL);
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_cmac(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  memset(__b, 0, sizeof(__b));
  if (a1 && a2 && a4 && a6)
  {
    mbedtls_cipher_init(__b);
    v7 = mbedtls_cipher_setup(__b, a1);
    if (!v7)
    {
      v7 = mbedtls_cipher_cmac_starts(__b, a2, a3);
      if (!v7)
      {
        v7 = mbedtls_cipher_cmac_update(__b, a4, a5);
        if (!v7)
        {
          v7 = mbedtls_cipher_cmac_finish(__b, a6);
        }
      }
    }

    mbedtls_cipher_free(__b);
    return v7;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_aes_cmac_prf_128(__int128 *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1 && a3 && a5)
  {
    v6 = mbedtls_cipher_info_from_type(2);
    if (!v6)
    {
      v7 = -24704;
LABEL_11:
      mbedtls_platform_zeroize(&v14, 0x10uLL);
      return v7;
    }

    if (a2 == 16)
    {
      v14 = *a1;
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v7 = mbedtls_cipher_cmac(v6, v15, 128, a1, a2, &v14);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v7 = mbedtls_cipher_cmac(v6, &v14, 128, a3, a4, a5);
    goto LABEL_11;
  }

  return -24832;
}

uint64_t cmac_multiply_by_u(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 16)
  {
    for (i = 12; (i & 0x80000000) == 0; i -= 4)
    {
      __memcpy_chk();
    }

    v3 = mbedtls_ct_BOOL(*a2 >> 7);
    *(a1 + 15) ^= mbedtls_ct_uint_if_else_0(v3, 0x87u);
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_ctr_drbg_init(uint64_t a1)
{
  __memset_chk();
  result = mbedtls_aes_init(a1 + 40);
  *(a1 + 16) = -1;
  *(a1 + 32) = 10000;
  return result;
}

_DWORD *mbedtls_ctr_drbg_free(_DWORD *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_aes_free(result + 10);
    result = mbedtls_platform_zeroize(v1, 0x158uLL);
    v1[8] = 10000;
    v1[4] = -1;
  }

  return result;
}

uint64_t mbedtls_ctr_drbg_set_nonce_len(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 328))
  {
    return -52;
  }

  else if (a2 <= 0x180)
  {
    *(a1 + 16) = a2;
    return 0;
  }

  else
  {
    return -56;
  }
}

uint64_t mbedtls_ctr_drbg_update(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    updated = block_cipher_df(v7, a2, a3);
    if (!updated)
    {
      updated = ctr_drbg_update_internal(a1, v7);
    }

    mbedtls_platform_zeroize(v7, 0x30uLL);
    return updated;
  }

  else
  {
    return 0;
  }
}

uint64_t block_cipher_df(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  bzero(v11, 0x120uLL);
  if (v15 <= 0x180)
  {
    bzero(v41, 0x1A0uLL);
    v14 = v43;
    v20 = v43;
    v19 = bswap32(v15);
    __memcpy_chk();
    v14 += 7;
    v3 = v14++;
    *v3 = 48;
    __memcpy_chk();
    v14[v15] = 0x80;
    v7 = v15 + 25;
    for (i = 0; i < 32; ++i)
    {
      v38[i] = i;
    }

    mbedtls_aes_init(v11);
    v12 = mbedtls_aes_setkey_enc(v11, v38, 0x100u);
    if (!v12)
    {
      for (j = 0; j < 48; j += 16)
      {
        v14 = v41;
        v37[0] = 0;
        v37[1] = 0;
        v6 = v7;
        while (v6)
        {
          v33 = v37;
          v32 = v37;
          v31 = v14;
          v30 = 16;
          for (k = 0; k + 16 <= v30; k += 16)
          {
            v28 = 0u;
            v27 = 0u;
            v27 = *(v32 + k);
            v26 = v27;
            v28 = v27;
            v25 = 0u;
            v24 = 0u;
            v24 = *&v31[k];
            v23 = v24;
            v25 = v24;
            v36 = v27;
            v35 = v24;
            v34 = veorq_s8(v27, v24);
            v22 = v34;
            v21 = v34;
            *(v33 + k) = v34;
          }

          while (k < v30)
          {
            *(v33 + k) = *(v32 + k) ^ v31[k];
            ++k;
          }

          v14 += 16;
          if (v6 < 0x10)
          {
            v5 = v6;
          }

          else
          {
            v5 = 16;
          }

          v6 -= v5;
          v12 = mbedtls_aes_crypt_ecb(v11, 1u, v37, v37);
          if (v12)
          {
            goto LABEL_27;
          }
        }

        __memcpy_chk();
        ++v42;
      }

      v12 = mbedtls_aes_setkey_enc(v11, v39, 0x100u);
      if (!v12)
      {
        v13 = &v40;
        v14 = v17;
        for (m = 0; m < 48; m += 16)
        {
          v12 = mbedtls_aes_crypt_ecb(v11, 1u, v13, v13);
          if (v12)
          {
            break;
          }

          __memcpy_chk();
          v14 += 16;
        }
      }
    }

LABEL_27:
    mbedtls_aes_free(v11);
    mbedtls_platform_zeroize(v41, 0x1A0uLL);
    mbedtls_platform_zeroize(v39, 0x30uLL);
    mbedtls_platform_zeroize(v38, 0x20uLL);
    mbedtls_platform_zeroize(v37, 0x10uLL);
    if (v12)
    {
      mbedtls_platform_zeroize(v17, 0x30uLL);
    }

    return v12;
  }

  else
  {
    return -56;
  }
}

uint64_t ctr_drbg_update_internal(_DWORD *a1, uint64_t a2)
{
  v5 = __b;
  memset(__b, 0, sizeof(__b));
  for (i = 0; i < 48; i += 16)
  {
    mbedtls_ctr_increment_counter(a1);
    v3 = mbedtls_aes_crypt_ecb((a1 + 10), 1u, a1, v5);
    if (v3)
    {
      goto LABEL_12;
    }

    v5 += 16;
  }

  for (j = 0; j + 16 <= 0x30; j += 16)
  {
    *&__b[j] = veorq_s8(*&__b[j], *(a2 + j));
  }

  while (j < 0x30)
  {
    __b[j] ^= *(a2 + j);
    ++j;
  }

  v3 = mbedtls_aes_setkey_enc(a1 + 10, __b, 0x100u);
  if (!v3)
  {
    __memcpy_chk();
  }

LABEL_12:
  mbedtls_platform_zeroize(__b, 0x30uLL);
  return v3;
}

uint64_t mbedtls_ctr_drbg_reseed_internal(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 24) <= 0x180uLL)
  {
    if (a4 <= 384 - *(a1 + 24))
    {
      if (a3 <= 384 - *(a1 + 24) - a4)
      {
        bzero(v12, 0x180uLL);
        if ((*(a1 + 328))(*(a1 + 336), v12, *(a1 + 24)))
        {
          return -52;
        }

        else
        {
          v6 = *(a1 + 24);
          if (a4)
          {
            if ((*(a1 + 328))(*(a1 + 336), &v12[v6], a4))
            {
              return -52;
            }

            v6 += a4;
          }

          if (a2 && a3)
          {
            __memcpy_chk();
            v6 += a3;
          }

          updated = block_cipher_df(v12, v12, v6);
          if (!updated)
          {
            updated = ctr_drbg_update_internal(a1, v12);
            if (!updated)
            {
              *(a1 + 16) = 1;
            }
          }

          mbedtls_platform_zeroize(v12, 0x180uLL);
          return updated;
        }
      }

      else
      {
        return -56;
      }
    }

    else
    {
      return -56;
    }
  }

  else
  {
    return -56;
  }
}

uint64_t mbedtls_ctr_drbg_seed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  memset(v13, 0, sizeof(v13));
  *(a1 + 328) = a2;
  *(a1 + 336) = a3;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = 32;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    v6 = good_nonce_len(*(a1 + 24));
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = mbedtls_aes_setkey_enc((a1 + 40), v13, 0x100u);
  if (v7)
  {
    return v7;
  }

  else
  {
    v8 = mbedtls_ctr_drbg_reseed_internal(a1, a4, a5, v6);
    if (v8)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t good_nonce_len(unint64_t a1)
{
  if (a1 < 0x30)
  {
    return (a1 + 1) / 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ctr_drbg_random_with_add(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  memset(__b, 0, sizeof(__b));
  if (a3 <= 0x400)
  {
    if (a5 <= 0x100)
    {
      memset(__b, 0, 0x30uLL);
      if (a1[4] > a1[8] || a1[5])
      {
        v9 = mbedtls_ctr_drbg_reseed(a1, a4, a5);
        if (v9)
        {
          return v9;
        }

        a5 = 0;
      }

      if (!a5 || (updated = block_cipher_df(__b, a4, a5)) == 0 && (updated = ctr_drbg_update_internal(a1, __b)) == 0)
      {
        while (a3)
        {
          mbedtls_ctr_increment_counter(a1);
          updated = mbedtls_aes_crypt_ecb((a1 + 10), 1u, a1, &__b[48]);
          if (updated)
          {
            goto LABEL_21;
          }

          if (a3 <= 0x10)
          {
            v6 = a3;
          }

          else
          {
            v6 = 16;
          }

          __memcpy_chk();
          a2 += v6;
          a3 -= v6;
        }

        updated = ctr_drbg_update_internal(a1, __b);
        if (!updated)
        {
          ++a1[4];
        }
      }

LABEL_21:
      mbedtls_platform_zeroize(__b, 0x40uLL);
      return updated;
    }

    else
    {
      return -56;
    }
  }

  else
  {
    return -54;
  }
}

uint64_t mbedtls_ctr_increment_counter(uint64_t a1)
{
  for (i = 3; ; --i)
  {
    v2 = bswap32(*(a1 + 4 * i)) + 1;
    result = __memcpy_chk();
    if (v2 || !i)
    {
      break;
    }
  }

  return result;
}

uint64_t mbedtls_ecdsa_sign_restartable(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t), uint64_t a10, uint64_t a11)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v24 = a11;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = &v21;
  v19 = &v22;
  memset(__b, 0, sizeof(__b));
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v33;
  if (mbedtls_ecdsa_can_do() && *(v34 + 104))
  {
    if ((mbedtls_mpi_cmp_int(v31, 1uLL) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v31, v34 + 104) & 0x80000000) != 0)
    {
      mbedtls_ecp_point_init(__b);
      mbedtls_mpi_init(v17);
      mbedtls_mpi_init(v16);
      mbedtls_mpi_init(v15);
      *v20 = 0;
      while (1)
      {
        v11 = (*v20)++;
        if (v11 > 10)
        {
          break;
        }

        *v19 = 0;
        do
        {
          v12 = (*v19)++;
          if (v12 > 10)
          {
            v23 = -19712;
            goto LABEL_28;
          }

          v23 = mbedtls_ecp_gen_privkey(v34, v17, v28, v27);
          if (!v23)
          {
            v23 = mbedtls_ecp_mul_restartable(v34, __b, v17, (v34 + 56), v26, v25, 0);
            if (!v23)
            {
              v23 = mbedtls_mpi_mod_mpi(v14, __b, v34 + 104);
              if (!v23)
              {
                continue;
              }
            }
          }

          goto LABEL_28;
        }

        while (!mbedtls_mpi_cmp_int(v14, 0));
        v23 = derive_mpi(v34, v16, v30, v29);
        if (!v23)
        {
          v23 = mbedtls_ecp_gen_privkey(v34, v15, v26, v25);
          if (!v23)
          {
            v23 = mbedtls_mpi_mul_mpi(v32, v14, v31);
            if (!v23)
            {
              v23 = mbedtls_mpi_add_mpi(v16, v16, v32);
              if (!v23)
              {
                v23 = mbedtls_mpi_mul_mpi(v16, v16, v15);
                if (!v23)
                {
                  v23 = mbedtls_mpi_mul_mpi(v17, v17, v15);
                  if (!v23)
                  {
                    v23 = mbedtls_mpi_mod_mpi(v17, v17, v34 + 104);
                    if (!v23)
                    {
                      v23 = mbedtls_mpi_inv_mod(v32, v17, v34 + 104);
                      if (!v23)
                      {
                        v23 = mbedtls_mpi_mul_mpi(v32, v32, v16);
                        if (!v23)
                        {
                          v23 = mbedtls_mpi_mod_mpi(v32, v32, v34 + 104);
                          if (!v23 && !mbedtls_mpi_cmp_int(v32, 0))
                          {
                            continue;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_28;
      }

      v23 = -19712;
LABEL_28:
      mbedtls_ecp_point_free(__b);
      mbedtls_mpi_free(v17);
      mbedtls_mpi_free(v16);
      mbedtls_mpi_free(v15);
      return v23;
    }

    else
    {
      return -19584;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t derive_mpi(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= (*(a1 + 128) + 7) / 8uLL)
  {
    v5 = a4;
  }

  else
  {
    v5 = (*(a1 + 128) + 7) / 8uLL;
  }

  binary = mbedtls_mpi_read_binary(a2, a3, v5);
  if (!binary && (*(a1 + 128) >= 8 * v5 || (binary = mbedtls_mpi_shift_r(a2, 8 * v5 - *(a1 + 128))) == 0) && (mbedtls_mpi_cmp_mpi(a2, a1 + 104) & 0x80000000) == 0)
  {
    return mbedtls_mpi_sub_mpi(a2, a2, a1 + 104);
  }

  return binary;
}

uint64_t mbedtls_ecdsa_verify_restartable(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a7;
  v13 = -110;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  mbedtls_mpi_init(v12);
  mbedtls_mpi_init(v11);
  mbedtls_mpi_init(v10);
  mbedtls_mpi_init(v9);
  if (mbedtls_ecdsa_can_do() && *(v20 + 104))
  {
    if ((mbedtls_mpi_cmp_int(v16, 1uLL) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v16, v20 + 104) & 0x80000000) != 0 && (mbedtls_mpi_cmp_int(v15, 1uLL) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v15, v20 + 104) & 0x80000000) != 0)
    {
      v13 = derive_mpi(v20, v12, v19, v18);
      if (!v13)
      {
        v13 = mbedtls_mpi_inv_mod(v11, v15, v20 + 104);
        if (!v13)
        {
          v13 = mbedtls_mpi_mul_mpi(v10, v12, v11);
          if (!v13)
          {
            v13 = mbedtls_mpi_mod_mpi(v10, v10, v20 + 104);
            if (!v13)
            {
              v13 = mbedtls_mpi_mul_mpi(v9, v16, v11);
              if (!v13)
              {
                v13 = mbedtls_mpi_mod_mpi(v9, v9, v20 + 104);
                if (!v13)
                {
                  v13 = mbedtls_ecp_muladd_restartable(v20, __b, v10, (v20 + 56), v9, v17, 0);
                  if (!v13)
                  {
                    if (mbedtls_ecp_is_zero(__b))
                    {
                      v13 = -19968;
                    }

                    else
                    {
                      v13 = mbedtls_mpi_mod_mpi(__b, __b, v20 + 104);
                      if (!v13 && mbedtls_mpi_cmp_mpi(__b, v16))
                      {
                        v13 = -19968;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = -19968;
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v11);
    mbedtls_mpi_free(v10);
    mbedtls_mpi_free(v9);
    return v13;
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecdsa_write_signature_restartable(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, unint64_t), uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = a9;
  v14 = a10;
  v13 = -110;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (a8)
  {
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v11);
    v13 = mbedtls_ecdsa_sign_restartable(v23, v12, v11, (v23 + 192), v21, v20, v16, v15, v16, v15, v14);
    if (!v13)
    {
      v13 = ecdsa_signature_to_asn1(v12, v11, v19, v18, v17);
    }

    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v11);
    return v13;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecdsa_signature_to_asn1(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = -110;
  memset(__b, 0, sizeof(__b));
  v10 = &v19;
  v11 = mbedtls_asn1_write_mpi(&v10, __b, v15);
  if (v11 < 0)
  {
    return v11;
  }

  else
  {
    v6 = v11;
    v11 = mbedtls_asn1_write_mpi(&v10, __b, v16);
    if (v11 < 0)
    {
      return v11;
    }

    else
    {
      v7 = v6 + v11;
      v11 = mbedtls_asn1_write_len(&v10, __b, v7);
      if (v11 < 0)
      {
        return v11;
      }

      else
      {
        v8 = v7 + v11;
        v11 = mbedtls_asn1_write_tag(&v10, __b, 48);
        if (v11 < 0)
        {
          return v11;
        }

        else
        {
          v9 = v8 + v11;
          if (v9 <= v13)
          {
            __memcpy_chk();
            *v12 = v9;
            return 0;
          }

          else
          {
            return -20224;
          }
        }
      }
    }
  }
}

uint64_t mbedtls_ecdsa_read_signature_restartable(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  tag = -110;
  v11 = a4;
  v10 = &a4[a5];
  v9 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v8);
  mbedtls_mpi_init(v7);
  tag = mbedtls_asn1_get_tag(&v11, v10, &v9, 48);
  if (tag)
  {
    tag -= 20352;
  }

  else if (&v11[v9] == v10)
  {
    tag = mbedtls_asn1_get_mpi(&v11, v10, v8);
    if (tag || (tag = mbedtls_asn1_get_mpi(&v11, v10, v7)) != 0)
    {
      tag -= 20352;
    }

    else
    {
      tag = mbedtls_ecdsa_verify_restartable(v18, v17, v16, (v18 + 208), v8, v7, v13);
      if (!tag && v11 != v10)
      {
        tag = -19456;
      }
    }
  }

  else
  {
    tag = mbedtls_error_add(-20352, -102);
  }

  mbedtls_mpi_free(v8);
  mbedtls_mpi_free(v7);
  return tag;
}

uint64_t mbedtls_ecdsa_genkey(uint64_t *a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a1, a2);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_gen_keypair(a1, (a1 + 24), a1 + 26, a3, a4);
  }
}

uint64_t mbedtls_ecdsa_from_keypair(uint64_t *a1, unsigned int *a2)
{
  v3 = mbedtls_ecp_group_copy(a1, a2);
  if (v3 || (v3 = mbedtls_mpi_copy((a1 + 24), (a2 + 48))) != 0 || (v3 = mbedtls_ecp_copy((a1 + 26), (a2 + 52))) != 0)
  {
    mbedtls_ecdsa_free(a1);
  }

  return v3;
}

uint64_t *mbedtls_ecdsa_free(uint64_t *result)
{
  if (result)
  {
    return mbedtls_ecp_keypair_free(result);
  }

  return result;
}

uint64_t mbedtls_ecjpake_init(_DWORD *a1)
{
  *a1 = 0;
  mbedtls_ecp_group_init((a1 + 2));
  a1[51] = 0;
  mbedtls_ecp_point_init((a1 + 52));
  mbedtls_ecp_point_init((a1 + 64));
  mbedtls_ecp_point_init((a1 + 76));
  mbedtls_ecp_point_init((a1 + 88));
  mbedtls_ecp_point_init((a1 + 100));
  mbedtls_mpi_init((a1 + 112));
  mbedtls_mpi_init((a1 + 116));
  return mbedtls_mpi_init((a1 + 120));
}

uint64_t *mbedtls_ecjpake_free(uint64_t *result)
{
  v1 = result;
  if (result)
  {
    *result = 0;
    mbedtls_ecp_group_free(result + 1);
    mbedtls_ecp_point_free((v1 + 26));
    mbedtls_ecp_point_free((v1 + 32));
    mbedtls_ecp_point_free((v1 + 38));
    mbedtls_ecp_point_free((v1 + 44));
    mbedtls_ecp_point_free((v1 + 50));
    mbedtls_mpi_free((v1 + 56));
    mbedtls_mpi_free((v1 + 58));
    return mbedtls_mpi_free((v1 + 60));
  }

  return result;
}

uint64_t mbedtls_ecjpake_setup(unsigned int *a1, unsigned int a2, int a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a2 < 2)
  {
    a1[50] = a2;
    if (mbedtls_md_info_from_type(a3))
    {
      *a1 = a3;
      binary = mbedtls_ecp_group_load(a1 + 1, a4);
      if (!binary)
      {
        binary = mbedtls_mpi_read_binary((a1 + 120), a5, a6);
      }

      if (binary)
      {
        mbedtls_ecjpake_free(a1);
      }

      return binary;
    }

    else
    {
      return -20608;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecjpake_set_point_format(uint64_t a1, unsigned int a2)
{
  if (a2 > 1)
  {
    return -20352;
  }

  else
  {
    *(a1 + 204) = a2;
    return 0;
  }
}

uint64_t mbedtls_ecjpake_check(uint64_t a1)
{
  if (*a1 && *(a1 + 8) && *(a1 + 480))
  {
    return 0;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecjpake_kkpp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v13 = a9;
  v12 = -110;
  v11 = a8;
  v10 = a8 + a9;
  v12 = ecjpake_kkp_read(a1, a2, a3, a4, a5, a7, &v11, a8 + a9);
  if (!v12)
  {
    v12 = ecjpake_kkp_read(v21, v20, v19, v18, v16, v15, &v11, v10);
    if (!v12 && v11 != v10)
    {
      return -20352;
    }
  }

  return v12;
}

uint64_t ecjpake_kkpp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t, uint64_t, unint64_t), uint64_t a14)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v21 = a10;
  v20 = a11;
  v19 = a12;
  v18 = a13;
  v17 = a14;
  v16 = -110;
  v15 = a10;
  v16 = ecjpake_kkp_write(a1, a2, a3, a4, a5, a6, a9, &v15, a10 + a11, a13, a14);
  if (!v16)
  {
    v16 = ecjpake_kkp_write(v30, v29, v28, v27, v24, v23, v22, &v15, a10 + a11, v18, v17);
    if (!v16)
    {
      *v19 = v15 - v21;
    }
  }

  return v16;
}

uint64_t mbedtls_ecjpake_read_round_two(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  group = -110;
  v7 = a2;
  v6 = a2 + a3;
  memset(__b, 0, sizeof(__b));
  memset(v4, 0, sizeof(v4));
  mbedtls_ecp_group_init(__b);
  mbedtls_ecp_point_init(v4);
  group = ecjpake_ecp_add3((v11 + 2), v4, v11 + 26, v11 + 32, v11 + 38);
  if (!group)
  {
    if (!v11[50])
    {
      group = mbedtls_ecp_tls_read_group(__b, &v7, v9);
      if (group)
      {
        goto LABEL_9;
      }

      if (LODWORD(__b[0]) != v11[2])
      {
        group = -20096;
        goto LABEL_9;
      }
    }

    group = ecjpake_kkp_read(*v11, (v11 + 2), v11[51], v4, v11 + 50, ecjpake_id[1 - v11[50]], &v7, v6);
    if (!group && v7 != v6)
    {
      group = -20352;
    }
  }

LABEL_9:
  mbedtls_ecp_group_free(__b);
  mbedtls_ecp_point_free(v4);
  return group;
}

uint64_t ecjpake_ecp_add3(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = -110;
  v6[0] = 0;
  v6[1] = 0;
  mbedtls_mpi_init(v6);
  v7 = mbedtls_mpi_lset(v6, 1uLL);
  if (!v7)
  {
    v7 = mbedtls_ecp_muladd(v12, v11, v6, v10, v6, v9);
    if (!v7)
    {
      v7 = mbedtls_ecp_muladd(v12, v11, v6, v11, v6, v8);
    }
  }

  mbedtls_mpi_free(v6);
  return v7;
}

uint64_t ecjpake_kkp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, char *a6, uint64_t *a7, unint64_t a8)
{
  if (a8 >= *a7)
  {
    point = mbedtls_ecp_tls_read_point(a2, a5, a7, a8 - *a7);
    if (!point)
    {
      if (mbedtls_ecp_is_zero(a5))
      {
        return -19584;
      }

      else
      {
        return ecjpake_zkp_read(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    return point;
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecjpake_write_round_two(unsigned int *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = -110;
  memset(__b, 0, sizeof(__b));
  memset(v11, 0, sizeof(v11));
  v10[0] = 0;
  v10[1] = 0;
  v9 = v18;
  v8 = v18 + v17;
  v7 = 0;
  mbedtls_ecp_point_init(__b);
  mbedtls_ecp_point_init(v11);
  mbedtls_mpi_init(v10);
  v13 = ecjpake_ecp_add3((v19 + 2), __b, v19 + 38, v19 + 44, v19 + 26);
  if (!v13)
  {
    v13 = ecjpake_mul_secret(v10, 1, v19 + 58, (v19 + 120), v19 + 14, v15, v14);
    if (!v13)
    {
      v13 = mbedtls_ecp_mul((v19 + 2), v11, v10, __b, v15, v14);
      if (!v13)
      {
        if (v19[50] == 1)
        {
          if (v8 < v9)
          {
            v13 = -20224;
            goto LABEL_14;
          }

          v13 = mbedtls_ecp_tls_write_group(v19 + 2, &v7, v9, v8 - v9);
          if (v13)
          {
            goto LABEL_14;
          }

          v9 += v7;
        }

        if (v8 >= v9)
        {
          v13 = mbedtls_ecp_tls_write_point((v19 + 2), v11, v19[51], &v7, v9, v8 - v9);
          if (!v13)
          {
            v9 += v7;
            v13 = ecjpake_zkp_write(*v19, (v19 + 2), v19[51], __b, v10, v11, ecjpake_id[v19[50]], &v9, v8, v15, v14);
            if (!v13)
            {
              *v16 = &v9[-v18];
            }
          }
        }

        else
        {
          v13 = -20224;
        }
      }
    }
  }

LABEL_14:
  mbedtls_ecp_point_free(__b);
  mbedtls_ecp_point_free(v11);
  mbedtls_mpi_free(v10);
  return v13;
}

uint64_t ecjpake_mul_secret(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t), uint64_t a7)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v9 = -110;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v8);
  v9 = mbedtls_mpi_fill_random(v8, 0x10uLL, v11, v10);
  if (!v9)
  {
    v9 = mbedtls_mpi_mul_mpi(v8, v8, v12);
    if (!v9)
    {
      v9 = mbedtls_mpi_add_mpi(v8, v8, v13);
      if (!v9)
      {
        v9 = mbedtls_mpi_mul_mpi(v16, v14, v8);
        if (!v9)
        {
          *(v16 + 4) *= v15;
          v9 = mbedtls_mpi_mod_mpi(v16, v16, v12);
        }
      }
    }
  }

  mbedtls_mpi_free(v8);
  return v9;
}

uint64_t ecjpake_zkp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char *a7, unint64_t *a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, unint64_t), uint64_t a11)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v20 = a10;
  v19 = a11;
  v18 = -110;
  memset(__b, 0, sizeof(__b));
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = 0;
  if (a9 >= *v22)
  {
    mbedtls_ecp_point_init(__b);
    mbedtls_mpi_init(v16);
    mbedtls_mpi_init(v15);
    v18 = mbedtls_ecp_gen_keypair_base(v28, v26, v16, __b, v20, v19);
    if (!v18)
    {
      v18 = ecjpake_hash(v29, v28, v27, v26, __b, v24, v23, v15);
      if (!v18)
      {
        v18 = mbedtls_mpi_mul_mpi(v15, v15, v25);
        if (!v18)
        {
          v18 = mbedtls_mpi_sub_mpi(v15, v16, v15);
          if (!v18)
          {
            v18 = mbedtls_mpi_mod_mpi(v15, v15, v28 + 104);
            if (!v18)
            {
              v18 = mbedtls_ecp_tls_write_point(v28, __b, v27, &v14, *v22, v21 - *v22);
              if (!v18)
              {
                *v22 += v14;
                v14 = mbedtls_mpi_size(v15);
                if (v21 >= *v22 && v21 - *v22 >= v14 + 1 && v14 <= 0xFF)
                {
                  v11 = v14;
                  v12 = (*v22)++;
                  *v12 = v11;
                  v18 = mbedtls_mpi_write_binary(v15, *v22, v14);
                  if (!v18)
                  {
                    *v22 += v14;
                  }
                }

                else
                {
                  v18 = -20224;
                }
              }
            }
          }
        }
      }
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_mpi_free(v16);
    mbedtls_mpi_free(v15);
    return v18;
  }

  else
  {
    return -20224;
  }
}

uint64_t mbedtls_ecjpake_derive_secret(unsigned int *a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = -110;
  memset(__b, 0, sizeof(__b));
  size_from_type = mbedtls_md_get_size_from_type(*v16);
  *v13 = size_from_type;
  if (v14 >= *v13)
  {
    mbedtls_ecp_point_init(__b);
    v10 = mbedtls_ecjpake_derive_k(v16, __b, v12, v11);
    if (!v10)
    {
      v8 = (v16[16] + 7) / 8uLL;
      v10 = mbedtls_mpi_write_binary(__b, v18, v8);
      if (!v10)
      {
        v10 = mbedtls_ecjpake_compute_hash(*v16, v18, v8, v15);
      }
    }

    mbedtls_ecp_point_free(__b);
    return v10;
  }

  else
  {
    return -20224;
  }
}

uint64_t mbedtls_ecjpake_derive_k(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = -110;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v6);
  mbedtls_mpi_init(v5);
  v7 = mbedtls_mpi_lset(v5, 1uLL);
  if (!v7)
  {
    v7 = ecjpake_mul_secret(v6, -1, v11 + 58, (v11 + 60), v11 + 14, v9, v8);
    if (!v7)
    {
      v7 = mbedtls_ecp_muladd((v11 + 1), v10, v5, v11 + 50, v6, v11 + 44);
      if (!v7)
      {
        v7 = mbedtls_ecp_mul((v11 + 1), v10, (v11 + 58), v10, v9, v8);
      }
    }
  }

  mbedtls_mpi_free(v6);
  mbedtls_mpi_free(v5);
  return v7;
}

uint64_t mbedtls_ecjpake_write_shared_key(uint64_t *a1, _BYTE *a2, unint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = -110;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  v8 = mbedtls_ecjpake_derive_k(v14, __b, v10, v9);
  if (!v8)
  {
    v8 = mbedtls_ecp_point_write_binary((v14 + 1), __b, *(v14 + 51), v11, v13, v12);
  }

  mbedtls_ecp_point_free(__b);
  return v8;
}

uint64_t ecjpake_kkp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, unint64_t *a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, unint64_t), uint64_t a11)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v16 = a9;
  v15 = a10;
  v14 = a11;
  v13 = -110;
  v12 = 0;
  if (a9 >= *a8)
  {
    v13 = mbedtls_ecp_gen_keypair_base(v23, v21, v20, v19, v15, v14);
    if (!v13)
    {
      v13 = mbedtls_ecp_tls_write_point(v23, v19, v22, &v12, *v17, v16 - *v17);
      if (!v13)
      {
        *v17 += v12;
        return ecjpake_zkp_write(v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14);
      }
    }

    return v13;
  }

  else
  {
    return -20224;
  }
}

uint64_t ecjpake_zkp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, char *a6, uint64_t *a7, unint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  point = -110;
  memset(__b, 0, sizeof(__b));
  memset(v13, 0, sizeof(v13));
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  mbedtls_ecp_point_init(__b);
  mbedtls_ecp_point_init(v13);
  mbedtls_mpi_init(v12);
  mbedtls_mpi_init(v11);
  if (v16 >= *v17)
  {
    point = mbedtls_ecp_tls_read_point(v22, __b, v17, v16 - *v17);
    if (!point)
    {
      if (v16 > *v17)
      {
        v8 = (*v17)++;
        v10 = *v8;
        if (v16 >= *v17 && v16 - *v17 >= v10 && *v8)
        {
          point = mbedtls_mpi_read_binary(v12, *v17, v10);
          if (!point)
          {
            *v17 += v10;
            point = ecjpake_hash(v23, v22, v21, v20, __b, v19, v18, v11);
            if (!point)
            {
              point = mbedtls_ecp_muladd(v22, v13, v11, v19, v12, v20);
              if (!point)
              {
                if (mbedtls_ecp_point_cmp(v13, __b))
                {
                  point = -19968;
                }
              }
            }
          }
        }

        else
        {
          point = -20352;
        }
      }

      else
      {
        point = -20352;
      }
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_ecp_point_free(v13);
    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v11);
    return point;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecjpake_hash(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  __s = a7;
  v14 = a8;
  binary = -110;
  v12 = v26;
  v11 = strlen(a7);
  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v18);
  if (binary)
  {
    return binary;
  }

  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v17);
  if (binary)
  {
    return binary;
  }

  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v16);
  if (binary)
  {
    return binary;
  }

  if (&v27 - v12 >= 4)
  {
    v24 = v12;
    v23 = bswap32(v11);
    __memcpy_chk();
    v12 += 4;
    if (&v27 < v12 || &v27 - v12 < v11)
    {
      return -20224;
    }

    __memcpy_chk();
    v12 += v11;
    binary = mbedtls_ecjpake_compute_hash(v21, v26, v12 - v26, v25);
    if (!binary)
    {
      v10 = v14;
      size_from_type = mbedtls_md_get_size_from_type(v21);
      binary = mbedtls_mpi_read_binary(v10, v25, size_from_type);
      if (!binary)
      {
        return mbedtls_mpi_mod_mpi(v14, v14, v20 + 104);
      }
    }

    return binary;
  }

  return -20224;
}

uint64_t ecjpake_write_len_point(unint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = -110;
  v7 = 0;
  if (a2 < *a1 || (v12 - *v13) < 5)
  {
    return -20224;
  }

  else
  {
    v5 = mbedtls_ecp_point_write_binary(v11, v9, v10, &v7, (*v13 + 4), v12 - (*v13 + 4));
    v8 = v5;
    if (v5)
    {
      return v8;
    }

    else
    {
      v16 = *v13;
      v15 = bswap32(v7);
      __memcpy_chk();
      *v13 += v7 + 4;
      return 0;
    }
  }
}

_DWORD *mbedtls_ecp_grp_id_list()
{
  if (!mbedtls_ecp_grp_id_list_init_done)
  {
    v3 = 0;
    for (i = mbedtls_ecp_curve_list(); *i; i += 4)
    {
      v0 = v3++;
      ecp_supported_grp_id[v0] = *i;
    }

    ecp_supported_grp_id[v3] = 0;
    mbedtls_ecp_grp_id_list_init_done = 1;
  }

  return ecp_supported_grp_id;
}

_DWORD *mbedtls_ecp_curve_info_from_grp_id(int a1)
{
  for (i = mbedtls_ecp_curve_list(); *i; i += 4)
  {
    if (*i == a1)
    {
      return i;
    }
  }

  return 0;
}

_DWORD *mbedtls_ecp_curve_info_from_tls_id(unsigned __int16 a1)
{
  for (i = mbedtls_ecp_curve_list(); *i; i += 4)
  {
    if (*(i + 2) == a1)
    {
      return i;
    }
  }

  return 0;
}

const char **mbedtls_ecp_curve_info_from_name(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = mbedtls_ecp_curve_list(); *i; i += 2)
  {
    if (!strcmp(i[1], a1))
    {
      return i;
    }
  }

  return 0;
}

uint64_t mbedtls_ecp_get_type(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 72))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ecp_point_init(uint64_t a1)
{
  mbedtls_mpi_init(a1);
  mbedtls_mpi_init(a1 + 16);
  return mbedtls_mpi_init(a1 + 32);
}

uint64_t mbedtls_ecp_group_init(uint64_t a1)
{
  *a1 = 0;
  mbedtls_mpi_init(a1 + 8);
  mbedtls_mpi_init(a1 + 24);
  mbedtls_mpi_init(a1 + 40);
  mbedtls_ecp_point_init(a1 + 56);
  result = mbedtls_mpi_init(a1 + 104);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

uint64_t mbedtls_ecp_keypair_init(uint64_t a1)
{
  mbedtls_ecp_group_init(a1);
  mbedtls_mpi_init(a1 + 192);
  return mbedtls_ecp_point_init(a1 + 208);
}

uint64_t mbedtls_ecp_point_free(uint64_t result)
{
  v1 = result;
  if (result)
  {
    mbedtls_mpi_free(result);
    mbedtls_mpi_free(v1 + 16);
    return mbedtls_mpi_free(v1 + 32);
  }

  return result;
}

uint64_t *mbedtls_ecp_group_free(uint64_t *result)
{
  v2 = result;
  if (result)
  {
    if (*(result + 34) != 1)
    {
      mbedtls_mpi_free((result + 3));
      mbedtls_mpi_free((v2 + 5));
      mbedtls_ecp_point_free((v2 + 7));
      mbedtls_mpi_free((v2 + 13));
      mbedtls_mpi_free((v2 + 1));
    }

    if (!mbedtls_aes_rk_offset() && v2[22])
    {
      for (i = 0; i < v2[23]; ++i)
      {
        mbedtls_ecp_point_free(v2[22] + 48 * i);
      }

      mbedtls_free(v2[22]);
    }

    return mbedtls_platform_zeroize(v2, 0xC0uLL);
  }

  return result;
}

uint64_t *mbedtls_ecp_keypair_free(uint64_t *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_ecp_group_free(result);
    mbedtls_mpi_free((v1 + 24));
    return mbedtls_ecp_point_free((v1 + 26));
  }

  return result;
}

uint64_t mbedtls_ecp_copy(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_mpi_copy(a1, a2);
  if (!v3)
  {
    v3 = mbedtls_mpi_copy(a1 + 16, a2 + 16);
    if (!v3)
    {
      return mbedtls_mpi_copy(a1 + 32, a2 + 32);
    }
  }

  return v3;
}

uint64_t mbedtls_ecp_set_zero(uint64_t a1)
{
  v2 = mbedtls_mpi_lset(a1, 1uLL);
  if (!v2)
  {
    v2 = mbedtls_mpi_lset(a1 + 16, 1uLL);
    if (!v2)
    {
      return mbedtls_mpi_lset(a1 + 32, 0);
    }
  }

  return v2;
}

uint64_t mbedtls_ecp_point_cmp(uint64_t a1, uint64_t a2)
{
  if (mbedtls_mpi_cmp_mpi(a1, a2) || mbedtls_mpi_cmp_mpi(a1 + 16, a2 + 16) || mbedtls_mpi_cmp_mpi(a1 + 32, a2 + 32))
  {
    return -20352;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ecp_point_read_string(uint64_t a1, int a2, const char *a3, const char *a4)
{
  string = mbedtls_mpi_read_string(a1, a2, a3);
  if (!string)
  {
    string = mbedtls_mpi_read_string(a1 + 16, a2, a4);
    if (!string)
    {
      return mbedtls_mpi_lset(a1 + 32, 1uLL);
    }
  }

  return string;
}

uint64_t mbedtls_ecp_point_write_binary(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, _BYTE *a5, unint64_t a6)
{
  v8 = -20096;
  if (a3 >= 2)
  {
    return -20352;
  }

  v7 = mbedtls_mpi_size(a1 + 8);
  if (mbedtls_ecp_get_type(a1) != 1)
  {
    return v8;
  }

  if (mbedtls_mpi_cmp_int(a2 + 32, 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a4 = v7 + 1;
        if (a6 < *a4)
        {
          return -20224;
        }

        *a5 = mbedtls_mpi_get_bit(a2 + 16, 0) + 2;
        return mbedtls_mpi_write_binary(a2, (a5 + 1), v7);
      }
    }

    else
    {
      *a4 = 2 * v7 + 1;
      if (a6 < *a4)
      {
        return -20224;
      }

      *a5 = 4;
      v8 = mbedtls_mpi_write_binary(a2, (a5 + 1), v7);
      if (!v8)
      {
        return mbedtls_mpi_write_binary(a2 + 16, &a5[v7 + 1], v7);
      }
    }

    return v8;
  }

  if (a6)
  {
    *a5 = 0;
    *a4 = 1;
    return 0;
  }

  else
  {
    return -20224;
  }
}