uint64_t ot::Posix::HdlcInterface::airship_open(ot::Posix::HdlcInterface *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v17, "airship_open");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Creating Airship interface...\n", v17, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v16, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v16, 0x16u);
  }

  if (ot::Posix::HdlcInterface::airship_open_rings(thread_ctx))
  {
    gPciStatus = 0;
    v5 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v5 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v15, "airship_open", gPciStatus);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: airship_open_rings() successful gPciStatus=%d\n", v15, 0x12u);
      }
    }

    else if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v14, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v14, 0x16u);
    }

    if (pthread_create(&g_hci_thread_id, 0, ot::Posix::HdlcInterface::airship_read_thread, 0))
    {
      v3 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v11, "airship_open");
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: failed to create airship rx thread\n", v11, 0xCu);
        }
      }

      else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
      }

      return 1;
    }

    else
    {
      v2 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v9, "airship_open");
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: created airship rx thread\n", v9, 0xCu);
        }
      }

      else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
      }

      return 0;
    }
  }

  else
  {
    gPciStatus = 3;
    v4 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v13, "airship_open", gPciStatus);
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: airship_open_rings() failed gPciStatus=%d\n", v13, 0x12u);
      }
    }

    else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v12, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v12, 0x16u);
    }

    return 1;
  }
}

uint64_t __os_log_helper_16_0_2_4_0_4_0(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t ot::Posix::HdlcInterface::skywalk_open(ot::Posix::HdlcInterface *this)
{
  v36 = 0;
  ot::Posix::HdlcInterface::init_channel_data(this);
  if ((ot::Posix::HdlcInterface::start_channel("tsi", v1, v2) & 0x80000000) != 0)
  {
    gPciStatus = 3;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v34 = logging_obg;
      v33 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v44, gPciStatus);
        _os_log_impl(&_mh_execute_header, v34, v33, " failed opening Skywalk channel gPciStatus=%d\n", v44, 8u);
      }
    }

    else if (!logging_obg)
    {
      v32 = &_os_log_default;
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    return 1;
  }

  else
  {
    gPciStatus = 0;
    v30 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v30 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v29 = v30;
      v28 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v42, gPciStatus);
        _os_log_impl(&_mh_execute_header, v29, v28, " opening Skywalk channel gPciStatus=%d\n", v42, 8u);
      }
    }

    else if (!v30)
    {
      v27 = &_os_log_default;
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v27, v26, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
      }
    }

    if (pthread_create(&g_hci_thread_id, 0, ot::Posix::HdlcInterface::skywalk_read_thread, 0))
    {
      v25 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v25 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v25;
        v23 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v8 = oslog;
          v9 = v23;
          __os_log_helper_16_0_0(v22);
          _os_log_impl(&_mh_execute_header, v8, v9, " failed to create skywalk rx thread\n", v22, 2u);
        }
      }

      else if (!v25)
      {
        v21 = &_os_log_default;
        v20 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v21, v20, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }
      }

      return 1;
    }

    else
    {
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v18 = v19;
        v17 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v6 = v18;
          v7 = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&_mh_execute_header, v6, v7, " created skywalk rx thread\n", v16, 2u);
        }
      }

      else if (!v19)
      {
        v15 = &_os_log_default;
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v39, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
        }
      }

      if ((ot::Posix::create_pcie_error_listener(ot::Posix::errorCb, ot::Posix::chipResettingCb, ot::Posix::driverMetricsCb) & 1) == 0)
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v12 = v13;
          v11 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v4 = v12;
            v5 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_impl(&_mh_execute_header, v4, v5, " Event Listener failed\n", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
        }
      }

      return v36;
    }
  }
}

void ot::Posix::HdlcInterface::airship_close(uint64_t a1)
{
  if (gPciStatus == 3 || gPciStatus == 2)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v10, "airship_close", gPciStatus);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s, Already Closed Airship channel gPciStatus=[%d]\n", v10, 0x12u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
    }
  }

  else
  {
    gPciStatus = 3;
    if (*(a1 + 16))
    {
      v2 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v8, "airship_close");
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s, Closing interface...\n", v8, 0xCu);
        }
      }

      else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
      }

      airship_ch_interface_close();
      airship_ch_interface_destroy();
      *(a1 + 16) = 0;
    }

    v1 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v1 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v6, "airship_close", gPciStatus);
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s, Closed Airship channel gPciStatus=[%d]\n", v6, 0x12u);
      }
    }

    else if (!v1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
    }
  }
}

void ot::Posix::HdlcInterface::skywalk_close(ot::Posix::HdlcInterface *this)
{
  gPciStatus = 3;
  ot::Posix::HdlcInterface::close_channel(this);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v3, gPciStatus);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " Closing Skywalk channel gPciStatus=%d\n", v3, 8u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v2, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v2, 0x16u);
  }
}

uint64_t ot::Posix::HdlcInterface::ForkPty(ot::Posix::HdlcInterface *this, const ot::Url::Url *a2)
{
  v30 = this;
  v29 = -1;
  v28 = -1;
  v27 = -1;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v16 = type;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&_mh_execute_header, log, v16, "Skywalk::ForkPty: \n", v23, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
  }

  memset(&__b, 0, sizeof(__b));
  cfmakeraw(&__b);
  __b.c_cflag = 51968;
  v28 = forkpty(&v29, 0, &__b, 0);
  if (v28 == -1)
  {
    v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    if (v22)
    {
      v14 = v22 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp";
    }

    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "ForkPty", v14, 936, v2);
    handle_daemon_exit();
    exit(5);
  }

  if (v28)
  {
    v27 = fcntl(v29, 3);
    if (v27 == -1)
    {
      v18 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      if (v18)
      {
        v11 = v18 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp";
      }

      v7 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "ForkPty", v11, 966, v7);
      handle_daemon_exit();
      exit(5);
    }

    v27 = fcntl(v29, 4, v27 | 0x1000004u);
    if (v27 == -1)
    {
      v17 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      if (v17)
      {
        v10 = v17 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp";
      }

      v8 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "ForkPty", v10, 967, v8);
      handle_daemon_exit();
      exit(5);
    }
  }

  else
  {
    bzero(__file, 0x108uLL);
    v21 = 1;
    __file[0] = ot::Url::Url::GetPath(v30);
    for (i = 0; ; __file[v3] = i)
    {
      v13 = 0;
      if (v21 < 0x21)
      {
        i = ot::Url::Url::GetValue(v30, "forkpty-arg", i);
        v13 = i != 0;
      }

      if (!v13)
      {
        break;
      }

      v3 = v21++;
    }

    if (v21 >= 0x21)
    {
      v4 = otExitCodeToString(2);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", 2, "ForkPty", 959, "Too many arguments!", v4);
      handle_daemon_exit();
      exit(2);
    }

    __file[v21] = 0;
    v5 = execvp(__file[0], __file);
    v27 = v5;
    if (v5 == -1)
    {
      v19 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      if (v19)
      {
        v12 = v19 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp";
      }

      v6 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "ForkPty", v12, 962, v6);
      handle_daemon_exit();
      exit(5);
    }
  }

  return v29;
}

uint64_t ot::Url::Url::GetPath(ot::Url::Url *this)
{
  return *(this + 1);
}

{
  return ot::Url::Url::GetPath(this);
}

void ot::Posix::HdlcInterface::HandleHdlcFrame(uint64_t result, int a2)
{
  if (*(result + 8) && *(result + 24))
  {
    if (a2)
    {
      ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(*(result + 24));
      v2 = otThreadErrorToString(a2);
      otLogWarnPlat("Error decoding hdlc frame: %s", v2);
    }

    else
    {
      (*(result + 8))(*(result + 16));
    }
  }
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(uint64_t a1)
{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, 0);
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
  result = ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, v1);
  *a1 = result;
  *(a1 + 8) = a1 + 8202 - *a1;
  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(a1);
}

uint64_t ot::Posix::HdlcInterface::ResetConnection(ot::Posix::HdlcInterface *this)
{
  v10 = this;
  v9 = 0;
  v8 = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "Skywalk::ResetConnection:\n", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  usleep(0x1E8480u);
  return v9;
}

void ot::Posix::HdlcInterface::airship_print_pkt_bytes(ot::Posix::HdlcInterface *this, unsigned __int8 *a2)
{
  v4 = a2;
  bzero(v8, 0xBB8uLL);
  for (i = 0; i < v4; ++i)
  {
    snprintf(&v8[3 * i], 0xBB8uLL, " %02X", *(this + i));
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_4_0_8_32(v7, v4, v8);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " *****Airship Read Bytes****** len[%u] 0x[%s]", v7, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_2_4_0_8_32(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void ot::Posix::handleChipResettingCb(ot::Posix *this)
{
  v1 = "com.apple.wpantund.ncp";
  v2 = "default";
  v3 = "handleChipResettingCb";
  v14 = 0;
  pthread_mutex_lock(&lock);
  ot::Posix::HdlcInterface::airship_close(thread_ctx);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  gPciStatus = 2;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v12 = logging_obg;
    v11 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v18, v3, gPciStatus);
      _os_log_impl(&_mh_execute_header, v12, v11, "%s: PCIe Igor gPciStatus=%d\n", v18, 0x12u);
    }
  }

  else if (!logging_obg)
  {
    v10 = &_os_log_default;
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v17, v1, v2);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
    }
  }

  pthread_mutex_unlock(&lock);
  v8 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v8 && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    v7 = v8;
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v16, v3);
      _os_log_error_impl(&_mh_execute_header, v7, v6, "%s, daemon restart and chip reset exit now", v16, 0xCu);
    }
  }

  else if (!v8)
  {
    oslog = &_os_log_default;
    v4 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v15, v1, v2);
      _os_log_error_impl(&_mh_execute_header, oslog, v4, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
    }
  }

  persist_host_reset_dueto_rcp(1, 0);
}

uint64_t ot::Posix::HdlcInterface::airship_open_rings(unsigned __int16 *a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v35, "airship_open_rings");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Airship Open Rings...\n", v35, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
  }

  *(a1 + 2) = airship_ch_interface_create();
  if (*(a1 + 2))
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v31, "airship_open_rings", *(a1 + 3));
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_create() created Successfully with Interface ID:%d ...\n", v31, 0x12u);
      }
    }

    else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
    }

    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v29, "airship_open_rings");
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Register PCIE Listener Callback ...\n", v29, 0xCu);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
    }

    ot::Posix::register_pcie_error_listener(a1);
    v9 = airship_ch_interface_open();
    if (v9)
    {
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_4_0(v27, v9);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "airship_ch_interface_open() for command failed - returned 0x%08x!\n", v27, 8u);
        }
      }

      else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }

      ot::Posix::HdlcInterface::airship_close(a1);
      v15 = 0;
    }

    else
    {
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v25, "airship_open_rings");
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_open() Opened Successfully.\n", v25, 0xCu);
        }
      }

      else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
      }

      v6 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v6 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v23, "airship_open_rings");
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Retrieving ring sizes....\n", v23, 0xCu);
        }
      }

      else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v22, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
      }

      ring_sizes = airship_ch_interface_get_ring_sizes();
      if (ring_sizes)
      {
        v4 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_2_8_32_4_0(v21, "airship_open_rings", ring_sizes);
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_get_ring_sizes() returned 0x%08x!\n", v21, 0x12u);
          }
        }

        else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
        }

        v15 = 0;
      }

      else
      {
        v3 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v19, "airship_open_rings", *a1, *(a1 + 1));
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: TX: %u * %u\n", v19, 0x18u);
          }
        }

        else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v18, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v18, 0x16u);
        }

        v2 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v17, "airship_open_rings", a1[1], *(a1 + 2));
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: RX: %u * %u\n", v17, 0x18u);
          }
        }

        else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v16, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v16, 0x16u);
        }

        v15 = 1;
      }
    }
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v33, "airship_open_rings");
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_create() failed!\n", v33, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ot::Posix::HdlcInterface::airship_read_thread(ot::Posix::HdlcInterface *this, void *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v8, "airship_read_thread");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Read Thread,\n ", v8, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }

  while (!gPciStatus)
  {
    bzero(recv_pkt_loop, 0x4B0uLL);
    recv_pkt_len_loop_airship = 1200;
    buf_index = buf_index % 10;
    if (airship_ch_interface_read())
    {
      recv_pkt_len_loop_airship = 0;
      if (++readFailCount > 0xAu)
      {
        return 0;
      }

      usleep(0x3E8u);
    }
  }

  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v6, "airship_read_thread", gPciStatus);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: exits due to PCI failure,gPciStatus=%d\n ", v6, 0x12u);
    }
  }

  else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  return 0;
}

void ot::Posix::register_pcie_error_listener(uint64_t a1)
{
  if (ot::Posix::register_pcie_error_listener(apple_pcie_ipc_ctx *)::once_token != -1)
  {
    dispatch_once(&ot::Posix::register_pcie_error_listener(apple_pcie_ipc_ctx *)::once_token, &__block_literal_global_15);
  }

  if (eventQueue)
  {
    airship_ch_interface_set_queue();
    airship_ch_interface_set_stop_handler();
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v3, "register_pcie_error_listener");
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Event Queue creation failed!\n", v3, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v2, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v2, 0x16u);
    }
  }
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t ot::Posix::HdlcInterface::airship_read(ot::Posix::HdlcInterface *this, unsigned __int8 *a2, unint64_t *a3)
{
  bzero(this, 0x4B0uLL);
  *a2 = 1200;
  airship_ch_interface_read();
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v7, "airship_read", -1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s, read failure. return =%d\n", v7, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }

  return printf("%s: read failure. return: 0x%08x\n", "airship_read", -1);
}

void ot::Posix::HdlcInterface::print_pkt_bytes(ot::Posix::HdlcInterface *this, unsigned __int8 *a2)
{
  bzero(v8, 0xBB8uLL);
  for (i = 0; i < a2; ++i)
  {
    snprintf(&v8[3 * i], 0xBB8uLL, " %02X", *(this + i));
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_0_8_32(v7, a2, v8);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " *****Skywalk Read Bytes****** len[%llu] 0x[%s]", v7, 0x16u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_2_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t ot::Posix::HdlcInterface::get_uuid(ot::Posix::HdlcInterface *this, char *a2, unsigned __int8 (*a3)[16])
{
  if (this && a2)
  {
    printf("retrieving uuid for %s\n", this);
    v8 = IOServiceMatching("AppleConvergedIPCInterface");
    if (v8)
    {
      value = CFStringCreateWithCString(kCFAllocatorDefault, this, 0x600u);
      if (value)
      {
        CFDictionarySetValue(v8, @"ACIPCInterfaceProtocol", value);
        CFRelease(value);
        entry = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
        if (entry)
        {
          theString = IORegistryEntrySearchCFProperty(entry, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
          if (theString)
          {
            in = CFStringGetCStringPtr(theString, 0x600u);
            printf("protocol: %s, uuidstr: %s\n", this, in);
            uuid_parse(in, a2);
            CFRelease(theString);
            IOObjectRelease(entry);
            return 0;
          }

          else
          {
            printf("no IOSkywalkNexusUUID property\n");
            return -1;
          }
        }

        else
        {
          printf("no matching service found\n");
          return -1;
        }
      }

      else
      {
        printf("failed to create stringRef\n");
        return -1;
      }
    }

    else
    {
      printf("could not create matching dictionary\n");
      return -1;
    }
  }

  else
  {
    printf("%s: invalid argument\n", "get_uuid");
    return -1;
  }
}

void ot::Posix::HdlcInterface::close_channel(ot::Posix::HdlcInterface *this)
{
  v23 = &ot::Posix::g_zgb_channel_data;
  if (unk_10052D8F0 != -1)
  {
    close(*(v23 + 2));
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v21 = logging_obg;
      v20 = 1;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = v21;
        type = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&_mh_execute_header, log, type, " closed sw_kq_write\n", v19, 2u);
      }
    }

    else if (!logging_obg)
    {
      v18 = &_os_log_default;
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }

    *(v23 + 2) = -1;
  }

  if (*(v23 + 3) != -1)
  {
    close(*(v23 + 3));
    v16 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v16 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v15 = v16;
      v14 = 1;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v3 = v15;
        v4 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_impl(&_mh_execute_header, v3, v4, " closed sw_kq_read\n", v13, 2u);
      }
    }

    else if (!v16)
    {
      v12 = &_os_log_default;
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v12, v11, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
      }
    }

    *(v23 + 3) = -1;
  }

  if (*v23)
  {
    os_channel_destroy();
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = v10;
      v8 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v1 = oslog;
        v2 = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_impl(&_mh_execute_header, v1, v2, " closed sk_channel\n", v7, 2u);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
    }

    *v23 = 0;
  }
}

uint64_t ot::Posix::HdlcInterface::start_channel(ot::Posix::HdlcInterface *this, const char *a2, unsigned __int8 (*a3)[16])
{
  v89 = this;
  v88 = &ot::Posix::g_zgb_channel_data;
  v87 = -1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v103[0] = 0;
  v103[1] = 0;
  if (!this)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v80 = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = v80;
        v20 = type;
        __os_log_helper_16_0_0(v78);
        _os_log_impl(&_mh_execute_header, log, v20, "failed opening Skywalk channel- Invalid input\n", v78, 2u);
      }
    }

    else if (!logging_obg)
    {
      v77 = &_os_log_default;
      v76 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v102, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v77, v76, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v102, 0x16u);
      }
    }

    return -1;
  }

  if ((ot::Posix::HdlcInterface::get_uuid(v89, v103, a3) & 0x80000000) != 0)
  {
    v75 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v75 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v74 = v75;
      v73 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v101, v89);
        _os_log_impl(&_mh_execute_header, v74, v73, " failed to get uuid for %s channel\n", v101, 0xCu);
      }
    }

    else if (!v75)
    {
      v72 = &_os_log_default;
      v71 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v100, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v72, v71, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v100, 0x16u);
      }
    }

    return -1;
  }

  v85 = os_channel_create();
  if (!v85)
  {
    v70 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v70 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v69 = v70;
      v68 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v17 = v69;
        v18 = v68;
        __os_log_helper_16_0_0(v67);
        _os_log_impl(&_mh_execute_header, v17, v18, " failed to create channel\n", v67, 2u);
      }
    }

    else if (!v70)
    {
      v66 = &_os_log_default;
      v65 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v99, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v66, v65, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v99, 0x16u);
      }
    }

LABEL_91:
    is_the_mask_enabled = log_get_logging_obg("com.apple.threadradiod", "default");
    v24 = is_the_mask_enabled;
    if (is_the_mask_enabled && (is_the_mask_enabled = syslog_is_the_mask_enabled(6), (is_the_mask_enabled & 1) != 0))
    {
      v23 = v24;
      v22 = OS_LOG_TYPE_INFO;
      is_the_mask_enabled = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (is_the_mask_enabled)
      {
        v5 = v23;
        v6 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_impl(&_mh_execute_header, v5, v6, " failed to create channel", v21, 2u);
      }
    }

    else if (!v24)
    {
      is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (is_the_mask_enabled)
      {
        __os_log_helper_16_2_2_8_32_8_32(v91, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v91, 0x16u);
      }
    }

    ot::Posix::HdlcInterface::close_channel(is_the_mask_enabled);
    return v87;
  }

  *v88 = v85;
  v82 = os_channel_attr_create();
  if (v82)
  {
    if (!os_channel_read_attr())
    {
      v64 = 0;
      v63 = 0;
      v62 = 0;
      os_channel_attr_get();
      os_channel_attr_get();
      os_channel_attr_get();
      v61 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v61 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v60 = v61;
        v59 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_3_8_0_8_0_8_0(v98, v64, v63, v62);
          _os_log_impl(&_mh_execute_header, v60, v59, " skywalk channel slotlen: %llu, rxslots: %llu, txslots: %llu\n", v98, 0x20u);
        }
      }

      else if (!v61)
      {
        v58 = &_os_log_default;
        v57 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v97, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v58, v57, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v97, 0x16u);
        }
      }
    }

    os_channel_attr_destroy();
  }

  v84 = kqueue();
  if (v84 == -1)
  {
    v56 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v56 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v55 = v56;
      v54 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v15 = v55;
        v16 = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_impl(&_mh_execute_header, v15, v16, " failed to creatre read kqueue\n", v53, 2u);
      }
    }

    else if (!v56)
    {
      v52 = &_os_log_default;
      v51 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v96, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v52, v51, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v96, 0x16u);
      }
    }

    goto LABEL_91;
  }

  *(v88 + 2) = v84;
  p_changelist = &changelist;
  changelist.ident = os_channel_get_fd();
  changelist.filter = -2;
  changelist.flags = 5;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v84, &changelist, 1, 0, 0, 0) == -1)
  {
    v49 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v49 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v48 = v49;
      v47 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v13 = v48;
        v14 = v47;
        __os_log_helper_16_0_0(v46);
        _os_log_impl(&_mh_execute_header, v13, v14, " write kevent registration failed\n", v46, 2u);
      }
    }

    else if (!v49)
    {
      v45 = &_os_log_default;
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v95, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v45, v44, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v95, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v83 = kqueue();
  if (v83 == -1)
  {
    v43 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v43 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v42 = v43;
      v41 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v11 = v42;
        v12 = v41;
        __os_log_helper_16_0_0(v40);
        _os_log_impl(&_mh_execute_header, v11, v12, " failed to create read kqueue\n", v40, 2u);
      }
    }

    else if (!v43)
    {
      v39 = &_os_log_default;
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v94, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v39, v38, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v94, 0x16u);
      }
    }

    goto LABEL_91;
  }

  *(v88 + 3) = v83;
  v37 = &changelist;
  changelist.ident = os_channel_get_fd();
  changelist.filter = -1;
  changelist.flags = 5;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v83, &changelist, 1, 0, 0, 0) == -1)
  {
    v36 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v36 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = v36;
      v34 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v9 = oslog;
        v10 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_impl(&_mh_execute_header, v9, v10, " read kevent registration failed\n", v33, 2u);
      }
    }

    else if (!v36)
    {
      v32 = &_os_log_default;
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v93, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v93, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v30 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v30 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v29 = v30;
    v28 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v7 = v29;
      v8 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&_mh_execute_header, v7, v8, " channel created successfully\n", v27, 2u);
    }
  }

  else if (!v30)
  {
    v26 = &_os_log_default;
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v92, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v26, v25, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v92, 0x16u);
    }
  }

  return 0;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t ot::Posix::HdlcInterface::write_channel(ot::Posix::HdlcInterface *this, size_t a2)
{
  v58 = this;
  v57 = a2;
  v56 = 0;
  v55 = &ot::Posix::g_zgb_channel_data;
  if (ot::Posix::g_zgb_channel_data && *(v55 + 2) != -1)
  {
    v48 = *v55;
    v47 = *(v55 + 2);
    v46 = 0;
    v43 = os_channel_ring_id();
    v42 = os_channel_tx_ring();
    for (i = os_channel_get_next_slot(); !i; i = os_channel_get_next_slot())
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v39 = logging_obg;
        v38 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v11 = v39;
          v12 = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_impl(&_mh_execute_header, v11, v12, " waiting for slot to become available", v37, 2u);
        }
      }

      else if (!logging_obg)
      {
        v36 = &_os_log_default;
        v35 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v9 = v36;
          v10 = v35;
          __os_log_helper_16_2_2_8_32_8_32(v63, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v63, 0x16u);
        }
      }

      v46 = kevent(v47, 0, 0, &eventlist, 1, 0);
      if (v46 == -1 || eventlist.filter != -2)
      {
        v33 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v33 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v32 = v33;
          v31 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v7 = v32;
            v8 = v31;
            __os_log_helper_16_0_0(v30);
            _os_log_impl(&_mh_execute_header, v7, v8, " kevent error on sw_kq_write\n", v30, 2u);
          }
        }

        else if (!v33)
        {
          v29 = &_os_log_default;
          v28 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v62, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v29, v28, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v62, 0x16u);
          }
        }

        return 7;
      }
    }

    v27 = v44;
    if (v44 >= v57)
    {
      memcpy(v45, v58, v57);
      v44 = v57;
      os_channel_set_slot_properties();
      os_channel_advance_slot();
      v46 = os_channel_sync();
      if (v46 == -1)
      {
        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v19 = v20;
          v18 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v3 = v19;
            v4 = v18;
            __os_log_helper_16_0_0(v17);
            _os_log_impl(&_mh_execute_header, v3, v4, " os_channel_sync tx failed\n", v17, 2u);
          }
        }

        else if (!v20)
        {
          v16 = &_os_log_default;
          v15 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v60, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v16, v15, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v60, 0x16u);
          }
        }

        return 7;
      }

      else
      {
        return v56;
      }
    }

    else
    {
      v26 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v26 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v26;
        v24 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v5 = oslog;
          v6 = v24;
          __os_log_helper_16_0_0(v23);
          _os_log_impl(&_mh_execute_header, v5, v6, " slot_len", v23, 2u);
        }
      }

      else if (!v26)
      {
        v22 = &_os_log_default;
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v61, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v22, v21, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v61, 0x16u);
        }
      }

      return 7;
    }
  }

  else
  {
    v54 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v54 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v53 = v54;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        log = v53;
        v14 = type;
        __os_log_helper_16_0_0(v51);
        _os_log_impl(&_mh_execute_header, log, v14, " invalid ch_data\n", v51, 2u);
      }
    }

    else if (!v54)
    {
      v50 = &_os_log_default;
      v49 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v64, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v50, v49, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v64, 0x16u);
      }
    }

    return 7;
  }
}

uint64_t ot::Posix::HdlcInterface::read_channel(ot::Posix::HdlcInterface *this, uint64_t *a2, unint64_t *a3)
{
  v41 = this;
  v40 = a2;
  v39 = &ot::Posix::g_zgb_channel_data;
  if (ot::Posix::g_zgb_channel_data && *(v39 + 3) != -1)
  {
    v32 = *v39;
    v31 = *(v39 + 3);
    v30 = 0;
    v29 = os_channel_ring_id();
    v28 = os_channel_rx_ring();
    next_slot = 0;
    v30 = kevent(v31, 0, 0, &eventlist, 1, 0);
    if (v30 != -1 && eventlist.filter == -1)
    {
      next_slot = os_channel_get_next_slot();
      if (next_slot)
      {
        LOWORD(__n[0]) = v26;
        if (v26 <= *v40)
        {
          memcpy(v41, v27, LOWORD(__n[0]));
          *v40 = LOWORD(__n[0]);
          os_channel_advance_slot();
          os_channel_sync();
          return 0;
        }

        else
        {
          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            v17 = logging_obg;
            v16 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_0_2_4_0_8_0(v45, LOWORD(__n[0]), *v40);
              _os_log_impl(&_mh_execute_header, v17, v16, " slot has more data, slotLen: %u, size_in: %zu\n", v45, 0x12u);
            }
          }

          else if (!logging_obg)
          {
            v15 = &_os_log_default;
            v14 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
            }
          }

          return -1;
        }
      }

      else
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v12 = v13;
          v11 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v4 = v12;
            v5 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_impl(&_mh_execute_header, v4, v5, " empty slot\n\n", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
        }

        return -1;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v23;
        v21 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v6 = oslog;
          v7 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_impl(&_mh_execute_header, v6, v7, " invalid filter\n", v20, 2u);
        }
      }

      else if (!v23)
      {
        *&__n[1] = &_os_log_default;
        HIBYTE(__n[0]) = 16;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v46, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, *&__n[1], HIBYTE(__n[0]), "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
        }
      }

      return -1;
    }
  }

  else
  {
    v38 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v38 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v37 = v38;
      v36 = 1;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        log = v37;
        type = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_impl(&_mh_execute_header, log, type, " invalid ch_data\n", v35, 2u);
      }
    }

    else if (!v38)
    {
      v34 = &_os_log_default;
      v33 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v47, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v34, v33, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
      }
    }

    return -1;
  }
}

uint64_t __os_log_helper_16_0_2_4_0_8_0(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t ot::Posix::create_pcie_error_listener(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  if (a1 && v44 && v43)
  {
    if (ot::Posix::pcie_driver_init(0, a2))
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v35 = logging_obg;
        v34 = 1;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v8 = v35;
          v9 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_impl(&_mh_execute_header, v8, v9, " PCIe Initialization failed\n ", v33, 2u);
        }
      }

      else if (!logging_obg)
      {
        v32 = &_os_log_default;
        v31 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v49, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v49, 0x16u);
        }
      }

      v46 = 0;
    }

    else
    {
      v23 = _NSConcreteStackBlock;
      v24 = 0x40000000;
      v25 = 0;
      v26 = ___ZN2ot5Posix26create_pcie_error_listenerEPFvPKcbEPFvS2_PbEPFv27AppleBluetoothStatisticTypeyE_block_invoke;
      v27 = &__block_descriptor_tmp_13;
      v28 = v45;
      v29 = v44;
      v30 = &v23;
      fatalErrorCb = v45;
      v22 = AppleConvergedTransportRegisterEventBlockQ();
      if (v22)
      {
        v21 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v21 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          oslog = v21;
          v19 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v6 = oslog;
            v7 = v19;
            __os_log_helper_16_0_0(v18);
            _os_log_impl(&_mh_execute_header, v6, v7, "PCIe registered event listener successfully\n", v18, 2u);
          }
        }

        else if (!v21)
        {
          v17 = &_os_log_default;
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v48, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v48, 0x16u);
          }
        }

        v46 = v22 & 1;
      }

      else
      {
        v15 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v14 = v15;
          v13 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v4 = v14;
            v5 = v13;
            __os_log_helper_16_0_0(v12);
            _os_log_impl(&_mh_execute_header, v4, v5, "PCIe failed to register event listener\n", v12, 2u);
          }
        }

        else if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v47, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
        }

        fatalErrorCb = 0;
        v46 = v22 & 1;
      }
    }
  }

  else
  {
    v42 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v42 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v41 = v42;
      v40 = 1;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        log = v41;
        type = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_impl(&_mh_execute_header, log, type, "PCIe Bad argument\n", v39, 2u);
      }
    }

    else if (!v42)
    {
      v38 = &_os_log_default;
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v50, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v38, v37, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v50, 0x16u);
      }
    }

    v46 = 0;
  }

  return v46 & 1;
}

uint64_t ot::Posix::pcie_driver_init(ot::Posix *this, const char *a2)
{
  if (ot::Posix::pcie_driver_init(char const*)::once_token != -1)
  {
    dispatch_once(&ot::Posix::pcie_driver_init(char const*)::once_token, &__block_literal_global_57);
  }

  if (eventQueue)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t ___ZN2ot5Posix26create_pcie_error_listenerEPFvPKcbEPFvS2_PbEPFv27AppleBluetoothStatisticTypeyE_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a1;
  if (a2)
  {
    if (v21 == 2)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = logging_obg;
        v10 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v5 = oslog;
          v6 = v10;
          __os_log_helper_16_0_0(v9);
          _os_log_impl(&_mh_execute_header, v5, v6, "PCIe detected controller is resetting", v9, 2u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
      }

      return (*(a1 + 40))(v20, &rx_route_suspended);
    }

    else
    {
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v24, v20);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PCIe Non-fatal event: %s\n", v24, 0xCu);
        }
      }

      else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
      }

      return (*(a1 + 32))(v20, 0);
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v16 = v17;
      v15 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v27, v20);
        _os_log_impl(&_mh_execute_header, v16, v15, "PCIe Fatal event: %s\n", v27, 0xCu);
      }
    }

    else if (!v17)
    {
      v14 = &_os_log_default;
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v14, v13, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }

    (*(a1 + 32))(v20, 1);
    rx_route_suspended = 1;
    return usleep(1000 * v19);
  }
}

void ot::Posix::errorCb(ot::Posix *this, const char *a2)
{
  v5 = a2;
  v2 = pthread_mutex_lock(&lock);
  gPciStatus = 3;
  ot::Posix::HdlcInterface::skywalk_close(v2);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  pthread_mutex_unlock(&lock);
  if (v5)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v10, "errorCb", this, gPciStatus, v5 & 1);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: PCIe Igor errorCb Update Firmware reset counters reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v10, 0x22u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
    }

    persist_host_reset_dueto_rcp(1, this);
  }

  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v8, "errorCb", this, gPciStatus, v5 & 1);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: PCIe Igor errorCb reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v8, 0x22u);
    }
  }

  else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void ot::Posix::driverMetricsCb(int a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "PCIe Igor driverMetricsCb\n", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
  }
}

uint64_t ot::Posix::chipResettingCb(ot::Posix *this, const char *a2, BOOL *a3)
{
  v40 = &v53;
  v36 = "com.apple.wpantund.ncp";
  v37 = "default";
  v38 = "chipResettingCb";
  v57 = this;
  v56 = a2;
  v39 = 0;
  v55 = 0;
  v3 = pthread_mutex_lock(&lock);
  ot::Posix::HdlcInterface::skywalk_close(v3);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  gPciStatus = 2;
  if ((*v56 & 1) == 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v5 = v40;
    *(v40 + 3) = logging_obg;
    if (*(v5 + 3) && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v6 = v40;
      *(v40 + 2) = *(v40 + 3);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v6[2], OS_LOG_TYPE_INFO))
      {
        log = *(v40 + 2);
        *v34 = type;
        v7 = *(v40 + 6);
        v8 = **(v40 + 5) & 1;
        buf = v63;
        __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v63, v38, v7, gPciStatus, v8);
        _os_log_impl(&_mh_execute_header, log, v34[0], "%s: PCIe Igor chipResettingCb Update Firmware reset counters reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v63, 0x22u);
      }
    }

    else if (!*(v40 + 3))
    {
      v9 = v40;
      *v40 = &_os_log_default;
      v52 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v30 = *v40;
        *v31 = v52;
        v32 = v62;
        __os_log_helper_16_2_2_8_32_8_32(v62, v36, v37);
        _os_log_error_impl(&_mh_execute_header, v30, v52, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v62, 0x16u);
      }
    }

    persist_host_reset_dueto_rcp(1, *(v40 + 6));
  }

  v51 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v51 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = v51;
    v49 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v27 = oslog;
      *v28 = v49;
      v10 = *(v40 + 6);
      v11 = **(v40 + 5) & 1;
      v29 = v61;
      __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v61, v38, v10, gPciStatus, v11);
      _os_log_impl(&_mh_execute_header, oslog, v49, "%s: PCIe Igor chipResettingCb reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v61, 0x22u);
    }
  }

  else if (!v51)
  {
    v48 = &_os_log_default;
    v47 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = v48;
      *v25 = v47;
      v26 = v60;
      __os_log_helper_16_2_2_8_32_8_32(v60, v36, v37);
      _os_log_error_impl(&_mh_execute_header, v48, v47, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v60, 0x16u);
    }
  }

  v12 = pthread_mutex_unlock(&lock);
  result = ot::Posix::HdlcInterface::isPCIeSkywalk(v12);
  if (result)
  {
    v46 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v46 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v45 = v46;
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v21 = v45;
        *v22 = v44;
        v23 = v59;
        __os_log_helper_16_2_1_8_32(v59, v38);
        _os_log_error_impl(&_mh_execute_header, v45, v44, "%s: DieNow daemon restart triggered due to chip reset", v59, 0xCu);
      }
    }

    else if (!v46)
    {
      v43 = &_os_log_default;
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v18 = v43;
        *v19 = v42;
        v20 = v58;
        __os_log_helper_16_2_2_8_32_8_32(v58, v36, v37);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v58, 0x16u);
      }
    }

    gSystemDieNow = 1;
    usleep(0xC350u);
    v41 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    if (v41)
    {
      v17 = v41 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp";
    }

    v15 = v17;
    v16 = 4;
    v14 = otExitCodeToString(4);
    otLogCritPlat("%s() at %s:%d: %s", "chipResettingCb", v17, 1777, v14);
    handle_daemon_exit();
    exit(v16);
  }

  return result;
}

uint64_t ot::Posix::HdlcInterface::isPCIeSkywalk(ot::Posix::HdlcInterface *this)
{
  v81 = -536870212;
  notification = 0;
  v75 = 0xFFFF;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v78 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v78);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v80 = IOServiceMatching("AppleConvergedIPCInterface");
  if (v80)
  {
    v71 = CFStringCreateWithCString(kCFAllocatorDefault, "tsi", 0x600u);
    if (v71)
    {
      CFDictionarySetValue(v80, @"ACIPCInterfaceProtocol", v71);
      CFRelease(v71);
      v81 = IOServiceAddMatchingNotification(v78, "IOServiceFirstMatch", v80, ot::Posix::IOServiceObjectFoundCB, Current, &notification);
      if (v81)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v59 = logging_obg;
          v58 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_1_4_0(v95, v81);
            _os_log_impl(&_mh_execute_header, v59, v58, "PCIe IOServiceAddMatchingNotification returned 0x%08x", v95, 8u);
          }
        }

        else if (!logging_obg)
        {
          v57 = &_os_log_default;
          v56 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v94, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v57, v56, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v94, 0x16u);
          }
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v78);
      }

      else
      {
        while (1)
        {
          v72 = IOIteratorNext(notification);
          v12 = 0;
          if (!v72)
          {
            v12 = v75 != kCFRunLoopRunTimedOut;
          }

          if (!v12)
          {
            break;
          }

          v55 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v55 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            v54 = v55;
            v53 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v10 = v54;
              v11 = v53;
              __os_log_helper_16_0_0(v52);
              _os_log_impl(&_mh_execute_header, v10, v11, "PCIe ACIPCInterface not found, waiting for it to appear", v52, 2u);
            }
          }

          else if (!v55)
          {
            v51 = &_os_log_default;
            v50 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v93, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, v51, v50, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v93, 0x16u);
            }
          }

          v75 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v78);
        IOObjectRelease(notification);
        if (v72 && (v75 == kCFRunLoopRunStopped || v75 == 0xFFFF))
        {
          v49 = IORegistryEntrySearchCFProperty(v72, "IOService", @"ACIPCInterfaceTransport", kCFAllocatorDefault, 1u);
          if (v49)
          {
            buffer[0] = 0;
            buffer[1] = 0;
            if (CFStringGetCString(v49, buffer, 16, 0x600u) != 0)
            {
              v41 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v41 && (syslog_is_the_mask_enabled(6) & 1) != 0)
              {
                v40 = v41;
                v39 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  __os_log_helper_16_2_1_8_32(v90, buffer);
                  _os_log_impl(&_mh_execute_header, v40, v39, "PCIe ACIPCInterfaceTransport %s\n", v90, 0xCu);
                }
              }

              else if (!v41)
              {
                v38 = &_os_log_default;
                v37 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_2_8_32_8_32(v89, "com.apple.wpantund.ncp", "default");
                  _os_log_error_impl(&_mh_execute_header, v38, v37, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v89, 0x16u);
                }
              }

              if (!strcmp(buffer, "skywalk"))
              {
                while (v73 < 25)
                {
                  v36 = IORegistryEntrySearchCFProperty(v72, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
                  if (v36)
                  {
                    v35 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v35 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                    {
                      v34 = v35;
                      v33 = OS_LOG_TYPE_INFO;
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                      {
                        v6 = v34;
                        v7 = v33;
                        __os_log_helper_16_0_0(v32);
                        _os_log_impl(&_mh_execute_header, v6, v7, "PCIe ACIPCInterfaceTransport + IOSkywalkNexusUUID found\n", v32, 2u);
                      }
                    }

                    else if (!v35)
                    {
                      v31 = &_os_log_default;
                      v30 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        __os_log_helper_16_2_2_8_32_8_32(v88, "com.apple.wpantund.ncp", "default");
                        _os_log_error_impl(&_mh_execute_header, v31, v30, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v88, 0x16u);
                      }
                    }

                    CFRelease(v36);
                    v74 = 1;
                    v29 = 0;
                    usleep(0xF4240u);
                    break;
                  }

                  usleep(0x30D40u);
                  v28 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v28 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                  {
                    v27 = v28;
                    v26 = OS_LOG_TYPE_INFO;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                    {
                      __os_log_helper_16_0_1_4_0(v87, v73);
                      _os_log_impl(&_mh_execute_header, v27, v26, "PCIe Retry: %d - trying to find ACIPCInterfaceTransport + IOSkywalkNexusUUID\n", v87, 8u);
                    }
                  }

                  else if (!v28)
                  {
                    v25 = &_os_log_default;
                    v24 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      __os_log_helper_16_2_2_8_32_8_32(v86, "com.apple.wpantund.ncp", "default");
                      _os_log_error_impl(&_mh_execute_header, v25, v24, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v86, 0x16u);
                    }
                  }

                  ++v73;
                }
              }

              else
              {
                v23 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                {
                  oslog = v23;
                  v21 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    v4 = oslog;
                    v5 = v21;
                    __os_log_helper_16_0_0(v20);
                    _os_log_impl(&_mh_execute_header, v4, v5, "PCIe ACIPCInterfaceTransport is not skywalk\n", v20, 2u);
                  }
                }

                else if (!v23)
                {
                  v19 = &_os_log_default;
                  v18 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_2_2_8_32_8_32(v85, "com.apple.wpantund.ncp", "default");
                    _os_log_error_impl(&_mh_execute_header, v19, v18, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v85, 0x16u);
                  }
                }
              }
            }

            else
            {
              v47 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v47 && (syslog_is_the_mask_enabled(6) & 1) != 0)
              {
                v46 = v47;
                v45 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v8 = v46;
                  v9 = v45;
                  __os_log_helper_16_0_0(v44);
                  _os_log_impl(&_mh_execute_header, v8, v9, "PCIe failed to get cstring property", v44, 2u);
                }
              }

              else if (!v47)
              {
                v43 = &_os_log_default;
                v42 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_2_8_32_8_32(v91, "com.apple.wpantund.ncp", "default");
                  _os_log_error_impl(&_mh_execute_header, v43, v42, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v91, 0x16u);
                }
              }
            }

            CFRelease(v49);
          }

          else
          {
            v17 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
            {
              v16 = v17;
              v15 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v2 = v16;
                v3 = v15;
                __os_log_helper_16_0_0(v14);
                _os_log_impl(&_mh_execute_header, v2, v3, "PCIe ACIPCInterface found, ACIPCInterfaceTransport property not found", v14, 2u);
              }
            }

            else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v84, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v84, 0x16u);
            }
          }
        }

        else
        {
          v13 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_0_1_4_0(v83, v75);
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PCIe ACIPCInterface not found after 5 second -- runLoopResult = 0x%02x", v83, 8u);
            }
          }

          else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v82, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v82, 0x16u);
          }
        }
      }
    }

    else
    {
      v65 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v65 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v64 = v65;
        v63 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v97, "isPCIeSkywalk");
          _os_log_impl(&_mh_execute_header, v64, v63, "%s: PCIe failed to create stringRef", v97, 0xCu);
        }
      }

      else if (!v65)
      {
        v62 = &_os_log_default;
        v61 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v96, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v62, v61, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v96, 0x16u);
        }
      }

      CFRelease(v80);
    }
  }

  else
  {
    v70 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v70 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v69 = v70;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v99, "isPCIeSkywalk");
        _os_log_impl(&_mh_execute_header, v69, type, "%s: PCIe could not create matching dictionary", v99, 0xCu);
      }
    }

    else if (!v70)
    {
      v67 = &_os_log_default;
      v66 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v98, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v67, v66, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v98, 0x16u);
      }
    }
  }

  if (v72)
  {
    IOObjectRelease(v72);
  }

  return v74 & 1;
}

void ot::Posix::IOServiceObjectFoundCB(ot::Posix *this, void *a2)
{
  v10 = this;
  v9 = a2;
  v8 = this;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "ACIPCInterface found, releasing waiting thread", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  CFRunLoopStop(v8);
}

uint64_t ot::Posix::HdlcInterface::skywalk_read_thread(ot::Posix::HdlcInterface *this, void *a2)
{
  v13 = this;
  channel = -1;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v10 = logging_obg;
    v9 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&_mh_execute_header, log, type, " In skywalk_read_thread Read Thread,\n ", v8, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
  }

  while (!gPciStatus)
  {
    bzero(recv_pkt_loop, 0x4B0uLL);
    recv_pkt_len_loop = 1200;
    buf_index = buf_index % 10;
    channel = ot::Posix::HdlcInterface::read_channel(&recv_pkt_loop[1200 * buf_index], &recv_pkt_len_loop, v2);
    if (channel)
    {
      recv_pkt_len_loop = 0;
      if (++readFailCount > 0xAu)
      {
        return 0;
      }

      usleep(0x3E8u);
    }

    if (recv_pkt_len_loop)
    {
      readFailCount = 0;
      v6 = pthread_mutex_lock(&hdlc_lock) == 0;
      ot::Hdlc::Decoder::Decode(ot::Posix::gk_HdlcDecoder, &recv_pkt_loop[1200 * buf_index], recv_pkt_len_loop);
      if (v6)
      {
        pthread_mutex_unlock(&hdlc_lock);
      }

      write(dword_1004E59BC, "x", 1uLL);
    }
  }

  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v16, gPciStatus);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "skywalk_read_thread exits due to PCI failure,gPciStatus=%d\n ", v16, 8u);
    }
  }

  else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
  }

  return 0;
}

void ot::Posix::HdlcInterface::skywalk_read(ot::Posix::HdlcInterface *this, unsigned __int8 *a2, unint64_t *a3)
{
  bzero(this, 0x4B0uLL);
  *a2 = 1200;
  channel = ot::Posix::HdlcInterface::read_channel(this, a2, v3);
  if (channel)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v12, channel);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " read failure. return =%d\n", v12, 8u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
    }

    printf("%s: read failure. return: 0x%08x\n", "skywalk_read", channel);
  }

  printf("received %zu bytes: ", *a2);
  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v10, *a2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, " skywalk_read: bytes=%zu ", v10, 0xCu);
    }
  }

  else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
  }

  ot::Posix::HdlcInterface::print_pkt_bytes(this, *a2);
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void ___ZN2ot5PosixL28register_pcie_error_listenerEP18apple_pcie_ipc_ctx_block_invoke_2(id a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v2 = logging_obg;
  if (logging_obg && (logging_obg = syslog_is_the_mask_enabled(6), (logging_obg & 1) != 0))
  {
    logging_obg = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
    if (logging_obg)
    {
      __os_log_helper_16_2_1_8_32(v4, "register_pcie_error_listener_block_invoke_2");
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s, Invoke Chip Resetting Callback handler\n", v4, 0xCu);
    }
  }

  else if (!v2)
  {
    logging_obg = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (logging_obg)
    {
      __os_log_helper_16_2_2_8_32_8_32(v3, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v3, 0x16u);
    }
  }

  ot::Posix::handleChipResettingCb(logging_obg);
}

uint64_t ot::Spinel::FrameWritePointer::FrameWritePointer(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Spinel::FrameBuffer<(unsigned short)8192>::Clear(uint64_t result)
{
  *result = result + 10;
  *(result + 8) = 0x2000;
  return result;
}

{
  return ot::Spinel::FrameBuffer<(unsigned short)8192>::Clear(result);
}

void ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError()
{
  ;
}

{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(uint64_t a1, unsigned __int16 a2)
{
  v7 = 3;
  v6 = *(a1 + 8208);
  if (v6 + 4 + a2 <= ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(a1, a1 + 10))
  {
    ot::Lib::Utils::LittleEndian::WriteUint16(a2, (*(a1 + 8208) + 2), v2);
    *a1 = ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, v3);
    *(a1 + 8) = a1 + 8202 - *a1;
    return 0;
  }

  return v7;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, a2);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = *(a1 + 8208);
  return v3 + 4 + ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(a1, a2);
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, a2);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(uint64_t a1, uint64_t a2)
{
  return a2 + 0x2000;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(a1, a2);
}

uint64_t ot::Lib::Utils::LittleEndian::WriteUint16(uint64_t this, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = this;
  return this;
}

{
  return ot::Lib::Utils::LittleEndian::WriteUint16(this, a2, a3);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::Lib::Utils::LittleEndian::ReadUint16((*(a1 + 8208) + 2), a2);
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(a1, a2);
}

uint64_t ot::Lib::Utils::LittleEndian::ReadUint16(ot::Lib::Utils::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*this | (*(this + 1) << 8));
}

{
  return ot::Lib::Utils::LittleEndian::ReadUint16(this, a2);
}

uint64_t ot::Posix::bpf_new(ot::Posix *this)
{
  v4 = -1;
  for (i = 0; ; ++i)
  {
    snprintf(__str, 0x100uLL, "/dev/bpf%d", i);
    v4 = open(__str, 2, 0);
    if ((v4 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 16)
    {
      goto LABEL_6;
    }
  }

  v3 = 900;
  ioctl(v4, 0x8004427BuLL, &v3);
LABEL_6:
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v7, v4);
      _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface bpf_new for fd=%d", v7, 8u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }

  return v4;
}

uint64_t ot::Posix::BackboneIPv6Interface::get_read(ot::Posix::BackboneIPv6Interface *this, unsigned __int8 *a2, uint64_t a3)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  v33 = -1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  if (*(this + 38))
  {
    if (v34 >= *(this + 24))
    {
      if (*(this + 11))
      {
        if (*(this + 24))
        {
          v32 = *(this + 11);
          v31 = *(this + 11) + *(v32 + 16);
          v30 = v31 + 14;
          v33 = *(v32 + 12) - 14;
          bcopy((v31 + 14), v35, v33);
        }

        else
        {
          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            v12 = logging_obg;
            v11 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
            {
              v4 = v12;
              v5 = v11;
              __os_log_helper_16_0_0(v10);
              _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface get_read mReadBufferLen is 0", v10, 2u);
            }
          }

          else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
          }
        }
      }

      else
      {
        v18 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          oslog = v18;
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v42, *(this + 24));
            _os_log_error_impl(&_mh_execute_header, oslog, v16, "BackboneIPv6Interface get_read mReadBuffer is NULL while mReadBufferLen=%d", v42, 8u);
          }
        }

        else if (!v18)
        {
          v15 = &_os_log_default;
          v14 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
          }
        }

        *(this + 24) = 0;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v22 = v23;
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_2_4_0_4_0(v44, v34, *(this + 24));
          _os_log_error_impl(&_mh_execute_header, v22, v21, "BackboneIPv6Interface get_read failed as len(%d) < mReadBufferLen(%d)", v44, 0xEu);
        }
      }

      else if (!v23)
      {
        v20 = &_os_log_default;
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
        }
      }
    }

    if (*(this + 11))
    {
      *(this + 24) = 0;
      if (*(this + 11))
      {
        operator delete();
      }

      *(this + 11) = 0;
    }

    else
    {
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_3_4_0_4_0_4_0(v39, v33, *(this + 24), *(this + 38) & 1);
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface get_read mReadBuffer is NULL here lenToRet=%d mReadBufferLen=%d mBackboneIsConnected=%d", v39, 0x14u);
        }
      }

      else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }
    }

    return v33;
  }

  else
  {
    v29 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v29 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v28 = v29;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        v7 = type;
        __os_log_helper_16_0_0(v26);
        _os_log_error_impl(&_mh_execute_header, log, v7, "BackboneIPv6Interface::get_read Backbone is not connected", v26, 2u);
      }
    }

    else if (!v29)
    {
      v25 = &_os_log_default;
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v45, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v25, v24, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v45, 0x16u);
      }
    }

    return -1;
  }
}

uint64_t __os_log_helper_16_0_3_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

uint64_t ot::Posix::BackboneIPv6Interface::check_valid_read(ot::Posix::BackboneIPv6Interface *this, unsigned __int8 *a2, int a3, in6_addr *a4, in6_addr *a5)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  if (a2)
  {
    v13 = v17;
    v12 = &v17[*(v17 + 8)];
    if (v12)
    {
      if (_OSSwapInt16(*(v12 + 6)) == 34525)
      {
        v11 = v12 + 14;
        if (v12 == -14)
        {
          v19 = 0;
        }

        else
        {
          v10 = _OSSwapInt16(*(v11 + 2));
          if (v10 <= 0x500u)
          {
            memset(__b, 0, sizeof(__b));
            inet_ntop(30, v11 + 8, __b, 0x2Eu);
            memset(v23, 0, sizeof(v23));
            inet_ntop(30, v11 + 24, v23, 0x2Eu);
            memset(v22, 0, sizeof(v22));
            inet_ntop(30, v11 + 24, v22, 0x2Eu);
            std::string::basic_string[abi:dn200100]<0>(&v9, v22);
            v8 = v11 + 24;
            ot::Ip6::Address::SetBytes(&v7, (v11 + 24));
            if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(&v7))
            {
              *v15 = *(v11 + 8);
              *v14 = *(v11 + 24);
              logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
              if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
              {
                if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_4_8_32_8_32_4_0_8_0(v21, __b, v23, v10, 8);
                  _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "BackboneIPv6Interface: check_valid_read read ipv6 src:%s to dst:%s ipv6 packet len(%d) ipv6 hdr len(%lu)", v21, 0x26u);
                }
              }

              else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
              }

              v19 = 1;
            }

            else
            {
              v19 = 0;
            }

            std::string::~string(&v9);
          }

          else
          {
            v19 = 0;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

std::string *std::string::basic_string[abi:dn200100]<0>(std::string *a1, const std::string::value_type *a2)
{
  std::string::basic_string[abi:dn200100]<0>(a1, a2);
  return a1;
}

{
  std::allocator<char>::allocator[abi:dn200100](a1);
  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1083: assertion __s != nullptr failed: basic_string(const char*) detected nullptr\n");
  }

  v2 = std::char_traits<char>::length[abi:dn200100](a2);
  std::string::__init(a1, a2, v2);
  return a1;
}

__n128 ot::Ip6::Address::SetBytes(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_32_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t ot::Posix::BackboneIPv6Interface::can_read(ot::Posix::BackboneIPv6Interface *this, in6_addr *a2, in6_addr *a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v18 = 0;
  if (std::string::size[abi:dn200100](this + 8))
  {
    if (*(this + 38) & 1) != 0 && (*(this + 39) & 1) != 0 && (*(this + 40))
    {
      if ((*(this + 20) & 0x80000000) != 0 || (*(this + 19) & 0x80000000) != 0 || (*(this + 18) & 0x80000000) != 0)
      {
        v23 = v18 & 1;
      }

      else if (ioctl(*(this + 19), 0x40044266uLL, &v19) < 0)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_4_0(v35, v19);
            _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "BackboneInterface can_read return here as blen(%d) < 0", v35, 8u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
        }

        v23 = v18 & 1;
      }

      else if (*(this + 11) || *(this + 24) > 0)
      {
        v12 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v12 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_4_0(v33, *(this + 24));
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BackbineInterface can_read return here as mReadBufferLen(%d) already", v33, 8u);
          }
        }

        else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
        }

        v23 = 1;
      }

      else
      {
        if (*(this + 11))
        {
          v11 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v11 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(v31, *(this + 24));
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BackboneInterface Read buffer is not NULL which is unexpected mReadBufferLen(%d)", v31, 8u);
            }
          }

          else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
          }

          if (*(this + 11))
          {
            operator delete();
          }

          *(this + 11) = 0;
          *(this + 24) = 0;
        }

        if (*(this + 24))
        {
          v10 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(v29, *(this + 24));
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneInterface Read buffer Len is not NULL which is unexpected mReadBufferLen(%d)", v29, 8u);
            }
          }

          else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
          }

          *(this + 24) = 0;
          if (*(this + 11))
          {
            operator delete();
          }
        }

        *(this + 11) = malloc_type_malloc(v19, 0x100004077774924uLL);
        if (*(this + 11))
        {
          *(this + 24) = read(*(this + 19), *(this + 11), v19);
          if (*(this + 24) > 0 && ot::Posix::BackboneIPv6Interface::check_valid_read(this, *(this + 11), *(this + 24), v21, v20))
          {
            if (*(this + 24) < 1295)
            {
              v23 = 1;
              return v23 & 1;
            }

            v3 = log_get_logging_obg("com.apple.threadradiod", "default");
            v8 = v3;
            if (v3 && (syslog_is_the_mask_enabled(7) & 1) != 0)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_1_4_0(v25, v19);
                _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneInterface read buffer of len (%d) > max size supported (1295)", v25, 8u);
              }
            }

            else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
            }
          }
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v9 && (syslog_is_the_mask_enabled(7) & 1) != 0)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_4_0(v27, v19);
              _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BackboneInterface can_read cannot create buffer of len (%d) to read", v27, 8u);
            }
          }

          else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
          }
        }

        if (*(this + 11))
        {
          free(*(this + 11));
          *(this + 11) = 0;
        }

        *(this + 24) = 0;
        v23 = 0;
      }
    }

    else
    {
      v23 = v18 & 1;
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v16 = v17;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        log = v16;
        v6 = type;
        __os_log_helper_16_0_0(v14);
        _os_log_debug_impl(&_mh_execute_header, log, v6, "BackboneInterface can_read return here as backbone interface name is not initialized yet", v14, 2u);
      }
    }

    else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }

    v23 = v18 & 1;
  }

  return v23 & 1;
}

uint64_t std::string::size[abi:dn200100](uint64_t a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    return std::string::__get_long_size[abi:dn200100](a1);
  }

  else
  {
    return std::string::__get_short_size[abi:dn200100](a1);
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::cleanupReadBuffer(uint64_t this)
{
  if (*(this + 88))
  {
    operator delete();
  }

  *(this + 96) = 0;
  return this;
}

uint64_t ot::Posix::BackboneIPv6Interface::update_backbone_ethernet_address(ot::Posix::BackboneIPv6Interface *this)
{
  v33 = this;
  if (std::string::empty[abi:dn200100](this + 8))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v31 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v31;
        v9 = type;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&_mh_execute_header, log, v9, "BackboneIPv6Interface::update_backbone_ethernet_address backbone interface name is nullptr", v29, 2u);
      }
    }

    else if (!logging_obg)
    {
      v28 = &_os_log_default;
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v28, v27, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  v26 = 0;
  i = 0;
  if (getifaddrs(&v26) < 0)
  {
    v24 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v24 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v23 = v24;
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v6 = v23;
        v7 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "BackboneIPv6Interface::update_backbone_ethernet_address Couldnt getifaddrs", v21, 2u);
      }
    }

    else if (!v24)
    {
      v20 = &_os_log_default;
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  for (i = v26; ; i = i->ifa_next)
  {
    if (!i)
    {
      v34 = 0;
      return v34 & 1;
    }

    if (!i->ifa_name)
    {
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v17 = v18;
        v16 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v4 = v17;
          v5 = v16;
          __os_log_helper_16_0_0(v15);
          _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface update_backbone_ethernet_address ifa_name is nullptr", v15, 2u);
        }
      }

      else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
      }

      continue;
    }

    std::string::c_str[abi:dn200100](this + 1);
    if (strcmp(v1, i->ifa_name) || i->ifa_addr->sa_family != 18)
    {
      continue;
    }

    ifa_addr = i->ifa_addr;
    if (!ifa_addr)
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v40, i->ifa_name);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address ifname=%s sockaddr is null", v40, 0xCu);
        }
      }

      else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v39, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
      }

      continue;
    }

    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v38, i->ifa_name, ifa_addr->sa_data[2]);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address ifname=%s ether_type=%d", v38, 0x12u);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v37, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v37, 0x16u);
    }

    if (ifa_addr->sa_data[2] == 6)
    {
      break;
    }
  }

  v2 = &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6];
  *(this + 8) = *v2;
  *(this + 18) = *(v2 + 4);
  freeifaddrs(v26);
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(v36, *(this + 32), *(this + 33), *(this + 34), *(this + 35), *(this + 36), *(this + 37));
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address,the backbone interface HW address is %02x:%02x:%02x:%02x:%02x:%02x ", v36, 0x26u);
    }
  }

  else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v35, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v35, 0x16u);
  }

  v34 = 1;
  return v34 & 1;
}

uint64_t __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = 0;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  *(result + 26) = 0;
  *(result + 27) = 4;
  *(result + 28) = a6;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a7;
  return result;
}

void ot::Posix::BackboneIPv6Interface::send_bmlr_packet(ot::Posix::BackboneIPv6Interface *this, char *a2, size_t a3)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  if (*(this + 38))
  {
    v22 = -31011;
    v21 = 0;
    bzero(v39, 0x800uLL);
    v20 = v39;
    bcopy(&ot::Posix::bmlr_broadcast_ether, v39, 6uLL);
    bcopy(this + 32, v40, 6uLL);
    v40[3] = _OSSwapInt16(0x86DDu);
    bzero(&v38, 0x12uLL);
    v38.sa_len = 18;
    v38.sa_family = 27;
    bcopy(v29, v41, v28);
    v19 = v41;
    v41[7] = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v17 = logging_obg;
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v37, v19[7], v28);
        _os_log_debug_impl(&_mh_execute_header, v17, v16, "BackboneIPv6Interface[BMLR]: Hop limit in the ipv6 header=%d len=%d", v37, 0xEu);
      }
    }

    else if (!logging_obg)
    {
      v15 = &_os_log_default;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
      }
    }

    if (*(this + 20) == -1)
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13 && (syslog_is_the_mask_enabled(7) & 1) != 0)
      {
        oslog = v13;
        v11 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v5 = oslog;
          v6 = v11;
          __os_log_helper_16_0_0(v10);
          _os_log_debug_impl(&_mh_execute_header, v5, v6, "BackboneIPv6Interface[BMLR]: send_bmlr_packet failed as mBackboneInterfaceNdrvFd = -1", v10, 2u);
        }
      }

      else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v35, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v35, 0x16u);
      }
    }

    else
    {
      v21 = sendto(*(this + 20), v39, v28 + 14, 0, &v38, 0x12u);
      if (v21 == v28 + 14)
      {
        v8 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v8 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_4_0(v32, v21, v28, *(this + 20));
            _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneIPv6Interface[BMLR]: send_bmlr_packet sendSize=%zu len=%zu, fd:%d", v32, 0x1Cu);
          }
        }

        else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v31, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v31, 0x16u);
        }
      }

      else
      {
        v9 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v3 = __error();
            v4 = strerror(*v3);
            __os_log_helper_16_2_4_8_32_8_0_8_0_4_0(v34, v4, v21, v28, *(this + 20));
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface[BMLR]: send_bmlr_packet sendto failed %s sendSize=%zu len=%zu fd:%d", v34, 0x26u);
          }
        }

        else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
        }
      }
    }
  }

  else
  {
    v27 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v27 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v26 = v27;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v43, v28);
        _os_log_error_impl(&_mh_execute_header, v26, type, "BackboneIPv6Interface[BMLR]: Backbone is not connected, cannot send BMLR packet len:%d", v43, 8u);
      }
    }

    else if (!v27)
    {
      v24 = &_os_log_default;
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v24, v23, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }
    }
  }
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

void ot::Posix::BackboneIPv6Interface::send_packet(ot::Posix::BackboneIPv6Interface *this, char *a2, size_t a3)
{
  v35 = this;
  v34 = a2;
  v33 = a3;
  if (*(this + 38))
  {
    v25 = -31011;
    v24 = 0;
    bzero(v46, 0x800uLL);
    v27 = v46;
    bcopy(&ot::Posix::broadcast_ether, v46, 6uLL);
    bcopy(this + 32, v47, 6uLL);
    v47[3] = _OSSwapInt16(0x86DDu);
    bzero(&v45, 0x12uLL);
    v45.sa_len = 18;
    v45.sa_family = 27;
    bcopy(v34, v48, v33);
    v26 = v48;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v22 = logging_obg;
      v21 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v44, v26[7], v33);
        _os_log_debug_impl(&_mh_execute_header, v22, v21, "BackboneInterface send_packet Hop limit in the ipv6 header=%d len=%d", v44, 0xEu);
      }
    }

    else if (!logging_obg)
    {
      v20 = &_os_log_default;
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    if (v26[7] > 1u)
    {
      --v26[7];
      if (*(this + 20) == -1)
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          oslog = v13;
          v11 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v5 = oslog;
            v6 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_debug_impl(&_mh_execute_header, v5, v6, "BackboneInterface send_packet failed as mBackboneInterfaceNdrvFd = -1", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }
      }

      else
      {
        v24 = sendto(*(this + 20), v46, v33 + 14, 0, &v45, 0x12u);
        if (v24 == v33 + 14)
        {
          v8 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v8 && (syslog_is_the_mask_enabled(7) & 1) != 0)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_2_8_0_8_0(v37, v24, v33);
              _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneInterface send_packet sent packet sendSize=%zu len=%zu", v37, 0x16u);
            }
          }

          else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
          }
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v3 = __error();
              v4 = strerror(*v3);
              __os_log_helper_16_2_3_8_32_8_0_8_0(v39, v4, v24, v33);
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneInterface send_packet return here as sendto failed %s sendSize=%zu len=%zu", v39, 0x20u);
            }
          }

          else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
          }
        }
      }
    }

    else
    {
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(7) & 1) != 0)
      {
        v17 = v18;
        v16 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v42, v26[7], v33);
          _os_log_debug_impl(&_mh_execute_header, v17, v16, "BackboneInterface drop the packet as Hop limit in the ipv6 header=%d len=%d", v42, 0xEu);
        }
      }

      else if (!v18)
      {
        v15 = &_os_log_default;
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
        }
      }
    }
  }

  else
  {
    v32 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v32 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v31 = v32;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v50, v33);
        _os_log_error_impl(&_mh_execute_header, v31, type, "BackboneIPv6Interface is not connected, cannot send_packet len:%d", v50, 8u);
      }
    }

    else if (!v32)
    {
      v29 = &_os_log_default;
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v49, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v29, v28, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v49, 0x16u);
      }
    }
  }
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void ot::Posix::BackboneIPv6Interface::Update(uint64_t a1, _DWORD *a2)
{
  v19 = a1;
  v18 = a2;
  if (*(a1 + 38) & 1) != 0 && (*(a1 + 39) & 1) != 0 && (*(a1 + 40))
  {
    if ((*(a1 + 80) & 0x80000000) == 0 && (*(a1 + 76) & 0x80000000) == 0 && (*(a1 + 72) & 0x80000000) == 0)
    {
      if ((*(a1 + 76) & 0x80000000) != 0)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          oslog = logging_obg;
          v9 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
          {
            v2 = oslog;
            v3 = v9;
            __os_log_helper_16_0_0(v8);
            _os_log_error_impl(&_mh_execute_header, v2, v3, "BackboneIPv6Interface::Update Backbone interface BPF fd is invalid. Cannot update fd set", v8, 2u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
        }
      }

      else
      {
        v21 = *(a1 + 76);
        v20 = v18;
        v23 = v21;
        v22 = v18;
        if (__darwin_check_fd_set_overflow(v21, v18, 0))
        {
          v20[v21 / 0x20uLL] |= 1 << (v21 % 0x20uLL);
        }

        if (v18[96] < *(a1 + 76))
        {
          v4 = *(a1 + 76);
        }

        else
        {
          v4 = v18[96];
        }

        v18[96] = v4;
      }
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v16 = v17;
      v15 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::Update Backbone interface is not connected. Cannot update fd set", v14, 2u);
      }
    }

    else if (!v17)
    {
      v13 = &_os_log_default;
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v13, v12, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::ndrv_socket(ot::Posix::BackboneIPv6Interface *this, const char *a2)
{
  v21 = this;
  v20 = a2;
  v19 = -1;
  *(this + 20) = socket(27, 3, 0);
  if ((*(this + 20) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v17 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        v3 = strerror(*v2);
        __os_log_helper_16_2_1_8_32(v30, v3);
        _os_log_error_impl(&_mh_execute_header, v17, type, "BackboneIPv6Interface ndrv socket() failed %s", v30, 0xCu);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
      }
    }

    return *(this + 20);
  }

  v13 = 1;
  v19 = setsockopt(*(this + 20), 0xFFFF, 4, &v13, 4u);
  if (v19 < 0)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        __os_log_helper_16_2_1_8_32(v28, v5);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:ndrv_socket() setsockopt(SO_REUSEADDR) failed: %s\n", v28, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v27, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v27, 0x16u);
    }

LABEL_20:
    close(*(this + 20));
    *(this + 20) = -1;
    return -1;
  }

  if ((ot::Posix::set_nonblocking(*(this + 20)) & 0x80000000) != 0)
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v26, *(this + 20));
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:ndrv_socket() Non-Blocking failed interface=%d", v26, 8u);
      }
    }

    else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
    }

    goto LABEL_20;
  }

  strlcpy(v31.sa_data, v20, 0x10uLL);
  v31.sa_len = 18;
  v31.sa_family = 27;
  if (bind(*(this + 20), &v31, 0x12u) < 0)
  {
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        __os_log_helper_16_2_1_8_32(v24, v7);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface ndrv  bind() failed %s", v24, 0xCu);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }
  }

  return *(this + 20);
}

uint64_t ot::Posix::set_nonblocking(ot::Posix *this)
{
  v20 = "com.apple.wpantund.ncp";
  v21 = "default";
  v33 = this;
  v32 = 0;
  v32 = fcntl(this, 3, 0);
  if (v32 == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v30 = logging_obg;
      v29 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        *type = v29;
        v16 = v33;
        v1 = __error();
        v2 = strerror(*v1);
        buf = v38;
        __os_log_helper_16_2_2_4_0_8_32(v38, v16, v2);
        _os_log_error_impl(&_mh_execute_header, log, type[0], "BackboneIPv6Interface:set_nonblocking F_GETFL failed fd=%d err:%s", buf, 0x12u);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = oslog;
        *v14 = v27;
        v15 = v37;
        __os_log_helper_16_2_2_8_32_8_32(v37, v20, v21);
        _os_log_error_impl(&_mh_execute_header, v13, v14[0], "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
      }
    }

    return -1;
  }

  if ((v32 & 4) == 0)
  {
    v32 |= 4u;
    if (fcntl(v33, 4, v32) == -1)
    {
      v26 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v26 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v25 = v26;
        v24 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v10 = v25;
          *v11 = v24;
          v9 = v33;
          v3 = __error();
          v4 = strerror(*v3);
          v12 = v36;
          __os_log_helper_16_2_2_4_0_8_32(v36, v9, v4);
          _os_log_error_impl(&_mh_execute_header, v10, v11[0], "BackboneIPv6Interface:set_nonblocking O_NONBLOCK failed fd=%d err:%s", v12, 0x12u);
        }
      }

      else if (!v26)
      {
        v23 = &_os_log_default;
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v6 = v23;
          *v7 = v22;
          v8 = v35;
          __os_log_helper_16_2_2_8_32_8_32(v35, v20, v21);
          _os_log_error_impl(&_mh_execute_header, v6, v7[0], "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
        }
      }

      return -1;
    }
  }

  return 0;
}

uint64_t ot::Posix::BackboneIPv6Interface::cleanup(ot::Posix::BackboneIPv6Interface *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(v5, *(this + 18), *(this + 19), *(this + 20), *(this + 40) & 1, *(this + 38) & 1, *(this + 39) & 1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BackboneIPv6Interface cleanup backboneFd=%d BpfFd=%d ndrvFd=%d mCheckAndInitComplete=%d mBackboneIsConnected=%d mBBRStatePrimary=%d", v5, 0x26u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v4, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v4, 0x16u);
  }

  if (*(this + 20))
  {
    close(*(this + 20));
    *(this + 20) = -1;
  }

  if (*(this + 19))
  {
    close(*(this + 19));
    *(this + 19) = -1;
  }

  if (*(this + 18))
  {
    close(*(this + 18));
    *(this + 18) = -1;
  }

  if (*(this + 11))
  {
    operator delete();
  }

  *(this + 40) = 0;
  return 1;
}

void ot::Posix::BackboneIPv6Interface::updateBBRstate(ot::Posix::BackboneIPv6Interface *this, char a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_2_4_0_4_0(v6, a2 & 1, *(this + 39) & 1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::updateBBRstate isPrimary=%d mBBRStatePrimary=%d", v6, 0xEu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  if ((*(this + 39) & 1) != 0 || (a2 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      ot::Posix::BackboneIPv6Interface::cleanup(this);
    }
  }

  else
  {
    ot::Posix::BackboneIPv6Interface::checkAndInitialize(this);
  }

  *(this + 39) = a2 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::checkAndInitialize(ot::Posix::BackboneIPv6Interface *this)
{
  v27 = this;
  if ((*(this + 40) & 1) == 1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v25 = logging_obg;
      v24 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v34, *(this + 40) & 1);
        _os_log_impl(&_mh_execute_header, v25, v24, "BackboneIPv6Interface::checkAndInitialize=%d", v34, 8u);
      }
    }

    else if (!logging_obg)
    {
      v23 = &_os_log_default;
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v23, v22, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
      }
    }

    v28 = 1;
  }

  else if ((*(this + 38) & 1) == 1)
  {
    if (ot::Posix::BackboneIPv6Interface::initializeBackboneInterface(this))
    {
      *(this + 40) = 1;
      v15 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v14 = v15;
        v13 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_3_4_0_4_0_4_0(v31, *(this + 18), *(this + 19), *(this + 20));
          _os_log_impl(&_mh_execute_header, v14, v13, "BackboneIPv6Interface::checkAndInitialize Backbone link successfully initialized backboneFd=%d BpfFd=%d ndrvFd=%d", v31, 0x14u);
        }
      }

      else if (!v15)
      {
        v12 = &_os_log_default;
        v11 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v12, v11, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
        }
      }

      v28 = 1;
    }

    else
    {
      *(this + 40) = 0;
      v21 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v21 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        oslog = v21;
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v4 = oslog;
          v5 = v19;
          __os_log_helper_16_0_0(v18);
          _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface::checkAndInitialize initializeBackboneInterface failed", v18, 2u);
        }
      }

      else if (!v21)
      {
        v17 = &_os_log_default;
        v16 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
        }
      }

      v28 = 0;
    }
  }

  else
  {
    *(this + 40) = 0;
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v9 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v2 = v9;
        v3 = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_error_impl(&_mh_execute_header, v2, v3, "BackboneIPv6Interface::checkAndInitialize Cannot initialize as backbone link is not connected", v7, 2u);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::IsActive(ot::Posix::BackboneIPv6Interface *this)
{
  v3 = 1;
  if ((*(this + 39) & 1) == 0 || (*(this + 40) & 1) == 0 || (*(this + 38) & 1) == 0 || !std::string::size[abi:dn200100](this + 8))
  {
    v3 = 0;
  }

  if ((*(this + 18) & 0x80000000) != 0 || (*(this + 19) & 0x80000000) != 0 || (*(this + 20) & 0x80000000) != 0)
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::initializeBackboneInterface(ot::Posix::BackboneIPv6Interface *this)
{
  v63 = this;
  v62 = -30578;
  v61 = -1;
  if (!std::string::size[abi:dn200100](this + 8))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v59 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v59;
        v20 = type;
        __os_log_helper_16_0_0(v57);
        _os_log_error_impl(&_mh_execute_header, log, v20, "Unable to initialize as Backbone interface name cannot be got", v57, 2u);
      }
    }

    else if (!logging_obg)
    {
      v56 = &_os_log_default;
      v55 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v81, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v56, v55, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v81, 0x16u);
      }
    }

    v64 = 0;
    return v64 & 1;
  }

  v1 = socket(30, 2, 0);
  v61 = v1;
  if ((v1 & 0x80000000) != 0)
  {
    v54 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v54 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v53 = v54;
      v52 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        __os_log_helper_16_0_1_4_0(v80, *v2);
        _os_log_error_impl(&_mh_execute_header, v53, v52, "BackboneIPv6Interface socket call failed for sk %d\n", v80, 8u);
      }
    }

    else if (!v54)
    {
      v51 = &_os_log_default;
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v79, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v51, v50, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v79, 0x16u);
      }
    }

LABEL_94:
    if (*(this + 18))
    {
      close(*(this + 18));
      *(this + 18) = -1;
    }

    if (*(this + 20))
    {
      close(*(this + 20));
      *(this + 20) = -1;
    }

    if (*(this + 19))
    {
      close(*(this + 19));
      *(this + 19) = -1;
    }

    v64 = 0;
    return v64 & 1;
  }

  *(this + 18) = v61;
  *(this + 19) = ot::Posix::bpf_new(v1);
  v49 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v49 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v48 = v49;
    v47 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v78, *(this + 19));
      _os_log_impl(&_mh_execute_header, v48, v47, "BackboneIPv6Interface bp_new fd=%d", v78, 8u);
    }
  }

  else if (!v49)
  {
    v46 = &_os_log_default;
    v45 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v77, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v46, v45, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v77, 0x16u);
    }
  }

  if ((*(this + 19) & 0x80000000) != 0)
  {
    v44 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v44 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v43 = v44;
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v18 = *(this + 19);
        v3 = __error();
        __os_log_helper_16_0_2_4_0_4_0(v76, v18, *v3);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "BackboneIPv6Interface no bpf devices mBackboneInterfaceBpfFd(%d) errno(%d)", v76, 0xEu);
      }
    }

    else if (!v44)
    {
      v41 = &_os_log_default;
      v40 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v75, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v41, v40, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v75, 0x16u);
      }
    }

    goto LABEL_94;
  }

  v17 = *(this + 19);
  std::string::c_str[abi:dn200100](this + 1);
  if ((ot::Posix::bpf_set_options(v17, v4, v5) & 0x80000000) != 0)
  {
    v39 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v39 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v38 = v39;
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v15 = v38;
        v16 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "BackboneIPv6Interface bpf attach failed", v36, 2u);
      }
    }

    else if (!v39)
    {
      v35 = &_os_log_default;
      v34 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v74, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v35, v34, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v74, 0x16u);
      }
    }

    goto LABEL_94;
  }

  v33 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v33 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v32 = v33;
    v31 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v73, *(this + 19));
      _os_log_impl(&_mh_execute_header, v32, v31, "BackboneIPv6Interface bpf_set_options fd=%d", v73, 8u);
    }
  }

  else if (!v33)
  {
    v30 = &_os_log_default;
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v72, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v30, v29, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v72, 0x16u);
    }
  }

  if ((ot::Posix::bpf_set_filter(*(this + 19)) & 0x80000000) != 0)
  {
    v28 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v28 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v27 = v28;
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v13 = v27;
        v14 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "BackboneIPv6Interface bpf set filter failed", v25, 2u);
      }
    }

    else if (!v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v71, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v71, 0x16u);
    }

    goto LABEL_94;
  }

  v24 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v24 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v11 = *(this + 19);
      std::string::c_str[abi:dn200100](this + 1);
      v12 = v6;
      std::string::c_str[abi:dn200100](this + 6);
      __os_log_helper_16_2_3_4_0_8_32_8_32(v70, v11, v12, v7);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "BackboneIPv6Interface bpf_set_filter fd=%d backbone interface name =%s thread interface name=%s", v70, 0x1Cu);
    }
  }

  else if (!v24 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v69, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v69, 0x16u);
  }

  std::string::c_str[abi:dn200100](this + 1);
  *(this + 20) = ot::Posix::BackboneIPv6Interface::ndrv_socket(this, v8);
  if ((*(this + 20) & 0x80000000) != 0)
  {
    v23 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        __os_log_helper_16_0_1_4_0(v68, *v9);
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface ndrv_socket call failed for mBackboneInterfaceNdrvFd %d\n", v68, 8u);
      }
    }

    else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v67, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v67, 0x16u);
    }

    *(this + 20) = -1;
    goto LABEL_94;
  }

  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v22 && (syslog_is_the_mask_enabled(7) & 1) != 0)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(v66, "initializeBackboneInterface", *(this + 19), *(this + 18), *(this + 20));
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: BackboneInterface fd set with backboneBpfFd(%d) and backboneInterfaceFd(%d) ndrvInterfaceFd(%d)", v66, 0x1Eu);
    }
  }

  else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v65, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v65, 0x16u);
  }

  v64 = 1;
  return v64 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::updateBackboneInterfaceInfo(ot::Posix::BackboneIPv6Interface *this, const char *a2, char a3, char a4)
{
  v25 = this;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    v20 = logging_obg;
    v19 = 16;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::updateBackboneInterfaceInfo", v18, 2u);
    }
  }

  else if (!logging_obg)
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }
  }

  if (v24)
  {
    std::string::basic_string[abi:dn200100]<0>(&v15, v24);
    std::string::operator=[abi:dn200100]((this + 8), &v15);
    std::string::~string(&v15);
    if (!ot::Posix::BackboneIPv6Interface::update_backbone_ethernet_address(this))
    {
      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v13 = v14;
        v12 = 16;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v5 = v13;
          v6 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_error_impl(&_mh_execute_header, v5, v6, "BackboneIPv6Interface::updateBackboneInterfaceInfo update_backbone_ethernet_address failed", v11, 2u);
        }
      }

      else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    std::string::clear[abi:dn200100](this + 1);
  }

  *(this + 38) = v23 & 1;
  if ((*(this + 39) & 1) == 1 && (*(this + 40) & 1) == 0)
  {
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_4_0_4_0(v27, *(this + 39) & 1, v23 & 1);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface::updateBackboneInterfaceInfo calling check & initialize state = %d, isConnected = %d", v27, 0xEu);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
    }

    ot::Posix::BackboneIPv6Interface::checkAndInitialize(this);
  }

  return 1;
}

void std::string::clear[abi:dn200100](uint64_t *a1)
{
  v7 = a1;
  v6 = std::string::size[abi:dn200100](a1);
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v1 = std::string::__get_long_pointer[abi:dn200100](a1);
    v5 = 0;
    std::char_traits<char>::assign[abi:dn200100](v1, &v5);
    std::string::__set_long_size[abi:dn200100](a1, 0);
  }

  else
  {
    std::string::__get_short_pointer[abi:dn200100](a1);
    v4 = 0;
    std::char_traits<char>::assign[abi:dn200100](v2, &v4);
    std::string::__set_short_size[abi:dn200100](a1, 0);
  }

  std::string::__annotate_shrink[abi:dn200100]();
}

uint64_t ot::Posix::BackboneIPv6Interface::subscribeMulticastAddress(ot::Posix::BackboneIPv6Interface *this, const in6_addr *a2)
{
  v19 = this;
  v18 = a2;
  in6_addr_to_string(&v17, a2);
  v11 = *(this + 18);
  std::string::c_str[abi:dn200100](this + 1);
  v10 = v2;
  std::string::c_str[abi:dn200100](&v17);
  if ((ot::Posix::set_multicast_for_interface(v11, 80, v10, v3, v4) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v15 = logging_obg;
      v14 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::subscribeMulticastAddress failed\n", v13, 2u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        std::string::c_str[abi:dn200100](&v17);
        __os_log_helper_16_2_1_8_32(v22, v5);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::subscribeMulticastAddress subscribed:%s on Backbone", v22, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
    }

    v20 = 1;
  }

  std::string::~string(&v17);
  return v20 & 1;
}

uint64_t ot::Posix::set_multicast_for_interface(ot::Posix *this, int a2, const char *a3, const char *a4, const char *a5)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = 0;
  if (a2 != 81 && a2 != 80)
  {
    return -1;
  }

  else
  {
    *&v25[24] = if_nametoindex(v28);
    v39 = *&v25[24];
    *&v25[16] = &v40;
    *v25 = 0;
    *&v25[8] = 0;
    v5 = gethostbyname2(v27, 30);
    v24 = v5;
    if (v5)
    {
      if (v24->h_length < 1)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v37, v24->h_length);
            _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface tmp->h_length [%d] is invalid \n", v37, 8u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
        }

        return -1;
      }

      else
      {
        inet_pton(30, v27, v25);
        v6 = *&v25[16];
        *(*&v25[16] + 8) = *v25;
        *(v6 + 20) = *&v25[12];
        *(*&v25[16] + 1) = 30;
        *(*&v25[16] + 2) = 0;
        *(*&v25[16] + 4) = 0;
        *(*&v25[16] + 24) = if_nametoindex(v28);
        **&v25[16] = 28;
        v7 = setsockopt(v30, 41, v29, &v39, 0x84u);
        v26 = v7;
        if (v7)
        {
          v18 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v8 = "MCAST_JOIN_GROUP";
              if (v29 != 80)
              {
                v8 = "MCAST_LEAVE_GROUP";
              }

              v13 = v8;
              v14 = *&v25[24];
              v9 = __error();
              v10 = strerror(*v9);
              __os_log_helper_16_2_4_8_32_4_0_8_32_4_0(v35, v13, v14, v10, v26);
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface setsockopt(%s) if_index %d failed, %s ret %d\n", v35, 0x22u);
            }
          }

          else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
          }
        }

        else
        {
          v17 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              if (v29 == 80)
              {
                v11 = "MCAST_JOIN_GROUP";
              }

              else
              {
                v11 = "MCAST_LEAVE_GROUP";
              }

              __os_log_helper_16_2_5_8_32_4_0_8_32_8_32_4_0(v33, v11, *&v25[24], v28, v27, v26);
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BackboneIPv6Interface setsockopt(%s) if_index %d ifname=%s group_name=%s succeeded, ret %d\n", v33, 0x2Cu);
            }
          }

          else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
          }
        }

        return v26;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v22 = v23;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          log = v22;
          v16 = type;
          __os_log_helper_16_0_0(v20);
          _os_log_error_impl(&_mh_execute_header, log, v16, "BackboneIPv6Interface tmp is NULL. Cannot convert group name to adddress\n", v20, 2u);
        }
      }

      else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }

      return -1;
    }
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::unSubscribeMulticastAddress(ot::Posix::BackboneIPv6Interface *this, const in6_addr *a2)
{
  v19 = this;
  v18 = a2;
  in6_addr_to_string(&v17, a2);
  v11 = *(this + 18);
  std::string::c_str[abi:dn200100](this + 1);
  v10 = v2;
  std::string::c_str[abi:dn200100](&v17);
  if ((ot::Posix::set_multicast_for_interface(v11, 81, v10, v3, v4) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v15 = logging_obg;
      v14 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::unSubscribeMulticastAddress failed\n", v13, 2u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        std::string::c_str[abi:dn200100](&v17);
        __os_log_helper_16_2_1_8_32(v22, v5);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::unSubscribeMulticastAddress unsubscribed:%s on Backbone", v22, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
    }

    v20 = 1;
  }

  std::string::~string(&v17);
  return v20 & 1;
}

uint64_t ot::Posix::bpf_set_options(ot::Posix *this, const char *a2, const char *a3)
{
  v29 = this;
  v28 = a2;
  v27 = 0;
  v24 = -1;
  strlcpy(__dst, a2, 0xFuLL);
  if (ioctl(v29, 0x8020426CuLL, __dst) < 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = __error();
        v4 = strerror(*v3);
        __os_log_helper_16_2_2_8_32_8_32(v41, v28, v4);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSETIF failed interface=%s err:%s", v41, 0x16u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044275uLL, &v27) < 0)
  {
    v22 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v22 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v17 = v28;
        v5 = __error();
        v6 = strerror(*v5);
        __os_log_helper_16_2_2_8_32_8_32(v39, v17, v6);
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSHDRCMPLT failed interface=%s err:%s", v39, 0x16u);
      }
    }

    else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044277uLL, &v27) < 0)
  {
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v21 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v16 = v28;
        v7 = __error();
        v8 = strerror(*v7);
        __os_log_helper_16_2_2_8_32_8_32(v37, v16, v8);
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSSEESENT failed interface=%s err:%s", v37, 0x16u);
      }
    }

    else if (!v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044270uLL, &v27) < 0)
  {
    v20 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v20 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v15 = v28;
        v9 = __error();
        v10 = strerror(*v9);
        __os_log_helper_16_2_2_8_32_8_32(v35, v15, v10);
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCIMMEDIATE failed interface=%s err:%s", v35, 0x16u);
      }
    }

    else if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
    }
  }

  else
  {
    v25 = 0;
    v26 = 1000;
    if (ioctl(v29, 0x8010426DuLL, &v25) == -1)
    {
      v24 = -1;
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v14 = v28;
          v11 = __error();
          v12 = strerror(*v11);
          __os_log_helper_16_2_2_8_32_8_32(v33, v14, v12);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSRTIMEOUT failed interface=%s err:%s", v33, 0x16u);
        }
      }

      else if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
      }
    }

    else if ((ot::Posix::set_nonblocking(v29) & 0x80000000) != 0)
    {
      v24 = -1;
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_32(v31, v28);
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options Non-Blocking failed interface=%s", v31, 0xCu);
        }
      }

      else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  if (v24 == -1 && v29)
  {
    close(v29);
  }

  return v24;
}

uint64_t ot::Posix::bpf_set_filter(ot::Posix *this)
{
  v4 = this;
  memcpy(__dst, "(", sizeof(__dst));
  v2 = 6;
  v3 = __dst;
  if (ioctl(v4, 0x80104267uLL, &v2) < 0)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t __os_log_helper_16_2_3_4_0_8_32_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

ot::Posix::BackboneIPv6Interface *ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface(ot::Posix::BackboneIPv6Interface *this)
{
  *this = off_1004C8F80;
  std::string::basic_string[abi:dn200100]((this + 8));
  std::string::basic_string[abi:dn200100]((this + 48));
  *(this + 18) = -1;
  *(this + 19) = -1;
  *(this + 20) = -1;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  std::string::clear[abi:dn200100](this + 1);
  result = this;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  return result;
}

{
  ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface(this);
  return this;
}

ot::Spinel::SpinelInterface *std::string::basic_string[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::string::basic_string[abi:dn200100](a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  std::allocator<char>::allocator[abi:dn200100](a1);
  std::string::__annotate_shrink[abi:dn200100]();
  return a1;
}

void ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(ot::Posix::BackboneIPv6Interface *this)
{
  *this = off_1004C8F80;
  stopNetworkMonitoringOnBackbone();
  if (*(this + 20))
  {
    close(*(this + 20));
    *(this + 20) = -1;
  }

  if (*(this + 19))
  {
    close(*(this + 19));
    *(this + 19) = -1;
  }

  if (*(this + 18))
  {
    close(*(this + 18));
    *(this + 18) = -1;
  }

  if (*(this + 11))
  {
    operator delete();
  }

  std::string::~string(this + 2);
  std::string::~string((this + 8));
}

{
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(this);
}

{
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(this);
  operator delete();
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_32_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_4_0_8_32_8_32_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

ot::Spinel::SpinelInterface *std::allocator<char>::allocator[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::allocator<char>::allocator[abi:dn200100](a1);
  return a1;
}

{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  return a1;
}

uint64_t std::string::__get_long_size[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 16) >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1983: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long size\n");
  }

  return *(a1 + 8);
}

uint64_t std::string::__get_short_size[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 23) >> 7)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1974: assertion !__rep_.__s.__is_long_ failed: String has to be short when trying to get the short size\n");
  }

  return *(a1 + 23) & 0x7F;
}

uint64_t std::string::__get_pointer[abi:dn200100](uint64_t *a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    return std::string::__get_long_pointer[abi:dn200100](a1);
  }

  std::string::__get_short_pointer[abi:dn200100](a1);
  return v1;
}

uint64_t std::string::__get_long_pointer[abi:dn200100](uint64_t *a1)
{
  if (a1[2] >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2015: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long pointer\n");
  }

  return *a1;
}

{
  if (a1[2] >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2010: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long pointer\n");
  }

  return *a1;
}

void std::string::__move_assign[abi:dn200100](ot::Spinel::SpinelInterface *a1, ot::Spinel::SpinelInterface *a2)
{
  v10 = a1;
  v9 = a2;
  std::string::__annotate_delete[abi:dn200100]();
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v5 = std::string::__get_long_pointer[abi:dn200100](a1);
    v2 = std::string::__get_long_cap[abi:dn200100](a1);
    std::allocator_traits<std::allocator<char>>::deallocate[abi:dn200100](a1, v5, v2);
  }

  v8 = std::string::size[abi:dn200100](v9);
  v7[1] = !std::string::__is_long[abi:dn200100](v9);
  std::string::__move_assign_alloc[abi:dn200100](a1, v9);
  v3 = v9;
  *a1 = *v9;
  *(a1 + 2) = *(v3 + 2);
  std::string::__set_short_size[abi:dn200100](v9, 0);
  std::string::__get_short_pointer[abi:dn200100](v9);
  v7[0] = 0;
  std::char_traits<char>::assign[abi:dn200100](v4, v7);
  std::string::__annotate_shrink[abi:dn200100]();
  if (!std::string::__is_long[abi:dn200100](a1) && v9 != a1)
  {
    std::string::__get_short_size[abi:dn200100](a1);
    std::string::__annotate_shrink[abi:dn200100]();
  }
}

uint64_t std::string::__get_long_cap[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 16) >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2001: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long capacity\n");
  }

  return *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
}

void std::string::__set_short_size[abi:dn200100](uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (a2 >= 0x17)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1967: assertion __s < __min_cap failed: __s should never be greater than or equal to the short string capacity\n");
  }

  *(a1 + 23) = *(a1 + 23) & 0x80 | v3 & 0x7F;
  *(a1 + 23) &= ~0x80u;
}

uint64_t __cxx_global_var_init_1()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init_if);
}

{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

ot::Spinel::RadioSpinel *ot::Spinel::RadioSpinel::RadioSpinel(ot::Spinel::RadioSpinel *this)
{
  ot::Spinel::Logger::Logger(this, "RadioSpinel");
  *(this + 28) = 0;
  *(this + 148) = 0;
  *(this + 298) = 1;
  *(this + 299) = 0;
  *(this + 300) = 0;
  *(this + 76) = 0;
  *(this + 39) = 0;
  *(this + 82) = 0;
  *(this + 83) = 0;
  *(this + 336) = 1;
  *(this + 337) = 0;
  *(this + 114) = 0;
  *(this + 464) = 0;
  *(this + 465) = -1;
  *(this + 932) = 0;
  *(this + 933) = 0;
  *(this + 235) = 0;
  *(this + 236) = 0;
  *(this + 948) &= ~1u;
  *(this + 948) = *(this + 948) & 0xFD | 2;
  *(this + 948) &= ~4u;
  *(this + 475) = 0;
  *(this + 952) &= 0xF8u;
  *(this + 566) = 0;
  *(this + 823) = 0;
  *(this + 1655) &= ~2u;
  *(this + 1655) &= ~4u;
  *(this + 1655) &= ~8u;
  *(this + 1655) &= ~0x10u;
  *(this + 1655) &= ~0x20u;
  *(this + 1655) &= ~0x40u;
  *(this + 1655) &= ~0x80u;
  *(this + 1655) &= ~0x100u;
  *(this + 1657) = 0;
  *(this + 1658) &= ~1u;
  *(this + 1659) = 0;
  *(this + 208) = 0;
  *(this + 209) = 0;
  *(this + 210) = -1;
  *(this + 211) = -1;
  *(this + 212) = -1;
  ot::MaxPowerTable::MaxPowerTable((this + 1704));
  *(this + 1736) = 0;
  *(this + 1737) = 0;
  *(this + 218) = 0;
  *(this + 219) = 0;
  *(this + 1760) = 0;
  *(this + 221) = 0;
  *(this + 215) = 0;
  *(this + 216) = 0;
  memset(this + 232, 0, 0x40uLL);
  return this;
}

{
  ot::Spinel::RadioSpinel::RadioSpinel(this);
  return this;
}

uint64_t ot::Spinel::RadioSpinel::Init(const char **this, char a2, char a3, ot::Spinel::SpinelDriver *a4, unsigned __int16 a5, char a6)
{
  v34 = this;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  ot::Spinel::Logger::LogInfo1(this, "%s: Init", "Init");
  v28 = 0;
  v27 = 0;
  v26 = 0;
  *(this + 948) = *(this + 948) & 0xF7 | (8 * (v32 & 1));
  *(this + 1760) = v29 & 1;
  this[221] = v31;
  ot::Spinel::SpinelDriver::SetFrameHandler(this[221], ot::Spinel::RadioSpinel::HandleReceivedFrame, ot::Spinel::RadioSpinel::HandleSavedFrame, this);
  result = ot::Spinel::RadioSpinel::Get(this, 8u, "E", &ot::Spinel::RadioSpinel::sIeeeEui64);
  v28 = result;
  if (!result)
  {
    ot::Spinel::RadioSpinel::InitializeCaps(this, &v27, &v26);
    if ((ot::Spinel::RadioSpinel::sSupportsLogCrashDump & 1) == 0 || (otLogDebgPlat("RCP supports crash dump logging. Requesting crash dump."), result = ot::Spinel::RadioSpinel::Set(this, 0xB2u, 0), (v28 = result) == 0))
    {
      if ((v33 & 1) == 0)
      {
        v25 = ot::Spinel::RadioSpinel::CheckRcpApiVersion(this, v27, v26);
        if (v25)
        {
          v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v24)
          {
            v18 = v24 + 1;
          }

          else
          {
            v18 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
          }

          if (v25 == 7)
          {
            v7 = 2;
          }

          else
          {
            v7 = 1;
          }

          v8 = otExitCodeToString(v7);
          otLogCritPlat("%s() at %s:%d: %s", "Init", v18, 204, v8);
          handle_daemon_exit();
          if (v25 == 7)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          exit(v9);
        }

        v23 = ot::Spinel::RadioSpinel::CheckRadioCapabilities(this, v30);
        if (v23)
        {
          v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v22)
          {
            v17 = v22 + 1;
          }

          else
          {
            v17 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
          }

          if (v23 == 7)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          v11 = otExitCodeToString(v10);
          otLogCritPlat("%s() at %s:%d: %s", "Init", v17, 205, v11);
          handle_daemon_exit();
          if (v23 == 7)
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          exit(v12);
        }
      }

      result = otPlatRadioRcp2GetSpinelVersion();
      this[90] = this + 338;
      this[98] = this + 465;
      this[106] = (this + 74);
    }
  }

  v21 = v28;
  if (v28)
  {
    v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v20)
    {
      v16 = v20 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    if (v21 == 7)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = otExitCodeToString(v13);
    otLogCritPlat("%s() at %s:%d: %s", "Init", v16, 217, v14);
    handle_daemon_exit();
    if (v21 == 7)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    exit(v15);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::Get(ot::Spinel::RadioSpinel *this, unsigned int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Get", "radio_spinel.cpp", 1973, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithPropertyFormatV(this, a3, 2u, a2, 0, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

BOOL ot::Spinel::RadioSpinel::InitializeCaps(const char **this, BOOL *a2, BOOL *a3)
{
  v28 = this;
  v27 = a2;
  v26 = a3;
  v23 = this;
  SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  if (!ot::Spinel::SpinelDriver::CoprocessorHasCap(SpinelDriver, 34))
  {
    otLogCritPlat("The co-processor isn't a RCP!");
    v25 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v25)
    {
      v22 = v25 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v20 = v22;
    v21 = 3;
    v4 = otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", "InitializeCaps", v22, 262, v4);
    handle_daemon_exit();
    exit(v21);
  }

  v5 = ot::Spinel::RadioSpinel::GetSpinelDriver(v23);
  if (!ot::Spinel::SpinelDriver::CoprocessorHasCap(v5, 513))
  {
    ot::Spinel::Logger::LogCrit1(v23, "RCP capability list does not include support for radio/raw mode");
    v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v24)
    {
      v19 = v24 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v17 = v19;
    v18 = 3;
    v6 = otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", "InitializeCaps", v19, 268, v6);
    handle_daemon_exit();
    exit(v18);
  }

  v7 = ot::Spinel::RadioSpinel::GetSpinelDriver(v23);
  ot::Spinel::RadioSpinel::sSupportsLogStream = ot::Spinel::SpinelDriver::CoprocessorHasCap(v7, 518);
  v8 = ot::Spinel::RadioSpinel::GetSpinelDriver(v23);
  HasCap = ot::Spinel::SpinelDriver::CoprocessorHasCap(v8, 64);
  v10 = v23;
  *v27 = HasCap;
  v11 = ot::Spinel::RadioSpinel::GetSpinelDriver(v10);
  ot::Spinel::RadioSpinel::sSupportsResetToBootloader = ot::Spinel::SpinelDriver::CoprocessorHasCap(v11, 66);
  v12 = ot::Spinel::RadioSpinel::GetSpinelDriver(v23);
  v13 = ot::Spinel::SpinelDriver::CoprocessorHasCap(v12, 65);
  v14 = v23;
  *v26 = v13;
  v15 = ot::Spinel::RadioSpinel::GetSpinelDriver(v14);
  result = ot::Spinel::SpinelDriver::CoprocessorHasCap(v15, 67);
  ot::Spinel::RadioSpinel::sSupportsLogCrashDump = result;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::Set(ot::Spinel::RadioSpinel *this, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Set", "radio_spinel.cpp", 2033, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 6, 3u, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::CheckRcpApiVersion(ot::Spinel::RadioSpinel *this, char a2, char a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  if (a2)
  {
    v12 = 0;
    v13 = ot::Spinel::RadioSpinel::Get(this, 0xB0u, "i", &v12);
    if (v13)
    {
      return v13;
    }

    if (v12 < 4)
    {
      ot::Spinel::Logger::LogCrit1(this, "RCP and host are using incompatible API versions");
      ot::Spinel::Logger::LogCrit1(this, "RCP API Version %u is older than min required by host %u", v12, 4);
      v11 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v11)
      {
        v7 = v11 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v3 = otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", "CheckRcpApiVersion", v7, 331, v3);
      handle_daemon_exit();
      exit(3);
    }
  }

  if (v14)
  {
    v10 = 0;
    v13 = ot::Spinel::RadioSpinel::Get(this, 0xB1u, "i", &v10);
    if (!v13 && v10 > 0xA)
    {
      ot::Spinel::Logger::LogCrit1(this, "RCP and host are using incompatible API versions");
      ot::Spinel::Logger::LogCrit1(this, "RCP requires min host API version %u but host is older and at version %u", v10, 10);
      v9 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v9)
      {
        v6 = v9 + 1;
      }

      else
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v4 = otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", "CheckRcpApiVersion", v6, 351, v4);
      handle_daemon_exit();
      exit(3);
    }
  }

  return v13;
}

uint64_t ot::Spinel::RadioSpinel::CheckRadioCapabilities(const char **this, unsigned __int16 a2)
{
  v14 = this;
  v13 = a2;
  v7 = this;
  v12 = 0;
  v11 = 0;
  v12 = ot::Spinel::RadioSpinel::Get(this, 0x120Bu, "i", &v11);
  if (!v12)
  {
    ot::Spinel::RadioSpinel::sRadioCaps = v11;
    if ((v11 & v13) != v13)
    {
      v10 = ot::Spinel::RadioSpinel::sRadioCaps & v13 ^ v13;
      ot::Spinel::Logger::LogCrit1(v7, "RCP is missing required capabilities: ");
      for (i = 0; i < 0xA; ++i)
      {
        if ((v10 & (1 << i)) != 0)
        {
          ot::Spinel::Logger::LogCrit1(v7, "    %s", ot::Spinel::RadioSpinel::CheckRadioCapabilities(unsigned short)::kAllRadioCapsStr[i]);
        }
      }

      v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v8)
      {
        v6 = v8 + 1;
      }

      else
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v4 = v6;
      v5 = 3;
      v2 = otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", "CheckRadioCapabilities", v6, 303, v2);
      handle_daemon_exit();
      exit(v5);
    }
  }

  return v12;
}

void *ot::Spinel::RadioSpinel::SetCallbacks(uint64_t a1, void *a2)
{
  if (!a2[6])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 223, "aCallbacks.mDiagReceiveDone != nullptr");
  }

  if (!a2[7])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 224, "aCallbacks.mDiagTransmitDone != nullptr");
  }

  if (!a2[2])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 226, "aCallbacks.mEnergyScanDone != nullptr");
  }

  if (!*a2)
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 227, "aCallbacks.mReceiveDone != nullptr");
  }

  if (!a2[1])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 228, "aCallbacks.mTransmitDone != nullptr");
  }

  if (!a2[4])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 229, "aCallbacks.mTxStarted != nullptr");
  }

  return memcpy((a1 + 232), a2, 0x40uLL);
}

uint64_t ot::Spinel::RadioSpinel::CheckSpinelVersion(ot::Spinel::RadioSpinel *this)
{
  v11 = this;
  v6 = this;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = ot::Spinel::RadioSpinel::Get(this, 1u, "ii", &v9, &v8);
  if (!v10 && (v9 != 4 || v8 != 3))
  {
    otLogCritPlat("Spinel version mismatch - Posix:%d.%d, RCP:%d.%d", 4, 3, v9, v8);
    v7 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v7)
    {
      v5 = v7 + 1;
    }

    else
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v3 = v5;
    v4 = 3;
    v1 = otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", "CheckSpinelVersion", v5, 249, v1);
    handle_daemon_exit();
    exit(v4);
  }

  return v10;
}

uint64_t ot::Spinel::RadioSpinel::GetSpinelDriver(ot::Spinel::RadioSpinel *this)
{
  if ((gSystemDieNow & 1) == 1)
  {
    busy_wait_for_shutdown();
  }

  if (!*(this + 221))
  {
    __assert_rtn("GetSpinelDriver", "radio_spinel.cpp", 1090, "mSpinelDriver != nullptr");
  }

  return *(this + 221);
}

BOOL ot::Spinel::SpinelDriver::CoprocessorHasCap(ot::Spinel::SpinelDriver *this, int a2)
{
  v4 = this;
  v3 = a2;
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(this + 8420, &v3);
}

{
  return ot::Spinel::SpinelDriver::CoprocessorHasCap(this, a2);
}

uint64_t ot::Spinel::encode_data_into_string(ot::Spinel *this, const unsigned __int8 *a2, _BYTE *a3, char *a4, int a5)
{
  for (i = 0; ; i += 2)
  {
    v11 = 0;
    if (a2)
    {
      v11 = a4 > 2;
    }

    if (!v11)
    {
      break;
    }

    v5 = this;
    this = (this + 1);
    v12 = *v5;
    --a2;
    --a5;
    *a3 = ot::Spinel::int_to_hex_digit((*v5 >> 4));
    v6 = ot::Spinel::int_to_hex_digit((v12 & 0xF));
    v7 = a3 + 1;
    a3 += 2;
    *v7 = v6;
    a4 -= 2;
  }

  while (1)
  {
    v10 = 0;
    if (a5 > 0)
    {
      v10 = a4 > 2;
    }

    if (!v10)
    {
      break;
    }

    --a5;
    *a3 = 48;
    v8 = a3 + 1;
    a3 += 2;
    *v8 = 48;
    a4 -= 2;
    i += 2;
  }

  *a3 = 0;
  return i;
}

void ot::Spinel::RadioSpinel::HandleNotification(const char **this, const unsigned __int8 *a2, __int16 a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = this;
  *&v24[1] = a2;
  v24[0] = a3;
  v23 = a4;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  memset(v19, 0, 13);
  v18 = 0;
  *a4 = 0;
  v20 = spinel_datatype_unpack(*&v24[1], v24[0], "CiiD", a4, a5, a6, a7, a8, v19);
  if (v20 > 0 && (v19[0] & 0xF) == 0)
  {
    if (v22 != 116)
    {
      v8 = spinel_prop_key_to_cstr(v22);
      if (strlen(v8) == 10 && (v9 = spinel_prop_key_to_cstr(v22), !strcmp("STREAM_RAW", v9)) && v21 >= 0x14 && *&v19[5] && v24[0] > v21)
      {
        v28[0] = 0;
        ot::Spinel::encode_data_into_string(*&v19[5], 0xA, v28, 0x32, 0);
        v27[0] = 0;
        ot::Spinel::encode_data_into_string((*&v19[5] + v21 - 10), 0xA, v27, 0x32, 0);
        v15 = v19[0] & 0xF;
        v16 = spinel_command_to_cstr(*&v19[1]);
        v10 = spinel_prop_key_to_cstr(v22);
        ot::Spinel::Logger::LogNote1(this, "[RCP->] (%d) N %s(%s) [%s-%s] len=%d", v15, v16, v10, v28, v27, v21);
      }

      else
      {
        v26[0] = 0;
        ot::Spinel::encode_data_into_string(*&v24[1], v24[0], v26, 0x401, 0);
        v13 = v19[0] & 0xF;
        v14 = spinel_command_to_cstr(*&v19[1]);
        v11 = spinel_prop_key_to_cstr(v22);
        ot::Spinel::Logger::LogNote1(this, "[RCP->] (%d) N %s(%s) [%s] len=%d", v13, v14, v11, v26, v24[0]);
      }
    }

    if (*&v19[1] == 6)
    {
      if (ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, v22))
      {
        ot::Spinel::RadioSpinel::HandleValueIs(this, v22, *&v19[5], v21);
      }

      else
      {
        *v23 = 1;
      }

      goto LABEL_19;
    }

    if (*&v19[1] == 8 || *&v19[1] == 7)
    {
      v12 = ot::ToUlong(*&v19[1]);
      ot::Spinel::Logger::LogInfo1(this, "Ignored command %lu", v12);
LABEL_19:
      ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 0);
      goto LABEL_20;
    }
  }

  v18 = 6;
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
LABEL_20:
  ot::Spinel::Logger::LogIfFail1(this, "Error processing notification", v18);
}

BOOL ot::Spinel::RadioSpinel::IsSafeToHandleNow(ot::Spinel::RadioSpinel *this, int a2)
{
  v3 = 1;
  if (a2 != 113)
  {
    v3 = a2 == 57;
  }

  return !v3;
}

{
  return ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, a2);
}

void ot::Spinel::RadioSpinel::HandleValueIs(ot::Spinel::RadioSpinel *this, int a2, const unsigned __int8 *a3, unsigned __int16 a4)
{
  v41 = this;
  v40 = a2;
  *&v39[1] = a3;
  v39[0] = a4;
  DataWithLen = 0;
  v37 = 0;
  v36 = pcap_enabled();
  v35 = promiscuous_enabled();
  if (v40 == 117 && (v35 || v36))
  {
    write_stream_to_pcap(*&v39[1]);
  }

  else if (v40 == 15538 || v40 == 15518)
  {
    *&__n[1] = 0;
    __n[0] = 0;
    ot::Spinel::Decoder::Decoder(v33);
    ot::Spinel::Decoder::Init(v33, *&v39[1], v39[0]);
    DataWithLen = ot::Spinel::Decoder::ReadDataWithLen(v33, &__n[1], __n);
    if (!DataWithLen)
    {
      memcpy(__dst, *&__n[1], __n[0]);
      if (v40 == 15538)
      {
        ot::Spinel::Logger::LogInfo1(this, "Got RFState %d\n", __n[0]);
        ot::Spinel::mRFStateCallback(LOBYTE(v39[0]), __dst, ot::Spinel::mRFStateContext);
      }

      else if (v40 == 15518)
      {
        ot::Spinel::Logger::LogInfo1(this, "Got Coex State %d\n", __n[0]);
        if (ot::Spinel::mCoexStateCallback)
        {
          ot::Spinel::mCoexStateCallback(LOBYTE(__n[0]), __dst);
        }

        else
        {
          ot::Spinel::Logger::LogInfo1(this, "coex state call back is not set. Might just set the duration time from ot command line.\n");
        }
      }
    }
  }

  else if (v40 == 113)
  {
    DataWithLen = ot::Spinel::RadioSpinel::ParseRadioFrame(this, this + 720, *&v39[1], v39[0], &v37, v6, v7, v8);
    if (!DataWithLen)
    {
      ot::Spinel::RadioSpinel::RadioReceive(this);
      if (!v35 && !v36)
      {
        write_stream_to_pcap(*&v39[1]);
      }
    }
  }

  else if (v40)
  {
    if (v40 == 57)
    {
      v31 = 0;
      v30 = 0;
      v37 = spinel_datatype_unpack(*&v39[1], v39[0], "Cc", v4, v5, v6, v7, v8, &v31);
      if (v37 > 0)
      {
        *(this + 1655) &= ~0x80u;
        (*(this + 31))(*(this + 28), v30);
      }

      else
      {
        DataWithLen = 6;
      }
    }

    else
    {
      if (v40 == 112)
      {
        v29 = 151;
        v37 = spinel_datatype_unpack_in_place(*&v39[1], v39[0], "D", v4, v5, v6, v7, v8, v42);
        __assert_rtn("HandleValueIs", "radio_spinel.cpp", 949, "len < sizeof(logStream)");
      }

      if (v40 == 116 && (ot::Spinel::RadioSpinel::sSupportsLogStream & 1) != 0)
      {
        v28 = 0;
        v27 = 0;
        v37 = spinel_datatype_unpack(*&v39[1], v39[0], "U", v4, v5, v6, v7, v8, &v28);
        if (v37 < 0)
        {
          DataWithLen = 6;
        }

        else
        {
          *&v39[1] += v37;
          v39[0] -= v37;
          v26 = 0;
          v25 = 0;
          v37 = spinel_datatype_unpack(*&v39[1], v39[0], "Ci", v13, v14, v15, v16, v17, &v27);
          if (v37 > 0)
          {
            *&v39[1] += v37;
            v39[0] -= v37;
            if (v39[0] < 8uLL || (v37 = spinel_datatype_unpack(*&v39[1], v39[0], "X", v18, v19, v20, v21, v22, &v25), v37 > 0))
            {
              if (v27 <= 2u)
              {
                ot::Spinel::Logger::LogCrit1(this, "[%llu] RCP => %s", v25, v28);
                handle_captureABC(2);
              }

              else if (v27 != 4 && v27 != 3)
              {
                if (v27 == 5)
                {
                  ot::Spinel::Logger::LogNote1(this, "[%llu] RCP => %s", v25, v28);
                }

                else if (v27 == 6)
                {
                  ot::Spinel::Logger::LogInfo1(this, "[%llu] RCP => %s", v25, v28);
                }

                else
                {
                  ot::Spinel::Logger::LogDebg1(this, "[%llu] RCP => %s", v25, v28);
                }
              }

              else
              {
                ot::Spinel::Logger::LogWarn1(this, "[%llu] RCP => %s", v25, v28);
              }
            }

            else
            {
              DataWithLen = 6;
            }
          }

          else
          {
            DataWithLen = 6;
          }
        }
      }

      else if (v40 == 15296)
      {
        v24 = 0;
        if (*(this + 208))
        {
          v37 = spinel_datatype_unpack(*&v39[1], v39[0], "U", v4, v5, v6, v7, v8, &v24);
          if (v37 > 0)
          {
            ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%s", v24);
          }

          else
          {
            DataWithLen = 6;
          }
        }
      }
    }
  }

  else
  {
    v32 = 0;
    v37 = spinel_datatype_unpack(*&v39[1], v39[0], "i", v4, v5, v6, v7, v8, &v32);
    if (v37 > 0)
    {
      v9 = spinel_status_to_cstr(v32);
      ot::Spinel::Logger::LogInfo1(this, "[-RCP-]: RCP was reset (%s, %d)", v9, v32);
      if (v32 < 0x70 || v32 > 0x80)
      {
        switch(v32)
        {
          case 0x19u:
          case 0x1Au:
            if (*(this + 34))
            {
              (*(this + 34))(*(this + 28), v32 == 25);
            }

            break;
          case 0x1E8480u:
            ot::Spinel::Logger::LogInfo1(this, "[-RCP-]: TX Request Timed out, TRANSMIT_NOT_GRANTED");
            if (ot::Spinel::too_many_grants_denied(v11) == 1)
            {
              handle_captureABC(2000000);
            }

            break;
          case 3u:
            handle_captureABC(3);
            break;
          default:
            v12 = spinel_status_to_cstr(v32);
            ot::Spinel::Logger::LogInfo1(this, "RCP last status: %s", v12);
            break;
        }
      }

      else if (ot::Spinel::RadioSpinel::IsEnabled(this))
      {
        ot::Spinel::RadioSpinel::HandleRcpUnexpectedReset(this, v32);
      }

      else
      {
        ot::Spinel::SpinelDriver::ClearRxBuffer(*(this + 221));
        ot::Spinel::SpinelDriver::SetCoprocessorReady(*(this + 221));
        v10 = spinel_status_to_cstr(v32);
        ot::Spinel::Logger::LogInfo1(this, "RCP reset: %s", v10);
        handle_rcp_reset(v32);
      }
    }

    else
    {
      DataWithLen = 6;
    }
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, DataWithLen);
  ot::Spinel::Logger::LogIfFail1(this, "Failed to handle ValueIs", DataWithLen);
}

uint64_t ot::ToUlong(uint64_t this)
{
  return this;
}

{
  return ot::ToUlong(this);
}

uint64_t ot::Spinel::RadioSpinel::UpdateParseErrorCount(uint64_t result, int a2)
{
  *(result + 1732) += a2 == 6;
  return result;
}

{
  return ot::Spinel::RadioSpinel::UpdateParseErrorCount(result, a2);
}

void ot::Spinel::RadioSpinel::HandleNotification(const char **this, unsigned __int8 *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v13 = spinel_datatype_unpack(a2, a3, "CiiD", a4, a5, a6, a7, a8, &v10);
  if (v13 <= 0 || (v10 & 0xF) != 0)
  {
    v9 = 6;
    ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
  }

  else
  {
    if (v11 == 6)
    {
      if (v15 != 113 && v15 != 57)
      {
        ot::Spinel::Logger::LogCrit1(this, "[HandleNotification]:::::INVALID KEY = %d", v15);
      }

      ot::Spinel::RadioSpinel::HandleValueIs(this, v15, v12, v14);
    }

    ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 0);
  }

  ot::Spinel::Logger::LogIfFail1(this, "Error processing saved notification", v9);
}

uint64_t ot::Spinel::RadioSpinel::updateStreamRawHistogram(ot::Spinel::RadioSpinel *this, unint64_t a2)
{
  if (a2)
  {
    v3 = a2 / 5;
    if (a2 % 5)
    {
      if (v3 < 0)
      {
        v4 = 0;
      }

      else
      {
        if (v3 >= 50)
        {
          ++*(this + 55);
        }

        else
        {
          ++*(this + v3 + 6);
        }

        v4 = 1;
      }
    }

    else if (v3 <= 0 || v3 >= 50)
    {
      ++*(this + 55);
      v4 = 1;
    }

    else
    {
      ++*(this + v3 + 5);
      v4 = 1;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ot::Spinel::RadioSpinel::HandleResponse(const char **this, unsigned __int8 *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = this;
  *&v13[1] = a2;
  v13[0] = a3;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  spinel_datatype_unpack(a2, a3, "CiiD", a4, a5, a6, a7, a8, &v9);
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
  ot::Spinel::Logger::LogIfFail1(this, "Error processing response", 6);
}

void ot::Spinel::RadioSpinel::HandleWaitingResponse(ot::Spinel::RadioSpinel *this, int a2, int a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  if (a3)
  {
    if (v22 == 15296)
    {
      v17 = 0;
      v16 = 0;
      *(this + 83) = 0;
      if (*(this + 208))
      {
        v17 = spinel_datatype_unpack(v21, v20, "U", a4, a5, a6, a7, a8, &v16);
        if (v17 > 0)
        {
          ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%s", v16);
        }

        else
        {
          *(this + 83) = 6;
        }
      }
    }

    else if (v22 == *(this + 76))
    {
      if (*(this + 39))
      {
        ot::Spinel::Logger::LogInfo1(this, "::::mPropertyFormat[%s]", *(this + 39));
        if (**(this + 39) == 46)
        {
          v9 = *(this + 40);
          *(this + 40) = v9 + 16;
          v14 = *v9;
          v15 = *(v9 + 8);
          if (*v9 == 0 && (*v9 == 0 && (v15 & 1) == 0 || v15 == 0))
          {
            __assert_rtn("HandleWaitingResponse", "radio_spinel.cpp", 739, "handler != nullptr");
          }

          v11 = (this + (v15 >> 1));
          if (v15)
          {
            v10 = (*(*v11 + v14))(v11, v21, v20);
          }

          else
          {
            v10 = v14(v11, v21, v20);
          }

          *(this + 83) = v10;
        }

        else
        {
          v13 = spinel_datatype_vunpack_in_place(v21, v20, *(this + 39), *(this + 40));
          if (v13 > 0)
          {
            *(this + 83) = 0;
          }

          else
          {
            ot::Spinel::Logger::LogInfo1(this, "::::parse_error[%d]", v13);
            *(this + 83) = 6;
          }
        }
      }

      else if (v23 == *(this + 82))
      {
        *(this + 83) = 0;
      }

      else
      {
        *(this + 83) = 2;
      }
    }

    else
    {
      ot::Spinel::Logger::LogWarn1(this, "::::HandleWaitingResponse::ERROR_DROP");
      *(this + 83) = 2;
    }
  }

  else
  {
    v19 = 0;
    v18 = spinel_datatype_unpack(v21, v20, "i", a4, a5, a6, a7, a8, &v19);
    if (v18 > 0)
    {
      v8 = spinel_status_to_cstr(v19);
      ot::Spinel::Logger::LogInfo1(this, "[-RCP-] Status = %s", v8);
      *(this + 83) = ot::Spinel::SpinelStatusToOtError(v19);
      if (v19 == 11)
      {
        rcp_hard_reset();
      }
    }

    else
    {
      *(this + 83) = 6;
    }
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, *(this + 83));
  ot::Spinel::Logger::LogIfFail1(this, "Error processing result", *(this + 83));
}

uint64_t ot::Spinel::RadioSpinel::FreeTid(uint64_t this, char a2)
{
  *(this + 296) &= ~(1 << a2);
  return this;
}

{
  return ot::Spinel::RadioSpinel::FreeTid(this, a2);
}

void ot::Spinel::RadioSpinel::HandleTransmitDone(ot::Spinel::RadioSpinel *this, unsigned int a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = this;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (__PAIR64__(a2, a3) != 0x600000000)
  {
    v35 = 1;
    goto LABEL_25;
  }

  v29 = spinel_datatype_unpack(v37, v36, "i", a4, a5, a6, a7, a8, &v34);
  if (v29 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<status>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2405, "false");
  }

  if (v34 == 4)
  {
    ot::Spinel::Logger::LogCrit1(this, "HandleTransmitDone: Status[%d] SPINEL_STATUS_INVALID_STATE", 4);
    v35 = 13;
    goto LABEL_25;
  }

  v37 += v29;
  v36 -= v29;
  v29 = spinel_datatype_unpack(v37, v36, "b", v8, v9, v10, v11, v12, &v33);
  if (v29 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<framePending>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2449, "false");
  }

  v37 += v29;
  v36 -= v29;
  v29 = spinel_datatype_unpack(v37, v36, "b", v13, v14, v15, v16, v17, &v32);
  if (v29 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<headerUpdated>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2462, "false");
  }

  v37 += v29;
  v36 -= v29;
  if (v34)
  {
    v35 = ot::Spinel::SpinelStatusToOtError(v34);
    otLogWarnPlat("Error In Status = %d, Error = %d", v34, v35);
    if (v35 == 6)
    {
      ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<status value from RCP>>");
      __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2504, "false");
    }

    if (v34 == 11)
    {
      rcp_hard_reset();
    }
  }

  else
  {
    v35 = ot::Spinel::RadioSpinel::ParseRadioFrame(this, this + 848, v37, v36, &v29, v18, v19, v20);
    if (v35)
    {
      goto LABEL_25;
    }

    v37 += v29;
    v36 -= v29;
  }

  ot::Mac::TxFrame::SetIsHeaderUpdated(*(this + 114), v32 & 1);
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0 && (v32 & 1) != 0 && ot::Mac::Frame::GetSecurityEnabled(*(this + 114), v21))
  {
    v28 = 0;
    v29 = spinel_datatype_unpack(v37, v36, "CL", v26, v22, v23, v24, v25, &v28);
    v37 += v29;
    v36 -= v29;
    if (v29 <= 0)
    {
      ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<keyId>> <<frameCounter>>");
      __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2533, "false");
    }

    ot::Mac::Frame::SetKeyId(*(this + 114), v28);
    ot::Mac::Frame::SetFrameCounter(*(this + 114), 0);
    *(this + 1655) = *(this + 1655) & 0xFEFF | 0x100;
  }

  ot::Spinel::RadioSpinel::GetVendorTxInfo(this, &v29, &v36, v37, v22, v23, v24, v25);
LABEL_25:
  if (v35 == 6)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<exit>>", a3, a4, a5, a6, a7, a8);
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2587, "false");
  }

  *(this + 236) = 4;
  if (v35 == 13)
  {
    *(this + 234) = 13;
    *(this + 952) = *(this + 952) & 0xF8 | 3;
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  }

  else if (v35 == 6)
  {
    *(this + 234) = 11;
    ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  }

  else
  {
    *(this + 234) = v35;
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, v35);
  ot::Spinel::Logger::LogIfFail1(this, "Handle transmit done failed", v35);
}

uint64_t ot::Spinel::RadioSpinel::PlatDiagOutput(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 1664))
  {
    return (*(this + 1664))(a2, va, *(this + 1672));
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::ParseRadioFrame(const char **a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v25 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0x80;
  v28 = 127;
  v27 = 0;
  v26 = 0;
  if (!a4)
  {
    *(v35 + 8) = 0;
    goto LABEL_19;
  }

  v8 = *v35;
  v24 = &v15;
  v16 = &v28;
  v17 = v35 + 29;
  v18 = &v29;
  v19 = &v30;
  v20 = v35 + 10;
  v21 = v35 + 30;
  v22 = v35 + 16;
  v23 = &v27;
  v26 = spinel_datatype_unpack_in_place(v34, v33, "dccSt(CCX)t(i)", a4, a5, a6, a7, a8, v8);
  if (v26 <= 0)
  {
    otLogInfoRcp("%s unpack parse error: Frame ", "ParseRadioFrame");
  }

  if (v26 <= 0)
  {
    v31 = 6;
    goto LABEL_19;
  }

  *v32 = v26;
  v34 += v26;
  v33 -= v26;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0)
  {
    v16 = (v35 + 24);
    v26 = spinel_datatype_unpack_in_place(v34, v33, "t(CL)", v9, v10, v11, v12, v13, v35 + 28);
    if (v26 <= 0)
    {
      otLogInfoRcp("%s unpack parse error: MAC-data", "ParseRadioFrame");
    }

    if (v26 <= 0)
    {
      v31 = 6;
      goto LABEL_19;
    }

    *v32 += v26;
    if ((v30 & 0x20) != 0)
    {
      *(v25 + 1655) = *(v25 + 1655) & 0xFEFF | 0x100;
    }
  }

  if (v27)
  {
    if (v27 >= 0x26)
    {
      otLogInfoRcp("receiveError > OT_NUM_ERRORS. receiveError[%d]", v27);
      v31 = 6;
    }

    else
    {
      otLogInfoRcp("receiveError < OT_NUM_ERRORS, receiveError[%d]", v27);
      v31 = v27;
    }
  }

  else
  {
    *(v35 + 8) = v28;
    *(v35 + 31) = *(v35 + 31) & 0xFE | ((v30 & 0x10) != 0);
    *(v35 + 31) = *(v35 + 31) & 0xFD | (2 * ((v30 & 0x20) != 0));
  }

LABEL_19:
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(v25, v31);
  ot::Spinel::Logger::LogIfFail1(v25, "Handle radio frame failed", v31);
  if (v31 == 6)
  {
    ot::Spinel::Logger::LogDebg1(v25, "%s parse error happen, trigger FLR to help debug", "ParseRadioFrame");
    rcp_hard_reset();
  }

  return v31;
}

uint64_t ot::Spinel::RadioSpinel::RadioReceive(uint64_t this)
{
  v1 = this;
  if ((*(this + 948) & 1) != 0 || *(this + 944))
  {
    if (otPlatDiagModeGet())
    {
      return (*(v1 + 280))(*(v1 + 224), v1 + 720, 0);
    }

    else
    {
      return (*(v1 + 232))(*(v1 + 224), v1 + 720, 0);
    }
  }

  return this;
}

BOOL ot::Spinel::RadioSpinel::IsEnabled(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) != 0;
}

{
  return ot::Spinel::RadioSpinel::IsEnabled(this);
}

void ot::Spinel::RadioSpinel::HandleRcpUnexpectedReset(ot::Spinel::RadioSpinel *this, int a2)
{
  ++*(this + 431);
  v2 = spinel_status_to_cstr(a2);
  ot::Spinel::Logger::LogCrit1(this, "Unexpected RCP reset: %s", v2);
  *(this + 952) = *(this + 952) & 0xF8 | 2;
}

void ot::Spinel::SpinelDriver::ClearRxBuffer(ot::Spinel::SpinelDriver *this)
{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(this + 8);
}

{
  ot::Spinel::SpinelDriver::ClearRxBuffer(this);
}

uint64_t ot::Spinel::SpinelDriver::SetCoprocessorReady(uint64_t this)
{
  *(this + 8288) = 1;
  return this;
}

{
  return ot::Spinel::SpinelDriver::SetCoprocessorReady(this);
}

uint64_t ot::Spinel::RadioSpinel::SendReset(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  if (a2 != 3 || (ot::Spinel::RadioSpinel::sSupportsResetToBootloader & 1) != 0)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    return ot::Spinel::SpinelDriver::SendReset(SpinelDriver, a2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    return 27;
  }
}

uint64_t ot::Spinel::RadioSpinel::TransmitDone(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (otPlatDiagModeGet())
  {
    return (*(a1 + 288))(*(a1 + 224), a2, a4);
  }

  else
  {
    return (*(a1 + 240))(*(a1 + 224), a2, a3, a4);
  }
}

uint64_t ot::Spinel::RadioSpinel::HandleRcpTimeout(uint64_t this)
{
  ++*(this + 1720);
  *(this + 952) = *(this + 952) & 0xF8 | 1;
  return this;
}

char *ot::Spinel::SpinelDriver::ClearRxFrameBufferSavedFrames(ot::Spinel::SpinelDriver *this)
{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(this + 8);
}

{
  return ot::Spinel::SpinelDriver::ClearRxFrameBufferSavedFrames(this);
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuous(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x38u, "C", (a2 & 1) != 0);
  if (!v4)
  {
    *(this + 948) = *(this + 948) & 0xFE | a2 & 1;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRxOnWhenIdle(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = 0;
  if (((*(this + 948) & 2) != 0) != (a2 & 1))
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x3Bu, "b", a2 & 1);
    if (!v4)
    {
      *(this + 948) = *(this + 948) & 0xFD | (2 * (a2 & 1));
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetShortAddress(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = 0;
  if (*(this + 464) != a2)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x35u, "S", a2);
    if (!v4)
    {
      *(this + 464) = a2;
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetAlternateShortAddress(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v3 = 0;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x400) != 0)
  {
    return ot::Spinel::RadioSpinel::Set(this, 0x3Cu, "S", a2);
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetMacKey(ot::Spinel::RadioSpinel *a1, unsigned __int8 a2, unsigned __int8 a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  return ot::Spinel::RadioSpinel::SetMacKey(a1, a2, a3, a4, a5, a6);
}

{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v9 = a1;
  v10 = 0;
  v8[8] = v8;
  v10 = ot::Spinel::RadioSpinel::Set(a1, 0x800u, "CCddd", a2, a3, a4, 16, a5, 16, a6, 16);
  if (!v10)
  {
    v6 = v9;
    *(v9 + 953) = v15;
    *(v6 + 954) = v14;
    *(v6 + 955) = *v13;
    *(v6 + 971) = *v12;
    *(v6 + 987) = *v11;
    *(v6 + 1655) = *(v6 + 1655) & 0xFFFB | 4;
  }

  return v10;
}

uint64_t ot::Spinel::RadioSpinel::SetMacFrameCounter(ot::Spinel::RadioSpinel *this, unsigned int a2, char a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x801u, "Lb", a2, a3 & 1);
  if (!v5)
  {
    *(this + 1655) = *(this + 1655) & 0xFEFF | 0x100;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetMacFrameCounter(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x801u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get MAC Frame Counter failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetIeeeEui64(const char **this, unsigned __int8 *a2)
{
  v9 = this;
  v8 = a2;
  v5 = this;
  v11 = 0;
  v7 = ot::Spinel::RadioSpinel::Get(this, 0x3C86u, "E", &v11);
  v6 = &v4;
  ot::Spinel::Logger::LogWarn1(v5, "GetIeeeEui64 RCP2=%x%x%x%x%x%x%x%x", v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11));
  if (v7)
  {
    v2 = otThreadErrorToString(v7);
    ot::Spinel::Logger::LogWarn1(v5, "GetIeeeEui64 RCP2: %s", v2);
    return v7;
  }

  else
  {
    *v8 = v11;
    return 0;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetExtendedAddress(ot::Spinel::RadioSpinel *a1, void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Set(a1, 0x34u, "E", a2);
  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    ot::Spinel::Logger::LogWarn1(a1, "SetExtendedAddress: %s", v2);
  }

  else
  {
    *(a1 + 115) = *a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetPanId(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = 0;
  if (*(this + 465) != a2)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x36u, "S", a2);
    if (!v4)
    {
      *(this + 465) = a2;
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::EnableSrcMatch(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x1303u, "b", a2 & 1);
  if (!v4)
  {
    *(this + 1658) = *(this + 1658) & 0xFE | 1;
    *(this + 1655) = *(this + 1655) & 0xFFFD | (2 * (a2 & 1));
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::AddSrcMatchShortEntry(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Insert(this, 0x1304u, "S", a2);
  if (!v5)
  {
    if (*(this + 566) >= 64)
    {
      __assert_rtn("AddSrcMatchShortEntry", "radio_spinel.cpp", 1605, "mSrcMatchShortEntryCount < OPENTHREAD_CONFIG_MLE_MAX_CHILDREN");
    }

    for (i = 0; i < *(this + 566); ++i)
    {
      if (*(this + i + 502) == a2)
      {
        return v5;
      }
    }

    *(this + (*(this + 566))++ + 502) = a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::Insert(ot::Spinel::RadioSpinel *this, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Insert", "radio_spinel.cpp", 2096, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 7, 4u, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::AddSrcMatchExtEntry(ot::Spinel::RadioSpinel *a1, void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Insert(a1, 0x1305u, "E", a2);
  if (!v5)
  {
    if (*(a1 + 823) >= 64)
    {
      __assert_rtn("AddSrcMatchExtEntry", "radio_spinel.cpp", 1630, "mSrcMatchExtEntryCount < OPENTHREAD_CONFIG_MLE_MAX_CHILDREN");
    }

    for (i = 0; i < *(a1 + 823); ++i)
    {
      if (!memcmp(a2, a1 + 8 * i + 1134, 8uLL))
      {
        return v5;
      }
    }

    *(a1 + 8 * (*(a1 + 823))++ + 1134) = *a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchShortEntry(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Remove(this, 0x1304u, "S", a2);
  if (!v5)
  {
    for (i = 0; i < *(this + 566); ++i)
    {
      if (*(this + i + 502) == a2)
      {
        *(this + i + 502) = *(this + (*(this + 566))-- + 501);
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::Remove(ot::Spinel::RadioSpinel *this, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Remove", "radio_spinel.cpp", 2123, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 8, 5u, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchExtEntry(ot::Spinel::RadioSpinel *a1, const void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Remove(a1, 0x1305u, "E", a2);
  if (!v5)
  {
    for (i = 0; i < *(a1 + 823); ++i)
    {
      if (!memcmp(a1 + 8 * i + 1134, a2, 8uLL))
      {
        *(a1 + 8 * i + 1134) = *(a1 + 8 * (*(a1 + 823))-- + 1126);
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchShortEntries(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x1304u, 0);
  if (!v3)
  {
    *(this + 566) = 0;
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchExtEntries(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x1305u, 0);
  if (!v3)
  {
    *(this + 823) = 0;
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetMinInterframeDelay(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x1E8490u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get min interframe delay", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetTransmitPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x25u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get transmit power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssiOffset(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x1E8481u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssiOffsetPath1(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x1E8496u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetCcaEnergyDetectThreshold(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x24u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get CCA ED threshold failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetFemLnaGain(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x2Au, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get FEM LNA gain failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssi(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 127;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x26u, "c", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetCoexEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x120Du, "b", a2 & 1);
  if (!v4)
  {
    *(this + 1655) = *(this + 1655) & 0xFFFE | a2 & 1;
    *(this + 1655) = *(this + 1655) & 0xFFDF | 0x20;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::IsCoexEnabled(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 0;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x120Du, "b", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get Coex State failed", v3);
  return v4 & 1;
}

uint64_t ot::Spinel::RadioSpinel::GetCoexMetrics(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x120Cu, "t(LLLLLLLL)t(LLLLLLLLL)bL", a2 + 4, a2 + 8, a2 + 12, a2 + 16, a2 + 20, a2 + 24, a2 + 28, a2 + 32, a2 + 36, a2 + 40, a2 + 44, a2 + 48, a2 + 52, a2 + 56, a2 + 60, a2 + 64, a2 + 68, a2 + 72, a2);
  ot::Spinel::Logger::LogIfFail1(a1, "Get Coex Metrics failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetTransmitPower(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x25u, "c", a2);
  if (!v4)
  {
    *(this + 1653) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFEF | 0x10;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set transmit power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRcpLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x4001u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RCP Log Level failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetMinInterframeDelay(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x1E8490u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Interframe delay failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetCcaEnergyDetectThreshold(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x24u, "c", a2);
  if (!v4)
  {
    *(this + 1652) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFF7 | 8;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set CCA ED threshold failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRssiOffset(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x1E8481u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRssiOffsetPath1(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x1E8496u, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RSSI offset PATH_1 failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetFemLnaGain(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x2Au, "c", a2);
  if (!v4)
  {
    *(this + 1654) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFBF | 0x40;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set FEM LNA gain failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::EnergyScan(ot::Spinel::RadioSpinel *this, char a2, unsigned __int16 a3)
{
  v8 = this;
  v7 = a2;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 2) != 0)
  {
    *(this + 1648) = v7;
    *(this + 825) = a3;
    *(this + 1655) = *(this + 1655) & 0xFF7F | 0x80;
    v5 = ot::Spinel::RadioSpinel::Set(this, 0x31u, "D", &v7, 1);
    if (!v5)
    {
      v5 = ot::Spinel::RadioSpinel::Set(this, 0x32u, "S", a3);
      if (!v5)
      {
        v5 = ot::Spinel::RadioSpinel::Set(this, 0x30u, "C", 2);
        if (!v5)
        {
          *(this + 932) = v7;
        }
      }
    }
  }

  else
  {
    return 27;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::RequestWithPropertyFormatV(ot::Spinel::RadioSpinel *this, const char *a2, unsigned int a3, unsigned int a4, char *a5, const char **a6)
{
  *(this + 39) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestV(this, a3, a4, a5, a6);
  *(this + 39) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetWithParam(ot::Spinel::RadioSpinel *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4, const char *a5, ...)
{
  va_start(va, a5);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("GetWithParam", "radio_spinel.cpp", 2005, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v7 = ot::Spinel::RadioSpinel::RequestWithPropertyFormat(this, a5, 2u, a2, "D", a3, a4);
    }

    while ((*(this + 952) & 7) != 0);
    return v7;
  }
}

uint64_t ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(ot::Spinel::RadioSpinel *this, int a2, unsigned int a3, unsigned int a4, char *a5, const char **a6)
{
  *(this + 82) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestV(this, a3, a4, a5, a6);
  *(this + 82) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::MemPeek(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3, char *a4, ...)
{
  va_start(va, a4);
  *(this + 218) = a2;
  *(this + 219) = a3;
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("MemPeek", "radio_spinel.cpp", 2066, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      v6 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandVNK(this, 19, 0x12u, a4, va);
    }

    while ((*(this + 952) & 7) != 0);
    return v6;
  }
}

uint64_t ot::Spinel::RadioSpinel::RequestWithExpectedCommandVNK(ot::Spinel::RadioSpinel *this, int a2, unsigned int a3, char *a4, const char **a5)
{
  *(this + 82) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestVNK(this, a3, a4, a5);
  *(this + 82) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::WaitResponse(ot::Spinel::RadioSpinel *this, char a2)
{
  if (a2)
  {
    if (*(this + 1657))
    {
      ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
      return 28;
    }
  }

  else if (*(this + 1657) == 1)
  {
    return 28;
  }

  v11 = otPlatTimeGet() + 2000000;
  v8 = *(this + 300);
  v2 = ot::ToUlong(*(this + 76));
  ot::Spinel::Logger::LogDebg1(this, "Wait response: tid=%u key=%lu", v8, v2);
  while (1)
  {
    v10 = otPlatTimeGet();
    if (v11 <= v10)
    {
      break;
    }

    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    SpinelInterface = ot::Spinel::SpinelDriver::GetSpinelInterface(SpinelDriver);
    if ((*(*SpinelInterface + 32))(SpinelInterface, v11 - v10))
    {
      break;
    }

    if (!*(this + 300))
    {
      ot::Spinel::Logger::LogIfFail1(this, "Error waiting response", *(this + 83));
      *(this + 76) = 0;
      return *(this + 83);
    }
  }

  ot::Spinel::Logger::LogWarn1(this, "Wait for response timeout gPciStatus=%d", gPciStatus);
  if (otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (otPlatRadioGetCoreDumpTXFailureEnabled())
  {
    v7 = *(this + 300);
    v5 = ot::ToUlong(*(this + 76));
    ot::Spinel::Logger::LogDebg1(this, "%s Trigger CoreDump  tid=%u key=%lu", "WaitResponse", v7, v5);
    rcp_hard_reset();
  }

  if (gPciStatus)
  {
    ot::Spinel::Logger::LogWarn1(this, "Exit response timeout due to PCI failure %d\n", gPciStatus);
    *(this + 76) = 0;
    *(this + 83) = 28;
  }

  else
  {
    if (a2)
    {
      ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
    }

    *(this + 83) = 28;
  }

  return *(this + 83);
}

uint64_t ot::Spinel::SpinelDriver::GetSpinelInterface(ot::Spinel::SpinelDriver *this)
{
  return *(this + 1029);
}

{
  return ot::Spinel::SpinelDriver::GetSpinelInterface(this);
}

uint64_t ot::Spinel::RadioSpinel::GetNextTid(ot::Spinel::RadioSpinel *this)
{
  v4 = *(this + 298);
  while (((1 << v4) & *(this + 148)) != 0)
  {
    if (v4 < 0xFu)
    {
      v3 = v4 + 1;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3;
    if (v3 == *(this + 298))
    {
      return 0;
    }
  }

  *(this + 148) |= 1 << v4;
  if (v4 < 0xFu)
  {
    v2 = v4 + 1;
  }

  else
  {
    v2 = 1;
  }

  *(this + 298) = v2;
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::RequestV(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned int a3, char *a4, const char **a5)
{
  NextTid = ot::Spinel::RadioSpinel::GetNextTid(this);
  if (NextTid)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    v11 = ot::Spinel::SpinelDriver::SendCommand(SpinelDriver, a2, a3, NextTid, a4, a5, v6, v7);
    if (v11)
    {
      ot::Spinel::Logger::LogWarn1(this, "RadioSpinel:RequestV SendCommand failed tid=%d", NextTid);
      ot::Spinel::RadioSpinel::FreeTid(this, NextTid);
    }

    else if (a4 && a3 == 113)
    {
      time_streamraw_tx = otPlatTimeGet();
      tx_streamraw_tid = NextTid;
    }

    if (!v11)
    {
      if (a3 == 113)
      {
        if (*(this + 299))
        {
          __assert_rtn("RequestV", "radio_spinel.cpp", 2255, "mTxRadioTid == 0");
        }

        *(this + 299) = NextTid;
      }

      else if (a3 == 15491 || a3 == 15492 || a3 == 15493)
      {
        *(this + 148) = 0;
        *(this + 298) = 1;
        *(this + 300) = 0;
        *(this + 76) = 0;
      }

      else
      {
        *(this + 76) = a3;
        *(this + 300) = NextTid;
        return ot::Spinel::RadioSpinel::WaitResponse(this, 1);
      }
    }
  }

  else
  {
    return 5;
  }

  return v11;
}

uint64_t ot::Spinel::RadioSpinel::RequestVNK(ot::Spinel::RadioSpinel *this, unsigned int a2, char *a3, const char **a4)
{
  NextTid = ot::Spinel::RadioSpinel::GetNextTid(this);
  if (NextTid)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    v11 = ot::Spinel::SpinelDriver::SendCommandNK(SpinelDriver, a2, NextTid, a3, a4, v5, v6, v7);
    if (!v11)
    {
      *(this + 300) = NextTid;
      return ot::Spinel::RadioSpinel::WaitResponse(this, 1);
    }
  }

  else
  {
    return 5;
  }

  return v11;
}

uint64_t ot::Mac::TxFrame::SetIsHeaderUpdated(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Mac::TxFrame::SetIsHeaderUpdated(this, a2);
}

BOOL ot::Mac::Frame::GetSecurityEnabled(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsSecurityEnabled(FrameControlField, v3, v4, v5);
}

{
  return ot::Mac::Frame::GetSecurityEnabled(this, a2);
}

uint64_t ot::Spinel::RadioSpinel::GetVendorTxInfo(uint64_t this, int *a2, unsigned __int16 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = this;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v33 = this;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (*a3)
  {
    this = spinel_datatype_unpack(v42, *v43, "Cc", a4, a5, a6, a7, a8, &v41);
    *v44 = this;
    *(*(v33 + 912) + 42) = v41;
    *(*(v33 + 912) + 44) = v40;
    v42 += *v44;
    *v43 -= *v44;
    *(*(v33 + 912) + 56) = 1;
    if (*v43)
    {
      this = spinel_datatype_unpack(v42, *v43, "CL", v8, v9, v10, v11, v12, &v39);
      *v44 = this;
      *(*(v33 + 912) + 46) = v39;
      *(*(v33 + 912) + 48) = v38;
      v42 += *v44;
      *v43 -= *v44;
      *(*(v33 + 912) + 56) = 2;
      if (*v43)
      {
        this = spinel_datatype_unpack(v42, *v43, "L", v13, v14, v15, v16, v17, &v37);
        *v44 = this;
        *(*(v33 + 912) + 52) = v37;
        v42 += *v44;
        *v43 -= *v44;
        *(*(v33 + 912) + 56) = 3;
        if (*v43)
        {
          this = spinel_datatype_unpack(v42, *v43, "C", v18, v19, v20, v21, v22, &v36);
          *v44 = this;
          *(*(v33 + 912) + 57) = v36;
          v42 += *v44;
          *v43 -= *v44;
          *(*(v33 + 912) + 56) = 4;
          if (*v43)
          {
            this = spinel_datatype_unpack(v42, *v43, "C", v23, v24, v25, v26, v27, &v35);
            *v44 = this;
            *(*(v33 + 912) + 58) = v35;
            v42 += *v44;
            *v43 -= *v44;
            *(*(v33 + 912) + 56) = 5;
            if (*v43)
            {
              this = spinel_datatype_unpack(v42, *v43, "L", v28, v29, v30, v31, v32, &v34);
              *v44 = this;
              *(*(v33 + 912) + 60) = v34;
              v42 += *v44;
              *v43 -= *v44;
              *(*(v33 + 912) + 56) = 6;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::Transmit(ot::Spinel::RadioSpinel *a1, uint64_t *a2)
{
  v24 = a1;
  v23 = a2;
  v21 = a1;
  v22 = 13;
  if (*(a1 + 236) == 2 || *(v21 + 236) == 1 && (ot::Spinel::RadioSpinel::sRadioCaps & 0x10) != 0)
  {
    v2 = v21;
    v21[114] = v23;
    (*(v2 + 33))(*(v2 + 28), *(v2 + 114));
    v3 = *v21[114];
    v4 = *(v21[114] + 4);
    v5 = *(v21[114] + 10);
    v6 = *(v21[114] + 40);
    v7 = *(v21[114] + 41);
    v8 = (*(v21[114] + 45) >> 2) & 1;
    v9 = *(v21[114] + 45) & 1;
    v10 = (*(v21[114] + 45) >> 1) & 1;
    v11 = (*(v21[114] + 45) >> 4) & 1;
    v12 = *(v21[114] + 9);
    v13 = *(v21[114] + 8);
    v14 = *(v21[114] + 43);
    v20[13] = v20;
    v22 = ot::Spinel::RadioSpinel::Request(v21, 3u, 0x71u, "dCCCbbbbLLC", v3, v4, v5, v6, v7, v8 & 1, v9 & 1, v10 & 1, v11 & 1, v12, v13, v14);
    if (!v22)
    {
      *(v21 + 236) = 3;
      v15 = otPlatTimeGet();
      v16 = v21;
      v21[210] = (v15 + 5000000 * (*(v21[114] + 41) / 16 + 1));
      ot::AsCoreType<otInstance>(*(v16 + 28));
      v18 = ot::Instance::Get<ot::Mle::Mle>(v17);
      if (ot::Mle::Mle::isThreadRegulatoryCertEnabled(v18))
      {
        v21[210] = -1;
      }

      *(v21 + 932) = *(v21[114] + 10);
    }
  }

  return v22;
}

uint64_t ot::Instance::Get<ot::Mle::Mle>(uint64_t a1)
{
  return a1 + 91160;
}

{
  return ot::Instance::Get<ot::Mle::Mle>(a1);
}

uint64_t ot::Spinel::RadioSpinel::Receive(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = 0;
  if (*(this + 236))
  {
    if (*(this + 932) != a2 || (*(this + 336) & 1) == 1)
    {
      v4 = ot::Spinel::RadioSpinel::Set(this, 0x21u, "C", a2);
      if (v4)
      {
        return v4;
      }

      *(this + 932) = a2;
      if ((*(this + 336) & 1) == 1)
      {
        *(this + 336) = 0;
        ot::Spinel::Logger::LogNote1(this, "First SPINEL_PROP_PHY_CHAN");
      }
    }

    if (*(this + 236) != 1 || (v4 = ot::Spinel::RadioSpinel::Set(this, 0x37u, "b", 1)) == 0)
    {
      if (*(this + 299))
      {
        ot::Spinel::RadioSpinel::FreeTid(this, *(this + 299));
        *(this + 299) = 0;
      }

      *(this + 236) = 2;
    }
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::LoadPTB(const char **this)
{
  memset(__b, 0, sizeof(__b));
  getFilePathFromDirectory(__b, "/usr/share/firmware/wpan/", ".ptb", 0xC8u);
  if (!__b[0])
  {
    ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB: file not found");
    ptb_bandedge_captureABC_Failure(0);
  }

  if (__b[0])
  {
    v4 = readFromFilePTB(__b, v7, 0x514u);
    if (v4)
    {
      v5 = ot::Spinel::RadioSpinel::Set(this, 0x3CAEu, "d", v7, v4);
      if (v5)
      {
        v1 = otThreadErrorToString(v5);
        ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB:Set Spinel property:SPINEL_PROP_VENDOR_POWER_TABLE error=%s", v1);
        ptb_bandedge_captureABC_Failure(2);
      }
    }

    else
    {
      ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB: file %s empty", __b);
      ptb_bandedge_captureABC_Failure(1);
      return 6;
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::resetRCP(const char **this)
{
  ot::Spinel::Logger::LogDebg1(this, "Performing a Soft Reset for Threadleave/ThreadStop");
  *(this + 952) = this[119] & 0xF8 | 4;
  ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  return 0;
}

const char **ot::Spinel::RadioSpinel::FreeTransmitTid(const char **this)
{
  v1 = this;
  if (*(this + 299))
  {
    ot::Spinel::Logger::LogInfo1(this, "Freed Transmit Tid %d", *(this + 299));
    ot::Spinel::RadioSpinel::FreeTid(v1, *(v1 + 299));
    *(v1 + 299) = 0;
    *(v1 + 236) = 2;
    *(v1 + 210) = -1;
    return ot::Spinel::RadioSpinel::TransmitDone(v1, *(v1 + 114), 0, 0xBu);
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::Sleep(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v3 = this;
  v4 = 0;
  if (!gPciStatus)
  {
    v2 = *(v3 + 236);
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v4 = ot::Spinel::RadioSpinel::Set(v3, 0x37u, "b", 0);
        if (!v4)
        {
          *(v3 + 236) = 1;
        }
      }

      else
      {
        return 13;
      }
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::Enable(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  PTB = 0;
  v11 = 0;
  if (!ot::Spinel::RadioSpinel::IsEnabled(a1))
  {
    *(a1 + 224) = v13;
    ot::Spinel::Logger::LogNote1(a1, "RadioSpinel::Enable SIZEOF : sz_Instance[--]");
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
    {
      if (!isSupportedPlatform())
      {
        ot::Spinel::Logger::LogWarn1(a1, "Unsupported Platform: Daemon Exiting");
        v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
        if (v10)
        {
          v8 = v10 + 1;
        }

        else
        {
          v8 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
        }

        v2 = otExitCodeToString(1);
        otLogCritPlat("%s() at %s:%d: %s", "Enable", v8, 2936, v2);
        handle_daemon_exit();
        exit(1);
      }

      PTB = ot::Spinel::RadioSpinel::LoadPTB(a1);
      if (PTB)
      {
        v3 = otThreadErrorToString(PTB);
        ot::Spinel::Logger::LogWarn1(a1, "RadioSpinel LoadPTB failed : %s", v3);
      }

      PTB = ot::Spinel::RadioSpinel::Get(a1, 0x3CAFu, "b", &v11);
      if (PTB)
      {
        v5 = otThreadErrorToString(PTB);
        ot::Spinel::Logger::LogDebg1(a1, "Failed to read MSF Load status: %s", v5);
      }

      else
      {
        v4 = "Success";
        if ((v11 & 1) == 0)
        {
          v4 = "Fail";
        }

        ot::Spinel::Logger::LogDebg1(a1, "MSF File Load status in RCP2 =%s", v4);
      }
    }

    PTB = ot::Spinel::RadioSpinel::Set(a1, 0x20u, "b", 1);
    if (!PTB)
    {
      PTB = ot::Spinel::RadioSpinel::Set(a1, 0x36u, "S", *(a1 + 930));
      if (!PTB)
      {
        PTB = ot::Spinel::RadioSpinel::Set(a1, 0x35u, "S", *(a1 + 928));
        if (!PTB)
        {
          PTB = ot::Spinel::RadioSpinel::Get(a1, 0x27u, "c", a1 + 933);
          if (!PTB)
          {
            *(a1 + 944) = 1;
          }
        }
      }
    }
  }

  if (PTB)
  {
    v6 = otThreadErrorToString(PTB);
    ot::Spinel::Logger::LogWarn1(a1, "RadioSpinel enable: %s", v6);
    return 1;
  }

  return PTB;
}

uint64_t ot::Spinel::RadioSpinel::Disable(ot::Spinel::RadioSpinel *this)
{
  v9 = 0;
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (ot::Spinel::RadioSpinel::IsEnabled(this))
    {
      if (*(this + 236) == 1)
      {
        v8 = ot::Spinel::RadioSpinel::Set(this, 0x20u, "b", 0);
        if (v8)
        {
          v7 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v7)
          {
            v5 = v7 + 1;
          }

          else
          {
            v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
          }

          if (v8 == 7)
          {
            v1 = 2;
          }

          else
          {
            v1 = 1;
          }

          v2 = otExitCodeToString(v1);
          otLogCritPlat("%s() at %s:%d: %s", "Disable", v5, 2985, v2);
          handle_daemon_exit();
          if (v8 == 7)
          {
            v3 = 2;
          }

          else
          {
            v3 = 1;
          }

          exit(v3);
        }

        *(this + 236) = 0;
        *(this + 28) = 0;
      }

      else
      {
        return 13;
      }
    }

    return v9;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetDiagOutputCallback(uint64_t this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 1664) = a2;
  *(this + 1672) = a3;
  return this;
}

uint64_t ot::Spinel::RadioSpinel::GetDiagOutputCallback(uint64_t this, void (**a2)(const char *, char *, void *), void **a3)
{
  *a2 = *(this + 1664);
  *a3 = *(this + 1672);
  return this;
}

uint64_t ot::Spinel::RadioSpinel::RadioSpinelDiagProcess(ot::Spinel::RadioSpinel *this, const char **a2, unsigned __int8 a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  if (a3 <= 1u)
  {
    return 7;
  }

  else
  {
    ++v11;
    --v10;
    if (!strcmp(*v11, "buslatency"))
    {
      if (v10 == 1)
      {
        BusLatency = ot::Spinel::RadioSpinel::GetBusLatency(this);
        v4 = ot::ToUlong(BusLatency);
        ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%lu\n", v4);
      }

      else if (v10 == 2)
      {
        v8 = 0;
        __endptr = 0;
        v8 = strtoul(v11[1], &__endptr, 0);
        if (*__endptr)
        {
          return 7;
        }

        else
        {
          ot::Spinel::RadioSpinel::SetBusLatency(this, v8);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v9;
}

uint64_t ot::Spinel::RadioSpinel::SetBusLatency(ot::Spinel::RadioSpinel *this, int a2)
{
  *(this + 235) = a2;
  result = ot::Spinel::RadioSpinel::IsEnabled(this);
  if (result)
  {
    if (*(this + 32))
    {
      return (*(this + 32))(*(this + 28));
    }
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioChannelMask(ot::Spinel::RadioSpinel *this, char a2)
{
  v24 = this;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = v25;
  v19 = 32;
  if (a2)
  {
    v2 = 41;
  }

  else
  {
    v2 = 34;
  }

  v18 = ot::Spinel::RadioSpinel::Get(this, v2, "D", v25, &v19);
  if (v18)
  {
    v17 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v17)
    {
      v13 = v17 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    if (v18 == 7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = otExitCodeToString(v8);
    otLogCritPlat("%s() at %s:%d: %s", "GetRadioChannelMask", v13, 3071, v9);
    handle_daemon_exit();
    if (v18 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    exit(v10);
  }

  while (v19)
  {
    v16 = 0;
    v15 = spinel_datatype_unpack(v20, v19, "C", v3, v4, v5, v6, v7, &v16);
    if (v15 <= 0)
    {
      v22 = 1;
      goto LABEL_22;
    }

    if (v16 >= 0x20u)
    {
      v22 = 6;
      goto LABEL_22;
    }

    v21 |= 1 << v16;
    v20 += v15;
    v19 -= v15;
  }

  SupportedChannelMask = ot::MaxPowerTable::GetSupportedChannelMask((this + 1704));
  v21 &= SupportedChannelMask;
LABEL_22:
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, v22);
  ot::Spinel::Logger::LogIfFail1(this, "Get radio channel mask failed", v22);
  return v21;
}

uint64_t ot::MaxPowerTable::GetSupportedChannelMask(ot::MaxPowerTable *this)
{
  v3 = 0;
  for (i = 11; i <= 0x19u; ++i)
  {
    if (*(this + i - 11) != 127)
    {
      v3 |= 1 << i;
    }
  }

  return v3;
}

{
  return ot::MaxPowerTable::GetSupportedChannelMask(this);
}

unint64_t ot::Spinel::RadioSpinel::GetNow(ot::Spinel::RadioSpinel *this)
{
  if ((*(this + 948) & 4) != 0)
  {
    return otPlatTimeGet() + *(this + 212);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Spinel::RadioSpinel::GetBusSpeed(ot::Spinel::RadioSpinel *this)
{
  SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  SpinelInterface = ot::Spinel::SpinelDriver::GetSpinelInterface(SpinelDriver);
  return (*(*SpinelInterface + 56))(SpinelInterface);
}

uint64_t ot::Spinel::SpinelDriver::SetCoprocessorNotReady(uint64_t this)
{
  *(this + 8288) = 0;
  return this;
}

{
  return ot::Spinel::SpinelDriver::SetCoprocessorNotReady(this);
}

uint64_t ot::Spinel::SpinelDriver::MarkRxBufferReset(ot::Spinel::SpinelDriver *this, char a2)
{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(this + 8, a2 & 1);
}

{
  return ot::Spinel::SpinelDriver::MarkRxBufferReset(this, a2);
}

void ot::Spinel::RadioSpinel::RestoreProperties(ot::Spinel::RadioSpinel *this)
{
  v126 = this;
  v94 = this;
  v125 = ot::Spinel::RadioSpinel::Set(v94, 0x36u, "S", *(v94 + 465));
  if (v125)
  {
    v124 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v124)
    {
      v93 = v124 + 1;
    }

    else
    {
      v93 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v91 = v93;
    v92 = 2;
    if (v125 == 7)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }

    v2 = otExitCodeToString(v1);
    otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v91, 3524, v2);
    handle_daemon_exit();
    if (v125 == 7)
    {
      v3 = v92;
    }

    else
    {
      v3 = 1;
    }

    exit(v3);
  }

  v123 = ot::Spinel::RadioSpinel::Set(v94, 0x35u, "S", *(v94 + 464));
  if (v123)
  {
    v122 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v122)
    {
      v90 = v122 + 1;
    }

    else
    {
      v90 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v88 = v90;
    v89 = 2;
    if (v123 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v88, 3525, v5);
    handle_daemon_exit();
    if (v123 == 7)
    {
      v6 = v89;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  v121 = ot::Spinel::RadioSpinel::Set(v94, 0x34u, "E", v94 + 920);
  if (v121)
  {
    v120 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v120)
    {
      v87 = v120 + 1;
    }

    else
    {
      v87 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v85 = v87;
    v86 = 2;
    if (v121 == 7)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = otExitCodeToString(v7);
    otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v85, 3526, v8);
    handle_daemon_exit();
    if (v121 == 7)
    {
      v9 = v86;
    }

    else
    {
      v9 = 1;
    }

    exit(v9);
  }

  v119 = ot::Spinel::RadioSpinel::Set(v94, 0x21u, "C", *(v94 + 932));
  if (v119)
  {
    v118 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v118)
    {
      v84 = v118 + 1;
    }

    else
    {
      v84 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v82 = v84;
    v83 = 2;
    if (v119 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = otExitCodeToString(v10);
    otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v82, 3531, v11);
    handle_daemon_exit();
    if (v119 == 7)
    {
      v12 = v83;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  if ((*(v94 + 1655) & 4) != 0)
  {
    v13 = *(v94 + 953);
    v14 = *(v94 + 954);
    v81 = &v47;
    v117 = ot::Spinel::RadioSpinel::Set(v94, 0x800u, "CCddd", v13, v14, v94 + 955, 16, v94 + 971, 16, v94 + 987, 16);
    if (v117)
    {
      v116 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v116)
      {
        v80 = v116 + 1;
      }

      else
      {
        v80 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v78 = v80;
      v79 = 2;
      if (v117 == 7)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      v16 = otExitCodeToString(v15);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v78, 3540, v16);
      handle_daemon_exit();
      if (v117 == 7)
      {
        v17 = v79;
      }

      else
      {
        v17 = 1;
      }

      exit(v17);
    }
  }

  if ((*(v94 + 1655) & 0x100) != 0)
  {
    FrameCounter = otLinkGetFrameCounter(*(v94 + 28));
    v115 = ot::Spinel::RadioSpinel::Set(v94, 0x801u, "L", (FrameCounter + 1000));
    if (v115)
    {
      v114 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v114)
      {
        v77 = v114 + 1;
      }

      else
      {
        v77 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v75 = v77;
      v76 = 2;
      if (v115 == 7)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v20 = otExitCodeToString(v19);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v75, 3558, v20);
      handle_daemon_exit();
      if (v115 == 7)
      {
        v21 = v76;
      }

      else
      {
        v21 = 1;
      }

      exit(v21);
    }
  }

  for (i = 0; i < *(v94 + 566); ++i)
  {
    v112 = ot::Spinel::RadioSpinel::Insert(v94, 0x1304u, "S", *(v94 + i + 502));
    if (v112)
    {
      v111 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v111)
      {
        v74 = v111 + 1;
      }

      else
      {
        v74 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v72 = v74;
      v73 = 2;
      if (v112 == 7)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v23 = otExitCodeToString(v22);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v72, 3573, v23);
      handle_daemon_exit();
      if (v112 == 7)
      {
        v24 = v73;
      }

      else
      {
        v24 = 1;
      }

      exit(v24);
    }
  }

  for (j = 0; j < *(v94 + 823); ++j)
  {
    v109 = ot::Spinel::RadioSpinel::Insert(v94, 0x1305u, "E", v94 + 8 * j + 1134);
    if (v109)
    {
      v108 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v108)
      {
        v71 = v108 + 1;
      }

      else
      {
        v71 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v69 = v71;
      v70 = 2;
      if (v109 == 7)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v26 = otExitCodeToString(v25);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v69, 3579, v26);
      handle_daemon_exit();
      if (v109 == 7)
      {
        v27 = v70;
      }

      else
      {
        v27 = 1;
      }

      exit(v27);
    }
  }

  if (*(v94 + 1658))
  {
    v107 = ot::Spinel::RadioSpinel::Set(v94, 0x1303u, "b", (*(v94 + 1655) & 2) != 0);
    if (v107)
    {
      v106 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v106)
      {
        v68 = v106 + 1;
      }

      else
      {
        v68 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v66 = v68;
      v67 = 2;
      if (v107 == 7)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v29 = otExitCodeToString(v28);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v66, 3584, v29);
      handle_daemon_exit();
      if (v107 == 7)
      {
        v30 = v67;
      }

      else
      {
        v30 = 1;
      }

      exit(v30);
    }
  }

  if ((*(v94 + 1655) & 8) != 0)
  {
    v105 = ot::Spinel::RadioSpinel::Set(v94, 0x24u, "c", *(v94 + 1652));
    if (v105)
    {
      v104 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v104)
      {
        v65 = v104 + 1;
      }

      else
      {
        v65 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v63 = v65;
      v64 = 2;
      if (v105 == 7)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v32 = otExitCodeToString(v31);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v63, 3589, v32);
      handle_daemon_exit();
      if (v105 == 7)
      {
        v33 = v64;
      }

      else
      {
        v33 = 1;
      }

      exit(v33);
    }
  }

  if ((*(v94 + 1655) & 0x10) != 0)
  {
    v103 = ot::Spinel::RadioSpinel::Set(v94, 0x25u, "c", *(v94 + 1653));
    if (v103)
    {
      v102 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v102)
      {
        v62 = v102 + 1;
      }

      else
      {
        v62 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v60 = v62;
      v61 = 2;
      if (v103 == 7)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v35 = otExitCodeToString(v34);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v60, 3594, v35);
      handle_daemon_exit();
      if (v103 == 7)
      {
        v36 = v61;
      }

      else
      {
        v36 = 1;
      }

      exit(v36);
    }
  }

  if ((*(v94 + 1655) & 0x20) != 0)
  {
    v101 = ot::Spinel::RadioSpinel::Set(v94, 0x120Du, "b", *(v94 + 1655) & 1);
    if (v101)
    {
      v100 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v100)
      {
        v59 = v100 + 1;
      }

      else
      {
        v59 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v57 = v59;
      v58 = 2;
      if (v101 == 7)
      {
        v37 = 2;
      }

      else
      {
        v37 = 1;
      }

      v38 = otExitCodeToString(v37);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v57, 3599, v38);
      handle_daemon_exit();
      if (v101 == 7)
      {
        v39 = v58;
      }

      else
      {
        v39 = 1;
      }

      exit(v39);
    }
  }

  if ((*(v94 + 1655) & 0x40) != 0)
  {
    v99 = ot::Spinel::RadioSpinel::Set(v94, 0x2Au, "c", *(v94 + 1654));
    if (v99)
    {
      v98 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v98)
      {
        v56 = v98 + 1;
      }

      else
      {
        v56 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v54 = v56;
      v55 = 2;
      if (v99 == 7)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      v41 = otExitCodeToString(v40);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v54, 3604, v41);
      handle_daemon_exit();
      if (v99 == 7)
      {
        v42 = v55;
      }

      else
      {
        v42 = 1;
      }

      exit(v42);
    }
  }

  if (!*(v94 + 28))
  {
    ot::Spinel::Logger::LogWarn1(v94, "OT instance is already invalidated, Daemon exiting");
    v97 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v97)
    {
      v53 = v97 + 1;
    }

    else
    {
      v53 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v51 = v53;
    v52 = 1;
    v43 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v51, 3632, v43);
    handle_daemon_exit();
    exit(v52);
  }

  otThreadSetCoexConfigInfo(*(v94 + 28));
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x100) != 0)
  {
    v96 = ot::Spinel::RadioSpinel::Set(v94, 0x3Bu, "b", (*(v94 + 948) & 2) != 0);
    if (v96)
    {
      v95 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v95)
      {
        v50 = v95 + 1;
      }

      else
      {
        v50 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v48 = v50;
      v49 = 2;
      if (v96 == 7)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      v45 = otExitCodeToString(v44);
      otLogCritPlat("%s() at %s:%d: %s", "RestoreProperties", v48, 3639, v45);
      handle_daemon_exit();
      if (v96 == 7)
      {
        v46 = v49;
      }

      else
      {
        v46 = 1;
      }

      exit(v46);
    }
  }

  if (*(v94 + 1760))
  {
    ot::Spinel::RadioSpinel::CalcRcpTimeOffset(v94);
  }
}

void ot::Spinel::RadioSpinel::HandleReceivedFrame(const char **this, unsigned __int8 *a2, __int16 a3, uint64_t a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0xF) != 0)
  {
    ot::Spinel::RadioSpinel::HandleResponse(this, a2, a3, a4, a5, a6, a7, a8);
    *a5 = 0;
  }

  else
  {
    ot::Spinel::RadioSpinel::HandleNotification(this, a2, a3, a5, a5, a6, a7, a8);
  }
}

void ot::Spinel::RadioSpinel::RestoreHostProperties(ot::Spinel::RadioSpinel *this)
{
  v17 = this;
  v1 = this;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  ot::Spinel::Logger::LogWarn1(this, "RestoreHostProperties ..");
  get_host_rcp_setting_params(&v16, &v15, &v14, &v13, &v12, &v11, &v10, &v9, &v8, &v7, &v6, &v5, &v4, &v3, &v2);
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuousEnable(ot::Spinel::RadioSpinel *this)
{
  Channel = otLinkGetChannel(*(this + 28));
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x20u, "b", 1);
  if (!v4)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x28u, "b", 1);
    if (!v4)
    {
      v4 = ot::Spinel::RadioSpinel::Set(this, 0x37u, "b", 1);
      if (!v4)
      {
        v4 = ot::Spinel::RadioSpinel::Set(this, 0x38u, "C", 2);
        if (!v4)
        {
          return ot::Spinel::RadioSpinel::Set(this, 0x21u, "C", Channel);
        }
      }
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetMultipanActiveInterface(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x900u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get GetMultipanActiveInterface failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetMultipanActiveInterface(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, char a3)
{
  if (a2 == (a2 & 3))
  {
    v4 = a2;
    if (a3)
    {
      v4 = a2 | 0x80;
    }

    return ot::Spinel::RadioSpinel::Set(this, 0x900u, "C", v4);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetChannelMaxTransmitPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, signed __int8 a3)
{
  if (a2 >= 0xBu && a2 <= 0x19u)
  {
    ot::MaxPowerTable::SetTransmitPower(this + 1704, a2, a3);
    return ot::Spinel::RadioSpinel::Set(this, 0x2Bu, "Cc", a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::MaxPowerTable::SetTransmitPower(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + a2 - 11) = a3;
  return this;
}

{
  return ot::MaxPowerTable::SetTransmitPower(this, a2, a3);
}

uint64_t ot::Spinel::RadioSpinel::SetRadioRegion(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x2Cu, "S", a2);
  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    ot::Spinel::Logger::LogWarn1(this, "Failed to set region code %c%c: %s", SHIBYTE(a2), a2, v2);
  }

  else
  {
    ot::Spinel::Logger::LogNote1(this, "Set region code %c%c successfully", SHIBYTE(a2), a2);
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioRegion(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  if (a2)
  {
    return ot::Spinel::RadioSpinel::Get(this, 0x2Cu, "S", a2);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::ConfigureEnhAckProbing(ot::Spinel::RadioSpinel *a1, char a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = (a2 & 1) != 0;
  if ((a2 & 2) != 0)
  {
    v5 |= 2u;
  }

  if ((a2 & 4) != 0)
  {
    v5 |= 4u;
  }

  if ((a2 & 8) != 0)
  {
    v5 |= 8u;
  }

  return ot::Spinel::RadioSpinel::Set(a1, 0x803u, "SEC", *a3, a4, v5);
}

uint64_t ot::Spinel::RadioSpinel::EnableCsl(ot::Spinel::RadioSpinel *a1, unsigned int a2, unsigned __int16 a3, uint64_t a4)
{
  return ot::Spinel::RadioSpinel::Set(a1, 0x807u, "LSE", a2, a3, a4, a4);
}

{
  return ot::Spinel::RadioSpinel::Set(a1, 0x807u, "LSE", a2, a3, a4);
}

uint64_t ot::Spinel::RadioSpinel::SetHostPowerState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0xCu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set host power state failed", v4);
  return v4;
}